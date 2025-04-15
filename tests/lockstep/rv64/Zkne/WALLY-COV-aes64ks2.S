///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zkne/WALLY-COV-aes64ks2.S
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
li x0, 0x1b8dd1896ff4ee8e # initialize rs1
li x12, 0x7ef14da62de48e1f # initialize rs2
aes64ks2 x23, x0, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x2ccc57b358c4ade8 # initialize rs1
li x20, 0x539529b4647941a1 # initialize rs2
aes64ks2 x6, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x748d4eb4c6d8afb5 # initialize rs1
li x3, 0x7eda8d5b8de0a7d8 # initialize rs2
aes64ks2 x1, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xf75276d1e16de2b3 # initialize rs1
li x13, 0xcde892c2f3ca28bd # initialize rs2
aes64ks2 x22, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa169a1c30b57f864 # initialize rs1
li x18, 0xcf9cf37dc5e780c8 # initialize rs2
aes64ks2 x24, x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1addbf95a860376a # initialize rs1
li x31, 0x1d86b8f6690c5551 # initialize rs2
aes64ks2 x28, x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8649dcbec4358b70 # initialize rs1
li x1, 0x8a379847d206f424 # initialize rs2
aes64ks2 x2, x6, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc76edf6e60e39ff4 # initialize rs1
li x10, 0xc6cea61dd2c83ae2 # initialize rs2
aes64ks2 x3, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xec03c43f75a6e24d # initialize rs1
li x18, 0x26fd53bb378dcb70 # initialize rs2
aes64ks2 x1, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x44980072a06e41c2 # initialize rs1
li x18, 0x8bd3097fb07fff9a # initialize rs2
aes64ks2 x21, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x0c21a973f0af8ec1 # initialize rs1
li x6, 0x1f58dbbe6c94a3d2 # initialize rs2
aes64ks2 x1, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x827bd5de3d4db1cf # initialize rs1
li x22, 0x560cd4d57991b46a # initialize rs2
aes64ks2 x8, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x30e03dce50e749ec # initialize rs1
li x3, 0x71dbf05cf82ca1b5 # initialize rs2
aes64ks2 x17, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x0dff7b352cf9e5e9 # initialize rs1
li x22, 0xa73992e2bf74bc0c # initialize rs2
aes64ks2 x14, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc4efdee7a1a6c286 # initialize rs1
li x1, 0xd5c9eba710979e60 # initialize rs2
aes64ks2 x26, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x91ca3cc97b47b7b8 # initialize rs1
li x19, 0x19f9eb8afe8fede7 # initialize rs2
aes64ks2 x5, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xdc1c0221dedac709 # initialize rs1
li x27, 0xa928bc4ead5b6b4c # initialize rs2
aes64ks2 x6, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x820a1144ad8312db # initialize rs1
li x16, 0xe1e035e71ca94429 # initialize rs2
aes64ks2 x21, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x2ae3921f96bc0ed3 # initialize rs1
li x8, 0x2e72c026cd305f63 # initialize rs2
aes64ks2 x30, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x13311bf52152d9fa # initialize rs1
li x31, 0xc42c79473f1835d7 # initialize rs2
aes64ks2 x2, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xe5fd96dcdaebf4d7 # initialize rs1
li x29, 0xa1f26a00e94990c1 # initialize rs2
aes64ks2 x25, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xc232703e9d682cc0 # initialize rs1
li x27, 0xfb4ac8e96906d773 # initialize rs2
aes64ks2 x22, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x66a19dfdf8fe4ec3 # initialize rs1
li x14, 0x23464e0765cc8714 # initialize rs2
aes64ks2 x11, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xbf0e88ab141203bd # initialize rs1
li x31, 0xb1aa48a35df9041a # initialize rs2
aes64ks2 x18, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x8c9714cd965c9e88 # initialize rs1
li x5, 0xcc7765d348418d33 # initialize rs2
aes64ks2 x20, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x578dc8a48dc8fe1d # initialize rs1
li x17, 0x9a64b495ed232c94 # initialize rs2
aes64ks2 x11, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x74d4e0c3f5d5e5eb # initialize rs1
li x6, 0xd2a9021fcc706816 # initialize rs2
aes64ks2 x29, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xefaac894b19a00d6 # initialize rs1
li x30, 0xc7996459ee3a28fa # initialize rs2
aes64ks2 x15, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x849a0269986373d1 # initialize rs1
li x17, 0x68095cae9212466f # initialize rs2
aes64ks2 x25, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x425b26d28d4b0768 # initialize rs1
li x22, 0xb8bd0955e72f5e7d # initialize rs2
aes64ks2 x8, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x59f512174ed56686 # initialize rs1
li x22, 0x435587a393abd993 # initialize rs2
aes64ks2 x5, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x2fea0b47b6a484df # initialize rs1
li x29, 0xbd19a99c089b10e9 # initialize rs2
aes64ks2 x19, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x17, 0xeab45c589345d3e6 # initialize rs1
li x0, 0x067c5429d11c938e # initialize rs2
aes64ks2 x20, x17, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0x08b50a34590b2eab # initialize rs1
li x1, 0x88240f18ac21d95d # initialize rs2
aes64ks2 x18, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x30, 0xee2ff67c159567dc # initialize rs1
li x2, 0x1e335d9dc058c0db # initialize rs2
aes64ks2 x13, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x1, 0xecadb7c997312077 # initialize rs1
li x3, 0xac8aab8b66cf8b2f # initialize rs2
aes64ks2 x29, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0xa619c389def5d6d2 # initialize rs1
li x4, 0x8b9ec5e59e0c74c6 # initialize rs2
aes64ks2 x29, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0x67d1c7b2e567879a # initialize rs1
li x5, 0xf81fe3494a7ceb85 # initialize rs2
aes64ks2 x8, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x280322f17ebe5a5e # initialize rs1
li x6, 0xb77de5604058cf98 # initialize rs2
aes64ks2 x31, x29, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0x1211fee914bcf5a2 # initialize rs1
li x7, 0xf66565a829d1e683 # initialize rs2
aes64ks2 x5, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0x27f39fe1a53fa5b9 # initialize rs1
li x8, 0x2bbbb43d37096986 # initialize rs2
aes64ks2 x25, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0x04779e84dec46e77 # initialize rs1
li x9, 0xc58da096aa430d10 # initialize rs2
aes64ks2 x5, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x28, 0xdae46aa052c110a8 # initialize rs1
li x10, 0x32e3d8431eabdea3 # initialize rs2
aes64ks2 x30, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x7, 0xe00b38488d78195b # initialize rs1
li x11, 0xb459124d312e3ae1 # initialize rs2
aes64ks2 x6, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x27, 0x2c4326cab92b3c49 # initialize rs1
li x12, 0xe7f8c6ff30b6c958 # initialize rs2
aes64ks2 x22, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x19, 0x7a14c32e844cfd96 # initialize rs1
li x13, 0xcfeec9a4f2e1a166 # initialize rs2
aes64ks2 x7, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x30, 0xe667e007bc21d7e8 # initialize rs1
li x14, 0x1f5f495438a27d2e # initialize rs2
aes64ks2 x5, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x18, 0x1aa4f128aad75c94 # initialize rs1
li x15, 0x94b06b92c69021ef # initialize rs2
aes64ks2 x22, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x26, 0xdc6b03d05bcdedc8 # initialize rs1
li x16, 0xb8541ba962ae9c79 # initialize rs2
aes64ks2 x17, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x15, 0x04a2152de19bbe7f # initialize rs1
li x17, 0x99be0402efc829dc # initialize rs2
aes64ks2 x6, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x17, 0xe2a9376e49b5ee91 # initialize rs1
li x18, 0x1d71db7bf9ee208f # initialize rs2
aes64ks2 x2, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0xf460ecd1bffe0040 # initialize rs1
li x19, 0x0bb45a947252e4b3 # initialize rs2
aes64ks2 x29, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x25, 0x5779331f1134fda7 # initialize rs1
li x20, 0x815cda4cce5b17b0 # initialize rs2
aes64ks2 x16, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x20, 0xd9279c962c366347 # initialize rs1
li x21, 0xe5d6edafb7aa2203 # initialize rs2
aes64ks2 x6, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x31, 0x740c4994dfc7b7d5 # initialize rs1
li x22, 0x85e02cc7f7392f16 # initialize rs2
aes64ks2 x11, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x31, 0xab95e6d6cfb198dd # initialize rs1
li x23, 0xd3aa1a7ddcbe71e5 # initialize rs2
aes64ks2 x8, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0x5080d65d00ee406b # initialize rs1
li x24, 0xe72de48051d49bd3 # initialize rs2
aes64ks2 x8, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x23, 0xeb5db6968d4f00ae # initialize rs1
li x25, 0xbea10cc0d3ca0767 # initialize rs2
aes64ks2 x5, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x23, 0x2d5e8aa94344361e # initialize rs1
li x26, 0x9523ea5e048042bf # initialize rs2
aes64ks2 x9, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x24, 0x4c332fc937a101a5 # initialize rs1
li x27, 0x655aba1d55218759 # initialize rs2
aes64ks2 x9, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x14, 0x5f43f9d077927ac9 # initialize rs1
li x28, 0xfdc76a2e87a81faa # initialize rs2
aes64ks2 x15, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x24, 0xd0dafe56097b5d2c # initialize rs1
li x29, 0x67c6ad1fa1549a04 # initialize rs2
aes64ks2 x23, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x16, 0xf440987500520c43 # initialize rs1
li x30, 0xd2e0bbf160df99e2 # initialize rs2
aes64ks2 x24, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x20, 0x44e3b063640cc878 # initialize rs1
li x31, 0x1f6eaf18986cf32e # initialize rs2
aes64ks2 x17, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 504)

# Testcase cp_rd (Test destination rd = x0)
li x8, 0x2aa14fd5b1603f46 # initialize rs1
li x6, 0xf4ee3ebedb9f7122 # initialize rs2
aes64ks2 x0, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x24, 0xdf5194e201a5d183 # initialize rs1
li x22, 0xc0e0e820e3dfef27 # initialize rs2
aes64ks2 x1, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0xd6155d6850d0693d # initialize rs1
li x21, 0x139252a702d99970 # initialize rs2
aes64ks2 x2, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x6, 0xbdae4ad0d7419241 # initialize rs1
li x23, 0x01acfc377cc13b3c # initialize rs2
aes64ks2 x3, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x1b1ea7da5a6a3993 # initialize rs1
li x11, 0xac6e5687f837fb0b # initialize rs2
aes64ks2 x4, x21, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x917a9597411858e5 # initialize rs1
li x27, 0x07bb11ecf1e7a52f # initialize rs2
aes64ks2 x5, x29, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0xef634cee52efe980 # initialize rs1
li x23, 0xf662c8b998325d64 # initialize rs2
aes64ks2 x6, x20, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x739e546404737174 # initialize rs1
li x16, 0xa8b56b7043a397cf # initialize rs2
aes64ks2 x7, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x16, 0xceef9f04df92431e # initialize rs1
li x18, 0x82bddd268c0db471 # initialize rs2
aes64ks2 x8, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x22, 0xf19fac00634d0fa8 # initialize rs1
li x6, 0x1fbc0a83ff4b3f36 # initialize rs2
aes64ks2 x9, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x15, 0xcd188e9cc3802417 # initialize rs1
li x10, 0x9a84343a338efbb9 # initialize rs2
aes64ks2 x10, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x30, 0xb3d28591cfbf2ff7 # initialize rs1
li x20, 0xd5d130ed895fa04e # initialize rs2
aes64ks2 x11, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0xce3444fd4a731a53 # initialize rs1
li x18, 0x022916b75a17088b # initialize rs2
aes64ks2 x12, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x15, 0xbd0cbe80048c58f4 # initialize rs1
li x23, 0x39a376be6bc705e0 # initialize rs2
aes64ks2 x13, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x31, 0x9ee3b073ad9278c5 # initialize rs1
li x26, 0x35048e927639b333 # initialize rs2
aes64ks2 x14, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0xbc922ce0f3cbb912 # initialize rs1
li x24, 0x6d47128be033d004 # initialize rs2
aes64ks2 x15, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x7, 0xe32f9299909bb35f # initialize rs1
li x25, 0x4a62904ffb134a8b # initialize rs2
aes64ks2 x16, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x16, 0x16880b46aa05f5b9 # initialize rs1
li x1, 0x318159f534dbf68e # initialize rs2
aes64ks2 x17, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x4fe5300fe3001e80 # initialize rs1
li x5, 0x094dd9117510a84a # initialize rs2
aes64ks2 x18, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x30, 0x9618874a56472df9 # initialize rs1
li x23, 0xfd716ae6f65e36bc # initialize rs2
aes64ks2 x19, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x5962bf279c23ca37 # initialize rs1
li x13, 0xdcf22bf50159dab5 # initialize rs2
aes64ks2 x20, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x9, 0xdecb76dcdb0af455 # initialize rs1
li x17, 0x3024c75650f043ec # initialize rs2
aes64ks2 x21, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x6, 0x6a297bbf3de679e4 # initialize rs1
li x12, 0xfacbc7982e45c6ac # initialize rs2
aes64ks2 x22, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0x6ef91139e739e0a9 # initialize rs1
li x25, 0xfa509795719f8e9f # initialize rs2
aes64ks2 x23, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x7, 0xd81be889b229a823 # initialize rs1
li x12, 0x0df32124b238c4f2 # initialize rs2
aes64ks2 x24, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x13, 0x5c1b810b05629d5e # initialize rs1
li x16, 0xc47927576c363c74 # initialize rs2
aes64ks2 x25, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x14, 0x249ee7d3cc79f678 # initialize rs1
li x24, 0x564e0ef139bd7a57 # initialize rs2
aes64ks2 x26, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0xf3dd6522fabbff94 # initialize rs1
li x23, 0x5aedd24a5d7ffe65 # initialize rs2
aes64ks2 x27, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x6, 0xf95b6ec57b28090f # initialize rs1
li x1, 0x78ba336c7bf91851 # initialize rs2
aes64ks2 x28, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x10, 0x52b82ed0c455ca7b # initialize rs1
li x30, 0xb5f41cde5f534c2d # initialize rs2
aes64ks2 x29, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x20, 0xfe09222c0200ff08 # initialize rs1
li x24, 0x03d8dd1fe52b2ddc # initialize rs2
aes64ks2 x30, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x2, 0x20afbdab0d4e5544 # initialize rs1
li x30, 0x4cdb7f5a4e6f91e6 # initialize rs2
aes64ks2 x31, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x27, 0x0000000000000000 # initialize rs1
li x29, 0xe7c8e9440b15d692 # initialize rs2
aes64ks2 x18, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x0000000000000001 # initialize rs1
li x11, 0x1ca7cf1e035c371c # initialize rs2
aes64ks2 x7, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x0000000000000002 # initialize rs1
li x11, 0x5b064d700bf3db41 # initialize rs2
aes64ks2 x22, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x18, 0x8000000000000000 # initialize rs1
li x13, 0xbbdc377f273e12e8 # initialize rs2
aes64ks2 x9, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
li x22, 0x8c5b8759063d3d3d # initialize rs2
aes64ks2 x5, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x3, 0x7fffffffffffffff # initialize rs1
li x19, 0xc9103a0ad347035f # initialize rs2
aes64ks2 x2, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x9, 0x5e3ef7de5d5ddef5 # initialize rs2
aes64ks2 x18, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
li x1, 0x9109e7684770b60a # initialize rs2
aes64ks2 x22, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x17, 0xf5ac78161de8b9c0 # initialize rs2
aes64ks2 x8, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x0c042144110f8020 # initialize rs2
aes64ks2 x17, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x4e3ffafc5491ea70 # initialize rs2
aes64ks2 x21, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs1
li x6, 0x09d5356f57a95496 # initialize rs2
aes64ks2 x23, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x25, 0xfbf1444bfecd6e61 # initialize rs2
aes64ks2 x16, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x22, 0x0ef919bcf5890e1e # initialize rs2
aes64ks2 x17, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x17, 0x0000000100000000 # initialize rs1
li x28, 0x5c081aecd531b7a3 # initialize rs2
aes64ks2 x3, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0x0000000100000001 # initialize rs1
li x31, 0x63d53d5b6a747def # initialize rs2
aes64ks2 x17, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x6, 0xedd4db82a9324170 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
aes64ks2 x21, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x19, 0x3f50e136e7254b8f # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
aes64ks2 x31, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x391d147ed4626cfc # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
aes64ks2 x26, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x27, 0x8c94d15367fb1967 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
aes64ks2 x13, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x31, 0x0a2b596cbe7d7265 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
aes64ks2 x8, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x12, 0x53b9a6366ec6e5b6 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
aes64ks2 x5, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x15, 0x64325506e4804178 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x8, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x6, 0x50e9ab12a3e8e828 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
aes64ks2 x16, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x13, 0xeec34be71d948314 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
aes64ks2 x17, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x19, 0xf8569302c4a0bfa5 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x27, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0x664e903204d5386f # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x23, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x16, 0xfa90315069258b29 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
aes64ks2 x7, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x23, 0x77422b88a1aa73c5 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
aes64ks2 x12, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0x2cfe2f88a9eac658 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
aes64ks2 x1, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x1, 0x289a2edfb0beb190 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
aes64ks2 x25, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x12, 0xe56b22c72a80ac56 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
aes64ks2 x26, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x23, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
aes64ks2 x13, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x17, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
aes64ks2 x24, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x25, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
aes64ks2 x11, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x17, 0x0000000000000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
aes64ks2 x26, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x5, 0x0000000000000000 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
aes64ks2 x23, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000000000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
aes64ks2 x17, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x10, 0x0000000000000000 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x22, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x19, 0x0000000000000000 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
aes64ks2 x9, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x23, 0x0000000000000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
aes64ks2 x5, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000000000000 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x13, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000000000000 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x3, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x24, 0x0000000000000000 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
aes64ks2 x15, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x12, 0x0000000000000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
aes64ks2 x28, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x24, 0x0000000000000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
aes64ks2 x27, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x16, 0x0000000000000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
aes64ks2 x22, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x8, 0x0000000000000000 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
aes64ks2 x21, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x29, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
aes64ks2 x28, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
aes64ks2 x10, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x24, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
aes64ks2 x15, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x12, 0x0000000000000001 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
aes64ks2 x1, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x8, 0x0000000000000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
aes64ks2 x5, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000000000001 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
aes64ks2 x31, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x10, 0x0000000000000001 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x22, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x20, 0x0000000000000001 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
aes64ks2 x24, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x17, 0x0000000000000001 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
aes64ks2 x26, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000000000001 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x29, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000000000001 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x28, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x12, 0x0000000000000001 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
aes64ks2 x28, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x27, 0x0000000000000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
aes64ks2 x11, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x5, 0x0000000000000001 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
aes64ks2 x8, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x9, 0x0000000000000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
aes64ks2 x22, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x12, 0x0000000000000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
aes64ks2 x26, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x28, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
aes64ks2 x19, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x25, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
aes64ks2 x28, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x30, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
aes64ks2 x12, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x18, 0x0000000000000002 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
aes64ks2 x29, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x1, 0x0000000000000002 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
aes64ks2 x6, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x1, 0x0000000000000002 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
aes64ks2 x17, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x12, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x3, 0x0000000000000002 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
aes64ks2 x9, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000000000002 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
aes64ks2 x19, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000000000002 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x18, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000000000002 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x26, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x29, 0x0000000000000002 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
aes64ks2 x8, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x17, 0x0000000000000002 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
aes64ks2 x16, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x17, 0x0000000000000002 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
aes64ks2 x14, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x30, 0x0000000000000002 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
aes64ks2 x11, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x21, 0x0000000000000002 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
aes64ks2 x13, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x22, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
aes64ks2 x1, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x12, 0x8000000000000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
aes64ks2 x1, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x10, 0x8000000000000000 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
aes64ks2 x7, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x30, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
aes64ks2 x5, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x2, 0x8000000000000000 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
aes64ks2 x13, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x20, 0x8000000000000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
aes64ks2 x17, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x7, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x12, 0x8000000000000000 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
aes64ks2 x23, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x11, 0x8000000000000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
aes64ks2 x8, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x6, 0x8000000000000000 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x11, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x8000000000000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x29, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x22, 0x8000000000000000 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
aes64ks2 x16, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x15, 0x8000000000000000 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
aes64ks2 x25, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x14, 0x8000000000000000 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
aes64ks2 x21, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x18, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
aes64ks2 x1, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x14, 0x8000000000000000 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
aes64ks2 x16, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x19, 0x8000000000000001 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
aes64ks2 x17, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x1, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
aes64ks2 x17, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x5, 0x8000000000000001 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
aes64ks2 x8, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x11, 0x8000000000000001 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
aes64ks2 x5, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x6, 0x8000000000000001 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
aes64ks2 x30, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x14, 0x8000000000000001 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
aes64ks2 x13, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x1, 0x8000000000000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x18, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x23, 0x8000000000000001 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
aes64ks2 x9, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x27, 0x8000000000000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
aes64ks2 x24, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x29, 0x8000000000000001 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x1, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x8000000000000001 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x16, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x25, 0x8000000000000001 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
aes64ks2 x1, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x17, 0x8000000000000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
aes64ks2 x13, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x1, 0x8000000000000001 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
aes64ks2 x10, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x9, 0x8000000000000001 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
aes64ks2 x24, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x18, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
aes64ks2 x26, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x25, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
aes64ks2 x19, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x5, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
aes64ks2 x16, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x15, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
aes64ks2 x31, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x15, 0x7fffffffffffffff # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
aes64ks2 x31, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x30, 0x7fffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
aes64ks2 x19, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
aes64ks2 x2, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x13, 0x7fffffffffffffff # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x7, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
aes64ks2 x2, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x1, 0x7fffffffffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
aes64ks2 x12, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x5, 0x7fffffffffffffff # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x13, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x7fffffffffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x15, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x19, 0x7fffffffffffffff # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
aes64ks2 x26, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
aes64ks2 x11, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x1, 0x7fffffffffffffff # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
aes64ks2 x21, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x16, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
aes64ks2 x7, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x14, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
aes64ks2 x18, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x25, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
aes64ks2 x10, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x12, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
aes64ks2 x13, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x14, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
aes64ks2 x29, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
aes64ks2 x6, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x8, 0x7ffffffffffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
aes64ks2 x27, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x9, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
aes64ks2 x13, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x14, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x7, 0x7ffffffffffffffe # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
aes64ks2 x5, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x21, 0x7ffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
aes64ks2 x24, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x21, 0x7ffffffffffffffe # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x6, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x7ffffffffffffffe # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x12, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x3, 0x7ffffffffffffffe # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
aes64ks2 x9, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
aes64ks2 x28, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
aes64ks2 x13, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x3, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
aes64ks2 x16, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
aes64ks2 x1, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x22, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
aes64ks2 x6, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x9, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
aes64ks2 x21, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x20, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
aes64ks2 x30, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x23, 0xffffffffffffffff # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
aes64ks2 x2, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x29, 0xffffffffffffffff # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
aes64ks2 x3, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x14, 0xffffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
aes64ks2 x24, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0xffffffffffffffff # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x29, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x28, 0xffffffffffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
aes64ks2 x2, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x13, 0xffffffffffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
aes64ks2 x30, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x8, 0xffffffffffffffff # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x24, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xffffffffffffffff # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x20, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x3, 0xffffffffffffffff # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
aes64ks2 x29, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x12, 0xffffffffffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
aes64ks2 x5, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x1, 0xffffffffffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
aes64ks2 x10, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x20, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
aes64ks2 x16, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x9, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
aes64ks2 x18, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x16, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
aes64ks2 x15, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x28, 0xfffffffffffffffe # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
aes64ks2 x5, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x13, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
aes64ks2 x29, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x31, 0xfffffffffffffffe # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
aes64ks2 x5, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x29, 0xfffffffffffffffe # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
aes64ks2 x14, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
aes64ks2 x2, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x18, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x25, 0xfffffffffffffffe # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
aes64ks2 x9, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x19, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
aes64ks2 x2, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x16, 0xfffffffffffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x14, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0xfffffffffffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x8, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x18, 0xfffffffffffffffe # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
aes64ks2 x15, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x2, 0xfffffffffffffffe # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
aes64ks2 x14, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x10, 0xfffffffffffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
aes64ks2 x11, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x29, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
aes64ks2 x21, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x9, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
aes64ks2 x2, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
aes64ks2 x30, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
aes64ks2 x30, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
aes64ks2 x6, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
aes64ks2 x14, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
aes64ks2 x30, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
aes64ks2 x16, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x31, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
aes64ks2 x21, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
aes64ks2 x13, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x27, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x14, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
aes64ks2 x19, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
aes64ks2 x6, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
aes64ks2 x26, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
aes64ks2 x2, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
aes64ks2 x24, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
aes64ks2 x30, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
aes64ks2 x17, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
aes64ks2 x21, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
aes64ks2 x31, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
aes64ks2 x23, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
aes64ks2 x2, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x7, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
aes64ks2 x5, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
aes64ks2 x9, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x6, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x14, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
aes64ks2 x22, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
aes64ks2 x26, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
aes64ks2 x14, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
aes64ks2 x29, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
aes64ks2 x10, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x27, 0x5555555555555555 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
aes64ks2 x2, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x20, 0x5555555555555555 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
aes64ks2 x26, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x6, 0x5555555555555555 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
aes64ks2 x8, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x28, 0x5555555555555555 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
aes64ks2 x10, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x24, 0x5555555555555555 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
aes64ks2 x14, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
aes64ks2 x11, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x25, 0x5555555555555555 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x8, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x30, 0x5555555555555555 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
aes64ks2 x24, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x12, 0x5555555555555555 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
aes64ks2 x29, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x27, 0x5555555555555555 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x13, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x5555555555555555 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x12, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x24, 0x5555555555555555 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
aes64ks2 x27, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x10, 0x5555555555555555 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
aes64ks2 x7, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x13, 0x5555555555555555 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
aes64ks2 x14, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x29, 0x5555555555555555 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
aes64ks2 x9, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x26, 0x5555555555555555 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
aes64ks2 x14, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x14, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
aes64ks2 x31, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x8, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
aes64ks2 x22, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x9, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
aes64ks2 x6, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x28, 0x00000000ffffffff # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
aes64ks2 x27, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x14, 0x00000000ffffffff # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
aes64ks2 x9, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x6, 0x00000000ffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
aes64ks2 x30, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x2, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x21, 0x00000000ffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
aes64ks2 x17, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
aes64ks2 x13, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x29, 0x00000000ffffffff # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x26, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x00000000ffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x8, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x8, 0x00000000ffffffff # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
aes64ks2 x23, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
aes64ks2 x27, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0x00000000ffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
aes64ks2 x1, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x28, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
aes64ks2 x24, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x21, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
aes64ks2 x9, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x11, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
aes64ks2 x29, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x25, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
aes64ks2 x2, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x5, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
aes64ks2 x2, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x11, 0x00000000fffffffe # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
aes64ks2 x24, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x7, 0x00000000fffffffe # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
aes64ks2 x13, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x12, 0x00000000fffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
aes64ks2 x8, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x18, 0x00000000fffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x6, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x31, 0x00000000fffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
aes64ks2 x10, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
aes64ks2 x11, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x29, 0x00000000fffffffe # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x26, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x00000000fffffffe # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x16, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x8, 0x00000000fffffffe # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
aes64ks2 x2, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x26, 0x00000000fffffffe # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
aes64ks2 x12, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
aes64ks2 x9, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x21, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
aes64ks2 x31, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x23, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
aes64ks2 x21, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x13, 0x0000000100000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
aes64ks2 x2, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x8, 0x0000000100000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
aes64ks2 x14, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x6, 0x0000000100000000 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
aes64ks2 x2, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x18, 0x0000000100000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
aes64ks2 x27, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x18, 0x0000000100000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
aes64ks2 x11, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x19, 0x0000000100000000 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
aes64ks2 x3, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000100000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x8, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x31, 0x0000000100000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
aes64ks2 x30, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000100000000 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
aes64ks2 x5, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000100000000 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x11, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x0000000100000000 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x19, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x7, 0x0000000100000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
aes64ks2 x20, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x19, 0x0000000100000000 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
aes64ks2 x14, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x8, 0x0000000100000000 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
aes64ks2 x28, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x12, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
aes64ks2 x14, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x20, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
aes64ks2 x14, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x11, 0x0000000100000001 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
aes64ks2 x16, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x7, 0x0000000100000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
aes64ks2 x15, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x3, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
aes64ks2 x22, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x14, 0x0000000100000001 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
aes64ks2 x7, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x14, 0x0000000100000001 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
aes64ks2 x30, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x19, 0x0000000100000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
aes64ks2 x20, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000100000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x16, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x20, 0x0000000100000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
aes64ks2 x18, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x22, 0x0000000100000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
aes64ks2 x8, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000100000001 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x16, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x0000000100000001 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x13, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x9, 0x0000000100000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
aes64ks2 x25, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x28, 0x0000000100000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
aes64ks2 x31, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x28, 0x0000000100000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
aes64ks2 x29, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x15, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
aes64ks2 x12, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x24, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
aes64ks2 x8, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xd480ff2117a2832b # initialize rs1
li x0, 0xf5887841b4aef59e # initialize rs2
aes64ks2 x2, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x213624e90167fb0e # initialize rs1
li x1, 0x5da4bdafb9d56048 # initialize rs2
aes64ks2 x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x36f5f7b3ad5acd30 # initialize rs1
li x2, 0x86de1f6643e8898a # initialize rs2
aes64ks2 x28, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x5cc6db8e22129e01 # initialize rs1
li x3, 0x2d4388e8eea802ea # initialize rs2
aes64ks2 x31, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf86800c40a8416b6 # initialize rs1
li x4, 0x86d659c330dfe8c4 # initialize rs2
aes64ks2 x23, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x22c400e2dbff950b # initialize rs1
li x5, 0x917e8e2ae3db2965 # initialize rs2
aes64ks2 x22, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf0d5703c4fd2deec # initialize rs1
li x6, 0xf886097dd1cd24e1 # initialize rs2
aes64ks2 x13, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xea674ffdd9c8255c # initialize rs1
li x7, 0x2fc5c9845de89ed2 # initialize rs2
aes64ks2 x28, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xd616599d7e1c5a86 # initialize rs1
li x8, 0x612863bb945227bb # initialize rs2
aes64ks2 x3, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa87dcdaf79936d87 # initialize rs1
li x9, 0xd51ba62fc6d5ec7b # initialize rs2
aes64ks2 x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x8fe0ceba777b8943 # initialize rs1
li x10, 0xa73495519080a65e # initialize rs2
aes64ks2 x7, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x1a23849016f5821f # initialize rs1
li x11, 0x82e76129c9c8e7d7 # initialize rs2
aes64ks2 x12, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xb70732f7af6e1db8 # initialize rs1
li x12, 0x3de3f4888a1ccb2c # initialize rs2
aes64ks2 x1, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x85e0bb8ba9ba9e86 # initialize rs1
li x13, 0xe1873f8e9462149a # initialize rs2
aes64ks2 x8, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x1d97f7be4389959c # initialize rs1
li x14, 0x995679fd955b652c # initialize rs2
aes64ks2 x22, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x8f1dfa7312feb83a # initialize rs1
li x15, 0x9280fbb724314ead # initialize rs2
aes64ks2 x1, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xbe08cd0e6e0b771f # initialize rs1
li x16, 0x0ba3cbdb5ab44bbf # initialize rs2
aes64ks2 x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x211f6ac79a6b8593 # initialize rs1
li x17, 0xdd6e621380f9ba9e # initialize rs2
aes64ks2 x30, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x9973dc0fc22a1499 # initialize rs1
li x18, 0x1d0a5c8e297f5d46 # initialize rs2
aes64ks2 x23, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x7a1ae0d20c7f6713 # initialize rs1
li x19, 0x5d9fb9b33c6fc33f # initialize rs2
aes64ks2 x21, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xa262cc286f541eed # initialize rs1
li x20, 0x5b266e4cec6c35d5 # initialize rs2
aes64ks2 x24, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x6cabf1adcd689436 # initialize rs1
li x21, 0xeb70fb12877514f3 # initialize rs2
aes64ks2 x22, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd86e2d35621d2f2d # initialize rs1
li x22, 0xa06fc473e599ca24 # initialize rs2
aes64ks2 x14, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xefd04f893eb37a4e # initialize rs1
li x23, 0xd9176767ecfc31db # initialize rs2
aes64ks2 x25, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x046f9f63da794f2c # initialize rs1
li x24, 0x327fee772eb1c60f # initialize rs2
aes64ks2 x1, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xd8c409de8ec61b9b # initialize rs1
li x25, 0xaba310361a30e37a # initialize rs2
aes64ks2 x6, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x285c2bda5cd1e01a # initialize rs1
li x26, 0x96295be6ab93d56a # initialize rs2
aes64ks2 x21, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xbfb9ea5841f207f2 # initialize rs1
li x27, 0x6e90e932de9eb3c4 # initialize rs2
aes64ks2 x10, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x595ba9ae74c28996 # initialize rs1
li x28, 0x2dc15abe53616aca # initialize rs2
aes64ks2 x23, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xc4041ce76a3857b0 # initialize rs1
li x29, 0x74577f60511dbe86 # initialize rs2
aes64ks2 x12, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xd156188c80c5f3e6 # initialize rs1
li x30, 0x6eefcfe337154cdd # initialize rs2
aes64ks2 x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x6093ff34c8f5ba2c # initialize rs1
li x31, 0x217ec5e34d5de23a # initialize rs2
aes64ks2 x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd9ca03c58b7a7fb1 # initialize rs1
li x30, 0x833e06c575177492 # initialize rs2
aes64ks2 x0, x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x44e086fde0e19e4c # initialize rs1
li x28, 0xe2640d1d51e98197 # initialize rs2
aes64ks2 x1, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x1231f68830c2a69e # initialize rs1
li x5, 0x6369318b117eddb4 # initialize rs2
aes64ks2 x2, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x7b6476b7ee780c35 # initialize rs1
li x16, 0xdb5ef4c503de6789 # initialize rs2
aes64ks2 x3, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x872f4a4c4f45486c # initialize rs1
li x3, 0x899e5b3a7a17bb78 # initialize rs2
aes64ks2 x4, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1d11f0e4196e0f39 # initialize rs1
li x8, 0xe254a842ed3a62e3 # initialize rs2
aes64ks2 x5, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7360bd370d17152e # initialize rs1
li x2, 0x7f5913aa8c8541d4 # initialize rs2
aes64ks2 x6, x6, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4739e14f97703978 # initialize rs1
li x31, 0xb3d51c2b73e567d3 # initialize rs2
aes64ks2 x7, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9327a1611db83703 # initialize rs1
li x12, 0xb28e057adca50c2a # initialize rs2
aes64ks2 x8, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x70266bb65e3861b3 # initialize rs1
li x19, 0x544a40d25bb96117 # initialize rs2
aes64ks2 x9, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xe0eeb27f7814387f # initialize rs1
li x30, 0x46fe54fb31ca3578 # initialize rs2
aes64ks2 x10, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x57f2333a25bfa60e # initialize rs1
li x31, 0x4e27e46425f1613a # initialize rs2
aes64ks2 x11, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x96873dd7874f3f89 # initialize rs1
li x8, 0x461d20bd0fd8136d # initialize rs2
aes64ks2 x12, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x45f19717f79ea563 # initialize rs1
li x14, 0xf1f3bcf533bfa571 # initialize rs2
aes64ks2 x13, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc52ba111222cda6e # initialize rs1
li x20, 0x7893904bf0978a18 # initialize rs2
aes64ks2 x14, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xce72af8db5852d5d # initialize rs1
li x9, 0x3192eb65d7314213 # initialize rs2
aes64ks2 x15, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x4719570675b8990a # initialize rs1
li x29, 0x3c69f7792fa259ce # initialize rs2
aes64ks2 x16, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x261d571105408e77 # initialize rs1
li x31, 0x61c4f6afd47a5e3a # initialize rs2
aes64ks2 x17, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xa51d832e274e45d5 # initialize rs1
li x20, 0x208cf786c5c1f7b2 # initialize rs2
aes64ks2 x18, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x53dd5a5a9a877b8f # initialize rs1
li x13, 0x2862f83289e9cf31 # initialize rs2
aes64ks2 x19, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x01bbadd03baa2151 # initialize rs1
li x29, 0x9e3e5378b10c9e5a # initialize rs2
aes64ks2 x20, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x4624c17a9aa5774a # initialize rs1
li x20, 0xa5a8374c23849d51 # initialize rs2
aes64ks2 x21, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6d5efaf52591f2ae # initialize rs1
li x8, 0x7283ab6623945d7b # initialize rs2
aes64ks2 x22, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x2f325c28b9a571e0 # initialize rs1
li x6, 0x1641bf8a997929de # initialize rs2
aes64ks2 x23, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x2f0fc30b3bb31b01 # initialize rs1
li x20, 0xf7122f370abf00ca # initialize rs2
aes64ks2 x24, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x44ae6e8d0d354f75 # initialize rs1
li x19, 0xa5b0b95f719774c5 # initialize rs2
aes64ks2 x25, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x48693289f9856ad3 # initialize rs1
li x24, 0x0dbedf061061723c # initialize rs2
aes64ks2 x26, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x5cf8a303fcae51e6 # initialize rs1
li x6, 0xc414ea3c5234c334 # initialize rs2
aes64ks2 x27, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xcae8228101c24f57 # initialize rs1
li x22, 0xa9a0527f1296b4ff # initialize rs2
aes64ks2 x28, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1b6bc925d22b47ee # initialize rs1
li x19, 0x625bf900f2186ed1 # initialize rs2
aes64ks2 x29, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x24fcc01a238fba66 # initialize rs1
li x14, 0x716c084d22397830 # initialize rs2
aes64ks2 x30, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8114e5b82d15c983 # initialize rs1
li x22, 0x527bf07085c42e1f # initialize rs2
aes64ks2 x31, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x19, 0xef8a2de375e6455e # initialize rs1
li x0, 0x37800ac1da79e56c # initialize rs2
aes64ks2 x0, x19, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x28, 0x4d14588452a455e9 # initialize rs1
li x1, 0xabfce63ce3ce8811 # initialize rs2
aes64ks2 x1, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x25, 0x8bf3c3d268116029 # initialize rs1
li x2, 0x39441b737a32a06d # initialize rs2
aes64ks2 x2, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x22, 0x434a42ec8fa68d31 # initialize rs1
li x3, 0xc281cf4dad5fe20c # initialize rs2
aes64ks2 x3, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0x83132c34836ac2d9 # initialize rs1
li x4, 0x629925e12c288838 # initialize rs2
aes64ks2 x4, x9, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0x8766ca1dd32bd626 # initialize rs1
li x5, 0xcd58e236e094bd58 # initialize rs2
aes64ks2 x5, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x1c771b740cd3f1ee # initialize rs1
li x6, 0x2276423c3c50e64b # initialize rs2
aes64ks2 x6, x27, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0x85871077478829fa # initialize rs1
li x7, 0x987a139b42bfa296 # initialize rs2
aes64ks2 x7, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x14, 0xfaa36cdc26c3b3cb # initialize rs1
li x8, 0x9a4400d5a8e4fda8 # initialize rs2
aes64ks2 x8, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x9478c2f5ab3e5504 # initialize rs1
li x9, 0xe5b059eac8aec6b1 # initialize rs2
aes64ks2 x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x29, 0x7f13173168c81411 # initialize rs1
li x10, 0xefa464a52f4fdc3d # initialize rs2
aes64ks2 x10, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x6, 0x7dee3bcd340642d3 # initialize rs1
li x11, 0x83c55009da00aa36 # initialize rs2
aes64ks2 x11, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x24, 0x95a3164c0de50271 # initialize rs1
li x12, 0x6008135863b97487 # initialize rs2
aes64ks2 x12, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x14, 0xa84ff6d78d96482e # initialize rs1
li x13, 0x45221623c03eda4c # initialize rs2
aes64ks2 x13, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x17, 0x9bd6635574673ebb # initialize rs1
li x14, 0x137a7d7ecf1cab99 # initialize rs2
aes64ks2 x14, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x24, 0xbdd940f3b1dc8bb7 # initialize rs1
li x15, 0x972be189f0f26927 # initialize rs2
aes64ks2 x15, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x1, 0x3a2ef7bf463f8610 # initialize rs1
li x16, 0x2493363ff08777c2 # initialize rs2
aes64ks2 x16, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x2, 0x5234d95652892308 # initialize rs1
li x17, 0xd344b2eb23f392f3 # initialize rs2
aes64ks2 x17, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x22, 0xd9cb7ed4de3a853a # initialize rs1
li x18, 0xfcf6855bd84f1260 # initialize rs2
aes64ks2 x18, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x28, 0xf64f63dfb6720742 # initialize rs1
li x19, 0x8a9866fb0d7dbebd # initialize rs2
aes64ks2 x19, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x22, 0x19c6e881729842d2 # initialize rs1
li x20, 0x1914b633227ff8e1 # initialize rs2
aes64ks2 x20, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x1, 0x404caf5a33c6457c # initialize rs1
li x21, 0xdeb1574bc791b4b9 # initialize rs2
aes64ks2 x21, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x19, 0x9f19eb5c835f0cbf # initialize rs1
li x22, 0x9a09863274b41eba # initialize rs2
aes64ks2 x22, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x10, 0xf1bf338edae2f239 # initialize rs1
li x23, 0x33dbd308dcf88e5d # initialize rs2
aes64ks2 x23, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x13, 0x2461597c8a523de9 # initialize rs1
li x24, 0x3d9eb6e181102ef3 # initialize rs2
aes64ks2 x24, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x784516042ad5a886 # initialize rs1
li x25, 0xa33fd382b4d1628f # initialize rs2
aes64ks2 x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x27, 0x3c3a5626941c9e95 # initialize rs1
li x26, 0x25c82d97dab49b36 # initialize rs2
aes64ks2 x26, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x20, 0x555348ecea17c96e # initialize rs1
li x27, 0x47505d58057ef100 # initialize rs2
aes64ks2 x27, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x27, 0x565534ee89e4fa78 # initialize rs1
li x28, 0x1a4ceeff0ccc3b02 # initialize rs2
aes64ks2 x28, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x12, 0xdc23e4a086af6188 # initialize rs1
li x29, 0xc394f7936c8b9a5d # initialize rs2
aes64ks2 x29, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x14, 0xdf61ac929959ecd6 # initialize rs1
li x30, 0xaad9ef60f1963ef0 # initialize rs2
aes64ks2 x30, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x1, 0x50e7ba437869f8d8 # initialize rs1
li x31, 0x9cf96a6a0b4b514a # initialize rs2
aes64ks2 x31, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x6b8a73812d1e818a # initialize rs1
li x0, 0x08215120039eb35d # initialize rs2
aes64ks2 x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x5352415b5603004e # initialize rs1
li x1, 0xfa99d6f9324f6961 # initialize rs2
aes64ks2 x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x99d3477a7044af26 # initialize rs1
li x2, 0x247dcfdbe7539147 # initialize rs2
aes64ks2 x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xedc95f2fd80ae6fc # initialize rs1
li x3, 0xf405c99e452d6cb5 # initialize rs2
aes64ks2 x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x39df80a2e9be5224 # initialize rs1
li x4, 0x7d7a4b3d749ed7e5 # initialize rs2
aes64ks2 x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb0ed9240cc65bb96 # initialize rs1
li x5, 0x83d0c91d8d20d0a3 # initialize rs2
aes64ks2 x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc60911c2024a4fd5 # initialize rs1
li x6, 0x88802569da7644ef # initialize rs2
aes64ks2 x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x99ec56041020a54e # initialize rs1
li x7, 0x90e1242615ba0597 # initialize rs2
aes64ks2 x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xbf5dc04f522838f7 # initialize rs1
li x8, 0x26f906b66fd09fa5 # initialize rs2
aes64ks2 x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x6dbb45ad21693312 # initialize rs1
li x9, 0x836df10b138ae27d # initialize rs2
aes64ks2 x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x7c00c157a99605d4 # initialize rs1
li x10, 0xf1637754095fd612 # initialize rs2
aes64ks2 x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x089bdaa1aa30c12a # initialize rs1
li x11, 0xfd498f42748b3cd6 # initialize rs2
aes64ks2 x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xd2e0991ac7272ea2 # initialize rs1
li x12, 0x1688b41b328b0a66 # initialize rs2
aes64ks2 x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xd3c07cfd2ef6742c # initialize rs1
li x13, 0xbf73740d52cefdfd # initialize rs2
aes64ks2 x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x602b611a965c0b29 # initialize rs1
li x14, 0x9f6cec57b6b5e00f # initialize rs2
aes64ks2 x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xb0e8f55377e6aeb9 # initialize rs1
li x15, 0x5cd51b6ed8da0480 # initialize rs2
aes64ks2 x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x6ceefc88147ecdd0 # initialize rs1
li x16, 0x7ec965100dd0b811 # initialize rs2
aes64ks2 x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xaeb5d37a0a9facd1 # initialize rs1
li x17, 0xc031f636fb6409d2 # initialize rs2
aes64ks2 x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x22b6fecd8003694d # initialize rs1
li x18, 0x732752053893eb93 # initialize rs2
aes64ks2 x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xf9bf12cbcf73ecf1 # initialize rs1
li x19, 0x78a327c7ff0960fb # initialize rs2
aes64ks2 x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x41fd02213970ab1c # initialize rs1
li x20, 0x385a31f8f76cd040 # initialize rs2
aes64ks2 x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc3ac0f139d1b39fc # initialize rs1
li x21, 0xc9a17dd422f0a2ba # initialize rs2
aes64ks2 x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x1014597211ab5593 # initialize rs1
li x22, 0x9dba51db2e62e693 # initialize rs2
aes64ks2 x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xe1ecbdfc28e06aa4 # initialize rs1
li x23, 0x93b8cb327ed1952f # initialize rs2
aes64ks2 x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xa5263a68d453b9e1 # initialize rs1
li x24, 0x188db4c264d38a34 # initialize rs2
aes64ks2 x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xfcc9fd6723be9b37 # initialize rs1
li x25, 0x79f3ee175a3707d2 # initialize rs2
aes64ks2 x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xc8b9bbaa7abf724c # initialize rs1
li x26, 0xa8ba5c8dec820f91 # initialize rs2
aes64ks2 x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x863ad8809f0f8be5 # initialize rs1
li x27, 0x57b2dbee7abe5834 # initialize rs2
aes64ks2 x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xb0a461de3835e9ca # initialize rs1
li x28, 0x5c024ff40d766500 # initialize rs2
aes64ks2 x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x5e77579f173759f5 # initialize rs1
li x29, 0x81076cba90deb5da # initialize rs2
aes64ks2 x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xd29ca5efd9aa3650 # initialize rs1
li x30, 0xc070bebc872fd7c7 # initialize rs2
aes64ks2 x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x6c071f0cb3f44d56 # initialize rs1
li x31, 0x0e96b16c8a7b4fe9 # initialize rs2
aes64ks2 x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x9, x2 # perform first operation
aes64ks2 x18, x27, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x25, x9 # perform first operation
aes64ks2 x8, x31, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x8, x5 # perform first operation
aes64ks2 x29, x28, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x22, x1 # perform first operation
aes64ks2 x14, x6, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x13, x25 # perform first operation
aes64ks2 x13, x10, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x24, x20 # perform first operation
aes64ks2 x24, x1, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x13, x18 # perform first operation
aes64ks2 x7, x1, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x16, x1 # perform first operation
aes64ks2 x5, x6, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x8, x15 # perform first operation
aes64ks2 x3, x18, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x11, x31 # perform first operation
aes64ks2 x11, x22, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x26, x25 # perform first operation
aes64ks2 x25, x22, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x11, x22 # perform first operation
aes64ks2 x5, x24, x13 # perform second (triggering) operation

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
