///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amominu.w.S
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
li x9, 0x8b88fd65f742131e # load random value
la x1, scratch # base address
sd x9, 0(x1) # store in memory
li x9, 0x80a010871b4305ff # load another value into integer register
amominu.w x3, x9, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x12, 0xa0cb7a8b7640abd3 # load random value
la x2, scratch # base address
sd x12, 0(x2) # store in memory
li x12, 0x7e175f816e0b9ea6 # load another value into integer register
amominu.w x3, x12, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x8, 0xcfcaf5b8160fc2d4 # load random value
la x3, scratch # base address
sd x8, 0(x3) # store in memory
li x8, 0x1eff2308ab5f9529 # load another value into integer register
amominu.w x23, x8, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x68cce2762fef5cd8 # load random value
la x4, scratch # base address
sd x27, 0(x4) # store in memory
li x27, 0xdc1620b1b0753a3a # load another value into integer register
amominu.w x13, x27, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0x9c02026ea51c8db5 # load random value
la x5, scratch # base address
sd x28, 0(x5) # store in memory
li x28, 0x8398a0d168337b58 # load another value into integer register
amominu.w x22, x28, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x2cdcb20fc52a0090 # load random value
la x6, scratch # base address
sd x9, 0(x6) # store in memory
li x9, 0x4940e760fd62655d # load another value into integer register
amominu.w x2, x9, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x6932efdd1f9e2298 # load random value
la x7, scratch # base address
sd x11, 0(x7) # store in memory
li x11, 0xa9c164788c5050e9 # load another value into integer register
amominu.w x12, x11, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0x068d7abccf57989e # load random value
la x8, scratch # base address
sd x12, 0(x8) # store in memory
li x12, 0x4685fa878f5cb1d9 # load another value into integer register
amominu.w x5, x12, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x24, 0x5a49373f3e5c488f # load random value
la x9, scratch # base address
sd x24, 0(x9) # store in memory
li x24, 0x4bd31dd6b0a41cde # load another value into integer register
amominu.w x18, x24, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x1, 0x5e71c981b30990aa # load random value
la x10, scratch # base address
sd x1, 0(x10) # store in memory
li x1, 0x7174e81de0c5ba14 # load another value into integer register
amominu.w x29, x1, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x19, 0xbee16f8fe77f7c37 # load random value
la x11, scratch # base address
sd x19, 0(x11) # store in memory
li x19, 0xff9721b129a6c476 # load another value into integer register
amominu.w x28, x19, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0x1db1f38deaf20e35 # load random value
la x12, scratch # base address
sd x31, 0(x12) # store in memory
li x31, 0x561558e7d6ae879c # load another value into integer register
amominu.w x5, x31, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x28, 0x92b532895ba4f51f # load random value
la x13, scratch # base address
sd x28, 0(x13) # store in memory
li x28, 0x9a1582479169f79c # load another value into integer register
amominu.w x5, x28, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x28, 0x4a16b8012b6d5578 # load random value
la x14, scratch # base address
sd x28, 0(x14) # store in memory
li x28, 0xc027fbb7898c456f # load another value into integer register
amominu.w x25, x28, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x20, 0xc9fca54ac97e5fc8 # load random value
la x15, scratch # base address
sd x20, 0(x15) # store in memory
li x20, 0x38ddb1c42cd66130 # load another value into integer register
amominu.w x12, x20, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x22, 0x4e6de0c82cf2215a # load random value
la x16, scratch # base address
sd x22, 0(x16) # store in memory
li x22, 0xdeb6c6f0b59c077a # load another value into integer register
amominu.w x8, x22, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x7, 0xa0d11cd772c1ba5a # load random value
la x17, scratch # base address
sd x7, 0(x17) # store in memory
li x7, 0x58a8cfd6ffaa0047 # load another value into integer register
amominu.w x6, x7, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x8, 0x636cb6ebaf5aab39 # load random value
la x18, scratch # base address
sd x8, 0(x18) # store in memory
li x8, 0x223f20d53c7d1aa5 # load another value into integer register
amominu.w x9, x8, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x14, 0xec6a793f5d241596 # load random value
la x19, scratch # base address
sd x14, 0(x19) # store in memory
li x14, 0xd4efb9656e2350d0 # load another value into integer register
amominu.w x27, x14, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x30, 0xd8ec905bb36e9248 # load random value
la x20, scratch # base address
sd x30, 0(x20) # store in memory
li x30, 0x71378d01fa2bbaf1 # load another value into integer register
amominu.w x16, x30, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x16, 0x59541c62ff4d2e3b # load random value
la x21, scratch # base address
sd x16, 0(x21) # store in memory
li x16, 0x7e8bbd00a8fd7ef4 # load another value into integer register
amominu.w x30, x16, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x20, 0x8db167b7f06e5f68 # load random value
la x22, scratch # base address
sd x20, 0(x22) # store in memory
li x20, 0x92d72325876ea728 # load another value into integer register
amominu.w x13, x20, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x30, 0xfdfc8fef6f99a273 # load random value
la x23, scratch # base address
sd x30, 0(x23) # store in memory
li x30, 0xfe417b72400d360f # load another value into integer register
amominu.w x2, x30, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x6, 0xa8c97995f708ab89 # load random value
la x24, scratch # base address
sd x6, 0(x24) # store in memory
li x6, 0xfca98309f9b5624d # load another value into integer register
amominu.w x25, x6, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x17, 0xba4c47bb0aac492d # load random value
la x25, scratch # base address
sd x17, 0(x25) # store in memory
li x17, 0x4b687364580c540e # load another value into integer register
amominu.w x28, x17, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x21, 0x58c305d3d84aff20 # load random value
la x26, scratch # base address
sd x21, 0(x26) # store in memory
li x21, 0xb29d5acceb02d155 # load another value into integer register
amominu.w x3, x21, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x26, 0xe5e7a284ae0d7013 # load random value
la x27, scratch # base address
sd x26, 0(x27) # store in memory
li x26, 0x0d78825423441adc # load another value into integer register
amominu.w x28, x26, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x27, 0xb7e84ae93ac08e09 # load random value
la x28, scratch # base address
sd x27, 0(x28) # store in memory
li x27, 0xcb7f36fbce82d696 # load another value into integer register
amominu.w x11, x27, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x16, 0xc1417cf242b4a47e # load random value
la x29, scratch # base address
sd x16, 0(x29) # store in memory
li x16, 0xa0a36ed5a594b699 # load another value into integer register
amominu.w x7, x16, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x28, 0xab9007b3a6f685f7 # load random value
la x30, scratch # base address
sd x28, 0(x30) # store in memory
li x28, 0x2d171d8f8da2042a # load another value into integer register
amominu.w x7, x28, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x23, 0x5778e021e3c03887 # load random value
la x31, scratch # base address
sd x23, 0(x31) # store in memory
li x23, 0x588a1d0269bfb6be # load another value into integer register
amominu.w x21, x23, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xcfac620bfc1eab84 # load random value
la x7, scratch # base address
sd x0, 0(x7) # store in memory
li x0, 0xd416e0c71b26ad13 # load another value into integer register
amominu.w x23, x0, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x43b3f948530f0dfe # load random value
la x11, scratch # base address
sd x1, 0(x11) # store in memory
li x1, 0xc02693026c5359b0 # load another value into integer register
amominu.w x9, x1, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xac89d1a0e2a0881d # load random value
la x12, scratch # base address
sd x2, 0(x12) # store in memory
li x2, 0x3a8e245ad8243730 # load another value into integer register
amominu.w x26, x2, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0xa7f34371a891c755 # load random value
la x5, scratch # base address
sd x3, 0(x5) # store in memory
li x3, 0x30654bb2fc14aa6c # load another value into integer register
amominu.w x18, x3, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0606f6033049ddb1 # load random value
la x9, scratch # base address
sd x4, 0(x9) # store in memory
li x4, 0xad1fa6383183133d # load another value into integer register
amominu.w x6, x4, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x24f3d6b6e68fb596 # load random value
la x14, scratch # base address
sd x5, 0(x14) # store in memory
li x5, 0x849917252c0ca61e # load another value into integer register
amominu.w x13, x5, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5820e11153dce553 # load random value
la x25, scratch # base address
sd x6, 0(x25) # store in memory
li x6, 0x86f79ef9a38a5482 # load another value into integer register
amominu.w x20, x6, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xec5a8a417bb124ce # load random value
la x17, scratch # base address
sd x7, 0(x17) # store in memory
li x7, 0x00cf5dc796c8970b # load another value into integer register
amominu.w x16, x7, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x7b7d4011ba3d4929 # load random value
la x2, scratch # base address
sd x8, 0(x2) # store in memory
li x8, 0xf2d6f49c4ccc42c6 # load another value into integer register
amominu.w x14, x8, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x79fe15023baa0dab # load random value
la x11, scratch # base address
sd x9, 0(x11) # store in memory
li x9, 0xd8c648f22998b204 # load another value into integer register
amominu.w x17, x9, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xf1908cc8c8fbdcc1 # load random value
la x19, scratch # base address
sd x10, 0(x19) # store in memory
li x10, 0x3b71a551f02c1731 # load another value into integer register
amominu.w x29, x10, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xbfd6f57fee5c455a # load random value
la x14, scratch # base address
sd x11, 0(x14) # store in memory
li x11, 0xeabc35f74e2defc4 # load another value into integer register
amominu.w x25, x11, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x4f767496861a78d5 # load random value
la x30, scratch # base address
sd x12, 0(x30) # store in memory
li x12, 0xa3199f41a81840cb # load another value into integer register
amominu.w x18, x12, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xf3c1d3bff129cd99 # load random value
la x17, scratch # base address
sd x13, 0(x17) # store in memory
li x13, 0x021b0feffe3880a4 # load another value into integer register
amominu.w x14, x13, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xe4b3807a30543aca # load random value
la x24, scratch # base address
sd x14, 0(x24) # store in memory
li x14, 0x40f884fea036fd60 # load another value into integer register
amominu.w x15, x14, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xbbafddc9c306acfe # load random value
la x13, scratch # base address
sd x15, 0(x13) # store in memory
li x15, 0x813b9294ec05eb01 # load another value into integer register
amominu.w x6, x15, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x94078bde1f9df527 # load random value
la x10, scratch # base address
sd x16, 0(x10) # store in memory
li x16, 0xbea3f8f87d7a63ff # load another value into integer register
amominu.w x9, x16, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x7f8fb80e3f447860 # load random value
la x22, scratch # base address
sd x17, 0(x22) # store in memory
li x17, 0xc43afa4c7134272b # load another value into integer register
amominu.w x21, x17, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x7c58cfd804bf059a # load random value
la x12, scratch # base address
sd x18, 0(x12) # store in memory
li x18, 0x5e30472c1b4f3f09 # load another value into integer register
amominu.w x23, x18, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x5303ea777b0f31df # load random value
la x25, scratch # base address
sd x19, 0(x25) # store in memory
li x19, 0x93ca2841e0e1c309 # load another value into integer register
amominu.w x14, x19, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x820f36d2fd43ad4a # load random value
la x18, scratch # base address
sd x20, 0(x18) # store in memory
li x20, 0x0c85c2a844572056 # load another value into integer register
amominu.w x2, x20, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x3418f926f06779fb # load random value
la x8, scratch # base address
sd x21, 0(x8) # store in memory
li x21, 0xb38436471a059158 # load another value into integer register
amominu.w x16, x21, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x15cb281ae4edcec9 # load random value
la x24, scratch # base address
sd x22, 0(x24) # store in memory
li x22, 0x0c844bdef795b4c3 # load another value into integer register
amominu.w x5, x22, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x3eb77063cc288e66 # load random value
la x26, scratch # base address
sd x23, 0(x26) # store in memory
li x23, 0x5fff0e4e4ced7ff9 # load another value into integer register
amominu.w x28, x23, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x81feb55ee3e0e65c # load random value
la x13, scratch # base address
sd x24, 0(x13) # store in memory
li x24, 0x8c17592c45f0f8cf # load another value into integer register
amominu.w x19, x24, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x54a7191dc87f9b4b # load random value
la x12, scratch # base address
sd x25, 0(x12) # store in memory
li x25, 0x5f5800147358999c # load another value into integer register
amominu.w x30, x25, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0xb38519fb7eebf999 # load random value
la x13, scratch # base address
sd x26, 0(x13) # store in memory
li x26, 0x0626109c619b355b # load another value into integer register
amominu.w x16, x26, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0xc66af06a3a15479f # load random value
la x9, scratch # base address
sd x27, 0(x9) # store in memory
li x27, 0x42ed6efb33765b37 # load another value into integer register
amominu.w x24, x27, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xcf6532c1cbf1ac27 # load random value
la x20, scratch # base address
sd x28, 0(x20) # store in memory
li x28, 0x1573838e85408d2e # load another value into integer register
amominu.w x6, x28, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x6015e6668e376358 # load random value
la x6, scratch # base address
sd x29, 0(x6) # store in memory
li x29, 0xfdd76a8ba322d67f # load another value into integer register
amominu.w x18, x29, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x5504e2703db2da2a # load random value
la x23, scratch # base address
sd x30, 0(x23) # store in memory
li x30, 0x12e6bfcbe84dbf35 # load another value into integer register
amominu.w x5, x30, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xb4e736e9696b041c # load random value
la x6, scratch # base address
sd x31, 0(x6) # store in memory
li x31, 0x2e9e7803f405b4a9 # load another value into integer register
amominu.w x28, x31, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x6, 0x65f8cba5f2dea4c6 # load random value
la x16, scratch # base address
sd x6, 0(x16) # store in memory
li x6, 0x7f274bc71d12cd01 # load another value into integer register
amominu.w x0, x6, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x14, 0xdec3689849cf508c # load random value
la x7, scratch # base address
sd x14, 0(x7) # store in memory
li x14, 0xf1e5230695d982cf # load another value into integer register
amominu.w x1, x14, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x31, 0x79b0b7f62a0c2e14 # load random value
la x12, scratch # base address
sd x31, 0(x12) # store in memory
li x31, 0xacd298f2bcb5f69e # load another value into integer register
amominu.w x2, x31, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x21, 0xe1ec4d3329a389b1 # load random value
la x20, scratch # base address
sd x21, 0(x20) # store in memory
li x21, 0x3036c95483b57b9c # load another value into integer register
amominu.w x3, x21, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0x2b44705d0abdfe00 # load random value
la x28, scratch # base address
sd x1, 0(x28) # store in memory
li x1, 0x62911046eda1ade0 # load another value into integer register
amominu.w x4, x1, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0x4fe852835a694890 # load random value
la x22, scratch # base address
sd x16, 0(x22) # store in memory
li x16, 0x73893afc8b4eb3f8 # load another value into integer register
amominu.w x5, x16, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xe11e373217783982 # load random value
la x21, scratch # base address
sd x5, 0(x21) # store in memory
li x5, 0x1458375493804e8d # load another value into integer register
amominu.w x6, x5, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x70f4d89a7ba03dff # load random value
la x18, scratch # base address
sd x27, 0(x18) # store in memory
li x27, 0x7f0d9e5e1d35ac0e # load another value into integer register
amominu.w x7, x27, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x26, 0x7ebff794a14c089b # load random value
la x31, scratch # base address
sd x26, 0(x31) # store in memory
li x26, 0xbf37a6a61b0c8dea # load another value into integer register
amominu.w x8, x26, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x5, 0x0001aa1fe2247cee # load random value
la x27, scratch # base address
sd x5, 0(x27) # store in memory
li x5, 0xbc17d918a628de97 # load another value into integer register
amominu.w x9, x5, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x28, 0xe7596bdf0799657c # load random value
la x7, scratch # base address
sd x28, 0(x7) # store in memory
li x28, 0x6bd7682589eca5b6 # load another value into integer register
amominu.w x10, x28, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x5, 0x9a95c26a233131fe # load random value
la x3, scratch # base address
sd x5, 0(x3) # store in memory
li x5, 0xfc3711564f76bd74 # load another value into integer register
amominu.w x11, x5, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x10, 0xd1f1785206731649 # load random value
la x28, scratch # base address
sd x10, 0(x28) # store in memory
li x10, 0x7f779a48b7d15ab3 # load another value into integer register
amominu.w x12, x10, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x16, 0xb02b37ef8d6437a9 # load random value
la x25, scratch # base address
sd x16, 0(x25) # store in memory
li x16, 0xbb7cf95e9841a2e0 # load another value into integer register
amominu.w x13, x16, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x10, 0x3499dd4e176ae687 # load random value
la x13, scratch # base address
sd x10, 0(x13) # store in memory
li x10, 0xa00c98f366b5717f # load another value into integer register
amominu.w x14, x10, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x31, 0x9f625f3addf65e71 # load random value
la x6, scratch # base address
sd x31, 0(x6) # store in memory
li x31, 0xef4df9621ed43984 # load another value into integer register
amominu.w x15, x31, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x5, 0x9d07c211aea6c0df # load random value
la x21, scratch # base address
sd x5, 0(x21) # store in memory
li x5, 0x88bfcd41227251fa # load another value into integer register
amominu.w x16, x5, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x23, 0xcf09a11bc312ced3 # load random value
la x29, scratch # base address
sd x23, 0(x29) # store in memory
li x23, 0xf115948711ec81ae # load another value into integer register
amominu.w x17, x23, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x20, 0x9e2a744ec9c325c9 # load random value
la x25, scratch # base address
sd x20, 0(x25) # store in memory
li x20, 0x8ff2950a62e3da4d # load another value into integer register
amominu.w x18, x20, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x11, 0x0a6e5e57064893a5 # load random value
la x6, scratch # base address
sd x11, 0(x6) # store in memory
li x11, 0xebdd928b3f67f170 # load another value into integer register
amominu.w x19, x11, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x21, 0xa23c3eb57f474c11 # load random value
la x31, scratch # base address
sd x21, 0(x31) # store in memory
li x21, 0x9706baecf68e9808 # load another value into integer register
amominu.w x20, x21, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x14, 0x435df582d5522d26 # load random value
la x25, scratch # base address
sd x14, 0(x25) # store in memory
li x14, 0x95f7ee45d1bdb3f1 # load another value into integer register
amominu.w x21, x14, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x30, 0xdc7ac5079317a974 # load random value
la x5, scratch # base address
sd x30, 0(x5) # store in memory
li x30, 0x60b63d089e597051 # load another value into integer register
amominu.w x22, x30, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x20, 0x85f2f260a5d07c49 # load random value
la x5, scratch # base address
sd x20, 0(x5) # store in memory
li x20, 0x8d4e3998a2293581 # load another value into integer register
amominu.w x23, x20, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x28, 0x26605053ac1c179d # load random value
la x11, scratch # base address
sd x28, 0(x11) # store in memory
li x28, 0x87f94d7f07a2944b # load another value into integer register
amominu.w x24, x28, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x10, 0x607198071800fcce # load random value
la x18, scratch # base address
sd x10, 0(x18) # store in memory
li x10, 0x80541be9116dc852 # load another value into integer register
amominu.w x25, x10, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x18, 0x56172bb6bafbe498 # load random value
la x26, scratch # base address
sd x18, 0(x26) # store in memory
li x18, 0x7f481af38f748dea # load another value into integer register
amominu.w x26, x18, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x5, 0x89002e29e637d1b9 # load random value
la x8, scratch # base address
sd x5, 0(x8) # store in memory
li x5, 0xd92174f986ea51d7 # load another value into integer register
amominu.w x27, x5, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x23, 0x487180135391969c # load random value
la x27, scratch # base address
sd x23, 0(x27) # store in memory
li x23, 0x7b495bdfd1754610 # load another value into integer register
amominu.w x28, x23, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x17, 0x830423285b7df8ea # load random value
la x28, scratch # base address
sd x17, 0(x28) # store in memory
li x17, 0x32e4d08d3d75dd81 # load another value into integer register
amominu.w x29, x17, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x29, 0xc8b05144dd85a86d # load random value
la x7, scratch # base address
sd x29, 0(x7) # store in memory
li x29, 0xd77d06ab40fe0a86 # load another value into integer register
amominu.w x30, x29, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xe7133731c9757c10 # load random value
la x25, scratch # base address
sd x31, 0(x25) # store in memory
li x31, 0xcec90daa5fff25e7 # load another value into integer register
amominu.w x31, x31, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x24, 0xa65977c73650ffbe # load random value
la x3, scratch # base address
sd x24, 0(x3) # store in memory
li x24, 0x0000000000000000 # load another value into integer register
amominu.w x17, x24, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0x6bcf1fceb80ec085 # load random value
la x25, scratch # base address
sd x13, 0(x25) # store in memory
li x13, 0x0000000000000001 # load another value into integer register
amominu.w x19, x13, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0x0407abea83ce86a3 # load random value
la x3, scratch # base address
sd x26, 0(x3) # store in memory
li x26, 0x0000000000000002 # load another value into integer register
amominu.w x17, x26, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x12, 0x4d35cdd30f15f649 # load random value
la x31, scratch # base address
sd x12, 0(x31) # store in memory
li x12, 0x8000000000000000 # load another value into integer register
amominu.w x13, x12, (x31) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x21, 0x6471055edaef856d # load random value
la x25, scratch # base address
sd x21, 0(x25) # store in memory
li x21, 0x8000000000000001 # load another value into integer register
amominu.w x12, x21, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x21, 0x36061293ed73bac0 # load random value
la x3, scratch # base address
sd x21, 0(x3) # store in memory
li x21, 0x7fffffffffffffff # load another value into integer register
amominu.w x5, x21, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x8, 0xfbcf31ae521012eb # load random value
la x25, scratch # base address
sd x8, 0(x25) # store in memory
li x8, 0x7ffffffffffffffe # load another value into integer register
amominu.w x31, x8, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x20, 0x5020ed6a3c2c31e6 # load random value
la x26, scratch # base address
sd x20, 0(x26) # store in memory
li x20, 0xffffffffffffffff # load another value into integer register
amominu.w x21, x20, (x26) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x18, 0x12b3d9b74ffde2ed # load random value
la x21, scratch # base address
sd x18, 0(x21) # store in memory
li x18, 0xfffffffffffffffe # load another value into integer register
amominu.w x16, x18, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x21, 0xff607c4586f59b06 # load random value
la x2, scratch # base address
sd x21, 0(x2) # store in memory
li x21, 0x5bbc887763ae86f2 # load another value into integer register
amominu.w x13, x21, (x2) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x13, 0x028af65fdff50f27 # load random value
la x11, scratch # base address
sd x13, 0(x11) # store in memory
li x13, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amominu.w x20, x13, (x11) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x24, 0xad36f3117f8d5ea8 # load random value
la x12, scratch # base address
sd x24, 0(x12) # store in memory
li x24, 0x5555555555555555 # load another value into integer register
amominu.w x14, x24, (x12) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x12, 0x6ee194a939a53657 # load random value
la x1, scratch # base address
sd x12, 0(x1) # store in memory
li x12, 0x00000000ffffffff # load another value into integer register
amominu.w x30, x12, (x1) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x7, 0x6422f3b3ec010320 # load random value
la x18, scratch # base address
sd x7, 0(x18) # store in memory
li x7, 0x00000000fffffffe # load another value into integer register
amominu.w x14, x7, (x18) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x12, 0xb4d32d8670fa0f4e # load random value
la x9, scratch # base address
sd x12, 0(x9) # store in memory
li x12, 0x0000000100000000 # load another value into integer register
amominu.w x7, x12, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x24, 0xf5696b3de415f78b # load random value
la x1, scratch # base address
sd x24, 0(x1) # store in memory
li x24, 0x0000000100000001 # load another value into integer register
amominu.w x26, x24, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x0e6c1ea23554fd0b # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amominu.w x2, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xac57bb14dcf5dff3 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amominu.w x1, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x8be1486ea4a943aa # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amominu.w x31, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xbb06e3b499b82891 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amominu.w x15, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9d0f7cf5ab015160 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amominu.w x9, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x514902e5b867a489 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amominu.w x3, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x55e348e2350cfd44 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amominu.w x14, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x50ce23d71c60aa93 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amominu.w x29, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x29cede7da0f3d86f # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amominu.w x21, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x8559b1925240fdb2 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amominu.w x18, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x0cde7bc632d2e45f # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amominu.w x30, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x72d92a4d5fc538c3 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amominu.w x27, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x7df4c2c06d76a762 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amominu.w x20, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xf5c92b5a2e6629d1 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amominu.w x7, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x344255df428436d3 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amominu.w x1, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xc6b2cb66ec721f91 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amominu.w x12, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xfeaf2588063d5d7a # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amominu.w x24, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xc6b342c27a065dcd # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amominu.w x16, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xcabc179b9c36bc4e # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amominu.w x20, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xa77ddf9923f38800 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amominu.w x5, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x80e25e291808f304 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amominu.w x19, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x117a26c2542a5083 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amominu.w x6, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xe9e992aee6690fd7 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amominu.w x17, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x6b12c368d3766d74 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amominu.w x29, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xa120289b548ab11f # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amominu.w x10, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x6fba615ac47f146f # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amominu.w x24, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x9ef538eb29f1a124 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amominu.w x29, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x99d2c742f82cc24f # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amominu.w x19, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xb9fdaafd3bf116b0 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amominu.w x7, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xfc0a7cfc2d2baf67 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amominu.w x24, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x0dd82619112034a7 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amominu.w x18, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x12, 0xeec5eb59a05dc27a # load random value
la x1, scratch # base address
sd x12, 0(x1) # store in memory
li x12, 0xf4a4f7b466d37950 # load another value into integer register
amominu.w x1, x12, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x21, 0x4910ca7aa7c9b8a8 # load random value
la x2, scratch # base address
sd x21, 0(x2) # store in memory
li x21, 0x4df277dcb8839dfd # load another value into integer register
amominu.w x2, x21, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x29, 0x304425ead2aca588 # load random value
la x3, scratch # base address
sd x29, 0(x3) # store in memory
li x29, 0xeedb9ce6cbf828f9 # load another value into integer register
amominu.w x3, x29, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0xf969eee826b8db48 # load random value
la x4, scratch # base address
sd x21, 0(x4) # store in memory
li x21, 0x12508cd2fee3274b # load another value into integer register
amominu.w x4, x21, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x097d3ac05fd3a868 # load random value
la x5, scratch # base address
sd x9, 0(x5) # store in memory
li x9, 0x8f3e5d4ca6a12e2a # load another value into integer register
amominu.w x5, x9, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0xc268475fceebe5df # load random value
la x6, scratch # base address
sd x27, 0(x6) # store in memory
li x27, 0x1bb0ffe146409d7f # load another value into integer register
amominu.w x6, x27, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xdd4950f33441c767 # load random value
la x7, scratch # base address
sd x11, 0(x7) # store in memory
li x11, 0xa75e6907e94153dd # load another value into integer register
amominu.w x7, x11, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x27, 0x72247a00200b54a7 # load random value
la x8, scratch # base address
sd x27, 0(x8) # store in memory
li x27, 0xecc50d4064974ab4 # load another value into integer register
amominu.w x8, x27, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x24, 0xaadad2b9214075c5 # load random value
la x9, scratch # base address
sd x24, 0(x9) # store in memory
li x24, 0x69f294b025b1f61b # load another value into integer register
amominu.w x9, x24, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x9, 0x43be1e13c49c8296 # load random value
la x10, scratch # base address
sd x9, 0(x10) # store in memory
li x9, 0x114b206361892dc6 # load another value into integer register
amominu.w x10, x9, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x26, 0x2b1ed5b93f6e8950 # load random value
la x11, scratch # base address
sd x26, 0(x11) # store in memory
li x26, 0x0d99b1e28c69f45f # load another value into integer register
amominu.w x11, x26, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x14, 0x9a17b274cec9dde2 # load random value
la x12, scratch # base address
sd x14, 0(x12) # store in memory
li x14, 0x0a51ba497b96104c # load another value into integer register
amominu.w x12, x14, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x10, 0x630615b08c615c05 # load random value
la x13, scratch # base address
sd x10, 0(x13) # store in memory
li x10, 0x52bb49436b7005a5 # load another value into integer register
amominu.w x13, x10, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x17, 0x0c2ef1d4b15687fd # load random value
la x14, scratch # base address
sd x17, 0(x14) # store in memory
li x17, 0xaa972b13b757199d # load another value into integer register
amominu.w x14, x17, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x22, 0x1334b9e06637d541 # load random value
la x15, scratch # base address
sd x22, 0(x15) # store in memory
li x22, 0xb1ffa2d93563d969 # load another value into integer register
amominu.w x15, x22, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x19, 0x465fbfbda8984ba1 # load random value
la x16, scratch # base address
sd x19, 0(x16) # store in memory
li x19, 0x781c101f7d8b4162 # load another value into integer register
amominu.w x16, x19, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x12, 0x394f25e0c9aaba45 # load random value
la x17, scratch # base address
sd x12, 0(x17) # store in memory
li x12, 0xe40735bfa53d13b5 # load another value into integer register
amominu.w x17, x12, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x16, 0x45081cc2c7af27d7 # load random value
la x18, scratch # base address
sd x16, 0(x18) # store in memory
li x16, 0xd0a94af5c8eec779 # load another value into integer register
amominu.w x18, x16, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x11, 0x8e3898f393f881b5 # load random value
la x19, scratch # base address
sd x11, 0(x19) # store in memory
li x11, 0x076b6005e7579bb9 # load another value into integer register
amominu.w x19, x11, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x7, 0x7902845d6b296dcd # load random value
la x20, scratch # base address
sd x7, 0(x20) # store in memory
li x7, 0x2edfe26fe38f8bbd # load another value into integer register
amominu.w x20, x7, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x19, 0xe92331aa70dae254 # load random value
la x21, scratch # base address
sd x19, 0(x21) # store in memory
li x19, 0xa120876fea62d9fc # load another value into integer register
amominu.w x21, x19, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x12, 0xcedf82ae757dde52 # load random value
la x22, scratch # base address
sd x12, 0(x22) # store in memory
li x12, 0x3af166ba9b9824ee # load another value into integer register
amominu.w x22, x12, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x9, 0x1c23334d4bfbd399 # load random value
la x23, scratch # base address
sd x9, 0(x23) # store in memory
li x9, 0x1913ccc74b0c58a1 # load another value into integer register
amominu.w x23, x9, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xb95dd4fc669ba72d # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amominu.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x18, 0x9e3a8f4b7a49b060 # load random value
la x25, scratch # base address
sd x18, 0(x25) # store in memory
li x18, 0x4ec69c3a240934b6 # load another value into integer register
amominu.w x25, x18, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x7, 0xf72f93572c9ab0d1 # load random value
la x26, scratch # base address
sd x7, 0(x26) # store in memory
li x7, 0x35b98ef6ae7852f0 # load another value into integer register
amominu.w x26, x7, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xc750635125908325 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amominu.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x9, 0xfaa005c65fc917c9 # load random value
la x28, scratch # base address
sd x9, 0(x28) # store in memory
li x9, 0x8909bb04f6dd39fb # load another value into integer register
amominu.w x28, x9, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x1, 0xed4a9d30fe02ee90 # load random value
la x29, scratch # base address
sd x1, 0(x29) # store in memory
li x1, 0xb4d9bd6e4e0b4970 # load another value into integer register
amominu.w x29, x1, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x19, 0x2886ac546c2622c1 # load random value
la x30, scratch # base address
sd x19, 0(x30) # store in memory
li x19, 0xcab3aaaea4b365bf # load another value into integer register
amominu.w x30, x19, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x2, 0xa371c2ff4c030f4a # load random value
la x31, scratch # base address
sd x2, 0(x31) # store in memory
li x2, 0xdcb521b8ea90846d # load another value into integer register
amominu.w x31, x2, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0xf30ba3fe1e5e2e3f # load random value
la x11, scratch # base address
sd x0, 0(x11) # store in memory
li x0, 0xd89e869fb1173f7e # load another value into integer register
amominu.w x0, x0, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xc09725e46edbb80d # load random value
la x13, scratch # base address
sd x1, 0(x13) # store in memory
li x1, 0x940e6d2c0e276d4f # load another value into integer register
amominu.w x1, x1, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xb5335894f1e4145c # load random value
la x8, scratch # base address
sd x2, 0(x8) # store in memory
li x2, 0x33e014191f54fa03 # load another value into integer register
amominu.w x2, x2, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xe816af45d519bd98 # load random value
la x29, scratch # base address
sd x3, 0(x29) # store in memory
li x3, 0xbb2ace0d6543e949 # load another value into integer register
amominu.w x3, x3, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe625bbc76e9478d9 # load random value
la x27, scratch # base address
sd x4, 0(x27) # store in memory
li x4, 0xcd796cbc7bd791a1 # load another value into integer register
amominu.w x4, x4, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x35fd9ea73e2fd714 # load random value
la x8, scratch # base address
sd x5, 0(x8) # store in memory
li x5, 0xe82e36d515542df1 # load another value into integer register
amominu.w x5, x5, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9a795181cc296780 # load random value
la x5, scratch # base address
sd x6, 0(x5) # store in memory
li x6, 0xb55bac28d4e012ae # load another value into integer register
amominu.w x6, x6, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x27e7253882036efc # load random value
la x1, scratch # base address
sd x7, 0(x1) # store in memory
li x7, 0x3577e5feff50541c # load another value into integer register
amominu.w x7, x7, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x9dfd04ac12ba865c # load random value
la x29, scratch # base address
sd x8, 0(x29) # store in memory
li x8, 0xd404bbb6b2a23db7 # load another value into integer register
amominu.w x8, x8, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x8fbbfb7fc0453f04 # load random value
la x2, scratch # base address
sd x9, 0(x2) # store in memory
li x9, 0x93f2e6d5cb88ec76 # load another value into integer register
amominu.w x9, x9, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x60bef32be2fa6206 # load random value
la x15, scratch # base address
sd x10, 0(x15) # store in memory
li x10, 0xc7fe020fa996e462 # load another value into integer register
amominu.w x10, x10, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xd4760441c34ab73a # load random value
la x19, scratch # base address
sd x11, 0(x19) # store in memory
li x11, 0x2cf97302fb27b559 # load another value into integer register
amominu.w x11, x11, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x806fe64ef6709243 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amominu.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x9c6f5b7d2a77196f # load random value
la x29, scratch # base address
sd x13, 0(x29) # store in memory
li x13, 0x31d2fe85b41affef # load another value into integer register
amominu.w x13, x13, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x8dd3020555082b2c # load random value
la x19, scratch # base address
sd x14, 0(x19) # store in memory
li x14, 0xbc457ba46e1c4a3d # load another value into integer register
amominu.w x14, x14, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x0aa954d7b081e7e6 # load random value
la x22, scratch # base address
sd x15, 0(x22) # store in memory
li x15, 0x0f54cdb3082cf04d # load another value into integer register
amominu.w x15, x15, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xef69acd74f30d75b # load random value
la x8, scratch # base address
sd x16, 0(x8) # store in memory
li x16, 0x51738f86d3755b8b # load another value into integer register
amominu.w x16, x16, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0xe049db1c5586c93e # load random value
la x12, scratch # base address
sd x17, 0(x12) # store in memory
li x17, 0xfbf961db0ff842b1 # load another value into integer register
amominu.w x17, x17, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x98e1b62168716d80 # load random value
la x24, scratch # base address
sd x18, 0(x24) # store in memory
li x18, 0x4b92adbea5ad97be # load another value into integer register
amominu.w x18, x18, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x0855492914dad9df # load random value
la x30, scratch # base address
sd x19, 0(x30) # store in memory
li x19, 0x2f36484749851a9b # load another value into integer register
amominu.w x19, x19, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x20db359bea9b79a6 # load random value
la x2, scratch # base address
sd x20, 0(x2) # store in memory
li x20, 0xa76c0704599dc32d # load another value into integer register
amominu.w x20, x20, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x098d468b92f5782c # load random value
la x19, scratch # base address
sd x21, 0(x19) # store in memory
li x21, 0x1d4a42c21a9c7d9a # load another value into integer register
amominu.w x21, x21, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x68cc0c7295a6e660 # load random value
la x10, scratch # base address
sd x22, 0(x10) # store in memory
li x22, 0xfb5011ce6f6e6bc4 # load another value into integer register
amominu.w x22, x22, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x844c1c69f4b772a2 # load random value
la x29, scratch # base address
sd x23, 0(x29) # store in memory
li x23, 0xfa6bb5bc1c0b7932 # load another value into integer register
amominu.w x23, x23, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x11655ff3b37161f9 # load random value
la x12, scratch # base address
sd x24, 0(x12) # store in memory
li x24, 0x01ad05961d770f3d # load another value into integer register
amominu.w x24, x24, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0xe6d7775f95f13f98 # load random value
la x28, scratch # base address
sd x25, 0(x28) # store in memory
li x25, 0x3c5c59031de32afe # load another value into integer register
amominu.w x25, x25, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x9c1d7080a7cec867 # load random value
la x12, scratch # base address
sd x26, 0(x12) # store in memory
li x26, 0x96f9acfae665759a # load another value into integer register
amominu.w x26, x26, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x38b657bcf94e5dfd # load random value
la x19, scratch # base address
sd x27, 0(x19) # store in memory
li x27, 0x6953220890f3cbc5 # load another value into integer register
amominu.w x27, x27, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x1cd467a297ea969a # load random value
la x20, scratch # base address
sd x28, 0(x20) # store in memory
li x28, 0x1d82d32f6c05e3d3 # load another value into integer register
amominu.w x28, x28, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x67550972d159b835 # load random value
la x8, scratch # base address
sd x29, 0(x8) # store in memory
li x29, 0x1af6bf7b4f1a6411 # load another value into integer register
amominu.w x29, x29, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x43a925be1dbc42c4 # load random value
la x14, scratch # base address
sd x30, 0(x14) # store in memory
li x30, 0x8efc870b6442d4c1 # load another value into integer register
amominu.w x30, x30, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x7bc04d60a5075ecd # load random value
la x7, scratch # base address
sd x31, 0(x7) # store in memory
li x31, 0x0c5ca68659682269 # load another value into integer register
amominu.w x31, x31, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x735fbae9e3fdfd51 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amominu.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x71cdf0506793dddc # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amominu.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x621ea8fb5909ade2 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amominu.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6d8f804e75639436 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amominu.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x502789f2d54d30ba # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amominu.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x682ae1769a4aa4d6 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amominu.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9374e81af33e9797 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amominu.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x3097bfd219631ef8 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amominu.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xdbfa65b233b9069a # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amominu.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x5386e8e627429449 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amominu.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x2fdaed400f2b4d01 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amominu.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xb44faa4aa8f9a112 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amominu.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x5296050f5b0e0927 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amominu.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xe3d9f20972acdd48 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amominu.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x3d5d86fac610bf3e # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amominu.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x28fc6572f9535352 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amominu.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x5b117037fb6a0a18 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amominu.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x2fc760d3df86d2c8 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amominu.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xc28eecf6e3539e4d # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amominu.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x21cd5919b27a9fa2 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amominu.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xf280fe319486aeb5 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amominu.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x5dffff0390ce35f5 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amominu.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x30d2ae290a266989 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amominu.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x2a78056f6752e649 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amominu.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x644be7218d133dc3 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amominu.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xde21a5fa62350e21 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amominu.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x7ea05c04302539d8 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amominu.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x56c1f28014837b3c # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amominu.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x15661e60e8d09af8 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amominu.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x994689fa984f7bd8 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amominu.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xa5e1efcb8f3823e8 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amominu.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x12, scratch
add x22, x18, x5 # perform first operation
amominu.w x3, x7, (x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x1, scratch
add x7, x5, x14 # perform first operation
amominu.w x28, x11, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x30, scratch
add x6, x20, x19 # perform first operation
amominu.w x15, x7, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x20, scratch
add x13, x13, x0 # perform first operation
amominu.w x11, x13, (x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x28, scratch
add x28, x28, x0 # perform first operation
amominu.w x24, x9, (x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x7, scratch
add x27, x27, x0 # perform first operation
amominu.w x27, x20, (x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x23, scratch
add x11, x8, x22 # perform first operation
amominu.w x11, x18, (x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x10, scratch
add x5, x20, x3 # perform first operation
amominu.w x5, x19, (x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x8, scratch
add x6, x31, x16 # perform first operation
amominu.w x6, x15, (x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x10, scratch
add x29, x19, x3 # perform first operation
amominu.w x19, x30, (x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x30, scratch
add x18, x22, x12 # perform first operation
amominu.w x12, x16, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x12, scratch
add x11, x22, x15 # perform first operation
amominu.w x9, x21, (x12) # perform second (triggering) operation

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
