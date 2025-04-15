///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zaamo/WALLY-COV-amomaxu.w.S
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
