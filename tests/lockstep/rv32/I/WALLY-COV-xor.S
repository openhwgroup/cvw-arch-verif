///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-xor.S
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
li x0, 0x00212f2c # initialize rs1
li x7, 0xb8ef67c8 # initialize rs2
xor x26, x0, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x9be1ee99 # initialize rs1
li x25, 0x3a2d75c0 # initialize rs2
xor x14, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xee1edfc7 # initialize rs1
li x8, 0xe234188a # initialize rs2
xor x7, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x0948139b # initialize rs1
li x24, 0x639c24f5 # initialize rs2
xor x13, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x84b2c827 # initialize rs1
li x24, 0x59e99b58 # initialize rs2
xor x8, x4, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa94e3e71 # initialize rs1
li x25, 0x6ad456ce # initialize rs2
xor x7, x5, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb19dcf47 # initialize rs1
li x9, 0xe4f285af # initialize rs2
xor x21, x6, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x77267ce0 # initialize rs1
li x31, 0x415c2c94 # initialize rs2
xor x20, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x5c77349b # initialize rs1
li x14, 0xfa3f6b69 # initialize rs2
xor x16, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x9d91b347 # initialize rs1
li x13, 0x89437254 # initialize rs2
xor x6, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xdf732fc1 # initialize rs1
li x24, 0x1b9490a6 # initialize rs2
xor x29, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x0a04d111 # initialize rs1
li x18, 0x1728b992 # initialize rs2
xor x31, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x650c00c6 # initialize rs1
li x1, 0x647fde58 # initialize rs2
xor x2, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xcee13d8e # initialize rs1
li x11, 0x0dac6a13 # initialize rs2
xor x7, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x90500f39 # initialize rs1
li x23, 0xe8bbd888 # initialize rs2
xor x12, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x97e07d23 # initialize rs1
li x3, 0x3d24fbcb # initialize rs2
xor x22, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xc7eef6f1 # initialize rs1
li x6, 0x62144caa # initialize rs2
xor x24, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xde685277 # initialize rs1
li x8, 0xe09ea2f0 # initialize rs2
xor x27, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xd6553f44 # initialize rs1
li x31, 0xf96eba45 # initialize rs2
xor x22, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xabbd6ded # initialize rs1
li x8, 0xdf0f39c4 # initialize rs2
xor x17, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xe4b811ea # initialize rs1
li x18, 0x6a80d9b6 # initialize rs2
xor x13, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x445d1760 # initialize rs1
li x10, 0xe391aee0 # initialize rs2
xor x2, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xfc695b43 # initialize rs1
li x26, 0x87baddef # initialize rs2
xor x16, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xadf8c9b6 # initialize rs1
li x3, 0x95a6e022 # initialize rs2
xor x29, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xbba001d1 # initialize rs1
li x31, 0x8ff92957 # initialize rs2
xor x20, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x977540c6 # initialize rs1
li x10, 0xe9d5a06d # initialize rs2
xor x8, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x193d4d9d # initialize rs1
li x6, 0xb5fbe4ad # initialize rs2
xor x14, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x29de51e4 # initialize rs1
li x21, 0xe6c0f4e5 # initialize rs2
xor x7, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x5f7d445c # initialize rs1
li x12, 0xa0a35cb7 # initialize rs2
xor x20, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x8c6b2eed # initialize rs1
li x28, 0x3670f4fa # initialize rs2
xor x1, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x0816f678 # initialize rs1
li x1, 0x5ad53800 # initialize rs2
xor x29, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x1ac071fb # initialize rs1
li x20, 0x02f139b8 # initialize rs2
xor x27, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x2, 0x71ec18fd # initialize rs1
li x0, 0x597585a5 # initialize rs2
xor x7, x2, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x24, 0x0f0f22a0 # initialize rs1
li x1, 0x08a962ee # initialize rs2
xor x14, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x12, 0x81662dbd # initialize rs1
li x2, 0xbbf72143 # initialize rs2
xor x14, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x1, 0xbfb06efd # initialize rs1
li x3, 0x3dc1021f # initialize rs2
xor x11, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0xadf746e0 # initialize rs1
li x4, 0x0a52210d # initialize rs2
xor x26, x23, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0x10a2a248 # initialize rs1
li x5, 0xf676db88 # initialize rs2
xor x27, x24, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x4e76578c # initialize rs1
li x6, 0x5ebf567b # initialize rs2
xor x23, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0x1b2867fd # initialize rs1
li x7, 0x9d38c97f # initialize rs2
xor x6, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x19, 0x5502829c # initialize rs1
li x8, 0x10adfe93 # initialize rs2
xor x7, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x13, 0x60d230b2 # initialize rs1
li x9, 0x488a9e1e # initialize rs2
xor x3, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x8, 0x1e57a53c # initialize rs1
li x10, 0xb74b1450 # initialize rs2
xor x7, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x19, 0x7257fdba # initialize rs1
li x11, 0xb0cdeaf7 # initialize rs2
xor x10, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x22, 0x5c287b60 # initialize rs1
li x12, 0x1ed9b254 # initialize rs2
xor x27, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x30, 0xf2d6acda # initialize rs1
li x13, 0x863c2930 # initialize rs2
xor x27, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x21, 0x94dabeed # initialize rs1
li x14, 0x04ade074 # initialize rs2
xor x13, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x14, 0xbac4fa44 # initialize rs1
li x15, 0x4cc33f92 # initialize rs2
xor x1, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x15, 0x3c70cc2d # initialize rs1
li x16, 0x4dfecb37 # initialize rs2
xor x20, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x27, 0xe63315d4 # initialize rs1
li x17, 0x90745a74 # initialize rs2
xor x14, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x12, 0x025ecabd # initialize rs1
li x18, 0x5baae53d # initialize rs2
xor x20, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x20, 0xc7ad6180 # initialize rs1
li x19, 0x33af6e5d # initialize rs2
xor x12, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x27, 0x37537d67 # initialize rs1
li x20, 0x4060aadb # initialize rs2
xor x3, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x6, 0x9ed29504 # initialize rs1
li x21, 0x91b2e73b # initialize rs2
xor x28, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x14, 0xcefc1443 # initialize rs1
li x22, 0xcff61870 # initialize rs2
xor x10, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0xf53e5e31 # initialize rs1
li x23, 0xac3c7165 # initialize rs2
xor x1, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x26, 0xd6f41631 # initialize rs1
li x24, 0xa6a70098 # initialize rs2
xor x5, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x8, 0xbbd64923 # initialize rs1
li x25, 0x0afd3808 # initialize rs2
xor x2, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x23, 0xa3f8805b # initialize rs1
li x26, 0x86166cbb # initialize rs2
xor x3, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x12, 0x11467d8f # initialize rs1
li x27, 0x4373a936 # initialize rs2
xor x23, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x19, 0xc0532eba # initialize rs1
li x28, 0xf98ff58e # initialize rs2
xor x11, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x27, 0x25344f28 # initialize rs1
li x29, 0xfee4cdae # initialize rs2
xor x1, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x18, 0xc06598d3 # initialize rs1
li x30, 0x182fadae # initialize rs2
xor x19, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x20, 0xb8065a96 # initialize rs1
li x31, 0x5efcb2f5 # initialize rs2
xor x3, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 252)

# Testcase cp_rd (Test destination rd = x0)
li x15, 0x12b96005 # initialize rs1
li x16, 0x23c42e05 # initialize rs2
xor x0, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x28, 0x4f40d375 # initialize rs1
li x21, 0x00b2f57b # initialize rs2
xor x1, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x26, 0x922cf533 # initialize rs1
li x29, 0x4eefdd45 # initialize rs2
xor x2, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x6, 0x13474239 # initialize rs1
li x14, 0x2ce389dd # initialize rs2
xor x3, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0x1cee18da # initialize rs1
li x3, 0xeebaea85 # initialize rs2
xor x4, x9, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x6bfa7256 # initialize rs1
li x15, 0x95887150 # initialize rs2
xor x5, x3, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0x1b48c60f # initialize rs1
li x29, 0x4908bc43 # initialize rs2
xor x6, x15, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x27f2f82d # initialize rs1
li x27, 0x95169790 # initialize rs2
xor x7, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x21, 0xd9e692f0 # initialize rs1
li x24, 0x7c107b54 # initialize rs2
xor x8, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x18, 0xa7539fb6 # initialize rs1
li x1, 0x9884d8bb # initialize rs2
xor x9, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x23, 0x126409cf # initialize rs1
li x21, 0x904f3eb9 # initialize rs2
xor x10, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x20, 0xf2eaab3d # initialize rs1
li x13, 0xf22492d0 # initialize rs2
xor x11, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x7, 0x74db3507 # initialize rs1
li x9, 0x6f001bca # initialize rs2
xor x12, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0x3d45fe22 # initialize rs1
li x10, 0xdaa3b522 # initialize rs2
xor x13, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x18, 0xed6d1be4 # initialize rs1
li x9, 0xea61187f # initialize rs2
xor x14, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x22, 0xcd9ff52a # initialize rs1
li x12, 0x8a466754 # initialize rs2
xor x15, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x13, 0x7e4cc94d # initialize rs1
li x17, 0xccf6a05b # initialize rs2
xor x16, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0xf11699ab # initialize rs1
li x23, 0x35283107 # initialize rs2
xor x17, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x3, 0x05fa2b77 # initialize rs1
li x6, 0xe7f16499 # initialize rs2
xor x18, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x2, 0x4b288c49 # initialize rs1
li x26, 0xda863fbe # initialize rs2
xor x19, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x1, 0xbc87a194 # initialize rs1
li x31, 0xbd566827 # initialize rs2
xor x20, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x23, 0x3c759a83 # initialize rs1
li x22, 0x91fa843b # initialize rs2
xor x21, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x27, 0x5ee8b2ed # initialize rs1
li x14, 0x7815337e # initialize rs2
xor x22, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xdb36d7c6 # initialize rs1
li x17, 0xe8e9cd50 # initialize rs2
xor x23, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x23, 0x558aaf1d # initialize rs1
li x6, 0x4f339734 # initialize rs2
xor x24, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x9, 0x3ad29221 # initialize rs1
li x6, 0xd899a76a # initialize rs2
xor x25, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x2, 0x0bce7fd6 # initialize rs1
li x20, 0xb459bb60 # initialize rs2
xor x26, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0xfec2c347 # initialize rs1
li x14, 0x68361ccc # initialize rs2
xor x27, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x20, 0xe4ada642 # initialize rs1
li x13, 0x6924f988 # initialize rs2
xor x28, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0x286cd7d0 # initialize rs1
li x5, 0x1e086231 # initialize rs2
xor x29, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x26, 0x3861726b # initialize rs1
li x31, 0x4046be41 # initialize rs2
xor x30, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x25, 0xba2c120d # initialize rs1
li x14, 0x17101c03 # initialize rs2
xor x31, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x5, 0x00000000 # initialize rs1
li x26, 0x1f8d932a # initialize rs2
xor x28, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x00000001 # initialize rs1
li x31, 0xcc7d838f # initialize rs2
xor x6, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x00000002 # initialize rs1
li x24, 0xd5d31827 # initialize rs2
xor x28, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x12, 0x80000000 # initialize rs1
li x2, 0xf61d95ce # initialize rs2
xor x13, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x25, 0x80000001 # initialize rs1
li x29, 0x4b2f1d24 # initialize rs2
xor x22, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x9, 0x7fffffff # initialize rs1
li x11, 0x1fc06a34 # initialize rs2
xor x15, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x19, 0x7ffffffe # initialize rs1
li x6, 0x8cfba972 # initialize rs2
xor x22, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0xffffffff # initialize rs1
li x22, 0x87be0732 # initialize rs2
xor x19, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x27, 0xfffffffe # initialize rs1
li x16, 0x18cc094d # initialize rs2
xor x28, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x17, 0x5bbc8872 # initialize rs1
li x8, 0xe6e95fb1 # initialize rs2
xor x31, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x29, 0xaaaaaaaa # initialize rs1
li x16, 0xecfb45c2 # initialize rs2
xor x27, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x55555555 # initialize rs1
li x20, 0x176cc56d # initialize rs2
xor x11, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0xb694bc2b # initialize rs1
li x24, 0x00000000 # initialize rs2
xor x7, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x17, 0xa951a390 # initialize rs1
li x27, 0x00000001 # initialize rs2
xor x23, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x22, 0x0f8f3736 # initialize rs1
li x2, 0x00000002 # initialize rs2
xor x23, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x18, 0x17b59073 # initialize rs1
li x11, 0x80000000 # initialize rs2
xor x30, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x22, 0x88cdd3e4 # initialize rs1
li x8, 0x80000001 # initialize rs2
xor x16, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x13, 0xeb19bab0 # initialize rs1
li x29, 0x7fffffff # initialize rs2
xor x24, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x20, 0x1376872f # initialize rs1
li x25, 0x7ffffffe # initialize rs2
xor x24, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x22, 0x96c1da71 # initialize rs1
li x21, 0xffffffff # initialize rs2
xor x26, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x9, 0xdda315d3 # initialize rs1
li x24, 0xfffffffe # initialize rs2
xor x16, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x16, 0xe6a94d6d # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
xor x23, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x2, 0xb6cca2e3 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
xor x31, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x23, 0xd209fe07 # initialize rs1
li x29, 0x55555555 # initialize rs2
xor x24, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x11, 0x00000000 # initialize rs1
li x16, 0x00000000 # initialize rs2
xor x26, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x23, 0x00000000 # initialize rs1
li x15, 0x00000001 # initialize rs2
xor x19, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x31, 0x00000000 # initialize rs1
li x5, 0x00000002 # initialize rs2
xor x12, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x27, 0x00000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
xor x26, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x25, 0x00000000 # initialize rs1
li x29, 0x80000001 # initialize rs2
xor x10, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x20, 0x00000000 # initialize rs1
li x29, 0x7fffffff # initialize rs2
xor x10, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x1, 0x00000000 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
xor x16, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x17, 0x00000000 # initialize rs1
li x31, 0xffffffff # initialize rs2
xor x29, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x28, 0x00000000 # initialize rs1
li x6, 0xfffffffe # initialize rs2
xor x24, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x12, 0x00000000 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
xor x6, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x19, 0x00000000 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
xor x28, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x7, 0x00000000 # initialize rs1
li x3, 0x55555555 # initialize rs2
xor x13, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x12, 0x00000001 # initialize rs1
li x27, 0x00000000 # initialize rs2
xor x30, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x2, 0x00000001 # initialize rs1
li x1, 0x00000001 # initialize rs2
xor x12, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x18, 0x00000001 # initialize rs1
li x2, 0x00000002 # initialize rs2
xor x6, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x6, 0x00000001 # initialize rs1
li x12, 0x80000000 # initialize rs2
xor x10, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x24, 0x00000001 # initialize rs1
li x30, 0x80000001 # initialize rs2
xor x5, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x23, 0x00000001 # initialize rs1
li x8, 0x7fffffff # initialize rs2
xor x5, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x23, 0x00000001 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
xor x21, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x17, 0x00000001 # initialize rs1
li x29, 0xffffffff # initialize rs2
xor x23, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x12, 0x00000001 # initialize rs1
li x18, 0xfffffffe # initialize rs2
xor x17, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x27, 0x00000001 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
xor x1, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x20, 0x00000001 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
xor x21, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x14, 0x00000001 # initialize rs1
li x11, 0x55555555 # initialize rs2
xor x6, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x16, 0x00000002 # initialize rs1
li x27, 0x00000000 # initialize rs2
xor x31, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x28, 0x00000002 # initialize rs1
li x29, 0x00000001 # initialize rs2
xor x11, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x26, 0x00000002 # initialize rs1
li x6, 0x00000002 # initialize rs2
xor x8, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x21, 0x00000002 # initialize rs1
li x30, 0x80000000 # initialize rs2
xor x27, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x22, 0x00000002 # initialize rs1
li x9, 0x80000001 # initialize rs2
xor x29, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x5, 0x00000002 # initialize rs1
li x22, 0x7fffffff # initialize rs2
xor x14, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x5, 0x00000002 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
xor x18, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x9, 0x00000002 # initialize rs1
li x25, 0xffffffff # initialize rs2
xor x20, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x25, 0x00000002 # initialize rs1
li x9, 0xfffffffe # initialize rs2
xor x7, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x20, 0x00000002 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
xor x26, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x15, 0x00000002 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
xor x21, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x19, 0x00000002 # initialize rs1
li x8, 0x55555555 # initialize rs2
xor x25, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x6, 0x80000000 # initialize rs1
li x21, 0x00000000 # initialize rs2
xor x15, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x17, 0x80000000 # initialize rs1
li x28, 0x00000001 # initialize rs2
xor x7, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x29, 0x80000000 # initialize rs1
li x9, 0x00000002 # initialize rs2
xor x31, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x6, 0x80000000 # initialize rs1
li x30, 0x80000000 # initialize rs2
xor x25, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x18, 0x80000000 # initialize rs1
li x29, 0x80000001 # initialize rs2
xor x19, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x5, 0x80000000 # initialize rs1
li x16, 0x7fffffff # initialize rs2
xor x28, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x27, 0x80000000 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
xor x18, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x15, 0x80000000 # initialize rs1
li x8, 0xffffffff # initialize rs2
xor x21, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x18, 0x80000000 # initialize rs1
li x2, 0xfffffffe # initialize rs2
xor x28, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x9, 0x80000000 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
xor x14, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x25, 0x80000000 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
xor x30, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x22, 0x80000000 # initialize rs1
li x29, 0x55555555 # initialize rs2
xor x18, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x22, 0x80000001 # initialize rs1
li x17, 0x00000000 # initialize rs2
xor x27, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x21, 0x80000001 # initialize rs1
li x19, 0x00000001 # initialize rs2
xor x23, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x16, 0x80000001 # initialize rs1
li x15, 0x00000002 # initialize rs2
xor x5, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x26, 0x80000001 # initialize rs1
li x2, 0x80000000 # initialize rs2
xor x11, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x21, 0x80000001 # initialize rs1
li x26, 0x80000001 # initialize rs2
xor x19, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x15, 0x80000001 # initialize rs1
li x11, 0x7fffffff # initialize rs2
xor x9, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x26, 0x80000001 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
xor x24, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x16, 0x80000001 # initialize rs1
li x6, 0xffffffff # initialize rs2
xor x27, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x17, 0x80000001 # initialize rs1
li x22, 0xfffffffe # initialize rs2
xor x15, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x17, 0x80000001 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
xor x31, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x28, 0x80000001 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
xor x29, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x14, 0x80000001 # initialize rs1
li x5, 0x55555555 # initialize rs2
xor x9, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x24, 0x7fffffff # initialize rs1
li x19, 0x00000000 # initialize rs2
xor x5, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x24, 0x7fffffff # initialize rs1
li x9, 0x00000001 # initialize rs2
xor x23, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x25, 0x7fffffff # initialize rs1
li x27, 0x00000002 # initialize rs2
xor x10, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x22, 0x7fffffff # initialize rs1
li x10, 0x80000000 # initialize rs2
xor x5, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x8, 0x7fffffff # initialize rs1
li x13, 0x80000001 # initialize rs2
xor x31, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x18, 0x7fffffff # initialize rs1
li x24, 0x7fffffff # initialize rs2
xor x16, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x19, 0x7fffffff # initialize rs1
li x7, 0x7ffffffe # initialize rs2
xor x3, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x10, 0x7fffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
xor x12, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x22, 0x7fffffff # initialize rs1
li x25, 0xfffffffe # initialize rs2
xor x18, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x2, 0x7fffffff # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
xor x23, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x11, 0x7fffffff # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
xor x20, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x7, 0x7fffffff # initialize rs1
li x2, 0x55555555 # initialize rs2
xor x9, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x13, 0x7ffffffe # initialize rs1
li x24, 0x00000000 # initialize rs2
xor x21, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x1, 0x7ffffffe # initialize rs1
li x6, 0x00000001 # initialize rs2
xor x9, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x2, 0x7ffffffe # initialize rs1
li x12, 0x00000002 # initialize rs2
xor x18, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x6, 0x7ffffffe # initialize rs1
li x15, 0x80000000 # initialize rs2
xor x7, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x8, 0x7ffffffe # initialize rs1
li x16, 0x80000001 # initialize rs2
xor x9, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x1, 0x7ffffffe # initialize rs1
li x11, 0x7fffffff # initialize rs2
xor x8, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x19, 0x7ffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
xor x5, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x17, 0x7ffffffe # initialize rs1
li x15, 0xffffffff # initialize rs2
xor x20, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x6, 0x7ffffffe # initialize rs1
li x21, 0xfffffffe # initialize rs2
xor x23, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x21, 0x7ffffffe # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
xor x27, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x13, 0x7ffffffe # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
xor x24, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x5, 0x7ffffffe # initialize rs1
li x13, 0x55555555 # initialize rs2
xor x16, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x28, 0xffffffff # initialize rs1
li x20, 0x00000000 # initialize rs2
xor x1, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x25, 0xffffffff # initialize rs1
li x14, 0x00000001 # initialize rs2
xor x6, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x15, 0xffffffff # initialize rs1
li x26, 0x00000002 # initialize rs2
xor x1, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x27, 0xffffffff # initialize rs1
li x14, 0x80000000 # initialize rs2
xor x8, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x20, 0xffffffff # initialize rs1
li x5, 0x80000001 # initialize rs2
xor x30, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x29, 0xffffffff # initialize rs1
li x20, 0x7fffffff # initialize rs2
xor x28, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x2, 0xffffffff # initialize rs1
li x9, 0x7ffffffe # initialize rs2
xor x13, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x9, 0xffffffff # initialize rs1
li x28, 0xffffffff # initialize rs2
xor x11, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x1, 0xffffffff # initialize rs1
li x27, 0xfffffffe # initialize rs2
xor x2, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x9, 0xffffffff # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
xor x29, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x10, 0xffffffff # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
xor x23, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x22, 0xffffffff # initialize rs1
li x27, 0x55555555 # initialize rs2
xor x31, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x5, 0xfffffffe # initialize rs1
li x31, 0x00000000 # initialize rs2
xor x17, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x11, 0xfffffffe # initialize rs1
li x21, 0x00000001 # initialize rs2
xor x25, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x13, 0xfffffffe # initialize rs1
li x30, 0x00000002 # initialize rs2
xor x12, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x26, 0xfffffffe # initialize rs1
li x25, 0x80000000 # initialize rs2
xor x21, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x25, 0xfffffffe # initialize rs1
li x23, 0x80000001 # initialize rs2
xor x21, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x10, 0xfffffffe # initialize rs1
li x26, 0x7fffffff # initialize rs2
xor x3, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x31, 0xfffffffe # initialize rs1
li x10, 0x7ffffffe # initialize rs2
xor x25, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x18, 0xfffffffe # initialize rs1
li x12, 0xffffffff # initialize rs2
xor x1, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x11, 0xfffffffe # initialize rs1
li x20, 0xfffffffe # initialize rs2
xor x14, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x22, 0xfffffffe # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
xor x23, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x7, 0xfffffffe # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
xor x24, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x31, 0xfffffffe # initialize rs1
li x18, 0x55555555 # initialize rs2
xor x29, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x20, 0x5bbc8872 # initialize rs1
li x14, 0x00000000 # initialize rs2
xor x26, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x7, 0x5bbc8872 # initialize rs1
li x31, 0x00000001 # initialize rs2
xor x24, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x16, 0x5bbc8872 # initialize rs1
li x25, 0x00000002 # initialize rs2
xor x29, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x29, 0x5bbc8872 # initialize rs1
li x1, 0x80000000 # initialize rs2
xor x8, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x21, 0x5bbc8872 # initialize rs1
li x10, 0x80000001 # initialize rs2
xor x5, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x20, 0x5bbc8872 # initialize rs1
li x26, 0x7fffffff # initialize rs2
xor x2, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x10, 0x5bbc8872 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
xor x8, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x24, 0x5bbc8872 # initialize rs1
li x5, 0xffffffff # initialize rs2
xor x3, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x11, 0x5bbc8872 # initialize rs1
li x12, 0xfffffffe # initialize rs2
xor x19, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x8, 0x5bbc8872 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
xor x23, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x28, 0x5bbc8872 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
xor x13, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x9, 0x5bbc8872 # initialize rs1
li x3, 0x55555555 # initialize rs2
xor x13, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x16, 0xaaaaaaaa # initialize rs1
li x31, 0x00000000 # initialize rs2
xor x19, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x22, 0xaaaaaaaa # initialize rs1
li x20, 0x00000001 # initialize rs2
xor x27, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x14, 0xaaaaaaaa # initialize rs1
li x3, 0x00000002 # initialize rs2
xor x7, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x17, 0xaaaaaaaa # initialize rs1
li x20, 0x80000000 # initialize rs2
xor x25, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x12, 0xaaaaaaaa # initialize rs1
li x14, 0x80000001 # initialize rs2
xor x2, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x22, 0xaaaaaaaa # initialize rs1
li x6, 0x7fffffff # initialize rs2
xor x9, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x10, 0xaaaaaaaa # initialize rs1
li x23, 0x7ffffffe # initialize rs2
xor x30, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x25, 0xaaaaaaaa # initialize rs1
li x31, 0xffffffff # initialize rs2
xor x12, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x9, 0xaaaaaaaa # initialize rs1
li x16, 0xfffffffe # initialize rs2
xor x21, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x16, 0xaaaaaaaa # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
xor x30, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x1, 0xaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
xor x8, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x11, 0xaaaaaaaa # initialize rs1
li x30, 0x55555555 # initialize rs2
xor x16, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x10, 0x55555555 # initialize rs1
li x11, 0x00000000 # initialize rs2
xor x22, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x18, 0x55555555 # initialize rs1
li x28, 0x00000001 # initialize rs2
xor x7, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x15, 0x55555555 # initialize rs1
li x22, 0x00000002 # initialize rs2
xor x14, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x2, 0x55555555 # initialize rs1
li x18, 0x80000000 # initialize rs2
xor x8, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x22, 0x55555555 # initialize rs1
li x21, 0x80000001 # initialize rs2
xor x13, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x7, 0x55555555 # initialize rs1
li x8, 0x7fffffff # initialize rs2
xor x22, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x8, 0x55555555 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
xor x5, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x29, 0x55555555 # initialize rs1
li x8, 0xffffffff # initialize rs2
xor x28, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x19, 0x55555555 # initialize rs1
li x8, 0xfffffffe # initialize rs2
xor x11, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x17, 0x55555555 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
xor x21, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x28, 0x55555555 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
xor x31, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x11, 0x55555555 # initialize rs1
li x7, 0x55555555 # initialize rs2
xor x31, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x3515dd64 # initialize rs1
li x0, 0x884a4a9e # initialize rs2
xor x22, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xcd7798b6 # initialize rs1
li x1, 0x64db6b88 # initialize rs2
xor x8, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe747f221 # initialize rs1
li x2, 0x580a4d1f # initialize rs2
xor x15, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xefb6d5d8 # initialize rs1
li x3, 0xca0d6117 # initialize rs2
xor x17, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x291b6858 # initialize rs1
li x4, 0x383e9f95 # initialize rs2
xor x26, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8d527ba9 # initialize rs1
li x5, 0x1afa9665 # initialize rs2
xor x11, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6fe7e1ef # initialize rs1
li x6, 0x360a26d5 # initialize rs2
xor x21, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0a3ff6f8 # initialize rs1
li x7, 0x1ac00f15 # initialize rs2
xor x12, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x32f02994 # initialize rs1
li x8, 0x7d2dac76 # initialize rs2
xor x29, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa01bfa99 # initialize rs1
li x9, 0x82a45b58 # initialize rs2
xor x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa368b252 # initialize rs1
li x10, 0x96561257 # initialize rs2
xor x24, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x7f9bc14b # initialize rs1
li x11, 0xf1110233 # initialize rs2
xor x19, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xa721a2d8 # initialize rs1
li x12, 0x029b3a7e # initialize rs2
xor x28, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xecc3079c # initialize rs1
li x13, 0x7f4b4883 # initialize rs2
xor x26, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x00360d7e # initialize rs1
li x14, 0xd482187d # initialize rs2
xor x28, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x3e54940a # initialize rs1
li x15, 0xc84ffa70 # initialize rs2
xor x6, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x56b1e3a7 # initialize rs1
li x16, 0x362b5a6d # initialize rs2
xor x9, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xd676840b # initialize rs1
li x17, 0x890f9dc8 # initialize rs2
xor x27, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xcbc9655f # initialize rs1
li x18, 0xfe20fe69 # initialize rs2
xor x17, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x91f31051 # initialize rs1
li x19, 0x36935af9 # initialize rs2
xor x30, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x0b5361bf # initialize rs1
li x20, 0xc8a377c8 # initialize rs2
xor x22, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xe12119b1 # initialize rs1
li x21, 0x291e1b3b # initialize rs2
xor x28, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x7b3ad9a6 # initialize rs1
li x22, 0xd980d3d9 # initialize rs2
xor x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x0e807adc # initialize rs1
li x23, 0xa5fde671 # initialize rs2
xor x6, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x9748cf11 # initialize rs1
li x24, 0xf85c0b16 # initialize rs2
xor x19, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x40d3de78 # initialize rs1
li x25, 0x74f5ea99 # initialize rs2
xor x21, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x0a191101 # initialize rs1
li x26, 0xb90e5314 # initialize rs2
xor x19, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xebc4ac46 # initialize rs1
li x27, 0x3976665f # initialize rs2
xor x30, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x2367b556 # initialize rs1
li x28, 0x50037fa0 # initialize rs2
xor x18, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x98453b74 # initialize rs1
li x29, 0x7ad34402 # initialize rs2
xor x30, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xd79a88d1 # initialize rs1
li x30, 0x82693063 # initialize rs2
xor x15, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xc482d077 # initialize rs1
li x31, 0x76176777 # initialize rs2
xor x12, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x8d0ddf62 # initialize rs1
li x2, 0xade1a95c # initialize rs2
xor x0, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x781557e3 # initialize rs1
li x5, 0xb335ee8f # initialize rs2
xor x1, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x41c220f8 # initialize rs1
li x6, 0x76c9e918 # initialize rs2
xor x2, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x20b7baa2 # initialize rs1
li x10, 0xde97e2cb # initialize rs2
xor x3, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x27ab39c3 # initialize rs1
li x20, 0x43c0b42f # initialize rs2
xor x4, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe510c23e # initialize rs1
li x12, 0x97928f93 # initialize rs2
xor x5, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcf8849ef # initialize rs1
li x31, 0xd0635e73 # initialize rs2
xor x6, x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x220faef2 # initialize rs1
li x27, 0x4a0cd902 # initialize rs2
xor x7, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xa74d9359 # initialize rs1
li x27, 0x48cea134 # initialize rs2
xor x8, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x609d247b # initialize rs1
li x19, 0x6eae2a78 # initialize rs2
xor x9, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x0c6e9a57 # initialize rs1
li x5, 0x5d748717 # initialize rs2
xor x10, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xe3a11b24 # initialize rs1
li x28, 0xf08c7597 # initialize rs2
xor x11, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xc2974d29 # initialize rs1
li x22, 0x1e617080 # initialize rs2
xor x12, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd4515293 # initialize rs1
li x31, 0x14f983fe # initialize rs2
xor x13, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xda15a15d # initialize rs1
li x29, 0x47de3c56 # initialize rs2
xor x14, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x9fd5e44a # initialize rs1
li x12, 0x982ffba6 # initialize rs2
xor x15, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x6a0a84c8 # initialize rs1
li x1, 0xb993d178 # initialize rs2
xor x16, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x04346f05 # initialize rs1
li x2, 0x39c17861 # initialize rs2
xor x17, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x623835cb # initialize rs1
li x13, 0x7efb9214 # initialize rs2
xor x18, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa366f668 # initialize rs1
li x20, 0xec16d8c5 # initialize rs2
xor x19, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x16d9449d # initialize rs1
li x26, 0xfb924e43 # initialize rs2
xor x20, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x6bb95824 # initialize rs1
li x30, 0x0ec63210 # initialize rs2
xor x21, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xd36df628 # initialize rs1
li x12, 0x3336088d # initialize rs2
xor x22, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xb567a616 # initialize rs1
li x9, 0x669effe4 # initialize rs2
xor x23, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xb1484bba # initialize rs1
li x29, 0x8734bad0 # initialize rs2
xor x24, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x2cc3dc75 # initialize rs1
li x11, 0x0d6b0055 # initialize rs2
xor x25, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x15e7aea0 # initialize rs1
li x6, 0xe0cb2332 # initialize rs2
xor x26, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x425dc5b0 # initialize rs1
li x31, 0xed1edcb9 # initialize rs2
xor x27, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x74425223 # initialize rs1
li x23, 0x6d0e2e77 # initialize rs2
xor x28, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xe5e52b21 # initialize rs1
li x12, 0xd5a0c7a9 # initialize rs2
xor x29, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xeddbbecc # initialize rs1
li x3, 0x67c2d518 # initialize rs2
xor x30, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x44fb28b4 # initialize rs1
li x12, 0x05aefd0e # initialize rs2
xor x31, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x29, 0x31af80e9 # initialize rs1
li x0, 0x5d30add4 # initialize rs2
xor x0, x29, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x25, 0x23fe7673 # initialize rs1
li x1, 0xbb0616a3 # initialize rs2
xor x1, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x22, 0x222cfa65 # initialize rs1
li x2, 0x8a5bf221 # initialize rs2
xor x2, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x12, 0x2ae24b7e # initialize rs1
li x3, 0x9b40fd74 # initialize rs2
xor x3, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0xc5b0d41b # initialize rs1
li x4, 0x2e429093 # initialize rs2
xor x4, x28, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0xd46ed553 # initialize rs1
li x5, 0x44335724 # initialize rs2
xor x5, x7, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0x94707113 # initialize rs1
li x6, 0x2c6e793b # initialize rs2
xor x6, x28, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0xbe833f67 # initialize rs1
li x7, 0x36dfc1de # initialize rs2
xor x7, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x1, 0x47144cc3 # initialize rs1
li x8, 0xce44295d # initialize rs2
xor x8, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x24, 0x507077e0 # initialize rs1
li x9, 0xeb61f021 # initialize rs2
xor x9, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x18, 0xdc1b0a7c # initialize rs1
li x10, 0x196c0aee # initialize rs2
xor x10, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x15, 0x71a11254 # initialize rs1
li x11, 0x5a3e5d5a # initialize rs2
xor x11, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x28, 0xc88c281e # initialize rs1
li x12, 0x3da01640 # initialize rs2
xor x12, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x28, 0x29cf9004 # initialize rs1
li x13, 0xa459f163 # initialize rs2
xor x13, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x12, 0x49955399 # initialize rs1
li x14, 0xdff1dd1d # initialize rs2
xor x14, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x13, 0x22373261 # initialize rs1
li x15, 0x7f6e5a5f # initialize rs2
xor x15, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x17, 0xf4a3c44c # initialize rs1
li x16, 0x2f1ac34d # initialize rs2
xor x16, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x28, 0xc5bb7336 # initialize rs1
li x17, 0xfc92925f # initialize rs2
xor x17, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x30, 0x33634d3e # initialize rs1
li x18, 0x68e01e70 # initialize rs2
xor x18, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x9, 0x628656c8 # initialize rs1
li x19, 0x286b3989 # initialize rs2
xor x19, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x23, 0xf3933e0a # initialize rs1
li x20, 0x7d3c02bf # initialize rs2
xor x20, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x31, 0x53ffaf31 # initialize rs1
li x21, 0xc8a8f755 # initialize rs2
xor x21, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x19, 0x7fda01c3 # initialize rs1
li x22, 0xe6f6dc81 # initialize rs2
xor x22, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x30, 0x08b9560a # initialize rs1
li x23, 0xcf4026d6 # initialize rs2
xor x23, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x22, 0xbc8656be # initialize rs1
li x24, 0x95ea7814 # initialize rs2
xor x24, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x7, 0xdf77df0c # initialize rs1
li x25, 0x7c225d1d # initialize rs2
xor x25, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x18, 0xc131a0e3 # initialize rs1
li x26, 0x19367c8d # initialize rs2
xor x26, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x26, 0x59a2b660 # initialize rs1
li x27, 0xf5230eea # initialize rs2
xor x27, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x15, 0xcebeebfb # initialize rs1
li x28, 0xe10f353d # initialize rs2
xor x28, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x17, 0xa2657222 # initialize rs1
li x29, 0x2d6cc89c # initialize rs2
xor x29, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x12, 0x02686a37 # initialize rs1
li x30, 0xcbd3db9e # initialize rs2
xor x30, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x5, 0x905dd8b0 # initialize rs1
li x31, 0x74cdd999 # initialize rs2
xor x31, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x51052c1f # initialize rs1
li x0, 0x57c0d2fe # initialize rs2
xor x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x9f192a43 # initialize rs1
li x1, 0x4fe165ce # initialize rs2
xor x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x75d77dfd # initialize rs1
li x2, 0x98b65eb7 # initialize rs2
xor x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x6980b488 # initialize rs1
li x3, 0x052aa22e # initialize rs2
xor x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb7f43823 # initialize rs1
li x4, 0x5026a461 # initialize rs2
xor x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdbeaa7a7 # initialize rs1
li x5, 0x7e387c09 # initialize rs2
xor x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf58eccdc # initialize rs1
li x6, 0x7b2535e3 # initialize rs2
xor x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd6d3682e # initialize rs1
li x7, 0x8b8200a0 # initialize rs2
xor x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x30a05ade # initialize rs1
li x8, 0x740680b5 # initialize rs2
xor x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xd8e17241 # initialize rs1
li x9, 0x29dfee45 # initialize rs2
xor x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x6357daca # initialize rs1
li x10, 0xd9ce5d30 # initialize rs2
xor x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xdce3e744 # initialize rs1
li x11, 0xeaf4d694 # initialize rs2
xor x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xf20431ef # initialize rs1
li x12, 0x7f8caba7 # initialize rs2
xor x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x82285a4a # initialize rs1
li x13, 0xcc4b6d1e # initialize rs2
xor x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x65c72e4c # initialize rs1
li x14, 0xea4b6800 # initialize rs2
xor x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x5c38c903 # initialize rs1
li x15, 0x88c1de2b # initialize rs2
xor x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x2caedc60 # initialize rs1
li x16, 0x5d6c4ba8 # initialize rs2
xor x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x5c59e01a # initialize rs1
li x17, 0xef7f0958 # initialize rs2
xor x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xee8da022 # initialize rs1
li x18, 0x189e2f30 # initialize rs2
xor x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xbe71076f # initialize rs1
li x19, 0xa1110a17 # initialize rs2
xor x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xad7a637c # initialize rs1
li x20, 0x02949c6a # initialize rs2
xor x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x09fb7b09 # initialize rs1
li x21, 0xcb8fed3a # initialize rs2
xor x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x89af7a20 # initialize rs1
li x22, 0x4ad4f1dd # initialize rs2
xor x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x22f4cfe3 # initialize rs1
li x23, 0xab956ead # initialize rs2
xor x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xc1321834 # initialize rs1
li x24, 0x2a77d9de # initialize rs2
xor x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x2a125021 # initialize rs1
li x25, 0xad38aea1 # initialize rs2
xor x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xb26abee1 # initialize rs1
li x26, 0x38b3d070 # initialize rs2
xor x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x2a62d17a # initialize rs1
li x27, 0x5d90f3e0 # initialize rs2
xor x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xa9372437 # initialize rs1
li x28, 0x254c531b # initialize rs2
xor x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xa28b3d0a # initialize rs1
li x29, 0x648d66b5 # initialize rs2
xor x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xd7bef08a # initialize rs1
li x30, 0xe553b24a # initialize rs2
xor x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x0ff89733 # initialize rs1
li x31, 0xcb92f57d # initialize rs2
xor x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x2, x25 # perform first operation
xor x11, x24, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x12, x21 # perform first operation
xor x16, x2, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x7, x16 # perform first operation
xor x12, x27, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x22, x21 # perform first operation
xor x22, x16, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x6, x22 # perform first operation
xor x9, x7, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x19, x27 # perform first operation
xor x19, x29, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x23, x19 # perform first operation
xor x12, x10, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x26, x20 # perform first operation
xor x29, x8, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x26, x12 # perform first operation
xor x20, x28, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x18, x26 # perform first operation
xor x18, x25, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x25, x15 # perform first operation
xor x15, x23, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x1, x30 # perform first operation
xor x12, x14, x18 # perform second (triggering) operation

.EQU SIGSIZE,1568


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
