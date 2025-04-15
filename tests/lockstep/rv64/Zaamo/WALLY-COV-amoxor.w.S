///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amoxor.w.S
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
li x18, 0xf7b4ac2f717e7f2d # load random value
la x1, scratch # base address
sd x18, 0(x1) # store in memory
li x18, 0xf575ad6bd78e2787 # load another value into integer register
amoxor.w x19, x18, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x12, 0xd994056023066ea1 # load random value
la x2, scratch # base address
sd x12, 0(x2) # store in memory
li x12, 0x63c5a46536b73dfc # load another value into integer register
amoxor.w x13, x12, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x25, 0x0862b76b7841ad59 # load random value
la x3, scratch # base address
sd x25, 0(x3) # store in memory
li x25, 0x4793785dd00ab127 # load another value into integer register
amoxor.w x8, x25, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x80792bf11e895a39 # load random value
la x4, scratch # base address
sd x10, 0(x4) # store in memory
li x10, 0x6d933b606b0d9363 # load another value into integer register
amoxor.w x24, x10, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0xc68f7e3f581b6e0a # load random value
la x5, scratch # base address
sd x2, 0(x5) # store in memory
li x2, 0x6a9bbe1489ba88ba # load another value into integer register
amoxor.w x13, x2, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0x7cd3069ee9d0b13a # load random value
la x6, scratch # base address
sd x25, 0(x6) # store in memory
li x25, 0x11b60bc933bb4c19 # load another value into integer register
amoxor.w x15, x25, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x9f68248afe14f657 # load random value
la x7, scratch # base address
sd x2, 0(x7) # store in memory
li x2, 0x944a16dccf49f596 # load another value into integer register
amoxor.w x5, x2, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0x9007420cb9b873b0 # load random value
la x8, scratch # base address
sd x10, 0(x8) # store in memory
li x10, 0x28f3476c470bb130 # load another value into integer register
amoxor.w x26, x10, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0x10c64fcc9222290c # load random value
la x9, scratch # base address
sd x12, 0(x9) # store in memory
li x12, 0x08ecdc856a3cb2d0 # load another value into integer register
amoxor.w x5, x12, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x30, 0x62b91c621d133dd5 # load random value
la x10, scratch # base address
sd x30, 0(x10) # store in memory
li x30, 0x4b7c48649caa7146 # load another value into integer register
amoxor.w x11, x30, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x7, 0x59c66d5dc6a3cbc0 # load random value
la x11, scratch # base address
sd x7, 0(x11) # store in memory
li x7, 0x8d218d4c68ecf107 # load another value into integer register
amoxor.w x15, x7, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x21, 0x9b6d29908af9726b # load random value
la x12, scratch # base address
sd x21, 0(x12) # store in memory
li x21, 0xab55dfa41376f381 # load another value into integer register
amoxor.w x25, x21, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x21, 0x59d6d8f6aceee020 # load random value
la x13, scratch # base address
sd x21, 0(x13) # store in memory
li x21, 0xadc12473067b31f0 # load another value into integer register
amoxor.w x12, x21, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x27, 0x888772f4f2c5bc4d # load random value
la x14, scratch # base address
sd x27, 0(x14) # store in memory
li x27, 0x8b14be50021bf187 # load another value into integer register
amoxor.w x1, x27, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x31, 0x963c5b8dda1d4363 # load random value
la x15, scratch # base address
sd x31, 0(x15) # store in memory
li x31, 0x46cefa962d77cd54 # load another value into integer register
amoxor.w x17, x31, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x28, 0x1ad387c60989995a # load random value
la x16, scratch # base address
sd x28, 0(x16) # store in memory
li x28, 0x6203a672fbeccf21 # load another value into integer register
amoxor.w x31, x28, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x7, 0xa55f5adf164841c5 # load random value
la x17, scratch # base address
sd x7, 0(x17) # store in memory
li x7, 0x286e4acaa89c63a7 # load another value into integer register
amoxor.w x14, x7, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x12, 0xd7dbfc586ff6d18f # load random value
la x18, scratch # base address
sd x12, 0(x18) # store in memory
li x12, 0xe0ceb205791cb375 # load another value into integer register
amoxor.w x3, x12, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x22, 0x95d9725aeb54e563 # load random value
la x19, scratch # base address
sd x22, 0(x19) # store in memory
li x22, 0x44d9c30abafee7ae # load another value into integer register
amoxor.w x31, x22, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x11, 0xca7e3a784e399985 # load random value
la x20, scratch # base address
sd x11, 0(x20) # store in memory
li x11, 0xe808b812f363b5a7 # load another value into integer register
amoxor.w x27, x11, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x7, 0x7362609a6e53e4b4 # load random value
la x21, scratch # base address
sd x7, 0(x21) # store in memory
li x7, 0x0db4a9e6aaaed889 # load another value into integer register
amoxor.w x14, x7, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x19, 0x807f54d833888e44 # load random value
la x22, scratch # base address
sd x19, 0(x22) # store in memory
li x19, 0xf1cd7fba1ec006b7 # load another value into integer register
amoxor.w x31, x19, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x10, 0xb8b844a157ef5fcf # load random value
la x23, scratch # base address
sd x10, 0(x23) # store in memory
li x10, 0x9a39b50445f5a650 # load another value into integer register
amoxor.w x1, x10, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x15, 0x6571015ef0397e4f # load random value
la x24, scratch # base address
sd x15, 0(x24) # store in memory
li x15, 0x96bd1648ee383f7e # load another value into integer register
amoxor.w x25, x15, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x8, 0x3d591175d595cde1 # load random value
la x25, scratch # base address
sd x8, 0(x25) # store in memory
li x8, 0x3ba2c60e43f07b30 # load another value into integer register
amoxor.w x2, x8, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x31, 0x2e63a35cceadbeb9 # load random value
la x26, scratch # base address
sd x31, 0(x26) # store in memory
li x31, 0x5872633026ba2a18 # load another value into integer register
amoxor.w x7, x31, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x10, 0xe5d18510d2dddb18 # load random value
la x27, scratch # base address
sd x10, 0(x27) # store in memory
li x10, 0xf40d44819bd8546d # load another value into integer register
amoxor.w x29, x10, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x10, 0x12e662044dc2b7ab # load random value
la x28, scratch # base address
sd x10, 0(x28) # store in memory
li x10, 0x107d1fb3398680d5 # load another value into integer register
amoxor.w x3, x10, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x24, 0x5f36fc118a9159b2 # load random value
la x29, scratch # base address
sd x24, 0(x29) # store in memory
li x24, 0x962cf70f2fc34ff0 # load another value into integer register
amoxor.w x17, x24, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x20, 0x22f42fe94b7dfd53 # load random value
la x30, scratch # base address
sd x20, 0(x30) # store in memory
li x20, 0xfd5d51f2391f5a95 # load another value into integer register
amoxor.w x13, x20, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x22, 0x292ba954ffdd03d0 # load random value
la x31, scratch # base address
sd x22, 0(x31) # store in memory
li x22, 0x33c1da2206e98b1e # load another value into integer register
amoxor.w x24, x22, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xce73c2a89ef16bfd # load random value
la x17, scratch # base address
sd x0, 0(x17) # store in memory
li x0, 0x0ebc837abce1171e # load another value into integer register
amoxor.w x14, x0, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x9e6388659b57dbc9 # load random value
la x24, scratch # base address
sd x1, 0(x24) # store in memory
li x1, 0x4e059b50246d7f34 # load another value into integer register
amoxor.w x6, x1, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x4e30830f3709c6ae # load random value
la x16, scratch # base address
sd x2, 0(x16) # store in memory
li x2, 0x4b9181492ba76410 # load another value into integer register
amoxor.w x22, x2, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0xd7fb5b17812d7e5a # load random value
la x9, scratch # base address
sd x3, 0(x9) # store in memory
li x3, 0x6e4505e657e9a691 # load another value into integer register
amoxor.w x5, x3, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9168ff820f5aaca3 # load random value
la x8, scratch # base address
sd x4, 0(x8) # store in memory
li x4, 0xcbce1f4b201dea83 # load another value into integer register
amoxor.w x19, x4, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf52536df69b35932 # load random value
la x15, scratch # base address
sd x5, 0(x15) # store in memory
li x5, 0x44917a80222513bb # load another value into integer register
amoxor.w x1, x5, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x900310724019c173 # load random value
la x17, scratch # base address
sd x6, 0(x17) # store in memory
li x6, 0x9e77e58f7925a84d # load another value into integer register
amoxor.w x25, x6, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x664efdd5b4f3069b # load random value
la x21, scratch # base address
sd x7, 0(x21) # store in memory
li x7, 0x7ec06c6e3562c0f9 # load another value into integer register
amoxor.w x14, x7, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x4c0d4b88774c5a91 # load random value
la x16, scratch # base address
sd x8, 0(x16) # store in memory
li x8, 0x01d77c7c7e69f656 # load another value into integer register
amoxor.w x2, x8, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x280f36a1fee7587f # load random value
la x29, scratch # base address
sd x9, 0(x29) # store in memory
li x9, 0x662c76863c72f9cf # load another value into integer register
amoxor.w x18, x9, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xe90bf527f12b4c4d # load random value
la x1, scratch # base address
sd x10, 0(x1) # store in memory
li x10, 0x10376618e3251a6e # load another value into integer register
amoxor.w x19, x10, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x915bc443e70b4896 # load random value
la x9, scratch # base address
sd x11, 0(x9) # store in memory
li x11, 0x287b5a913c9ce5aa # load another value into integer register
amoxor.w x30, x11, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xe4576f03bcbafe78 # load random value
la x10, scratch # base address
sd x12, 0(x10) # store in memory
li x12, 0x0eb8697ee470a241 # load another value into integer register
amoxor.w x3, x12, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x03c64c7432d7830e # load random value
la x31, scratch # base address
sd x13, 0(x31) # store in memory
li x13, 0x598fd39c9b878c10 # load another value into integer register
amoxor.w x29, x13, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x60b5a5c19dc6d17b # load random value
la x28, scratch # base address
sd x14, 0(x28) # store in memory
li x14, 0xa0f58c5a525e7872 # load another value into integer register
amoxor.w x26, x14, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x71d526cb1bef0e60 # load random value
la x24, scratch # base address
sd x15, 0(x24) # store in memory
li x15, 0x7f75c524b3cc2e09 # load another value into integer register
amoxor.w x27, x15, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xc1af29711616376f # load random value
la x2, scratch # base address
sd x16, 0(x2) # store in memory
li x16, 0xf57e78c9f825c92d # load another value into integer register
amoxor.w x20, x16, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x134892f1ac77773c # load random value
la x7, scratch # base address
sd x17, 0(x7) # store in memory
li x17, 0x126586ac04f3c524 # load another value into integer register
amoxor.w x14, x17, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x7959096156da4d71 # load random value
la x19, scratch # base address
sd x18, 0(x19) # store in memory
li x18, 0x8ccb804af1036af3 # load another value into integer register
amoxor.w x14, x18, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x936d386156ee8dbc # load random value
la x16, scratch # base address
sd x19, 0(x16) # store in memory
li x19, 0xc9d56e7039af7741 # load another value into integer register
amoxor.w x15, x19, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x3b72f8f9652215cf # load random value
la x17, scratch # base address
sd x20, 0(x17) # store in memory
li x20, 0x544ae152919cb6d2 # load another value into integer register
amoxor.w x23, x20, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x62dde418d69b8709 # load random value
la x22, scratch # base address
sd x21, 0(x22) # store in memory
li x21, 0x706cc2e2ae35ef8f # load another value into integer register
amoxor.w x18, x21, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x30e986b5be5522a2 # load random value
la x5, scratch # base address
sd x22, 0(x5) # store in memory
li x22, 0xe3c193928bf9a99a # load another value into integer register
amoxor.w x15, x22, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x704abf4dd3f7493a # load random value
la x22, scratch # base address
sd x23, 0(x22) # store in memory
li x23, 0xa65af06d0862cccd # load another value into integer register
amoxor.w x25, x23, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xc34a63ef2295be02 # load random value
la x16, scratch # base address
sd x24, 0(x16) # store in memory
li x24, 0xf22168accfdc59e3 # load another value into integer register
amoxor.w x30, x24, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xf1e57c05d78e7a36 # load random value
la x13, scratch # base address
sd x25, 0(x13) # store in memory
li x25, 0x720198c61589a8ab # load another value into integer register
amoxor.w x1, x25, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0xa4f0e900ece454db # load random value
la x10, scratch # base address
sd x26, 0(x10) # store in memory
li x26, 0xe7e453355af99319 # load another value into integer register
amoxor.w x15, x26, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0xac657cd213a56628 # load random value
la x13, scratch # base address
sd x27, 0(x13) # store in memory
li x27, 0xf099d8ff69f17dda # load another value into integer register
amoxor.w x12, x27, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xb2f9b57dea00232b # load random value
la x16, scratch # base address
sd x28, 0(x16) # store in memory
li x28, 0x9124462e69f37927 # load another value into integer register
amoxor.w x29, x28, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xfb6ffda07f41101a # load random value
la x15, scratch # base address
sd x29, 0(x15) # store in memory
li x29, 0x2d694d42ec408c45 # load another value into integer register
amoxor.w x30, x29, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xf8ab9cee53d00bc4 # load random value
la x22, scratch # base address
sd x30, 0(x22) # store in memory
li x30, 0xe4f163eb365a7da9 # load another value into integer register
amoxor.w x12, x30, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xf331cff524068db8 # load random value
la x16, scratch # base address
sd x31, 0(x16) # store in memory
li x31, 0x1175d06ac46a0508 # load another value into integer register
amoxor.w x21, x31, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x9, 0x3024428a0b31b480 # load random value
la x24, scratch # base address
sd x9, 0(x24) # store in memory
li x9, 0xbff57e2c4fc127e7 # load another value into integer register
amoxor.w x0, x9, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x27, 0x00fdd7829f0eaa90 # load random value
la x18, scratch # base address
sd x27, 0(x18) # store in memory
li x27, 0x8d1504ad66f61b93 # load another value into integer register
amoxor.w x1, x27, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x28, 0xde36ffea75a0a521 # load random value
la x22, scratch # base address
sd x28, 0(x22) # store in memory
li x28, 0x7e892bad2ae6839c # load another value into integer register
amoxor.w x2, x28, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x1, 0xe2ca9f01f29bb98a # load random value
la x20, scratch # base address
sd x1, 0(x20) # store in memory
li x1, 0xe3fd88bb40cd821e # load another value into integer register
amoxor.w x3, x1, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x26, 0xc57e7fac8c52f991 # load random value
la x13, scratch # base address
sd x26, 0(x13) # store in memory
li x26, 0x97ade9b3594afe42 # load another value into integer register
amoxor.w x4, x26, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0xbeabf37446ed3324 # load random value
la x28, scratch # base address
sd x7, 0(x28) # store in memory
li x7, 0xfc06faa735172634 # load another value into integer register
amoxor.w x5, x7, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x055b03938e1f2926 # load random value
la x9, scratch # base address
sd x18, 0(x9) # store in memory
li x18, 0x3f4732a711ec905e # load another value into integer register
amoxor.w x6, x18, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x78d5dd6e3e34f93d # load random value
la x15, scratch # base address
sd x16, 0(x15) # store in memory
li x16, 0x3a207096fbddbd4f # load another value into integer register
amoxor.w x7, x16, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x9, 0xa25868dfe412d0bd # load random value
la x11, scratch # base address
sd x9, 0(x11) # store in memory
li x9, 0x1962b06f038ca1a2 # load another value into integer register
amoxor.w x8, x9, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x12, 0x70da70b44633e224 # load random value
la x10, scratch # base address
sd x12, 0(x10) # store in memory
li x12, 0x7ad30c243727b62c # load another value into integer register
amoxor.w x9, x12, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x3, 0x8035f77e032db1a8 # load random value
la x22, scratch # base address
sd x3, 0(x22) # store in memory
li x3, 0x425ae3aadf8e2f2d # load another value into integer register
amoxor.w x10, x3, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x5, 0xa2378cc7c3206319 # load random value
la x14, scratch # base address
sd x5, 0(x14) # store in memory
li x5, 0x1aa9ada5a1d1260c # load another value into integer register
amoxor.w x11, x5, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x24, 0x52aaf86d62ede10b # load random value
la x28, scratch # base address
sd x24, 0(x28) # store in memory
li x24, 0x7ba0f29d88fc6596 # load another value into integer register
amoxor.w x12, x24, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x14, 0x1732cfbaadf86f76 # load random value
la x24, scratch # base address
sd x14, 0(x24) # store in memory
li x14, 0x5cb1ba59272c3ecf # load another value into integer register
amoxor.w x13, x14, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x20, 0x29f7faf5e8c47861 # load random value
la x11, scratch # base address
sd x20, 0(x11) # store in memory
li x20, 0xdb5ad86959fc3358 # load another value into integer register
amoxor.w x14, x20, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x19, 0x6a6d0f788e07e5f6 # load random value
la x29, scratch # base address
sd x19, 0(x29) # store in memory
li x19, 0x8999c8120aa1b7dc # load another value into integer register
amoxor.w x15, x19, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x14, 0xbf8e420348a8f4fe # load random value
la x24, scratch # base address
sd x14, 0(x24) # store in memory
li x14, 0x57319348dbbecd40 # load another value into integer register
amoxor.w x16, x14, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x21, 0x17e23a053695506e # load random value
la x19, scratch # base address
sd x21, 0(x19) # store in memory
li x21, 0x527779c9093d690b # load another value into integer register
amoxor.w x17, x21, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xc44fc1badaf4266c # load random value
la x15, scratch # base address
sd x18, 0(x15) # store in memory
li x18, 0x5a4dc2183391f1a5 # load another value into integer register
amoxor.w x18, x18, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x11, 0x7f2ae472a6a682c0 # load random value
la x14, scratch # base address
sd x11, 0(x14) # store in memory
li x11, 0x32497656fb70c999 # load another value into integer register
amoxor.w x19, x11, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x26, 0xdce475735d46bc83 # load random value
la x18, scratch # base address
sd x26, 0(x18) # store in memory
li x26, 0x74256833690bd243 # load another value into integer register
amoxor.w x20, x26, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x16, 0xbafc6099f373e606 # load random value
la x21, scratch # base address
sd x16, 0(x21) # store in memory
li x16, 0xace5f1895e478306 # load another value into integer register
amoxor.w x21, x16, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x18, 0xcc7fb41d450b5255 # load random value
la x22, scratch # base address
sd x18, 0(x22) # store in memory
li x18, 0x6fb8bcdcaf8ad8d2 # load another value into integer register
amoxor.w x22, x18, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x18, 0xd786a0fe0e39ca51 # load random value
la x9, scratch # base address
sd x18, 0(x9) # store in memory
li x18, 0x099ca6bc98bf904d # load another value into integer register
amoxor.w x23, x18, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x6, 0x1fe99b5c73d6f3e6 # load random value
la x1, scratch # base address
sd x6, 0(x1) # store in memory
li x6, 0x9b2ec3441bacb753 # load another value into integer register
amoxor.w x24, x6, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x7, 0x66a6938108542853 # load random value
la x23, scratch # base address
sd x7, 0(x23) # store in memory
li x7, 0x4e929f9413a0b28b # load another value into integer register
amoxor.w x25, x7, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x6, 0x7c57b168fc2d36cb # load random value
la x14, scratch # base address
sd x6, 0(x14) # store in memory
li x6, 0xcacd9964fd60d827 # load another value into integer register
amoxor.w x26, x6, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x22, 0x03949404eb46d72e # load random value
la x25, scratch # base address
sd x22, 0(x25) # store in memory
li x22, 0x8506d05b73ff2777 # load another value into integer register
amoxor.w x27, x22, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x14d0cb4ed1a80a4c # load random value
la x14, scratch # base address
sd x28, 0(x14) # store in memory
li x28, 0xed3808164507f873 # load another value into integer register
amoxor.w x28, x28, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x1, 0xef9eb808a8f40ab3 # load random value
la x18, scratch # base address
sd x1, 0(x18) # store in memory
li x1, 0xdd5a7e9aca1f4cb7 # load another value into integer register
amoxor.w x29, x1, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x20, 0x765519d832c6a3be # load random value
la x11, scratch # base address
sd x20, 0(x11) # store in memory
li x20, 0x1af3958fbd3790a7 # load another value into integer register
amoxor.w x30, x20, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x15, 0xe2f19749c1aa70fc # load random value
la x14, scratch # base address
sd x15, 0(x14) # store in memory
li x15, 0x7e8670eb684b60de # load another value into integer register
amoxor.w x31, x15, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0xfbeb9e8e46a90f83 # load random value
la x28, scratch # base address
sd x20, 0(x28) # store in memory
li x20, 0x0000000000000000 # load another value into integer register
amoxor.w x22, x20, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x20, 0x7a7d5347d164c604 # load random value
la x24, scratch # base address
sd x20, 0(x24) # store in memory
li x20, 0x0000000000000001 # load another value into integer register
amoxor.w x14, x20, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x14, 0x63ee636455000138 # load random value
la x17, scratch # base address
sd x14, 0(x17) # store in memory
li x14, 0x0000000000000002 # load another value into integer register
amoxor.w x12, x14, (x17) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x26, 0xd054ff037e8703d1 # load random value
la x19, scratch # base address
sd x26, 0(x19) # store in memory
li x26, 0x8000000000000000 # load another value into integer register
amoxor.w x5, x26, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x29, 0x67689470e1cc5091 # load random value
la x25, scratch # base address
sd x29, 0(x25) # store in memory
li x29, 0x8000000000000001 # load another value into integer register
amoxor.w x1, x29, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x27, 0x29c27fc619213883 # load random value
la x8, scratch # base address
sd x27, 0(x8) # store in memory
li x27, 0x7fffffffffffffff # load another value into integer register
amoxor.w x26, x27, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x19, 0xb4fac9973dffb502 # load random value
la x5, scratch # base address
sd x19, 0(x5) # store in memory
li x19, 0x7ffffffffffffffe # load another value into integer register
amoxor.w x20, x19, (x5) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x8, 0xbabdb0f4cc12f83c # load random value
la x22, scratch # base address
sd x8, 0(x22) # store in memory
li x8, 0xffffffffffffffff # load another value into integer register
amoxor.w x5, x8, (x22) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x9, 0xf970eccfde5d9d0d # load random value
la x31, scratch # base address
sd x9, 0(x31) # store in memory
li x9, 0xfffffffffffffffe # load another value into integer register
amoxor.w x20, x9, (x31) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x15, 0x9f867d4a455cd16f # load random value
la x31, scratch # base address
sd x15, 0(x31) # store in memory
li x15, 0x5bbc887763ae86f2 # load another value into integer register
amoxor.w x5, x15, (x31) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x28, 0x9a87a6db80b4ea17 # load random value
la x9, scratch # base address
sd x28, 0(x9) # store in memory
li x28, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amoxor.w x8, x28, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x24, 0x167c4651c47694ab # load random value
la x29, scratch # base address
sd x24, 0(x29) # store in memory
li x24, 0x5555555555555555 # load another value into integer register
amoxor.w x13, x24, (x29) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x21, 0x28838eaf4f3ccd73 # load random value
la x7, scratch # base address
sd x21, 0(x7) # store in memory
li x21, 0x00000000ffffffff # load another value into integer register
amoxor.w x14, x21, (x7) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0x2891e6d1a0563e4f # load random value
la x1, scratch # base address
sd x18, 0(x1) # store in memory
li x18, 0x00000000fffffffe # load another value into integer register
amoxor.w x16, x18, (x1) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x20, 0x5526c94467776ff7 # load random value
la x30, scratch # base address
sd x20, 0(x30) # store in memory
li x20, 0x0000000100000000 # load another value into integer register
amoxor.w x11, x20, (x30) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x5, 0x3e3a986dab32dbe4 # load random value
la x25, scratch # base address
sd x5, 0(x25) # store in memory
li x5, 0x0000000100000001 # load another value into integer register
amoxor.w x6, x5, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x69d0d74151f115af # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoxor.w x12, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xbb8be040ccdbd1d8 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoxor.w x14, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x53e4f8aa7bfa67e1 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoxor.w x14, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8b086f6e8467ce63 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoxor.w x26, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xacf9407fe8a96f76 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoxor.w x3, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc262a9317626633f # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoxor.w x9, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9dce875c17dd0db6 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoxor.w x13, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x2a08ca4bb7efaaa5 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoxor.w x10, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x04795f8797d2fd67 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoxor.w x5, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xb444187714d3f88f # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoxor.w x19, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x0326db28403a58ea # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoxor.w x31, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x2520c7273ce1285c # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoxor.w x22, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x619a669acaa1cf72 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoxor.w x10, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x5d34a9951c1639fd # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoxor.w x25, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x7a0ea6791bf68b5d # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoxor.w x26, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x8ecf07dcbaf267d1 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoxor.w x22, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xd3b588b984849652 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoxor.w x11, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x7391509cfb0a8813 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoxor.w x15, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xb9248cf3996a74fe # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoxor.w x26, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x3ef93495f544886f # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoxor.w x18, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xdf7320c17abc0bce # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoxor.w x7, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xdd6974dd6794113d # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoxor.w x21, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x57005ff0d5f3ef50 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoxor.w x1, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xc08c2a6b5730fe3c # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoxor.w x19, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xcd9be8ab24ea8d19 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoxor.w x20, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xa53866b9a8a6c2d0 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoxor.w x22, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x90573b7f0453a530 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoxor.w x11, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x0a35a4932bfd8e60 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoxor.w x25, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xc663b7d45e4bdd24 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoxor.w x25, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x910a787c07036f3b # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoxor.w x21, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xe0d0e8a7ee81e3e1 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoxor.w x22, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x26, 0x1e562a59890537b3 # load random value
la x1, scratch # base address
sd x26, 0(x1) # store in memory
li x26, 0x2d603cb246a9872c # load another value into integer register
amoxor.w x1, x26, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x16, 0x35dcfbb4e9d53f6a # load random value
la x2, scratch # base address
sd x16, 0(x2) # store in memory
li x16, 0x7fd70a0750499769 # load another value into integer register
amoxor.w x2, x16, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x28, 0x9d215bd31cc71e21 # load random value
la x3, scratch # base address
sd x28, 0(x3) # store in memory
li x28, 0xe7d593e8e0230908 # load another value into integer register
amoxor.w x3, x28, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xb67b325dbdc3cce1 # load random value
la x4, scratch # base address
sd x19, 0(x4) # store in memory
li x19, 0xfcf390cbd6935c03 # load another value into integer register
amoxor.w x4, x19, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0xe7c744588d66982a # load random value
la x5, scratch # base address
sd x10, 0(x5) # store in memory
li x10, 0xd5ef21716648daab # load another value into integer register
amoxor.w x5, x10, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0x3aa08facfb63703a # load random value
la x6, scratch # base address
sd x15, 0(x6) # store in memory
li x15, 0x35d07c166cd840e6 # load another value into integer register
amoxor.w x6, x15, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0xbfdd5647bcc3169b # load random value
la x7, scratch # base address
sd x29, 0(x7) # store in memory
li x29, 0xf34c80319967d206 # load another value into integer register
amoxor.w x7, x29, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x10, 0xf21526620dd2e67f # load random value
la x8, scratch # base address
sd x10, 0(x8) # store in memory
li x10, 0x5dc726f18a673674 # load another value into integer register
amoxor.w x8, x10, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x66b309692ab35744 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoxor.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x28, 0x984a4fba7befe99e # load random value
la x10, scratch # base address
sd x28, 0(x10) # store in memory
li x28, 0x380a3d7b9a6869f2 # load another value into integer register
amoxor.w x10, x28, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x13, 0x7f816898e69a8deb # load random value
la x11, scratch # base address
sd x13, 0(x11) # store in memory
li x13, 0x41339157217c23e1 # load another value into integer register
amoxor.w x11, x13, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x20, 0x08748be93035c79b # load random value
la x12, scratch # base address
sd x20, 0(x12) # store in memory
li x20, 0x9966750ce09c6dab # load another value into integer register
amoxor.w x12, x20, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x6, 0xb280599d9b8385d4 # load random value
la x13, scratch # base address
sd x6, 0(x13) # store in memory
li x6, 0xfde8b572f9bfa4ce # load another value into integer register
amoxor.w x13, x6, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x19, 0xec49a09737852271 # load random value
la x14, scratch # base address
sd x19, 0(x14) # store in memory
li x19, 0xfe30c529016e5051 # load another value into integer register
amoxor.w x14, x19, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x5, 0x6d67942c2d9f631a # load random value
la x15, scratch # base address
sd x5, 0(x15) # store in memory
li x5, 0xc2b44a7ab54ce484 # load another value into integer register
amoxor.w x15, x5, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x3, 0x88b6edcbb6e25775 # load random value
la x16, scratch # base address
sd x3, 0(x16) # store in memory
li x3, 0x13326e17b1da4b55 # load another value into integer register
amoxor.w x16, x3, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x21, 0xa7a61d3a3211f52a # load random value
la x17, scratch # base address
sd x21, 0(x17) # store in memory
li x21, 0x7b6b5f2ab4345791 # load another value into integer register
amoxor.w x17, x21, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x29, 0x4b5dc65098d6f2d6 # load random value
la x18, scratch # base address
sd x29, 0(x18) # store in memory
li x29, 0xbdde28cb79ada82a # load another value into integer register
amoxor.w x18, x29, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x25, 0x4ddeed280ebbebd6 # load random value
la x19, scratch # base address
sd x25, 0(x19) # store in memory
li x25, 0xadfd6337a494130d # load another value into integer register
amoxor.w x19, x25, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x8, 0xe06afc2cb4a51706 # load random value
la x20, scratch # base address
sd x8, 0(x20) # store in memory
li x8, 0x56bb86b020cb861b # load another value into integer register
amoxor.w x20, x8, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x29, 0xf16e95520f42ba1d # load random value
la x21, scratch # base address
sd x29, 0(x21) # store in memory
li x29, 0xb813d075aeae62fe # load another value into integer register
amoxor.w x21, x29, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x26, 0x4d28e07667465277 # load random value
la x22, scratch # base address
sd x26, 0(x22) # store in memory
li x26, 0x7198b4b771f9d500 # load another value into integer register
amoxor.w x22, x26, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x26, 0x6c40f46e4ef5d9b9 # load random value
la x23, scratch # base address
sd x26, 0(x23) # store in memory
li x26, 0x718271cea17abae8 # load another value into integer register
amoxor.w x23, x26, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x31, 0xeb89ac0272f7e2b8 # load random value
la x24, scratch # base address
sd x31, 0(x24) # store in memory
li x31, 0x436d0116c98ef00c # load another value into integer register
amoxor.w x24, x31, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x12, 0xefb1d6a284e7d553 # load random value
la x25, scratch # base address
sd x12, 0(x25) # store in memory
li x12, 0xf0c504d30bb2a22d # load another value into integer register
amoxor.w x25, x12, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x25, 0xce3620265ce0c377 # load random value
la x26, scratch # base address
sd x25, 0(x26) # store in memory
li x25, 0xf48759013877a3ea # load another value into integer register
amoxor.w x26, x25, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xc68ce50fd1c38c30 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoxor.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x26, 0xb65f8ef9a58cd608 # load random value
la x28, scratch # base address
sd x26, 0(x28) # store in memory
li x26, 0xb4f4fdeb9d345cc1 # load another value into integer register
amoxor.w x28, x26, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x23, 0x55c10f46564a6084 # load random value
la x29, scratch # base address
sd x23, 0(x29) # store in memory
li x23, 0xe76db00802ae76ef # load another value into integer register
amoxor.w x29, x23, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x12, 0x9cb882053b3e0f80 # load random value
la x30, scratch # base address
sd x12, 0(x30) # store in memory
li x12, 0x7f34ef764cb332f8 # load another value into integer register
amoxor.w x30, x12, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x21, 0x492e537f0088ae4c # load random value
la x31, scratch # base address
sd x21, 0(x31) # store in memory
li x21, 0x74317875b0e4ffe9 # load another value into integer register
amoxor.w x31, x21, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x714ee3775fc546a6 # load random value
la x26, scratch # base address
sd x0, 0(x26) # store in memory
li x0, 0x9e4abbcd3d827009 # load another value into integer register
amoxor.w x0, x0, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x05c30183d7256065 # load random value
la x28, scratch # base address
sd x1, 0(x28) # store in memory
li x1, 0x8a14ac4314a642d5 # load another value into integer register
amoxor.w x1, x1, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x300526fcfb56fa16 # load random value
la x25, scratch # base address
sd x2, 0(x25) # store in memory
li x2, 0xafd9899c794c0fef # load another value into integer register
amoxor.w x2, x2, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x120b0d25fda6931f # load random value
la x16, scratch # base address
sd x3, 0(x16) # store in memory
li x3, 0xadb5756cdd5767fd # load another value into integer register
amoxor.w x3, x3, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7caeed80717edb18 # load random value
la x21, scratch # base address
sd x4, 0(x21) # store in memory
li x4, 0x1b69623b57958546 # load another value into integer register
amoxor.w x4, x4, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x382e0ba3c2f8be18 # load random value
la x23, scratch # base address
sd x5, 0(x23) # store in memory
li x5, 0x8a7ff37724e0afa1 # load another value into integer register
amoxor.w x5, x5, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7bb2da75e3465b48 # load random value
la x31, scratch # base address
sd x6, 0(x31) # store in memory
li x6, 0x375fe9be08182cd8 # load another value into integer register
amoxor.w x6, x6, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3636c19819971f55 # load random value
la x25, scratch # base address
sd x7, 0(x25) # store in memory
li x7, 0xc500edb15984202b # load another value into integer register
amoxor.w x7, x7, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xee1f7ded445af83a # load random value
la x20, scratch # base address
sd x8, 0(x20) # store in memory
li x8, 0xc19a7e085e34584f # load another value into integer register
amoxor.w x8, x8, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x8d64fa227a52bab5 # load random value
la x29, scratch # base address
sd x9, 0(x29) # store in memory
li x9, 0x05953b29ebbc3b00 # load another value into integer register
amoxor.w x9, x9, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x11c63571642294fc # load random value
la x9, scratch # base address
sd x10, 0(x9) # store in memory
li x10, 0xa3638337a36b657e # load another value into integer register
amoxor.w x10, x10, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x5e07f4928a36dd6a # load random value
la x26, scratch # base address
sd x11, 0(x26) # store in memory
li x11, 0xa869241983953237 # load another value into integer register
amoxor.w x11, x11, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x1f22b20f473f08d4 # load random value
la x7, scratch # base address
sd x12, 0(x7) # store in memory
li x12, 0xbc4609da55067ced # load another value into integer register
amoxor.w x12, x12, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xb5752b7491cace3c # load random value
la x21, scratch # base address
sd x13, 0(x21) # store in memory
li x13, 0xb78535139349001a # load another value into integer register
amoxor.w x13, x13, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x01a3a6cdf54be5bc # load random value
la x16, scratch # base address
sd x14, 0(x16) # store in memory
li x14, 0x77d5a761afa084b9 # load another value into integer register
amoxor.w x14, x14, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x5bc9b0008b62957c # load random value
la x26, scratch # base address
sd x15, 0(x26) # store in memory
li x15, 0x23dd69451d3c573e # load another value into integer register
amoxor.w x15, x15, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x7e133e0ba8db18d9 # load random value
la x6, scratch # base address
sd x16, 0(x6) # store in memory
li x16, 0x361aae74507cfe03 # load another value into integer register
amoxor.w x16, x16, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x22f7a4ab143e0d7b # load random value
la x16, scratch # base address
sd x17, 0(x16) # store in memory
li x17, 0x85782befb5370e84 # load another value into integer register
amoxor.w x17, x17, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0xc6fac049a08ece7f # load random value
la x20, scratch # base address
sd x18, 0(x20) # store in memory
li x18, 0x6ca070c3e6fb7836 # load another value into integer register
amoxor.w x18, x18, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x5fd7d87b670598a9 # load random value
la x9, scratch # base address
sd x19, 0(x9) # store in memory
li x19, 0x7a031cee0bff753b # load another value into integer register
amoxor.w x19, x19, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x41bfb9f5cdff9dda # load random value
la x31, scratch # base address
sd x20, 0(x31) # store in memory
li x20, 0xa8ff192a18637698 # load another value into integer register
amoxor.w x20, x20, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x039137fba03f14f9 # load random value
la x3, scratch # base address
sd x21, 0(x3) # store in memory
li x21, 0x307d923fcb38e019 # load another value into integer register
amoxor.w x21, x21, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0xea3c1616aaa78b5e # load random value
la x25, scratch # base address
sd x22, 0(x25) # store in memory
li x22, 0xee69bd6002d5632a # load another value into integer register
amoxor.w x22, x22, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x899f2aa3b84ab1ee # load random value
la x29, scratch # base address
sd x23, 0(x29) # store in memory
li x23, 0x0edffeea53749883 # load another value into integer register
amoxor.w x23, x23, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0xac68cb11a6cae00d # load random value
la x20, scratch # base address
sd x24, 0(x20) # store in memory
li x24, 0x2d4e6b19838fc19b # load another value into integer register
amoxor.w x24, x24, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x48d626b3180b916e # load random value
la x28, scratch # base address
sd x25, 0(x28) # store in memory
li x25, 0x3e2cac9c8f09b8b1 # load another value into integer register
amoxor.w x25, x25, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0xbe8eb06a808d2e52 # load random value
la x8, scratch # base address
sd x26, 0(x8) # store in memory
li x26, 0x8629ceb2c3644e97 # load another value into integer register
amoxor.w x26, x26, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x41dc1d2df9227709 # load random value
la x15, scratch # base address
sd x27, 0(x15) # store in memory
li x27, 0x79b132db43d0bf85 # load another value into integer register
amoxor.w x27, x27, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x5507f1741b77eada # load random value
la x26, scratch # base address
sd x28, 0(x26) # store in memory
li x28, 0x3742a52cb86ed60f # load another value into integer register
amoxor.w x28, x28, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xa6518e37305555db # load random value
la x9, scratch # base address
sd x29, 0(x9) # store in memory
li x29, 0x517bd08b504b0fe8 # load another value into integer register
amoxor.w x29, x29, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xb47324fa2479bc69 # load random value
la x31, scratch # base address
sd x30, 0(x31) # store in memory
li x30, 0xfcdafb243ae7c3cb # load another value into integer register
amoxor.w x30, x30, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x16770a502e880217 # load random value
la x9, scratch # base address
sd x31, 0(x9) # store in memory
li x31, 0x270c9e079edd08fa # load another value into integer register
amoxor.w x31, x31, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x2ae5d2b72b2ab029 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoxor.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x7cce235caa5767d6 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoxor.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x435a227727bb5e40 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoxor.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x122a8946f2d10da8 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoxor.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x926afde3c6d77929 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoxor.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe768079a498ab5b0 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoxor.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8ae36bdff0f3ab7d # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoxor.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xb1ee1245bb373493 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoxor.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x7f383c4aaf4ec002 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoxor.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x39a4db8e7a2a082a # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoxor.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x1fd82119d75258d7 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoxor.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xa4008dd1dc344e50 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoxor.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xcf0f728f266c9f31 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoxor.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xae069167ca9467f3 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoxor.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xb0cc7998f89b6101 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoxor.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x0e9ce693449967c0 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoxor.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xafea13520775594f # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoxor.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x148302971a9458ba # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoxor.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x8ca69f947f5b4102 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoxor.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xfb1980a654ba1d57 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoxor.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x1c6ef9a2241d1f55 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoxor.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xead0411ae4d0aecc # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoxor.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x279a75f23eb73451 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoxor.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x3712d0e4329cec06 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoxor.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x68430bf0d14b493c # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoxor.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x30339abc132fb6ff # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoxor.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x89ce7bb3a7e5bbfc # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoxor.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xdb9d4bd1fb9ffee4 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoxor.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xb38d995078361293 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoxor.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc9208820c9ab7211 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoxor.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x61031f33cd5d2cde # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoxor.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x9, scratch
add x31, x17, x27 # perform first operation
amoxor.w x14, x22, (x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x30, scratch
add x10, x27, x26 # perform first operation
amoxor.w x28, x2, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x13, scratch
add x24, x22, x30 # perform first operation
amoxor.w x27, x29, (x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x12, scratch
add x24, x24, x0 # perform first operation
amoxor.w x24, x24, (x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x22, scratch
add x14, x14, x0 # perform first operation
amoxor.w x14, x12, (x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x16, scratch
add x19, x19, x0 # perform first operation
amoxor.w x18, x19, (x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x23, scratch
add x10, x18, x22 # perform first operation
amoxor.w x10, x31, (x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x15, scratch
add x21, x13, x20 # perform first operation
amoxor.w x21, x16, (x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x31, scratch
add x12, x25, x15 # perform first operation
amoxor.w x12, x11, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x23, scratch
add x18, x19, x1 # perform first operation
amoxor.w x19, x31, (x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x16, scratch
add x12, x21, x8 # perform first operation
amoxor.w x8, x28, (x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x17, scratch
add x10, x2, x11 # perform first operation
amoxor.w x14, x25, (x17) # perform second (triggering) operation

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
