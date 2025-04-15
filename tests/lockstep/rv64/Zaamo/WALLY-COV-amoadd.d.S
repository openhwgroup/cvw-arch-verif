///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amoadd.d.S
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
li x22, 0xd705c8542198e61e # load random value
la x1, scratch # base address
sd x22, 0(x1) # store in memory
li x22, 0x64a66ce3cf053f8f # load another value into integer register
amoadd.d x17, x22, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x29, 0x44e464dcab8d98b9 # load random value
la x2, scratch # base address
sd x29, 0(x2) # store in memory
li x29, 0xefaeb24fad475394 # load another value into integer register
amoadd.d x22, x29, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x1, 0x586fcdfbad046d0d # load random value
la x3, scratch # base address
sd x1, 0(x3) # store in memory
li x1, 0x3ab883b409218267 # load another value into integer register
amoadd.d x21, x1, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x86ed88e30c01d3f6 # load random value
la x4, scratch # base address
sd x6, 0(x4) # store in memory
li x6, 0xc86f96cd38b9ff24 # load another value into integer register
amoadd.d x27, x6, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0xe18a2633e3a370e6 # load random value
la x5, scratch # base address
sd x3, 0(x5) # store in memory
li x3, 0x7e96b19ae16e7292 # load another value into integer register
amoadd.d x16, x3, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x29, 0xa051a6bed3f38395 # load random value
la x6, scratch # base address
sd x29, 0(x6) # store in memory
li x29, 0xa553cb08fb53d946 # load another value into integer register
amoadd.d x7, x29, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x10, 0xade67dafe6cd1938 # load random value
la x7, scratch # base address
sd x10, 0(x7) # store in memory
li x10, 0x8378ace45da886d4 # load another value into integer register
amoadd.d x19, x10, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x29, 0xc711c4a1abcb834a # load random value
la x8, scratch # base address
sd x29, 0(x8) # store in memory
li x29, 0xdfe8540cde88c591 # load another value into integer register
amoadd.d x28, x29, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x13, 0x3f48e0968e71fca8 # load random value
la x9, scratch # base address
sd x13, 0(x9) # store in memory
li x13, 0x77befcaa72e46d4c # load another value into integer register
amoadd.d x16, x13, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x29, 0xd8beb8cd9c11c3da # load random value
la x10, scratch # base address
sd x29, 0(x10) # store in memory
li x29, 0x148c0a9ca0eb575c # load another value into integer register
amoadd.d x9, x29, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x23, 0xa4a42bcd4fbc8c9e # load random value
la x11, scratch # base address
sd x23, 0(x11) # store in memory
li x23, 0xc7fa79449337e857 # load another value into integer register
amoadd.d x3, x23, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0xdb56697675817b44 # load random value
la x12, scratch # base address
sd x13, 0(x12) # store in memory
li x13, 0x6bcbe51a19d77d12 # load another value into integer register
amoadd.d x9, x13, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x1, 0xe54e46d55d9e1cb0 # load random value
la x13, scratch # base address
sd x1, 0(x13) # store in memory
li x1, 0x835e4139314c1adc # load another value into integer register
amoadd.d x28, x1, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x7, 0x6904267aa1b1f339 # load random value
la x14, scratch # base address
sd x7, 0(x14) # store in memory
li x7, 0xcf71069de41ce616 # load another value into integer register
amoadd.d x11, x7, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x19, 0x36881cf562adc317 # load random value
la x15, scratch # base address
sd x19, 0(x15) # store in memory
li x19, 0xce87ede40d972c1a # load another value into integer register
amoadd.d x28, x19, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x27, 0x907fb50a06688022 # load random value
la x16, scratch # base address
sd x27, 0(x16) # store in memory
li x27, 0xe47754db7c1819b4 # load another value into integer register
amoadd.d x7, x27, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x30, 0xca200b11c3a801b3 # load random value
la x17, scratch # base address
sd x30, 0(x17) # store in memory
li x30, 0x7298be2082684a6d # load another value into integer register
amoadd.d x15, x30, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x13, 0x41d576efd20c12ab # load random value
la x18, scratch # base address
sd x13, 0(x18) # store in memory
li x13, 0x05af8c49c32ae2d6 # load another value into integer register
amoadd.d x25, x13, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x18, 0xeca42383acc1e7ae # load random value
la x19, scratch # base address
sd x18, 0(x19) # store in memory
li x18, 0x0828362b28896d31 # load another value into integer register
amoadd.d x24, x18, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x1, 0x654c4c5cb927f608 # load random value
la x20, scratch # base address
sd x1, 0(x20) # store in memory
li x1, 0x8b0f1e1a3fc231c5 # load another value into integer register
amoadd.d x12, x1, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x30, 0x610b478ce553ec40 # load random value
la x21, scratch # base address
sd x30, 0(x21) # store in memory
li x30, 0xbc7925d34fe92bc4 # load another value into integer register
amoadd.d x13, x30, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x31, 0x7c427897f1a1d98b # load random value
la x22, scratch # base address
sd x31, 0(x22) # store in memory
li x31, 0x036a8ba212426c9e # load another value into integer register
amoadd.d x19, x31, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x1, 0x635c646dadb9e3ae # load random value
la x23, scratch # base address
sd x1, 0(x23) # store in memory
li x1, 0x2be19afcf8b0db31 # load another value into integer register
amoadd.d x31, x1, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x19, 0xe0c7c5968798f05c # load random value
la x24, scratch # base address
sd x19, 0(x24) # store in memory
li x19, 0xb74ca3a73ceaf480 # load another value into integer register
amoadd.d x3, x19, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x12, 0x9525fa7bde56b38f # load random value
la x25, scratch # base address
sd x12, 0(x25) # store in memory
li x12, 0x69db865874a777fb # load another value into integer register
amoadd.d x3, x12, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x30, 0x087c6deef79dbe32 # load random value
la x26, scratch # base address
sd x30, 0(x26) # store in memory
li x30, 0x8b6baf0783caecb6 # load another value into integer register
amoadd.d x27, x30, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x3, 0xf6b353e9655aa3b9 # load random value
la x27, scratch # base address
sd x3, 0(x27) # store in memory
li x3, 0xc394d2aa793e049a # load another value into integer register
amoadd.d x8, x3, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x18, 0xf4ce36fd7fdca2e9 # load random value
la x28, scratch # base address
sd x18, 0(x28) # store in memory
li x18, 0x643ba34bbf2f3026 # load another value into integer register
amoadd.d x27, x18, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x1, 0x7af0a070ad62ce14 # load random value
la x29, scratch # base address
sd x1, 0(x29) # store in memory
li x1, 0x179afbce71b3efcb # load another value into integer register
amoadd.d x15, x1, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x1, 0x8006ad28a333189e # load random value
la x30, scratch # base address
sd x1, 0(x30) # store in memory
li x1, 0xd901117e36da8b5f # load another value into integer register
amoadd.d x7, x1, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x5, 0xaa57560b64ebf951 # load random value
la x31, scratch # base address
sd x5, 0(x31) # store in memory
li x5, 0xd6d301aeef57901e # load another value into integer register
amoadd.d x20, x5, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x967b6f90beebf815 # load random value
la x21, scratch # base address
sd x0, 0(x21) # store in memory
li x0, 0x71d7515fd8bba2e6 # load another value into integer register
amoadd.d x1, x0, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x4a35e507a35841e1 # load random value
la x18, scratch # base address
sd x1, 0(x18) # store in memory
li x1, 0x4484759a632d4408 # load another value into integer register
amoadd.d x13, x1, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x19be324020108fd1 # load random value
la x17, scratch # base address
sd x2, 0(x17) # store in memory
li x2, 0x1bbf03010b62bed4 # load another value into integer register
amoadd.d x24, x2, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x801194af6d5b0758 # load random value
la x15, scratch # base address
sd x3, 0(x15) # store in memory
li x3, 0x5be342baf1bdc607 # load another value into integer register
amoadd.d x29, x3, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x052aa731ae994673 # load random value
la x18, scratch # base address
sd x4, 0(x18) # store in memory
li x4, 0x36655d3e1d17e935 # load another value into integer register
amoadd.d x9, x4, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd4166313d46fee90 # load random value
la x20, scratch # base address
sd x5, 0(x20) # store in memory
li x5, 0xc5dc5b0526aede69 # load another value into integer register
amoadd.d x30, x5, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7da9d3e3b2301eea # load random value
la x1, scratch # base address
sd x6, 0(x1) # store in memory
li x6, 0xe58b81b2610ab41e # load another value into integer register
amoadd.d x30, x6, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6ea65bf387df9c62 # load random value
la x24, scratch # base address
sd x7, 0(x24) # store in memory
li x7, 0x3f5481ac59f690a1 # load another value into integer register
amoadd.d x16, x7, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xe6a5f2c66a64ce5f # load random value
la x3, scratch # base address
sd x8, 0(x3) # store in memory
li x8, 0x2109e04526b8866f # load another value into integer register
amoadd.d x10, x8, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xd39f5153f4260151 # load random value
la x3, scratch # base address
sd x9, 0(x3) # store in memory
li x9, 0x243eca19496a0979 # load another value into integer register
amoadd.d x5, x9, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x0bd5b54e727cb8c1 # load random value
la x14, scratch # base address
sd x10, 0(x14) # store in memory
li x10, 0x5bb87d3737c8b90e # load another value into integer register
amoadd.d x28, x10, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x9f8c8034150a2df9 # load random value
la x25, scratch # base address
sd x11, 0(x25) # store in memory
li x11, 0xa36bf9be2b3fab43 # load another value into integer register
amoadd.d x5, x11, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x59424d89b1c45c47 # load random value
la x23, scratch # base address
sd x12, 0(x23) # store in memory
li x12, 0x0091be4a411fc276 # load another value into integer register
amoadd.d x21, x12, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xda5d42dcca84fe60 # load random value
la x31, scratch # base address
sd x13, 0(x31) # store in memory
li x13, 0xd16c67beea4f78b2 # load another value into integer register
amoadd.d x9, x13, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x0d5fe522d3e253b5 # load random value
la x17, scratch # base address
sd x14, 0(x17) # store in memory
li x14, 0x5ded0025c2d8914b # load another value into integer register
amoadd.d x11, x14, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x57545956669c944a # load random value
la x30, scratch # base address
sd x15, 0(x30) # store in memory
li x15, 0x0bcde2b36bc256af # load another value into integer register
amoadd.d x28, x15, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x5082e610173c44ff # load random value
la x10, scratch # base address
sd x16, 0(x10) # store in memory
li x16, 0x8f7269fc4f4ddc94 # load another value into integer register
amoadd.d x31, x16, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xf26df84e471940b0 # load random value
la x12, scratch # base address
sd x17, 0(x12) # store in memory
li x17, 0x00eeef1f2e304a48 # load another value into integer register
amoadd.d x11, x17, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xef1b55be99731828 # load random value
la x12, scratch # base address
sd x18, 0(x12) # store in memory
li x18, 0x27da64f3afa0bd79 # load another value into integer register
amoadd.d x5, x18, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x78f55b790e4daf22 # load random value
la x31, scratch # base address
sd x19, 0(x31) # store in memory
li x19, 0x045e952c7ee194a0 # load another value into integer register
amoadd.d x16, x19, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x422756960d10a770 # load random value
la x11, scratch # base address
sd x20, 0(x11) # store in memory
li x20, 0x8ededeed2c64aa06 # load another value into integer register
amoadd.d x28, x20, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0xf062f69656adb442 # load random value
la x2, scratch # base address
sd x21, 0(x2) # store in memory
li x21, 0x229ebb87a00ce205 # load another value into integer register
amoadd.d x13, x21, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0xebdbc38c203342dd # load random value
la x1, scratch # base address
sd x22, 0(x1) # store in memory
li x22, 0x5ead437023b66107 # load another value into integer register
amoadd.d x19, x22, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x96801f64e1d96f62 # load random value
la x14, scratch # base address
sd x23, 0(x14) # store in memory
li x23, 0x1af42ce754f4720c # load another value into integer register
amoadd.d x10, x23, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xb62fcbc4f8c233c2 # load random value
la x1, scratch # base address
sd x24, 0(x1) # store in memory
li x24, 0x946828c0694d2bba # load another value into integer register
amoadd.d x28, x24, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x5801b604c67a0127 # load random value
la x29, scratch # base address
sd x25, 0(x29) # store in memory
li x25, 0xbb61156f44f074e2 # load another value into integer register
amoadd.d x15, x25, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x3208d1676eaf14c3 # load random value
la x22, scratch # base address
sd x26, 0(x22) # store in memory
li x26, 0x67c580a7bd087f7c # load another value into integer register
amoadd.d x18, x26, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x20bfef4cc1e47c6d # load random value
la x6, scratch # base address
sd x27, 0(x6) # store in memory
li x27, 0x8ab852d2653875c5 # load another value into integer register
amoadd.d x14, x27, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xa45a0412c349c5e2 # load random value
la x6, scratch # base address
sd x28, 0(x6) # store in memory
li x28, 0x1d8a7991ed73b43e # load another value into integer register
amoadd.d x15, x28, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x1c48d47259b25201 # load random value
la x31, scratch # base address
sd x29, 0(x31) # store in memory
li x29, 0x3838b7518ca68283 # load another value into integer register
amoadd.d x8, x29, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x4ad2565100539ee9 # load random value
la x18, scratch # base address
sd x30, 0(x18) # store in memory
li x30, 0xc7eec732850d92dc # load another value into integer register
amoadd.d x17, x30, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xa38f2fb64854d469 # load random value
la x27, scratch # base address
sd x31, 0(x27) # store in memory
li x31, 0xe73660e100cabed3 # load another value into integer register
amoadd.d x24, x31, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x24, 0xf34a32c18f739b0c # load random value
la x3, scratch # base address
sd x24, 0(x3) # store in memory
li x24, 0x23518f9010fca13d # load another value into integer register
amoadd.d x0, x24, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x6, 0xa99e825ea8064732 # load random value
la x11, scratch # base address
sd x6, 0(x11) # store in memory
li x6, 0x5cb25a11cb81e630 # load another value into integer register
amoadd.d x1, x6, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x7, 0xd180ca288a4e6aa5 # load random value
la x9, scratch # base address
sd x7, 0(x9) # store in memory
li x7, 0x7531bf9607b1f1dc # load another value into integer register
amoadd.d x2, x7, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x22, 0x66e8ae9fba81673e # load random value
la x26, scratch # base address
sd x22, 0(x26) # store in memory
li x22, 0x347541c29c86a273 # load another value into integer register
amoadd.d x3, x22, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0x8ef7c78ccc286874 # load random value
la x14, scratch # base address
sd x8, 0(x14) # store in memory
li x8, 0x4e638946d4223934 # load another value into integer register
amoadd.d x4, x8, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x70ff75b324be2799 # load random value
la x7, scratch # base address
sd x1, 0(x7) # store in memory
li x1, 0x5846ac973c065149 # load another value into integer register
amoadd.d x5, x1, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0xc3ff3b12b7ff9175 # load random value
la x9, scratch # base address
sd x29, 0(x9) # store in memory
li x29, 0x740713ef37ba033e # load another value into integer register
amoadd.d x6, x29, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0xdaaebdbea30b1634 # load random value
la x21, scratch # base address
sd x22, 0(x21) # store in memory
li x22, 0x3b419c8bb8a2a0e6 # load another value into integer register
amoadd.d x7, x22, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x24, 0x681ba5f86f4acde9 # load random value
la x11, scratch # base address
sd x24, 0(x11) # store in memory
li x24, 0x7266c5e8896834b5 # load another value into integer register
amoadd.d x8, x24, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x30, 0xcde987367b50e0d7 # load random value
la x19, scratch # base address
sd x30, 0(x19) # store in memory
li x30, 0x822dfb91c174abe4 # load another value into integer register
amoadd.d x9, x30, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x23, 0x07585a4147c14c66 # load random value
la x28, scratch # base address
sd x23, 0(x28) # store in memory
li x23, 0xe45dc8675468155f # load another value into integer register
amoadd.d x10, x23, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x22, 0xc59ffc94cf9bf649 # load random value
la x19, scratch # base address
sd x22, 0(x19) # store in memory
li x22, 0xf9f76cb46051795c # load another value into integer register
amoadd.d x11, x22, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x11, 0xfaf2953f45057fc8 # load random value
la x14, scratch # base address
sd x11, 0(x14) # store in memory
li x11, 0xe200fc361dd8153b # load another value into integer register
amoadd.d x12, x11, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x195acedf896c8bfb # load random value
la x2, scratch # base address
sd x13, 0(x2) # store in memory
li x13, 0xbc016443c7b160fc # load another value into integer register
amoadd.d x13, x13, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x24, 0x677918757a5f44d5 # load random value
la x8, scratch # base address
sd x24, 0(x8) # store in memory
li x24, 0xff3215e8b079636d # load another value into integer register
amoadd.d x14, x24, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x25, 0x30f26d9022a2a17a # load random value
la x24, scratch # base address
sd x25, 0(x24) # store in memory
li x25, 0xea339202e6df7704 # load another value into integer register
amoadd.d x15, x25, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x10, 0xed72a51577c54b9e # load random value
la x29, scratch # base address
sd x10, 0(x29) # store in memory
li x10, 0xafb1356839cf5eef # load another value into integer register
amoadd.d x16, x10, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x27, 0xd0c7df1d12435642 # load random value
la x22, scratch # base address
sd x27, 0(x22) # store in memory
li x27, 0x72585696ec381ff5 # load another value into integer register
amoadd.d x17, x27, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x29, 0x4f45b777dfc53568 # load random value
la x13, scratch # base address
sd x29, 0(x13) # store in memory
li x29, 0x563bc7431cf6752d # load another value into integer register
amoadd.d x18, x29, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x31, 0xf3efa728ce5379ed # load random value
la x13, scratch # base address
sd x31, 0(x13) # store in memory
li x31, 0x502e4bd904874d59 # load another value into integer register
amoadd.d x19, x31, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x18, 0x8e9f4047dd140861 # load random value
la x5, scratch # base address
sd x18, 0(x5) # store in memory
li x18, 0x04a7b89dea5c4a34 # load another value into integer register
amoadd.d x20, x18, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x7, 0xf2ecd562758ff4ff # load random value
la x9, scratch # base address
sd x7, 0(x9) # store in memory
li x7, 0xa8d0de86349631aa # load another value into integer register
amoadd.d x21, x7, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x9, 0xc732b1a6d1fce4ab # load random value
la x12, scratch # base address
sd x9, 0(x12) # store in memory
li x9, 0x286f4e30d134e08a # load another value into integer register
amoadd.d x22, x9, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x19, 0x324400ebe18971bd # load random value
la x7, scratch # base address
sd x19, 0(x7) # store in memory
li x19, 0x34169c642022743b # load another value into integer register
amoadd.d x23, x19, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x9, 0x2b97931641e56908 # load random value
la x26, scratch # base address
sd x9, 0(x26) # store in memory
li x9, 0x4c82aabb6a8aad70 # load another value into integer register
amoadd.d x24, x9, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x17, 0x9097928e5ec4b8c1 # load random value
la x30, scratch # base address
sd x17, 0(x30) # store in memory
li x17, 0x08c97f4bf4c369fa # load another value into integer register
amoadd.d x25, x17, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x9, 0xb661bd50e910b94b # load random value
la x11, scratch # base address
sd x9, 0(x11) # store in memory
li x9, 0xdc1609820829da2f # load another value into integer register
amoadd.d x26, x9, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x22, 0x5ff48e74844c7453 # load random value
la x14, scratch # base address
sd x22, 0(x14) # store in memory
li x22, 0xc4d74976b7f9c191 # load another value into integer register
amoadd.d x27, x22, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x1, 0xfc66a13ba6768c60 # load random value
la x17, scratch # base address
sd x1, 0(x17) # store in memory
li x1, 0xeac6e09edb488478 # load another value into integer register
amoadd.d x28, x1, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x21, 0x7fcd19ffb937d03e # load random value
la x12, scratch # base address
sd x21, 0(x12) # store in memory
li x21, 0xa0a8f8c899f58501 # load another value into integer register
amoadd.d x29, x21, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x8, 0x899542ec443af848 # load random value
la x1, scratch # base address
sd x8, 0(x1) # store in memory
li x8, 0x1e69cd7468eddc2d # load another value into integer register
amoadd.d x30, x8, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x29, 0xe6ad7c43ef64e11a # load random value
la x20, scratch # base address
sd x29, 0(x20) # store in memory
li x29, 0x0e53e8bd0bd88a2f # load another value into integer register
amoadd.d x31, x29, (x20) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0x5de467735d1c9a70 # load random value
la x6, scratch # base address
sd x8, 0(x6) # store in memory
li x8, 0x0000000000000000 # load another value into integer register
amoadd.d x19, x8, (x6) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0xe97ca6621325a0fa # load random value
la x8, scratch # base address
sd x14, 0(x8) # store in memory
li x14, 0x0000000000000001 # load another value into integer register
amoadd.d x16, x14, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0x5fb7ce78c4c4aa06 # load random value
la x15, scratch # base address
sd x9, 0(x15) # store in memory
li x9, 0x0000000000000002 # load another value into integer register
amoadd.d x31, x9, (x15) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x8, 0x5c203115af65e207 # load random value
la x9, scratch # base address
sd x8, 0(x9) # store in memory
li x8, 0x8000000000000000 # load another value into integer register
amoadd.d x20, x8, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x28, 0x1dc2b899a0668b06 # load random value
la x17, scratch # base address
sd x28, 0(x17) # store in memory
li x28, 0x8000000000000001 # load another value into integer register
amoadd.d x20, x28, (x17) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x28, 0x6ff9943f1c6cfbb6 # load random value
la x22, scratch # base address
sd x28, 0(x22) # store in memory
li x28, 0x7fffffffffffffff # load another value into integer register
amoadd.d x3, x28, (x22) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x19, 0xf1488f4ec4ee0032 # load random value
la x29, scratch # base address
sd x19, 0(x29) # store in memory
li x19, 0x7ffffffffffffffe # load another value into integer register
amoadd.d x18, x19, (x29) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x12, 0xc963e35d9f91b1c6 # load random value
la x22, scratch # base address
sd x12, 0(x22) # store in memory
li x12, 0xffffffffffffffff # load another value into integer register
amoadd.d x9, x12, (x22) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x26, 0x5f4112700888d888 # load random value
la x23, scratch # base address
sd x26, 0(x23) # store in memory
li x26, 0xfffffffffffffffe # load another value into integer register
amoadd.d x5, x26, (x23) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x20, 0x09e9dbb067404149 # load random value
la x14, scratch # base address
sd x20, 0(x14) # store in memory
li x20, 0x5bbc887763ae86f2 # load another value into integer register
amoadd.d x19, x20, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0x73782b3b4c65965b # load random value
la x19, scratch # base address
sd x20, 0(x19) # store in memory
li x20, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amoadd.d x8, x20, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x11, 0xcfa3f5d090787e02 # load random value
la x27, scratch # base address
sd x11, 0(x27) # store in memory
li x11, 0x5555555555555555 # load another value into integer register
amoadd.d x8, x11, (x27) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0x78d6ac6b9efef8ed # load random value
la x10, scratch # base address
sd x25, 0(x10) # store in memory
li x25, 0x00000000ffffffff # load another value into integer register
amoadd.d x6, x25, (x10) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x22, 0xbe86a4c24a7021fb # load random value
la x11, scratch # base address
sd x22, 0(x11) # store in memory
li x22, 0x00000000fffffffe # load another value into integer register
amoadd.d x1, x22, (x11) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0xfa6ce53c478ba311 # load random value
la x19, scratch # base address
sd x14, 0(x19) # store in memory
li x14, 0x0000000100000000 # load another value into integer register
amoadd.d x25, x14, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x7, 0xcb44029d08f1676c # load random value
la x2, scratch # base address
sd x7, 0(x2) # store in memory
li x7, 0x0000000100000001 # load another value into integer register
amoadd.d x9, x7, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x31b21cb5285ce372 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoadd.d x8, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xfac07272af4480ba # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoadd.d x2, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x710778d8d397dd00 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoadd.d x21, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9b6fcf05f03e9d30 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoadd.d x26, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb8cae6b9534aeead # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoadd.d x9, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x952cbddbd3658543 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoadd.d x2, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x13d8deaf008a9da0 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoadd.d x26, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xb91e44365be05c0d # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoadd.d x18, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x137c08484f04697c # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoadd.d x17, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa24f3a5253336e21 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoadd.d x16, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xf837fb501047994e # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoadd.d x27, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x7b3b141552b356d2 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoadd.d x13, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x4e14ca5ec8378852 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoadd.d x16, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xe27a477362a3d5aa # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoadd.d x17, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xaa4109cc5e457e82 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoadd.d x17, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x1ab3ae30417b067e # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoadd.d x20, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x80bfa8205d8c0462 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoadd.d x3, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xf2fccfe6ad7e7f87 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoadd.d x2, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xf1dcc597dc1dfd15 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoadd.d x9, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xeea77fe12953605e # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoadd.d x11, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xf6b8d7645773ee6d # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoadd.d x28, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xfead62df931978f0 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoadd.d x13, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xf425027a736f34bd # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoadd.d x15, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x64d83ab05a6f5546 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoadd.d x9, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xb2383cd8f2aa9384 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoadd.d x17, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xa189a99c8f72f304 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoadd.d x2, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x85ae09d8e8251704 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoadd.d x13, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x2047b4cc664d782e # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoadd.d x23, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x6d0247657d67469a # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoadd.d x9, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x421c8f1916c28412 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoadd.d x16, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x384df9902e1e042d # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoadd.d x7, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x11, 0xd6052e94ab4927db # load random value
la x1, scratch # base address
sd x11, 0(x1) # store in memory
li x11, 0x314616cb728a6f32 # load another value into integer register
amoadd.d x1, x11, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x25, 0xf118fd9188a9783a # load random value
la x2, scratch # base address
sd x25, 0(x2) # store in memory
li x25, 0x2f1f6459a16d4b01 # load another value into integer register
amoadd.d x2, x25, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x29, 0x84f9d103bdcb6b93 # load random value
la x3, scratch # base address
sd x29, 0(x3) # store in memory
li x29, 0x74a0a49ae226683a # load another value into integer register
amoadd.d x3, x29, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0x73e6dd0a39f6f199 # load random value
la x4, scratch # base address
sd x25, 0(x4) # store in memory
li x25, 0xa839dbe0a7747475 # load another value into integer register
amoadd.d x4, x25, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x72fb9b0be4e5f41e # load random value
la x5, scratch # base address
sd x23, 0(x5) # store in memory
li x23, 0x2689e22cfd2c3778 # load another value into integer register
amoadd.d x5, x23, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0x86599205ea9236c5 # load random value
la x6, scratch # base address
sd x15, 0(x6) # store in memory
li x15, 0xe0c2877a931514a0 # load another value into integer register
amoadd.d x6, x15, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x924311f59030a8a1 # load random value
la x7, scratch # base address
sd x29, 0(x7) # store in memory
li x29, 0xaa134077644d50ba # load another value into integer register
amoadd.d x7, x29, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x28, 0xf978f3c58103bde8 # load random value
la x8, scratch # base address
sd x28, 0(x8) # store in memory
li x28, 0xaf6eb529c5cdb721 # load another value into integer register
amoadd.d x8, x28, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x6, 0x108ea8cfabe9fedb # load random value
la x9, scratch # base address
sd x6, 0(x9) # store in memory
li x6, 0x4fb33e6975a7bd3a # load another value into integer register
amoadd.d x9, x6, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x24, 0x82075f6c170d5275 # load random value
la x10, scratch # base address
sd x24, 0(x10) # store in memory
li x24, 0xd425ed1b1f76db5e # load another value into integer register
amoadd.d x10, x24, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x1, 0xec20fc8bac6e3967 # load random value
la x11, scratch # base address
sd x1, 0(x11) # store in memory
li x1, 0x788f165132ac8856 # load another value into integer register
amoadd.d x11, x1, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x17, 0x5b19994034045ba1 # load random value
la x12, scratch # base address
sd x17, 0(x12) # store in memory
li x17, 0xb496662b5683a3b6 # load another value into integer register
amoadd.d x12, x17, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x5, 0x782c7a7b027ea1af # load random value
la x13, scratch # base address
sd x5, 0(x13) # store in memory
li x5, 0xf656c27afac41cdc # load another value into integer register
amoadd.d x13, x5, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x17, 0x8825eeaf4a528f0a # load random value
la x14, scratch # base address
sd x17, 0(x14) # store in memory
li x17, 0x350a87a6ed6c1aec # load another value into integer register
amoadd.d x14, x17, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x8, 0x4036b814e0edf047 # load random value
la x15, scratch # base address
sd x8, 0(x15) # store in memory
li x8, 0x7e5097bc5d28abe2 # load another value into integer register
amoadd.d x15, x8, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x6, 0x9812ca728d5403c6 # load random value
la x16, scratch # base address
sd x6, 0(x16) # store in memory
li x6, 0xa942b830b69d64d7 # load another value into integer register
amoadd.d x16, x6, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x27, 0x725090d304d67c8f # load random value
la x17, scratch # base address
sd x27, 0(x17) # store in memory
li x27, 0x831f2a74ee32d9bc # load another value into integer register
amoadd.d x17, x27, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x1, 0xe97934f27ffd2c3c # load random value
la x18, scratch # base address
sd x1, 0(x18) # store in memory
li x1, 0x1a43fdeeb767339b # load another value into integer register
amoadd.d x18, x1, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x13, 0x49c0f69489d3a276 # load random value
la x19, scratch # base address
sd x13, 0(x19) # store in memory
li x13, 0x7db73d6f77f703f6 # load another value into integer register
amoadd.d x19, x13, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x5, 0x7d414fdf59aaf238 # load random value
la x20, scratch # base address
sd x5, 0(x20) # store in memory
li x5, 0x408717aef862483c # load another value into integer register
amoadd.d x20, x5, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x19, 0xe6ebe6aaa4a925ce # load random value
la x21, scratch # base address
sd x19, 0(x21) # store in memory
li x19, 0x58c7a9a44e04de67 # load another value into integer register
amoadd.d x21, x19, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x7, 0x0aad311f80e73439 # load random value
la x22, scratch # base address
sd x7, 0(x22) # store in memory
li x7, 0xbcd933af4d6a83e2 # load another value into integer register
amoadd.d x22, x7, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x3, 0xfd68d5a33b4c57db # load random value
la x23, scratch # base address
sd x3, 0(x23) # store in memory
li x3, 0xa0ad8f28f430ca46 # load another value into integer register
amoadd.d x23, x3, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x28, 0xb1a8b9ae244acf91 # load random value
la x24, scratch # base address
sd x28, 0(x24) # store in memory
li x28, 0xa9dfa430d35f3569 # load another value into integer register
amoadd.d x24, x28, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x15, 0x8bf304dba5d55762 # load random value
la x25, scratch # base address
sd x15, 0(x25) # store in memory
li x15, 0x66e463eda6b1c2dc # load another value into integer register
amoadd.d x25, x15, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x7, 0xa85619765a7e055b # load random value
la x26, scratch # base address
sd x7, 0(x26) # store in memory
li x7, 0x997881c47af31d26 # load another value into integer register
amoadd.d x26, x7, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x1, 0x0033d0e2f854fbd8 # load random value
la x27, scratch # base address
sd x1, 0(x27) # store in memory
li x1, 0x438f6dd50c7e6f47 # load another value into integer register
amoadd.d x27, x1, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x19, 0xd7280835c28d2983 # load random value
la x28, scratch # base address
sd x19, 0(x28) # store in memory
li x19, 0x2d1934e15f0194f5 # load another value into integer register
amoadd.d x28, x19, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x20, 0x3b027bee3903e562 # load random value
la x29, scratch # base address
sd x20, 0(x29) # store in memory
li x20, 0xca4ae75e7338c061 # load another value into integer register
amoadd.d x29, x20, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x25, 0xd46f1f483a8d2f4c # load random value
la x30, scratch # base address
sd x25, 0(x30) # store in memory
li x25, 0x12b5ebbaf5bdb04a # load another value into integer register
amoadd.d x30, x25, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x24, 0x8f5be1b231fbfa8e # load random value
la x31, scratch # base address
sd x24, 0(x31) # store in memory
li x24, 0xc8b7e4152504dc43 # load another value into integer register
amoadd.d x31, x24, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0xf16cfb127c2b5473 # load random value
la x1, scratch # base address
sd x0, 0(x1) # store in memory
li x0, 0xe0577774088a48b1 # load another value into integer register
amoadd.d x0, x0, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xe10e66b52f8dd991 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoadd.d x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xdc5be72beadca44b # load random value
la x16, scratch # base address
sd x2, 0(x16) # store in memory
li x2, 0xc947b23321cbc1b6 # load another value into integer register
amoadd.d x2, x2, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xb60f95c9bd424df5 # load random value
la x13, scratch # base address
sd x3, 0(x13) # store in memory
li x3, 0xdfa62054eb0387df # load another value into integer register
amoadd.d x3, x3, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdfdfe41fcc7a5de8 # load random value
la x14, scratch # base address
sd x4, 0(x14) # store in memory
li x4, 0xf4a64e46a8d08a1b # load another value into integer register
amoadd.d x4, x4, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x40281aa2f4bb79f4 # load random value
la x12, scratch # base address
sd x5, 0(x12) # store in memory
li x5, 0x74aa48bb61db510d # load another value into integer register
amoadd.d x5, x5, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8e350728a2e55e92 # load random value
la x29, scratch # base address
sd x6, 0(x29) # store in memory
li x6, 0xba4b3b68f9f1f70c # load another value into integer register
amoadd.d x6, x6, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdb0b5547bbda7290 # load random value
la x12, scratch # base address
sd x7, 0(x12) # store in memory
li x7, 0x1ebb459a0af3723a # load another value into integer register
amoadd.d x7, x7, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x6bffb86a5855f503 # load random value
la x20, scratch # base address
sd x8, 0(x20) # store in memory
li x8, 0xa086140d52cd47ab # load another value into integer register
amoadd.d x8, x8, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x476b98ee7aec0e88 # load random value
la x3, scratch # base address
sd x9, 0(x3) # store in memory
li x9, 0x27775763513a510f # load another value into integer register
amoadd.d x9, x9, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x904d120670ba5eac # load random value
la x12, scratch # base address
sd x10, 0(x12) # store in memory
li x10, 0xddce76162ff9375e # load another value into integer register
amoadd.d x10, x10, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x3085729cf2f5fc1d # load random value
la x10, scratch # base address
sd x11, 0(x10) # store in memory
li x11, 0x861bd2e092b7c889 # load another value into integer register
amoadd.d x11, x11, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xd53884e03c908685 # load random value
la x31, scratch # base address
sd x12, 0(x31) # store in memory
li x12, 0xd9acff0cdb2b36cd # load another value into integer register
amoadd.d x12, x12, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x3e99028bfecab6b3 # load random value
la x23, scratch # base address
sd x13, 0(x23) # store in memory
li x13, 0xecdad7f300ce5508 # load another value into integer register
amoadd.d x13, x13, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x71e064291bb3e05a # load random value
la x11, scratch # base address
sd x14, 0(x11) # store in memory
li x14, 0x611c8c0046bff204 # load another value into integer register
amoadd.d x14, x14, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x4727dfa8d2b2914d # load random value
la x16, scratch # base address
sd x15, 0(x16) # store in memory
li x15, 0x2e28660b530b9099 # load another value into integer register
amoadd.d x15, x15, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xb802997388fa4ac6 # load random value
la x3, scratch # base address
sd x16, 0(x3) # store in memory
li x16, 0xe53cb0d01e94ac70 # load another value into integer register
amoadd.d x16, x16, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0xd732e43902d2e2a9 # load random value
la x3, scratch # base address
sd x17, 0(x3) # store in memory
li x17, 0x5e5291853c5bc7f9 # load another value into integer register
amoadd.d x17, x17, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0xaf714dc722c52c85 # load random value
la x31, scratch # base address
sd x18, 0(x31) # store in memory
li x18, 0x586d3531f7409609 # load another value into integer register
amoadd.d x18, x18, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x32edd3b8a07c3840 # load random value
la x25, scratch # base address
sd x19, 0(x25) # store in memory
li x19, 0x8bd56d84f0c1f408 # load another value into integer register
amoadd.d x19, x19, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x995e79c4761332f5 # load random value
la x25, scratch # base address
sd x20, 0(x25) # store in memory
li x20, 0x5e4510406256a003 # load another value into integer register
amoadd.d x20, x20, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x7bfb8f57bd631856 # load random value
la x10, scratch # base address
sd x21, 0(x10) # store in memory
li x21, 0x0e7608a60b99c298 # load another value into integer register
amoadd.d x21, x21, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x0d0cda2ea9e641b2 # load random value
la x8, scratch # base address
sd x22, 0(x8) # store in memory
li x22, 0x9befdbf1f7594115 # load another value into integer register
amoadd.d x22, x22, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xc5a686d3a14ba91f # load random value
la x30, scratch # base address
sd x23, 0(x30) # store in memory
li x23, 0x99d7eb89928e180d # load another value into integer register
amoadd.d x23, x23, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x8aa76c1399e4a74a # load random value
la x2, scratch # base address
sd x24, 0(x2) # store in memory
li x24, 0x0ba730c57d9c315a # load another value into integer register
amoadd.d x24, x24, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x1769b73033f640b6 # load random value
la x11, scratch # base address
sd x25, 0(x11) # store in memory
li x25, 0x364c8d5a55487680 # load another value into integer register
amoadd.d x25, x25, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0xd7784448434d46dd # load random value
la x23, scratch # base address
sd x26, 0(x23) # store in memory
li x26, 0xc6207ae4b0f16f37 # load another value into integer register
amoadd.d x26, x26, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x41e217c4fc6c2f5c # load random value
la x2, scratch # base address
sd x27, 0(x2) # store in memory
li x27, 0x9fceb382379a8ff5 # load another value into integer register
amoadd.d x27, x27, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x41e9ad1c92f3bfbd # load random value
la x16, scratch # base address
sd x28, 0(x16) # store in memory
li x28, 0x5d68fb47c821bf5a # load another value into integer register
amoadd.d x28, x28, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x83211d35f9e3cf1d # load random value
la x5, scratch # base address
sd x29, 0(x5) # store in memory
li x29, 0x37382e9cd8c2abf3 # load another value into integer register
amoadd.d x29, x29, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xeaa8f4e45b815072 # load random value
la x6, scratch # base address
sd x30, 0(x6) # store in memory
li x30, 0xc6371723345650a8 # load another value into integer register
amoadd.d x30, x30, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x30bfcd874a4cd88d # load random value
la x5, scratch # base address
sd x31, 0(x5) # store in memory
li x31, 0x00aef1dc9b3bb2dd # load another value into integer register
amoadd.d x31, x31, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x652a4403023a3bbd # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoadd.d x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x4c317f0978374366 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoadd.d x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x37bb43d3a4c363ab # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoadd.d x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd3c8c06d2f0d1d8e # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoadd.d x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb589900736704b12 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoadd.d x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x50faa1b9625547ef # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoadd.d x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x28309f62412c71bf # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoadd.d x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x46a4a38d5c58c52a # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoadd.d x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xa117a680a5c95d38 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoadd.d x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xb50c9d96672c54ea # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoadd.d x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xc1ee7b5cb140e5ef # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoadd.d x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x6446e8613a8228f4 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoadd.d x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x3073f09451462e7a # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoadd.d x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x8495556090693c93 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoadd.d x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x63f2da916aa88e16 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoadd.d x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x879a9602f7e660d2 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoadd.d x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x65b60b508123eac4 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoadd.d x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x7223bedb0518c7cc # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoadd.d x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xdcfb0924e369084c # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoadd.d x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x89ce5e362f20bd83 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoadd.d x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x293466022f8bd963 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoadd.d x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x0aadaf3b6df4f3bf # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoadd.d x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x3589b6afdcf6647f # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoadd.d x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x7e239589e42a178f # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoadd.d x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x694acd807aff465a # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoadd.d x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xc727d75a7cfdd41b # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoadd.d x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x4748d09f6e0c0480 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoadd.d x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xea2728739b747c10 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoadd.d x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xefc244f9a1ab1c6f # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoadd.d x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xfa5ac7ec5cfac2d7 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoadd.d x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x9c32b60e790ae878 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoadd.d x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x8, scratch
add x21, x25, x31 # perform first operation
amoadd.d x10, x17, (x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x17, scratch
add x7, x15, x24 # perform first operation
amoadd.d x13, x25, (x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x5, scratch
add x6, x25, x3 # perform first operation
amoadd.d x30, x18, (x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x25, scratch
add x8, x8, x0 # perform first operation
amoadd.d x2, x8, (x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x5, scratch
add x5, x5, x0 # perform first operation
amoadd.d x2, x3, (x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x7, scratch
add x26, x26, x0 # perform first operation
amoadd.d x28, x19, (x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x1, scratch
add x13, x23, x15 # perform first operation
amoadd.d x13, x5, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x8, scratch
add x23, x11, x22 # perform first operation
amoadd.d x23, x16, (x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x10, scratch
add x14, x21, x17 # perform first operation
amoadd.d x14, x16, (x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x31, scratch
add x23, x26, x17 # perform first operation
amoadd.d x26, x28, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x29, scratch
add x12, x8, x6 # perform first operation
amoadd.d x6, x24, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x10, scratch
add x22, x2, x8 # perform first operation
amoadd.d x3, x19, (x10) # perform second (triggering) operation

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
