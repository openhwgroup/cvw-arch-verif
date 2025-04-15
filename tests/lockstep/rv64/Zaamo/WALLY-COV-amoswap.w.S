///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amoswap.w.S
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
li x24, 0xfd394a8169a8f6b5 # load random value
la x1, scratch # base address
sd x24, 0(x1) # store in memory
li x24, 0x6e5fa331768beaa0 # load another value into integer register
amoswap.w x11, x24, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x19, 0x3856594e933054eb # load random value
la x2, scratch # base address
sd x19, 0(x2) # store in memory
li x19, 0x2dbd849442f9f9b3 # load another value into integer register
amoswap.w x24, x19, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x2, 0x89c90cd1d230be1e # load random value
la x3, scratch # base address
sd x2, 0(x3) # store in memory
li x2, 0xcb476f00f70e8e3b # load another value into integer register
amoswap.w x27, x2, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x79899694ab1143f0 # load random value
la x4, scratch # base address
sd x31, 0(x4) # store in memory
li x31, 0xb869166ce707270a # load another value into integer register
amoswap.w x16, x31, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0x342d5a10bc78dabe # load random value
la x5, scratch # base address
sd x15, 0(x5) # store in memory
li x15, 0x2649d5a6b87a112c # load another value into integer register
amoswap.w x30, x15, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x196e24c0fa8fb218 # load random value
la x6, scratch # base address
sd x29, 0(x6) # store in memory
li x29, 0x84ed38308937e8b5 # load another value into integer register
amoswap.w x28, x29, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0xf85c4483117b571d # load random value
la x7, scratch # base address
sd x18, 0(x7) # store in memory
li x18, 0xfdfab33e007a3838 # load another value into integer register
amoswap.w x28, x18, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x19, 0xfb95a21b5c2f9a21 # load random value
la x8, scratch # base address
sd x19, 0(x8) # store in memory
li x19, 0x7331e7a95c4d99a1 # load another value into integer register
amoswap.w x10, x19, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x13, 0x0d775717039a9efa # load random value
la x9, scratch # base address
sd x13, 0(x9) # store in memory
li x13, 0x124b09ce7660896d # load another value into integer register
amoswap.w x21, x13, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x22, 0xaee7d8794b71d00d # load random value
la x10, scratch # base address
sd x22, 0(x10) # store in memory
li x22, 0xec28aafe14cd0ce3 # load another value into integer register
amoswap.w x20, x22, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x19, 0x01aadb536b32f7a8 # load random value
la x11, scratch # base address
sd x19, 0(x11) # store in memory
li x19, 0x1205fcd9709521e1 # load another value into integer register
amoswap.w x21, x19, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x23, 0x43d63ed41808e49f # load random value
la x12, scratch # base address
sd x23, 0(x12) # store in memory
li x23, 0x1f8ee248993ccb4c # load another value into integer register
amoswap.w x27, x23, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x31, 0xf6019dd7e87d41cb # load random value
la x13, scratch # base address
sd x31, 0(x13) # store in memory
li x31, 0x50dbda3e5d27851d # load another value into integer register
amoswap.w x24, x31, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x3, 0x05ddce2df5c2b0f8 # load random value
la x14, scratch # base address
sd x3, 0(x14) # store in memory
li x3, 0xdb4120282a3fe4c2 # load another value into integer register
amoswap.w x2, x3, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x6, 0x437225c6ed667bfc # load random value
la x15, scratch # base address
sd x6, 0(x15) # store in memory
li x6, 0xf15a18e54805f6a8 # load another value into integer register
amoswap.w x30, x6, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x5, 0xa7af676e2aa4376f # load random value
la x16, scratch # base address
sd x5, 0(x16) # store in memory
li x5, 0x3af5a1d9e8b08ca9 # load another value into integer register
amoswap.w x29, x5, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x13, 0xd9d03b6a6e3dcc7a # load random value
la x17, scratch # base address
sd x13, 0(x17) # store in memory
li x13, 0xd1c58658f7b019da # load another value into integer register
amoswap.w x30, x13, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x11, 0x846ce9f91129bbea # load random value
la x18, scratch # base address
sd x11, 0(x18) # store in memory
li x11, 0xf157fe49f26b7eaa # load another value into integer register
amoswap.w x13, x11, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x24, 0x88ed7c9dfc130e10 # load random value
la x19, scratch # base address
sd x24, 0(x19) # store in memory
li x24, 0x06020d7d9e24f9f1 # load another value into integer register
amoswap.w x21, x24, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x25, 0xd621610f07adcd00 # load random value
la x20, scratch # base address
sd x25, 0(x20) # store in memory
li x25, 0x94c40c0d95bb91b4 # load another value into integer register
amoswap.w x21, x25, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x12, 0x80a829e262be483e # load random value
la x21, scratch # base address
sd x12, 0(x21) # store in memory
li x12, 0x18c75fa68b42d681 # load another value into integer register
amoswap.w x6, x12, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x20, 0x5dfe497f45c017dc # load random value
la x22, scratch # base address
sd x20, 0(x22) # store in memory
li x20, 0xf30912c19efbf005 # load another value into integer register
amoswap.w x28, x20, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x9, 0x4b22b9901cc736e8 # load random value
la x23, scratch # base address
sd x9, 0(x23) # store in memory
li x9, 0x33f128751d1cb5e8 # load another value into integer register
amoswap.w x19, x9, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x14, 0x571c31db143e76e8 # load random value
la x24, scratch # base address
sd x14, 0(x24) # store in memory
li x14, 0x0197050200f64466 # load another value into integer register
amoswap.w x16, x14, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x16, 0x384e73183d2c8fd4 # load random value
la x25, scratch # base address
sd x16, 0(x25) # store in memory
li x16, 0x17240c0533a10c45 # load another value into integer register
amoswap.w x6, x16, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x17, 0x57b3e4857b832bca # load random value
la x26, scratch # base address
sd x17, 0(x26) # store in memory
li x17, 0x83cd2fe8b625139b # load another value into integer register
amoswap.w x13, x17, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x6, 0xe24830c19302a7c4 # load random value
la x27, scratch # base address
sd x6, 0(x27) # store in memory
li x6, 0xaa1a4e92b2e0ab80 # load another value into integer register
amoswap.w x28, x6, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x1, 0xa21996d549219066 # load random value
la x28, scratch # base address
sd x1, 0(x28) # store in memory
li x1, 0x1b77a55fc0e6b519 # load another value into integer register
amoswap.w x26, x1, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x26, 0x36a90289e2a91ab4 # load random value
la x29, scratch # base address
sd x26, 0(x29) # store in memory
li x26, 0x65d2a51cc5cf120c # load another value into integer register
amoswap.w x10, x26, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x9, 0xf7a181814333dd73 # load random value
la x30, scratch # base address
sd x9, 0(x30) # store in memory
li x9, 0x08ef355c9d5a464e # load another value into integer register
amoswap.w x16, x9, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x21, 0xe854f12264ae3da1 # load random value
la x31, scratch # base address
sd x21, 0(x31) # store in memory
li x21, 0x02bd73cecc4fd0d6 # load another value into integer register
amoswap.w x8, x21, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xb7d53d06b7536c6c # load random value
la x9, scratch # base address
sd x0, 0(x9) # store in memory
li x0, 0x48c0c5f4adf6ac4c # load another value into integer register
amoswap.w x26, x0, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x7bc4717967672469 # load random value
la x17, scratch # base address
sd x1, 0(x17) # store in memory
li x1, 0xcdb1b9ec918c6836 # load another value into integer register
amoswap.w x14, x1, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x8bf6435b08d9d221 # load random value
la x25, scratch # base address
sd x2, 0(x25) # store in memory
li x2, 0xd60e43a7ffd33ab9 # load another value into integer register
amoswap.w x3, x2, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x0c09cc001b00ef41 # load random value
la x26, scratch # base address
sd x3, 0(x26) # store in memory
li x3, 0xa3a7a3286dd1e944 # load another value into integer register
amoswap.w x10, x3, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xba900f6a39abe170 # load random value
la x7, scratch # base address
sd x4, 0(x7) # store in memory
li x4, 0x4dbd0794912f8cd5 # load another value into integer register
amoswap.w x21, x4, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe4be96b162696d98 # load random value
la x27, scratch # base address
sd x5, 0(x27) # store in memory
li x5, 0x57627a7bc944fe36 # load another value into integer register
amoswap.w x6, x5, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x6, 0x01cfcc3fa36bd941 # load random value
la x25, scratch # base address
sd x6, 0(x25) # store in memory
li x6, 0xd31f2520dcfae7ea # load another value into integer register
amoswap.w x12, x6, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe00f26b1fba3d3e6 # load random value
la x14, scratch # base address
sd x7, 0(x14) # store in memory
li x7, 0x3c85269fc374f4c7 # load another value into integer register
amoswap.w x27, x7, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x87d498df6f8ec3aa # load random value
la x18, scratch # base address
sd x8, 0(x18) # store in memory
li x8, 0x6f62524151e66845 # load another value into integer register
amoswap.w x3, x8, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xf9b742bf37d08db5 # load random value
la x26, scratch # base address
sd x9, 0(x26) # store in memory
li x9, 0xc8bb4f7709678ac1 # load another value into integer register
amoswap.w x25, x9, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x456c98fef2b02e3c # load random value
la x30, scratch # base address
sd x10, 0(x30) # store in memory
li x10, 0x60064c6160c62fde # load another value into integer register
amoswap.w x21, x10, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x277c6f2dc32c59a1 # load random value
la x14, scratch # base address
sd x11, 0(x14) # store in memory
li x11, 0xf47c2865bca5adba # load another value into integer register
amoswap.w x7, x11, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xb06eecbd2e26422f # load random value
la x22, scratch # base address
sd x12, 0(x22) # store in memory
li x12, 0x4803df2ea9242697 # load another value into integer register
amoswap.w x27, x12, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x411aa8a84475eb14 # load random value
la x28, scratch # base address
sd x13, 0(x28) # store in memory
li x13, 0x63b8c94e300b0b0c # load another value into integer register
amoswap.w x9, x13, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xfd1cfefc9d2bcf83 # load random value
la x2, scratch # base address
sd x14, 0(x2) # store in memory
li x14, 0x5cd1811300bb4293 # load another value into integer register
amoswap.w x16, x14, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xf2e0f014523fd8ad # load random value
la x20, scratch # base address
sd x15, 0(x20) # store in memory
li x15, 0x79ddacd1a0725350 # load another value into integer register
amoswap.w x18, x15, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x3c450d5b54afcb53 # load random value
la x8, scratch # base address
sd x16, 0(x8) # store in memory
li x16, 0x6578040dcfaed7cd # load another value into integer register
amoswap.w x25, x16, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x0e66200939019433 # load random value
la x8, scratch # base address
sd x17, 0(x8) # store in memory
li x17, 0x1c07ba3788216d4e # load another value into integer register
amoswap.w x29, x17, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x983f4b279463eff2 # load random value
la x6, scratch # base address
sd x18, 0(x6) # store in memory
li x18, 0x79c0b39b798ea47d # load another value into integer register
amoswap.w x29, x18, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x435ec9f7bc86ff39 # load random value
la x16, scratch # base address
sd x19, 0(x16) # store in memory
li x19, 0xf449c801a1b34587 # load another value into integer register
amoswap.w x17, x19, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x4d68a52e42003e02 # load random value
la x29, scratch # base address
sd x20, 0(x29) # store in memory
li x20, 0x5831ffd8ed0a187e # load another value into integer register
amoswap.w x9, x20, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x999252682f0ac7d8 # load random value
la x18, scratch # base address
sd x21, 0(x18) # store in memory
li x21, 0xdd4430d455315c94 # load another value into integer register
amoswap.w x26, x21, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0xc5c83c6e28a95bdc # load random value
la x19, scratch # base address
sd x22, 0(x19) # store in memory
li x22, 0xd59559d9ecdcd859 # load another value into integer register
amoswap.w x27, x22, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x85ae64e8d4e5ee36 # load random value
la x16, scratch # base address
sd x23, 0(x16) # store in memory
li x23, 0x40d9657b0a747bf5 # load another value into integer register
amoswap.w x14, x23, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x6cdc88d1bc430e9a # load random value
la x5, scratch # base address
sd x24, 0(x5) # store in memory
li x24, 0x3d2779dcb7d0e67f # load another value into integer register
amoswap.w x6, x24, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xb257583783639c94 # load random value
la x9, scratch # base address
sd x25, 0(x9) # store in memory
li x25, 0x4831725dfacfae79 # load another value into integer register
amoswap.w x29, x25, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0xccb400839d2691d4 # load random value
la x18, scratch # base address
sd x26, 0(x18) # store in memory
li x26, 0x44d61964e2d77500 # load another value into integer register
amoswap.w x30, x26, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x78a6353e201ebefe # load random value
la x9, scratch # base address
sd x27, 0(x9) # store in memory
li x27, 0x811b85ec700b6629 # load another value into integer register
amoswap.w x25, x27, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x38dc5fc37fb5668a # load random value
la x3, scratch # base address
sd x28, 0(x3) # store in memory
li x28, 0x9fa46ed52a689799 # load another value into integer register
amoswap.w x9, x28, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xa98b6d6299959987 # load random value
la x14, scratch # base address
sd x29, 0(x14) # store in memory
li x29, 0xf24d8f5729d27ae5 # load another value into integer register
amoswap.w x1, x29, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xdd2375d745ab6e29 # load random value
la x19, scratch # base address
sd x30, 0(x19) # store in memory
li x30, 0x80c9262c5f05b952 # load another value into integer register
amoswap.w x26, x30, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x7ea8b9dc279716eb # load random value
la x12, scratch # base address
sd x31, 0(x12) # store in memory
li x31, 0x3433d89f8ecad8fb # load another value into integer register
amoswap.w x22, x31, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x17, 0x18f226ba45aa3621 # load random value
la x28, scratch # base address
sd x17, 0(x28) # store in memory
li x17, 0xe4aca7d9523fa6a9 # load another value into integer register
amoswap.w x0, x17, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x31, 0xf82d0a6354d4a7b0 # load random value
la x5, scratch # base address
sd x31, 0(x5) # store in memory
li x31, 0x01d29f32f6ae3c12 # load another value into integer register
amoswap.w x1, x31, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x30, 0xb443a0bdce517ac1 # load random value
la x21, scratch # base address
sd x30, 0(x21) # store in memory
li x30, 0xb28b7b1a5935e36c # load another value into integer register
amoswap.w x2, x30, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x20, 0x819e9108cac960a6 # load random value
la x27, scratch # base address
sd x20, 0(x27) # store in memory
li x20, 0xd891602fdcf51f78 # load another value into integer register
amoswap.w x3, x20, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0x6d519e22963412d1 # load random value
la x29, scratch # base address
sd x1, 0(x29) # store in memory
li x1, 0xdfbb02846378659c # load another value into integer register
amoswap.w x4, x1, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x7f2550be49061c68 # load random value
la x13, scratch # base address
sd x3, 0(x13) # store in memory
li x3, 0xe4f0e4218e8a9e4c # load another value into integer register
amoswap.w x5, x3, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0x87e32284365dff7f # load random value
la x15, scratch # base address
sd x7, 0(x15) # store in memory
li x7, 0xc1b0e9cd27dd4200 # load another value into integer register
amoswap.w x6, x7, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x18, 0xbbc8a31b4c6ec467 # load random value
la x27, scratch # base address
sd x18, 0(x27) # store in memory
li x18, 0x2e33c8ff035699fe # load another value into integer register
amoswap.w x7, x18, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x10, 0x30ce7a8f0511f78a # load random value
la x16, scratch # base address
sd x10, 0(x16) # store in memory
li x10, 0x4dc6e9cfb4ba6870 # load another value into integer register
amoswap.w x8, x10, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x22, 0xcf796824bee03049 # load random value
la x28, scratch # base address
sd x22, 0(x28) # store in memory
li x22, 0xacad216735a9d5c8 # load another value into integer register
amoswap.w x9, x22, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x7, 0x191e9c0c7bc0ceb0 # load random value
la x5, scratch # base address
sd x7, 0(x5) # store in memory
li x7, 0x9181ecc00b874e8e # load another value into integer register
amoswap.w x10, x7, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x7, 0xc26ddb9e3f465dcf # load random value
la x15, scratch # base address
sd x7, 0(x15) # store in memory
li x7, 0xe900b45e591246dd # load another value into integer register
amoswap.w x11, x7, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x21, 0x2459ef0b3ae5acb7 # load random value
la x30, scratch # base address
sd x21, 0(x30) # store in memory
li x21, 0x724fff74108fc2b4 # load another value into integer register
amoswap.w x12, x21, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x29, 0x894531b9d2ed09be # load random value
la x31, scratch # base address
sd x29, 0(x31) # store in memory
li x29, 0x3784a6b317bcf5cc # load another value into integer register
amoswap.w x13, x29, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x16, 0xdeec8911bd852157 # load random value
la x31, scratch # base address
sd x16, 0(x31) # store in memory
li x16, 0x8a0a66520be6d5c7 # load another value into integer register
amoswap.w x14, x16, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x27, 0xc39ee2e9f228827b # load random value
la x7, scratch # base address
sd x27, 0(x7) # store in memory
li x27, 0xe9c330ad8eb7b6ae # load another value into integer register
amoswap.w x15, x27, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x18, 0x23ffda376b2e3ef3 # load random value
la x30, scratch # base address
sd x18, 0(x30) # store in memory
li x18, 0x35d4ec6ffe6c6b06 # load another value into integer register
amoswap.w x16, x18, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x23, 0x3119431e380e3172 # load random value
la x15, scratch # base address
sd x23, 0(x15) # store in memory
li x23, 0x61fd31b118960e5e # load another value into integer register
amoswap.w x17, x23, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x22, 0x786d39e86c52d393 # load random value
la x8, scratch # base address
sd x22, 0(x8) # store in memory
li x22, 0x543aec7dab8036ce # load another value into integer register
amoswap.w x18, x22, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x6, 0xc4a3584ca1db3df8 # load random value
la x1, scratch # base address
sd x6, 0(x1) # store in memory
li x6, 0x42cf2d094859ee35 # load another value into integer register
amoswap.w x19, x6, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x22, 0xd9adf2614cdcb954 # load random value
la x7, scratch # base address
sd x22, 0(x7) # store in memory
li x22, 0x041cdcc629da98b2 # load another value into integer register
amoswap.w x20, x22, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x28, 0x70ca7d1307ac0b26 # load random value
la x19, scratch # base address
sd x28, 0(x19) # store in memory
li x28, 0x8b874259076a9df3 # load another value into integer register
amoswap.w x21, x28, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x14, 0x1ba90e66d65a557c # load random value
la x19, scratch # base address
sd x14, 0(x19) # store in memory
li x14, 0x93b3419c14d24071 # load another value into integer register
amoswap.w x22, x14, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x8d27c4f731b9a50a # load random value
la x5, scratch # base address
sd x23, 0(x5) # store in memory
li x23, 0x72261b1fd7977b48 # load another value into integer register
amoswap.w x23, x23, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x16, 0x79bd474d62fbd799 # load random value
la x11, scratch # base address
sd x16, 0(x11) # store in memory
li x16, 0x8a68101f22b1f8ee # load another value into integer register
amoswap.w x24, x16, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x18, 0xc19c9e33b93e4106 # load random value
la x21, scratch # base address
sd x18, 0(x21) # store in memory
li x18, 0x6c49d4657b84155c # load another value into integer register
amoswap.w x25, x18, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x8, 0x535cce7a3afca2a0 # load random value
la x7, scratch # base address
sd x8, 0(x7) # store in memory
li x8, 0x41ebb76a5cea7585 # load another value into integer register
amoswap.w x26, x8, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x17, 0x358efbb594abdc99 # load random value
la x22, scratch # base address
sd x17, 0(x22) # store in memory
li x17, 0x10066e4a9082562c # load another value into integer register
amoswap.w x27, x17, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x5, 0x6ca976b73c92c82d # load random value
la x18, scratch # base address
sd x5, 0(x18) # store in memory
li x5, 0xa18bd512f8eb91e3 # load another value into integer register
amoswap.w x28, x5, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x5, 0xebdec2df7096b068 # load random value
la x13, scratch # base address
sd x5, 0(x13) # store in memory
li x5, 0x84b0f8d8af36f3b4 # load another value into integer register
amoswap.w x29, x5, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x26, 0xd7d2fc14195e20e4 # load random value
la x8, scratch # base address
sd x26, 0(x8) # store in memory
li x26, 0x1ecc17f443cfd8f0 # load another value into integer register
amoswap.w x30, x26, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x8, 0xe6f284054b63e8b1 # load random value
la x9, scratch # base address
sd x8, 0(x9) # store in memory
li x8, 0x1bcc6959fc8e4d9d # load another value into integer register
amoswap.w x31, x8, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0x1294b590dadd1dcc # load random value
la x28, scratch # base address
sd x12, 0(x28) # store in memory
li x12, 0x0000000000000000 # load another value into integer register
amoswap.w x14, x12, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x16, 0xd9a04f91aa159ddc # load random value
la x26, scratch # base address
sd x16, 0(x26) # store in memory
li x16, 0x0000000000000001 # load another value into integer register
amoswap.w x10, x16, (x26) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x6, 0xa16c1c18b5b2f631 # load random value
la x13, scratch # base address
sd x6, 0(x13) # store in memory
li x6, 0x0000000000000002 # load another value into integer register
amoswap.w x20, x6, (x13) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x22, 0xe5421f5f51ce2d0a # load random value
la x12, scratch # base address
sd x22, 0(x12) # store in memory
li x22, 0x8000000000000000 # load another value into integer register
amoswap.w x7, x22, (x12) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x7, 0x6684c25e6040f353 # load random value
la x8, scratch # base address
sd x7, 0(x8) # store in memory
li x7, 0x8000000000000001 # load another value into integer register
amoswap.w x12, x7, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x25, 0xf4189b2cad7c9f9c # load random value
la x26, scratch # base address
sd x25, 0(x26) # store in memory
li x25, 0x7fffffffffffffff # load another value into integer register
amoswap.w x29, x25, (x26) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x11, 0x26aa50fcb7be4e88 # load random value
la x12, scratch # base address
sd x11, 0(x12) # store in memory
li x11, 0x7ffffffffffffffe # load another value into integer register
amoswap.w x21, x11, (x12) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x18, 0x1546bacb59ac768e # load random value
la x15, scratch # base address
sd x18, 0(x15) # store in memory
li x18, 0xffffffffffffffff # load another value into integer register
amoswap.w x14, x18, (x15) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x16, 0x7d05b3562a30545a # load random value
la x18, scratch # base address
sd x16, 0(x18) # store in memory
li x16, 0xfffffffffffffffe # load another value into integer register
amoswap.w x3, x16, (x18) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x12, 0x8ef457d9eb3f3dd0 # load random value
la x2, scratch # base address
sd x12, 0(x2) # store in memory
li x12, 0x5bbc887763ae86f2 # load another value into integer register
amoswap.w x19, x12, (x2) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xabcc5ca52c5a1fba # load random value
la x21, scratch # base address
sd x12, 0(x21) # store in memory
li x12, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amoswap.w x5, x12, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x19, 0xdd60215abf5c5100 # load random value
la x27, scratch # base address
sd x19, 0(x27) # store in memory
li x19, 0x5555555555555555 # load another value into integer register
amoswap.w x7, x19, (x27) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0x971aa7a451e10b21 # load random value
la x14, scratch # base address
sd x2, 0(x14) # store in memory
li x2, 0x00000000ffffffff # load another value into integer register
amoswap.w x27, x2, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0xed60396d26102a21 # load random value
la x26, scratch # base address
sd x23, 0(x26) # store in memory
li x23, 0x00000000fffffffe # load another value into integer register
amoswap.w x31, x23, (x26) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x17, 0x59f984672e598d0d # load random value
la x8, scratch # base address
sd x17, 0(x8) # store in memory
li x17, 0x0000000100000000 # load another value into integer register
amoswap.w x20, x17, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x2, 0x0b74824e3b9c9021 # load random value
la x22, scratch # base address
sd x2, 0(x22) # store in memory
li x2, 0x0000000100000001 # load another value into integer register
amoswap.w x24, x2, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xe79fe7da3659b6aa # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoswap.w x1, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x377b5115f72703cb # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoswap.w x7, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xb762ba3c8c25c916 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoswap.w x18, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa88e641a4887f8a5 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoswap.w x28, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf28ba73bd3f5ee5a # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoswap.w x7, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1546c208aa9a3714 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoswap.w x15, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdf9bb8b31745ecb8 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoswap.w x15, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x1b3c20e15d2cfd8f # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoswap.w x20, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x25b4dbe2218ee52b # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoswap.w x6, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x79af41c1b9e84bf3 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoswap.w x16, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xc3fa7a6bfc5a6d88 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoswap.w x31, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x3a8d8d57dfcd7df5 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoswap.w x1, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x42b4c425a1768ab5 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoswap.w x29, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x5e4f1b97b20dce01 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoswap.w x16, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x8472d258d652513f # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoswap.w x21, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xdf0da8452f73d307 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoswap.w x25, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x1191693b7c34a9a4 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoswap.w x19, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xc2c20184567c96e1 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoswap.w x21, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x13fe49adaecf5492 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoswap.w x10, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xa3b716a56d27d4d7 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoswap.w x2, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xa7a32c6af6ee6cb0 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoswap.w x20, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x40163b32d0be81b4 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoswap.w x27, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x856e72b054cae567 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoswap.w x27, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x9a9c3acecab9179d # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoswap.w x21, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x5ad99eb19e7a4350 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoswap.w x24, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x86ca472ca2d3ff78 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoswap.w x3, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x1c3278b1f05b092a # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoswap.w x9, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x7f3bc10c6bc60c5d # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoswap.w x5, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x61dc9f1c6dc9419e # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoswap.w x17, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x67d2d1645f6e18b0 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoswap.w x12, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xc87501c55a96d437 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoswap.w x26, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x13, 0x34f03f273a204622 # load random value
la x1, scratch # base address
sd x13, 0(x1) # store in memory
li x13, 0x6e2052e9d504392f # load another value into integer register
amoswap.w x1, x13, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x5, 0x71d545916b197d69 # load random value
la x2, scratch # base address
sd x5, 0(x2) # store in memory
li x5, 0x5d88f8d489a14d4b # load another value into integer register
amoswap.w x2, x5, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x18, 0x3c1d6582c507ad92 # load random value
la x3, scratch # base address
sd x18, 0(x3) # store in memory
li x18, 0xe3bb67749e5d2a54 # load another value into integer register
amoswap.w x3, x18, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x63727a3e2e27c260 # load random value
la x4, scratch # base address
sd x11, 0(x4) # store in memory
li x11, 0x7b67fdd2665fc5e5 # load another value into integer register
amoswap.w x4, x11, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0xed3d110f1741fad3 # load random value
la x5, scratch # base address
sd x21, 0(x5) # store in memory
li x21, 0xc59ce8217c00a070 # load another value into integer register
amoswap.w x5, x21, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x4eee4c8e34f3371c # load random value
la x6, scratch # base address
sd x4, 0(x6) # store in memory
li x4, 0x2e0398ba720d6388 # load another value into integer register
amoswap.w x6, x4, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0x82af29837b3d3153 # load random value
la x7, scratch # base address
sd x28, 0(x7) # store in memory
li x28, 0x976e2ec46749f4f4 # load another value into integer register
amoswap.w x7, x28, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x17, 0x47da34b5b839c1c1 # load random value
la x8, scratch # base address
sd x17, 0(x8) # store in memory
li x17, 0xf2a5ff109619c91d # load another value into integer register
amoswap.w x8, x17, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x12, 0x35f7d39ba5d5275a # load random value
la x9, scratch # base address
sd x12, 0(x9) # store in memory
li x12, 0x26a432db90b9a81d # load another value into integer register
amoswap.w x9, x12, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x19, 0x4fe81f8785727bf7 # load random value
la x10, scratch # base address
sd x19, 0(x10) # store in memory
li x19, 0x262c90b0e2e6b9fc # load another value into integer register
amoswap.w x10, x19, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x30, 0x0e7b6f013b113eb0 # load random value
la x11, scratch # base address
sd x30, 0(x11) # store in memory
li x30, 0x542914c49b46d803 # load another value into integer register
amoswap.w x11, x30, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x23, 0xc91b98393d28579e # load random value
la x12, scratch # base address
sd x23, 0(x12) # store in memory
li x23, 0x91896233de7197c5 # load another value into integer register
amoswap.w x12, x23, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x31, 0x8bc7f3bcee04432e # load random value
la x13, scratch # base address
sd x31, 0(x13) # store in memory
li x31, 0xc67608d4c7679323 # load another value into integer register
amoswap.w x13, x31, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x30, 0x7dfbe872aa38e5f4 # load random value
la x14, scratch # base address
sd x30, 0(x14) # store in memory
li x30, 0x391a0af4561ef7fb # load another value into integer register
amoswap.w x14, x30, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x2, 0x09982a610e100d48 # load random value
la x15, scratch # base address
sd x2, 0(x15) # store in memory
li x2, 0x1a99cbfb6ab90bbc # load another value into integer register
amoswap.w x15, x2, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x30, 0x7d0a1dd49e72647b # load random value
la x16, scratch # base address
sd x30, 0(x16) # store in memory
li x30, 0xa0ec5e943f2177a3 # load another value into integer register
amoswap.w x16, x30, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x31, 0xeec899be4d1c2f29 # load random value
la x17, scratch # base address
sd x31, 0(x17) # store in memory
li x31, 0xe93b4b220017f33b # load another value into integer register
amoswap.w x17, x31, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x19, 0xcb97c2afc9d408ec # load random value
la x18, scratch # base address
sd x19, 0(x18) # store in memory
li x19, 0x5f59c9a4c662b74b # load another value into integer register
amoswap.w x18, x19, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x8, 0xb189f7e270fac3b8 # load random value
la x19, scratch # base address
sd x8, 0(x19) # store in memory
li x8, 0xe90327efab1312d3 # load another value into integer register
amoswap.w x19, x8, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x13, 0x8b23f61ffed221d4 # load random value
la x20, scratch # base address
sd x13, 0(x20) # store in memory
li x13, 0x4ae76c0a4a27a3a8 # load another value into integer register
amoswap.w x20, x13, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x24, 0xf85a9531ac0190f4 # load random value
la x21, scratch # base address
sd x24, 0(x21) # store in memory
li x24, 0xb24a5619c4b31fff # load another value into integer register
amoswap.w x21, x24, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x23, 0xd38239032d358f1b # load random value
la x22, scratch # base address
sd x23, 0(x22) # store in memory
li x23, 0x6897840721e2d085 # load another value into integer register
amoswap.w x22, x23, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x8, 0xbbaa6773b6baa529 # load random value
la x23, scratch # base address
sd x8, 0(x23) # store in memory
li x8, 0x8b4ef850341d3e7b # load another value into integer register
amoswap.w x23, x8, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x12, 0x9c8c239c9e2e7d63 # load random value
la x24, scratch # base address
sd x12, 0(x24) # store in memory
li x12, 0x941249d200f5fca6 # load another value into integer register
amoswap.w x24, x12, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x11, 0xe07f8a8a889220cd # load random value
la x25, scratch # base address
sd x11, 0(x25) # store in memory
li x11, 0x245d21bcd321536b # load another value into integer register
amoswap.w x25, x11, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x1, 0x25068fed19ec055d # load random value
la x26, scratch # base address
sd x1, 0(x26) # store in memory
li x1, 0xf0b75f3b2967ad24 # load another value into integer register
amoswap.w x26, x1, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x1, 0x6e9656ff643984fe # load random value
la x27, scratch # base address
sd x1, 0(x27) # store in memory
li x1, 0x011ebe1ae85b7418 # load another value into integer register
amoswap.w x27, x1, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x10, 0x3104b8254f6f74e1 # load random value
la x28, scratch # base address
sd x10, 0(x28) # store in memory
li x10, 0x22de269438ee8f04 # load another value into integer register
amoswap.w x28, x10, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x14, 0xf8c2b5941b1d0bfc # load random value
la x29, scratch # base address
sd x14, 0(x29) # store in memory
li x14, 0x2a6e0819a4256422 # load another value into integer register
amoswap.w x29, x14, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x21, 0x0056ecb76971bd23 # load random value
la x30, scratch # base address
sd x21, 0(x30) # store in memory
li x21, 0xff85a68cca1b6c27 # load another value into integer register
amoswap.w x30, x21, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x29, 0x02bd66cdf9082d55 # load random value
la x31, scratch # base address
sd x29, 0(x31) # store in memory
li x29, 0x779a3354f9a7ff41 # load another value into integer register
amoswap.w x31, x29, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x40865f5783c36797 # load random value
la x15, scratch # base address
sd x0, 0(x15) # store in memory
li x0, 0x04672793a6136071 # load another value into integer register
amoswap.w x0, x0, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x59b66f1ad5f3c1bd # load random value
la x16, scratch # base address
sd x1, 0(x16) # store in memory
li x1, 0x9a9a3e8a196d420a # load another value into integer register
amoswap.w x1, x1, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x7a1cb64d432eca16 # load random value
la x15, scratch # base address
sd x2, 0(x15) # store in memory
li x2, 0x6aa277234781e16c # load another value into integer register
amoswap.w x2, x2, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x98e93afb3699d6e7 # load random value
la x20, scratch # base address
sd x3, 0(x20) # store in memory
li x3, 0x0bafeba7adc9a2e2 # load another value into integer register
amoswap.w x3, x3, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xae2d8b4038705e49 # load random value
la x27, scratch # base address
sd x4, 0(x27) # store in memory
li x4, 0xf401e24233e4a1ec # load another value into integer register
amoswap.w x4, x4, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe95fae3692c8c73b # load random value
la x21, scratch # base address
sd x5, 0(x21) # store in memory
li x5, 0xa740b064491dc670 # load another value into integer register
amoswap.w x5, x5, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5cbd823399cab8e7 # load random value
la x20, scratch # base address
sd x6, 0(x20) # store in memory
li x6, 0x268cd8285a1175b1 # load another value into integer register
amoswap.w x6, x6, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x05727811a72ff8a8 # load random value
la x11, scratch # base address
sd x7, 0(x11) # store in memory
li x7, 0x55b38375847e0881 # load another value into integer register
amoswap.w x7, x7, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x13b7ee895f4e58de # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoswap.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x5d71449ca7d4ec7c # load random value
la x16, scratch # base address
sd x9, 0(x16) # store in memory
li x9, 0xa1a7f32ba75d05eb # load another value into integer register
amoswap.w x9, x9, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x4d43f7691229e58b # load random value
la x18, scratch # base address
sd x10, 0(x18) # store in memory
li x10, 0xf925e1c5785c5e4f # load another value into integer register
amoswap.w x10, x10, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xabbd5c47c819d533 # load random value
la x5, scratch # base address
sd x11, 0(x5) # store in memory
li x11, 0x5dcae0270ece5429 # load another value into integer register
amoswap.w x11, x11, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xf75546d2ab087aec # load random value
la x3, scratch # base address
sd x12, 0(x3) # store in memory
li x12, 0xa2a94ed987ab05ee # load another value into integer register
amoswap.w x12, x12, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xefa42aefdb9e8f84 # load random value
la x26, scratch # base address
sd x13, 0(x26) # store in memory
li x13, 0x78c0cd1b3f6ac7b8 # load another value into integer register
amoswap.w x13, x13, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x11c20f003cb195ea # load random value
la x8, scratch # base address
sd x14, 0(x8) # store in memory
li x14, 0x5bf579aa0d6c2f20 # load another value into integer register
amoswap.w x14, x14, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x3270bb759d15c74d # load random value
la x12, scratch # base address
sd x15, 0(x12) # store in memory
li x15, 0x18b0ae28045bb961 # load another value into integer register
amoswap.w x15, x15, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x0b6242d75ed7f6bd # load random value
la x19, scratch # base address
sd x16, 0(x19) # store in memory
li x16, 0x8aab4f1a958088f0 # load another value into integer register
amoswap.w x16, x16, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x400447999d784735 # load random value
la x27, scratch # base address
sd x17, 0(x27) # store in memory
li x17, 0x78594b906632f2ee # load another value into integer register
amoswap.w x17, x17, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x5d02c5ad32487086 # load random value
la x21, scratch # base address
sd x18, 0(x21) # store in memory
li x18, 0x7cfe7908f5bdd30b # load another value into integer register
amoswap.w x18, x18, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x861f5a1445ba799c # load random value
la x3, scratch # base address
sd x19, 0(x3) # store in memory
li x19, 0x66dcad930a3a8898 # load another value into integer register
amoswap.w x19, x19, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x5f035c691727276c # load random value
la x13, scratch # base address
sd x20, 0(x13) # store in memory
li x20, 0xa625292d0d65f274 # load another value into integer register
amoswap.w x20, x20, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x23d0fd2f8a6fcaeb # load random value
la x25, scratch # base address
sd x21, 0(x25) # store in memory
li x21, 0xe5f51d79dd99f0bb # load another value into integer register
amoswap.w x21, x21, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x28c6d5c6f1d57a05 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoswap.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x0ef18b01696d1a6e # load random value
la x14, scratch # base address
sd x23, 0(x14) # store in memory
li x23, 0xc4d78c54bd4bda88 # load another value into integer register
amoswap.w x23, x23, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0xe7e3ba5f8084086c # load random value
la x2, scratch # base address
sd x24, 0(x2) # store in memory
li x24, 0x49a04db7acdd328e # load another value into integer register
amoswap.w x24, x24, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0xc228ed0a93269114 # load random value
la x15, scratch # base address
sd x25, 0(x15) # store in memory
li x25, 0x12301e5463786245 # load another value into integer register
amoswap.w x25, x25, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x46e92216cee2bffd # load random value
la x24, scratch # base address
sd x26, 0(x24) # store in memory
li x26, 0x58ddbb13f82d13db # load another value into integer register
amoswap.w x26, x26, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x32731dd95ada62cb # load random value
la x5, scratch # base address
sd x27, 0(x5) # store in memory
li x27, 0x0a2c34389561e819 # load another value into integer register
amoswap.w x27, x27, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x0d4029fba7e1332a # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoswap.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x4d80e81de3ad2dc2 # load random value
la x24, scratch # base address
sd x29, 0(x24) # store in memory
li x29, 0xd0835eba56910fce # load another value into integer register
amoswap.w x29, x29, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x012cfc18abe9b8da # load random value
la x15, scratch # base address
sd x30, 0(x15) # store in memory
li x30, 0xfc082851621b33bb # load another value into integer register
amoswap.w x30, x30, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x15157b308c3f9dd9 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoswap.w x31, x31, (x31) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x6073f003a761eb4a # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoswap.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x0868ead20c5274cb # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoswap.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xefae0e6073332951 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoswap.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc8c1d50eabaa97a8 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoswap.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x42d452e8fcc7368c # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoswap.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0b48b8b994d10e78 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoswap.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x72564df0f60863eb # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoswap.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xa685066b59736602 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoswap.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xd3d4fcd80c18769a # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoswap.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x5fb19a90bc1d8796 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoswap.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xb3a1dbe09ab0cea2 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoswap.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xb6b25f1b4eac737c # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoswap.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x64df1050b470612f # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoswap.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x2ab6c2c52fe471e1 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoswap.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xe194a5a806c441ec # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoswap.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x0f75216efb583742 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoswap.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x288cac81c7d361d7 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoswap.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xff416be7524a5dbc # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoswap.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x98d1d94c155b8c52 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoswap.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xc1a7408a9fa92983 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoswap.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xf1241069d5a58f06 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoswap.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x42208b078af1ecb1 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoswap.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x6349e10d55e1c650 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoswap.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x2704baf377da76d0 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoswap.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x27f5e88c9b52cc83 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoswap.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xf6ce92977cecdd4e # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoswap.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xe6f622ad4ed9f0ca # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoswap.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x281e8d3e66f96dc7 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoswap.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x2b357cbdfb0ec779 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoswap.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x2ae870bd7ea7be08 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoswap.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x9fd6db6b23ce40fe # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoswap.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x30, scratch
add x1, x6, x12 # perform first operation
amoswap.w x26, x22, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x22, scratch
add x5, x29, x9 # perform first operation
amoswap.w x17, x18, (x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x30, scratch
add x5, x2, x23 # perform first operation
amoswap.w x20, x14, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x31, scratch
add x22, x22, x0 # perform first operation
amoswap.w x14, x22, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x31, scratch
add x31, x31, x0 # perform first operation
amoswap.w x31, x7, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x1, scratch
add x30, x30, x0 # perform first operation
amoswap.w x25, x8, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x28, scratch
add x12, x13, x24 # perform first operation
amoswap.w x12, x8, (x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x8, scratch
add x5, x3, x29 # perform first operation
amoswap.w x5, x25, (x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x25, scratch
add x2, x5, x26 # perform first operation
amoswap.w x2, x14, (x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x11, scratch
add x17, x29, x30 # perform first operation
amoswap.w x29, x24, (x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x1, scratch
add x12, x29, x13 # perform first operation
amoswap.w x13, x25, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x1, scratch
add x25, x24, x3 # perform first operation
amoswap.w x2, x19, (x1) # perform second (triggering) operation

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
