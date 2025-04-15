///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zaamo/WALLY-COV-amoor.w.S
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
