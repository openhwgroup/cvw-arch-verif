///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zaamo/WALLY-COV-amoxor.w.S
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
