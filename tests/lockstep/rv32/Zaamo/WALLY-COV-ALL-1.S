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

    

// ******************
// Tests from: WALLY-COV-amomax.w.S
// ******************


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

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-amomin.w.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x31, 0x00a12893 # load random value
la x1, scratch # base address
sw x31, 0(x1) # store in memory
li x31, 0xa49665c6 # load another value into integer register
amomin.w x8, x31, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x19, 0x3c4cacd8 # load random value
la x2, scratch # base address
sw x19, 0(x2) # store in memory
li x19, 0x3be33644 # load another value into integer register
amomin.w x17, x19, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x26, 0x28ef5ecf # load random value
la x3, scratch # base address
sw x26, 0(x3) # store in memory
li x26, 0xa57172b8 # load another value into integer register
amomin.w x5, x26, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xac28eebf # load random value
la x4, scratch # base address
sw x19, 0(x4) # store in memory
li x19, 0x565b7125 # load another value into integer register
amomin.w x21, x19, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0xf284945d # load random value
la x5, scratch # base address
sw x30, 0(x5) # store in memory
li x30, 0xc850368d # load another value into integer register
amomin.w x7, x30, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0x369d7097 # load random value
la x6, scratch # base address
sw x7, 0(x6) # store in memory
li x7, 0xa1def39e # load another value into integer register
amomin.w x1, x7, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x29, 0xcdbd4083 # load random value
la x7, scratch # base address
sw x29, 0(x7) # store in memory
li x29, 0x515aa69a # load another value into integer register
amomin.w x31, x29, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x22, 0x2026d06b # load random value
la x8, scratch # base address
sw x22, 0(x8) # store in memory
li x22, 0xab30fa15 # load another value into integer register
amomin.w x11, x22, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x6, 0x8a3d6d29 # load random value
la x9, scratch # base address
sw x6, 0(x9) # store in memory
li x6, 0x2149bbf4 # load another value into integer register
amomin.w x19, x6, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x3, 0x4e8941d6 # load random value
la x10, scratch # base address
sw x3, 0(x10) # store in memory
li x3, 0xf31a0e18 # load another value into integer register
amomin.w x28, x3, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x20, 0xb3716b9b # load random value
la x11, scratch # base address
sw x20, 0(x11) # store in memory
li x20, 0xb5772c19 # load another value into integer register
amomin.w x21, x20, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x6, 0x1004ffa1 # load random value
la x12, scratch # base address
sw x6, 0(x12) # store in memory
li x6, 0x56d567e3 # load another value into integer register
amomin.w x7, x6, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x29, 0x3c8fbf03 # load random value
la x13, scratch # base address
sw x29, 0(x13) # store in memory
li x29, 0xd75e4bd3 # load another value into integer register
amomin.w x14, x29, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x16, 0x695871f9 # load random value
la x14, scratch # base address
sw x16, 0(x14) # store in memory
li x16, 0x6732385f # load another value into integer register
amomin.w x18, x16, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x16, 0x9029e7cf # load random value
la x15, scratch # base address
sw x16, 0(x15) # store in memory
li x16, 0x27c71118 # load another value into integer register
amomin.w x8, x16, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x20, 0x8de1c75e # load random value
la x16, scratch # base address
sw x20, 0(x16) # store in memory
li x20, 0x868c46dc # load another value into integer register
amomin.w x24, x20, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x7, 0x1c886f65 # load random value
la x17, scratch # base address
sw x7, 0(x17) # store in memory
li x7, 0x98ed2898 # load another value into integer register
amomin.w x16, x7, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x11, 0x9ab7b0ec # load random value
la x18, scratch # base address
sw x11, 0(x18) # store in memory
li x11, 0xe1981a3e # load another value into integer register
amomin.w x13, x11, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x8, 0xd3d217fc # load random value
la x19, scratch # base address
sw x8, 0(x19) # store in memory
li x8, 0x2b166666 # load another value into integer register
amomin.w x29, x8, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x24, 0xe0c5fae5 # load random value
la x20, scratch # base address
sw x24, 0(x20) # store in memory
li x24, 0x3f9926bb # load another value into integer register
amomin.w x19, x24, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x13, 0xdffe03f6 # load random value
la x21, scratch # base address
sw x13, 0(x21) # store in memory
li x13, 0x4bb6256a # load another value into integer register
amomin.w x30, x13, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x30, 0x364d320a # load random value
la x22, scratch # base address
sw x30, 0(x22) # store in memory
li x30, 0xe194cef0 # load another value into integer register
amomin.w x16, x30, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x28, 0x0897b692 # load random value
la x23, scratch # base address
sw x28, 0(x23) # store in memory
li x28, 0x34073a84 # load another value into integer register
amomin.w x27, x28, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x29, 0x7ca0763d # load random value
la x24, scratch # base address
sw x29, 0(x24) # store in memory
li x29, 0x24d2bfcc # load another value into integer register
amomin.w x9, x29, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x31, 0x1f72ce79 # load random value
la x25, scratch # base address
sw x31, 0(x25) # store in memory
li x31, 0x24075362 # load another value into integer register
amomin.w x20, x31, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x14, 0x46a9e6d5 # load random value
la x26, scratch # base address
sw x14, 0(x26) # store in memory
li x14, 0xab6a54bc # load another value into integer register
amomin.w x31, x14, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x5, 0x3c7be882 # load random value
la x27, scratch # base address
sw x5, 0(x27) # store in memory
li x5, 0x6f799599 # load another value into integer register
amomin.w x19, x5, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0x17833b0f # load random value
la x28, scratch # base address
sw x17, 0(x28) # store in memory
li x17, 0xd1379897 # load another value into integer register
amomin.w x15, x17, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x19, 0xde3b2ed8 # load random value
la x29, scratch # base address
sw x19, 0(x29) # store in memory
li x19, 0x23e83b61 # load another value into integer register
amomin.w x2, x19, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x25, 0x70419397 # load random value
la x30, scratch # base address
sw x25, 0(x30) # store in memory
li x25, 0xb8389333 # load another value into integer register
amomin.w x19, x25, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x21, 0x81e55c64 # load random value
la x31, scratch # base address
sw x21, 0(x31) # store in memory
li x21, 0xbdff21f5 # load another value into integer register
amomin.w x18, x21, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x6ae05f43 # load random value
la x7, scratch # base address
sw x0, 0(x7) # store in memory
li x0, 0xef96eb1b # load another value into integer register
amomin.w x21, x0, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xf5db7ced # load random value
la x12, scratch # base address
sw x1, 0(x12) # store in memory
li x1, 0x04f7ac5e # load another value into integer register
amomin.w x23, x1, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xbf14adb5 # load random value
la x16, scratch # base address
sw x2, 0(x16) # store in memory
li x2, 0x5bd6a7cc # load another value into integer register
amomin.w x9, x2, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0xef71842f # load random value
la x19, scratch # base address
sw x3, 0(x19) # store in memory
li x3, 0x55e82ad5 # load another value into integer register
amomin.w x1, x3, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc698f37e # load random value
la x2, scratch # base address
sw x4, 0(x2) # store in memory
li x4, 0x6ca0b0f0 # load another value into integer register
amomin.w x1, x4, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcac57fbe # load random value
la x30, scratch # base address
sw x5, 0(x30) # store in memory
li x5, 0x4b997914 # load another value into integer register
amomin.w x17, x5, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4bc32e76 # load random value
la x27, scratch # base address
sw x6, 0(x27) # store in memory
li x6, 0x8f7b00a7 # load another value into integer register
amomin.w x5, x6, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6f18f6a1 # load random value
la x24, scratch # base address
sw x7, 0(x24) # store in memory
li x7, 0x6008cd02 # load another value into integer register
amomin.w x2, x7, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xe3a995ef # load random value
la x16, scratch # base address
sw x8, 0(x16) # store in memory
li x8, 0xdf7b6912 # load another value into integer register
amomin.w x24, x8, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xf35a8580 # load random value
la x5, scratch # base address
sw x9, 0(x5) # store in memory
li x9, 0x84da79b2 # load another value into integer register
amomin.w x29, x9, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x41aca0c5 # load random value
la x22, scratch # base address
sw x10, 0(x22) # store in memory
li x10, 0xe480fbef # load another value into integer register
amomin.w x23, x10, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x1654b129 # load random value
la x14, scratch # base address
sw x11, 0(x14) # store in memory
li x11, 0xc6e22a8f # load another value into integer register
amomin.w x3, x11, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x344312c1 # load random value
la x9, scratch # base address
sw x12, 0(x9) # store in memory
li x12, 0x7de9a617 # load another value into integer register
amomin.w x17, x12, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x8e48ee61 # load random value
la x2, scratch # base address
sw x13, 0(x2) # store in memory
li x13, 0xd6f44dd4 # load another value into integer register
amomin.w x18, x13, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xa3003fdd # load random value
la x17, scratch # base address
sw x14, 0(x17) # store in memory
li x14, 0x2fbb3fe1 # load another value into integer register
amomin.w x21, x14, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x14af0abe # load random value
la x1, scratch # base address
sw x15, 0(x1) # store in memory
li x15, 0xc47bbf1c # load another value into integer register
amomin.w x5, x15, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x017af680 # load random value
la x24, scratch # base address
sw x16, 0(x24) # store in memory
li x16, 0xca15e8e1 # load another value into integer register
amomin.w x13, x16, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x7a5be47a # load random value
la x19, scratch # base address
sw x17, 0(x19) # store in memory
li x17, 0xf4837aa7 # load another value into integer register
amomin.w x1, x17, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xbcf72718 # load random value
la x30, scratch # base address
sw x18, 0(x30) # store in memory
li x18, 0x31add777 # load another value into integer register
amomin.w x7, x18, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x7134bb96 # load random value
la x21, scratch # base address
sw x19, 0(x21) # store in memory
li x19, 0x34eeb23a # load another value into integer register
amomin.w x14, x19, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x3058aa1e # load random value
la x13, scratch # base address
sw x20, 0(x13) # store in memory
li x20, 0xd49b709a # load another value into integer register
amomin.w x15, x20, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x1ae16b57 # load random value
la x24, scratch # base address
sw x21, 0(x24) # store in memory
li x21, 0x1709eefc # load another value into integer register
amomin.w x31, x21, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x02a4d2f6 # load random value
la x9, scratch # base address
sw x22, 0(x9) # store in memory
li x22, 0x6b173bd6 # load another value into integer register
amomin.w x24, x22, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x4826a7bb # load random value
la x13, scratch # base address
sw x23, 0(x13) # store in memory
li x23, 0x5b302f02 # load another value into integer register
amomin.w x17, x23, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x5ed631d8 # load random value
la x3, scratch # base address
sw x24, 0(x3) # store in memory
li x24, 0xfb0cc10a # load another value into integer register
amomin.w x11, x24, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x8c408522 # load random value
la x15, scratch # base address
sw x25, 0(x15) # store in memory
li x25, 0x514ab395 # load another value into integer register
amomin.w x5, x25, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x0e3214fb # load random value
la x14, scratch # base address
sw x26, 0(x14) # store in memory
li x26, 0xbbac4050 # load another value into integer register
amomin.w x1, x26, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x9b29aa55 # load random value
la x18, scratch # base address
sw x27, 0(x18) # store in memory
li x27, 0xd0ddc804 # load another value into integer register
amomin.w x12, x27, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x5743d0e3 # load random value
la x9, scratch # base address
sw x28, 0(x9) # store in memory
li x28, 0xcf0beb2d # load another value into integer register
amomin.w x3, x28, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x0a0b50f8 # load random value
la x17, scratch # base address
sw x29, 0(x17) # store in memory
li x29, 0x6496638a # load another value into integer register
amomin.w x5, x29, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x487b4859 # load random value
la x3, scratch # base address
sw x30, 0(x3) # store in memory
li x30, 0x465001fb # load another value into integer register
amomin.w x25, x30, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xa026ee92 # load random value
la x16, scratch # base address
sw x31, 0(x16) # store in memory
li x31, 0xa5052f5c # load another value into integer register
amomin.w x23, x31, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x13, 0xaacbe188 # load random value
la x21, scratch # base address
sw x13, 0(x21) # store in memory
li x13, 0x76546250 # load another value into integer register
amomin.w x0, x13, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x3870223b # load random value
la x13, scratch # base address
sw x1, 0(x13) # store in memory
li x1, 0x29dcfd46 # load another value into integer register
amomin.w x1, x1, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x5, 0x67538f37 # load random value
la x18, scratch # base address
sw x5, 0(x18) # store in memory
li x5, 0xd15e2898 # load another value into integer register
amomin.w x2, x5, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x7, 0x0e14c260 # load random value
la x30, scratch # base address
sw x7, 0(x30) # store in memory
li x7, 0x4c0f9300 # load another value into integer register
amomin.w x3, x7, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0x47e820de # load random value
la x17, scratch # base address
sw x13, 0(x17) # store in memory
li x13, 0x8bd6fa44 # load another value into integer register
amomin.w x4, x13, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0xb650a8d8 # load random value
la x16, scratch # base address
sw x8, 0(x16) # store in memory
li x8, 0x94c0192e # load another value into integer register
amomin.w x5, x8, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x5b4c2b32 # load random value
la x9, scratch # base address
sw x2, 0(x9) # store in memory
li x2, 0x6271cf51 # load another value into integer register
amomin.w x6, x2, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0xf705b598 # load random value
la x17, scratch # base address
sw x15, 0(x17) # store in memory
li x15, 0xe8d1ab44 # load another value into integer register
amomin.w x7, x15, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x31, 0xc15201b0 # load random value
la x30, scratch # base address
sw x31, 0(x30) # store in memory
li x31, 0xdc46bcba # load another value into integer register
amomin.w x8, x31, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x23, 0xb42a9836 # load random value
la x2, scratch # base address
sw x23, 0(x2) # store in memory
li x23, 0x71999305 # load another value into integer register
amomin.w x9, x23, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x9, 0xe8e8f4e9 # load random value
la x10, scratch # base address
sw x9, 0(x10) # store in memory
li x9, 0x4a4c1a53 # load another value into integer register
amomin.w x10, x9, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x18, 0x2d889405 # load random value
la x9, scratch # base address
sw x18, 0(x9) # store in memory
li x18, 0x65744b56 # load another value into integer register
amomin.w x11, x18, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x22, 0xa6c8f86c # load random value
la x3, scratch # base address
sw x22, 0(x3) # store in memory
li x22, 0x0a6ed280 # load another value into integer register
amomin.w x12, x22, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x26, 0xfa36039f # load random value
la x31, scratch # base address
sw x26, 0(x31) # store in memory
li x26, 0xbd569129 # load another value into integer register
amomin.w x13, x26, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x21, 0xa8e3befa # load random value
la x13, scratch # base address
sw x21, 0(x13) # store in memory
li x21, 0x20c8dee5 # load another value into integer register
amomin.w x14, x21, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x24, 0x66e1f0a7 # load random value
la x30, scratch # base address
sw x24, 0(x30) # store in memory
li x24, 0xd1de4858 # load another value into integer register
amomin.w x15, x24, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x30, 0xf72a1f34 # load random value
la x22, scratch # base address
sw x30, 0(x22) # store in memory
li x30, 0x93f4b265 # load another value into integer register
amomin.w x16, x30, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x11, 0x400b7e04 # load random value
la x7, scratch # base address
sw x11, 0(x7) # store in memory
li x11, 0x790eb02a # load another value into integer register
amomin.w x17, x11, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x20, 0x55a83f0c # load random value
la x9, scratch # base address
sw x20, 0(x9) # store in memory
li x20, 0xd520db8f # load another value into integer register
amomin.w x18, x20, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x28, 0x58b3cb5c # load random value
la x6, scratch # base address
sw x28, 0(x6) # store in memory
li x28, 0x7105060b # load another value into integer register
amomin.w x19, x28, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x5, 0x3a2ecdd1 # load random value
la x29, scratch # base address
sw x5, 0(x29) # store in memory
li x5, 0xdea270d9 # load another value into integer register
amomin.w x20, x5, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x3, 0xef7c74fd # load random value
la x23, scratch # base address
sw x3, 0(x23) # store in memory
li x3, 0x1b30d900 # load another value into integer register
amomin.w x21, x3, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x13, 0x8911f29e # load random value
la x31, scratch # base address
sw x13, 0(x31) # store in memory
li x13, 0x432ffc44 # load another value into integer register
amomin.w x22, x13, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x25, 0x8d5e0560 # load random value
la x2, scratch # base address
sw x25, 0(x2) # store in memory
li x25, 0x4e8fbb12 # load another value into integer register
amomin.w x23, x25, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x19, 0x14aac97d # load random value
la x30, scratch # base address
sw x19, 0(x30) # store in memory
li x19, 0xa2fb5bfb # load another value into integer register
amomin.w x24, x19, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x9, 0x142e176d # load random value
la x17, scratch # base address
sw x9, 0(x17) # store in memory
li x9, 0x9e160b75 # load another value into integer register
amomin.w x25, x9, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x24, 0x2ff21cc9 # load random value
la x11, scratch # base address
sw x24, 0(x11) # store in memory
li x24, 0xadd6f3a4 # load another value into integer register
amomin.w x26, x24, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x5, 0x7c072722 # load random value
la x20, scratch # base address
sw x5, 0(x20) # store in memory
li x5, 0x28fa3334 # load another value into integer register
amomin.w x27, x5, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x24, 0xf6bd3dac # load random value
la x7, scratch # base address
sw x24, 0(x7) # store in memory
li x24, 0x14eb3939 # load another value into integer register
amomin.w x28, x24, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x5, 0x88d74d98 # load random value
la x1, scratch # base address
sw x5, 0(x1) # store in memory
li x5, 0x6422fe27 # load another value into integer register
amomin.w x29, x5, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x23, 0xfeefde35 # load random value
la x31, scratch # base address
sw x23, 0(x31) # store in memory
li x23, 0x5fb849b5 # load another value into integer register
amomin.w x30, x23, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x29, 0x0b6867e0 # load random value
la x1, scratch # base address
sw x29, 0(x1) # store in memory
li x29, 0xc1410c31 # load another value into integer register
amomin.w x31, x29, (x1) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x3, 0x42b9a4ba # load random value
la x9, scratch # base address
sw x3, 0(x9) # store in memory
li x3, 0x00000000 # load another value into integer register
amomin.w x11, x3, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x7, 0x25b95d61 # load random value
la x10, scratch # base address
sw x7, 0(x10) # store in memory
li x7, 0x00000001 # load another value into integer register
amomin.w x28, x7, (x10) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x30, 0xae3c28bb # load random value
la x16, scratch # base address
sw x30, 0(x16) # store in memory
li x30, 0x00000002 # load another value into integer register
amomin.w x26, x30, (x16) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x14, 0x5de6c13a # load random value
la x7, scratch # base address
sw x14, 0(x7) # store in memory
li x14, 0x80000000 # load another value into integer register
amomin.w x28, x14, (x7) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x7, 0x788c6f64 # load random value
la x16, scratch # base address
sw x7, 0(x16) # store in memory
li x7, 0x80000001 # load another value into integer register
amomin.w x28, x7, (x16) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x9, 0xa9b0d064 # load random value
la x22, scratch # base address
sw x9, 0(x22) # store in memory
li x9, 0x7fffffff # load another value into integer register
amomin.w x25, x9, (x22) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x1, 0x8912c899 # load random value
la x13, scratch # base address
sw x1, 0(x13) # store in memory
li x1, 0x7ffffffe # load another value into integer register
amomin.w x8, x1, (x13) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x30, 0x0397fd6c # load random value
la x25, scratch # base address
sw x30, 0(x25) # store in memory
li x30, 0xffffffff # load another value into integer register
amomin.w x29, x30, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0x6ad2d2a8 # load random value
la x21, scratch # base address
sw x19, 0(x21) # store in memory
li x19, 0xfffffffe # load another value into integer register
amomin.w x14, x19, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x30, 0xa6e06e1e # load random value
la x22, scratch # base address
sw x30, 0(x22) # store in memory
li x30, 0x5bbc8872 # load another value into integer register
amomin.w x31, x30, (x22) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x16, 0xcd108f98 # load random value
la x17, scratch # base address
sw x16, 0(x17) # store in memory
li x16, 0xaaaaaaaa # load another value into integer register
amomin.w x2, x16, (x17) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x20, 0x8193499e # load random value
la x28, scratch # base address
sw x20, 0(x28) # store in memory
li x20, 0x55555555 # load another value into integer register
amomin.w x6, x20, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x9edba9a2 # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amomin.w x1, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc11b4d67 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amomin.w x19, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xe36a64ce # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amomin.w x5, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x96158380 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amomin.w x2, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8eb12223 # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amomin.w x9, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x520fb976 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amomin.w x22, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x966834d5 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amomin.w x31, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xe5d812e5 # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amomin.w x18, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe3604a01 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amomin.w x17, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x92ad0dad # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amomin.w x3, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xfe78dd25 # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amomin.w x3, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x70d8b4af # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amomin.w x29, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x953a833d # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amomin.w x21, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x356437bc # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amomin.w x15, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x56fd8f88 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amomin.w x11, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xebcb194e # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amomin.w x26, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xaaf79aae # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amomin.w x16, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xfc20cb1f # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amomin.w x16, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x2bc9840e # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amomin.w x3, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x44c9fdf5 # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amomin.w x23, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x7e02f76a # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amomin.w x24, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xc9ab45a6 # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amomin.w x22, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x85fbf91e # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amomin.w x16, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x337914b2 # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amomin.w x6, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xfccd5c9c # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amomin.w x22, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x0da10f86 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amomin.w x31, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x7790a7ec # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amomin.w x21, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xf8ac5db7 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amomin.w x15, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x20e29bbd # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amomin.w x3, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x83b25bef # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amomin.w x5, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xba5f6107 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amomin.w x31, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x28, 0x47e67639 # load random value
la x1, scratch # base address
sw x28, 0(x1) # store in memory
li x28, 0xee51ef04 # load another value into integer register
amomin.w x1, x28, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x1, 0x84591204 # load random value
la x2, scratch # base address
sw x1, 0(x2) # store in memory
li x1, 0xce1e92ad # load another value into integer register
amomin.w x2, x1, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x12, 0x0c174fd9 # load random value
la x3, scratch # base address
sw x12, 0(x3) # store in memory
li x12, 0xab898c60 # load another value into integer register
amomin.w x3, x12, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x767d913d # load random value
la x4, scratch # base address
sw x21, 0(x4) # store in memory
li x21, 0x3f837340 # load another value into integer register
amomin.w x4, x21, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x82f880c3 # load random value
la x5, scratch # base address
sw x18, 0(x5) # store in memory
li x18, 0x14f66592 # load another value into integer register
amomin.w x5, x18, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0xa899c5f0 # load random value
la x6, scratch # base address
sw x26, 0(x6) # store in memory
li x26, 0x4cdda32d # load another value into integer register
amomin.w x6, x26, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0x3eeb34a1 # load random value
la x7, scratch # base address
sw x18, 0(x7) # store in memory
li x18, 0xd3ac0f83 # load another value into integer register
amomin.w x7, x18, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x15, 0x7f9c6ed5 # load random value
la x8, scratch # base address
sw x15, 0(x8) # store in memory
li x15, 0xd30d7679 # load another value into integer register
amomin.w x8, x15, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x15, 0xb1caf274 # load random value
la x9, scratch # base address
sw x15, 0(x9) # store in memory
li x15, 0xdd965e98 # load another value into integer register
amomin.w x9, x15, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x17, 0x250c3422 # load random value
la x10, scratch # base address
sw x17, 0(x10) # store in memory
li x17, 0x9b84dcde # load another value into integer register
amomin.w x10, x17, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x19, 0x3db08bda # load random value
la x11, scratch # base address
sw x19, 0(x11) # store in memory
li x19, 0x60dee5d7 # load another value into integer register
amomin.w x11, x19, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x24, 0xf1d7c336 # load random value
la x12, scratch # base address
sw x24, 0(x12) # store in memory
li x24, 0x46d580ca # load another value into integer register
amomin.w x12, x24, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x20, 0x1b4ecbc8 # load random value
la x13, scratch # base address
sw x20, 0(x13) # store in memory
li x20, 0x347522d1 # load another value into integer register
amomin.w x13, x20, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x2, 0xa76b6fd1 # load random value
la x14, scratch # base address
sw x2, 0(x14) # store in memory
li x2, 0xe4c8bb7d # load another value into integer register
amomin.w x14, x2, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x14, 0xb49522e4 # load random value
la x15, scratch # base address
sw x14, 0(x15) # store in memory
li x14, 0x03b7e47f # load another value into integer register
amomin.w x15, x14, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x28, 0x8576d1e4 # load random value
la x16, scratch # base address
sw x28, 0(x16) # store in memory
li x28, 0xd01d9ed7 # load another value into integer register
amomin.w x16, x28, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x31, 0xf91cb593 # load random value
la x17, scratch # base address
sw x31, 0(x17) # store in memory
li x31, 0x8d4875e2 # load another value into integer register
amomin.w x17, x31, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x14, 0x6ec44323 # load random value
la x18, scratch # base address
sw x14, 0(x18) # store in memory
li x14, 0x91b0f201 # load another value into integer register
amomin.w x18, x14, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x30, 0x2cb83ae2 # load random value
la x19, scratch # base address
sw x30, 0(x19) # store in memory
li x30, 0x28025586 # load another value into integer register
amomin.w x19, x30, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xfcd59559 # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amomin.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x30, 0xc3272fb7 # load random value
la x21, scratch # base address
sw x30, 0(x21) # store in memory
li x30, 0x61570eaa # load another value into integer register
amomin.w x21, x30, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x28, 0x0ec8b4bf # load random value
la x22, scratch # base address
sw x28, 0(x22) # store in memory
li x28, 0x8062c416 # load another value into integer register
amomin.w x22, x28, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x2, 0xf33e3aed # load random value
la x23, scratch # base address
sw x2, 0(x23) # store in memory
li x2, 0xf9dd705a # load another value into integer register
amomin.w x23, x2, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x27, 0xabe2c483 # load random value
la x24, scratch # base address
sw x27, 0(x24) # store in memory
li x27, 0x1372b66d # load another value into integer register
amomin.w x24, x27, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x29, 0x28411be1 # load random value
la x25, scratch # base address
sw x29, 0(x25) # store in memory
li x29, 0x616ee599 # load another value into integer register
amomin.w x25, x29, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x30, 0x0a6f3be4 # load random value
la x26, scratch # base address
sw x30, 0(x26) # store in memory
li x30, 0x651cffbb # load another value into integer register
amomin.w x26, x30, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x17, 0x6394b51f # load random value
la x27, scratch # base address
sw x17, 0(x27) # store in memory
li x17, 0x289ac752 # load another value into integer register
amomin.w x27, x17, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x26, 0x43a79ea5 # load random value
la x28, scratch # base address
sw x26, 0(x28) # store in memory
li x26, 0x9b702c91 # load another value into integer register
amomin.w x28, x26, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x18, 0xae59f2ab # load random value
la x29, scratch # base address
sw x18, 0(x29) # store in memory
li x18, 0x11f3b77d # load another value into integer register
amomin.w x29, x18, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x18, 0x23482781 # load random value
la x30, scratch # base address
sw x18, 0(x30) # store in memory
li x18, 0x38b3bd78 # load another value into integer register
amomin.w x30, x18, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x19, 0xd6a4e49c # load random value
la x31, scratch # base address
sw x19, 0(x31) # store in memory
li x19, 0x8240e0e0 # load another value into integer register
amomin.w x31, x19, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x41a82ea8 # load random value
la x8, scratch # base address
sw x0, 0(x8) # store in memory
li x0, 0xad99bd5f # load another value into integer register
amomin.w x0, x0, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xc100d8bf # load random value
la x10, scratch # base address
sw x1, 0(x10) # store in memory
li x1, 0x9d225077 # load another value into integer register
amomin.w x1, x1, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x50c71ac5 # load random value
la x1, scratch # base address
sw x2, 0(x1) # store in memory
li x2, 0xb904f27d # load another value into integer register
amomin.w x2, x2, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x5dd9a6af # load random value
la x6, scratch # base address
sw x3, 0(x6) # store in memory
li x3, 0xf8738356 # load another value into integer register
amomin.w x3, x3, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xad1a4927 # load random value
la x12, scratch # base address
sw x4, 0(x12) # store in memory
li x4, 0x39712362 # load another value into integer register
amomin.w x4, x4, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xef893512 # load random value
la x27, scratch # base address
sw x5, 0(x27) # store in memory
li x5, 0xe744d2d7 # load another value into integer register
amomin.w x5, x5, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1b81a496 # load random value
la x15, scratch # base address
sw x6, 0(x15) # store in memory
li x6, 0x2679f659 # load another value into integer register
amomin.w x6, x6, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd7802bad # load random value
la x30, scratch # base address
sw x7, 0(x30) # store in memory
li x7, 0x857ec3c8 # load another value into integer register
amomin.w x7, x7, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x9a74ed1c # load random value
la x23, scratch # base address
sw x8, 0(x23) # store in memory
li x8, 0x5782271e # load another value into integer register
amomin.w x8, x8, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x94df026e # load random value
la x23, scratch # base address
sw x9, 0(x23) # store in memory
li x9, 0x66780767 # load another value into integer register
amomin.w x9, x9, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x05c2f391 # load random value
la x11, scratch # base address
sw x10, 0(x11) # store in memory
li x10, 0x7ed8b0ea # load another value into integer register
amomin.w x10, x10, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x28d3bf2c # load random value
la x9, scratch # base address
sw x11, 0(x9) # store in memory
li x11, 0x8e956a3b # load another value into integer register
amomin.w x11, x11, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x75b4d942 # load random value
la x3, scratch # base address
sw x12, 0(x3) # store in memory
li x12, 0xf79f5900 # load another value into integer register
amomin.w x12, x12, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xa1123d45 # load random value
la x18, scratch # base address
sw x13, 0(x18) # store in memory
li x13, 0x1a9716f2 # load another value into integer register
amomin.w x13, x13, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x7f4e52a8 # load random value
la x15, scratch # base address
sw x14, 0(x15) # store in memory
li x14, 0x683d4ff4 # load another value into integer register
amomin.w x14, x14, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x446bc546 # load random value
la x30, scratch # base address
sw x15, 0(x30) # store in memory
li x15, 0x41a30fc5 # load another value into integer register
amomin.w x15, x15, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xb15d672b # load random value
la x21, scratch # base address
sw x16, 0(x21) # store in memory
li x16, 0x872363e0 # load another value into integer register
amomin.w x16, x16, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0xad4dc0b8 # load random value
la x1, scratch # base address
sw x17, 0(x1) # store in memory
li x17, 0x8cd1d38a # load another value into integer register
amomin.w x17, x17, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x18199541 # load random value
la x9, scratch # base address
sw x18, 0(x9) # store in memory
li x18, 0xcfe97c7c # load another value into integer register
amomin.w x18, x18, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x5b3e73d5 # load random value
la x30, scratch # base address
sw x19, 0(x30) # store in memory
li x19, 0xe0792ede # load another value into integer register
amomin.w x19, x19, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0xf1cf4d86 # load random value
la x27, scratch # base address
sw x20, 0(x27) # store in memory
li x20, 0x4b548c31 # load another value into integer register
amomin.w x20, x20, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xaa5dde96 # load random value
la x5, scratch # base address
sw x21, 0(x5) # store in memory
li x21, 0xb6022c84 # load another value into integer register
amomin.w x21, x21, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x471cc858 # load random value
la x1, scratch # base address
sw x22, 0(x1) # store in memory
li x22, 0x2ec854b8 # load another value into integer register
amomin.w x22, x22, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x618e6dcd # load random value
la x16, scratch # base address
sw x23, 0(x16) # store in memory
li x23, 0x28ea8ad4 # load another value into integer register
amomin.w x23, x23, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x66b0e78f # load random value
la x14, scratch # base address
sw x24, 0(x14) # store in memory
li x24, 0x45b199dc # load another value into integer register
amomin.w x24, x24, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x9c3200cc # load random value
la x24, scratch # base address
sw x25, 0(x24) # store in memory
li x25, 0xae504e8a # load another value into integer register
amomin.w x25, x25, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x0c1ada35 # load random value
la x20, scratch # base address
sw x26, 0(x20) # store in memory
li x26, 0x22798407 # load another value into integer register
amomin.w x26, x26, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xc982911d # load random value
la x6, scratch # base address
sw x27, 0(x6) # store in memory
li x27, 0xf2c111ff # load another value into integer register
amomin.w x27, x27, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x171b83b1 # load random value
la x15, scratch # base address
sw x28, 0(x15) # store in memory
li x28, 0xfd3c8154 # load another value into integer register
amomin.w x28, x28, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x2c51af81 # load random value
la x2, scratch # base address
sw x29, 0(x2) # store in memory
li x29, 0xfedc6e7d # load another value into integer register
amomin.w x29, x29, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xe191bf71 # load random value
la x31, scratch # base address
sw x30, 0(x31) # store in memory
li x30, 0x985e38b3 # load another value into integer register
amomin.w x30, x30, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x83e50fd8 # load random value
la x11, scratch # base address
sw x31, 0(x11) # store in memory
li x31, 0x0e278c0c # load another value into integer register
amomin.w x31, x31, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xa00ef513 # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amomin.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xa4505f29 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amomin.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xd3a18001 # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amomin.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x251f7a3e # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amomin.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc67aebc2 # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amomin.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x43b344a2 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amomin.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xce1cfba8 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amomin.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x882d8694 # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amomin.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xe6601449 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amomin.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xc5bb7be3 # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amomin.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe8120715 # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amomin.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xb133b390 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amomin.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xdd374a28 # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amomin.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x0e899f68 # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amomin.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xbee69b4b # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amomin.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x40088786 # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amomin.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x1a590e0b # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amomin.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x22d490d6 # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amomin.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x12a5cbeb # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amomin.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x18a09ed1 # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amomin.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xfb454884 # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amomin.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x7af297f3 # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amomin.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xcef4a080 # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amomin.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xaa7bca9e # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amomin.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x3bfbd422 # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amomin.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x7d98b1e7 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amomin.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xf5705668 # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amomin.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x4ff22bb6 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amomin.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xbd6e05f2 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amomin.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x0045658a # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amomin.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x9c0848a0 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amomin.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x1, scratch
add x19, x17, x12 # perform first operation
amomin.w x29, x7, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x14, scratch
add x24, x16, x25 # perform first operation
amomin.w x31, x29, (x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
add x6, x22, x18 # perform first operation
amomin.w x12, x25, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x22, scratch
add x9, x9, x0 # perform first operation
amomin.w x21, x7, (x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x21, scratch
add x26, x26, x0 # perform first operation
amomin.w x10, x18, (x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x17, scratch
add x1, x1, x0 # perform first operation
amomin.w x22, x13, (x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x31, scratch
add x29, x16, x1 # perform first operation
amomin.w x29, x5, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x25, scratch
add x15, x5, x10 # perform first operation
amomin.w x15, x2, (x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x18, scratch
add x27, x31, x7 # perform first operation
amomin.w x27, x28, (x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x24, scratch
add x16, x20, x22 # perform first operation
amomin.w x20, x19, (x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x10, scratch
add x31, x25, x30 # perform first operation
amomin.w x30, x9, (x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x21, scratch
add x9, x26, x10 # perform first operation
amomin.w x22, x31, (x21) # perform second (triggering) operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-amoswap.w.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x24, 0x6538077b # load random value
la x1, scratch # base address
sw x24, 0(x1) # store in memory
li x24, 0x6e5fa331 # load another value into integer register
amoswap.w x11, x24, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x30, 0x5bee8f51 # load random value
la x2, scratch # base address
sw x30, 0(x2) # store in memory
li x30, 0x933054eb # load another value into integer register
amoswap.w x6, x30, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x28, 0xb0ef5cb0 # load random value
la x3, scratch # base address
sw x28, 0(x3) # store in memory
li x28, 0xd958ca92 # load another value into integer register
amoswap.w x18, x28, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0x89c90cd1 # load random value
la x4, scratch # base address
sw x12, 0(x4) # store in memory
li x12, 0x4ea0a99a # load another value into integer register
amoswap.w x2, x12, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0x79899694 # load random value
la x5, scratch # base address
sw x19, 0(x5) # store in memory
li x19, 0x76d30bb6 # load another value into integer register
amoswap.w x11, x19, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x2649d5a6 # load random value
la x6, scratch # base address
sw x8, 0(x6) # store in memory
li x8, 0x12f3207f # load another value into integer register
amoswap.w x24, x8, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0x99ebc9be # load random value
la x7, scratch # base address
sw x31, 0(x7) # store in memory
li x31, 0x57fcc6d4 # load another value into integer register
amoswap.w x22, x31, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x22, 0xd589ba97 # load random value
la x8, scratch # base address
sw x22, 0(x8) # store in memory
li x22, 0x86ddf470 # load another value into integer register
amoswap.w x13, x22, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x18, 0x76575c5a # load random value
la x9, scratch # base address
sw x18, 0(x9) # store in memory
li x18, 0x5c74e585 # load another value into integer register
amoswap.w x17, x18, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x6, 0x499373c9 # load random value
la x10, scratch # base address
sw x6, 0(x10) # store in memory
li x6, 0xa44abe2d # load another value into integer register
amoswap.w x19, x6, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x5, 0x7331e7a9 # load random value
la x11, scratch # base address
sw x5, 0(x11) # store in memory
li x5, 0x6c7a7d8e # load another value into integer register
amoswap.w x12, x5, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x25, 0x25f38ce5 # load random value
la x12, scratch # base address
sw x25, 0(x12) # store in memory
li x25, 0xa6a94f32 # load another value into integer register
amoswap.w x15, x25, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0xb74604fa # load random value
la x13, scratch # base address
sw x12, 0(x13) # store in memory
li x12, 0x3d9ee67b # load another value into integer register
amoswap.w x15, x12, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x22, 0x45a5bdce # load random value
la x14, scratch # base address
sw x22, 0(x14) # store in memory
li x22, 0x65bf7a26 # load another value into integer register
amoswap.w x20, x22, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x19, 0xe79f0806 # load random value
la x15, scratch # base address
sw x19, 0(x15) # store in memory
li x19, 0x36ae0600 # load another value into integer register
amoswap.w x26, x19, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x3, 0x88cfc720 # load random value
la x16, scratch # base address
sw x3, 0(x16) # store in memory
li x3, 0x1dd85824 # load another value into integer register
amoswap.w x10, x3, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x9, 0xf38e732b # load random value
la x17, scratch # base address
sw x9, 0(x17) # store in memory
li x9, 0x1f8ee248 # load another value into integer register
amoswap.w x16, x9, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x12, 0xe96cc9da # load random value
la x18, scratch # base address
sw x12, 0(x18) # store in memory
li x12, 0x91d132e9 # load another value into integer register
amoswap.w x11, x12, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x18, 0xda88e755 # load random value
la x19, scratch # base address
sw x18, 0(x19) # store in memory
li x18, 0x05ddce2d # load another value into integer register
amoswap.w x26, x18, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x10, 0x8ab1a1c4 # load random value
la x20, scratch # base address
sw x10, 0(x20) # store in memory
li x10, 0x76ef9dbe # load another value into integer register
amoswap.w x16, x10, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x5, 0x97acdcc5 # load random value
la x21, scratch # base address
sw x5, 0(x21) # store in memory
li x5, 0xe1138313 # load another value into integer register
amoswap.w x3, x5, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x30, 0xc9db4304 # load random value
la x22, scratch # base address
sw x30, 0(x22) # store in memory
li x30, 0xf9ed19d7 # load another value into integer register
amoswap.w x24, x30, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x18, 0xe8b08ca9 # load random value
la x23, scratch # base address
sw x18, 0(x23) # store in memory
li x18, 0x48785f84 # load another value into integer register
amoswap.w x28, x18, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x30, 0xd9d03b6a # load random value
la x24, scratch # base address
sw x30, 0(x24) # store in memory
li x30, 0x58972bfe # load another value into integer register
amoswap.w x14, x30, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x13, 0x846ce9f9 # load random value
la x25, scratch # base address
sw x13, 0(x25) # store in memory
li x13, 0x02fa2e58 # load another value into integer register
amoswap.w x3, x13, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x27, 0x9e24f9f1 # load random value
la x26, scratch # base address
sw x27, 0(x26) # store in memory
li x27, 0x2e761521 # load another value into integer register
amoswap.w x17, x27, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x25, 0x8d77625d # load random value
la x27, scratch # base address
sw x25, 0(x27) # store in memory
li x25, 0xd621610f # load another value into integer register
amoswap.w x21, x25, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x6, 0x18c75fa6 # load random value
la x28, scratch # base address
sw x6, 0(x28) # store in memory
li x6, 0x04d969f6 # load another value into integer register
amoswap.w x26, x6, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x21, 0x45c017dc # load random value
la x29, scratch # base address
sw x21, 0(x29) # store in memory
li x21, 0xf30912c1 # load another value into integer register
amoswap.w x12, x21, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x25, 0xd3754bcb # load random value
la x30, scratch # base address
sw x25, 0(x30) # store in memory
li x25, 0x147725da # load another value into integer register
amoswap.w x24, x25, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x10, 0x1d1cb5e8 # load random value
la x31, scratch # base address
sw x10, 0(x31) # store in memory
li x10, 0x1abfa612 # load another value into integer register
amoswap.w x9, x10, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xb7d53d06 # load random value
la x9, scratch # base address
sw x0, 0(x9) # store in memory
li x0, 0xadf6ac4c # load another value into integer register
amoswap.w x26, x0, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xb621a2d9 # load random value
la x5, scratch # base address
sw x1, 0(x5) # store in memory
li x1, 0x1f5638cb # load another value into integer register
amoswap.w x21, x1, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x002f61f5 # load random value
la x18, scratch # base address
sw x2, 0(x18) # store in memory
li x2, 0xeb3c02e0 # load another value into integer register
amoswap.w x13, x2, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0xbdb18d57 # load random value
la x26, scratch # base address
sw x3, 0(x26) # store in memory
li x3, 0x0c09cc00 # load another value into integer register
amoswap.w x10, x3, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa182b781 # load random value
la x14, scratch # base address
sw x4, 0(x14) # store in memory
li x4, 0xa3a7a328 # load another value into integer register
amoswap.w x19, x4, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd1047792 # load random value
la x7, scratch # base address
sw x5, 0(x7) # store in memory
li x5, 0xba900f6a # load another value into integer register
amoswap.w x21, x5, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2140d502 # load random value
la x31, scratch # base address
sw x6, 0(x31) # store in memory
li x6, 0xd2ceae8a # load another value into integer register
amoswap.w x16, x6, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7c0b6829 # load random value
la x9, scratch # base address
sw x7, 0(x9) # store in memory
li x7, 0xc0d6e4b7 # load another value into integer register
amoswap.w x11, x7, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x01cfcc3f # load random value
la x29, scratch # base address
sw x8, 0(x29) # store in memory
li x8, 0x0c84a7de # load another value into integer register
amoswap.w x21, x8, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x0295f68f # load random value
la x13, scratch # base address
sw x9, 0(x13) # store in memory
li x9, 0xe00f26b1 # load another value into integer register
amoswap.w x5, x9, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x87d498df # load random value
la x21, scratch # base address
sw x10, 0(x21) # store in memory
li x10, 0xe912fef6 # load another value into integer register
amoswap.w x14, x10, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x73e6c6fa # load random value
la x21, scratch # base address
sw x11, 0(x21) # store in memory
li x11, 0xa8306926 # load another value into integer register
amoswap.w x8, x11, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x1966a68d # load random value
la x3, scratch # base address
sw x12, 0(x3) # store in memory
li x12, 0x90f6dc4f # load another value into integer register
amoswap.w x10, x12, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x456c98fe # load random value
la x30, scratch # base address
sw x13, 0(x30) # store in memory
li x13, 0x60c62fde # load another value into integer register
amoswap.w x21, x13, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x8a747f1a # load random value
la x3, scratch # base address
sw x14, 0(x3) # store in memory
li x14, 0x277c6f2d # load another value into integer register
amoswap.w x7, x14, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xf2be010f # load random value
la x24, scratch # base address
sw x15, 0(x24) # store in memory
li x15, 0x9e3d1533 # load another value into integer register
amoswap.w x27, x15, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xef90396d # load random value
la x13, scratch # base address
sw x16, 0(x13) # store in memory
li x16, 0xb06eecbd # load another value into integer register
amoswap.w x22, x16, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x4fc23d70 # load random value
la x18, scratch # base address
sw x17, 0(x18) # store in memory
li x17, 0x471bdb49 # load another value into integer register
amoswap.w x11, x17, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x544db8f2 # load random value
la x7, scratch # base address
sw x18, 0(x7) # store in memory
li x18, 0x41ec623b # load another value into integer register
amoswap.w x26, x18, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x278b71a1 # load random value
la x8, scratch # base address
sw x19, 0(x8) # store in memory
li x19, 0x6715a0c7 # load another value into integer register
amoswap.w x21, x19, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x7d4f46c8 # load random value
la x1, scratch # base address
sw x20, 0(x1) # store in memory
li x20, 0x225505d2 # load another value into integer register
amoswap.w x12, x20, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x8894dc3f # load random value
la x22, scratch # base address
sw x21, 0(x22) # store in memory
li x21, 0x79ddacd1 # load another value into integer register
amoswap.w x19, x21, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x2775b383 # load random value
la x7, scratch # base address
sw x22, 0(x7) # store in memory
li x22, 0xc7481970 # load another value into integer register
amoswap.w x2, x22, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x5ad3b0ff # load random value
la x24, scratch # base address
sw x23, 0(x24) # store in memory
li x23, 0xe60efea0 # load another value into integer register
amoswap.w x1, x23, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x286e26e3 # load random value
la x2, scratch # base address
sw x24, 0(x2) # store in memory
li x24, 0x6a62e964 # load another value into integer register
amoswap.w x9, x24, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xafb9d0ad # load random value
la x16, scratch # base address
sw x25, 0(x16) # store in memory
li x25, 0x04be3abb # load another value into integer register
amoswap.w x14, x25, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x38ff0369 # load random value
la x11, scratch # base address
sw x26, 0(x11) # store in memory
li x26, 0x79c0b39b # load another value into integer register
amoswap.w x6, x26, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0xd3d297cf # load random value
la x17, scratch # base address
sw x27, 0(x17) # store in memory
li x27, 0x7af60556 # load another value into integer register
amoswap.w x2, x27, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xf449c801 # load random value
la x6, scratch # base address
sw x28, 0(x6) # store in memory
li x28, 0xc6f918f4 # load another value into integer register
amoswap.w x26, x28, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x42003e02 # load random value
la x16, scratch # base address
sw x29, 0(x16) # store in memory
li x29, 0x5831ffd8 # load another value into integer register
amoswap.w x9, x29, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xf1213671 # load random value
la x27, scratch # base address
sw x30, 0(x27) # store in memory
li x30, 0xcef9cae1 # load another value into integer register
amoswap.w x14, x30, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xdd4430d4 # load random value
la x22, scratch # base address
sw x31, 0(x22) # store in memory
li x31, 0xa839a072 # load another value into integer register
amoswap.w x11, x31, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x17, 0xc649fd06 # load random value
la x28, scratch # base address
sw x17, 0(x28) # store in memory
li x17, 0x18f226ba # load another value into integer register
amoswap.w x0, x17, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x10, 0xf40abfe8 # load random value
la x27, scratch # base address
sw x10, 0(x27) # store in memory
li x10, 0xf1afc6cb # load another value into integer register
amoswap.w x1, x10, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x29, 0xc1d24ca7 # load random value
la x18, scratch # base address
sw x29, 0(x18) # store in memory
li x29, 0x37d05f69 # load another value into integer register
amoswap.w x2, x29, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x11, 0x01d29f32 # load random value
la x20, scratch # base address
sw x11, 0(x20) # store in memory
li x11, 0x0a57849b # load another value into integer register
amoswap.w x3, x11, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0x65073442 # load random value
la x21, scratch # base address
sw x30, 0(x21) # store in memory
li x30, 0xb28b7b1a # load another value into integer register
amoswap.w x4, x30, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0x819e9108 # load random value
la x1, scratch # base address
sw x4, 0(x1) # store in memory
li x4, 0xfac65a60 # load another value into integer register
amoswap.w x5, x4, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0xa9d66792 # load random value
la x26, scratch # base address
sw x30, 0(x26) # store in memory
li x30, 0xc5b2a8f4 # load another value into integer register
amoswap.w x6, x30, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x5dae465f # load random value
la x25, scratch # base address
sw x13, 0(x25) # store in memory
li x13, 0xe35f0086 # load another value into integer register
amoswap.w x7, x13, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x3, 0x4053ed67 # load random value
la x11, scratch # base address
sw x3, 0(x11) # store in memory
li x3, 0x642a809f # load another value into integer register
amoswap.w x8, x3, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x16, 0xdc10b4e5 # load random value
la x26, scratch # base address
sw x16, 0(x26) # store in memory
li x16, 0xe4f0e421 # load another value into integer register
amoswap.w x9, x16, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x28, 0x9bf68b51 # load random value
la x7, scratch # base address
sw x28, 0(x7) # store in memory
li x28, 0xe8ec052d # load another value into integer register
amoswap.w x10, x28, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x25, 0xe3c5f9ec # load random value
la x5, scratch # base address
sw x25, 0(x5) # store in memory
li x25, 0x4a68095a # load another value into integer register
amoswap.w x11, x25, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x21, 0xfd07263c # load random value
la x7, scratch # base address
sw x21, 0(x7) # store in memory
li x21, 0x2e33c8ff # load another value into integer register
amoswap.w x12, x21, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x14, 0x739cf580 # load random value
la x23, scratch # base address
sw x14, 0(x23) # store in memory
li x14, 0x2f84b84c # load another value into integer register
amoswap.w x13, x14, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x31, 0x4dc6e9cf # load random value
la x17, scratch # base address
sw x31, 0(x17) # store in memory
li x31, 0x29bff29e # load another value into integer register
amoswap.w x14, x31, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x28, 0x11593e3e # load random value
la x20, scratch # base address
sw x28, 0(x20) # store in memory
li x28, 0xacad2167 # load another value into integer register
amoswap.w x15, x28, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xdc90dd61 # load random value
la x13, scratch # base address
sw x16, 0(x13) # store in memory
li x16, 0x813e6057 # load another value into integer register
amoswap.w x16, x16, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x22, 0x191e9c0c # load random value
la x24, scratch # base address
sw x22, 0(x24) # store in memory
li x22, 0xd32b8bbd # load another value into integer register
amoswap.w x17, x22, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xd6580106 # load random value
la x9, scratch # base address
sw x18, 0(x9) # store in memory
li x18, 0x832173a8 # load another value into integer register
amoswap.w x18, x18, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x8, 0x3e9d83ab # load random value
la x1, scratch # base address
sw x8, 0(x1) # store in memory
li x8, 0xe900b45e # load another value into integer register
amoswap.w x19, x8, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x23, 0xa5e96322 # load random value
la x30, scratch # base address
sw x23, 0(x30) # store in memory
li x23, 0xa49734c9 # load another value into integer register
amoswap.w x20, x23, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x17, 0x1b55941c # load random value
la x9, scratch # base address
sw x17, 0(x9) # store in memory
li x17, 0x878d8401 # load another value into integer register
amoswap.w x21, x17, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x20, 0x03d24319 # load random value
la x15, scratch # base address
sw x20, 0(x15) # store in memory
li x20, 0x3784a6b3 # load another value into integer register
amoswap.w x22, x20, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x12, 0x7a33b274 # load random value
la x1, scratch # base address
sw x12, 0(x1) # store in memory
li x12, 0x41b94365 # load another value into integer register
amoswap.w x23, x12, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x21, 0x910d3c9b # load random value
la x11, scratch # base address
sw x21, 0(x11) # store in memory
li x21, 0xeb59aab3 # load another value into integer register
amoswap.w x24, x21, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x10, 0x8235bdcf # load random value
la x2, scratch # base address
sw x10, 0(x2) # store in memory
li x10, 0x396e4acb # load another value into integer register
amoswap.w x25, x10, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x3, 0x0d8edfb1 # load random value
la x7, scratch # base address
sw x3, 0(x7) # store in memory
li x3, 0x6ec3e3fd # load another value into integer register
amoswap.w x26, x3, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x15, 0xa3c31c63 # load random value
la x7, scratch # base address
sw x15, 0(x7) # store in memory
li x15, 0xd864e7cd # load another value into integer register
amoswap.w x27, x15, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x14, 0x78091997 # load random value
la x10, scratch # base address
sw x14, 0(x10) # store in memory
li x14, 0xab8036ce # load another value into integer register
amoswap.w x28, x14, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x837ee423 # load random value
la x14, scratch # base address
sw x29, 0(x14) # store in memory
li x29, 0xa2d53de0 # load another value into integer register
amoswap.w x29, x29, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x25, 0x4859ee35 # load random value
la x21, scratch # base address
sw x25, 0(x21) # store in memory
li x25, 0xc0617b7e # load another value into integer register
amoswap.w x30, x25, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x1, 0xae8ff603 # load random value
la x12, scratch # base address
sw x1, 0(x12) # store in memory
li x1, 0x4b4a4f66 # load another value into integer register
amoswap.w x31, x1, (x12) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0x1294b590 # load random value
la x28, scratch # base address
sw x12, 0(x28) # store in memory
li x12, 0x00000000 # load another value into integer register
amoswap.w x14, x12, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0xc822e68d # load random value
la x7, scratch # base address
sw x31, 0(x7) # store in memory
li x31, 0x00000001 # load another value into integer register
amoswap.w x26, x31, (x7) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0xc4e68fd9 # load random value
la x18, scratch # base address
sw x26, 0(x18) # store in memory
li x26, 0x00000002 # load another value into integer register
amoswap.w x9, x26, (x18) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x30, 0x19490fd4 # load random value
la x14, scratch # base address
sw x30, 0(x14) # store in memory
li x30, 0x80000000 # load another value into integer register
amoswap.w x27, x30, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x7, 0xe5421f5f # load random value
la x22, scratch # base address
sw x7, 0(x22) # store in memory
li x7, 0x80000001 # load another value into integer register
amoswap.w x11, x7, (x22) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x3, 0x7ee30765 # load random value
la x21, scratch # base address
sw x3, 0(x21) # store in memory
li x3, 0x7fffffff # load another value into integer register
amoswap.w x1, x3, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x27, 0xffd7ffd1 # load random value
la x12, scratch # base address
sw x27, 0(x12) # store in memory
li x27, 0x7ffffffe # load another value into integer register
amoswap.w x21, x27, (x12) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x6, 0x290385ae # load random value
la x21, scratch # base address
sw x6, 0(x21) # store in memory
li x6, 0xffffffff # load another value into integer register
amoswap.w x24, x6, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0xb234f1d4 # load random value
la x24, scratch # base address
sw x15, 0(x24) # store in memory
li x15, 0xfffffffe # load another value into integer register
amoswap.w x23, x15, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x23, 0x89757d71 # load random value
la x21, scratch # base address
sw x23, 0(x21) # store in memory
li x23, 0x5bbc8872 # load another value into integer register
amoswap.w x5, x23, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x8, 0xa1f3379c # load random value
la x3, scratch # base address
sw x8, 0(x3) # store in memory
li x8, 0xaaaaaaaa # load another value into integer register
amoswap.w x15, x8, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x16, 0xb000119b # load random value
la x18, scratch # base address
sw x16, 0(x18) # store in memory
li x16, 0x55555555 # load another value into integer register
amoswap.w x3, x16, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x213a5d8f # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amoswap.w x1, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc54bded6 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amoswap.w x13, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xaae0629f # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amoswap.w x9, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7403ee90 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amoswap.w x16, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf95cbdc3 # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amoswap.w x27, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x35f08717 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amoswap.w x31, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaa9a3714 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amoswap.w x15, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xa2adeee0 # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amoswap.w x17, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x5360e901 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amoswap.w x28, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x3dbc2e0b # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amoswap.w x3, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xa93c3ca5 # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amoswap.w x9, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xd8575e7a # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amoswap.w x3, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xbcb00f18 # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amoswap.w x21, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x72a77144 # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amoswap.w x27, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x3a8d8d57 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amoswap.w x28, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x7cb4c5de # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amoswap.w x3, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x9d50ff74 # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amoswap.w x9, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xb20dce01 # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amoswap.w x16, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x16f76eda # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amoswap.w x2, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xc93839d2 # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amoswap.w x25, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xdbd5e164 # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amoswap.w x20, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x045eb6ff # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amoswap.w x19, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x7c34a9a4 # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amoswap.w x9, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x7655e70a # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amoswap.w x24, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xba670cb3 # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amoswap.w x2, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xea863e6f # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amoswap.w x6, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x64f44724 # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amoswap.w x2, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xe6cde3be # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amoswap.w x18, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xa3d68721 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amoswap.w x29, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xd0be81b4 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amoswap.w x13, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xff5ca359 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amoswap.w x12, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x13, 0x3a204622 # load random value
la x1, scratch # base address
sw x13, 0(x1) # store in memory
li x13, 0x57191450 # load another value into integer register
amoswap.w x1, x13, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x28, 0xca0f8b24 # load random value
la x2, scratch # base address
sw x28, 0(x2) # store in memory
li x28, 0x16a97cc8 # load another value into integer register
amoswap.w x2, x28, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x18, 0xd062111b # load random value
la x3, scratch # base address
sw x18, 0(x3) # store in memory
li x18, 0x662182b3 # load another value into integer register
amoswap.w x3, x18, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0x665a8b19 # load random value
la x4, scratch # base address
sw x12, 0(x4) # store in memory
li x12, 0x505f7021 # load another value into integer register
amoswap.w x4, x12, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x29e3fdb1 # load random value
la x5, scratch # base address
sw x9, 0(x5) # store in memory
li x9, 0xd6ec7b7e # load another value into integer register
amoswap.w x5, x9, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0x69cef897 # load random value
la x6, scratch # base address
sw x31, 0(x6) # store in memory
li x31, 0x502a8bf7 # load another value into integer register
amoswap.w x6, x31, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x4f7d806b # load random value
la x7, scratch # base address
sw x24, 0(x7) # store in memory
li x24, 0x1fbfd162 # load another value into integer register
amoswap.w x7, x24, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x17, 0x2e0398ba # load random value
la x8, scratch # base address
sw x17, 0(x8) # store in memory
li x17, 0x2001b8df # load another value into integer register
amoswap.w x8, x17, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x25, 0x82114972 # load random value
la x9, scratch # base address
sw x25, 0(x9) # store in memory
li x25, 0x82af2983 # load another value into integer register
amoswap.w x9, x25, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x11, 0xcaa6f795 # load random value
la x10, scratch # base address
sw x11, 0(x10) # store in memory
li x11, 0x65d063d1 # load another value into integer register
amoswap.w x10, x11, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x18, 0xb839c1c1 # load random value
la x11, scratch # base address
sw x18, 0(x11) # store in memory
li x18, 0xf2a5ff10 # load another value into integer register
amoswap.w x11, x18, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xe2b4b991 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amoswap.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x19, 0x36f65f97 # load random value
la x13, scratch # base address
sw x19, 0(x13) # store in memory
li x19, 0x2be82efd # load another value into integer register
amoswap.w x13, x19, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x29, 0x7fa3edcf # load random value
la x14, scratch # base address
sw x29, 0(x14) # store in memory
li x29, 0xebb98a71 # load another value into integer register
amoswap.w x14, x29, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x14, 0x9b46d803 # load random value
la x15, scratch # base address
sw x14, 0(x15) # store in memory
li x14, 0xeb185557 # load another value into integer register
amoswap.w x15, x14, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x13, 0x7fbcbf7a # load random value
la x16, scratch # base address
sw x13, 0(x16) # store in memory
li x13, 0xd0624e24 # load another value into integer register
amoswap.w x16, x13, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x2, 0xca3365d6 # load random value
la x17, scratch # base address
sw x2, 0(x17) # store in memory
li x2, 0xe7787372 # load another value into integer register
amoswap.w x17, x2, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x26, 0x8bc7f3bc # load random value
la x18, scratch # base address
sw x26, 0(x18) # store in memory
li x26, 0x3e9fba17 # load another value into integer register
amoswap.w x18, x26, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x15, 0x7dfbe872 # load random value
la x19, scratch # base address
sw x15, 0(x19) # store in memory
li x15, 0x561ef7fb # load another value into integer register
amoswap.w x19, x15, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x27, 0x365409ba # load random value
la x20, scratch # base address
sw x27, 0(x20) # store in memory
li x27, 0xe6d77ed3 # load another value into integer register
amoswap.w x20, x27, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x15, 0x4a286360 # load random value
la x21, scratch # base address
sw x15, 0(x21) # store in memory
li x15, 0x0e100d48 # load another value into integer register
amoswap.w x21, x15, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x21, 0xa1359128 # load random value
la x22, scratch # base address
sw x21, 0(x22) # store in memory
li x21, 0xf6332aac # load another value into integer register
amoswap.w x22, x21, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x21, 0x7d0a1dd4 # load random value
la x23, scratch # base address
sw x21, 0(x23) # store in memory
li x21, 0x1b079004 # load another value into integer register
amoswap.w x23, x21, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x21, 0xda6879f2 # load random value
la x24, scratch # base address
sw x21, 0(x24) # store in memory
li x21, 0x9814d17b # load another value into integer register
amoswap.w x24, x21, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x28, 0xe93b4b22 # load random value
la x25, scratch # base address
sw x28, 0(x25) # store in memory
li x28, 0xa1db4871 # load another value into integer register
amoswap.w x25, x28, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x10, 0x912438e4 # load random value
la x26, scratch # base address
sw x10, 0(x26) # store in memory
li x10, 0xaebe3bce # load another value into integer register
amoswap.w x26, x10, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x18, 0x73db57d4 # load random value
la x27, scratch # base address
sw x18, 0(x27) # store in memory
li x18, 0x4aff1df5 # load another value into integer register
amoswap.w x27, x18, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x13, 0xd9a60250 # load random value
la x28, scratch # base address
sw x13, 0(x28) # store in memory
li x13, 0xf4400787 # load another value into integer register
amoswap.w x28, x13, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x30, 0x405e95c1 # load random value
la x29, scratch # base address
sw x30, 0(x29) # store in memory
li x30, 0x3e54761d # load another value into integer register
amoswap.w x29, x30, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x10, 0xbebded73 # load random value
la x30, scratch # base address
sw x10, 0(x30) # store in memory
li x10, 0xb24a5619 # load another value into integer register
amoswap.w x30, x10, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x20, 0x7587aa60 # load random value
la x31, scratch # base address
sw x20, 0(x31) # store in memory
li x20, 0xb3d30b3f # load another value into integer register
amoswap.w x31, x20, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x83c36797 # load random value
la x15, scratch # base address
sw x0, 0(x15) # store in memory
li x0, 0x3dccb2f7 # load another value into integer register
amoswap.w x0, x0, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xc74aef1b # load random value
la x29, scratch # base address
sw x1, 0(x29) # store in memory
li x1, 0x7ca4d027 # load another value into integer register
amoswap.w x1, x1, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x20d7371f # load random value
la x1, scratch # base address
sw x2, 0(x1) # store in memory
li x2, 0x4fb82b99 # load another value into integer register
amoswap.w x2, x2, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x9f19dc39 # load random value
la x31, scratch # base address
sw x3, 0(x31) # store in memory
li x3, 0x7a1cb64d # load another value into integer register
amoswap.w x3, x3, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1bf0459d # load random value
la x10, scratch # base address
sw x4, 0(x10) # store in memory
li x4, 0xeb599ae5 # load another value into integer register
amoswap.w x4, x4, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0bafeba7 # load random value
la x7, scratch # base address
sw x5, 0(x7) # store in memory
li x5, 0x094c1b08 # load another value into integer register
amoswap.w x5, x5, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4650348d # load random value
la x7, scratch # base address
sw x6, 0(x7) # store in memory
li x6, 0xd42c77ce # load another value into integer register
amoswap.w x6, x6, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
li x7, 0x4bfa542f # load random value
la x25, scratch # base address
sw x7, 0(x25) # store in memory
li x7, 0xa7874642 # load another value into integer register
amoswap.w x7, x7, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x5f9b23b8 # load random value
la x21, scratch # base address
sw x8, 0(x21) # store in memory
li x8, 0x958016c4 # load another value into integer register
amoswap.w x8, x8, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x75d1e8ca # load random value
la x30, scratch # base address
sw x9, 0(x30) # store in memory
li x9, 0x268cd828 # load another value into integer register
amoswap.w x9, x9, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xe624ef93 # load random value
la x27, scratch # base address
sw x10, 0(x27) # store in memory
li x10, 0x5617c0be # load another value into integer register
amoswap.w x10, x10, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x1536f178 # load random value
la x28, scratch # base address
sw x11, 0(x28) # store in memory
li x11, 0xd9e4012e # load another value into integer register
amoswap.w x11, x11, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xe96de0e1 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amoswap.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x8a1b54c8 # load random value
la x1, scratch # base address
sw x13, 0(x1) # store in memory
li x13, 0xb3ae6dc6 # load another value into integer register
amoswap.w x13, x13, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xd059b1bd # load random value
la x15, scratch # base address
sw x14, 0(x15) # store in memory
li x14, 0x56b876fc # load another value into integer register
amoswap.w x14, x14, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x0ece5429 # load random value
la x26, scratch # base address
sw x15, 0(x26) # store in memory
li x15, 0x15526daa # load another value into integer register
amoswap.w x15, x15, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xf427e397 # load random value
la x3, scratch # base address
sw x16, 0(x3) # store in memory
li x16, 0xa2a94ed9 # load another value into integer register
amoswap.w x16, x16, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0xefa42aef # load random value
la x15, scratch # base address
sw x17, 0(x15) # store in memory
li x17, 0x3f6ac7b8 # load another value into integer register
amoswap.w x17, x17, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x21995c68 # load random value
la x12, scratch # base address
sw x18, 0(x12) # store in memory
li x18, 0xdfb520f7 # load another value into integer register
amoswap.w x18, x18, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x11c20f00 # load random value
la x30, scratch # base address
sw x19, 0(x30) # store in memory
li x19, 0xec69b643 # load another value into integer register
amoswap.w x19, x19, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0xf21553c3 # load random value
la x8, scratch # base address
sw x20, 0(x8) # store in memory
li x20, 0x86b4460c # load another value into integer register
amoswap.w x20, x20, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x3270bb75 # load random value
la x25, scratch # base address
sw x21, 0(x25) # store in memory
li x21, 0x045bb961 # load another value into integer register
amoswap.w x21, x21, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x52374e44 # load random value
la x23, scratch # base address
sw x22, 0(x23) # store in memory
li x22, 0x0b6242d7 # load another value into integer register
amoswap.w x22, x22, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xd23f8c94 # load random value
la x6, scratch # base address
sw x23, 0(x6) # store in memory
li x23, 0xa3da9268 # load another value into integer register
amoswap.w x23, x23, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x581068ab # load random value
la x15, scratch # base address
sw x24, 0(x15) # store in memory
li x24, 0xb14a4a7b # load another value into integer register
amoswap.w x24, x24, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0xf14c8dd0 # load random value
la x17, scratch # base address
sw x25, 0(x17) # store in memory
li x25, 0x32487086 # load another value into integer register
amoswap.w x25, x25, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x861f5a14 # load random value
la x30, scratch # base address
sw x26, 0(x30) # store in memory
li x26, 0xe9af0ab2 # load another value into integer register
amoswap.w x26, x26, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xaeb1a96b # load random value
la x9, scratch # base address
sw x27, 0(x9) # store in memory
li x27, 0xae968ae2 # load another value into integer register
amoswap.w x27, x27, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x1727276c # load random value
la x11, scratch # base address
sw x28, 0(x11) # store in memory
li x28, 0x5c6b889b # load another value into integer register
amoswap.w x28, x28, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xf8218338 # load random value
la x14, scratch # base address
sw x29, 0(x14) # store in memory
li x29, 0x23d0fd2f # load another value into integer register
amoswap.w x29, x29, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xe9eef6a4 # load random value
la x7, scratch # base address
sw x30, 0(x7) # store in memory
li x30, 0xd892575b # load another value into integer register
amoswap.w x30, x30, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x70e52175 # load random value
la x2, scratch # base address
sw x31, 0(x2) # store in memory
li x31, 0x2be613b5 # load another value into integer register
amoswap.w x31, x31, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xa761eb4a # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amoswap.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xacc40b01 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amoswap.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x98acbdc9 # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amoswap.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc4c9ba43 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amoswap.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0b48d5d8 # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amoswap.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7f592271 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amoswap.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfcc7368c # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amoswap.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x9746019a # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amoswap.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x60668257 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amoswap.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x83a93559 # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amoswap.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xa685066b # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amoswap.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xe4211d6e # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amoswap.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xbc1d8796 # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amoswap.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x07257b7e # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amoswap.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x810d1eb2 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amoswap.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xc64e030e # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amoswap.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x8f2cbc6c # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amoswap.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x96e54365 # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amoswap.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x2eb59e42 # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amoswap.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x43239693 # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amoswap.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x7995710c # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amoswap.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xe3b733a2 # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amoswap.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xdf3f70ef # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amoswap.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xadf9bcdf # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amoswap.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xf781e6d2 # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amoswap.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xde8d2353 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amoswap.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x1b22478a # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amoswap.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x1c5a2270 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amoswap.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x8d3ffbe7 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amoswap.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x2d16ed71 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amoswap.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xef68c781 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amoswap.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
add x1, x6, x12 # perform first operation
amoswap.w x13, x31, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x7, scratch
add x2, x29, x3 # perform first operation
amoswap.w x6, x17, (x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x16, scratch
add x2, x22, x26 # perform first operation
amoswap.w x20, x27, (x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x14, scratch
add x29, x29, x0 # perform first operation
amoswap.w x29, x29, (x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x29, scratch
add x29, x29, x0 # perform first operation
amoswap.w x18, x3, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x2, scratch
add x27, x27, x0 # perform first operation
amoswap.w x28, x19, (x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x21, scratch
add x20, x9, x18 # perform first operation
amoswap.w x20, x15, (x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x16, scratch
add x18, x20, x26 # perform first operation
amoswap.w x18, x5, (x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x17, scratch
add x7, x26, x14 # perform first operation
amoswap.w x7, x11, (x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x11, scratch
add x12, x10, x19 # perform first operation
amoswap.w x10, x18, (x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x2, scratch
add x20, x15, x3 # perform first operation
amoswap.w x3, x8, (x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x2, scratch
add x23, x21, x10 # perform first operation
amoswap.w x3, x1, (x2) # perform second (triggering) operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-amominu.w.S
// ******************


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

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-amoadd.w.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x9, 0xe6fa85ec # load random value
la x1, scratch # base address
sw x9, 0(x1) # store in memory
li x9, 0x2733e6f2 # load another value into integer register
amoadd.w x2, x9, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x9, 0xdcab1600 # load random value
la x2, scratch # base address
sw x9, 0(x2) # store in memory
li x9, 0x68e522c4 # load another value into integer register
amoadd.w x25, x9, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x15, 0x8240052b # load random value
la x3, scratch # base address
sw x15, 0(x3) # store in memory
li x15, 0xd885c536 # load another value into integer register
amoadd.w x11, x15, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0xfc2fc58e # load random value
la x4, scratch # base address
sw x16, 0(x4) # store in memory
li x16, 0xe924275d # load another value into integer register
amoadd.w x28, x16, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0xdd0d74f1 # load random value
la x5, scratch # base address
sw x3, 0(x5) # store in memory
li x3, 0x24ff162e # load another value into integer register
amoadd.w x24, x3, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0x8b1b576f # load random value
la x6, scratch # base address
sw x30, 0(x6) # store in memory
li x30, 0x332c16fc # load another value into integer register
amoadd.w x19, x30, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0x8d7ab03c # load random value
la x7, scratch # base address
sw x10, 0(x7) # store in memory
li x10, 0x65422f49 # load another value into integer register
amoadd.w x16, x10, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x21, 0x54963cd8 # load random value
la x8, scratch # base address
sw x21, 0(x8) # store in memory
li x21, 0xfa96376a # load another value into integer register
amoadd.w x22, x21, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x25, 0xbc71f5b0 # load random value
la x9, scratch # base address
sw x25, 0(x9) # store in memory
li x25, 0xd29cbcd1 # load another value into integer register
amoadd.w x2, x25, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x3, 0x9f202e89 # load random value
la x10, scratch # base address
sw x3, 0(x10) # store in memory
li x3, 0xb51ae8d0 # load another value into integer register
amoadd.w x30, x3, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x23, 0xd2e9e949 # load random value
la x11, scratch # base address
sw x23, 0(x11) # store in memory
li x23, 0x185b1a7c # load another value into integer register
amoadd.w x16, x23, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x3, 0xc61b7b6f # load random value
la x12, scratch # base address
sw x3, 0(x12) # store in memory
li x3, 0x153368e7 # load another value into integer register
amoadd.w x8, x3, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x1, 0xc1da5d02 # load random value
la x13, scratch # base address
sw x1, 0(x13) # store in memory
li x1, 0x81e8e087 # load another value into integer register
amoadd.w x6, x1, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0xccba525a # load random value
la x14, scratch # base address
sw x13, 0(x14) # store in memory
li x13, 0x8cb221c8 # load another value into integer register
amoadd.w x19, x13, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0x6a0a5f84 # load random value
la x15, scratch # base address
sw x10, 0(x15) # store in memory
li x10, 0x6cc083e8 # load another value into integer register
amoadd.w x24, x10, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x20, 0x969970de # load random value
la x16, scratch # base address
sw x20, 0(x16) # store in memory
li x20, 0x8c572aa8 # load another value into integer register
amoadd.w x24, x20, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x18, 0x76efd72c # load random value
la x17, scratch # base address
sw x18, 0(x17) # store in memory
li x18, 0x2f0e2c90 # load another value into integer register
amoadd.w x15, x18, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x28, 0x256eb7e8 # load random value
la x18, scratch # base address
sw x28, 0(x18) # store in memory
li x28, 0xb7400c5c # load another value into integer register
amoadd.w x8, x28, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x17, 0x088f129b # load random value
la x19, scratch # base address
sw x17, 0(x19) # store in memory
li x17, 0xb7ffbd6c # load another value into integer register
amoadd.w x27, x17, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x16, 0xc942a016 # load random value
la x20, scratch # base address
sw x16, 0(x20) # store in memory
li x16, 0x349d0e45 # load another value into integer register
amoadd.w x15, x16, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x16, 0xc5337639 # load random value
la x21, scratch # base address
sw x16, 0(x21) # store in memory
li x16, 0x326235af # load another value into integer register
amoadd.w x25, x16, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x29, 0xe8ffe79d # load random value
la x22, scratch # base address
sw x29, 0(x22) # store in memory
li x29, 0xd1fd6c96 # load another value into integer register
amoadd.w x23, x29, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x19, 0xc6489d02 # load random value
la x23, scratch # base address
sw x19, 0(x23) # store in memory
li x19, 0x18a7b1d9 # load another value into integer register
amoadd.w x16, x19, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x27, 0x104cc35f # load random value
la x24, scratch # base address
sw x27, 0(x24) # store in memory
li x27, 0x3f82f954 # load another value into integer register
amoadd.w x12, x27, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x1, 0xe2996b30 # load random value
la x25, scratch # base address
sw x1, 0(x25) # store in memory
li x1, 0xab6bab2a # load another value into integer register
amoadd.w x19, x1, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x28, 0xe8b8fdaf # load random value
la x26, scratch # base address
sw x28, 0(x26) # store in memory
li x28, 0x738e9286 # load another value into integer register
amoadd.w x25, x28, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x23, 0x24d7f338 # load random value
la x27, scratch # base address
sw x23, 0(x27) # store in memory
li x23, 0x55b98a5a # load another value into integer register
amoadd.w x18, x23, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x9, 0x092644ef # load random value
la x28, scratch # base address
sw x9, 0(x28) # store in memory
li x9, 0xb2f7dbb2 # load another value into integer register
amoadd.w x21, x9, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x19, 0xc497bfbd # load random value
la x29, scratch # base address
sw x19, 0(x29) # store in memory
li x19, 0xbd06acf7 # load another value into integer register
amoadd.w x18, x19, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x1, 0x912cf4ea # load random value
la x30, scratch # base address
sw x1, 0(x30) # store in memory
li x1, 0x3a19b287 # load another value into integer register
amoadd.w x28, x1, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x28, 0xca5643b1 # load random value
la x31, scratch # base address
sw x28, 0(x31) # store in memory
li x28, 0x617fc720 # load another value into integer register
amoadd.w x30, x28, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x984a8ae7 # load random value
la x3, scratch # base address
sw x0, 0(x3) # store in memory
li x0, 0x2661d5b4 # load another value into integer register
amoadd.w x5, x0, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x67a66b76 # load random value
la x21, scratch # base address
sw x1, 0(x21) # store in memory
li x1, 0xeebfe4cb # load another value into integer register
amoadd.w x26, x1, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xae655d1a # load random value
la x3, scratch # base address
sw x2, 0(x3) # store in memory
li x2, 0x3a564219 # load another value into integer register
amoadd.w x29, x2, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x180cd70e # load random value
la x10, scratch # base address
sw x3, 0(x10) # store in memory
li x3, 0xaccedff1 # load another value into integer register
amoadd.w x30, x3, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd8d32523 # load random value
la x7, scratch # base address
sw x4, 0(x7) # store in memory
li x4, 0x64052cfd # load another value into integer register
amoadd.w x10, x4, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1fbb50f4 # load random value
la x25, scratch # base address
sw x5, 0(x25) # store in memory
li x5, 0x2b9c4a4e # load another value into integer register
amoadd.w x13, x5, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3578ed98 # load random value
la x1, scratch # base address
sw x6, 0(x1) # store in memory
li x6, 0xc09cb313 # load another value into integer register
amoadd.w x29, x6, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x93beba77 # load random value
la x26, scratch # base address
sw x7, 0(x26) # store in memory
li x7, 0x4e8b4789 # load another value into integer register
amoadd.w x24, x7, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x5c3035da # load random value
la x7, scratch # base address
sw x8, 0(x7) # store in memory
li x8, 0xbf32c242 # load another value into integer register
amoadd.w x27, x8, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x49cf8953 # load random value
la x13, scratch # base address
sw x9, 0(x13) # store in memory
li x9, 0xe1d6dcc3 # load another value into integer register
amoadd.w x14, x9, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xb7512cf4 # load random value
la x24, scratch # base address
sw x10, 0(x24) # store in memory
li x10, 0xf85530da # load another value into integer register
amoadd.w x23, x10, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x4a83fde9 # load random value
la x3, scratch # base address
sw x11, 0(x3) # store in memory
li x11, 0x12451eea # load another value into integer register
amoadd.w x20, x11, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xbc6f0692 # load random value
la x23, scratch # base address
sw x12, 0(x23) # store in memory
li x12, 0x72dd6589 # load another value into integer register
amoadd.w x1, x12, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x5ee72d83 # load random value
la x24, scratch # base address
sw x13, 0(x24) # store in memory
li x13, 0x124425fc # load another value into integer register
amoadd.w x2, x13, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xbac69ba8 # load random value
la x28, scratch # base address
sw x14, 0(x28) # store in memory
li x14, 0x5a0f9322 # load another value into integer register
amoadd.w x22, x14, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x6142a3af # load random value
la x1, scratch # base address
sw x15, 0(x1) # store in memory
li x15, 0x18a6e555 # load another value into integer register
amoadd.w x3, x15, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x1637b1ac # load random value
la x19, scratch # base address
sw x16, 0(x19) # store in memory
li x16, 0xa7d750fa # load another value into integer register
amoadd.w x26, x16, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x603404d3 # load random value
la x6, scratch # base address
sw x17, 0(x6) # store in memory
li x17, 0x088bdc00 # load another value into integer register
amoadd.w x10, x17, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xa05edfa5 # load random value
la x27, scratch # base address
sw x18, 0(x27) # store in memory
li x18, 0x44330732 # load another value into integer register
amoadd.w x1, x18, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0xd782c84a # load random value
la x17, scratch # base address
sw x19, 0(x17) # store in memory
li x19, 0x6aa5e5b2 # load another value into integer register
amoadd.w x15, x19, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xbc1e7d81 # load random value
la x5, scratch # base address
sw x20, 0(x5) # store in memory
li x20, 0xafebaf9c # load another value into integer register
amoadd.w x22, x20, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x5515015b # load random value
la x13, scratch # base address
sw x21, 0(x13) # store in memory
li x21, 0x3718da7d # load another value into integer register
amoadd.w x2, x21, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x28fcc95b # load random value
la x19, scratch # base address
sw x22, 0(x19) # store in memory
li x22, 0x523f9817 # load another value into integer register
amoadd.w x11, x22, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x6f7a8d90 # load random value
la x11, scratch # base address
sw x23, 0(x11) # store in memory
li x23, 0xf5575f4f # load another value into integer register
amoadd.w x13, x23, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x2bc12869 # load random value
la x10, scratch # base address
sw x24, 0(x10) # store in memory
li x24, 0x22010218 # load another value into integer register
amoadd.w x17, x24, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x2782c0bf # load random value
la x1, scratch # base address
sw x25, 0(x1) # store in memory
li x25, 0x5431698b # load another value into integer register
amoadd.w x16, x25, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x06c06f33 # load random value
la x17, scratch # base address
sw x26, 0(x17) # store in memory
li x26, 0x4fb1c43c # load another value into integer register
amoadd.w x7, x26, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x5b8b631a # load random value
la x3, scratch # base address
sw x27, 0(x3) # store in memory
li x27, 0xc0d217b8 # load another value into integer register
amoadd.w x8, x27, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xa2327039 # load random value
la x12, scratch # base address
sw x28, 0(x12) # store in memory
li x28, 0xbbcacf48 # load another value into integer register
amoadd.w x8, x28, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xb94dbba3 # load random value
la x25, scratch # base address
sw x29, 0(x25) # store in memory
li x29, 0xa09da5fb # load another value into integer register
amoadd.w x26, x29, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x31a92506 # load random value
la x31, scratch # base address
sw x30, 0(x31) # store in memory
li x30, 0x8c0b9960 # load another value into integer register
amoadd.w x8, x30, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xc4274b37 # load random value
la x28, scratch # base address
sw x31, 0(x28) # store in memory
li x31, 0xf26898b7 # load another value into integer register
amoadd.w x6, x31, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x17, 0xdd2c5eab # load random value
la x1, scratch # base address
sw x17, 0(x1) # store in memory
li x17, 0x6eb1be6e # load another value into integer register
amoadd.w x0, x17, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x18, 0x4a478500 # load random value
la x16, scratch # base address
sw x18, 0(x16) # store in memory
li x18, 0xf6148c7b # load another value into integer register
amoadd.w x1, x18, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x28, 0x280ccf9c # load random value
la x29, scratch # base address
sw x28, 0(x29) # store in memory
li x28, 0x0f407e9d # load another value into integer register
amoadd.w x2, x28, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x27, 0x0cabd7c3 # load random value
la x19, scratch # base address
sw x27, 0(x19) # store in memory
li x27, 0x617a1e39 # load another value into integer register
amoadd.w x3, x27, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0xf5d4cf3b # load random value
la x27, scratch # base address
sw x7, 0(x27) # store in memory
li x7, 0x17060400 # load another value into integer register
amoadd.w x4, x7, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0xc7016f20 # load random value
la x12, scratch # base address
sw x18, 0(x12) # store in memory
li x18, 0xe6404ce2 # load another value into integer register
amoadd.w x5, x18, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x6591177a # load random value
la x15, scratch # base address
sw x24, 0(x15) # store in memory
li x24, 0x536b0516 # load another value into integer register
amoadd.w x6, x24, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0x439d6623 # load random value
la x13, scratch # base address
sw x8, 0(x13) # store in memory
li x8, 0x18385fbb # load another value into integer register
amoadd.w x7, x8, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x2, 0x8520b1e7 # load random value
la x7, scratch # base address
sw x2, 0(x7) # store in memory
li x2, 0x2ab1f9b9 # load another value into integer register
amoadd.w x8, x2, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x19, 0xee8b47d3 # load random value
la x25, scratch # base address
sw x19, 0(x25) # store in memory
li x19, 0x17e17874 # load another value into integer register
amoadd.w x9, x19, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x2, 0x6440e5bc # load random value
la x31, scratch # base address
sw x2, 0(x31) # store in memory
li x2, 0xb743f087 # load another value into integer register
amoadd.w x10, x2, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x2, 0x8b39beb3 # load random value
la x26, scratch # base address
sw x2, 0(x26) # store in memory
li x2, 0x36a14ccd # load another value into integer register
amoadd.w x11, x2, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x13, 0xeac0c2e4 # load random value
la x5, scratch # base address
sw x13, 0(x5) # store in memory
li x13, 0xbd0fda0b # load another value into integer register
amoadd.w x12, x13, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x5, 0x2045915a # load random value
la x11, scratch # base address
sw x5, 0(x11) # store in memory
li x5, 0x4819b599 # load another value into integer register
amoadd.w x13, x5, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x9, 0x2f566d90 # load random value
la x23, scratch # base address
sw x9, 0(x23) # store in memory
li x9, 0x30650d47 # load another value into integer register
amoadd.w x14, x9, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x11, 0x3cb61bfb # load random value
la x1, scratch # base address
sw x11, 0(x1) # store in memory
li x11, 0x7e7ad816 # load another value into integer register
amoadd.w x15, x11, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x23, 0xc81640fd # load random value
la x30, scratch # base address
sw x23, 0(x30) # store in memory
li x23, 0x34f831fe # load another value into integer register
amoadd.w x16, x23, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x12, 0xbefbf8fe # load random value
la x14, scratch # base address
sw x12, 0(x14) # store in memory
li x12, 0xe0dcf2d7 # load another value into integer register
amoadd.w x17, x12, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x22, 0x7469595d # load random value
la x6, scratch # base address
sw x22, 0(x6) # store in memory
li x22, 0xeedbb693 # load another value into integer register
amoadd.w x18, x22, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x8, 0x7bb16984 # load random value
la x11, scratch # base address
sw x8, 0(x11) # store in memory
li x8, 0x34030b35 # load another value into integer register
amoadd.w x19, x8, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x8, 0x079f11aa # load random value
la x25, scratch # base address
sw x8, 0(x25) # store in memory
li x8, 0xd6b51f7b # load another value into integer register
amoadd.w x20, x8, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x15, 0xaab6be6a # load random value
la x21, scratch # base address
sw x15, 0(x21) # store in memory
li x15, 0x37db38d1 # load another value into integer register
amoadd.w x21, x15, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x6, 0x862d9f05 # load random value
la x31, scratch # base address
sw x6, 0(x31) # store in memory
li x6, 0xfebf1f54 # load another value into integer register
amoadd.w x22, x6, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x18, 0x00d03d9d # load random value
la x11, scratch # base address
sw x18, 0(x11) # store in memory
li x18, 0x906d52e2 # load another value into integer register
amoadd.w x23, x18, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x5, 0x195fcdf7 # load random value
la x25, scratch # base address
sw x5, 0(x25) # store in memory
li x5, 0x3c74be9c # load another value into integer register
amoadd.w x24, x5, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x1, 0x88fcab8d # load random value
la x20, scratch # base address
sw x1, 0(x20) # store in memory
li x1, 0xee56bd12 # load another value into integer register
amoadd.w x25, x1, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x10, 0x82f0df23 # load random value
la x7, scratch # base address
sw x10, 0(x7) # store in memory
li x10, 0xbfe4ae35 # load another value into integer register
amoadd.w x26, x10, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x12, 0xf1befb08 # load random value
la x15, scratch # base address
sw x12, 0(x15) # store in memory
li x12, 0x8d23f78c # load another value into integer register
amoadd.w x27, x12, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x21, 0x8354b804 # load random value
la x30, scratch # base address
sw x21, 0(x30) # store in memory
li x21, 0x3e4825d1 # load another value into integer register
amoadd.w x28, x21, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x11, 0x80b1e62a # load random value
la x17, scratch # base address
sw x11, 0(x17) # store in memory
li x11, 0xcd753ce5 # load another value into integer register
amoadd.w x29, x11, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x31, 0x4268d1be # load random value
la x18, scratch # base address
sw x31, 0(x18) # store in memory
li x31, 0x8848361a # load another value into integer register
amoadd.w x30, x31, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x26, 0xdfea5a59 # load random value
la x3, scratch # base address
sw x26, 0(x3) # store in memory
li x26, 0x459094a5 # load another value into integer register
amoadd.w x31, x26, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x27, 0x34832f41 # load random value
la x2, scratch # base address
sw x27, 0(x2) # store in memory
li x27, 0x00000000 # load another value into integer register
amoadd.w x25, x27, (x2) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x23, 0xb8b0d324 # load random value
la x26, scratch # base address
sw x23, 0(x26) # store in memory
li x23, 0x00000001 # load another value into integer register
amoadd.w x14, x23, (x26) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x12, 0xd7a61ac2 # load random value
la x3, scratch # base address
sw x12, 0(x3) # store in memory
li x12, 0x00000002 # load another value into integer register
amoadd.w x9, x12, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x21, 0xde695e6b # load random value
la x2, scratch # base address
sw x21, 0(x2) # store in memory
li x21, 0x80000000 # load another value into integer register
amoadd.w x30, x21, (x2) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x23, 0x5ee756e9 # load random value
la x20, scratch # base address
sw x23, 0(x20) # store in memory
li x23, 0x80000001 # load another value into integer register
amoadd.w x7, x23, (x20) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x17, 0x597facd2 # load random value
la x26, scratch # base address
sw x17, 0(x26) # store in memory
li x17, 0x7fffffff # load another value into integer register
amoadd.w x13, x17, (x26) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x23, 0x511aa285 # load random value
la x21, scratch # base address
sw x23, 0(x21) # store in memory
li x23, 0x7ffffffe # load another value into integer register
amoadd.w x5, x23, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0xc8d19c40 # load random value
la x28, scratch # base address
sw x17, 0(x28) # store in memory
li x17, 0xffffffff # load another value into integer register
amoadd.w x26, x17, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0x82154b7c # load random value
la x10, scratch # base address
sw x23, 0(x10) # store in memory
li x23, 0xfffffffe # load another value into integer register
amoadd.w x17, x23, (x10) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x24, 0xa2b4c661 # load random value
la x3, scratch # base address
sw x24, 0(x3) # store in memory
li x24, 0x5bbc8872 # load another value into integer register
amoadd.w x11, x24, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x28, 0x8d8b8270 # load random value
la x24, scratch # base address
sw x28, 0(x24) # store in memory
li x28, 0xaaaaaaaa # load another value into integer register
amoadd.w x7, x28, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x22, 0x950cdaf0 # load random value
la x12, scratch # base address
sw x22, 0(x12) # store in memory
li x22, 0x55555555 # load another value into integer register
amoadd.w x9, x22, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xb03cc2eb # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amoadd.w x19, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xa72e8a15 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amoadd.w x28, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x33193360 # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amoadd.w x9, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1df70a5f # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amoadd.w x20, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbcb89d3c # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amoadd.w x7, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xde1d68bb # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amoadd.w x17, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x35c2535a # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amoadd.w x13, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x047e4dc2 # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amoadd.w x21, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xaca4ac17 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amoadd.w x28, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x9012e9c2 # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amoadd.w x17, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x51987bbe # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amoadd.w x22, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xdd818e1b # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amoadd.w x29, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xef72cbfa # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amoadd.w x23, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x175182ed # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amoadd.w x22, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x37bf4219 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amoadd.w x11, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xb1691e46 # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amoadd.w x7, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xe4162e9b # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amoadd.w x18, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x527cf375 # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amoadd.w x18, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x8a2dfd3c # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amoadd.w x15, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x8710e7d2 # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amoadd.w x29, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xbaf0da2e # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amoadd.w x19, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x42787551 # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amoadd.w x11, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x875bb2e2 # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amoadd.w x17, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x605880c5 # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amoadd.w x20, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xe019006e # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amoadd.w x22, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x82bdd6d2 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amoadd.w x10, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x4d3e2e2f # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amoadd.w x30, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xfcf33347 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amoadd.w x2, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x0a93ede6 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amoadd.w x18, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x86aab3cf # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amoadd.w x11, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xc1b8d550 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amoadd.w x30, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x6, 0xfbbab517 # load random value
la x1, scratch # base address
sw x6, 0(x1) # store in memory
li x6, 0x2ef906d7 # load another value into integer register
amoadd.w x1, x6, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x23, 0x2a75c979 # load random value
la x2, scratch # base address
sw x23, 0(x2) # store in memory
li x23, 0x1f19a385 # load another value into integer register
amoadd.w x2, x23, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x24, 0x8efb0231 # load random value
la x3, scratch # base address
sw x24, 0(x3) # store in memory
li x24, 0x911be1b7 # load another value into integer register
amoadd.w x3, x24, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x47c6b4e5 # load random value
la x4, scratch # base address
sw x17, 0(x4) # store in memory
li x17, 0x67ab0b04 # load another value into integer register
amoadd.w x4, x17, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x627b3ce5 # load random value
la x5, scratch # base address
sw x21, 0(x5) # store in memory
li x21, 0xd2d4d9ab # load another value into integer register
amoadd.w x5, x21, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x98887049 # load random value
la x6, scratch # base address
sw x10, 0(x6) # store in memory
li x10, 0x1e8ec716 # load another value into integer register
amoadd.w x6, x10, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0x64971d34 # load random value
la x7, scratch # base address
sw x8, 0(x7) # store in memory
li x8, 0x42ebbb39 # load another value into integer register
amoadd.w x7, x8, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x23, 0x8772c437 # load random value
la x8, scratch # base address
sw x23, 0(x8) # store in memory
li x23, 0xffb8a9fb # load another value into integer register
amoadd.w x8, x23, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x21, 0x3ca94a37 # load random value
la x9, scratch # base address
sw x21, 0(x9) # store in memory
li x21, 0x60b2676f # load another value into integer register
amoadd.w x9, x21, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x17, 0x0bbafb36 # load random value
la x10, scratch # base address
sw x17, 0(x10) # store in memory
li x17, 0x7f9d65dc # load another value into integer register
amoadd.w x10, x17, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x19, 0x945285bb # load random value
la x11, scratch # base address
sw x19, 0(x11) # store in memory
li x19, 0xb64e651b # load another value into integer register
amoadd.w x11, x19, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x22, 0x14075623 # load random value
la x12, scratch # base address
sw x22, 0(x12) # store in memory
li x22, 0x5a566e1c # load another value into integer register
amoadd.w x12, x22, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x20, 0x39686d95 # load random value
la x13, scratch # base address
sw x20, 0(x13) # store in memory
li x20, 0x3450addd # load another value into integer register
amoadd.w x13, x20, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x22, 0x96db52c6 # load random value
la x14, scratch # base address
sw x22, 0(x14) # store in memory
li x22, 0xe6db4f1f # load another value into integer register
amoadd.w x14, x22, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x16, 0x27977cd0 # load random value
la x15, scratch # base address
sw x16, 0(x15) # store in memory
li x16, 0x211772f8 # load another value into integer register
amoadd.w x15, x16, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x14, 0x8067d0e8 # load random value
la x16, scratch # base address
sw x14, 0(x16) # store in memory
li x14, 0x7d1b993f # load another value into integer register
amoadd.w x16, x14, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x16, 0x56f122c2 # load random value
la x17, scratch # base address
sw x16, 0(x17) # store in memory
li x16, 0x154b71e5 # load another value into integer register
amoadd.w x17, x16, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x5, 0xc900b3d4 # load random value
la x18, scratch # base address
sw x5, 0(x18) # store in memory
li x5, 0x0159cb93 # load another value into integer register
amoadd.w x18, x5, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x6, 0xb1559cb3 # load random value
la x19, scratch # base address
sw x6, 0(x19) # store in memory
li x6, 0xce217009 # load another value into integer register
amoadd.w x19, x6, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x2, 0xca82235e # load random value
la x20, scratch # base address
sw x2, 0(x20) # store in memory
li x2, 0x2fed6a5d # load another value into integer register
amoadd.w x20, x2, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x3, 0xc05604ea # load random value
la x21, scratch # base address
sw x3, 0(x21) # store in memory
li x3, 0xca53fe37 # load another value into integer register
amoadd.w x21, x3, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x5, 0xdd253022 # load random value
la x22, scratch # base address
sw x5, 0(x22) # store in memory
li x5, 0xa8371de0 # load another value into integer register
amoadd.w x22, x5, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x2, 0x3fea0172 # load random value
la x23, scratch # base address
sw x2, 0(x23) # store in memory
li x2, 0x2d46b683 # load another value into integer register
amoadd.w x23, x2, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x10, 0x038afca2 # load random value
la x24, scratch # base address
sw x10, 0(x24) # store in memory
li x10, 0x64147288 # load another value into integer register
amoadd.w x24, x10, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x24, 0x1981ee33 # load random value
la x25, scratch # base address
sw x24, 0(x25) # store in memory
li x24, 0x1f404cf4 # load another value into integer register
amoadd.w x25, x24, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x16, 0x1244c34d # load random value
la x26, scratch # base address
sw x16, 0(x26) # store in memory
li x16, 0x1ee051e0 # load another value into integer register
amoadd.w x26, x16, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x17, 0x1639686c # load random value
la x27, scratch # base address
sw x17, 0(x27) # store in memory
li x17, 0x6e28276f # load another value into integer register
amoadd.w x27, x17, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x19, 0x597714e2 # load random value
la x28, scratch # base address
sw x19, 0(x28) # store in memory
li x19, 0x7745a614 # load another value into integer register
amoadd.w x28, x19, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x5, 0x081a9dd5 # load random value
la x29, scratch # base address
sw x5, 0(x29) # store in memory
li x5, 0xb07e9c04 # load another value into integer register
amoadd.w x29, x5, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x18, 0x22229db8 # load random value
la x30, scratch # base address
sw x18, 0(x30) # store in memory
li x18, 0x2a88851c # load another value into integer register
amoadd.w x30, x18, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x8, 0x39a00168 # load random value
la x31, scratch # base address
sw x8, 0(x31) # store in memory
li x8, 0x659aefb9 # load another value into integer register
amoadd.w x31, x8, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x013ea40f # load random value
la x13, scratch # base address
sw x0, 0(x13) # store in memory
li x0, 0xd0000b37 # load another value into integer register
amoadd.w x0, x0, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xc03eb617 # load random value
la x21, scratch # base address
sw x1, 0(x21) # store in memory
li x1, 0x117f2710 # load another value into integer register
amoadd.w x1, x1, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x912e9380 # load random value
la x5, scratch # base address
sw x2, 0(x5) # store in memory
li x2, 0xe0a36694 # load another value into integer register
amoadd.w x2, x2, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x9ab5e3b1 # load random value
la x19, scratch # base address
sw x3, 0(x19) # store in memory
li x3, 0xc7da8f9e # load another value into integer register
amoadd.w x3, x3, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x63a057cd # load random value
la x24, scratch # base address
sw x4, 0(x24) # store in memory
li x4, 0xddbf9bd9 # load another value into integer register
amoadd.w x4, x4, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3e75fbee # load random value
la x27, scratch # base address
sw x5, 0(x27) # store in memory
li x5, 0xf747f381 # load another value into integer register
amoadd.w x5, x5, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdc1d5780 # load random value
la x3, scratch # base address
sw x6, 0(x3) # store in memory
li x6, 0xbf3fc692 # load another value into integer register
amoadd.w x6, x6, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x246dacc0 # load random value
la x3, scratch # base address
sw x7, 0(x3) # store in memory
li x7, 0xc2c73583 # load another value into integer register
amoadd.w x7, x7, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x661f3e44 # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amoadd.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xe4b5906d # load random value
la x2, scratch # base address
sw x9, 0(x2) # store in memory
li x9, 0x84b5625e # load another value into integer register
amoadd.w x9, x9, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xb1640405 # load random value
la x16, scratch # base address
sw x10, 0(x16) # store in memory
li x10, 0xdf4ad75f # load another value into integer register
amoadd.w x10, x10, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x9643cab3 # load random value
la x17, scratch # base address
sw x11, 0(x17) # store in memory
li x11, 0x30747c2d # load another value into integer register
amoadd.w x11, x11, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x117ada76 # load random value
la x14, scratch # base address
sw x12, 0(x14) # store in memory
li x12, 0x11089595 # load another value into integer register
amoadd.w x12, x12, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x37cf866b # load random value
la x6, scratch # base address
sw x13, 0(x6) # store in memory
li x13, 0x2ee626d5 # load another value into integer register
amoadd.w x13, x13, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x481bbd27 # load random value
la x1, scratch # base address
sw x14, 0(x1) # store in memory
li x14, 0xb2871259 # load another value into integer register
amoadd.w x14, x14, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x460e803b # load random value
la x23, scratch # base address
sw x15, 0(x23) # store in memory
li x15, 0x55c592ea # load another value into integer register
amoadd.w x15, x15, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x1a73c7ae # load random value
la x6, scratch # base address
sw x16, 0(x6) # store in memory
li x16, 0x77e4c3da # load another value into integer register
amoadd.w x16, x16, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0xec8619c4 # load random value
la x8, scratch # base address
sw x17, 0(x8) # store in memory
li x17, 0x25560b78 # load another value into integer register
amoadd.w x17, x17, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0xdbbabd51 # load random value
la x24, scratch # base address
sw x18, 0(x24) # store in memory
li x18, 0x2c4a1c9b # load another value into integer register
amoadd.w x18, x18, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x0175b57c # load random value
la x2, scratch # base address
sw x19, 0(x2) # store in memory
li x19, 0xe8f4e419 # load another value into integer register
amoadd.w x19, x19, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x76c29373 # load random value
la x19, scratch # base address
sw x20, 0(x19) # store in memory
li x20, 0x6e6f7c31 # load another value into integer register
amoadd.w x20, x20, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xeeaaeff4 # load random value
la x12, scratch # base address
sw x21, 0(x12) # store in memory
li x21, 0x10542d76 # load another value into integer register
amoadd.w x21, x21, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x290167f7 # load random value
la x31, scratch # base address
sw x22, 0(x31) # store in memory
li x22, 0x25cd46a3 # load another value into integer register
amoadd.w x22, x22, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xfe5d9908 # load random value
la x18, scratch # base address
sw x23, 0(x18) # store in memory
li x23, 0xaf61059e # load another value into integer register
amoadd.w x23, x23, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x8f520281 # load random value
la x14, scratch # base address
sw x24, 0(x14) # store in memory
li x24, 0x9d1f30cd # load another value into integer register
amoadd.w x24, x24, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x0ed51d40 # load random value
la x17, scratch # base address
sw x25, 0(x17) # store in memory
li x25, 0x7ac00c53 # load another value into integer register
amoadd.w x25, x25, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x7d4db005 # load random value
la x1, scratch # base address
sw x26, 0(x1) # store in memory
li x26, 0xc826d419 # load another value into integer register
amoadd.w x26, x26, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x9f5f5519 # load random value
la x12, scratch # base address
sw x27, 0(x12) # store in memory
li x27, 0x04866e9f # load another value into integer register
amoadd.w x27, x27, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x86b102eb # load random value
la x14, scratch # base address
sw x28, 0(x14) # store in memory
li x28, 0x8a0b8b80 # load another value into integer register
amoadd.w x28, x28, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x93e90c54 # load random value
la x21, scratch # base address
sw x29, 0(x21) # store in memory
li x29, 0xedc45e2a # load another value into integer register
amoadd.w x29, x29, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x67cdd194 # load random value
la x8, scratch # base address
sw x30, 0(x8) # store in memory
li x30, 0x496d1183 # load another value into integer register
amoadd.w x30, x30, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x58511bb2 # load random value
la x12, scratch # base address
sw x31, 0(x12) # store in memory
li x31, 0xee079759 # load another value into integer register
amoadd.w x31, x31, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xf5e9e7bf # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amoadd.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xa89e719e # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amoadd.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x6054eaa5 # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amoadd.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3f989d41 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amoadd.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcd725c1b # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amoadd.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5aceae43 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amoadd.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x287458f4 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amoadd.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x94d6643a # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amoadd.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x4d42b5b4 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amoadd.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x007ab3cb # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amoadd.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x5a72ad56 # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amoadd.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xee9e79bf # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amoadd.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xe3ec5e40 # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amoadd.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xb3bbe495 # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amoadd.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xfcdefc2d # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amoadd.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x69b1e3d0 # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amoadd.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe5f7925d # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amoadd.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xcaec76d9 # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amoadd.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x2ca69334 # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amoadd.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xc8f717b8 # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amoadd.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x0ba49244 # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amoadd.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x0e5db3ea # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amoadd.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x34f4e288 # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amoadd.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x5ee2b59e # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amoadd.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x75a779e8 # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amoadd.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xb1652227 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amoadd.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x888574aa # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amoadd.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x933a2543 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amoadd.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xd1035b2e # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amoadd.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x7030a62f # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amoadd.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x26c2f93d # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amoadd.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x11, scratch
add x22, x6, x21 # perform first operation
amoadd.w x13, x18, (x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x11, scratch
add x12, x22, x7 # perform first operation
amoadd.w x5, x25, (x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x23, scratch
add x18, x15, x27 # perform first operation
amoadd.w x20, x3, (x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x1, scratch
add x6, x6, x0 # perform first operation
amoadd.w x26, x6, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x22, scratch
add x22, x22, x0 # perform first operation
amoadd.w x15, x16, (x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x8, scratch
add x5, x5, x0 # perform first operation
amoadd.w x5, x20, (x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x19, scratch
add x12, x23, x15 # perform first operation
amoadd.w x12, x22, (x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x23, scratch
add x13, x18, x12 # perform first operation
amoadd.w x13, x3, (x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x16, scratch
add x28, x29, x9 # perform first operation
amoadd.w x28, x21, (x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x19, scratch
add x30, x12, x6 # perform first operation
amoadd.w x12, x31, (x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x22, scratch
add x12, x7, x30 # perform first operation
amoadd.w x30, x16, (x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x18, scratch
add x19, x15, x31 # perform first operation
amoadd.w x25, x17, (x18) # perform second (triggering) operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-amoxor.w.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x18, 0xdfcdf79d # load random value
la x1, scratch # base address
sw x18, 0(x1) # store in memory
li x18, 0xcc34fbc8 # load another value into integer register
amoxor.w x19, x18, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x16, 0x52cef497 # load random value
la x2, scratch # base address
sw x16, 0(x2) # store in memory
li x16, 0x6a75cc6c # load another value into integer register
amoxor.w x27, x16, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x12, 0xe3c440e7 # load random value
la x3, scratch # base address
sw x12, 0(x3) # store in memory
li x12, 0xd9940560 # load another value into integer register
amoxor.w x13, x12, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0xc374cd33 # load random value
la x4, scratch # base address
sw x29, 0(x4) # store in memory
li x29, 0x7841ad59 # load another value into integer register
amoxor.w x12, x29, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0xbf55202f # load random value
la x5, scratch # base address
sw x10, 0(x5) # store in memory
li x10, 0x670669f8 # load another value into integer register
amoxor.w x7, x10, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x60e86c44 # load random value
la x6, scratch # base address
sw x10, 0(x6) # store in memory
li x10, 0x6d933b60 # load another value into integer register
amoxor.w x24, x10, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x210f52ef # load random value
la x7, scratch # base address
sw x17, 0(x7) # store in memory
li x17, 0x60c35ac0 # load another value into integer register
amoxor.w x1, x17, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x25, 0x6a9bbe14 # load random value
la x8, scratch # base address
sw x25, 0(x8) # store in memory
li x25, 0xb772f38f # load another value into integer register
amoxor.w x18, x25, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x8, 0x54af6319 # load random value
la x9, scratch # base address
sw x8, 0(x9) # store in memory
li x8, 0xc54f81ba # load another value into integer register
amoxor.w x16, x8, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x30, 0xf010d71d # load random value
la x10, scratch # base address
sw x30, 0(x10) # store in memory
li x30, 0x11b60bc9 # load another value into integer register
amoxor.w x12, x30, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x29, 0xa9f106c3 # load random value
la x11, scratch # base address
sw x29, 0(x11) # store in memory
li x29, 0x0f22f6ba # load another value into integer register
amoxor.w x13, x29, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x18, 0xb9bde08e # load random value
la x12, scratch # base address
sw x18, 0(x12) # store in memory
li x18, 0x634d6e18 # load another value into integer register
amoxor.w x17, x18, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x21, 0x6a0b509b # load random value
la x13, scratch # base address
sw x21, 0(x13) # store in memory
li x21, 0xa887ca30 # load another value into integer register
amoxor.w x8, x21, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x12, 0x47c48e41 # load random value
la x14, scratch # base address
sw x12, 0(x14) # store in memory
li x12, 0x0f537f4a # load another value into integer register
amoxor.w x18, x12, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x29, 0x3c8c156c # load random value
la x15, scratch # base address
sw x29, 0(x15) # store in memory
li x29, 0x26a59731 # load another value into integer register
amoxor.w x20, x29, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x14, 0x294e442e # load random value
la x16, scratch # base address
sw x14, 0(x16) # store in memory
li x14, 0x11c17203 # load another value into integer register
amoxor.w x2, x14, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x20, 0x4b7c4864 # load random value
la x17, scratch # base address
sw x20, 0(x17) # store in memory
li x20, 0x91ccf399 # load another value into integer register
amoxor.w x13, x20, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x23, 0x7c9e0788 # load random value
la x18, scratch # base address
sw x23, 0(x18) # store in memory
li x23, 0xa6077268 # load another value into integer register
amoxor.w x2, x23, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x15, 0x59c66d5d # load random value
la x19, scratch # base address
sw x15, 0(x19) # store in memory
li x15, 0x52ec6f72 # load another value into integer register
amoxor.w x7, x15, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x24, 0x4bfad153 # load random value
la x20, scratch # base address
sw x24, 0(x20) # store in memory
li x24, 0xab55dfa4 # load another value into integer register
amoxor.w x21, x24, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x16, 0x10ef1a92 # load random value
la x21, scratch # base address
sw x16, 0(x21) # store in memory
li x16, 0x59d6d8f6 # load another value into integer register
amoxor.w x12, x16, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x14, 0x888772f4 # load random value
la x22, scratch # base address
sw x14, 0(x22) # store in memory
li x14, 0x4b3304d2 # load another value into integer register
amoxor.w x11, x14, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x1, 0x80d01e61 # load random value
la x23, scratch # base address
sw x1, 0(x23) # store in memory
li x1, 0x2d77cd54 # load another value into integer register
amoxor.w x10, x1, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x23, 0xf60079bf # load random value
la x24, scratch # base address
sw x23, 0(x24) # store in memory
li x23, 0x1ad387c6 # load another value into integer register
amoxor.w x14, x23, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x1, 0x705c767d # load random value
la x25, scratch # base address
sw x1, 0(x25) # store in memory
li x1, 0xde8bf72b # load another value into integer register
amoxor.w x19, x1, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x14, 0xa55f5adf # load random value
la x26, scratch # base address
sw x14, 0(x26) # store in memory
li x14, 0x3a3711b6 # load another value into integer register
amoxor.w x3, x14, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x12, 0x7ebd6200 # load random value
la x27, scratch # base address
sw x12, 0(x27) # store in memory
li x12, 0xe609accd # load another value into integer register
amoxor.w x3, x12, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x13, 0x6a2095c2 # load random value
la x28, scratch # base address
sw x13, 0(x28) # store in memory
li x13, 0x95d9725a # load another value into integer register
amoxor.w x24, x13, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x1, 0xcce7d08e # load random value
la x29, scratch # base address
sw x1, 0(x29) # store in memory
li x1, 0xe5e3e384 # load another value into integer register
amoxor.w x3, x1, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x26, 0xe86ca843 # load random value
la x30, scratch # base address
sw x26, 0(x30) # store in memory
li x26, 0x350b98c0 # load another value into integer register
amoxor.w x10, x26, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x8, 0x0db4a9e6 # load random value
la x31, scratch # base address
sw x8, 0(x31) # store in memory
li x8, 0x6f3f28c8 # load another value into integer register
amoxor.w x22, x8, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xab3af6d1 # load random value
la x17, scratch # base address
sw x0, 0(x17) # store in memory
li x0, 0xce73c2a8 # load another value into integer register
amoxor.w x14, x0, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x204b467c # load random value
la x8, scratch # base address
sw x1, 0(x8) # store in memory
li x1, 0xbf440b39 # load another value into integer register
amoxor.w x25, x1, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xd96c54c0 # load random value
la x10, scratch # base address
sw x2, 0(x10) # store in memory
li x2, 0x7f0a7715 # load another value into integer register
amoxor.w x14, x2, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x944c0f58 # load random value
la x10, scratch # base address
sw x3, 0(x10) # store in memory
li x3, 0x31cbdeec # load another value into integer register
amoxor.w x14, x3, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf410374c # load random value
la x27, scratch # base address
sw x4, 0(x27) # store in memory
li x4, 0xd7fb5b17 # load another value into integer register
amoxor.w x10, x4, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd855468d # load random value
la x29, scratch # base address
sw x5, 0(x29) # store in memory
li x5, 0xd745acc7 # load another value into integer register
amoxor.w x25, x5, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5f5f1ad9 # load random value
la x8, scratch # base address
sw x6, 0(x8) # store in memory
li x6, 0xcbce1f4b # load another value into integer register
amoxor.w x19, x6, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5429eec5 # load random value
la x12, scratch # base address
sw x7, 0(x12) # store in memory
li x7, 0x0611ff89 # load another value into integer register
amoxor.w x19, x7, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xe627468a # load random value
la x2, scratch # base address
sw x8, 0(x2) # store in memory
li x8, 0x329f9644 # load another value into integer register
amoxor.w x1, x8, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x22d7bd99 # load random value
la x16, scratch # base address
sw x9, 0(x16) # store in memory
li x9, 0x276f62dc # load another value into integer register
amoxor.w x20, x9, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x1eaf6a32 # load random value
la x22, scratch # base address
sw x10, 0(x22) # store in memory
li x10, 0x8b987670 # load another value into integer register
amoxor.w x27, x10, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x793d2c26 # load random value
la x23, scratch # base address
sw x11, 0(x23) # store in memory
li x11, 0x7ec06c6e # load another value into integer register
amoxor.w x13, x11, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x3de6118e # load random value
la x11, scratch # base address
sw x12, 0(x11) # store in memory
li x12, 0xa8c0bd03 # load another value into integer register
amoxor.w x16, x12, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xe7806a12 # load random value
la x10, scratch # base address
sw x13, 0(x10) # store in memory
li x13, 0x7e69f656 # load another value into integer register
amoxor.w x11, x13, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xfee7587f # load random value
la x29, scratch # base address
sw x14, 0(x29) # store in memory
li x14, 0x1af80f8e # load another value into integer register
amoxor.w x18, x14, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x36948dc5 # load random value
la x10, scratch # base address
sw x15, 0(x10) # store in memory
li x15, 0x2a362058 # load another value into integer register
amoxor.w x19, x15, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xe90bf527 # load random value
la x18, scratch # base address
sw x16, 0(x18) # store in memory
li x16, 0xe3251a6e # load another value into integer register
amoxor.w x31, x16, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x327654ea # load random value
la x19, scratch # base address
sw x17, 0(x19) # store in memory
li x17, 0x2a748d3e # load another value into integer register
amoxor.w x30, x17, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x69e85eea # load random value
la x30, scratch # base address
sw x18, 0(x30) # store in memory
li x18, 0x3c9ce5aa # load another value into integer register
amoxor.w x29, x18, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x77dc7fba # load random value
la x10, scratch # base address
sw x19, 0(x10) # store in memory
li x19, 0x4a2fa4e7 # load another value into integer register
amoxor.w x18, x19, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x2258d8e4 # load random value
la x2, scratch # base address
sw x20, 0(x2) # store in memory
li x20, 0xb9abb6ba # load another value into integer register
amoxor.w x23, x20, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x32d7830e # load random value
la x9, scratch # base address
sw x21, 0(x9) # store in memory
li x21, 0x7aa53230 # load another value into integer register
amoxor.w x27, x21, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x59e99e8a # load random value
la x17, scratch # base address
sw x22, 0(x17) # store in memory
li x22, 0x9dc6d17b # load another value into integer register
amoxor.w x25, x22, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x8553e2e1 # load random value
la x11, scratch # base address
sw x23, 0(x11) # store in memory
li x23, 0xb8b56afa # load another value into integer register
amoxor.w x7, x23, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xc47ebde9 # load random value
la x25, scratch # base address
sw x24, 0(x25) # store in memory
li x24, 0x53cd3257 # load another value into integer register
amoxor.w x7, x24, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x134892f1 # load random value
la x14, scratch # base address
sw x25, 0(x14) # store in memory
li x25, 0x04f3c524 # load another value into integer register
amoxor.w x29, x25, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0xfa368b9e # load random value
la x22, scratch # base address
sw x26, 0(x22) # store in memory
li x26, 0x91281724 # load another value into integer register
amoxor.w x9, x26, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x79590961 # load random value
la x22, scratch # base address
sw x27, 0(x22) # store in memory
li x27, 0xa540a519 # load another value into integer register
amoxor.w x11, x27, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x0be313f4 # load random value
la x3, scratch # base address
sw x28, 0(x3) # store in memory
li x28, 0x7017eb16 # load another value into integer register
amoxor.w x2, x28, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xe51bc737 # load random value
la x21, scratch # base address
sw x29, 0(x21) # store in memory
li x29, 0x652215cf # load another value into integer register
amoxor.w x7, x29, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x266302ea # load random value
la x17, scratch # base address
sw x30, 0(x17) # store in memory
li x30, 0xb35b1a8d # load another value into integer register
amoxor.w x18, x30, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x4095a91b # load random value
la x22, scratch # base address
sw x31, 0(x22) # store in memory
li x31, 0xe1787811 # load another value into integer register
amoxor.w x15, x31, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x9, 0x0b31b480 # load random value
la x24, scratch # base address
sw x9, 0(x24) # store in memory
li x9, 0x4a733ea4 # load another value into integer register
amoxor.w x0, x9, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x23, 0x5951031c # load random value
la x6, scratch # base address
sw x23, 0(x6) # store in memory
li x23, 0x9f0eaa90 # load another value into integer register
amoxor.w x1, x23, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x24, 0xba6965fb # load random value
la x15, scratch # base address
sw x24, 0(x15) # store in memory
li x24, 0x92c993d2 # load another value into integer register
amoxor.w x2, x24, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x9d862d17 # load random value
la x14, scratch # base address
sw x3, 0(x14) # store in memory
li x3, 0x6a7e99d2 # load another value into integer register
amoxor.w x3, x3, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x05ff1853 # load random value
la x1, scratch # base address
sw x27, 0(x1) # store in memory
li x27, 0xe2f748f0 # load another value into integer register
amoxor.w x4, x27, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x30f4fe0a # load random value
la x17, scratch # base address
sw x9, 0(x17) # store in memory
li x9, 0xe6cc7264 # load another value into integer register
amoxor.w x5, x9, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0xc3fa5d3d # load random value
la x19, scratch # base address
sw x28, 0(x19) # store in memory
li x28, 0x7648e281 # load another value into integer register
amoxor.w x6, x28, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x9e9194d3 # load random value
la x17, scratch # base address
sw x27, 0(x17) # store in memory
li x27, 0x97ade9b3 # load another value into integer register
amoxor.w x7, x27, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x16, 0x3520c46d # load random value
la x8, scratch # base address
sw x16, 0(x8) # store in memory
li x16, 0xc693d00e # load another value into integer register
amoxor.w x8, x16, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x27, 0x33a74815 # load random value
la x7, scratch # base address
sw x27, 0(x7) # store in memory
li x27, 0xf9a9a05e # load another value into integer register
amoxor.w x9, x27, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x25, 0xeba2a0f8 # load random value
la x2, scratch # base address
sw x25, 0(x2) # store in memory
li x25, 0x78d5dd6e # load another value into integer register
amoxor.w x10, x25, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x26, 0x169464b6 # load random value
la x24, scratch # base address
sw x26, 0(x24) # store in memory
li x26, 0x3fe91d35 # load another value into integer register
amoxor.w x11, x26, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x9, 0x4d7ab988 # load random value
la x1, scratch # base address
sw x9, 0(x1) # store in memory
li x9, 0x0737e7a7 # load another value into integer register
amoxor.w x12, x9, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x16, 0x7ad30c24 # load random value
la x15, scratch # base address
sw x16, 0(x15) # store in memory
li x16, 0x850f358a # load another value into integer register
amoxor.w x13, x16, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x18, 0xaf403b25 # load random value
la x7, scratch # base address
sw x18, 0(x7) # store in memory
li x18, 0xacc0e11f # load another value into integer register
amoxor.w x14, x18, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x27, 0x841e0e45 # load random value
la x28, scratch # base address
sw x27, 0(x28) # store in memory
li x27, 0x425ae3aa # load another value into integer register
amoxor.w x15, x27, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x5, 0xa1a5dbf4 # load random value
la x14, scratch # base address
sw x5, 0(x14) # store in memory
li x5, 0x447c86e3 # load another value into integer register
amoxor.w x16, x5, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x16, 0x7bc78df6 # load random value
la x3, scratch # base address
sw x16, 0(x3) # store in memory
li x16, 0x6a769473 # load another value into integer register
amoxor.w x17, x16, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x11, 0xd1355551 # load random value
la x30, scratch # base address
sw x11, 0(x30) # store in memory
li x11, 0x52aaf86d # load another value into integer register
amoxor.w x18, x11, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x6, 0xbfa41597 # load random value
la x29, scratch # base address
sw x6, 0(x29) # store in memory
li x6, 0x1732cfba # load another value into integer register
amoxor.w x19, x6, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x5, 0x5103e370 # load random value
la x7, scratch # base address
sw x5, 0(x7) # store in memory
li x5, 0x29f7faf5 # load another value into integer register
amoxor.w x20, x5, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x8, 0x12919366 # load random value
la x28, scratch # base address
sw x8, 0(x28) # store in memory
li x8, 0x4827c6a8 # load another value into integer register
amoxor.w x21, x8, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x18, 0x0fbee6be # load random value
la x19, scratch # base address
sw x18, 0(x19) # store in memory
li x18, 0x812bd08a # load another value into integer register
amoxor.w x22, x18, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x2, 0x8cfd9402 # load random value
la x26, scratch # base address
sw x2, 0(x26) # store in memory
li x2, 0x2788d6fc # load another value into integer register
amoxor.w x23, x2, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x13, 0xd62d3d72 # load random value
la x2, scratch # base address
sw x13, 0(x2) # store in memory
li x13, 0x0cedc738 # load another value into integer register
amoxor.w x24, x13, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x30, 0xf7e41505 # load random value
la x18, scratch # base address
sw x30, 0(x18) # store in memory
li x30, 0xacc28543 # load another value into integer register
amoxor.w x25, x30, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x24, 0x093d690b # load random value
la x2, scratch # base address
sw x24, 0(x2) # store in memory
li x24, 0x642471aa # load another value into integer register
amoxor.w x26, x24, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x18, 0x20d6f458 # load random value
la x15, scratch # base address
sw x18, 0(x15) # store in memory
li x18, 0x3391f1a5 # load another value into integer register
amoxor.w x27, x18, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x10, 0x9d2dc827 # load random value
la x6, scratch # base address
sw x10, 0(x6) # store in memory
li x10, 0x77bd1c14 # load another value into integer register
amoxor.w x28, x10, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x2, 0xacc884a2 # load random value
la x7, scratch # base address
sw x2, 0(x7) # store in memory
li x2, 0x79832b47 # load another value into integer register
amoxor.w x29, x2, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x28, 0xc3d44194 # load random value
la x12, scratch # base address
sw x28, 0(x12) # store in memory
li x28, 0x74256833 # load another value into integer register
amoxor.w x30, x28, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x24, 0xeffb0c4c # load random value
la x31, scratch # base address
sw x24, 0(x31) # store in memory
li x24, 0xd98dc638 # load another value into integer register
amoxor.w x31, x24, (x31) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0x3486816e # load random value
la x28, scratch # base address
sw x20, 0(x28) # store in memory
li x20, 0x00000000 # load another value into integer register
amoxor.w x22, x20, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x26, 0xf69a472c # load random value
la x19, scratch # base address
sw x26, 0(x19) # store in memory
li x26, 0x00000001 # load another value into integer register
amoxor.w x6, x26, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x31, 0x6b3c62a2 # load random value
la x27, scratch # base address
sw x31, 0(x27) # store in memory
li x31, 0x00000002 # load another value into integer register
amoxor.w x7, x31, (x27) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x14, 0x30288256 # load random value
la x7, scratch # base address
sw x14, 0(x7) # store in memory
li x14, 0x80000000 # load another value into integer register
amoxor.w x3, x14, (x7) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x26, 0x88952497 # load random value
la x19, scratch # base address
sw x26, 0(x19) # store in memory
li x26, 0x80000001 # load another value into integer register
amoxor.w x5, x26, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x28, 0x9e927f32 # load random value
la x19, scratch # base address
sw x28, 0(x19) # store in memory
li x28, 0x7fffffff # load another value into integer register
amoxor.w x13, x28, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x20, 0x3cbdb07c # load random value
la x9, scratch # base address
sw x20, 0(x9) # store in memory
li x20, 0x7ffffffe # load another value into integer register
amoxor.w x14, x20, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x22, 0x5675a798 # load random value
la x5, scratch # base address
sw x22, 0(x5) # store in memory
li x22, 0xffffffff # load another value into integer register
amoxor.w x29, x22, (x5) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x20, 0xdb8c97ef # load random value
la x19, scratch # base address
sw x20, 0(x19) # store in memory
li x20, 0xfffffffe # load another value into integer register
amoxor.w x29, x20, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x30, 0x920b1b7f # load random value
la x6, scratch # base address
sw x30, 0(x6) # store in memory
li x30, 0x5bbc8872 # load another value into integer register
amoxor.w x26, x30, (x6) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x25, 0xf89018e2 # load random value
la x19, scratch # base address
sw x25, 0(x19) # store in memory
li x25, 0xaaaaaaaa # load another value into integer register
amoxor.w x22, x25, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x26, 0xf1eafcb2 # load random value
la x20, scratch # base address
sw x26, 0(x20) # store in memory
li x26, 0x55555555 # load another value into integer register
amoxor.w x14, x26, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x51f115af # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amoxor.w x12, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xdd4ab5fe # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amoxor.w x5, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x8453c309 # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amoxor.w x19, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xbf8da054 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amoxor.w x10, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf4e515c5 # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amoxor.w x24, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x277b523d # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amoxor.w x18, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb39d7ffb # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amoxor.w x30, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xacf9407f # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amoxor.w x22, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xfdb1715e # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amoxor.w x15, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x117dc8c7 # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amoxor.w x14, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xe6177815 # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amoxor.w x15, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x51b7ec38 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amoxor.w x31, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x3f70f5a0 # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amoxor.w x19, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x04795f87 # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amoxor.w x17, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xc254ee8c # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amoxor.w x5, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x18f5561e # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amoxor.w x21, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x403a58ea # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amoxor.w x8, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x654ecda2 # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amoxor.w x2, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x307f6655 # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amoxor.w x8, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xc5ca09aa # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amoxor.w x13, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x0c915d1d # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amoxor.w x30, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x9552df64 # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amoxor.w x19, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x3aac21a5 # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amoxor.w x30, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xca1a75b7 # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amoxor.w x23, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xb4697a62 # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amoxor.w x23, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xb39f7fa7 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amoxor.w x1, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x3ef93495 # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amoxor.w x31, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xb8858c44 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amoxor.w x2, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xa1cabba1 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amoxor.w x3, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x59aa4265 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amoxor.w x24, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x3663b7d9 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amoxor.w x1, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x26, 0x890537b3 # load random value
la x1, scratch # base address
sw x26, 0(x1) # store in memory
li x26, 0x570f04a8 # load another value into integer register
amoxor.w x1, x26, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x25, 0x5406a6b8 # load random value
la x2, scratch # base address
sw x25, 0(x2) # store in memory
li x25, 0x60296ebf # load another value into integer register
amoxor.w x2, x25, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x7, 0x7dc4bd4c # load random value
la x3, scratch # base address
sw x7, 0(x3) # store in memory
li x7, 0xe9d53f6a # load another value into integer register
amoxor.w x3, x7, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x43c6acdd # load random value
la x4, scratch # base address
sw x17, 0(x4) # store in memory
li x17, 0xe7d593e8 # load another value into integer register
amoxor.w x4, x17, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0xd32f2a70 # load random value
la x5, scratch # base address
sw x10, 0(x5) # store in memory
li x10, 0x7daf31d5 # load another value into integer register
amoxor.w x5, x10, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0xd089b2b8 # load random value
la x6, scratch # base address
sw x14, 0(x6) # store in memory
li x14, 0x73543162 # load another value into integer register
amoxor.w x6, x14, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x6b696211 # load random value
la x7, scratch # base address
sw x29, 0(x7) # store in memory
li x29, 0xfeafb5f0 # load another value into integer register
amoxor.w x7, x29, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x9, 0x1bd31478 # load random value
la x8, scratch # base address
sw x9, 0(x8) # store in memory
li x9, 0xb9f42090 # load another value into integer register
amoxor.w x8, x9, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x2, 0x10cba9be # load random value
la x9, scratch # base address
sw x2, 0(x9) # store in memory
li x2, 0x72ebbc6b # load another value into integer register
amoxor.w x9, x2, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xf34c8031 # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amoxor.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x15, 0xf2152662 # load random value
la x11, scratch # base address
sw x15, 0(x11) # store in memory
li x15, 0x8a673674 # load another value into integer register
amoxor.w x11, x15, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x9, 0x44b8505d # load random value
la x12, scratch # base address
sw x9, 0(x12) # store in memory
li x9, 0xc92b40d2 # load another value into integer register
amoxor.w x12, x9, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x23, 0x039c1772 # load random value
la x13, scratch # base address
sw x23, 0(x13) # store in memory
li x23, 0xfcc341c7 # load another value into integer register
amoxor.w x13, x23, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x20, 0x984a4fba # load random value
la x14, scratch # base address
sw x20, 0(x14) # store in memory
li x20, 0x9a6869f2 # load another value into integer register
amoxor.w x14, x20, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x16, 0x55f85e13 # load random value
la x15, scratch # base address
sw x16, 0(x15) # store in memory
li x16, 0x7f816898 # load another value into integer register
amoxor.w x15, x16, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x10, 0x30972bab # load random value
la x16, scratch # base address
sw x10, 0(x16) # store in memory
li x10, 0xfffe9f62 # load another value into integer register
amoxor.w x16, x10, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x26, 0x9966750c # load random value
la x17, scratch # base address
sw x26, 0(x17) # store in memory
li x26, 0x40ac5870 # load another value into integer register
amoxor.w x17, x26, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x10, 0xfde8b572 # load random value
la x18, scratch # base address
sw x10, 0(x18) # store in memory
li x10, 0x3c236cbe # load another value into integer register
amoxor.w x18, x10, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x5, 0xfe30c529 # load random value
la x19, scratch # base address
sw x5, 0(x19) # store in memory
li x5, 0xb26166b2 # load another value into integer register
amoxor.w x19, x5, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x11, 0x2d9f631a # load random value
la x20, scratch # base address
sw x11, 0(x20) # store in memory
li x11, 0xc2b44a7a # load another value into integer register
amoxor.w x20, x11, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x20, 0x88b6edcb # load random value
la x21, scratch # base address
sw x20, 0(x21) # store in memory
li x20, 0xbfecc27e # load another value into integer register
amoxor.w x21, x20, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x16, 0x4c6ac8af # load random value
la x22, scratch # base address
sw x16, 0(x22) # store in memory
li x16, 0x3eb5a544 # load another value into integer register
amoxor.w x22, x16, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x27, 0xb7355d63 # load random value
la x23, scratch # base address
sw x27, 0(x23) # store in memory
li x27, 0x7b6b5f2a # load another value into integer register
amoxor.w x23, x27, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x5, 0x98d6f2d6 # load random value
la x24, scratch # base address
sw x5, 0(x24) # store in memory
li x5, 0x70bf379b # load another value into integer register
amoxor.w x24, x5, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x30, 0xc58224d6 # load random value
la x25, scratch # base address
sw x30, 0(x25) # store in memory
li x30, 0x021a0f5a # load another value into integer register
amoxor.w x25, x30, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x11, 0xe0469240 # load random value
la x26, scratch # base address
sw x11, 0(x26) # store in memory
li x11, 0xadfd6337 # load another value into integer register
amoxor.w x26, x11, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x9, 0xe06afc2c # load random value
la x27, scratch # base address
sw x9, 0(x27) # store in memory
li x9, 0xb86f3d8b # load another value into integer register
amoxor.w x27, x9, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x18, 0x0184168d # load random value
la x28, scratch # base address
sw x18, 0(x28) # store in memory
li x18, 0x03f15691 # load another value into integer register
amoxor.w x28, x18, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x8, 0xb813d075 # load random value
la x29, scratch # base address
sw x8, 0(x29) # store in memory
li x8, 0xd95c3341 # load another value into integer register
amoxor.w x29, x8, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x27, 0xccafad42 # load random value
la x30, scratch # base address
sw x27, 0(x30) # store in memory
li x27, 0x67465277 # load another value into integer register
amoxor.w x30, x27, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x15, 0xfe29bd53 # load random value
la x31, scratch # base address
sw x15, 0(x31) # store in memory
li x15, 0xbe4ca8dd # load another value into integer register
amoxor.w x31, x15, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x9e04ab01 # load random value
la x26, scratch # base address
sw x0, 0(x26) # store in memory
li x0, 0x5fc546a6 # load another value into integer register
amoxor.w x0, x0, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x91268c50 # load random value
la x3, scratch # base address
sw x1, 0(x3) # store in memory
li x1, 0xd7256065 # load another value into integer register
amoxor.w x1, x1, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x4c5b1cc4 # load random value
la x19, scratch # base address
sw x2, 0(x19) # store in memory
li x2, 0x15406e10 # load another value into integer register
amoxor.w x2, x2, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xafd9899c # load random value
la x26, scratch # base address
sw x3, 0(x26) # store in memory
li x3, 0x7c950246 # load another value into integer register
amoxor.w x3, x3, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xadb5756c # load random value
la x7, scratch # base address
sw x4, 0(x7) # store in memory
li x4, 0x94ea1b8e # load another value into integer register
amoxor.w x4, x4, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa3b81605 # load random value
la x9, scratch # base address
sw x5, 0(x9) # store in memory
li x5, 0xf4c6627a # load another value into integer register
amoxor.w x5, x5, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x53b09252 # load random value
la x12, scratch # base address
sw x6, 0(x12) # store in memory
li x6, 0x45e9b1fe # load another value into integer register
amoxor.w x6, x6, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc2f8be18 # load random value
la x23, scratch # base address
sw x7, 0(x23) # store in memory
li x7, 0x7ff77c60 # load another value into integer register
amoxor.w x7, x7, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xdc277ce9 # load random value
la x29, scratch # base address
sw x8, 0(x29) # store in memory
li x8, 0xf2a58c71 # load another value into integer register
amoxor.w x8, x8, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x9eae18f2 # load random value
la x7, scratch # base address
sw x9, 0(x7) # store in memory
li x9, 0xdf81a092 # load another value into integer register
amoxor.w x9, x9, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x37a0b86c # load random value
la x2, scratch # base address
sw x10, 0(x2) # store in memory
li x10, 0xc500edb1 # load another value into integer register
amoxor.w x10, x10, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x49bb5174 # load random value
la x2, scratch # base address
sw x11, 0(x2) # store in memory
li x11, 0xee1f7ded # load another value into integer register
amoxor.w x11, x11, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xb350965a # load random value
la x25, scratch # base address
sw x12, 0(x25) # store in memory
li x12, 0xe7d81dec # load another value into integer register
amoxor.w x12, x12, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x05953b29 # load random value
la x20, scratch # base address
sw x13, 0(x20) # store in memory
li x13, 0x4504f0ed # load another value into integer register
amoxor.w x13, x13, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x642294fc # load random value
la x9, scratch # base address
sw x14, 0(x9) # store in memory
li x14, 0xa3638337 # load another value into integer register
amoxor.w x14, x14, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x9bc15a4f # load random value
la x30, scratch # base address
sw x15, 0(x30) # store in memory
li x15, 0xca3338bb # load another value into integer register
amoxor.w x15, x15, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x7b457709 # load random value
la x26, scratch # base address
sw x16, 0(x26) # store in memory
li x16, 0x473f08d4 # load another value into integer register
amoxor.w x16, x16, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0xef3646fb # load random value
la x22, scratch # base address
sw x17, 0(x22) # store in memory
li x17, 0xb5752b74 # load another value into integer register
amoxor.w x17, x17, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0xcb190cf5 # load random value
la x21, scratch # base address
sw x18, 0(x21) # store in memory
li x18, 0x3335e31b # load another value into integer register
amoxor.w x18, x18, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x01a3a6cd # load random value
la x16, scratch # base address
sw x19, 0(x16) # store in memory
li x19, 0xd76ff24f # load another value into integer register
amoxor.w x19, x19, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x94f25dfa # load random value
la x26, scratch # base address
sw x20, 0(x26) # store in memory
li x20, 0xcb76de5b # load another value into integer register
amoxor.w x20, x20, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xcbd75c97 # load random value
la x16, scratch # base address
sw x21, 0(x16) # store in memory
li x21, 0x65090f92 # load another value into integer register
amoxor.w x21, x21, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0xa03270c6 # load random value
la x9, scratch # base address
sw x22, 0(x9) # store in memory
li x22, 0x361aae74 # load another value into integer register
amoxor.w x22, x22, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xb809bd4b # load random value
la x6, scratch # base address
sw x23, 0(x6) # store in memory
li x23, 0x9a9fba9c # load another value into integer register
amoxor.w x23, x23, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x85782bef # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amoxor.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x6ca070c3 # load random value
la x16, scratch # base address
sw x25, 0(x16) # store in memory
li x25, 0xe8e26f32 # load another value into integer register
amoxor.w x25, x25, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0xf35fe233 # load random value
la x16, scratch # base address
sw x26, 0(x16) # store in memory
li x26, 0xec31435d # load another value into integer register
amoxor.w x26, x26, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x7a031cee # load random value
la x12, scratch # base address
sw x27, 0(x12) # store in memory
li x27, 0x3565f31b # load another value into integer register
amoxor.w x27, x27, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x1bdbca1c # load random value
la x22, scratch # base address
sw x28, 0(x22) # store in memory
li x28, 0x69395b12 # load another value into integer register
amoxor.w x28, x28, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x039137fb # load random value
la x9, scratch # base address
sw x29, 0(x9) # store in memory
li x29, 0x3f32006b # load another value into integer register
amoxor.w x29, x29, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x265f9eb8 # load random value
la x15, scratch # base address
sw x30, 0(x15) # store in memory
li x30, 0x7dda9ac6 # load another value into integer register
amoxor.w x30, x30, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0xf42ca4d5 # load random value
la x30, scratch # base address
sw x31, 0(x30) # store in memory
li x31, 0xf49a723e # load another value into integer register
amoxor.w x31, x31, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x3a0682dc # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amoxor.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x71a1b559 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amoxor.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x74037dea # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amoxor.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x435a2277 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amoxor.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9c843311 # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amoxor.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x122a8946 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amoxor.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x42c55186 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amoxor.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xcc64534b # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amoxor.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x09446a01 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amoxor.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x4a651c71 # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amoxor.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x99cb6304 # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amoxor.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xb1ee1245 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amoxor.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xaf4ec002 # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amoxor.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x7b72afe6 # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amoxor.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xfcb5fd46 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amoxor.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xe2d8460f # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amoxor.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x38bdbab2 # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amoxor.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x66cda2f7 # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amoxor.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xb9e8054e # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amoxor.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x709c226b # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amoxor.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xae069167 # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amoxor.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xa031cef8 # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amoxor.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x75a3624b # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amoxor.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x99d88d04 # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amoxor.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xaa8d56b2 # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amoxor.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x75d1ed55 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amoxor.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xcca8da76 # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amoxor.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xcfd733e3 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amoxor.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x8c33f655 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amoxor.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x15264c84 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amoxor.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x048b95df # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amoxor.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x20, scratch
add x13, x17, x27 # perform first operation
amoxor.w x14, x24, (x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x11, scratch
add x3, x18, x23 # perform first operation
amoxor.w x24, x22, (x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x3, scratch
add x22, x11, x25 # perform first operation
amoxor.w x30, x20, (x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x28, scratch
add x20, x20, x0 # perform first operation
amoxor.w x18, x20, (x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x28, scratch
add x28, x28, x0 # perform first operation
amoxor.w x7, x24, (x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x31, scratch
add x7, x7, x0 # perform first operation
amoxor.w x7, x12, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x5, scratch
add x13, x18, x22 # perform first operation
amoxor.w x13, x14, (x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x15, scratch
add x18, x6, x28 # perform first operation
amoxor.w x18, x20, (x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x18, scratch
add x10, x31, x30 # perform first operation
amoxor.w x10, x21, (x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x2, scratch
add x16, x26, x9 # perform first operation
amoxor.w x26, x30, (x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x27, scratch
add x6, x3, x17 # perform first operation
amoxor.w x17, x26, (x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x10, scratch
add x11, x8, x25 # perform first operation
amoxor.w x30, x31, (x10) # perform second (triggering) operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-amoor.w.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x13, 0x404be8a8 # load random value
la x1, scratch # base address
sw x13, 0(x1) # store in memory
li x13, 0x31c045d7 # load another value into integer register
amoor.w x6, x13, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x16, 0xd0780253 # load random value
la x2, scratch # base address
sw x16, 0(x2) # store in memory
li x16, 0xa8bc29b0 # load another value into integer register
amoor.w x14, x16, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x26, 0x1a19a9ed # load random value
la x3, scratch # base address
sw x26, 0(x3) # store in memory
li x26, 0xc6c80f12 # load another value into integer register
amoor.w x6, x26, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0x739c49b1 # load random value
la x4, scratch # base address
sw x19, 0(x4) # store in memory
li x19, 0x1eafa1c4 # load another value into integer register
amoor.w x18, x19, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0xd210847d # load random value
la x5, scratch # base address
sw x15, 0(x5) # store in memory
li x15, 0x700a3a96 # load another value into integer register
amoor.w x17, x15, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0x6edda06d # load random value
la x6, scratch # base address
sw x7, 0(x6) # store in memory
li x7, 0x6ca2324f # load another value into integer register
amoor.w x21, x7, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x29, 0xba82ea2b # load random value
la x7, scratch # base address
sw x29, 0(x7) # store in memory
li x29, 0xc990230a # load another value into integer register
amoor.w x15, x29, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x17, 0x05d64a18 # load random value
la x8, scratch # base address
sw x17, 0(x8) # store in memory
li x17, 0x823539a3 # load another value into integer register
amoor.w x26, x17, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x30, 0x34e770ed # load random value
la x9, scratch # base address
sw x30, 0(x9) # store in memory
li x30, 0x409b314c # load another value into integer register
amoor.w x16, x30, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0x590cea83 # load random value
la x10, scratch # base address
sw x13, 0(x10) # store in memory
li x13, 0x77115f45 # load another value into integer register
amoor.w x24, x13, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x22, 0x86c5f038 # load random value
la x11, scratch # base address
sw x22, 0(x11) # store in memory
li x22, 0xb675e55f # load another value into integer register
amoor.w x29, x22, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x30, 0x35ecc06b # load random value
la x12, scratch # base address
sw x30, 0(x12) # store in memory
li x30, 0x03c0b1ad # load another value into integer register
amoor.w x9, x30, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0x97c21d76 # load random value
la x13, scratch # base address
sw x14, 0(x13) # store in memory
li x14, 0x9c215173 # load another value into integer register
amoor.w x1, x14, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x18, 0xff7d9dd0 # load random value
la x14, scratch # base address
sw x18, 0(x14) # store in memory
li x18, 0x6692b1ac # load another value into integer register
amoor.w x1, x18, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x25, 0x763647e1 # load random value
la x15, scratch # base address
sw x25, 0(x15) # store in memory
li x25, 0x69fe10b9 # load another value into integer register
amoor.w x6, x25, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x2, 0xe3bd3ca5 # load random value
la x16, scratch # base address
sw x2, 0(x16) # store in memory
li x2, 0x279113e9 # load another value into integer register
amoor.w x9, x2, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x24, 0xa1a41aa5 # load random value
la x17, scratch # base address
sw x24, 0(x17) # store in memory
li x24, 0x360dbd5e # load another value into integer register
amoor.w x3, x24, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x12, 0x64fee413 # load random value
la x18, scratch # base address
sw x12, 0(x18) # store in memory
li x12, 0xafad7e43 # load another value into integer register
amoor.w x17, x12, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x9, 0xd8e47192 # load random value
la x19, scratch # base address
sw x9, 0(x19) # store in memory
li x9, 0x57661e9c # load another value into integer register
amoor.w x17, x9, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x27, 0xb6bb712f # load random value
la x20, scratch # base address
sw x27, 0(x20) # store in memory
li x27, 0xbb21ce53 # load another value into integer register
amoor.w x30, x27, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x17, 0xe1d41bf6 # load random value
la x21, scratch # base address
sw x17, 0(x21) # store in memory
li x17, 0x9168c86b # load another value into integer register
amoor.w x27, x17, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x8, 0xab720d8b # load random value
la x22, scratch # base address
sw x8, 0(x22) # store in memory
li x8, 0xfefe9c3b # load another value into integer register
amoor.w x7, x8, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x14, 0x5fd696c6 # load random value
la x23, scratch # base address
sw x14, 0(x23) # store in memory
li x14, 0x98e88d59 # load another value into integer register
amoor.w x19, x14, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x23, 0x585d2799 # load random value
la x24, scratch # base address
sw x23, 0(x24) # store in memory
li x23, 0x0517211f # load another value into integer register
amoor.w x17, x23, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x14, 0xc10f10e3 # load random value
la x25, scratch # base address
sw x14, 0(x25) # store in memory
li x14, 0x942779ed # load another value into integer register
amoor.w x6, x14, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x21, 0x11efaae4 # load random value
la x26, scratch # base address
sw x21, 0(x26) # store in memory
li x21, 0xf99bfff1 # load another value into integer register
amoor.w x22, x21, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x19, 0x149b0c96 # load random value
la x27, scratch # base address
sw x19, 0(x27) # store in memory
li x19, 0xd9b6f85e # load another value into integer register
amoor.w x29, x19, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x29, 0xa269795f # load random value
la x28, scratch # base address
sw x29, 0(x28) # store in memory
li x29, 0xfbbebea6 # load another value into integer register
amoor.w x22, x29, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x18, 0xe8fa009a # load random value
la x29, scratch # base address
sw x18, 0(x29) # store in memory
li x18, 0xc31b9a9a # load another value into integer register
amoor.w x2, x18, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x29, 0xe55b9649 # load random value
la x30, scratch # base address
sw x29, 0(x30) # store in memory
li x29, 0x010194a9 # load another value into integer register
amoor.w x19, x29, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x2, 0x29c24048 # load random value
la x31, scratch # base address
sw x2, 0(x31) # store in memory
li x2, 0x45944e84 # load another value into integer register
amoor.w x20, x2, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x7414b148 # load random value
la x30, scratch # base address
sw x0, 0(x30) # store in memory
li x0, 0xd11f055a # load another value into integer register
amoor.w x5, x0, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xe9f11725 # load random value
la x17, scratch # base address
sw x1, 0(x17) # store in memory
li x1, 0x61970757 # load another value into integer register
amoor.w x27, x1, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x234fd12e # load random value
la x1, scratch # base address
sw x2, 0(x1) # store in memory
li x2, 0xf4552991 # load another value into integer register
amoor.w x23, x2, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x958fce51 # load random value
la x7, scratch # base address
sw x3, 0(x7) # store in memory
li x3, 0x8e63f878 # load another value into integer register
amoor.w x31, x3, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x362fb5ad # load random value
la x15, scratch # base address
sw x4, 0(x15) # store in memory
li x4, 0x461fcfce # load another value into integer register
amoor.w x2, x4, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x20ed18b4 # load random value
la x30, scratch # base address
sw x5, 0(x30) # store in memory
li x5, 0x43dbcd8d # load another value into integer register
amoor.w x23, x5, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4b719432 # load random value
la x12, scratch # base address
sw x6, 0(x12) # store in memory
li x6, 0x51b9a24a # load another value into integer register
amoor.w x27, x6, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1946f60b # load random value
la x12, scratch # base address
sw x7, 0(x12) # store in memory
li x7, 0x5c0f84ac # load another value into integer register
amoor.w x6, x7, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x9743b580 # load random value
la x29, scratch # base address
sw x8, 0(x29) # store in memory
li x8, 0x39a19a21 # load another value into integer register
amoor.w x11, x8, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xc1a23338 # load random value
la x16, scratch # base address
sw x9, 0(x16) # store in memory
li x9, 0x5fd5dfa4 # load another value into integer register
amoor.w x31, x9, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x3c8dc516 # load random value
la x3, scratch # base address
sw x10, 0(x3) # store in memory
li x10, 0xd0574f18 # load another value into integer register
amoor.w x31, x10, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x8b1fc531 # load random value
la x10, scratch # base address
sw x11, 0(x10) # store in memory
li x11, 0x13e941f3 # load another value into integer register
amoor.w x19, x11, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x1b8fd214 # load random value
la x24, scratch # base address
sw x12, 0(x24) # store in memory
li x12, 0x195b2668 # load another value into integer register
amoor.w x25, x12, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x549966f4 # load random value
la x20, scratch # base address
sw x13, 0(x20) # store in memory
li x13, 0x79ffb6cd # load another value into integer register
amoor.w x11, x13, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x50205ecc # load random value
la x17, scratch # base address
sw x14, 0(x17) # store in memory
li x14, 0x08846959 # load another value into integer register
amoor.w x15, x14, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x0044d385 # load random value
la x26, scratch # base address
sw x15, 0(x26) # store in memory
li x15, 0xd7cdec7e # load another value into integer register
amoor.w x5, x15, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xa9356142 # load random value
la x15, scratch # base address
sw x16, 0(x15) # store in memory
li x16, 0xc8a2e7bd # load another value into integer register
amoor.w x10, x16, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x09c484c5 # load random value
la x25, scratch # base address
sw x17, 0(x25) # store in memory
li x17, 0x0e124820 # load another value into integer register
amoor.w x23, x17, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x14d8eb14 # load random value
la x27, scratch # base address
sw x18, 0(x27) # store in memory
li x18, 0xfba379b9 # load another value into integer register
amoor.w x9, x18, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x4c2c61b6 # load random value
la x3, scratch # base address
sw x19, 0(x3) # store in memory
li x19, 0xde5e5ace # load another value into integer register
amoor.w x23, x19, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x3302a6ee # load random value
la x15, scratch # base address
sw x20, 0(x15) # store in memory
li x20, 0x03d9f043 # load another value into integer register
amoor.w x16, x20, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x5d63457f # load random value
la x19, scratch # base address
sw x21, 0(x19) # store in memory
li x21, 0x763e019e # load another value into integer register
amoor.w x25, x21, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x3e771564 # load random value
la x28, scratch # base address
sw x22, 0(x28) # store in memory
li x22, 0x171ac655 # load another value into integer register
amoor.w x12, x22, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x4da650cf # load random value
la x8, scratch # base address
sw x23, 0(x8) # store in memory
li x23, 0x3a1c16da # load another value into integer register
amoor.w x20, x23, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x67480c33 # load random value
la x14, scratch # base address
sw x24, 0(x14) # store in memory
li x24, 0xa65ae5e6 # load another value into integer register
amoor.w x7, x24, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xe685f82c # load random value
la x1, scratch # base address
sw x25, 0(x1) # store in memory
li x25, 0x162a6e6e # load another value into integer register
amoor.w x2, x25, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0xc94afcc6 # load random value
la x22, scratch # base address
sw x26, 0(x22) # store in memory
li x26, 0x83d06da3 # load another value into integer register
amoor.w x16, x26, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0xfe4fc52c # load random value
la x28, scratch # base address
sw x27, 0(x28) # store in memory
li x27, 0xaa10be7a # load another value into integer register
amoor.w x18, x27, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xb298b877 # load random value
la x12, scratch # base address
sw x28, 0(x12) # store in memory
li x28, 0x795d99ff # load another value into integer register
amoor.w x9, x28, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xf5957f5a # load random value
la x27, scratch # base address
sw x29, 0(x27) # store in memory
li x29, 0x6ee4574a # load another value into integer register
amoor.w x6, x29, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xfbb064ed # load random value
la x1, scratch # base address
sw x30, 0(x1) # store in memory
li x30, 0xb8c96fca # load another value into integer register
amoor.w x26, x30, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x44414a1f # load random value
la x9, scratch # base address
sw x31, 0(x9) # store in memory
li x31, 0x1801448a # load another value into integer register
amoor.w x30, x31, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x23, 0xe237450b # load random value
la x7, scratch # base address
sw x23, 0(x7) # store in memory
li x23, 0xa5ba68f4 # load another value into integer register
amoor.w x0, x23, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x20, 0xd30e7613 # load random value
la x26, scratch # base address
sw x20, 0(x26) # store in memory
li x20, 0x74fb7413 # load another value into integer register
amoor.w x1, x20, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x23, 0x1f499663 # load random value
la x8, scratch # base address
sw x23, 0(x8) # store in memory
li x23, 0xfdc12db1 # load another value into integer register
amoor.w x2, x23, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x14, 0x30375cef # load random value
la x17, scratch # base address
sw x14, 0(x17) # store in memory
li x14, 0x9e1cdc1f # load another value into integer register
amoor.w x3, x14, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x26, 0xdf7afb87 # load random value
la x2, scratch # base address
sw x26, 0(x2) # store in memory
li x26, 0x7d2f7038 # load another value into integer register
amoor.w x4, x26, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0xa4cf98af # load random value
la x13, scratch # base address
sw x4, 0(x13) # store in memory
li x4, 0x9c3954fb # load another value into integer register
amoor.w x5, x4, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x063f773a # load random value
la x30, scratch # base address
sw x9, 0(x30) # store in memory
li x9, 0x657e7603 # load another value into integer register
amoor.w x6, x9, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0x888d2538 # load random value
la x19, scratch # base address
sw x18, 0(x19) # store in memory
li x18, 0xb1806957 # load another value into integer register
amoor.w x7, x18, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x26, 0x248bcd84 # load random value
la x30, scratch # base address
sw x26, 0(x30) # store in memory
li x26, 0xa3a75d60 # load another value into integer register
amoor.w x8, x26, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x26, 0xcb222497 # load random value
la x2, scratch # base address
sw x26, 0(x2) # store in memory
li x26, 0x5a123125 # load another value into integer register
amoor.w x9, x26, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x30, 0x64805b2a # load random value
la x7, scratch # base address
sw x30, 0(x7) # store in memory
li x30, 0x417321ce # load another value into integer register
amoor.w x10, x30, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x22, 0x67d6d720 # load random value
la x13, scratch # base address
sw x22, 0(x13) # store in memory
li x22, 0x20ebd717 # load another value into integer register
amoor.w x11, x22, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x24, 0xf9166164 # load random value
la x9, scratch # base address
sw x24, 0(x9) # store in memory
li x24, 0x98569d8a # load another value into integer register
amoor.w x12, x24, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x18, 0xa597fcde # load random value
la x22, scratch # base address
sw x18, 0(x22) # store in memory
li x18, 0x1aca1062 # load another value into integer register
amoor.w x13, x18, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x30, 0xa7126ae4 # load random value
la x2, scratch # base address
sw x30, 0(x2) # store in memory
li x30, 0xba9940a0 # load another value into integer register
amoor.w x14, x30, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x5, 0xe61c236c # load random value
la x16, scratch # base address
sw x5, 0(x16) # store in memory
li x5, 0x3d6a806c # load another value into integer register
amoor.w x15, x5, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x4b25f067 # load random value
la x14, scratch # base address
sw x16, 0(x14) # store in memory
li x16, 0x6cd761cd # load another value into integer register
amoor.w x16, x16, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x23, 0x3ad5cf0a # load random value
la x19, scratch # base address
sw x23, 0(x19) # store in memory
li x23, 0x22444726 # load another value into integer register
amoor.w x17, x23, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x2, 0x34793a61 # load random value
la x29, scratch # base address
sw x2, 0(x29) # store in memory
li x2, 0x14e133e8 # load another value into integer register
amoor.w x18, x2, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x6, 0xe2fe48d0 # load random value
la x31, scratch # base address
sw x6, 0(x31) # store in memory
li x6, 0xb695a4fa # load another value into integer register
amoor.w x19, x6, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x24, 0xf9efd4b9 # load random value
la x5, scratch # base address
sw x24, 0(x5) # store in memory
li x24, 0xfa4d27bf # load another value into integer register
amoor.w x20, x24, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x20, 0xf410ded9 # load random value
la x2, scratch # base address
sw x20, 0(x2) # store in memory
li x20, 0x864b7175 # load another value into integer register
amoor.w x21, x20, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x29, 0xd05c1291 # load random value
la x20, scratch # base address
sw x29, 0(x20) # store in memory
li x29, 0xd0b9e180 # load another value into integer register
amoor.w x22, x29, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x8, 0x0438f0b2 # load random value
la x9, scratch # base address
sw x8, 0(x9) # store in memory
li x8, 0x53cc7903 # load another value into integer register
amoor.w x23, x8, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x27, 0x79aa1de4 # load random value
la x31, scratch # base address
sw x27, 0(x31) # store in memory
li x27, 0xbbab9e79 # load another value into integer register
amoor.w x24, x27, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x23, 0xe490b6c2 # load random value
la x3, scratch # base address
sw x23, 0(x3) # store in memory
li x23, 0x5f1628a7 # load another value into integer register
amoor.w x25, x23, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x21, 0x6e9c2164 # load random value
la x20, scratch # base address
sw x21, 0(x20) # store in memory
li x21, 0x3ece32dc # load another value into integer register
amoor.w x26, x21, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x7, 0xebc6a70b # load random value
la x13, scratch # base address
sw x7, 0(x13) # store in memory
li x7, 0x266d7c3b # load another value into integer register
amoor.w x27, x7, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x16, 0xd1751ece # load random value
la x3, scratch # base address
sw x16, 0(x3) # store in memory
li x16, 0x08855143 # load another value into integer register
amoor.w x28, x16, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x19, 0xcf3a4b9b # load random value
la x6, scratch # base address
sw x19, 0(x6) # store in memory
li x19, 0xb620a962 # load another value into integer register
amoor.w x29, x19, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x22, 0x03d275f7 # load random value
la x3, scratch # base address
sw x22, 0(x3) # store in memory
li x22, 0x73e74d07 # load another value into integer register
amoor.w x30, x22, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x10, 0x95c0576c # load random value
la x27, scratch # base address
sw x10, 0(x27) # store in memory
li x10, 0x3e9c7e64 # load another value into integer register
amoor.w x31, x10, (x27) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x9, 0xdfb963a1 # load random value
la x29, scratch # base address
sw x9, 0(x29) # store in memory
li x9, 0x00000000 # load another value into integer register
amoor.w x22, x9, (x29) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x17, 0x086dd787 # load random value
la x2, scratch # base address
sw x17, 0(x2) # store in memory
li x17, 0x00000001 # load another value into integer register
amoor.w x21, x17, (x2) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x3, 0x848b395b # load random value
la x24, scratch # base address
sw x3, 0(x24) # store in memory
li x3, 0x00000002 # load another value into integer register
amoor.w x17, x3, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x16, 0x51f3e93c # load random value
la x9, scratch # base address
sw x16, 0(x9) # store in memory
li x16, 0x80000000 # load another value into integer register
amoor.w x8, x16, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x9, 0x1f156684 # load random value
la x28, scratch # base address
sw x9, 0(x28) # store in memory
li x9, 0x80000001 # load another value into integer register
amoor.w x30, x9, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x6, 0x44a747ef # load random value
la x29, scratch # base address
sw x6, 0(x29) # store in memory
li x6, 0x7fffffff # load another value into integer register
amoor.w x21, x6, (x29) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x12, 0x65d5a7bb # load random value
la x28, scratch # base address
sw x12, 0(x28) # store in memory
li x12, 0x7ffffffe # load another value into integer register
amoor.w x17, x12, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x23, 0x442bfa90 # load random value
la x15, scratch # base address
sw x23, 0(x15) # store in memory
li x23, 0xffffffff # load another value into integer register
amoor.w x24, x23, (x15) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x10, 0xe9d1dfed # load random value
la x2, scratch # base address
sw x10, 0(x2) # store in memory
li x10, 0xfffffffe # load another value into integer register
amoor.w x20, x10, (x2) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x29, 0xa64a7ca2 # load random value
la x26, scratch # base address
sw x29, 0(x26) # store in memory
li x29, 0x5bbc8872 # load another value into integer register
amoor.w x1, x29, (x26) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x29, 0x075e8812 # load random value
la x13, scratch # base address
sw x29, 0(x13) # store in memory
li x29, 0xaaaaaaaa # load another value into integer register
amoor.w x16, x29, (x13) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x2, 0x3d4afc59 # load random value
la x5, scratch # base address
sw x2, 0(x5) # store in memory
li x2, 0x55555555 # load another value into integer register
amoor.w x18, x2, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xede4d95a # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amoor.w x27, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x26899e57 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amoor.w x30, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xd561cfa9 # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amoor.w x15, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x61fa861c # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amoor.w x6, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x56823546 # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amoor.w x27, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xace05b8d # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amoor.w x16, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc513aa2a # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amoor.w x24, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x2590b6a2 # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amoor.w x11, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xb213c82c # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amoor.w x30, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xb2f81f7f # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amoor.w x31, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x976d844f # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amoor.w x18, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x742ce395 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amoor.w x13, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x4026900c # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amoor.w x26, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x526c58b1 # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amoor.w x13, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xa6fc817b # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amoor.w x9, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x0b701767 # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amoor.w x19, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x1d2cc50f # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amoor.w x17, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x72149301 # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amoor.w x10, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x24afa7ce # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amoor.w x7, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xa638c4d8 # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amoor.w x26, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x22a01617 # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amoor.w x18, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd03b2030 # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amoor.w x5, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xcfd656f5 # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amoor.w x28, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x90f1d376 # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amoor.w x5, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x4d06a1ac # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amoor.w x16, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xbd04d859 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amoor.w x6, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x15603b4e # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amoor.w x19, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x10a68500 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amoor.w x31, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x68564b44 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amoor.w x2, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x7fd83e5b # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amoor.w x8, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x85fb99e6 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amoor.w x14, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x28, 0xc7b03fdc # load random value
la x1, scratch # base address
sw x28, 0(x1) # store in memory
li x28, 0x30f2ca92 # load another value into integer register
amoor.w x1, x28, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x24, 0xd6b69c67 # load random value
la x2, scratch # base address
sw x24, 0(x2) # store in memory
li x24, 0xac5569f0 # load another value into integer register
amoor.w x2, x24, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x21, 0xf92d44df # load random value
la x3, scratch # base address
sw x21, 0(x3) # store in memory
li x21, 0x45f4d623 # load another value into integer register
amoor.w x3, x21, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0xabfff7f3 # load random value
la x4, scratch # base address
sw x21, 0(x4) # store in memory
li x21, 0xfcb3f865 # load another value into integer register
amoor.w x4, x21, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0x484a86a6 # load random value
la x5, scratch # base address
sw x2, 0(x5) # store in memory
li x2, 0xf57211d2 # load another value into integer register
amoor.w x5, x2, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x94428f73 # load random value
la x6, scratch # base address
sw x9, 0(x6) # store in memory
li x9, 0x843124a5 # load another value into integer register
amoor.w x6, x9, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0xec763fa5 # load random value
la x7, scratch # base address
sw x22, 0(x7) # store in memory
li x22, 0xcfe66cf6 # load another value into integer register
amoor.w x7, x22, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x20, 0x97b67bb8 # load random value
la x8, scratch # base address
sw x20, 0(x8) # store in memory
li x20, 0xe9e98ec7 # load another value into integer register
amoor.w x8, x20, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x10, 0x4312db7a # load random value
la x9, scratch # base address
sw x10, 0(x9) # store in memory
li x10, 0xe98243ac # load another value into integer register
amoor.w x9, x10, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x1, 0xd20ce48d # load random value
la x10, scratch # base address
sw x1, 0(x10) # store in memory
li x1, 0x6cde6dea # load another value into integer register
amoor.w x10, x1, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x26, 0x038196aa # load random value
la x11, scratch # base address
sw x26, 0(x11) # store in memory
li x26, 0xef5b2e66 # load another value into integer register
amoor.w x11, x26, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x14, 0x3a1088f4 # load random value
la x12, scratch # base address
sw x14, 0(x12) # store in memory
li x14, 0xe2a80b5f # load another value into integer register
amoor.w x12, x14, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x24, 0x7c73988b # load random value
la x13, scratch # base address
sw x24, 0(x13) # store in memory
li x24, 0x65acd2f8 # load another value into integer register
amoor.w x13, x24, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x26, 0x21ec41cc # load random value
la x14, scratch # base address
sw x26, 0(x14) # store in memory
li x26, 0x5eae30a5 # load another value into integer register
amoor.w x14, x26, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x11, 0xa01196e4 # load random value
la x15, scratch # base address
sw x11, 0(x15) # store in memory
li x11, 0x4f58974a # load another value into integer register
amoor.w x15, x11, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x22, 0xa38ca6a0 # load random value
la x16, scratch # base address
sw x22, 0(x16) # store in memory
li x22, 0xa687678d # load another value into integer register
amoor.w x16, x22, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x7, 0x83bc1f81 # load random value
la x17, scratch # base address
sw x7, 0(x17) # store in memory
li x7, 0x1ca29344 # load another value into integer register
amoor.w x17, x7, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x2, 0xb473c259 # load random value
la x18, scratch # base address
sw x2, 0(x18) # store in memory
li x2, 0x890ff184 # load another value into integer register
amoor.w x18, x2, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x31, 0x0952d2e2 # load random value
la x19, scratch # base address
sw x31, 0(x19) # store in memory
li x31, 0x07843f94 # load another value into integer register
amoor.w x19, x31, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x12, 0x821a4777 # load random value
la x20, scratch # base address
sw x12, 0(x20) # store in memory
li x12, 0x8b7b39c0 # load another value into integer register
amoor.w x20, x12, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x22, 0x60d65658 # load random value
la x21, scratch # base address
sw x22, 0(x21) # store in memory
li x22, 0x450bc084 # load another value into integer register
amoor.w x21, x22, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x28, 0x7d6b6737 # load random value
la x22, scratch # base address
sw x28, 0(x22) # store in memory
li x28, 0xb43fc310 # load another value into integer register
amoor.w x22, x28, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x25, 0x76e35cba # load random value
la x23, scratch # base address
sw x25, 0(x23) # store in memory
li x25, 0x2b40555b # load another value into integer register
amoor.w x23, x25, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x6, 0xb1de5f96 # load random value
la x24, scratch # base address
sw x6, 0(x24) # store in memory
li x6, 0x735de3ed # load another value into integer register
amoor.w x24, x6, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x30, 0x0e8fcc0f # load random value
la x25, scratch # base address
sw x30, 0(x25) # store in memory
li x30, 0xb2cd2f6c # load another value into integer register
amoor.w x25, x30, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x13, 0x04b6a979 # load random value
la x26, scratch # base address
sw x13, 0(x26) # store in memory
li x13, 0x27c99be6 # load another value into integer register
amoor.w x26, x13, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x31, 0x650edcce # load random value
la x27, scratch # base address
sw x31, 0(x27) # store in memory
li x31, 0x45a60619 # load another value into integer register
amoor.w x27, x31, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x23, 0x0b434d71 # load random value
la x28, scratch # base address
sw x23, 0(x28) # store in memory
li x23, 0xa5c974f0 # load another value into integer register
amoor.w x28, x23, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x24, 0xa479fc4a # load random value
la x29, scratch # base address
sw x24, 0(x29) # store in memory
li x24, 0xdddb8d3b # load another value into integer register
amoor.w x29, x24, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x25, 0x6ee162a7 # load random value
la x30, scratch # base address
sw x25, 0(x30) # store in memory
li x25, 0xd8635b53 # load another value into integer register
amoor.w x30, x25, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x18, 0x9b23b2d2 # load random value
la x31, scratch # base address
sw x18, 0(x31) # store in memory
li x18, 0x394096c5 # load another value into integer register
amoor.w x31, x18, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0xc9cd5ce1 # load random value
la x26, scratch # base address
sw x0, 0(x26) # store in memory
li x0, 0x53696757 # load another value into integer register
amoor.w x0, x0, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x2dfae682 # load random value
la x29, scratch # base address
sw x1, 0(x29) # store in memory
li x1, 0x76c279d5 # load another value into integer register
amoor.w x1, x1, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x1be423a1 # load random value
la x18, scratch # base address
sw x2, 0(x18) # store in memory
li x2, 0x657ccccc # load another value into integer register
amoor.w x2, x2, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xfc539aaf # load random value
la x19, scratch # base address
sw x3, 0(x19) # store in memory
li x3, 0x34e069f0 # load another value into integer register
amoor.w x3, x3, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x64609894 # load random value
la x8, scratch # base address
sw x4, 0(x8) # store in memory
li x4, 0xd419a5e0 # load another value into integer register
amoor.w x4, x4, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9eabc45f # load random value
la x9, scratch # base address
sw x5, 0(x9) # store in memory
li x5, 0x515a1d70 # load another value into integer register
amoor.w x5, x5, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4339ad7e # load random value
la x9, scratch # base address
sw x6, 0(x9) # store in memory
li x6, 0xc1aa50ab # load another value into integer register
amoor.w x6, x6, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xce149514 # load random value
la x19, scratch # base address
sw x7, 0(x19) # store in memory
li x7, 0x520e62b6 # load another value into integer register
amoor.w x7, x7, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x84eaf2df # load random value
la x1, scratch # base address
sw x8, 0(x1) # store in memory
li x8, 0x1529a0b7 # load another value into integer register
amoor.w x8, x8, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x9c1553e9 # load random value
la x17, scratch # base address
sw x9, 0(x17) # store in memory
li x9, 0xedce74c9 # load another value into integer register
amoor.w x9, x9, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xa4041f44 # load random value
la x1, scratch # base address
sw x10, 0(x1) # store in memory
li x10, 0xc683ba9c # load another value into integer register
amoor.w x10, x10, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xf155f6d0 # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amoor.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xbd561c75 # load random value
la x5, scratch # base address
sw x12, 0(x5) # store in memory
li x12, 0xbd9acfe7 # load another value into integer register
amoor.w x12, x12, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x637c9360 # load random value
la x27, scratch # base address
sw x13, 0(x27) # store in memory
li x13, 0xd787d711 # load another value into integer register
amoor.w x13, x13, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x5e06cafa # load random value
la x3, scratch # base address
sw x14, 0(x3) # store in memory
li x14, 0x0e221bf0 # load another value into integer register
amoor.w x14, x14, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x3a83d28d # load random value
la x2, scratch # base address
sw x15, 0(x2) # store in memory
li x15, 0x7c246459 # load another value into integer register
amoor.w x15, x15, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x1ecfa941 # load random value
la x5, scratch # base address
sw x16, 0(x5) # store in memory
li x16, 0x3088b096 # load another value into integer register
amoor.w x16, x16, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x9086a906 # load random value
la x23, scratch # base address
sw x17, 0(x23) # store in memory
li x17, 0x8bfdc79f # load another value into integer register
amoor.w x17, x17, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0xc2c8be2c # load random value
la x8, scratch # base address
sw x18, 0(x8) # store in memory
li x18, 0x70198534 # load another value into integer register
amoor.w x18, x18, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x6692184d # load random value
la x11, scratch # base address
sw x19, 0(x11) # store in memory
li x19, 0x6f372ca8 # load another value into integer register
amoor.w x19, x19, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x3a1d4e92 # load random value
la x1, scratch # base address
sw x20, 0(x1) # store in memory
li x20, 0x58c60010 # load another value into integer register
amoor.w x20, x20, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x163fea5f # load random value
la x13, scratch # base address
sw x21, 0(x13) # store in memory
li x21, 0xef27b46e # load another value into integer register
amoor.w x21, x21, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x495af8ed # load random value
la x7, scratch # base address
sw x22, 0(x7) # store in memory
li x22, 0x7e002b54 # load another value into integer register
amoor.w x22, x22, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x77397cd6 # load random value
la x20, scratch # base address
sw x23, 0(x20) # store in memory
li x23, 0xf9b93ba1 # load another value into integer register
amoor.w x23, x23, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x3495231a # load random value
la x23, scratch # base address
sw x24, 0(x23) # store in memory
li x24, 0xd1ca213f # load another value into integer register
amoor.w x24, x24, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x31cea7ad # load random value
la x2, scratch # base address
sw x25, 0(x2) # store in memory
li x25, 0xd14c9f1a # load another value into integer register
amoor.w x25, x25, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x68bdf940 # load random value
la x9, scratch # base address
sw x26, 0(x9) # store in memory
li x26, 0xe366c181 # load another value into integer register
amoor.w x26, x26, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xaac655d3 # load random value
la x18, scratch # base address
sw x27, 0(x18) # store in memory
li x27, 0xb2f3ab89 # load another value into integer register
amoor.w x27, x27, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0xde01fa09 # load random value
la x30, scratch # base address
sw x28, 0(x30) # store in memory
li x28, 0x0654a4de # load another value into integer register
amoor.w x28, x28, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x0c19eef2 # load random value
la x17, scratch # base address
sw x29, 0(x17) # store in memory
li x29, 0xd30c88af # load another value into integer register
amoor.w x29, x29, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xf79c04c1 # load random value
la x13, scratch # base address
sw x30, 0(x13) # store in memory
li x30, 0xb80affdb # load another value into integer register
amoor.w x30, x30, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x671f75e8 # load random value
la x18, scratch # base address
sw x31, 0(x18) # store in memory
li x31, 0x6505e476 # load another value into integer register
amoor.w x31, x31, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x670c380e # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amoor.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xac6d9ae5 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amoor.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x9029031d # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amoor.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x74d16feb # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amoor.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc3ed15b7 # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amoor.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x143c0788 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amoor.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x65404b6b # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amoor.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x2f4f303a # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amoor.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x04e70b58 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amoor.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x36c2cbd3 # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amoor.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x4cd611d8 # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amoor.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xcd1e6258 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amoor.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xd665ea9a # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amoor.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x1ffc888a # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amoor.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xf2b4b147 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amoor.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x9f46df46 # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amoor.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xba88705b # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amoor.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x2ceebcb3 # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amoor.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x19bad994 # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amoor.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xe6d4de41 # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amoor.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x539dd398 # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amoor.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xec243340 # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amoor.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x14b996d3 # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amoor.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x76879d63 # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amoor.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xf6fc32e6 # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amoor.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x46cf26e7 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amoor.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xd33f2433 # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amoor.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x8fba5773 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amoor.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x0ca58224 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amoor.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x1eb10cd1 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amoor.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xb7a25320 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amoor.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x5, scratch
add x7, x19, x1 # perform first operation
amoor.w x30, x12, (x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x12, scratch
add x14, x29, x26 # perform first operation
amoor.w x30, x24, (x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x15, scratch
add x13, x25, x8 # perform first operation
amoor.w x16, x27, (x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x23, scratch
add x30, x30, x0 # perform first operation
amoor.w x30, x30, (x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x15, scratch
add x15, x15, x0 # perform first operation
amoor.w x15, x27, (x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x15, scratch
add x28, x28, x0 # perform first operation
amoor.w x27, x8, (x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x23, scratch
add x5, x26, x19 # perform first operation
amoor.w x5, x10, (x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x24, scratch
add x22, x17, x13 # perform first operation
amoor.w x22, x26, (x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x25, scratch
add x30, x10, x19 # perform first operation
amoor.w x30, x22, (x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x1, scratch
add x30, x17, x19 # perform first operation
amoor.w x17, x5, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x13, scratch
add x28, x27, x21 # perform first operation
amoor.w x21, x9, (x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x25, scratch
add x9, x29, x3 # perform first operation
amoor.w x24, x21, (x25) # perform second (triggering) operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-amomaxu.w.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x13, 0xe32ce3d3 # load random value
la x1, scratch # base address
sw x13, 0(x1) # store in memory
li x13, 0xf0b47132 # load another value into integer register
amomaxu.w x22, x13, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x8, 0x478ce6c7 # load random value
la x2, scratch # base address
sw x8, 0(x2) # store in memory
li x8, 0x9af33266 # load another value into integer register
amomaxu.w x22, x8, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x2, 0x5165bfbe # load random value
la x3, scratch # base address
sw x2, 0(x3) # store in memory
li x2, 0x4a6e5bd0 # load another value into integer register
amomaxu.w x31, x2, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0xecb20c81 # load random value
la x4, scratch # base address
sw x30, 0(x4) # store in memory
li x30, 0xbb4c7fa1 # load another value into integer register
amomaxu.w x26, x30, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0xecb4dac4 # load random value
la x5, scratch # base address
sw x20, 0(x5) # store in memory
li x20, 0x6e98046b # load another value into integer register
amomaxu.w x14, x20, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0xa6d2dbc4 # load random value
la x6, scratch # base address
sw x15, 0(x6) # store in memory
li x15, 0x7a69d431 # load another value into integer register
amomaxu.w x13, x15, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x90c6a2dd # load random value
la x7, scratch # base address
sw x3, 0(x7) # store in memory
li x3, 0x249426d0 # load another value into integer register
amomaxu.w x31, x3, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x24, 0xe56cbed5 # load random value
la x8, scratch # base address
sw x24, 0(x8) # store in memory
li x24, 0x33040a11 # load another value into integer register
amomaxu.w x14, x24, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x27, 0xf7c7b7cb # load random value
la x9, scratch # base address
sw x27, 0(x9) # store in memory
li x27, 0x406c4c9e # load another value into integer register
amomaxu.w x17, x27, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x2, 0x7510b45a # load random value
la x10, scratch # base address
sw x2, 0(x10) # store in memory
li x2, 0x6a0cb94c # load another value into integer register
amomaxu.w x15, x2, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0x04bad412 # load random value
la x11, scratch # base address
sw x14, 0(x11) # store in memory
li x14, 0x98aedf12 # load another value into integer register
amomaxu.w x9, x14, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x2, 0x4d799b0b # load random value
la x12, scratch # base address
sw x2, 0(x12) # store in memory
li x2, 0x0c841be1 # load another value into integer register
amomaxu.w x25, x2, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x16, 0x95ad66e8 # load random value
la x13, scratch # base address
sw x16, 0(x13) # store in memory
li x16, 0x30e46596 # load another value into integer register
amomaxu.w x24, x16, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x1, 0x76cff494 # load random value
la x14, scratch # base address
sw x1, 0(x14) # store in memory
li x1, 0x178a30f5 # load another value into integer register
amomaxu.w x21, x1, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x28, 0x57dc6e6f # load random value
la x15, scratch # base address
sw x28, 0(x15) # store in memory
li x28, 0xa73bcef1 # load another value into integer register
amomaxu.w x2, x28, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x30, 0x97bcfbd1 # load random value
la x16, scratch # base address
sw x30, 0(x16) # store in memory
li x30, 0x0b957644 # load another value into integer register
amomaxu.w x27, x30, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x13, 0x204534df # load random value
la x17, scratch # base address
sw x13, 0(x17) # store in memory
li x13, 0xd5e82f0d # load another value into integer register
amomaxu.w x21, x13, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x17, 0x5da56078 # load random value
la x18, scratch # base address
sw x17, 0(x18) # store in memory
li x17, 0xef4b916a # load another value into integer register
amomaxu.w x7, x17, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x14, 0xa4d61f24 # load random value
la x19, scratch # base address
sw x14, 0(x19) # store in memory
li x14, 0xc7db103b # load another value into integer register
amomaxu.w x15, x14, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x22, 0x547bcc7a # load random value
la x20, scratch # base address
sw x22, 0(x20) # store in memory
li x22, 0xeeb3df64 # load another value into integer register
amomaxu.w x23, x22, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x18, 0x43458a60 # load random value
la x21, scratch # base address
sw x18, 0(x21) # store in memory
li x18, 0xd48917fd # load another value into integer register
amomaxu.w x2, x18, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x5, 0x396305fd # load random value
la x22, scratch # base address
sw x5, 0(x22) # store in memory
li x5, 0xe6276cd0 # load another value into integer register
amomaxu.w x17, x5, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x14, 0x3ffdb8bd # load random value
la x23, scratch # base address
sw x14, 0(x23) # store in memory
li x14, 0x891f8ab1 # load another value into integer register
amomaxu.w x16, x14, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x27, 0xa7830a86 # load random value
la x24, scratch # base address
sw x27, 0(x24) # store in memory
li x27, 0xf58e9838 # load another value into integer register
amomaxu.w x23, x27, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x29, 0x8ee83c5d # load random value
la x25, scratch # base address
sw x29, 0(x25) # store in memory
li x29, 0x2e80a82a # load another value into integer register
amomaxu.w x21, x29, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x13, 0x7ccd19ba # load random value
la x26, scratch # base address
sw x13, 0(x26) # store in memory
li x13, 0xf43e3998 # load another value into integer register
amomaxu.w x1, x13, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x20, 0x5084fe22 # load random value
la x27, scratch # base address
sw x20, 0(x27) # store in memory
li x20, 0x387d3b70 # load another value into integer register
amomaxu.w x18, x20, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x31, 0xae68f742 # load random value
la x28, scratch # base address
sw x31, 0(x28) # store in memory
li x31, 0xcbe92f5d # load another value into integer register
amomaxu.w x26, x31, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x17, 0xb2ebb2d0 # load random value
la x29, scratch # base address
sw x17, 0(x29) # store in memory
li x17, 0xe52f2046 # load another value into integer register
amomaxu.w x7, x17, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x18, 0xaa31cc85 # load random value
la x30, scratch # base address
sw x18, 0(x30) # store in memory
li x18, 0xb0c13f57 # load another value into integer register
amomaxu.w x26, x18, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x22, 0x0562f639 # load random value
la x31, scratch # base address
sw x22, 0(x31) # store in memory
li x22, 0xfe03b9d2 # load another value into integer register
amomaxu.w x21, x22, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xa4d76152 # load random value
la x11, scratch # base address
sw x0, 0(x11) # store in memory
li x0, 0xc5849216 # load another value into integer register
amomaxu.w x5, x0, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x8795886d # load random value
la x3, scratch # base address
sw x1, 0(x3) # store in memory
li x1, 0x376f1ac3 # load another value into integer register
amomaxu.w x30, x1, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xffe10e96 # load random value
la x31, scratch # base address
sw x2, 0(x31) # store in memory
li x2, 0x58abfcec # load another value into integer register
amomaxu.w x26, x2, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x97265239 # load random value
la x14, scratch # base address
sw x3, 0(x14) # store in memory
li x3, 0x3dfc7307 # load another value into integer register
amomaxu.w x27, x3, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x97180bb6 # load random value
la x9, scratch # base address
sw x4, 0(x9) # store in memory
li x4, 0x89c3eaaf # load another value into integer register
amomaxu.w x12, x4, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1978b71f # load random value
la x8, scratch # base address
sw x5, 0(x8) # store in memory
li x5, 0x35c393bd # load another value into integer register
amomaxu.w x4, x5, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x371c9d1c # load random value
la x19, scratch # base address
sw x6, 0(x19) # store in memory
li x6, 0x35204e10 # load another value into integer register
amomaxu.w x11, x6, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8d460b0d # load random value
la x12, scratch # base address
sw x7, 0(x12) # store in memory
li x7, 0x009e96d4 # load another value into integer register
amomaxu.w x11, x7, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x8f5e49e5 # load random value
la x6, scratch # base address
sw x8, 0(x6) # store in memory
li x8, 0xaf0a9a6a # load another value into integer register
amomaxu.w x22, x8, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x81b2686f # load random value
la x1, scratch # base address
sw x9, 0(x1) # store in memory
li x9, 0xe04b2440 # load another value into integer register
amomaxu.w x15, x9, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x6294b5f4 # load random value
la x9, scratch # base address
sw x10, 0(x9) # store in memory
li x10, 0x288de591 # load another value into integer register
amomaxu.w x21, x10, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xce46d06c # load random value
la x18, scratch # base address
sw x11, 0(x18) # store in memory
li x11, 0x4a4c83f6 # load another value into integer register
amomaxu.w x17, x11, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x30d9eb3a # load random value
la x27, scratch # base address
sw x12, 0(x27) # store in memory
li x12, 0x61cf7a76 # load another value into integer register
amomaxu.w x16, x12, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xd60d31f4 # load random value
la x24, scratch # base address
sw x13, 0(x24) # store in memory
li x13, 0x1e8d13eb # load another value into integer register
amomaxu.w x3, x13, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x7b02c74b # load random value
la x18, scratch # base address
sw x14, 0(x18) # store in memory
li x14, 0xfdbb23b4 # load another value into integer register
amomaxu.w x15, x14, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x22fda428 # load random value
la x1, scratch # base address
sw x15, 0(x1) # store in memory
li x15, 0x52704efc # load another value into integer register
amomaxu.w x18, x15, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xcf35f952 # load random value
la x19, scratch # base address
sw x16, 0(x19) # store in memory
li x16, 0xa131aeea # load another value into integer register
amomaxu.w x1, x16, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x5114289d # load random value
la x8, scratch # base address
sw x17, 0(x8) # store in memory
li x17, 0xac192a0e # load another value into integer register
amomaxu.w x20, x17, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xcc013f36 # load random value
la x22, scratch # base address
sw x18, 0(x22) # store in memory
li x18, 0xf1d4899b # load another value into integer register
amomaxu.w x29, x18, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x788251fa # load random value
la x3, scratch # base address
sw x19, 0(x3) # store in memory
li x19, 0x209fb0a2 # load another value into integer register
amomaxu.w x5, x19, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x1fadd5fe # load random value
la x9, scratch # base address
sw x20, 0(x9) # store in memory
li x20, 0x990cd381 # load another value into integer register
amomaxu.w x11, x20, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x54403c42 # load random value
la x1, scratch # base address
sw x21, 0(x1) # store in memory
li x21, 0x5531ca1f # load another value into integer register
amomaxu.w x25, x21, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x0e6729f8 # load random value
la x23, scratch # base address
sw x22, 0(x23) # store in memory
li x22, 0xde23a74b # load another value into integer register
amomaxu.w x20, x22, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x07c79e2e # load random value
la x3, scratch # base address
sw x23, 0(x3) # store in memory
li x23, 0xaa6aad5a # load another value into integer register
amomaxu.w x13, x23, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xc47ec8ff # load random value
la x11, scratch # base address
sw x24, 0(x11) # store in memory
li x24, 0xf6b96c9c # load another value into integer register
amomaxu.w x12, x24, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x325fc6da # load random value
la x2, scratch # base address
sw x25, 0(x2) # store in memory
li x25, 0xdc19ca82 # load another value into integer register
amomaxu.w x27, x25, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x27938896 # load random value
la x28, scratch # base address
sw x26, 0(x28) # store in memory
li x26, 0x219ee4c1 # load another value into integer register
amomaxu.w x2, x26, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x2663e0bc # load random value
la x26, scratch # base address
sw x27, 0(x26) # store in memory
li x27, 0x7a7a3260 # load another value into integer register
amomaxu.w x15, x27, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x804c0bbc # load random value
la x9, scratch # base address
sw x28, 0(x9) # store in memory
li x28, 0xe61f2943 # load another value into integer register
amomaxu.w x5, x28, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xf4a63c19 # load random value
la x1, scratch # base address
sw x29, 0(x1) # store in memory
li x29, 0x0066a16d # load another value into integer register
amomaxu.w x28, x29, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x751cc764 # load random value
la x8, scratch # base address
sw x30, 0(x8) # store in memory
li x30, 0x67003529 # load another value into integer register
amomaxu.w x20, x30, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xc94ea6a5 # load random value
la x8, scratch # base address
sw x31, 0(x8) # store in memory
li x31, 0x265fc3a5 # load another value into integer register
amomaxu.w x6, x31, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x8, 0x0a8b85b3 # load random value
la x25, scratch # base address
sw x8, 0(x25) # store in memory
li x8, 0xb97f3f49 # load another value into integer register
amomaxu.w x0, x8, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x12, 0x74341371 # load random value
la x25, scratch # base address
sw x12, 0(x25) # store in memory
li x12, 0x4e5cae7d # load another value into integer register
amomaxu.w x1, x12, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x31, 0x774e3495 # load random value
la x16, scratch # base address
sw x31, 0(x16) # store in memory
li x31, 0x8f5b52e4 # load another value into integer register
amomaxu.w x2, x31, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x30, 0x7bd7d9cb # load random value
la x7, scratch # base address
sw x30, 0(x7) # store in memory
li x30, 0xa6b7a8c7 # load another value into integer register
amomaxu.w x3, x30, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0xe8841fcc # load random value
la x16, scratch # base address
sw x2, 0(x16) # store in memory
li x2, 0x63d84908 # load another value into integer register
amomaxu.w x4, x2, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0x7509b194 # load random value
la x15, scratch # base address
sw x12, 0(x15) # store in memory
li x12, 0x093bf3e7 # load another value into integer register
amomaxu.w x5, x12, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x77964e89 # load random value
la x10, scratch # base address
sw x2, 0(x10) # store in memory
li x2, 0xf9161d61 # load another value into integer register
amomaxu.w x6, x2, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x3626172b # load random value
la x19, scratch # base address
sw x15, 0(x19) # store in memory
li x15, 0x115799c3 # load another value into integer register
amomaxu.w x7, x15, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x27, 0x8e3c38d7 # load random value
la x8, scratch # base address
sw x27, 0(x8) # store in memory
li x27, 0x52b0cb96 # load another value into integer register
amomaxu.w x8, x27, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x11, 0x993dee50 # load random value
la x20, scratch # base address
sw x11, 0(x20) # store in memory
li x11, 0xb595f251 # load another value into integer register
amomaxu.w x9, x11, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x1, 0x239608c2 # load random value
la x29, scratch # base address
sw x1, 0(x29) # store in memory
li x1, 0xc488798a # load another value into integer register
amomaxu.w x10, x1, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x10, 0x5c3363d3 # load random value
la x26, scratch # base address
sw x10, 0(x26) # store in memory
li x10, 0xa06f27ea # load another value into integer register
amomaxu.w x11, x10, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x2, 0xd546b8fb # load random value
la x12, scratch # base address
sw x2, 0(x12) # store in memory
li x2, 0x95ae7101 # load another value into integer register
amomaxu.w x12, x2, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x17, 0x303c1866 # load random value
la x31, scratch # base address
sw x17, 0(x31) # store in memory
li x17, 0x45c22a3e # load another value into integer register
amomaxu.w x13, x17, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x3, 0xe1405d56 # load random value
la x13, scratch # base address
sw x3, 0(x13) # store in memory
li x3, 0x4bb1913b # load another value into integer register
amomaxu.w x14, x3, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x8, 0x9ece2d46 # load random value
la x5, scratch # base address
sw x8, 0(x5) # store in memory
li x8, 0x65ec149f # load another value into integer register
amomaxu.w x15, x8, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x7, 0x77162f55 # load random value
la x29, scratch # base address
sw x7, 0(x29) # store in memory
li x7, 0x736bb6f3 # load another value into integer register
amomaxu.w x16, x7, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x27, 0xcfdb2409 # load random value
la x16, scratch # base address
sw x27, 0(x16) # store in memory
li x27, 0x1368595f # load another value into integer register
amomaxu.w x17, x27, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x24, 0x93fd3242 # load random value
la x31, scratch # base address
sw x24, 0(x31) # store in memory
li x24, 0x889332a0 # load another value into integer register
amomaxu.w x18, x24, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x24, 0xf5663ba2 # load random value
la x20, scratch # base address
sw x24, 0(x20) # store in memory
li x24, 0x8d5d4a29 # load another value into integer register
amomaxu.w x19, x24, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x24, 0x9520a065 # load random value
la x31, scratch # base address
sw x24, 0(x31) # store in memory
li x24, 0x07eb3fd3 # load another value into integer register
amomaxu.w x20, x24, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x31, 0x08673899 # load random value
la x29, scratch # base address
sw x31, 0(x29) # store in memory
li x31, 0xb8621307 # load another value into integer register
amomaxu.w x21, x31, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x7, 0xcb91b507 # load random value
la x5, scratch # base address
sw x7, 0(x5) # store in memory
li x7, 0x98f0b1a4 # load another value into integer register
amomaxu.w x22, x7, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x30, 0x6da260d0 # load random value
la x5, scratch # base address
sw x30, 0(x5) # store in memory
li x30, 0x4458d553 # load another value into integer register
amomaxu.w x23, x30, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x5, 0xd9d9ef38 # load random value
la x21, scratch # base address
sw x5, 0(x21) # store in memory
li x5, 0x5b6010fc # load another value into integer register
amomaxu.w x24, x5, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x18, 0x8faa33bc # load random value
la x6, scratch # base address
sw x18, 0(x6) # store in memory
li x18, 0xe565e713 # load another value into integer register
amomaxu.w x25, x18, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x8, 0x5633859c # load random value
la x19, scratch # base address
sw x8, 0(x19) # store in memory
li x8, 0xec4e005b # load another value into integer register
amomaxu.w x26, x8, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x24, 0x575f2af0 # load random value
la x9, scratch # base address
sw x24, 0(x9) # store in memory
li x24, 0x0040379c # load another value into integer register
amomaxu.w x27, x24, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x11, 0xca53bb00 # load random value
la x25, scratch # base address
sw x11, 0(x25) # store in memory
li x11, 0x6763c8ec # load another value into integer register
amomaxu.w x28, x11, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x31, 0x2e1a5b78 # load random value
la x3, scratch # base address
sw x31, 0(x3) # store in memory
li x31, 0x3aa02c2a # load another value into integer register
amomaxu.w x29, x31, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x19, 0x539fa584 # load random value
la x29, scratch # base address
sw x19, 0(x29) # store in memory
li x19, 0x7247be73 # load another value into integer register
amomaxu.w x30, x19, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x17, 0x0162fcf2 # load random value
la x14, scratch # base address
sw x17, 0(x14) # store in memory
li x17, 0x786a664a # load another value into integer register
amomaxu.w x31, x17, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0xe5192a24 # load random value
la x18, scratch # base address
sw x20, 0(x18) # store in memory
li x20, 0x00000000 # load another value into integer register
amomaxu.w x29, x20, (x18) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x12, 0x8e2aa2d3 # load random value
la x3, scratch # base address
sw x12, 0(x3) # store in memory
li x12, 0x00000001 # load another value into integer register
amomaxu.w x6, x12, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x5, 0x8fc1c9de # load random value
la x25, scratch # base address
sw x5, 0(x25) # store in memory
li x5, 0x00000002 # load another value into integer register
amomaxu.w x3, x5, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x28, 0x158ca96d # load random value
la x14, scratch # base address
sw x28, 0(x14) # store in memory
li x28, 0x80000000 # load another value into integer register
amomaxu.w x3, x28, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x2, 0x8084075c # load random value
la x20, scratch # base address
sw x2, 0(x20) # store in memory
li x2, 0x80000001 # load another value into integer register
amomaxu.w x16, x2, (x20) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x28, 0xd7d49e12 # load random value
la x8, scratch # base address
sw x28, 0(x8) # store in memory
li x28, 0x7fffffff # load another value into integer register
amomaxu.w x27, x28, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x7, 0x10041d11 # load random value
la x21, scratch # base address
sw x7, 0(x21) # store in memory
li x7, 0x7ffffffe # load another value into integer register
amomaxu.w x20, x7, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x23, 0x614cf94f # load random value
la x19, scratch # base address
sw x23, 0(x19) # store in memory
li x23, 0xffffffff # load another value into integer register
amomaxu.w x10, x23, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0xd25256e1 # load random value
la x20, scratch # base address
sw x6, 0(x20) # store in memory
li x6, 0xfffffffe # load another value into integer register
amomaxu.w x12, x6, (x20) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x5, 0xa05eafad # load random value
la x30, scratch # base address
sw x5, 0(x30) # store in memory
li x5, 0x5bbc8872 # load another value into integer register
amomaxu.w x29, x5, (x30) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x11, 0x8db374d3 # load random value
la x1, scratch # base address
sw x11, 0(x1) # store in memory
li x11, 0xaaaaaaaa # load another value into integer register
amomaxu.w x12, x11, (x1) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x14, 0x1462af38 # load random value
la x13, scratch # base address
sw x14, 0(x13) # store in memory
li x14, 0x55555555 # load another value into integer register
amomaxu.w x17, x14, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xa7ee374b # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amomaxu.w x11, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xb948bd9f # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amomaxu.w x8, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2eaeaf1d # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amomaxu.w x21, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa0b93090 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amomaxu.w x23, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7d4b6118 # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amomaxu.w x25, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7a397112 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amomaxu.w x23, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa8cb4809 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amomaxu.w x18, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xa33c749c # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amomaxu.w x16, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xf5b549cf # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amomaxu.w x24, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa1dabbbf # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amomaxu.w x19, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x0286a64e # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amomaxu.w x11, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x7fd23819 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amomaxu.w x10, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x471b3a2a # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amomaxu.w x21, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x650abf06 # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amomaxu.w x3, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x66a127f2 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amomaxu.w x25, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x1e523d8d # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amomaxu.w x9, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x4ee8187e # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amomaxu.w x31, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x0643eaaa # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amomaxu.w x2, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xef7179b6 # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amomaxu.w x7, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x311688e8 # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amomaxu.w x21, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x3e73885e # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amomaxu.w x7, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xbf1aecd9 # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amomaxu.w x10, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x4daad486 # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amomaxu.w x1, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x34e5c219 # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amomaxu.w x22, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xd13974d5 # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amomaxu.w x15, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x93ba8448 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amomaxu.w x21, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xd580506a # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amomaxu.w x5, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xb5a117f6 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amomaxu.w x29, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xf511a795 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amomaxu.w x17, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xa0dc6f99 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amomaxu.w x21, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x2c705b6c # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amomaxu.w x18, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x24, 0xd126f38c # load random value
la x1, scratch # base address
sw x24, 0(x1) # store in memory
li x24, 0xe459d238 # load another value into integer register
amomaxu.w x1, x24, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x21, 0x31488f3b # load random value
la x2, scratch # base address
sw x21, 0(x2) # store in memory
li x21, 0x28ce3771 # load another value into integer register
amomaxu.w x2, x21, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x13, 0x990d4459 # load random value
la x3, scratch # base address
sw x13, 0(x3) # store in memory
li x13, 0xc5e20c0b # load another value into integer register
amomaxu.w x3, x13, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x2ca333ab # load random value
la x4, scratch # base address
sw x11, 0(x4) # store in memory
li x11, 0xb9272d4a # load another value into integer register
amomaxu.w x4, x11, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x85b3982e # load random value
la x5, scratch # base address
sw x23, 0(x5) # store in memory
li x23, 0x8f8dd452 # load another value into integer register
amomaxu.w x5, x23, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x859c3107 # load random value
la x6, scratch # base address
sw x1, 0(x6) # store in memory
li x1, 0x21683679 # load another value into integer register
amomaxu.w x6, x1, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0xa568bfbe # load random value
la x7, scratch # base address
sw x6, 0(x7) # store in memory
li x6, 0x541b5b53 # load another value into integer register
amomaxu.w x7, x6, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x3, 0x58c26a08 # load random value
la x8, scratch # base address
sw x3, 0(x8) # store in memory
li x3, 0x20fcb257 # load another value into integer register
amomaxu.w x8, x3, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x26, 0x545b2f10 # load random value
la x9, scratch # base address
sw x26, 0(x9) # store in memory
li x26, 0xb2fb0419 # load another value into integer register
amomaxu.w x9, x26, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x29, 0x9c27e8a9 # load random value
la x10, scratch # base address
sw x29, 0(x10) # store in memory
li x29, 0xb3d8bf16 # load another value into integer register
amomaxu.w x10, x29, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x31, 0x3354beaa # load random value
la x11, scratch # base address
sw x31, 0(x11) # store in memory
li x31, 0xe9cd4a83 # load another value into integer register
amomaxu.w x11, x31, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x6, 0xd570967b # load random value
la x12, scratch # base address
sw x6, 0(x12) # store in memory
li x6, 0x8629cb69 # load another value into integer register
amomaxu.w x12, x6, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x26, 0x8d065dbc # load random value
la x13, scratch # base address
sw x26, 0(x13) # store in memory
li x26, 0xa123407e # load another value into integer register
amomaxu.w x13, x26, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x20, 0xd2e622c6 # load random value
la x14, scratch # base address
sw x20, 0(x14) # store in memory
li x20, 0x9917d92c # load another value into integer register
amomaxu.w x14, x20, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x13, 0x0dc2bf15 # load random value
la x15, scratch # base address
sw x13, 0(x15) # store in memory
li x13, 0x8c207248 # load another value into integer register
amomaxu.w x15, x13, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x15, 0x134054e2 # load random value
la x16, scratch # base address
sw x15, 0(x16) # store in memory
li x15, 0x1c2da7d1 # load another value into integer register
amomaxu.w x16, x15, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x8, 0xb107be75 # load random value
la x17, scratch # base address
sw x8, 0(x17) # store in memory
li x8, 0xb6e43171 # load another value into integer register
amomaxu.w x17, x8, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x5, 0x5bd34483 # load random value
la x18, scratch # base address
sw x5, 0(x18) # store in memory
li x5, 0x826ff1b8 # load another value into integer register
amomaxu.w x18, x5, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x9, 0xd820d7b8 # load random value
la x19, scratch # base address
sw x9, 0(x19) # store in memory
li x9, 0x39afff38 # load another value into integer register
amomaxu.w x19, x9, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x16, 0x7ef9751f # load random value
la x20, scratch # base address
sw x16, 0(x20) # store in memory
li x16, 0xe5dcf0b7 # load another value into integer register
amomaxu.w x20, x16, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x23, 0xbd9941a2 # load random value
la x21, scratch # base address
sw x23, 0(x21) # store in memory
li x23, 0x1943478a # load another value into integer register
amomaxu.w x21, x23, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x5, 0x6bcf5c04 # load random value
la x22, scratch # base address
sw x5, 0(x22) # store in memory
li x5, 0xccb2db18 # load another value into integer register
amomaxu.w x22, x5, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x25, 0x180590c5 # load random value
la x23, scratch # base address
sw x25, 0(x23) # store in memory
li x25, 0xb4f967cb # load another value into integer register
amomaxu.w x23, x25, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x568c9dba # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amomaxu.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x31, 0x32e0f50c # load random value
la x25, scratch # base address
sw x31, 0(x25) # store in memory
li x31, 0x7c5ecd68 # load another value into integer register
amomaxu.w x25, x31, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x21, 0xb76b996c # load random value
la x26, scratch # base address
sw x21, 0(x26) # store in memory
li x21, 0x83aad6e0 # load another value into integer register
amomaxu.w x26, x21, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x18, 0x543ba77f # load random value
la x27, scratch # base address
sw x18, 0(x27) # store in memory
li x18, 0xcad7655a # load another value into integer register
amomaxu.w x27, x18, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x15, 0xf08a9a47 # load random value
la x28, scratch # base address
sw x15, 0(x28) # store in memory
li x15, 0xb9f75f68 # load another value into integer register
amomaxu.w x28, x15, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x23, 0xf0f856d5 # load random value
la x29, scratch # base address
sw x23, 0(x29) # store in memory
li x23, 0x138cf6d7 # load another value into integer register
amomaxu.w x29, x23, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x9, 0x7489a73f # load random value
la x30, scratch # base address
sw x9, 0(x30) # store in memory
li x9, 0x560b0f65 # load another value into integer register
amomaxu.w x30, x9, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x26, 0xcaea0b1b # load random value
la x31, scratch # base address
sw x26, 0(x31) # store in memory
li x26, 0x59ad00cf # load another value into integer register
amomaxu.w x31, x26, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x093e09a2 # load random value
la x15, scratch # base address
sw x0, 0(x15) # store in memory
li x0, 0x2684f2ed # load another value into integer register
amomaxu.w x0, x0, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xe9b1ccb5 # load random value
la x17, scratch # base address
sw x1, 0(x17) # store in memory
li x1, 0x203a373f # load another value into integer register
amomaxu.w x1, x1, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x2b05a412 # load random value
la x14, scratch # base address
sw x2, 0(x14) # store in memory
li x2, 0xffd1f4f5 # load another value into integer register
amomaxu.w x2, x2, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xafdeb5b5 # load random value
la x25, scratch # base address
sw x3, 0(x25) # store in memory
li x3, 0x3e4c4042 # load another value into integer register
amomaxu.w x3, x3, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6bd1d397 # load random value
la x20, scratch # base address
sw x4, 0(x20) # store in memory
li x4, 0xd764edc4 # load another value into integer register
amomaxu.w x4, x4, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7e4752f9 # load random value
la x2, scratch # base address
sw x5, 0(x2) # store in memory
li x5, 0x1131c43f # load another value into integer register
amomaxu.w x5, x5, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4d807f21 # load random value
la x2, scratch # base address
sw x6, 0(x2) # store in memory
li x6, 0xac041d00 # load another value into integer register
amomaxu.w x6, x6, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9dfb6cff # load random value
la x3, scratch # base address
sw x7, 0(x3) # store in memory
li x7, 0x546d9495 # load another value into integer register
amomaxu.w x7, x7, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x505aff78 # load random value
la x30, scratch # base address
sw x8, 0(x30) # store in memory
li x8, 0xe22cc9e9 # load another value into integer register
amomaxu.w x8, x8, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x1ea2c271 # load random value
la x22, scratch # base address
sw x9, 0(x22) # store in memory
li x9, 0x31de9c8f # load another value into integer register
amomaxu.w x9, x9, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x58733d9c # load random value
la x24, scratch # base address
sw x10, 0(x24) # store in memory
li x10, 0xe03d7098 # load another value into integer register
amomaxu.w x10, x10, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xa1aa8c8b # load random value
la x18, scratch # base address
sw x11, 0(x18) # store in memory
li x11, 0xf97c6df2 # load another value into integer register
amomaxu.w x11, x11, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x6b51d80a # load random value
la x2, scratch # base address
sw x12, 0(x2) # store in memory
li x12, 0xb5cbe0f5 # load another value into integer register
amomaxu.w x12, x12, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x8239be61 # load random value
la x12, scratch # base address
sw x13, 0(x12) # store in memory
li x13, 0xdefe7d15 # load another value into integer register
amomaxu.w x13, x13, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x133c50a0 # load random value
la x10, scratch # base address
sw x14, 0(x10) # store in memory
li x14, 0x0422463d # load another value into integer register
amomaxu.w x14, x14, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xb92bed07 # load random value
la x31, scratch # base address
sw x15, 0(x31) # store in memory
li x15, 0xf1eb2bfc # load another value into integer register
amomaxu.w x15, x15, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x6dca9f2c # load random value
la x21, scratch # base address
sw x16, 0(x21) # store in memory
li x16, 0x01e52016 # load another value into integer register
amomaxu.w x16, x16, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x09f0b135 # load random value
la x12, scratch # base address
sw x17, 0(x12) # store in memory
li x17, 0x759736b8 # load another value into integer register
amomaxu.w x17, x17, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0xb23aa944 # load random value
la x2, scratch # base address
sw x18, 0(x2) # store in memory
li x18, 0xedbf945a # load another value into integer register
amomaxu.w x18, x18, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0xaede298e # load random value
la x12, scratch # base address
sw x19, 0(x12) # store in memory
li x19, 0x7f7abf2d # load another value into integer register
amomaxu.w x19, x19, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x8dc6a7a2 # load random value
la x18, scratch # base address
sw x20, 0(x18) # store in memory
li x20, 0x82f20c11 # load another value into integer register
amomaxu.w x20, x20, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x1c1bb935 # load random value
la x26, scratch # base address
sw x21, 0(x26) # store in memory
li x21, 0x99ea8423 # load another value into integer register
amomaxu.w x21, x21, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x8a9f7699 # load random value
la x17, scratch # base address
sw x22, 0(x17) # store in memory
li x22, 0x06e8a333 # load another value into integer register
amomaxu.w x22, x22, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x2248bbdf # load random value
la x10, scratch # base address
sw x23, 0(x10) # store in memory
li x23, 0x0107be25 # load another value into integer register
amomaxu.w x23, x23, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x4707d143 # load random value
la x21, scratch # base address
sw x24, 0(x21) # store in memory
li x24, 0x67a353bf # load another value into integer register
amomaxu.w x24, x24, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x970c82e6 # load random value
la x29, scratch # base address
sw x25, 0(x29) # store in memory
li x25, 0x73aae88a # load another value into integer register
amomaxu.w x25, x25, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0xb74df144 # load random value
la x15, scratch # base address
sw x26, 0(x15) # store in memory
li x26, 0xe921eafd # load another value into integer register
amomaxu.w x26, x26, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x7d937c06 # load random value
la x3, scratch # base address
sw x27, 0(x3) # store in memory
li x27, 0x2ec9ceca # load another value into integer register
amomaxu.w x27, x27, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0xd5ad13c2 # load random value
la x20, scratch # base address
sw x28, 0(x20) # store in memory
li x28, 0x238d582c # load another value into integer register
amomaxu.w x28, x28, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x88f0bf8b # load random value
la x8, scratch # base address
sw x29, 0(x8) # store in memory
li x29, 0x24581506 # load another value into integer register
amomaxu.w x29, x29, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x7516e0b7 # load random value
la x14, scratch # base address
sw x30, 0(x14) # store in memory
li x30, 0xf0104709 # load another value into integer register
amomaxu.w x30, x30, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x3c585af0 # load random value
la x11, scratch # base address
sw x31, 0(x11) # store in memory
li x31, 0xb2c71780 # load another value into integer register
amomaxu.w x31, x31, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xe74bc8f9 # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amomaxu.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x48c0e703 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amomaxu.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xcdb08c5f # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amomaxu.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0aa9a675 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amomaxu.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x835b8ca0 # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amomaxu.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7539c588 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amomaxu.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3aead346 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amomaxu.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xed7bc562 # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amomaxu.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x13d8e96c # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amomaxu.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x3abc2fc3 # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amomaxu.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x9aed73b6 # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amomaxu.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xbc1efcf4 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amomaxu.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x4ab55b6e # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amomaxu.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x61c00f45 # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amomaxu.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xcd6cd5c2 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amomaxu.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x08e98a3c # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amomaxu.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x7396c197 # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amomaxu.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x7ac52df3 # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amomaxu.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xb6ee6d09 # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amomaxu.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x57915503 # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amomaxu.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x7054275a # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amomaxu.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xd3d0df6c # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amomaxu.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x75a73ea9 # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amomaxu.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x82a310d8 # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amomaxu.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xf522ce29 # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amomaxu.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x6dde0e92 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amomaxu.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xb259f80d # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amomaxu.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x2f747b01 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amomaxu.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x7e47e229 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amomaxu.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x4b7e9d4b # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amomaxu.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x8474fad9 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amomaxu.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x6, scratch
add x23, x20, x26 # perform first operation
amomaxu.w x10, x22, (x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x16, scratch
add x3, x25, x13 # perform first operation
amomaxu.w x24, x19, (x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x15, scratch
add x30, x16, x1 # perform first operation
amomaxu.w x10, x14, (x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x17, scratch
add x6, x6, x0 # perform first operation
amomaxu.w x15, x6, (x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x13, scratch
add x13, x13, x0 # perform first operation
amomaxu.w x5, x13, (x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x20, scratch
add x28, x28, x0 # perform first operation
amomaxu.w x21, x11, (x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x14, scratch
add x21, x17, x26 # perform first operation
amomaxu.w x21, x18, (x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x8, scratch
add x21, x17, x30 # perform first operation
amomaxu.w x21, x5, (x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x25, scratch
add x2, x16, x13 # perform first operation
amomaxu.w x2, x21, (x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x31, scratch
add x9, x19, x10 # perform first operation
amomaxu.w x19, x17, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x18, scratch
add x11, x13, x3 # perform first operation
amomaxu.w x3, x2, (x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x11, scratch
add x21, x2, x17 # perform first operation
amomaxu.w x8, x18, (x11) # perform second (triggering) operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-amoand.w.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x15, 0x7e0e21a1 # load random value
la x1, scratch # base address
sw x15, 0(x1) # store in memory
li x15, 0xdfad9a7a # load another value into integer register
amoand.w x8, x15, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x21, 0x7aa741f8 # load random value
la x2, scratch # base address
sw x21, 0(x2) # store in memory
li x21, 0x824fc238 # load another value into integer register
amoand.w x11, x21, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x9, 0x5c3dd78a # load random value
la x3, scratch # base address
sw x9, 0(x3) # store in memory
li x9, 0x1e089c1b # load another value into integer register
amoand.w x25, x9, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0xf40c143c # load random value
la x4, scratch # base address
sw x7, 0(x4) # store in memory
li x7, 0x23241ec2 # load another value into integer register
amoand.w x23, x7, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x3f8de24a # load random value
la x5, scratch # base address
sw x9, 0(x5) # store in memory
li x9, 0x8cf23a1b # load another value into integer register
amoand.w x12, x9, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0x2cae967e # load random value
la x6, scratch # base address
sw x30, 0(x6) # store in memory
li x30, 0x6cb494ba # load another value into integer register
amoand.w x11, x30, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0x179308af # load random value
la x7, scratch # base address
sw x8, 0(x7) # store in memory
li x8, 0xb51f42ba # load another value into integer register
amoand.w x9, x8, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x2, 0xb0106a40 # load random value
la x8, scratch # base address
sw x2, 0(x8) # store in memory
li x2, 0xd21b9e1b # load another value into integer register
amoand.w x23, x2, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x27, 0xf04dd7a7 # load random value
la x9, scratch # base address
sw x27, 0(x9) # store in memory
li x27, 0xc7ed0710 # load another value into integer register
amoand.w x13, x27, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0x160a0350 # load random value
la x10, scratch # base address
sw x15, 0(x10) # store in memory
li x15, 0xb8063f99 # load another value into integer register
amoand.w x8, x15, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x27, 0x0125f5e0 # load random value
la x11, scratch # base address
sw x27, 0(x11) # store in memory
li x27, 0x1fd62472 # load another value into integer register
amoand.w x12, x27, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0x357004d3 # load random value
la x12, scratch # base address
sw x8, 0(x12) # store in memory
li x8, 0x91455e89 # load another value into integer register
amoand.w x17, x8, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x9, 0x79e434dc # load random value
la x13, scratch # base address
sw x9, 0(x13) # store in memory
li x9, 0x8896b8fe # load another value into integer register
amoand.w x3, x9, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x7, 0xd3231877 # load random value
la x14, scratch # base address
sw x7, 0(x14) # store in memory
li x7, 0x0216a20d # load another value into integer register
amoand.w x15, x7, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x2, 0x5935c38d # load random value
la x15, scratch # base address
sw x2, 0(x15) # store in memory
li x2, 0xff52a87a # load another value into integer register
amoand.w x11, x2, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x1, 0x98c6db07 # load random value
la x16, scratch # base address
sw x1, 0(x16) # store in memory
li x1, 0xd5c65480 # load another value into integer register
amoand.w x25, x1, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x9, 0x5120930d # load random value
la x17, scratch # base address
sw x9, 0(x17) # store in memory
li x9, 0x8a6bc9ab # load another value into integer register
amoand.w x13, x9, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x12, 0xde121f88 # load random value
la x18, scratch # base address
sw x12, 0(x18) # store in memory
li x12, 0x15e20bd5 # load another value into integer register
amoand.w x14, x12, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x24, 0x1ffb9a35 # load random value
la x19, scratch # base address
sw x24, 0(x19) # store in memory
li x24, 0x2d033651 # load another value into integer register
amoand.w x9, x24, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x22, 0x21fdfc11 # load random value
la x20, scratch # base address
sw x22, 0(x20) # store in memory
li x22, 0x2e6dcfb9 # load another value into integer register
amoand.w x7, x22, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x28, 0x7497d116 # load random value
la x21, scratch # base address
sw x28, 0(x21) # store in memory
li x28, 0x4ccdfdc0 # load another value into integer register
amoand.w x31, x28, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x8, 0x41a2ff67 # load random value
la x22, scratch # base address
sw x8, 0(x22) # store in memory
li x8, 0xbb57fec0 # load another value into integer register
amoand.w x25, x8, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x31, 0x278b54da # load random value
la x23, scratch # base address
sw x31, 0(x23) # store in memory
li x31, 0x83e98961 # load another value into integer register
amoand.w x18, x31, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x19, 0xd532e7b4 # load random value
la x24, scratch # base address
sw x19, 0(x24) # store in memory
li x19, 0x7f007100 # load another value into integer register
amoand.w x8, x19, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x11, 0xa3a4a8e4 # load random value
la x25, scratch # base address
sw x11, 0(x25) # store in memory
li x11, 0xf676e651 # load another value into integer register
amoand.w x12, x11, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x21, 0x3e86f78a # load random value
la x26, scratch # base address
sw x21, 0(x26) # store in memory
li x21, 0xc966bf63 # load another value into integer register
amoand.w x11, x21, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x3, 0x060b9d33 # load random value
la x27, scratch # base address
sw x3, 0(x27) # store in memory
li x3, 0x7f914452 # load another value into integer register
amoand.w x9, x3, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x23, 0x1fec5677 # load random value
la x28, scratch # base address
sw x23, 0(x28) # store in memory
li x23, 0x6c609938 # load another value into integer register
amoand.w x7, x23, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x24, 0x7ed8b746 # load random value
la x29, scratch # base address
sw x24, 0(x29) # store in memory
li x24, 0x402f85b7 # load another value into integer register
amoand.w x1, x24, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x27, 0x3a615144 # load random value
la x30, scratch # base address
sw x27, 0(x30) # store in memory
li x27, 0x6f5716c8 # load another value into integer register
amoand.w x28, x27, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x12, 0x58896b28 # load random value
la x31, scratch # base address
sw x12, 0(x31) # store in memory
li x12, 0x1916001d # load another value into integer register
amoand.w x26, x12, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x0063fb2b # load random value
la x25, scratch # base address
sw x0, 0(x25) # store in memory
li x0, 0x518ca512 # load another value into integer register
amoand.w x2, x0, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xb72189f7 # load random value
la x19, scratch # base address
sw x1, 0(x19) # store in memory
li x1, 0x0d8ad858 # load another value into integer register
amoand.w x2, x1, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xaea54a73 # load random value
la x1, scratch # base address
sw x2, 0(x1) # store in memory
li x2, 0xaf25a8a8 # load another value into integer register
amoand.w x28, x2, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0xd8c58df5 # load random value
la x11, scratch # base address
sw x3, 0(x11) # store in memory
li x3, 0x05ba480e # load another value into integer register
amoand.w x27, x3, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd4122493 # load random value
la x15, scratch # base address
sw x4, 0(x15) # store in memory
li x4, 0xc0c2ae41 # load another value into integer register
amoand.w x2, x4, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5841b50e # load random value
la x17, scratch # base address
sw x5, 0(x17) # store in memory
li x5, 0x204700fb # load another value into integer register
amoand.w x29, x5, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcc23aae4 # load random value
la x29, scratch # base address
sw x6, 0(x29) # store in memory
li x6, 0xbda5c43a # load another value into integer register
amoand.w x14, x6, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe33db20e # load random value
la x27, scratch # base address
sw x7, 0(x27) # store in memory
li x7, 0x33564ead # load another value into integer register
amoand.w x1, x7, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x795fa868 # load random value
la x24, scratch # base address
sw x8, 0(x24) # store in memory
li x8, 0xe77e14bc # load another value into integer register
amoand.w x27, x8, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x3e466f5f # load random value
la x18, scratch # base address
sw x9, 0(x18) # store in memory
li x9, 0xef313b90 # load another value into integer register
amoand.w x15, x9, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x2b5a0059 # load random value
la x2, scratch # base address
sw x10, 0(x2) # store in memory
li x10, 0xde8a0584 # load another value into integer register
amoand.w x28, x10, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x50085425 # load random value
la x5, scratch # base address
sw x11, 0(x5) # store in memory
li x11, 0x004c04b1 # load another value into integer register
amoand.w x3, x11, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xac3d9ffa # load random value
la x1, scratch # base address
sw x12, 0(x1) # store in memory
li x12, 0x2df842ea # load another value into integer register
amoand.w x21, x12, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xa409942d # load random value
la x18, scratch # base address
sw x13, 0(x18) # store in memory
li x13, 0x2b6b50df # load another value into integer register
amoand.w x2, x13, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x45d37aa8 # load random value
la x12, scratch # base address
sw x14, 0(x12) # store in memory
li x14, 0x3f67a48c # load another value into integer register
amoand.w x18, x14, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xf31645d1 # load random value
la x18, scratch # base address
sw x15, 0(x18) # store in memory
li x15, 0x200f4df6 # load another value into integer register
amoand.w x9, x15, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xd03b7065 # load random value
la x5, scratch # base address
sw x16, 0(x5) # store in memory
li x16, 0xa79cc02c # load another value into integer register
amoand.w x13, x16, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xb9dcbfa6 # load random value
la x3, scratch # base address
sw x17, 0(x3) # store in memory
li x17, 0x17f9d00b # load another value into integer register
amoand.w x22, x17, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xeb7aa77d # load random value
la x23, scratch # base address
sw x18, 0(x23) # store in memory
li x18, 0x028be1e8 # load another value into integer register
amoand.w x26, x18, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x25aa8d93 # load random value
la x12, scratch # base address
sw x19, 0(x12) # store in memory
li x19, 0xd1d61e7c # load another value into integer register
amoand.w x25, x19, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xde6acbb2 # load random value
la x11, scratch # base address
sw x20, 0(x11) # store in memory
li x20, 0x220a9746 # load another value into integer register
amoand.w x6, x20, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x83f10d52 # load random value
la x20, scratch # base address
sw x21, 0(x20) # store in memory
li x21, 0x673c6139 # load another value into integer register
amoand.w x31, x21, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x9770f501 # load random value
la x14, scratch # base address
sw x22, 0(x14) # store in memory
li x22, 0xa166944a # load another value into integer register
amoand.w x9, x22, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0xbe146e3f # load random value
la x22, scratch # base address
sw x23, 0(x22) # store in memory
li x23, 0x3ff91bf2 # load another value into integer register
amoand.w x11, x23, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x04bcb4aa # load random value
la x27, scratch # base address
sw x24, 0(x27) # store in memory
li x24, 0xea033e37 # load another value into integer register
amoand.w x30, x24, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xd3dee8ee # load random value
la x2, scratch # base address
sw x25, 0(x2) # store in memory
li x25, 0x4b92d70d # load another value into integer register
amoand.w x1, x25, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x13fa73eb # load random value
la x23, scratch # base address
sw x26, 0(x23) # store in memory
li x26, 0x22aa084e # load another value into integer register
amoand.w x15, x26, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x7f8e89e4 # load random value
la x30, scratch # base address
sw x27, 0(x30) # store in memory
li x27, 0x052c20f8 # load another value into integer register
amoand.w x29, x27, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x5bc972ee # load random value
la x24, scratch # base address
sw x28, 0(x24) # store in memory
li x28, 0xcc601932 # load another value into integer register
amoand.w x17, x28, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x64d35dca # load random value
la x21, scratch # base address
sw x29, 0(x21) # store in memory
li x29, 0x2218a551 # load another value into integer register
amoand.w x25, x29, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x67348758 # load random value
la x12, scratch # base address
sw x30, 0(x12) # store in memory
li x30, 0x9c1a219b # load another value into integer register
amoand.w x14, x30, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x3b941a25 # load random value
la x22, scratch # base address
sw x31, 0(x22) # store in memory
li x31, 0x89dac8fa # load another value into integer register
amoand.w x12, x31, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x21, 0x5807b725 # load random value
la x20, scratch # base address
sw x21, 0(x20) # store in memory
li x21, 0x51405f4f # load another value into integer register
amoand.w x0, x21, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x26, 0x3d7d37bf # load random value
la x10, scratch # base address
sw x26, 0(x10) # store in memory
li x26, 0x841989e3 # load another value into integer register
amoand.w x1, x26, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x19, 0xc26a7cef # load random value
la x26, scratch # base address
sw x19, 0(x26) # store in memory
li x19, 0x6770c200 # load another value into integer register
amoand.w x2, x19, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x22, 0x7fdb0683 # load random value
la x5, scratch # base address
sw x22, 0(x5) # store in memory
li x22, 0x784a19c1 # load another value into integer register
amoand.w x3, x22, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0x8e619fea # load random value
la x2, scratch # base address
sw x16, 0(x2) # store in memory
li x16, 0xc7a9ed1b # load another value into integer register
amoand.w x4, x16, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0x64b90d42 # load random value
la x24, scratch # base address
sw x10, 0(x24) # store in memory
li x10, 0x2c986026 # load another value into integer register
amoand.w x5, x10, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0xa176df3b # load random value
la x27, scratch # base address
sw x29, 0(x27) # store in memory
li x29, 0x5eefd18e # load another value into integer register
amoand.w x6, x29, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x6320e367 # load random value
la x4, scratch # base address
sw x3, 0(x4) # store in memory
li x3, 0xd4a515cc # load another value into integer register
amoand.w x7, x3, (x4) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x10, 0x322cd20d # load random value
la x12, scratch # base address
sw x10, 0(x12) # store in memory
li x10, 0x1ae6372f # load another value into integer register
amoand.w x8, x10, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x11, 0x26f01034 # load random value
la x14, scratch # base address
sw x11, 0(x14) # store in memory
li x11, 0xf8391256 # load another value into integer register
amoand.w x9, x11, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x1, 0xdcac4d8c # load random value
la x11, scratch # base address
sw x1, 0(x11) # store in memory
li x1, 0xcb040c6f # load another value into integer register
amoand.w x10, x1, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x6, 0xdc56a6eb # load random value
la x22, scratch # base address
sw x6, 0(x22) # store in memory
li x6, 0x15c8ed1f # load another value into integer register
amoand.w x11, x6, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x1, 0xad6f08e8 # load random value
la x28, scratch # base address
sw x1, 0(x28) # store in memory
li x1, 0x96b71c72 # load another value into integer register
amoand.w x12, x1, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x27, 0xf457c3e3 # load random value
la x12, scratch # base address
sw x27, 0(x12) # store in memory
li x27, 0xd4a9499e # load another value into integer register
amoand.w x13, x27, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x23, 0x804d8eb0 # load random value
la x1, scratch # base address
sw x23, 0(x1) # store in memory
li x23, 0x8d6d247e # load another value into integer register
amoand.w x14, x23, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x8, 0x0adb9b92 # load random value
la x14, scratch # base address
sw x8, 0(x14) # store in memory
li x8, 0x20752b0e # load another value into integer register
amoand.w x15, x8, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x8, 0x69d36aa0 # load random value
la x7, scratch # base address
sw x8, 0(x7) # store in memory
li x8, 0x586fac27 # load another value into integer register
amoand.w x16, x8, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x39ced83f # load random value
la x12, scratch # base address
sw x17, 0(x12) # store in memory
li x17, 0xbbc560da # load another value into integer register
amoand.w x17, x17, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x6, 0xc5fab2b4 # load random value
la x2, scratch # base address
sw x6, 0(x2) # store in memory
li x6, 0x7e988162 # load another value into integer register
amoand.w x18, x6, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x6, 0x810bb3a1 # load random value
la x16, scratch # base address
sw x6, 0(x16) # store in memory
li x6, 0x3125558f # load another value into integer register
amoand.w x19, x6, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x21, 0x8aea8263 # load random value
la x27, scratch # base address
sw x21, 0(x27) # store in memory
li x21, 0x27b99ca0 # load another value into integer register
amoand.w x20, x21, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x28, 0x7b647cfd # load random value
la x25, scratch # base address
sw x28, 0(x25) # store in memory
li x28, 0xbb168d5a # load another value into integer register
amoand.w x21, x28, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x24, 0x7501f1bd # load random value
la x10, scratch # base address
sw x24, 0(x10) # store in memory
li x24, 0x6de5036b # load another value into integer register
amoand.w x22, x24, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x20, 0x6e3984f6 # load random value
la x17, scratch # base address
sw x20, 0(x17) # store in memory
li x20, 0xc7b512da # load another value into integer register
amoand.w x23, x20, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x17, 0x5b1f7af6 # load random value
la x12, scratch # base address
sw x17, 0(x12) # store in memory
li x17, 0xbbabc1bd # load another value into integer register
amoand.w x24, x17, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x30, 0x0a4a61f3 # load random value
la x3, scratch # base address
sw x30, 0(x3) # store in memory
li x30, 0x05a630ed # load another value into integer register
amoand.w x25, x30, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x21, 0x64c5af4a # load random value
la x22, scratch # base address
sw x21, 0(x22) # store in memory
li x21, 0x3c3747e5 # load another value into integer register
amoand.w x26, x21, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x7, 0x25b2d071 # load random value
la x28, scratch # base address
sw x7, 0(x28) # store in memory
li x7, 0xb9034902 # load another value into integer register
amoand.w x27, x7, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x6, 0xd67df8f9 # load random value
la x3, scratch # base address
sw x6, 0(x3) # store in memory
li x6, 0x1fc95271 # load another value into integer register
amoand.w x28, x6, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x21, 0x6412484f # load random value
la x8, scratch # base address
sw x21, 0(x8) # store in memory
li x21, 0x0c769177 # load another value into integer register
amoand.w x29, x21, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x22, 0x7b5cf574 # load random value
la x28, scratch # base address
sw x22, 0(x28) # store in memory
li x22, 0x1335a341 # load another value into integer register
amoand.w x30, x22, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x10, 0xc89e30e8 # load random value
la x4, scratch # base address
sw x10, 0(x4) # store in memory
li x10, 0xe51f71a6 # load another value into integer register
amoand.w x31, x10, (x4) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x24, 0x45b3e2f7 # load random value
la x9, scratch # base address
sw x24, 0(x9) # store in memory
li x24, 0x00000000 # load another value into integer register
amoand.w x15, x24, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0x098a5e4c # load random value
la x24, scratch # base address
sw x6, 0(x24) # store in memory
li x6, 0x00000001 # load another value into integer register
amoand.w x13, x6, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x46673db3 # load random value
la x19, scratch # base address
sw x15, 0(x19) # store in memory
li x15, 0x00000002 # load another value into integer register
amoand.w x14, x15, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x15, 0x7cfb7d41 # load random value
la x14, scratch # base address
sw x15, 0(x14) # store in memory
li x15, 0x80000000 # load another value into integer register
amoand.w x17, x15, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x4, 0x734c21c6 # load random value
la x3, scratch # base address
sw x4, 0(x3) # store in memory
li x4, 0x80000001 # load another value into integer register
amoand.w x1, x4, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x1, 0xa9b87379 # load random value
la x9, scratch # base address
sw x1, 0(x9) # store in memory
li x1, 0x7fffffff # load another value into integer register
amoand.w x20, x1, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x31, 0xe1f8c403 # load random value
la x8, scratch # base address
sw x31, 0(x8) # store in memory
li x31, 0x7ffffffe # load another value into integer register
amoand.w x10, x31, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0x1e58e604 # load random value
la x8, scratch # base address
sw x16, 0(x8) # store in memory
li x16, 0xffffffff # load another value into integer register
amoand.w x25, x16, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x28, 0x87845b65 # load random value
la x22, scratch # base address
sw x28, 0(x22) # store in memory
li x28, 0xfffffffe # load another value into integer register
amoand.w x27, x28, (x22) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x14, 0x4f46f59c # load random value
la x12, scratch # base address
sw x14, 0(x12) # store in memory
li x14, 0x5bbc8872 # load another value into integer register
amoand.w x30, x14, (x12) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x27, 0x8523411e # load random value
la x21, scratch # base address
sw x27, 0(x21) # store in memory
li x27, 0xaaaaaaaa # load another value into integer register
amoand.w x22, x27, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x31, 0xfbea8b96 # load random value
la x26, scratch # base address
sw x31, 0(x26) # store in memory
li x31, 0x55555555 # load another value into integer register
amoand.w x16, x31, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xf6cb29ea # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amoand.w x20, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x9ec8e044 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amoand.w x3, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xc5a0c435 # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amoand.w x25, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x4, 0xf0761af3 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amoand.w x27, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xea6fc32b # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amoand.w x3, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdb47eba3 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amoand.w x2, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x012ceae0 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amoand.w x17, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x76b442ea # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amoand.w x31, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x5bad35b8 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amoand.w x5, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x87618da2 # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amoand.w x27, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x58f689f0 # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amoand.w x21, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xd947ca9d # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amoand.w x28, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x5b9044c1 # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amoand.w x3, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xc1eeb7e1 # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amoand.w x3, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x10f90af2 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amoand.w x21, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x38c670a9 # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amoand.w x8, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x7af8c29f # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amoand.w x25, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x6a2892d2 # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amoand.w x29, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x0128349a # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amoand.w x6, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xf1dec80a # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amoand.w x27, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xfdc029ad # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amoand.w x16, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x0fb6f37d # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amoand.w x13, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x207fabfb # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amoand.w x10, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x8c7fcff1 # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amoand.w x13, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x28537b0c # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amoand.w x8, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x1750efce # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amoand.w x9, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x1a06a695 # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amoand.w x10, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xda690c5c # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amoand.w x25, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x7b37f4d0 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amoand.w x16, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x69cab3b3 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amoand.w x19, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xfa1d64b0 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amoand.w x1, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x21, 0x6f8742b8 # load random value
la x1, scratch # base address
sw x21, 0(x1) # store in memory
li x21, 0x8559f50b # load another value into integer register
amoand.w x1, x21, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x14, 0xe40bbf88 # load random value
la x2, scratch # base address
sw x14, 0(x2) # store in memory
li x14, 0xe77ece0b # load another value into integer register
amoand.w x2, x14, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x23, 0x3ec277b5 # load random value
la x3, scratch # base address
sw x23, 0(x3) # store in memory
li x23, 0x08de874c # load another value into integer register
amoand.w x3, x23, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xa8afd59b # load random value
la x4, scratch # base address
sw x19, 0(x4) # store in memory
li x19, 0x213f262d # load another value into integer register
amoand.w x4, x19, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0xe3a2be18 # load random value
la x5, scratch # base address
sw x14, 0(x5) # store in memory
li x14, 0x63409b7c # load another value into integer register
amoand.w x5, x14, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0xb2801653 # load random value
la x6, scratch # base address
sw x24, 0(x6) # store in memory
li x24, 0x33cf48e1 # load another value into integer register
amoand.w x6, x24, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0x5552dee8 # load random value
la x7, scratch # base address
sw x18, 0(x7) # store in memory
li x18, 0xa52b72bb # load another value into integer register
amoand.w x7, x18, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x3, 0xf792a3ef # load random value
la x8, scratch # base address
sw x3, 0(x8) # store in memory
li x3, 0xb989440c # load another value into integer register
amoand.w x8, x3, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x15, 0x294fd701 # load random value
la x9, scratch # base address
sw x15, 0(x9) # store in memory
li x15, 0xca5d7d4e # load another value into integer register
amoand.w x9, x15, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x19, 0x9e38c9d4 # load random value
la x10, scratch # base address
sw x19, 0(x10) # store in memory
li x19, 0xdff32e91 # load another value into integer register
amoand.w x10, x19, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x5, 0x2c9d7c27 # load random value
la x11, scratch # base address
sw x5, 0(x11) # store in memory
li x5, 0x82e34574 # load another value into integer register
amoand.w x11, x5, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x28, 0x9f616811 # load random value
la x12, scratch # base address
sw x28, 0(x12) # store in memory
li x28, 0x275e9e61 # load another value into integer register
amoand.w x12, x28, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x25, 0x0c1e9eb0 # load random value
la x13, scratch # base address
sw x25, 0(x13) # store in memory
li x25, 0xb0f36973 # load another value into integer register
amoand.w x13, x25, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x23, 0x5cd5e4e9 # load random value
la x14, scratch # base address
sw x23, 0(x14) # store in memory
li x23, 0x030d7d7c # load another value into integer register
amoand.w x14, x23, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x31, 0x4a664ebb # load random value
la x15, scratch # base address
sw x31, 0(x15) # store in memory
li x31, 0x4d6daafc # load another value into integer register
amoand.w x15, x31, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x21, 0xaa5bbf7d # load random value
la x16, scratch # base address
sw x21, 0(x16) # store in memory
li x21, 0xe76e6406 # load another value into integer register
amoand.w x16, x21, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x16, 0xed57f71b # load random value
la x17, scratch # base address
sw x16, 0(x17) # store in memory
li x16, 0x42f7d4ac # load another value into integer register
amoand.w x17, x16, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x27, 0x4b7d7d7b # load random value
la x18, scratch # base address
sw x27, 0(x18) # store in memory
li x27, 0x78fc5501 # load another value into integer register
amoand.w x18, x27, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x27, 0xec105e98 # load random value
la x19, scratch # base address
sw x27, 0(x19) # store in memory
li x27, 0xb02277c6 # load another value into integer register
amoand.w x19, x27, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x25, 0xa1b9853e # load random value
la x20, scratch # base address
sw x25, 0(x20) # store in memory
li x25, 0xae0b8a34 # load another value into integer register
amoand.w x20, x25, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x30, 0xad0c0016 # load random value
la x21, scratch # base address
sw x30, 0(x21) # store in memory
li x30, 0xe512e24c # load another value into integer register
amoand.w x21, x30, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x5, 0xf69f58ed # load random value
la x22, scratch # base address
sw x5, 0(x22) # store in memory
li x5, 0x4bdee9b5 # load another value into integer register
amoand.w x22, x5, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x31, 0x00693542 # load random value
la x23, scratch # base address
sw x31, 0(x23) # store in memory
li x31, 0x34547eb5 # load another value into integer register
amoand.w x23, x31, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x22, 0x1dbf0746 # load random value
la x24, scratch # base address
sw x22, 0(x24) # store in memory
li x22, 0x8d0027c1 # load another value into integer register
amoand.w x24, x22, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x16, 0x403fd617 # load random value
la x25, scratch # base address
sw x16, 0(x25) # store in memory
li x16, 0xb2077a28 # load another value into integer register
amoand.w x25, x16, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x12, 0x7c77b21a # load random value
la x26, scratch # base address
sw x12, 0(x26) # store in memory
li x12, 0xa39b45dd # load another value into integer register
amoand.w x26, x12, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x22, 0x0c21c3eb # load random value
la x27, scratch # base address
sw x22, 0(x27) # store in memory
li x22, 0x175628c5 # load another value into integer register
amoand.w x27, x22, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x33d03fff # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amoand.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x7, 0x1f6f76da # load random value
la x29, scratch # base address
sw x7, 0(x29) # store in memory
li x7, 0x17aa9ee6 # load another value into integer register
amoand.w x29, x7, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4c240d87 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amoand.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x23, 0xa8bb7fea # load random value
la x31, scratch # base address
sw x23, 0(x31) # store in memory
li x23, 0x5484b235 # load another value into integer register
amoand.w x31, x23, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x460be3d9 # load random value
la x25, scratch # base address
sw x0, 0(x25) # store in memory
li x0, 0xfdaa3009 # load another value into integer register
amoand.w x0, x0, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x8837b31b # load random value
la x7, scratch # base address
sw x1, 0(x7) # store in memory
li x1, 0xf59f5879 # load another value into integer register
amoand.w x1, x1, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x7d6ba834 # load random value
la x27, scratch # base address
sw x2, 0(x27) # store in memory
li x2, 0x28a823f4 # load another value into integer register
amoand.w x2, x2, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x9b645b71 # load random value
la x25, scratch # base address
sw x3, 0(x25) # store in memory
li x3, 0x17e6d2a8 # load another value into integer register
amoand.w x3, x3, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc9c1dffe # load random value
la x17, scratch # base address
sw x4, 0(x17) # store in memory
li x4, 0xa5a0a7b5 # load another value into integer register
amoand.w x4, x4, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4dcbabce # load random value
la x6, scratch # base address
sw x5, 0(x6) # store in memory
li x5, 0x97a43dfd # load another value into integer register
amoand.w x5, x5, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
li x6, 0x62bb60ad # load random value
la x21, scratch # base address
sw x6, 0(x21) # store in memory
li x6, 0x1e872d6a # load another value into integer register
amoand.w x6, x6, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5f6c3ff8 # load random value
la x16, scratch # base address
sw x7, 0(x16) # store in memory
li x7, 0x0a980a4b # load another value into integer register
amoand.w x7, x7, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xe5b12f00 # load random value
la x16, scratch # base address
sw x8, 0(x16) # store in memory
li x8, 0xb935574c # load another value into integer register
amoand.w x8, x8, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x5c82c196 # load random value
la x17, scratch # base address
sw x9, 0(x17) # store in memory
li x9, 0x77a0dd6c # load another value into integer register
amoand.w x9, x9, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xd3a91741 # load random value
la x21, scratch # base address
sw x10, 0(x21) # store in memory
li x10, 0x8c75f73d # load another value into integer register
amoand.w x10, x10, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x82379401 # load random value
la x29, scratch # base address
sw x11, 0(x29) # store in memory
li x11, 0xa3e2ee57 # load another value into integer register
amoand.w x11, x11, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xbe213f6a # load random value
la x21, scratch # base address
sw x12, 0(x21) # store in memory
li x12, 0x69f58fc4 # load another value into integer register
amoand.w x12, x12, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x7177de2a # load random value
la x31, scratch # base address
sw x13, 0(x31) # store in memory
li x13, 0x80ba6fd6 # load another value into integer register
amoand.w x13, x13, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xa482d224 # load random value
la x6, scratch # base address
sw x14, 0(x6) # store in memory
li x14, 0x78ef7abe # load another value into integer register
amoand.w x14, x14, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x8edd4ad1 # load random value
la x17, scratch # base address
sw x15, 0(x17) # store in memory
li x15, 0x9b3684ac # load another value into integer register
amoand.w x15, x15, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xf8095557 # load random value
la x19, scratch # base address
sw x16, 0(x19) # store in memory
li x16, 0x689ea780 # load another value into integer register
amoand.w x16, x16, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x53ccefe4 # load random value
la x6, scratch # base address
sw x17, 0(x6) # store in memory
li x17, 0x4939477c # load another value into integer register
amoand.w x17, x17, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x692327e9 # load random value
la x17, scratch # base address
sw x18, 0(x17) # store in memory
li x18, 0x0c5ae550 # load another value into integer register
amoand.w x18, x18, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x20330487 # load random value
la x6, scratch # base address
sw x19, 0(x6) # store in memory
li x19, 0x26b443d8 # load another value into integer register
amoand.w x19, x19, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x82051328 # load random value
la x8, scratch # base address
sw x20, 0(x8) # store in memory
li x20, 0x4e76145a # load another value into integer register
amoand.w x20, x20, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x246c05ea # load random value
la x2, scratch # base address
sw x21, 0(x2) # store in memory
li x21, 0x786893af # load another value into integer register
amoand.w x21, x21, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0xb2265115 # load random value
la x23, scratch # base address
sw x22, 0(x23) # store in memory
li x22, 0xe822a62d # load another value into integer register
amoand.w x22, x22, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xbc38ff43 # load random value
la x30, scratch # base address
sw x23, 0(x30) # store in memory
li x23, 0xbf5a0546 # load another value into integer register
amoand.w x23, x23, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0xdba701eb # load random value
la x22, scratch # base address
sw x24, 0(x22) # store in memory
li x24, 0x346f03f3 # load another value into integer register
amoand.w x24, x24, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x8fd68427 # load random value
la x19, scratch # base address
sw x25, 0(x19) # store in memory
li x25, 0xd48a738d # load another value into integer register
amoand.w x25, x25, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x0d071efa # load random value
la x30, scratch # base address
sw x26, 0(x30) # store in memory
li x26, 0x60e373da # load another value into integer register
amoand.w x26, x26, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x6e12327e # load random value
la x24, scratch # base address
sw x27, 0(x24) # store in memory
li x27, 0xc3d6feba # load another value into integer register
amoand.w x27, x27, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x7cae6af3 # load random value
la x17, scratch # base address
sw x28, 0(x17) # store in memory
li x28, 0x1fecfabd # load another value into integer register
amoand.w x28, x28, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xaaa9a05a # load random value
la x5, scratch # base address
sw x29, 0(x5) # store in memory
li x29, 0x7cd478ef # load another value into integer register
amoand.w x29, x29, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x2b4f232d # load random value
la x3, scratch # base address
sw x30, 0(x3) # store in memory
li x30, 0xb56081a3 # load another value into integer register
amoand.w x30, x30, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x78a5df37 # load random value
la x1, scratch # base address
sw x31, 0(x1) # store in memory
li x31, 0x00a4b379 # load another value into integer register
amoand.w x31, x31, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x49c6781d # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amoand.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x01573b0a # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amoand.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xea4228f7 # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amoand.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8419afa2 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amoand.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7e5c3b19 # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amoand.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa9de8027 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amoand.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc28b3b38 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amoand.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x04f9f046 # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amoand.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x61a7c625 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amoand.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x2c396612 # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amoand.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x95cd5dfe # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amoand.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xcc8f0365 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amoand.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x47eb101c # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amoand.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x6ba5d67e # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amoand.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xc1c27082 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amoand.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x15c0f120 # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amoand.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xac117cc2 # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amoand.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x168639ff # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amoand.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xe3209252 # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amoand.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x7c302aef # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amoand.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x294acde2 # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amoand.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xf2cae9ae # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amoand.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x4050e011 # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amoand.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xd4a8ba93 # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amoand.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xb810c7a2 # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amoand.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x12cab330 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amoand.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xf20f5e85 # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amoand.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xb805f1c9 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amoand.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x3191fbe6 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amoand.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x82bfbeb0 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amoand.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x6db02d8b # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amoand.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
add x20, x17, x14 # perform first operation
amoand.w x5, x3, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x30, scratch
add x13, x27, x15 # perform first operation
amoand.w x25, x31, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x3, scratch
add x6, x11, x25 # perform first operation
amoand.w x10, x24, (x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x16, scratch
add x9, x9, x0 # perform first operation
amoand.w x17, x9, (x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x21, scratch
add x21, x21, x0 # perform first operation
amoand.w x25, x18, (x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x9, scratch
add x27, x27, x0 # perform first operation
amoand.w x28, x17, (x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x8, scratch
add x20, x5, x30 # perform first operation
amoand.w x20, x14, (x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x27, scratch
add x16, x1, x10 # perform first operation
amoand.w x16, x28, (x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x7, scratch
add x20, x10, x26 # perform first operation
amoand.w x20, x29, (x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x29, scratch
add x27, x17, x24 # perform first operation
amoand.w x17, x26, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x5, scratch
add x8, x2, x25 # perform first operation
amoand.w x25, x15, (x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x25, scratch
add x30, x28, x21 # perform first operation
amoand.w x24, x26, (x25) # perform second (triggering) operation

#.EQU SIGSIZE,0
.EQU SIGSIZE,0 #combined


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
