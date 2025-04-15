///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zaamo/WALLY-COV-amoadd.w.S
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
