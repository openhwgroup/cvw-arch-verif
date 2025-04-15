///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zaamo/WALLY-COV-amoswap.w.S
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
