///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amomin.w.S
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
li x31, 0xbca6d716b93e435b # load random value
la x1, scratch # base address
sd x31, 0(x1) # store in memory
li x31, 0xa49665c63107962c # load another value into integer register
amomin.w x8, x31, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x5, 0x83f764b4fc59279f # load random value
la x2, scratch # base address
sd x5, 0(x2) # store in memory
li x5, 0x3c4cacd882f7f0e1 # load another value into integer register
amomin.w x25, x5, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x21, 0xc6a66ec4de0e65db # load random value
la x3, scratch # base address
sd x21, 0(x3) # store in memory
li x21, 0xac28eebfa057d52a # load another value into integer register
amomin.w x19, x21, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x7b9766bb07fde1ad # load random value
la x4, scratch # base address
sd x29, 0(x4) # store in memory
li x29, 0xf284945dda603281 # load another value into integer register
amomin.w x20, x29, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0xf2034f1e1b9508ef # load random value
la x5, scratch # base address
sd x7, 0(x5) # store in memory
li x7, 0x515aa69ad0d90922 # load another value into integer register
amomin.w x13, x7, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xe04dbde157f64d75 # load random value
la x6, scratch # base address
sd x5, 0(x6) # store in memory
li x5, 0x0808fd0ecfd38dc6 # load another value into integer register
amomin.w x22, x5, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0xfd2fcafd346ec23e # load random value
la x7, scratch # base address
sd x15, 0(x7) # store in memory
li x15, 0xf31a0e1839868721 # load another value into integer register
amomin.w x3, x15, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x25, 0xb3716b9bb159b058 # load random value
la x8, scratch # base address
sd x25, 0(x8) # store in memory
li x25, 0x2e55338f2cb1fdfd # load another value into integer register
amomin.w x22, x25, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x25, 0x8d20d70670277169 # load random value
la x9, scratch # base address
sd x25, 0(x9) # store in memory
li x25, 0x80ddb1884857ba19 # load another value into integer register
amomin.w x26, x25, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x3, 0x06e076cf695871f9 # load random value
la x10, scratch # base address
sd x3, 0(x10) # store in memory
li x3, 0xe987ee89b6559d8c # load another value into integer register
amomin.w x2, x3, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x16, 0xf7cb94c1a1f82bf1 # load random value
la x11, scratch # base address
sd x16, 0(x11) # store in memory
li x16, 0x5d9803c8a242f9f6 # load another value into integer register
amomin.w x8, x16, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x7, 0x98ed2898bc5c4c10 # load random value
la x12, scratch # base address
sd x7, 0(x12) # store in memory
li x7, 0xb94624db54df041d # load another value into integer register
amomin.w x16, x7, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x25, 0x52b11d216ed16292 # load random value
la x13, scratch # base address
sd x25, 0(x13) # store in memory
li x25, 0xbfd4a8620a8a4363 # load another value into integer register
amomin.w x11, x25, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x24, 0xec851724a2bdd4fe # load random value
la x14, scratch # base address
sd x24, 0(x14) # store in memory
li x24, 0xab29517d89546d1e # load another value into integer register
amomin.w x27, x24, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x6, 0x0ebd043adffe03f6 # load random value
la x15, scratch # base address
sd x6, 0(x15) # store in memory
li x6, 0x70d16d5d0d1433d9 # load another value into integer register
amomin.w x11, x6, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x1, 0x600dfb2bcce23f31 # load random value
la x16, scratch # base address
sd x1, 0(x16) # store in memory
li x1, 0x0897b692999fb0e8 # load another value into integer register
amomin.w x15, x1, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x12, 0x7ca0763dfac06f5b # load random value
la x17, scratch # base address
sd x12, 0(x17) # store in memory
li x12, 0xea87aeb0566346d7 # load another value into integer register
amomin.w x13, x12, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x1, 0x2340e6e146a9e6d5 # load random value
la x18, scratch # base address
sd x1, 0(x18) # store in memory
li x1, 0x292e7e1eab6a54bc # load another value into integer register
amomin.w x8, x1, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x15, 0x87646e8469904e02 # load random value
la x19, scratch # base address
sd x15, 0(x19) # store in memory
li x15, 0xaff0e6045dff08ae # load another value into integer register
amomin.w x30, x15, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x26, 0x2eae82f46b6e6f46 # load random value
la x20, scratch # base address
sd x26, 0(x20) # store in memory
li x26, 0x79f1c41aa9e9ec9c # load another value into integer register
amomin.w x5, x26, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x25, 0xd249f91920c7b30d # load random value
la x21, scratch # base address
sd x25, 0(x21) # store in memory
li x25, 0xa9c1c97175851897 # load another value into integer register
amomin.w x29, x25, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x7, 0xd77d1c0e03689ca9 # load random value
la x22, scratch # base address
sd x7, 0(x22) # store in memory
li x7, 0x912e89c0254b4f48 # load another value into integer register
amomin.w x30, x7, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x24, 0x51a110be76efaf8b # load random value
la x23, scratch # base address
sd x24, 0(x23) # store in memory
li x24, 0xf3e526d6438ab855 # load another value into integer register
amomin.w x13, x24, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x7, 0xc9bc8a18aa44c797 # load random value
la x24, scratch # base address
sd x7, 0(x24) # store in memory
li x7, 0x5dfd6ac6c1ec16a8 # load another value into integer register
amomin.w x19, x7, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x21, 0x29a9a1023cb08a18 # load random value
la x25, scratch # base address
sd x21, 0(x25) # store in memory
li x21, 0xbfba5a07d40f8a2d # load another value into integer register
amomin.w x26, x21, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x1, 0xa02f9d969090c140 # load random value
la x26, scratch # base address
sd x1, 0(x26) # store in memory
li x1, 0x7c839f03af3a769d # load another value into integer register
amomin.w x13, x1, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x2, 0x19b0298a0d3c1ad9 # load random value
la x27, scratch # base address
sd x2, 0(x27) # store in memory
li x2, 0x6472779adac89e1e # load another value into integer register
amomin.w x18, x2, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x25, 0x3d41b9009f5eb74b # load random value
la x28, scratch # base address
sd x25, 0(x28) # store in memory
li x25, 0xdb139096e0b1634c # load another value into integer register
amomin.w x18, x25, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x22, 0x8f657df2e3851bda # load random value
la x29, scratch # base address
sd x22, 0(x29) # store in memory
li x22, 0x1ffe93d5386bf1ca # load another value into integer register
amomin.w x25, x22, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x19, 0x74684ce3c6add10a # load random value
la x30, scratch # base address
sd x19, 0(x30) # store in memory
li x19, 0x4f39b1a040e20d79 # load another value into integer register
amomin.w x21, x19, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x29, 0xd983de5838392647 # load random value
la x31, scratch # base address
sd x29, 0(x31) # store in memory
li x29, 0x702b14f6062e1465 # load another value into integer register
amomin.w x1, x29, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x03113ee96ae05f43 # load random value
la x7, scratch # base address
sd x0, 0(x7) # store in memory
li x0, 0xef96eb1bc8bd6e86 # load another value into integer register
amomin.w x21, x0, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x04f7ac5ea82dc288 # load random value
la x28, scratch # base address
sd x1, 0(x28) # store in memory
li x1, 0xebd6eadea1e7409c # load another value into integer register
amomin.w x18, x1, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x5bd6a7cc1705e72f # load random value
la x9, scratch # base address
sd x2, 0(x9) # store in memory
li x2, 0xa1cbf176b7afc25a # load another value into integer register
amomin.w x24, x2, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0xbca55f9a0cbb10c7 # load random value
la x30, scratch # base address
sd x3, 0(x30) # store in memory
li x3, 0xe3fd815078903c4e # load another value into integer register
amomin.w x9, x3, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6ca0b0f02dd59c4c # load random value
la x2, scratch # base address
sd x4, 0(x2) # store in memory
li x4, 0xe1e331a5162836c0 # load another value into integer register
amomin.w x1, x4, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x85bc64f9a684c66d # load random value
la x6, scratch # base address
sd x5, 0(x6) # store in memory
li x5, 0xcdb0747173b26955 # load another value into integer register
amomin.w x20, x5, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x6, 0x321f5ad9df7b6912 # load random value
la x24, scratch # base address
sd x6, 0(x24) # store in memory
li x6, 0x517e5d7b5b88ae2a # load another value into integer register
amomin.w x29, x6, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x125dd9b8e480fbef # load random value
la x5, scratch # base address
sd x7, 0(x5) # store in memory
li x7, 0xdd6bbdd12a0a06df # load another value into integer register
amomin.w x8, x7, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x471c72eb2899e7bc # load random value
la x11, scratch # base address
sd x8, 0(x11) # store in memory
li x8, 0x344312c1e6828a93 # load another value into integer register
amomin.w x29, x8, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x8b38ae7d0c5e1389 # load random value
la x11, scratch # base address
sd x9, 0(x11) # store in memory
li x9, 0xd6f44dd420cbec9d # load another value into integer register
amomin.w x3, x9, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x009757977af5a2c7 # load random value
la x6, scratch # base address
sd x10, 0(x6) # store in memory
li x10, 0x7382aa1714af0abe # load another value into integer register
amomin.w x27, x10, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x5dd72ad1ca15e8e1 # load random value
la x1, scratch # base address
sd x11, 0(x1) # store in memory
li x11, 0x37c776d0ab3f0c08 # load another value into integer register
amomin.w x9, x11, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xea7b7c7c60fb2f48 # load random value
la x29, scratch # base address
sd x12, 0(x29) # store in memory
li x12, 0x55e449aebcf72718 # load another value into integer register
amomin.w x14, x12, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xa141e4e14fa5e460 # load random value
la x23, scratch # base address
sd x13, 0(x23) # store in memory
li x13, 0xc2fd6e47d4f9b483 # load another value into integer register
amomin.w x31, x13, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xf0696797ba2edb2b # load random value
la x22, scratch # base address
sd x14, 0(x22) # store in memory
li x14, 0x68a9fa281ae16b57 # load another value into integer register
amomin.w x9, x14, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xc9fef9347d733a52 # load random value
la x9, scratch # base address
sd x15, 0(x9) # store in memory
li x15, 0x02a4d2f6e8350a84 # load another value into integer register
amomin.w x24, x15, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xab908c251d120b1d # load random value
la x12, scratch # base address
sd x16, 0(x12) # store in memory
li x16, 0x0c0496b36c7467f2 # load another value into integer register
amomin.w x7, x16, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xbc31badd7397475a # load random value
la x22, scratch # base address
sd x17, 0(x22) # store in memory
li x17, 0x514ab39560feca83 # load another value into integer register
amomin.w x31, x17, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xce6c6f8128e37b69 # load random value
la x14, scratch # base address
sd x18, 0(x14) # store in memory
li x18, 0xd4a55929ac7f96eb # load another value into integer register
amomin.w x1, x18, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x008d6b36ff977248 # load random value
la x9, scratch # base address
sd x19, 0(x9) # store in memory
li x19, 0x5743d0e31258d95f # load another value into integer register
amomin.w x27, x19, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xc83d28cb3e28bcb1 # load random value
la x3, scratch # base address
sd x20, 0(x3) # store in memory
li x20, 0x0a0b50f8212928cb # load another value into integer register
amomin.w x17, x20, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x5c3584bc5ffca42a # load random value
la x8, scratch # base address
sd x21, 0(x8) # store in memory
li x21, 0x311d8434487b4859 # load another value into integer register
amomin.w x23, x21, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x3bdbf02fa026ee92 # load random value
la x15, scratch # base address
sd x22, 0(x15) # store in memory
li x22, 0xa5052f5cc0481805 # load another value into integer register
amomin.w x5, x22, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x20f6476bf2ee7232 # load random value
la x6, scratch # base address
sd x23, 0(x6) # store in memory
li x23, 0x94e81f8c76bbede6 # load another value into integer register
amomin.w x25, x23, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x24df0295e0683986 # load random value
la x30, scratch # base address
sd x24, 0(x30) # store in memory
li x24, 0xe66cba92d9d2455c # load another value into integer register
amomin.w x10, x24, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xa0f562ac6282221b # load random value
la x23, scratch # base address
sd x25, 0(x23) # store in memory
li x25, 0x9d23a5eae96a23a4 # load another value into integer register
amomin.w x21, x25, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x8cdcc32c44572807 # load random value
la x30, scratch # base address
sd x26, 0(x30) # store in memory
li x26, 0xa8cbbf293970bc59 # load another value into integer register
amomin.w x10, x26, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x8de8d64d7d85a955 # load random value
la x24, scratch # base address
sd x27, 0(x24) # store in memory
li x27, 0x6932cac8d04a9e36 # load another value into integer register
amomin.w x12, x27, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x9593e0381a39795f # load random value
la x2, scratch # base address
sd x28, 0(x2) # store in memory
li x28, 0x5e065e4fffe8af2b # load another value into integer register
amomin.w x20, x28, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x1ac8dd447056b66d # load random value
la x9, scratch # base address
sd x29, 0(x9) # store in memory
li x29, 0xa28363e8a3fea2d9 # load another value into integer register
amomin.w x17, x29, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x0ae0cf72cc6e98d7 # load random value
la x19, scratch # base address
sd x30, 0(x19) # store in memory
li x30, 0x976b51e015320a55 # load another value into integer register
amomin.w x1, x30, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x43a804712ee5e8f3 # load random value
la x5, scratch # base address
sd x31, 0(x5) # store in memory
li x31, 0xef3e70233c806215 # load another value into integer register
amomin.w x18, x31, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x13, 0xd8cccc422f578f20 # load random value
la x21, scratch # base address
sd x13, 0(x21) # store in memory
li x13, 0xe05a18fd2193b7bf # load another value into integer register
amomin.w x0, x13, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x12, 0xce07d10d11ec864d # load random value
la x27, scratch # base address
sd x12, 0(x27) # store in memory
li x12, 0x15a9709efa55fba5 # load another value into integer register
amomin.w x1, x12, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x17, 0x29dcfd46d61678f8 # load random value
la x11, scratch # base address
sd x17, 0(x11) # store in memory
li x17, 0xec0abb1c9f48ae27 # load another value into integer register
amomin.w x2, x17, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x30256813efb893b4 # load random value
la x31, scratch # base address
sd x3, 0(x31) # store in memory
li x3, 0x6cdc5e670e14c260 # load another value into integer register
amomin.w x3, x3, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0x932fda30e2ab8dc0 # load random value
la x17, scratch # base address
sd x13, 0(x17) # store in memory
li x13, 0x8bd6fa4425deffd3 # load another value into integer register
amomin.w x4, x13, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0xd6c7f83f76805033 # load random value
la x9, scratch # base address
sd x28, 0(x9) # store in memory
li x28, 0x618570a7a36a427f # load another value into integer register
amomin.w x5, x28, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0x6a9558ba707554b4 # load random value
la x3, scratch # base address
sd x13, 0(x3) # store in memory
li x13, 0xf705b598bc1784e4 # load another value into integer register
amomin.w x6, x13, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0x97f2604bebea66e5 # load random value
la x28, scratch # base address
sd x5, 0(x28) # store in memory
li x5, 0x84753a29658632da # load another value into integer register
amomin.w x7, x5, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x12, 0x4a4c1a533b9e94b7 # load random value
la x9, scratch # base address
sd x12, 0(x9) # store in memory
li x12, 0x19ccf397d4915b24 # load another value into integer register
amomin.w x8, x12, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x26, 0x65744b56ff13a97f # load random value
la x1, scratch # base address
sd x26, 0(x1) # store in memory
li x26, 0x24f2fedae2212d6d # load another value into integer register
amomin.w x9, x26, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x6, 0xf13e08d3fa7e11cd # load random value
la x14, scratch # base address
sd x6, 0(x14) # store in memory
li x6, 0xdeadf6467102785d # load another value into integer register
amomin.w x10, x6, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x7, 0x4d1a7e2b20c8dee5 # load random value
la x21, scratch # base address
sd x7, 0(x21) # store in memory
li x7, 0x6d09b8c013e14715 # load another value into integer register
amomin.w x11, x7, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x2, 0x7c37837fb4f4f973 # load random value
la x19, scratch # base address
sd x2, 0(x19) # store in memory
li x2, 0xaade609da366ff33 # load another value into integer register
amomin.w x12, x2, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x16, 0x2768ffac19ac60db # load random value
la x21, scratch # base address
sd x16, 0(x21) # store in memory
li x16, 0x029fcbe5c6e03310 # load another value into integer register
amomin.w x13, x16, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x27, 0x158874256081f5da # load random value
la x17, scratch # base address
sd x27, 0(x17) # store in memory
li x27, 0xfd7b3e1d6be04228 # load another value into integer register
amomin.w x14, x27, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x8, 0xbd3ebd23fb085d77 # load random value
la x2, scratch # base address
sd x8, 0(x2) # store in memory
li x8, 0xcba84ea4c6d2eadb # load another value into integer register
amomin.w x15, x8, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x6, 0xdea270d9eb241490 # load random value
la x8, scratch # base address
sd x6, 0(x8) # store in memory
li x6, 0x1b30d9007eceb675 # load another value into integer register
amomin.w x16, x6, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x22, 0x8d5e0560f07d4b60 # load random value
la x16, scratch # base address
sd x22, 0(x16) # store in memory
li x22, 0x155199084e8fbb12 # load another value into integer register
amomin.w x17, x22, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x19, 0x6126fee7a2fb5bfb # load random value
la x9, scratch # base address
sd x19, 0(x9) # store in memory
li x19, 0x142e176d8760c870 # load another value into integer register
amomin.w x18, x19, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x25, 0x3cb51064ac5fd5cc # load random value
la x16, scratch # base address
sd x25, 0(x16) # store in memory
li x25, 0x4f984396bb746c0e # load another value into integer register
amomin.w x19, x25, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x25, 0x6465216828fa3334 # load random value
la x2, scratch # base address
sd x25, 0(x2) # store in memory
li x25, 0x14eb39392e234483 # load another value into integer register
amomin.w x20, x25, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x22, 0x6422fe27c0610806 # load random value
la x8, scratch # base address
sd x22, 0(x8) # store in memory
li x22, 0xa95e1873a4f5cf05 # load another value into integer register
amomin.w x21, x22, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x26, 0x3a29902710ecc05f # load random value
la x12, scratch # base address
sd x26, 0(x12) # store in memory
li x26, 0x13e1047493360865 # load another value into integer register
amomin.w x22, x26, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x25, 0xa152c81296461f16 # load random value
la x5, scratch # base address
sd x25, 0(x5) # store in memory
li x25, 0x41b28c0b77b7a755 # load another value into integer register
amomin.w x23, x25, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x11, 0x7446c3680a38520b # load random value
la x22, scratch # base address
sd x11, 0(x22) # store in memory
li x11, 0x98965c4878ad9cf7 # load another value into integer register
amomin.w x24, x11, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x31, 0xe5c32be31ee96e38 # load random value
la x2, scratch # base address
sd x31, 0(x2) # store in memory
li x31, 0xaeaa9b1cf6c46a46 # load another value into integer register
amomin.w x25, x31, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x22, 0xffc8420858934a1d # load random value
la x14, scratch # base address
sd x22, 0(x14) # store in memory
li x22, 0xbaa8c2e8d5a78eb4 # load another value into integer register
amomin.w x26, x22, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x5, 0x3a14fd9d4086879e # load random value
la x25, scratch # base address
sd x5, 0(x25) # store in memory
li x5, 0x18dec138c58a572f # load another value into integer register
amomin.w x27, x5, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x13, 0xa6096f5aa630bcc0 # load random value
la x7, scratch # base address
sd x13, 0(x7) # store in memory
li x13, 0x51a6a14a88b15f53 # load another value into integer register
amomin.w x28, x13, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x12, 0x6f4975a0263f4727 # load random value
la x7, scratch # base address
sd x12, 0(x7) # store in memory
li x12, 0x20aa081b0ae37219 # load another value into integer register
amomin.w x29, x12, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x29, 0x9128348db10c8564 # load random value
la x21, scratch # base address
sd x29, 0(x21) # store in memory
li x29, 0x927b3b818bc95edf # load another value into integer register
amomin.w x30, x29, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x2, 0xeb139bae5c03fb85 # load random value
la x16, scratch # base address
sd x2, 0(x16) # store in memory
li x2, 0x09067be5a96cf306 # load another value into integer register
amomin.w x31, x2, (x16) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x3, 0x61241eff8daf63ff # load random value
la x9, scratch # base address
sd x3, 0(x9) # store in memory
li x3, 0x0000000000000000 # load another value into integer register
amomin.w x11, x3, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x30, 0x0605a8fa82b38042 # load random value
la x9, scratch # base address
sd x30, 0(x9) # store in memory
li x30, 0x0000000000000001 # load another value into integer register
amomin.w x11, x30, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x14, 0x237620285de6c13a # load random value
la x7, scratch # base address
sd x14, 0(x7) # store in memory
li x14, 0x0000000000000002 # load another value into integer register
amomin.w x28, x14, (x7) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x11, 0xfc7373f4a52162d6 # load random value
la x27, scratch # base address
sd x11, 0(x27) # store in memory
li x11, 0x8000000000000000 # load another value into integer register
amomin.w x23, x11, (x27) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x22, 0x84b4c569c3c60ffb # load random value
la x28, scratch # base address
sd x22, 0(x28) # store in memory
li x22, 0x8000000000000001 # load another value into integer register
amomin.w x25, x22, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x30, 0xfa8098c9f97ef359 # load random value
la x25, scratch # base address
sd x30, 0(x25) # store in memory
li x30, 0x7fffffffffffffff # load another value into integer register
amomin.w x29, x30, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x25, 0xb661ae073a1c0978 # load random value
la x3, scratch # base address
sd x25, 0(x3) # store in memory
li x25, 0x7ffffffffffffffe # load another value into integer register
amomin.w x31, x25, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x14, 0x874c8ef7447421f1 # load random value
la x22, scratch # base address
sd x14, 0(x22) # store in memory
li x14, 0xffffffffffffffff # load another value into integer register
amomin.w x30, x14, (x22) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x25, 0x9a36c8bddeef6ce8 # load random value
la x21, scratch # base address
sd x25, 0(x21) # store in memory
li x25, 0xfffffffffffffffe # load another value into integer register
amomin.w x15, x25, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x2, 0x3134414d6f67b125 # load random value
la x23, scratch # base address
sd x2, 0(x23) # store in memory
li x2, 0x5bbc887763ae86f2 # load another value into integer register
amomin.w x13, x2, (x23) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0x55b9f5e801d808a4 # load random value
la x26, scratch # base address
sd x11, 0(x26) # store in memory
li x11, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amomin.w x6, x11, (x26) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x20, 0x6a9de97b65e072a0 # load random value
la x1, scratch # base address
sd x20, 0(x1) # store in memory
li x20, 0x5555555555555555 # load another value into integer register
amomin.w x7, x20, (x1) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0x086796907746722a # load random value
la x5, scratch # base address
sd x13, 0(x5) # store in memory
li x13, 0x00000000ffffffff # load another value into integer register
amomin.w x22, x13, (x5) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x25, 0x568d6205ebc620d2 # load random value
la x10, scratch # base address
sd x25, 0(x10) # store in memory
li x25, 0x00000000fffffffe # load another value into integer register
amomin.w x31, x25, (x10) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x30, 0x0bbe2b53a69dcd75 # load random value
la x11, scratch # base address
sd x30, 0(x11) # store in memory
li x30, 0x0000000100000000 # load another value into integer register
amomin.w x2, x30, (x11) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x11, 0x8a1429b1546b3524 # load random value
la x31, scratch # base address
sd x11, 0(x31) # store in memory
li x11, 0x0000000100000001 # load another value into integer register
amomin.w x2, x11, (x31) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x9edba9a29c0b6601 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amomin.w x1, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x31b61f28949a285c # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amomin.w x14, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x6363182a71548dc1 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amomin.w x18, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x402fa63c50d54e08 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amomin.w x21, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x79f98ba27578a1cc # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amomin.w x19, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2e252cf7e5d812e5 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amomin.w x18, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7d2dafdb2078c12e # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amomin.w x10, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x3add9f38983190fa # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amomin.w x2, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x0dad0eebfb193667 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amomin.w x1, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x56fd8f8857dd7f5f # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amomin.w x22, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x376450161b982f65 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amomin.w x17, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xc080c1b7c701229f # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amomin.w x9, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x2dbb7f57e5642a51 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amomin.w x1, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x3549ecd962569315 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amomin.w x20, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xbdb477f13d1ae38f # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amomin.w x20, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x914863ba2443d4ca # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amomin.w x17, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x047e0f0b522ee6cc # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amomin.w x18, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xf1988298d8d5349e # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amomin.w x29, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x1743fd5f94caab83 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amomin.w x27, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x83b25befe6fa18ef # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amomin.w x10, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x7510a05aa9244eef # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amomin.w x6, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xfc3d55940f2146b7 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amomin.w x26, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x0008a8148e76d7a5 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amomin.w x12, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x6ccf960c7097633f # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amomin.w x27, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xb6116c1d28e82f88 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amomin.w x8, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x8565e22fe956cdea # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amomin.w x1, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x473b2d97db0de018 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amomin.w x14, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x34c752573beee0af # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amomin.w x7, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x4cd19f6f1d101b62 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amomin.w x7, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xe4d38669cf1aa2d9 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amomin.w x7, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xabf368ba4b60123e # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amomin.w x20, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x28, 0xc797fe96767528e5 # load random value
la x1, scratch # base address
sd x28, 0(x1) # store in memory
li x28, 0xee51ef0474420e6a # load another value into integer register
amomin.w x1, x28, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x1, 0x9098cd2304e1ad97 # load random value
la x2, scratch # base address
sd x1, 0(x2) # store in memory
li x1, 0xe4866734b463baa1 # load another value into integer register
amomin.w x2, x1, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x21, 0x767d913d00f20daa # load random value
la x3, scratch # base address
sd x21, 0(x3) # store in memory
li x21, 0xb4cddf9f0689708b # load another value into integer register
amomin.w x3, x21, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0x14f665921649d312 # load random value
la x4, scratch # base address
sd x25, 0(x4) # store in memory
li x25, 0x1cfd0d1c724b7f25 # load another value into integer register
amomin.w x4, x25, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0x3f3a91433eeb34a1 # load random value
la x5, scratch # base address
sd x6, 0(x5) # store in memory
li x6, 0xd3ac0f83e662c4e1 # load another value into integer register
amomin.w x5, x6, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x19, 0x869a952dbf18b0e4 # load random value
la x6, scratch # base address
sd x19, 0(x6) # store in memory
li x19, 0xbed7e947bc08ce95 # load another value into integer register
amomin.w x6, x19, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x20, 0x0b73976bed0881df # load random value
la x7, scratch # base address
sd x20, 0(x7) # store in memory
li x20, 0x843cb2b15e5293dc # load another value into integer register
amomin.w x7, x20, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x7, 0x7d65f00a3971eb51 # load random value
la x8, scratch # base address
sd x7, 0(x8) # store in memory
li x7, 0x646a78d03db08bda # load another value into integer register
amomin.w x8, x7, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x29, 0x92127c8e5d2fb33d # load random value
la x9, scratch # base address
sd x29, 0(x9) # store in memory
li x29, 0x9b05d7c42c396338 # load another value into integer register
amomin.w x9, x29, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x17, 0x0d23e657682c2113 # load random value
la x10, scratch # base address
sd x17, 0(x10) # store in memory
li x17, 0x036c911665569dad # load another value into integer register
amomin.w x10, x17, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x21, 0x2a73c72503b7e47f # load random value
la x11, scratch # base address
sd x21, 0(x11) # store in memory
li x21, 0x6bf5cdc02cde98ce # load another value into integer register
amomin.w x11, x21, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x5, 0x96b8e334f5c5e14a # load random value
la x12, scratch # base address
sd x5, 0(x12) # store in memory
li x5, 0xf91cb5931445ab8c # load another value into integer register
amomin.w x12, x5, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x22, 0x2cb83ae29e09029d # load random value
la x13, scratch # base address
sd x22, 0(x13) # store in memory
li x22, 0xd5c0af9a59b28a82 # load another value into integer register
amomin.w x13, x22, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x20, 0xc3272fb7d9441716 # load random value
la x14, scratch # base address
sd x20, 0(x14) # store in memory
li x20, 0x61570eaaf6e27317 # load another value into integer register
amomin.w x14, x20, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x26, 0x4e0a739f972318c8 # load random value
la x15, scratch # base address
sd x26, 0(x15) # store in memory
li x26, 0x0ec8b4bfa799f147 # load another value into integer register
amomin.w x15, x26, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x31, 0xac6439890db72d66 # load random value
la x16, scratch # base address
sd x31, 0(x16) # store in memory
li x31, 0xf1fe1e15d0cb4970 # load another value into integer register
amomin.w x16, x31, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x16, 0x088b9b8dabe2c483 # load random value
la x17, scratch # base address
sd x16, 0(x17) # store in memory
li x16, 0xdded336aa6c78e97 # load another value into integer register
amomin.w x17, x16, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x5, 0x06a0ea87cd6fc798 # load random value
la x18, scratch # base address
sd x5, 0(x18) # store in memory
li x5, 0x4f598fa4651cffbb # load another value into integer register
amomin.w x18, x5, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x26, 0x559ed4d44d496a7b # load random value
la x19, scratch # base address
sd x26, 0(x19) # store in memory
li x26, 0x0ffedd7552981b36 # load another value into integer register
amomin.w x19, x26, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x22, 0x103b96a1de3e528f # load random value
la x20, scratch # base address
sd x22, 0(x20) # store in memory
li x22, 0x8ee4547786c99a20 # load another value into integer register
amomin.w x20, x22, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x7, 0x99a55563f7196e2c # load random value
la x21, scratch # base address
sd x7, 0(x21) # store in memory
li x7, 0x8682477e4dc0c0f0 # load another value into integer register
amomin.w x21, x7, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x5, 0xe3a55d24ec3e70d2 # load random value
la x22, scratch # base address
sd x5, 0(x22) # store in memory
li x5, 0xd6e1f5f603e6e7fe # load another value into integer register
amomin.w x22, x5, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x31, 0xe2427526a7b32781 # load random value
la x23, scratch # base address
sd x31, 0(x23) # store in memory
li x31, 0x3f51c3b33bda0f07 # load another value into integer register
amomin.w x23, x31, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x27, 0x9a87d4f1f5a98116 # load random value
la x24, scratch # base address
sd x27, 0(x24) # store in memory
li x27, 0x5661e43d81d5161c # load another value into integer register
amomin.w x24, x27, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x5, 0x7bb714249e1abf00 # load random value
la x25, scratch # base address
sd x5, 0(x25) # store in memory
li x5, 0xef6b24a2fa1d2aad # load another value into integer register
amomin.w x25, x5, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x23, 0xec364ae7b77b57d9 # load random value
la x26, scratch # base address
sd x23, 0(x26) # store in memory
li x23, 0x2f5e51faaaafb429 # load another value into integer register
amomin.w x26, x23, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x21, 0xe1524607e64ec10d # load random value
la x27, scratch # base address
sd x21, 0(x27) # store in memory
li x21, 0xca8c9ca85c8d584a # load another value into integer register
amomin.w x27, x21, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x0d94df91d1f683a4 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amomin.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x11, 0x5bc035d7835e882c # load random value
la x29, scratch # base address
sd x11, 0(x29) # store in memory
li x11, 0xee00c511710de4ee # load another value into integer register
amomin.w x29, x11, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x20, 0x4808e6b9f5c5ec12 # load random value
la x30, scratch # base address
sd x20, 0(x30) # store in memory
li x20, 0xda12611267dccf3e # load another value into integer register
amomin.w x30, x20, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x6, 0x1de5879d6ad52a4a # load random value
la x31, scratch # base address
sd x6, 0(x31) # store in memory
li x6, 0xfe53f0859c0b6cfe # load another value into integer register
amomin.w x31, x6, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0xc393c8469f90f0c6 # load random value
la x8, scratch # base address
sd x0, 0(x8) # store in memory
li x0, 0xf68ac633bd8017c1 # load another value into integer register
amomin.w x0, x0, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xd102795882722ec0 # load random value
la x21, scratch # base address
sd x1, 0(x21) # store in memory
li x1, 0xc100d8bf9fc87db5 # load another value into integer register
amomin.w x1, x1, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x50c71ac57d693fe8 # load random value
la x3, scratch # base address
sd x2, 0(x3) # store in memory
li x2, 0xb904f27df4748d92 # load another value into integer register
amomin.w x2, x2, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xb5186729fccd21a7 # load random value
la x21, scratch # base address
sd x3, 0(x21) # store in memory
li x3, 0xf873835627044895 # load another value into integer register
amomin.w x3, x3, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3971236274b15b3a # load random value
la x12, scratch # base address
sd x4, 0(x12) # store in memory
li x4, 0xa7f2ea2807792772 # load another value into integer register
amomin.w x4, x4, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcd1cb5227d06503d # load random value
la x14, scratch # base address
sd x5, 0(x14) # store in memory
li x5, 0xa9939d9512f129f2 # load another value into integer register
amomin.w x5, x5, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1eb41b961b81a496 # load random value
la x15, scratch # base address
sd x6, 0(x15) # store in memory
li x6, 0x747cdf33a317d841 # load another value into integer register
amomin.w x6, x6, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x857ec3c89b3cc261 # load random value
la x22, scratch # base address
sd x7, 0(x22) # store in memory
li x7, 0x1e88a75a826a6ad5 # load another value into integer register
amomin.w x7, x7, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x73e80869cf3aa475 # load random value
la x3, scratch # base address
sd x8, 0(x3) # store in memory
li x8, 0x48b529f1b672171e # load another value into integer register
amomin.w x8, x8, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x78e4a48ae69b9a25 # load random value
la x6, scratch # base address
sd x9, 0(x6) # store in memory
li x9, 0x7ed8b0eac19c92d7 # load another value into integer register
amomin.w x9, x9, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x28d3bf2c82f814e7 # load random value
la x1, scratch # base address
sd x10, 0(x1) # store in memory
li x10, 0x8ae446f28b58701c # load another value into integer register
amomin.w x10, x10, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x75b4d942eaa04fd0 # load random value
la x7, scratch # base address
sd x11, 0(x7) # store in memory
li x11, 0xf79f5900a41548b3 # load another value into integer register
amomin.w x11, x11, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x7700149a09a3a2b3 # load random value
la x6, scratch # base address
sd x12, 0(x6) # store in memory
li x12, 0x7f4e52a835dd2913 # load another value into integer register
amomin.w x12, x12, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x6a678f991ab1e3a2 # load random value
la x16, scratch # base address
sd x13, 0(x16) # store in memory
li x13, 0xdfbc576971eab0eb # load another value into integer register
amomin.w x13, x13, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xde4f9c81f5fd890c # load random value
la x30, scratch # base address
sd x14, 0(x30) # store in memory
li x14, 0xd33f2e8cabfad74f # load another value into integer register
amomin.w x14, x14, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x7ffbbf060305a361 # load random value
la x16, scratch # base address
sd x15, 0(x16) # store in memory
li x15, 0x4f480f12ad4dc0b8 # load another value into integer register
amomin.w x15, x15, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x18199541defb5c3e # load random value
la x3, scratch # base address
sd x16, 0(x3) # store in memory
li x16, 0xf56344cc75d7988a # load another value into integer register
amomin.w x16, x16, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x86391b4db5b995fc # load random value
la x10, scratch # base address
sd x17, 0(x10) # store in memory
li x17, 0x9ec00f5e18c2e857 # load another value into integer register
amomin.w x17, x17, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0xca7ee836f762eeea # load random value
la x1, scratch # base address
sd x18, 0(x1) # store in memory
li x18, 0x471cc85880a19442 # load another value into integer register
amomin.w x18, x18, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0xebbcbf3b62195e4d # load random value
la x16, scratch # base address
sd x19, 0(x16) # store in memory
li x19, 0x8493ecb2a92f7870 # load another value into integer register
amomin.w x19, x19, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x790a501f66b0e78f # load random value
la x18, scratch # base address
sd x20, 0(x18) # store in memory
li x20, 0x05720ea515b0c9d5 # load another value into integer register
amomin.w x20, x20, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x0c1ada3552216a00 # load random value
la x22, scratch # base address
sd x21, 0(x22) # store in memory
li x21, 0xb84dbd6e09676f74 # load another value into integer register
amomin.w x21, x21, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0xcf31af15cf338dd1 # load random value
la x29, scratch # base address
sd x22, 0(x29) # store in memory
li x22, 0x4cb1a00539d3fe29 # load another value into integer register
amomin.w x22, x22, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x0ade1be420a52fda # load random value
la x2, scratch # base address
sd x23, 0(x2) # store in memory
li x23, 0x2c51af8162bcf991 # load another value into integer register
amomin.w x23, x23, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0xe191bf71f25d4311 # load random value
la x21, scratch # base address
sd x24, 0(x21) # store in memory
li x24, 0xbd638563b23758af # load another value into integer register
amomin.w x24, x24, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x83e50fd89e441b86 # load random value
la x3, scratch # base address
sd x25, 0(x3) # store in memory
li x25, 0x470f20dd0e278c0c # load another value into integer register
amomin.w x25, x25, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0xb5b24e3facd10bda # load random value
la x29, scratch # base address
sd x26, 0(x29) # store in memory
li x26, 0xf43f0dee3c2adcd0 # load another value into integer register
amomin.w x26, x26, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xbdb9727911ef2186 # load random value
la x11, scratch # base address
sd x27, 0(x11) # store in memory
li x27, 0x2c5d1b94b6a46ada # load another value into integer register
amomin.w x27, x27, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0xf862ec8c95df2af1 # load random value
la x30, scratch # base address
sd x28, 0(x30) # store in memory
li x28, 0xd61665c1d691674b # load another value into integer register
amomin.w x28, x28, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x693ac1109ed5f07e # load random value
la x30, scratch # base address
sd x29, 0(x30) # store in memory
li x29, 0xc6fb255c05cf1c4e # load another value into integer register
amomin.w x29, x29, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x06fa77a9aa9cb943 # load random value
la x8, scratch # base address
sd x30, 0(x8) # store in memory
li x30, 0x4b73c30a3a1aa6c2 # load another value into integer register
amomin.w x30, x30, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x17327ed36c7719a2 # load random value
la x9, scratch # base address
sd x31, 0(x9) # store in memory
li x31, 0x37f2854bbd82c180 # load another value into integer register
amomin.w x31, x31, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x131ecec3a00ef513 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amomin.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xc2d40744e116fd12 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amomin.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xb13cb1f949f26c9b # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amomin.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xbce5c3a9ff4bfda9 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amomin.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xda199ecc0b18576b # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amomin.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x83b9d627858585a6 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amomin.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7df5193f2d04aef6 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amomin.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x395a809cc5bb7be3 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amomin.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x7856643559e06230 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amomin.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x68da902fae1bcdfe # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amomin.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xa3d0fcd5acd9f715 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amomin.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x257f0dfb1832c349 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amomin.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x5035f96912a5cbeb # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amomin.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xfb45488414922f31 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amomin.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xe8302eae6dcd79ab # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amomin.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x0760ad580f404757 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amomin.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x15882f7f78dd1aa8 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amomin.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x06a88354dbbc8017 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amomin.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xcec40307fd9df06e # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amomin.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x0c0a3d8f8fb1e41a # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amomin.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xfb074a8f3b429b48 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amomin.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x0045658ac768da02 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amomin.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x60ee262c9c0848a0 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amomin.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xf9973b9afef27545 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amomin.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x578465845097926a # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amomin.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x7dbedf8c8b695800 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amomin.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x08688a5bb2807de8 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amomin.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x0cba538a778c59ba # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amomin.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x1515141ea2eabde7 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amomin.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xf09ccd931cc6e7c6 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amomin.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x89c6103e8b432cb3 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amomin.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x2, scratch
add x19, x17, x12 # perform first operation
amomin.w x14, x13, (x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x30, scratch
add x31, x6, x29 # perform first operation
amomin.w x7, x12, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x14, scratch
add x2, x15, x1 # perform first operation
amomin.w x30, x27, (x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x10, scratch
add x18, x18, x0 # perform first operation
amomin.w x5, x18, (x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x11, scratch
add x11, x11, x0 # perform first operation
amomin.w x11, x20, (x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x19, scratch
add x8, x8, x0 # perform first operation
amomin.w x8, x1, (x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x26, scratch
add x8, x6, x30 # perform first operation
amomin.w x8, x17, (x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x24, scratch
add x15, x20, x21 # perform first operation
amomin.w x15, x29, (x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x22, scratch
add x15, x10, x24 # perform first operation
amomin.w x15, x12, (x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x17, scratch
add x7, x26, x21 # perform first operation
amomin.w x26, x10, (x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x19, scratch
add x18, x20, x6 # perform first operation
amomin.w x6, x12, (x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x6, scratch
add x21, x22, x31 # perform first operation
amomin.w x8, x14, (x6) # perform second (triggering) operation

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
