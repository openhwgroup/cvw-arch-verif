///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-addw.S
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

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x2a0fec6f25ccf0e0 # initialize rs1
li x30, 0x4f206d57810617ef # initialize rs2
addw x15, x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x7118cc2830ab47b8 # initialize rs1
li x17, 0x9a6479ca3abc33ca # initialize rs2
addw x22, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xeeec2a733f6b8e04 # initialize rs1
li x29, 0x7a487b454e1ef0c5 # initialize rs2
addw x6, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x5fa970e5e6b2e35d # initialize rs1
li x21, 0xd86b8e5774e9ac91 # initialize rs2
addw x22, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x67446641ace299dd # initialize rs1
li x17, 0xcddb3dc50e72bcb8 # initialize rs2
addw x28, x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7e12cf04dd168410 # initialize rs1
li x21, 0x745198e86bd6075a # initialize rs2
addw x28, x5, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5e5e527a2ad2d9df # initialize rs1
li x21, 0x175dcf57b443aed1 # initialize rs2
addw x12, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0567e62696e5e5ba # initialize rs1
li x21, 0x320bb08ae985d254 # initialize rs2
addw x30, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x3d3818bc11a6a34f # initialize rs1
li x22, 0x5cf590543af509bb # initialize rs2
addw x21, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xe17adfd5a496fd56 # initialize rs1
li x6, 0x08495550fca3082f # initialize rs2
addw x5, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x3c9213f62959fe23 # initialize rs1
li x27, 0x6b8b1de789c361c6 # initialize rs2
addw x15, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x74853eb0f5021e60 # initialize rs1
li x5, 0x72dba9903fc363f1 # initialize rs2
addw x14, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xfc095ae63cfd68cc # initialize rs1
li x10, 0xfdfcdebd3b4c2a38 # initialize rs2
addw x18, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x8e331fdf871f0220 # initialize rs1
li x29, 0x230ac5650821f17b # initialize rs2
addw x19, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xf38b0465ce0a7632 # initialize rs1
li x22, 0xd8af9d8a23b34134 # initialize rs2
addw x21, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1ca85ef5f3d15841 # initialize rs1
li x9, 0x066acf72372d7ad1 # initialize rs2
addw x16, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x547d5aded5b56b03 # initialize rs1
li x12, 0x1da2cc882f964fd3 # initialize rs2
addw x2, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xd57323e9c9a75143 # initialize rs1
li x29, 0xfee73242dd6dd923 # initialize rs2
addw x23, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xa60f65a20b79e1a4 # initialize rs1
li x24, 0xda23b3fbc6051bc0 # initialize rs2
addw x9, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xe3fcb98b1bef129f # initialize rs1
li x6, 0x4027a100cf0dd6e8 # initialize rs2
addw x30, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xb3fef9f55de69056 # initialize rs1
li x5, 0x836fc344b6e75f4f # initialize rs2
addw x10, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xb0a484b550becace # initialize rs1
li x6, 0xeea7987b1bbbb1ce # initialize rs2
addw x11, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x984803c39c24403f # initialize rs1
li x27, 0x13296f6930c8847d # initialize rs2
addw x3, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xf4b3468cbace51b2 # initialize rs1
li x31, 0x03b49d1668fd1fe1 # initialize rs2
addw x11, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x04bcad99fd1ac5da # initialize rs1
li x15, 0x2c8c178c3140e9f9 # initialize rs2
addw x16, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x4ece52ab55ad78e7 # initialize rs1
li x2, 0x878c506a66e4c1c1 # initialize rs2
addw x30, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x02d6f19956512021 # initialize rs1
li x1, 0xf000094abcc28c8c # initialize rs2
addw x2, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x790beb20d1b14258 # initialize rs1
li x10, 0xf32dce8f2d3b97e7 # initialize rs2
addw x23, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x5ba358f473eae71a # initialize rs1
li x9, 0xcf2ec119189d7e66 # initialize rs2
addw x17, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x5d42e91bb2ea4775 # initialize rs1
li x17, 0xf308ce974ecfb86a # initialize rs2
addw x21, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x675415681dbe66f2 # initialize rs1
li x13, 0x50671fad349de14b # initialize rs2
addw x2, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xf459c91705dfb904 # initialize rs1
li x29, 0x79763f0ea04d58e0 # initialize rs2
addw x5, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x21, 0x7c07ecb8a4380277 # initialize rs1
li x0, 0xd028721fb6684ddd # initialize rs2
addw x11, x21, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x28, 0x82e57b7c8977bd2a # initialize rs1
li x1, 0x1239a0559915e0cc # initialize rs2
addw x6, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x19, 0xe180448656af233f # initialize rs1
li x2, 0xf4ff5adbe172a124 # initialize rs2
addw x7, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x29, 0x691cb64f97adf75b # initialize rs1
li x3, 0x051366f0740d787c # initialize rs2
addw x16, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x63206e05f1ea329d # initialize rs1
li x4, 0xf31582f1bfa92324 # initialize rs2
addw x30, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0xfff09137685df9ce # initialize rs1
li x5, 0x7de6c439ed2e305e # initialize rs2
addw x1, x9, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xd86ff82194e85e33 # initialize rs1
li x6, 0xcebd8c0a2db77d4b # initialize rs2
addw x24, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0xa0f6f3de1d57cc39 # initialize rs1
li x7, 0x043ed6aa0134295b # initialize rs2
addw x3, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x16, 0x357f59aa9073ccb3 # initialize rs1
li x8, 0x95715006a90d996c # initialize rs2
addw x3, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0x7bc450d1daf6ad8f # initialize rs1
li x9, 0xeb8da46a87e0f85d # initialize rs2
addw x15, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x13, 0xfbd5b884911c945b # initialize rs1
li x10, 0xec2a01b1f4488b66 # initialize rs2
addw x25, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x26, 0x8dfa8e66682a6c8f # initialize rs1
li x11, 0x0b4dfc9dcfc14bed # initialize rs2
addw x3, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x11, 0xa815727d14932012 # initialize rs1
li x12, 0x4aaa3a71bd026101 # initialize rs2
addw x28, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x14, 0x5f95ead306f5cc13 # initialize rs1
li x13, 0x81b1f2457deabde2 # initialize rs2
addw x28, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x8, 0x0882c6561889f418 # initialize rs1
li x14, 0xb24afcbb6c6905a3 # initialize rs2
addw x13, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x19, 0x4d1ca6ccbd890ddb # initialize rs1
li x15, 0x4e957fee6fb8bf10 # initialize rs2
addw x7, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x26, 0xe6aa1715b5418ab1 # initialize rs1
li x16, 0x3222a63333881fb1 # initialize rs2
addw x25, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x11, 0x5629a183065bb72f # initialize rs1
li x17, 0xa21e9a035e006852 # initialize rs2
addw x27, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x13, 0xa8c9b98522ce92ff # initialize rs1
li x18, 0xe6fdd0b24c7eab50 # initialize rs2
addw x24, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x27, 0xd4de1b2ce8f558aa # initialize rs1
li x19, 0xf6dfe41f84afeeeb # initialize rs2
addw x26, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x11, 0xeadb33ace82a26eb # initialize rs1
li x20, 0xac9c8b61a514eb14 # initialize rs2
addw x1, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x11, 0xbe969214867750ca # initialize rs1
li x21, 0xdf10953b3332217d # initialize rs2
addw x31, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x11, 0xfc94313271732b7b # initialize rs1
li x22, 0xeb66085c2bf0b125 # initialize rs2
addw x23, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x22, 0xbfbcb79de0b8160b # initialize rs1
li x23, 0x26e5955e5637049d # initialize rs2
addw x2, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x10, 0xfe06ca8e12c89c53 # initialize rs1
li x24, 0xe50687c24a916ff9 # initialize rs2
addw x25, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x30, 0x525c6a3e31fd2e28 # initialize rs1
li x25, 0xedfb534990710870 # initialize rs2
addw x23, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x25, 0xb0347a94e6f04087 # initialize rs1
li x26, 0x233a66011d41c8c8 # initialize rs2
addw x8, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x30, 0xecc991213c916a8c # initialize rs1
li x27, 0x91e5892fd8b044aa # initialize rs2
addw x24, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x19, 0xfa0998ff5328314c # initialize rs1
li x28, 0xccb82994bea47f0b # initialize rs2
addw x18, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x23, 0xb3b9c50ace247945 # initialize rs1
li x29, 0x897a9a51499b80aa # initialize rs2
addw x11, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x19, 0x4672ba3887283816 # initialize rs1
li x30, 0xb848cf70b67693a5 # initialize rs2
addw x24, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x16, 0xeaf80cb7a2ac93c2 # initialize rs1
li x31, 0x1dc1d26ba6221bd5 # initialize rs2
addw x21, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 504)

# Testcase cp_rd (Test destination rd = x0)
li x9, 0x20e2a901df6f4e14 # initialize rs1
li x18, 0x30a64728fec43d84 # initialize rs2
addw x0, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0xe564bfd2b4b4dd4b # initialize rs1
li x17, 0xf9a3b6d410919e94 # initialize rs2
addw x1, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x27, 0x89e13a7bad1b34de # initialize rs1
li x12, 0xfec8a5f0d8947102 # initialize rs2
addw x2, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x8, 0x04f879e097a60019 # initialize rs1
li x18, 0xe819017c5dd21bb5 # initialize rs2
addw x3, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0xc7f90a8815ca55dd # initialize rs1
li x15, 0x1bdea2fc53b80ded # initialize rs2
addw x4, x27, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x0f35718a6c247379 # initialize rs1
li x17, 0x82a6cd1039d05ae5 # initialize rs2
addw x5, x29, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0x3416f7d11bf57242 # initialize rs1
li x2, 0x2f0c1fcc4ab73f03 # initialize rs2
addw x6, x31, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0x5bfc0b2dbcce3216 # initialize rs1
li x2, 0x5ca82cf2806a5cd9 # initialize rs2
addw x7, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x27, 0x716d0f301659a01d # initialize rs1
li x31, 0xac399d7e7314c67a # initialize rs2
addw x8, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x27, 0x156b16dbfd987d48 # initialize rs1
li x29, 0x65cf5a8645f75466 # initialize rs2
addw x9, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x27, 0x884436015d1086a6 # initialize rs1
li x30, 0x30b2475fe4e6c449 # initialize rs2
addw x10, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0xf45bfffd096cda26 # initialize rs1
li x23, 0x9fc84fc0bbc2b0f5 # initialize rs2
addw x11, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x7, 0x590fb2bd04d6d64a # initialize rs1
li x31, 0x35531688cb0294c1 # initialize rs2
addw x12, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x19, 0x0c84059dab1f2c41 # initialize rs1
li x3, 0xc53c34f7c7e6074a # initialize rs2
addw x13, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x21, 0x5222684141946267 # initialize rs1
li x18, 0xb7095c1a22794329 # initialize rs2
addw x14, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x9, 0x40073b32ea5f418a # initialize rs1
li x24, 0x82947f8931585256 # initialize rs2
addw x15, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x15, 0x1216d6712d8203b4 # initialize rs1
li x1, 0x5740893ed631c4fd # initialize rs2
addw x16, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x14, 0xff082c99865f3166 # initialize rs1
li x29, 0x1a7aa872cf062f1c # initialize rs2
addw x17, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0x80823435a10ed15f # initialize rs1
li x21, 0x19048eff8ea3ada3 # initialize rs2
addw x18, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0x82454d887cbc0660 # initialize rs1
li x15, 0x4ef6035ed62ba8da # initialize rs2
addw x19, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x17, 0x9e21dd1564c6ff1a # initialize rs1
li x16, 0x4485123cfb8b3924 # initialize rs2
addw x20, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x28, 0xae1f6b4c7ae9582f # initialize rs1
li x9, 0x9ca2097832cae847 # initialize rs2
addw x21, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x18, 0x671d7bb757c28d1b # initialize rs1
li x15, 0xae5ce1b596ecb302 # initialize rs2
addw x22, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x11, 0xba5d7efcd48c86e1 # initialize rs1
li x5, 0xf8085b88b8671ca5 # initialize rs2
addw x23, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x15, 0x7f570a39549bcdbc # initialize rs1
li x24, 0xf3ad65b03f0f5b6a # initialize rs2
addw x24, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x9, 0x899c0215fc9f04b9 # initialize rs1
li x5, 0xd863e8163933627f # initialize rs2
addw x25, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x14, 0x0fdde6efda5bac38 # initialize rs1
li x8, 0xb82ed5e9e145aa1b # initialize rs2
addw x26, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x12, 0x78367f389d9e55b7 # initialize rs1
li x22, 0x48c5127d180e1a0d # initialize rs2
addw x27, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x1, 0x00891e3eba19dccb # initialize rs1
li x25, 0x2c5bf8fc624ae4ee # initialize rs2
addw x28, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x15, 0x505ec0312dd413e1 # initialize rs1
li x3, 0x0341ba3867daab3b # initialize rs2
addw x29, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x28, 0xb62a95bb9da49528 # initialize rs1
li x5, 0xe9436d2e731398e9 # initialize rs2
addw x30, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x5, 0xbcfab207ea100c36 # initialize rs1
li x7, 0x726add0f435983d1 # initialize rs2
addw x31, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x15, 0x0000000000000000 # initialize rs1
li x13, 0x65cb5c1074f1a5bf # initialize rs2
addw x23, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x0000000000000001 # initialize rs1
li x24, 0xf70e8c034914ad21 # initialize rs2
addw x14, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x17, 0x0000000000000002 # initialize rs1
li x28, 0x8d26d288dccd4de0 # initialize rs2
addw x21, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x29, 0x8000000000000000 # initialize rs1
li x8, 0xafc23e0463394d31 # initialize rs2
addw x22, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
li x29, 0x5fb582158b95cfb4 # initialize rs2
addw x12, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
li x1, 0xdb29dfe9fb34ecbb # initialize rs2
addw x26, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x18, 0xbb81b2a493d4cd51 # initialize rs2
addw x8, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x6, 0xffffffffffffffff # initialize rs1
li x7, 0xc49119901c9ba8bd # initialize rs2
addw x11, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x3, 0xfffffffffffffffe # initialize rs1
li x16, 0x79123737b5ff357d # initialize rs2
addw x30, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0xe7e770256b35b5f3 # initialize rs2
addw x5, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x9046ab8dea5ba66c # initialize rs2
addw x9, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x1, 0x5555555555555555 # initialize rs1
li x20, 0x3b9b7348d77de7a2 # initialize rs2
addw x25, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x29, 0x00000000ffffffff # initialize rs1
li x1, 0x60b4d760cdfa72ba # initialize rs2
addw x23, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x13, 0xeab1b8a49b51f97e # initialize rs2
addw x17, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0x0000000100000000 # initialize rs1
li x1, 0xf469ece69ddf90b9 # initialize rs2
addw x10, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rs1
li x30, 0x88d6a338c3da53a2 # initialize rs2
addw x28, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x11, 0x9956b4dac700fa4f # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
addw x2, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x20, 0x67614d84342e1f2b # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
addw x1, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x7, 0xf7f0253b15827211 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
addw x5, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x19, 0x5b0166abaf07611b # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
addw x3, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x10, 0xe2031963f6f94851 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
addw x12, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0xbfbecb3e556a7a4d # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
addw x25, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x8, 0xef2bb16b3de615a3 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
addw x2, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x20, 0x440f8d5e632ddba2 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
addw x6, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x31, 0x9693bd1670b3065a # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
addw x17, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x13, 0xc82c21357e46c4a2 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
addw x30, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0366680d442fbd52 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x27, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x27, 0xdfcc1d503e9c2f6b # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
addw x16, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0xf159cedfea4e02c3 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
addw x20, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x22, 0x20af2495625d7446 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
addw x9, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x23, 0xcef4fd457dd36b1a # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
addw x20, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x19, 0x07dae80aef41f198 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
addw x18, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x1, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
addw x23, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x6, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
addw x15, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x12, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
addw x25, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x28, 0x0000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
addw x8, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x3, 0x0000000000000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
addw x8, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000000 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
addw x15, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x18, 0x0000000000000000 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
addw x27, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x22, 0x0000000000000000 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
addw x19, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000000000000 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
addw x17, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
addw x14, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x0000000000000000 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x11, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x3, 0x0000000000000000 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
addw x23, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x9, 0x0000000000000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
addw x25, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x20, 0x0000000000000000 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
addw x25, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x31, 0x0000000000000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
addw x2, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x25, 0x0000000000000000 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
addw x16, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x16, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
addw x2, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x28, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
addw x6, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x1, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
addw x26, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x7, 0x0000000000000001 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
addw x15, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x23, 0x0000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
addw x3, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x5, 0x0000000000000001 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
addw x19, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x9, 0x0000000000000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
addw x21, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x7, 0x0000000000000001 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
addw x3, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x6, 0x0000000000000001 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
addw x7, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000000000001 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
addw x26, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000000000001 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x7, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x6, 0x0000000000000001 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
addw x9, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x8, 0x0000000000000001 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
addw x26, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x9, 0x0000000000000001 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
addw x21, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x8, 0x0000000000000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
addw x31, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x21, 0x0000000000000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
addw x10, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x10, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
addw x12, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x13, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
addw x28, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x2, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
addw x24, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x8, 0x0000000000000002 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
addw x24, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x27, 0x0000000000000002 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
addw x3, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000000000002 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
addw x29, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000000000002 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
addw x5, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
addw x31, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000000000002 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
addw x10, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000000000002 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
addw x15, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000000000002 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x15, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x12, 0x0000000000000002 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
addw x2, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x28, 0x0000000000000002 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
addw x8, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x22, 0x0000000000000002 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
addw x29, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x16, 0x0000000000000002 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
addw x24, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x14, 0x0000000000000002 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
addw x29, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x10, 0x8000000000000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
addw x5, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x17, 0x8000000000000000 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
addw x8, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x20, 0x8000000000000000 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
addw x23, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x14, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
addw x27, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x2, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
addw x14, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x24, 0x8000000000000000 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
addw x8, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x15, 0x8000000000000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
addw x14, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x31, 0x8000000000000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
addw x5, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x30, 0x8000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
addw x22, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x22, 0x8000000000000000 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
addw x30, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x8000000000000000 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x13, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x8, 0x8000000000000000 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
addw x20, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x18, 0x8000000000000000 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
addw x12, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x30, 0x8000000000000000 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
addw x14, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x18, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
addw x26, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x2, 0x8000000000000000 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
addw x17, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x9, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
addw x20, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x13, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
addw x28, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x19, 0x8000000000000001 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
addw x17, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x10, 0x8000000000000001 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
addw x25, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x25, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
addw x29, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x6, 0x8000000000000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
addw x7, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x20, 0x8000000000000001 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
addw x25, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x9, 0x8000000000000001 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
addw x15, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x29, 0x8000000000000001 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
addw x24, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x11, 0x8000000000000001 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
addw x13, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x8000000000000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x30, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x14, 0x8000000000000001 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
addw x6, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x17, 0x8000000000000001 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
addw x15, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x31, 0x8000000000000001 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
addw x14, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x24, 0x8000000000000001 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
addw x23, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x29, 0x8000000000000001 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
addw x20, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x30, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
addw x5, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x3, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
addw x28, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x24, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
addw x22, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x10, 0x7fffffffffffffff # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
addw x24, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x28, 0x7fffffffffffffff # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
addw x9, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
addw x18, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x3, 0x7fffffffffffffff # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
addw x8, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
addw x14, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x28, 0x7fffffffffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
addw x19, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x13, 0x7fffffffffffffff # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
addw x20, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x7fffffffffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x14, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x25, 0x7fffffffffffffff # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
addw x10, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
addw x5, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x24, 0x7fffffffffffffff # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
addw x2, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x21, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
addw x6, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x2, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
addw x31, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x11, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
addw x5, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x31, 0x7ffffffffffffffe # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
addw x20, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x9, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
addw x23, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x21, 0x7ffffffffffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
addw x6, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
addw x10, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x15, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
addw x22, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x29, 0x7ffffffffffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
addw x6, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x11, 0x7ffffffffffffffe # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
addw x23, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x14, 0x7ffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
addw x19, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x16, 0x7ffffffffffffffe # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
addw x10, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x7ffffffffffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x16, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x25, 0x7ffffffffffffffe # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
addw x29, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x8, 0x7ffffffffffffffe # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
addw x18, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x2, 0x7ffffffffffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
addw x17, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x23, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
addw x31, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x12, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
addw x6, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x23, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
addw x24, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x16, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
addw x13, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x28, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
addw x7, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x26, 0xffffffffffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
addw x13, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x27, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
addw x20, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
addw x15, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x19, 0xffffffffffffffff # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
addw x14, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
addw x26, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x14, 0xffffffffffffffff # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
addw x9, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x6, 0xffffffffffffffff # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
addw x2, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xffffffffffffffff # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x17, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x8, 0xffffffffffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
addw x23, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x8, 0xffffffffffffffff # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
addw x28, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x28, 0xffffffffffffffff # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
addw x19, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x24, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
addw x3, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x15, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
addw x23, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x18, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
addw x19, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x2, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
addw x30, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x13, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
addw x5, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x17, 0xfffffffffffffffe # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
addw x6, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x21, 0xfffffffffffffffe # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
addw x1, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x6, 0xfffffffffffffffe # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
addw x3, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x2, 0xfffffffffffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
addw x9, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x3, 0xfffffffffffffffe # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
addw x21, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x20, 0xfffffffffffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
addw x23, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x10, 0xfffffffffffffffe # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
addw x5, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0xfffffffffffffffe # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x11, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x25, 0xfffffffffffffffe # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
addw x28, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x15, 0xfffffffffffffffe # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
addw x1, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
addw x31, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x27, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
addw x15, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x12, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
addw x23, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
addw x11, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
addw x10, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
addw x11, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
addw x12, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
addw x6, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
addw x16, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
addw x30, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
addw x27, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
addw x14, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
addw x24, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x25, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
addw x23, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
addw x10, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
addw x24, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
addw x30, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
addw x13, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
addw x22, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
addw x31, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
addw x20, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
addw x6, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
addw x6, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
addw x16, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
addw x1, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
addw x12, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
addw x18, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
addw x9, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x14, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
addw x27, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
addw x7, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
addw x21, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
addw x14, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
addw x15, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x21, 0x5555555555555555 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
addw x16, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x31, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
addw x1, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x20, 0x5555555555555555 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
addw x2, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x21, 0x5555555555555555 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
addw x17, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x1, 0x5555555555555555 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
addw x12, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
addw x22, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x11, 0x5555555555555555 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
addw x14, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x27, 0x5555555555555555 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
addw x5, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x15, 0x5555555555555555 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
addw x16, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x11, 0x5555555555555555 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
addw x14, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x5555555555555555 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x30, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x31, 0x5555555555555555 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
addw x1, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x18, 0x5555555555555555 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
addw x31, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x14, 0x5555555555555555 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
addw x29, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x20, 0x5555555555555555 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
addw x10, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x2, 0x5555555555555555 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
addw x7, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x9, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
addw x30, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x29, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
addw x1, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x26, 0x00000000ffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
addw x21, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x21, 0x00000000ffffffff # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
addw x8, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x5, 0x00000000ffffffff # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
addw x29, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x12, 0x00000000ffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
addw x22, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x00000000ffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
addw x22, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x27, 0x00000000ffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
addw x17, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
addw x27, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x25, 0x00000000ffffffff # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
addw x6, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x00000000ffffffff # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x10, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x27, 0x00000000ffffffff # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
addw x24, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x13, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
addw x30, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x9, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
addw x21, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x1, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
addw x20, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x21, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
addw x13, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x5, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
addw x21, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x20, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
addw x6, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x29, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
addw x8, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x22, 0x00000000fffffffe # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
addw x26, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x18, 0x00000000fffffffe # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
addw x6, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x25, 0x00000000fffffffe # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
addw x6, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
addw x18, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x8, 0x00000000fffffffe # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
addw x28, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x15, 0x00000000fffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
addw x18, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x9, 0x00000000fffffffe # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
addw x16, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x00000000fffffffe # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x28, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x23, 0x00000000fffffffe # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
addw x27, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x8, 0x00000000fffffffe # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
addw x19, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x18, 0x00000000fffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
addw x9, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x30, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
addw x21, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x8, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
addw x5, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x19, 0x0000000100000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
addw x24, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x20, 0x0000000100000000 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
addw x26, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x24, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
addw x22, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x6, 0x0000000100000000 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
addw x5, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x2, 0x0000000100000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
addw x8, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000100000000 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
addw x20, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000100000000 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
addw x9, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x13, 0x0000000100000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
addw x5, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000100000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
addw x9, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000100000000 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
addw x29, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000100000000 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x5, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x14, 0x0000000100000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
addw x6, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x9, 0x0000000100000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
addw x30, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x18, 0x0000000100000000 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
addw x22, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x14, 0x0000000100000000 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
addw x17, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x13, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
addw x16, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x14, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
addw x28, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x31, 0x0000000100000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
addw x10, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x30, 0x0000000100000001 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
addw x22, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x25, 0x0000000100000001 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
addw x2, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x16, 0x0000000100000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
addw x20, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000100000001 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
addw x16, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x13, 0x0000000100000001 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
addw x12, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
addw x30, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000100000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
addw x24, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x18, 0x0000000100000001 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
addw x7, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0000000100000001 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x25, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x2, 0x0000000100000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
addw x25, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x7, 0x0000000100000001 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
addw x14, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x9, 0x0000000100000001 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
addw x25, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x25, 0x0000000100000001 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
addw x15, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x10, 0x0000000100000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
addw x8, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xfe2a7be232c2d4b4 # initialize rs1
li x0, 0x771f6a88f6b5a052 # initialize rs2
addw x12, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xf4c1532e28de4689 # initialize rs1
li x1, 0xf7d7c020f1321660 # initialize rs2
addw x29, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x5db060d805446f24 # initialize rs1
li x2, 0x58670f72fac610a8 # initialize rs2
addw x3, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xbdb6f1181e152008 # initialize rs1
li x3, 0x1514367215bcc58e # initialize rs2
addw x21, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf1413c2ff4d01347 # initialize rs1
li x4, 0x7503df790715f6d2 # initialize rs2
addw x2, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x785687216d8b572c # initialize rs1
li x5, 0x280947f2b39aae45 # initialize rs2
addw x7, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1904f56098b77f37 # initialize rs1
li x6, 0x716477665e2fadde # initialize rs2
addw x30, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9c53f93664eb4101 # initialize rs1
li x7, 0xcc0f453a92f6dc0b # initialize rs2
addw x26, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6813140cc9effa31 # initialize rs1
li x8, 0x910714ff00c4b37c # initialize rs2
addw x16, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x49bf6617b4b1df2f # initialize rs1
li x9, 0xe3ea0d028ce4f4b1 # initialize rs2
addw x22, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xb9ace93779f87625 # initialize rs1
li x10, 0x7ede6a3f85d37a5d # initialize rs2
addw x21, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xc4151b7a6ed8692e # initialize rs1
li x11, 0x3ff16ec77f243fa9 # initialize rs2
addw x5, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x1576fa86b4e8035c # initialize rs1
li x12, 0x7e5a9777e1ada583 # initialize rs2
addw x20, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xdb6e85b6565bde56 # initialize rs1
li x13, 0x90c187d40972b1e1 # initialize rs2
addw x15, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x598b02ea79ac0946 # initialize rs1
li x14, 0x6623cffe9f9bc84e # initialize rs2
addw x21, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x06e3a9ed2f692efe # initialize rs1
li x15, 0x3d6f83c69d09fe5a # initialize rs2
addw x2, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xaaa994a9b990fe64 # initialize rs1
li x16, 0xd09bd679a24f3e92 # initialize rs2
addw x31, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xf623db0388564c73 # initialize rs1
li x17, 0xb13ef18c751020e3 # initialize rs2
addw x24, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xf382639917b8ec38 # initialize rs1
li x18, 0xa52586ac3f4a287b # initialize rs2
addw x26, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x1d5033ce1b53ad9e # initialize rs1
li x19, 0xc7f3c9fedc782564 # initialize rs2
addw x7, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x15379fbe23c7daa9 # initialize rs1
li x20, 0x81f083566cbdfc99 # initialize rs2
addw x13, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x2761031f9c7d5648 # initialize rs1
li x21, 0xa0731ecf05f95a51 # initialize rs2
addw x3, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd2d669e07652741c # initialize rs1
li x22, 0x55911a06675f0dd4 # initialize rs2
addw x28, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x143eb09b21eb72bb # initialize rs1
li x23, 0x7ec5e8ff073113ae # initialize rs2
addw x8, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x573462a6ecd43211 # initialize rs1
li x24, 0xcc50d77b46aa1b3f # initialize rs2
addw x10, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x8b80a40b2d2083d9 # initialize rs1
li x25, 0x3e0aad34a28108e4 # initialize rs2
addw x2, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x48823c0f4dcd52d5 # initialize rs1
li x26, 0x01a130e49bd25c88 # initialize rs2
addw x6, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x6719a306cf7f9145 # initialize rs1
li x27, 0xcf0a9d086edab44d # initialize rs2
addw x5, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x6d488333da68f21f # initialize rs1
li x28, 0x66667e1d39987cec # initialize rs2
addw x25, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x029edf8178711ffb # initialize rs1
li x29, 0x0f530b5a9c488439 # initialize rs2
addw x17, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xc412a05758f1719b # initialize rs1
li x30, 0xf553283cd4903b49 # initialize rs2
addw x20, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xaaa6a453f6ab4188 # initialize rs1
li x31, 0x2eb944ff31a5369b # initialize rs2
addw x5, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xcae2b8d152b0c047 # initialize rs1
li x5, 0xd2dc128b4a8f2b15 # initialize rs2
addw x0, x0, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xde09f12a5b066238 # initialize rs1
li x26, 0x1e36df4e7eaeb248 # initialize rs2
addw x1, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7d6dfd8cc93fc6b1 # initialize rs1
li x16, 0x642a200fe0f7121e # initialize rs2
addw x2, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x598c0012b392d811 # initialize rs1
li x30, 0x5a46b3efb40cb443 # initialize rs2
addw x3, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf2c01e273747866f # initialize rs1
li x29, 0x195de3e38020ddc8 # initialize rs2
addw x4, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2d14881b7c6e267f # initialize rs1
li x6, 0x0501a029f5e8ab20 # initialize rs2
addw x5, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x98acd2ba0a12ee7b # initialize rs1
li x9, 0xead81597756b0534 # initialize rs2
addw x6, x6, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdec7a636dbe077e4 # initialize rs1
li x29, 0xbf2c76fde6fd87d4 # initialize rs2
addw x7, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x30e2ac4d7bd7b5ec # initialize rs1
li x24, 0x435c7471f3125e2d # initialize rs2
addw x8, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xb4a50c02a61de8f7 # initialize rs1
li x21, 0x0cf1898652e75c39 # initialize rs2
addw x9, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x97cbd827a4bf013c # initialize rs1
li x1, 0xf5b6907d73f447c2 # initialize rs2
addw x10, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xbdd71bbc55b5afa8 # initialize rs1
li x29, 0x1262201f49e4efeb # initialize rs2
addw x11, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x8e2ee45c44e05d93 # initialize rs1
li x22, 0xd94dd0a14edb39b7 # initialize rs2
addw x12, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xcb5158630a304268 # initialize rs1
li x29, 0xc87fbc5eaaa1b820 # initialize rs2
addw x13, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x59d28b86cf6111b0 # initialize rs1
li x6, 0x368e4f42b070d4a4 # initialize rs2
addw x14, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xfedd2750383cbd48 # initialize rs1
li x31, 0x8190fd7d7cf0d38b # initialize rs2
addw x15, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x276ec5718682cb9d # initialize rs1
li x7, 0x5f36863e5c6289ed # initialize rs2
addw x16, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x08c9e663972300b7 # initialize rs1
li x5, 0x43df5972cf9e4721 # initialize rs2
addw x17, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe30195415a97d3b4 # initialize rs1
li x29, 0x865d8cfd8373612a # initialize rs2
addw x18, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf9a4fdd0e2875bc8 # initialize rs1
li x2, 0x75c337afb42c4ebc # initialize rs2
addw x19, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x8a55d200ca2e64c1 # initialize rs1
li x6, 0x6baacb014a68d056 # initialize rs2
addw x20, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x3f4934259adc13f3 # initialize rs1
li x22, 0xaf4eea7e78c8a748 # initialize rs2
addw x21, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb82dc091d75c0bdf # initialize rs1
li x8, 0xccc4ea2fd051643f # initialize rs2
addw x22, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x8a435d46c3ea958d # initialize rs1
li x7, 0xca602d0aaa5a2ed3 # initialize rs2
addw x23, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x2f7e9856b73044bc # initialize rs1
li x31, 0x7221b48c1b6d3a17 # initialize rs2
addw x24, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x99aeca8d440213e5 # initialize rs1
li x5, 0x2dc7989192f38e27 # initialize rs2
addw x25, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xfe9c391a946bb0d4 # initialize rs1
li x11, 0x56ba482249741df0 # initialize rs2
addw x26, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb0db97c597746eef # initialize rs1
li x10, 0x9530577dd6e416cc # initialize rs2
addw x27, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x653643e3e93bfbd6 # initialize rs1
li x3, 0x13f0d4598ff017eb # initialize rs2
addw x28, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xdcce73f085cc93d6 # initialize rs1
li x10, 0x292c85c527bee864 # initialize rs2
addw x29, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x8ed3de7637c337ec # initialize rs1
li x31, 0xc100f315156bc3da # initialize rs2
addw x30, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x72573b75fc32ebec # initialize rs1
li x7, 0x6b9b3f3d1699aaad # initialize rs2
addw x31, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x5, 0xb5914d23dabc392c # initialize rs1
li x0, 0xc57db9e7d0e241e0 # initialize rs2
addw x0, x5, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x22, 0xad24749736b00943 # initialize rs1
li x1, 0xebbb7a0e2ef87ed1 # initialize rs2
addw x1, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x5, 0x41192373f6b6ff5d # initialize rs1
li x2, 0x08f4b0a485916a68 # initialize rs2
addw x2, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x17, 0x0e16df3574f1daa5 # initialize rs1
li x3, 0xed35f0b2f8ed97d7 # initialize rs2
addw x3, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0xd2cd69a7f3cfddc8 # initialize rs1
li x4, 0x227ab046fea72ac9 # initialize rs2
addw x4, x30, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0xb3833cb8f857b22c # initialize rs1
li x5, 0xff79ddddb76ac5b1 # initialize rs2
addw x5, x11, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x28f412d2c899437e # initialize rs1
li x6, 0x3549105568af1e64 # initialize rs2
addw x6, x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0x6df9f6307b2b708a # initialize rs1
li x7, 0xa5d6dd4c6942c869 # initialize rs2
addw x7, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x16, 0x99d83fe86577aced # initialize rs1
li x8, 0xb032c207477cb30d # initialize rs2
addw x8, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x25, 0x7a3aa8e65d0bfcaf # initialize rs1
li x9, 0xe541a0adf6105077 # initialize rs2
addw x9, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x31, 0xb6b407b8b63f74e9 # initialize rs1
li x10, 0xe4fb2441e226f03d # initialize rs2
addw x10, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x14, 0xfde004f49db8d361 # initialize rs1
li x11, 0x957330d87438646c # initialize rs2
addw x11, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x31, 0x09f4ebf44c39f3bd # initialize rs1
li x12, 0x354fc7240bc55bb1 # initialize rs2
addw x12, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x18, 0x01e24ce07afa53db # initialize rs1
li x13, 0xb434339686b31513 # initialize rs2
addw x13, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x12, 0xa27cee3923ffe291 # initialize rs1
li x14, 0x064bbe18177e3f75 # initialize rs2
addw x14, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x24, 0xb4b789c11ba2b1f5 # initialize rs1
li x15, 0xe5fc8df2d7cc41f6 # initialize rs2
addw x15, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x15, 0x8643fb211d3e2534 # initialize rs1
li x16, 0x170018a706d044a4 # initialize rs2
addw x16, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x6, 0x4ee9617e7c32cc02 # initialize rs1
li x17, 0x20293940c80a16f0 # initialize rs2
addw x17, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x3, 0x164c9c3f5a450ba4 # initialize rs1
li x18, 0xf20fc5a1ac7428f0 # initialize rs2
addw x18, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x16, 0x8fab9a6d870dad10 # initialize rs1
li x19, 0xb651b877d4e4bd05 # initialize rs2
addw x19, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x5, 0x2c2eafebd580a770 # initialize rs1
li x20, 0x517537644d8b4e47 # initialize rs2
addw x20, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x26, 0xfb663190379705bc # initialize rs1
li x21, 0x5368d106796edb91 # initialize rs2
addw x21, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x16, 0x15110edbf6b511af # initialize rs1
li x22, 0x5bc934074bf7fc7d # initialize rs2
addw x22, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x29, 0x44f07531c9b4cc68 # initialize rs1
li x23, 0xc2be2d0c079f5e2d # initialize rs2
addw x23, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x6, 0x1e28f5c40d4663ee # initialize rs1
li x24, 0xfa10749ddaef999d # initialize rs2
addw x24, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x20, 0xfeaa11863084e8d7 # initialize rs1
li x25, 0xf9ecc1b7b4e6448e # initialize rs2
addw x25, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x6b3e3b489d7003c8 # initialize rs1
li x26, 0x8ea88f953fe35abc # initialize rs2
addw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x16, 0xc5c806061e609156 # initialize rs1
li x27, 0x09a6920adb1d3548 # initialize rs2
addw x27, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x13, 0x853f7b4b28ff51de # initialize rs1
li x28, 0xec6d693658f78d91 # initialize rs2
addw x28, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x0fcfb9fcd55bb0dd # initialize rs1
li x29, 0x1b72204bcee6e264 # initialize rs2
addw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x19, 0x05d0e88fe40c669d # initialize rs1
li x30, 0x931fe40e026822e4 # initialize rs2
addw x30, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x20, 0xe763ec9a16279d90 # initialize rs1
li x31, 0xa65b5d9d7e3a2977 # initialize rs2
addw x31, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xc1037c943e22b7a5 # initialize rs1
li x0, 0xdfbb48bac38a24b3 # initialize rs2
addw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xb94f9e297a4d78d3 # initialize rs1
li x1, 0xbe2769d46f3eaf5f # initialize rs2
addw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x63d2a8a2d08a7fbc # initialize rs1
li x2, 0xe750e0905c2c2fc5 # initialize rs2
addw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x96d282768fd72890 # initialize rs1
li x3, 0xe14594099eb297fa # initialize rs2
addw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7b0d91556c9ff470 # initialize rs1
li x4, 0xcf3e01f3b65b53ed # initialize rs2
addw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc839b822872dbad7 # initialize rs1
li x5, 0x0bf117ea76aff242 # initialize rs2
addw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc24452f2f76a7f4a # initialize rs1
li x6, 0x73de7d63ab4b5636 # initialize rs2
addw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfa422310bb164442 # initialize rs1
li x7, 0xa1d456a1d777a7dd # initialize rs2
addw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x1dfa4deda2b6df78 # initialize rs1
li x8, 0xa92d4012b31055f8 # initialize rs2
addw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x9bc82633e6d37e79 # initialize rs1
li x9, 0x3cf26057e71ea58a # initialize rs2
addw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xf78c7c4997212edf # initialize rs1
li x10, 0x7e2c2d6876967fbc # initialize rs2
addw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xa79c58d07e662a63 # initialize rs1
li x11, 0x2fe470dfee020df1 # initialize rs2
addw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x62987a20f03e2616 # initialize rs1
li x12, 0x0df4eb1fab854d96 # initialize rs2
addw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x944a2801aca9e9ad # initialize rs1
li x13, 0x03982f6fdff25f25 # initialize rs2
addw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x2975400adc13652e # initialize rs1
li x14, 0x097bc06bd0e11abb # initialize rs2
addw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x9d48c0a08c531852 # initialize rs1
li x15, 0xfe34ac9b5aa2bb27 # initialize rs2
addw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x0860ef76197d6042 # initialize rs1
li x16, 0xc85aa31db87ff314 # initialize rs2
addw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x67e52a64795b96a5 # initialize rs1
li x17, 0x7432e1e4955adb49 # initialize rs2
addw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xaab9f18a9301e3de # initialize rs1
li x18, 0x88d5eaa1681320d4 # initialize rs2
addw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x923a9993c2b73052 # initialize rs1
li x19, 0x70b0dd741e890be8 # initialize rs2
addw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xff13283f94330524 # initialize rs1
li x20, 0xe6e020981c4185aa # initialize rs2
addw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xb2ec179fb15afe41 # initialize rs1
li x21, 0xeb3885f5eb79e502 # initialize rs2
addw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xc2abecabe47ce9ad # initialize rs1
li x22, 0xbb8a2a3a1c4b1055 # initialize rs2
addw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x937052cb293a1247 # initialize rs1
li x23, 0x1d09aa8b7e2fa6e1 # initialize rs2
addw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xfb1929bd3674a709 # initialize rs1
li x24, 0x18376d32740359c3 # initialize rs2
addw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x7df216e6aa8644b8 # initialize rs1
li x25, 0xb81cc7078124ec51 # initialize rs2
addw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x7e307545258ae8f4 # initialize rs1
li x26, 0x23bfac8ab7744fd2 # initialize rs2
addw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x4a06711ff8e0adb3 # initialize rs1
li x27, 0x19ee0285d59243ad # initialize rs2
addw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xe858fa6b660e4247 # initialize rs1
li x28, 0xfedd0ddf4f4853ee # initialize rs2
addw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xb404f6492d451192 # initialize rs1
li x29, 0x0184b4cad557729d # initialize rs2
addw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x44adfaf38a59aba8 # initialize rs1
li x30, 0x8aaf92171c979029 # initialize rs2
addw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x0c169a35ebafdd58 # initialize rs1
li x31, 0x47f0c238232ffcab # initialize rs2
addw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x10, x8 # perform first operation
addw x30, x7, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x28, x15 # perform first operation
addw x10, x24, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x16, x12 # perform first operation
addw x30, x31, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x15, x5 # perform first operation
addw x3, x10, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x16, x9 # perform first operation
addw x9, x22, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x27, x7 # perform first operation
addw x7, x19, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x5, x28 # perform first operation
addw x8, x1, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x26, x14 # perform first operation
addw x20, x22, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x1, x9 # perform first operation
addw x11, x5, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x6, x21 # perform first operation
addw x6, x24, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x22, x20 # perform first operation
addw x20, x14, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x28, x30 # perform first operation
addw x2, x31, x6 # perform second (triggering) operation

.EQU SIGSIZE,4096


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
