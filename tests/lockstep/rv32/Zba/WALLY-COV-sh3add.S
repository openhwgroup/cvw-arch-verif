///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zba/WALLY-COV-sh3add.S
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
li x0, 0x135b5fc5 # initialize rs1
li x11, 0x3b621176 # initialize rs2
sh3add x21, x0, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb377172f # initialize rs1
li x3, 0x854d0fa7 # initialize rs2
sh3add x19, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x8a330b4c # initialize rs1
li x29, 0xcc6df68f # initialize rs2
sh3add x28, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x4bce8615 # initialize rs1
li x15, 0x64f8f58e # initialize rs2
sh3add x25, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x121e748b # initialize rs1
li x29, 0x6aed09cb # initialize rs2
sh3add x31, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0dd64377 # initialize rs1
li x1, 0x4fe70843 # initialize rs2
sh3add x28, x5, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1f6b6ccc # initialize rs1
li x21, 0x7481149b # initialize rs2
sh3add x11, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x78be655c # initialize rs1
li x15, 0xa9d28e61 # initialize rs2
sh3add x29, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x0ef5a262 # initialize rs1
li x13, 0xa821a752 # initialize rs2
sh3add x22, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x02aabf1a # initialize rs1
li x21, 0x5ad39029 # initialize rs2
sh3add x7, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x84e40e1d # initialize rs1
li x1, 0xfffc5b09 # initialize rs2
sh3add x13, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc79a9588 # initialize rs1
li x17, 0x6da42d98 # initialize rs2
sh3add x19, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xfd7d137a # initialize rs1
li x7, 0x4707f509 # initialize rs2
sh3add x8, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x8fcf01a4 # initialize rs1
li x21, 0xc23dffee # initialize rs2
sh3add x17, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x6f61e4a9 # initialize rs1
li x1, 0xa1c86016 # initialize rs2
sh3add x28, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x6425f5d4 # initialize rs1
li x16, 0x2ff7b6d7 # initialize rs2
sh3add x25, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x7feb93eb # initialize rs1
li x15, 0x14ac5f42 # initialize rs2
sh3add x21, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3331088e # initialize rs1
li x27, 0xc9f8acb3 # initialize rs2
sh3add x26, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x07143e77 # initialize rs1
li x28, 0x43c2674b # initialize rs2
sh3add x7, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x6cbd16a4 # initialize rs1
li x12, 0xeb0a6185 # initialize rs2
sh3add x21, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x3d54f9d1 # initialize rs1
li x23, 0x785ac150 # initialize rs2
sh3add x10, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x5895dee3 # initialize rs1
li x14, 0xc6198eaa # initialize rs2
sh3add x29, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x42f95512 # initialize rs1
li x9, 0xfeb4d87e # initialize rs2
sh3add x10, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x7b0eff70 # initialize rs1
li x24, 0x3134f734 # initialize rs2
sh3add x28, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xd6f879ab # initialize rs1
li x28, 0x619255b8 # initialize rs2
sh3add x1, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x998a722d # initialize rs1
li x26, 0x4131d1dd # initialize rs2
sh3add x2, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x1ffb8987 # initialize rs1
li x9, 0xc6173fa7 # initialize rs2
sh3add x27, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x2d8beb4b # initialize rs1
li x20, 0xfff56584 # initialize rs2
sh3add x21, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x5c95f8f9 # initialize rs1
li x13, 0x6e563de1 # initialize rs2
sh3add x22, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x6a57508b # initialize rs1
li x9, 0x04b34f43 # initialize rs2
sh3add x15, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x9878b17e # initialize rs1
li x19, 0x2b2bfd1f # initialize rs2
sh3add x13, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x69888185 # initialize rs1
li x26, 0x69a8bce1 # initialize rs2
sh3add x17, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x24, 0x3910ab90 # initialize rs1
li x0, 0xc165c006 # initialize rs2
sh3add x17, x24, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x9, 0xf78a23cb # initialize rs1
li x1, 0x67fc91e9 # initialize rs2
sh3add x18, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x8, 0x9ca129bb # initialize rs1
li x2, 0xc24958c0 # initialize rs2
sh3add x16, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x21, 0x171aefac # initialize rs1
li x3, 0x829044d4 # initialize rs2
sh3add x17, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xaab9bcd7 # initialize rs1
li x4, 0x1ddf47bd # initialize rs2
sh3add x30, x19, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x680cfeb4 # initialize rs1
li x5, 0x2fb6a73d # initialize rs2
sh3add x13, x14, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0xfec1f2e7 # initialize rs1
li x6, 0x8bd73f05 # initialize rs2
sh3add x2, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x1dfb6140 # initialize rs1
li x7, 0x4add03f8 # initialize rs2
sh3add x1, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x19, 0xfe23c0cc # initialize rs1
li x8, 0x35612fbe # initialize rs2
sh3add x23, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x6, 0x599041c6 # initialize rs1
li x9, 0x336717ef # initialize rs2
sh3add x26, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x30, 0x6a742e52 # initialize rs1
li x10, 0xae792d3b # initialize rs2
sh3add x13, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x17, 0xabbb70b5 # initialize rs1
li x11, 0x0fb0f377 # initialize rs2
sh3add x23, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x10, 0x76b68866 # initialize rs1
li x12, 0x1b067f37 # initialize rs2
sh3add x19, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0x338e7444 # initialize rs1
li x13, 0xe5b0fe89 # initialize rs2
sh3add x9, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x29, 0xea16362c # initialize rs1
li x14, 0xcdfb5d87 # initialize rs2
sh3add x15, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x10, 0x728cd8fe # initialize rs1
li x15, 0xddc119ea # initialize rs2
sh3add x12, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0x3e29e834 # initialize rs1
li x16, 0x051c4796 # initialize rs2
sh3add x15, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0x7304d782 # initialize rs1
li x17, 0x5ae1a94f # initialize rs2
sh3add x18, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x8, 0x0d14c1f9 # initialize rs1
li x18, 0x1119c79d # initialize rs2
sh3add x30, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x10, 0xe7651ba3 # initialize rs1
li x19, 0x388696ff # initialize rs2
sh3add x18, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x31, 0x1fe5e7bf # initialize rs1
li x20, 0x082279f0 # initialize rs2
sh3add x29, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x25, 0x47344c7c # initialize rs1
li x21, 0x4cb4b846 # initialize rs2
sh3add x17, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x12, 0xf19a0a71 # initialize rs1
li x22, 0xf28984f0 # initialize rs2
sh3add x14, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x25, 0xcd9bff04 # initialize rs1
li x23, 0xe74e782d # initialize rs2
sh3add x1, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x13, 0xb79b8426 # initialize rs1
li x24, 0x747cd4bb # initialize rs2
sh3add x7, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x2, 0xb33a87ec # initialize rs1
li x25, 0x2251d12d # initialize rs2
sh3add x19, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x1, 0xa871e629 # initialize rs1
li x26, 0x0ef48ee0 # initialize rs2
sh3add x10, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x23, 0x64e88ea1 # initialize rs1
li x27, 0xa6405077 # initialize rs2
sh3add x30, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x13, 0x858a98ba # initialize rs1
li x28, 0x4b9b15bc # initialize rs2
sh3add x19, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x22, 0x0ae8eff2 # initialize rs1
li x29, 0x29faec43 # initialize rs2
sh3add x16, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x2, 0xd6d16b2c # initialize rs1
li x30, 0xf0b383ce # initialize rs2
sh3add x6, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x22, 0x0a30be28 # initialize rs1
li x31, 0xc2ed71d7 # initialize rs2
sh3add x2, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 252)

# Testcase cp_rd (Test destination rd = x0)
li x15, 0x270475d2 # initialize rs1
li x28, 0x20a26192 # initialize rs2
sh3add x0, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x22, 0x7660794d # initialize rs1
li x1, 0xe91a0df7 # initialize rs2
sh3add x1, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x20, 0x8000aca9 # initialize rs1
li x24, 0xde7bfdca # initialize rs2
sh3add x2, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x30, 0x09e44ecc # initialize rs1
li x16, 0x39fed03d # initialize rs2
sh3add x3, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0xaff86512 # initialize rs1
li x1, 0xeff6c6bb # initialize rs2
sh3add x4, x15, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x499beb5e # initialize rs1
li x17, 0x03e53d85 # initialize rs2
sh3add x5, x1, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0xad847597 # initialize rs1
li x28, 0xc50037ee # initialize rs2
sh3add x6, x21, x28 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x23b998ee # initialize rs1
li x28, 0xaeee2347 # initialize rs2
sh3add x7, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x5, 0xd597e2a6 # initialize rs1
li x28, 0x8b65a2a8 # initialize rs2
sh3add x8, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0x9f0fcd7b # initialize rs1
li x5, 0xd5886621 # initialize rs2
sh3add x9, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x056d7be0 # initialize rs1
li x29, 0xe368089d # initialize rs2
sh3add x10, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x24, 0x32a4d8f8 # initialize rs1
li x28, 0x8402c3f1 # initialize rs2
sh3add x11, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0x528f7a4a # initialize rs1
li x15, 0x0218ac97 # initialize rs2
sh3add x12, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x6, 0xb54859cb # initialize rs1
li x7, 0xb530306d # initialize rs2
sh3add x13, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0x443714a1 # initialize rs1
li x18, 0xc1d5a158 # initialize rs2
sh3add x14, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x14, 0x2419206a # initialize rs1
li x11, 0xeca47592 # initialize rs2
sh3add x15, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x25, 0x23b5adfd # initialize rs1
li x9, 0x274572a9 # initialize rs2
sh3add x16, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x20, 0x1185d9c4 # initialize rs1
li x16, 0x696d6dc2 # initialize rs2
sh3add x17, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x3, 0x0f01ddf4 # initialize rs1
li x19, 0x8e903edc # initialize rs2
sh3add x18, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x7ebf8027 # initialize rs1
li x11, 0x94f2b1b7 # initialize rs2
sh3add x19, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x471c3625 # initialize rs1
li x10, 0xc72bf927 # initialize rs2
sh3add x20, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x37033ee2 # initialize rs1
li x17, 0x8dc41f3d # initialize rs2
sh3add x21, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x3, 0x17140092 # initialize rs1
li x8, 0x9906a7af # initialize rs2
sh3add x22, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0x4faf20fc # initialize rs1
li x31, 0x6255d7c7 # initialize rs2
sh3add x23, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x2, 0xc712b70f # initialize rs1
li x18, 0xe33e32c2 # initialize rs2
sh3add x24, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x1, 0xe2a53dfa # initialize rs1
li x16, 0x0fe0a101 # initialize rs2
sh3add x25, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x16, 0x2bd5acd2 # initialize rs1
li x18, 0x03f7b4af # initialize rs2
sh3add x26, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0xf2851e82 # initialize rs1
li x17, 0x920a9886 # initialize rs2
sh3add x27, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x3, 0x4423de2a # initialize rs1
li x26, 0xa8def466 # initialize rs2
sh3add x28, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x27, 0xd5325eb7 # initialize rs1
li x8, 0xf86d76d1 # initialize rs2
sh3add x29, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x14, 0xbfceb209 # initialize rs1
li x26, 0xbd118ba5 # initialize rs2
sh3add x30, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0xdbeaff49 # initialize rs1
li x27, 0x5f175549 # initialize rs2
sh3add x31, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x15, 0x00000000 # initialize rs1
li x7, 0xf1ab58c0 # initialize rs2
sh3add x3, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x19, 0x00000001 # initialize rs1
li x3, 0x4e4a1128 # initialize rs2
sh3add x25, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x25, 0x00000002 # initialize rs1
li x5, 0xa454f3f8 # initialize rs2
sh3add x2, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x1, 0x80000000 # initialize rs1
li x20, 0xed4f3103 # initialize rs2
sh3add x12, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x25, 0x80000001 # initialize rs1
li x9, 0xfa08ced3 # initialize rs2
sh3add x12, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x8, 0x7fffffff # initialize rs1
li x9, 0x36b80cdd # initialize rs2
sh3add x2, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x27, 0x7ffffffe # initialize rs1
li x5, 0x1df3c2b4 # initialize rs2
sh3add x22, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0xffffffff # initialize rs1
li x31, 0xd52b0997 # initialize rs2
sh3add x13, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x1, 0xfffffffe # initialize rs1
li x13, 0x3076ff1c # initialize rs2
sh3add x7, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x31, 0x5bbc8872 # initialize rs1
li x8, 0xed845d5e # initialize rs2
sh3add x11, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x19, 0xaaaaaaaa # initialize rs1
li x9, 0x6cf15a7a # initialize rs2
sh3add x15, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x15, 0x55555555 # initialize rs1
li x1, 0x8f8e6eb1 # initialize rs2
sh3add x6, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0xc1a3ed8c # initialize rs1
li x22, 0x00000000 # initialize rs2
sh3add x24, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x27, 0x4c154f6c # initialize rs1
li x8, 0x00000001 # initialize rs2
sh3add x14, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x31, 0x6043be3c # initialize rs1
li x18, 0x00000002 # initialize rs2
sh3add x24, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x21, 0xeb87d491 # initialize rs1
li x26, 0x80000000 # initialize rs2
sh3add x25, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x27, 0x0676ed35 # initialize rs1
li x10, 0x80000001 # initialize rs2
sh3add x19, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x20, 0x413ce03e # initialize rs1
li x17, 0x7fffffff # initialize rs2
sh3add x1, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x28, 0x2a22e005 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
sh3add x8, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x21, 0x08de8ef5 # initialize rs1
li x2, 0xffffffff # initialize rs2
sh3add x22, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x14, 0x54884399 # initialize rs1
li x30, 0xfffffffe # initialize rs2
sh3add x26, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x6, 0x0686de84 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
sh3add x24, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x24, 0xe931121a # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
sh3add x14, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x16, 0x8477358f # initialize rs1
li x11, 0x55555555 # initialize rs2
sh3add x12, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x22, 0x00000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
sh3add x24, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x27, 0x00000000 # initialize rs1
li x20, 0x00000001 # initialize rs2
sh3add x5, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x22, 0x00000000 # initialize rs1
li x9, 0x00000002 # initialize rs2
sh3add x17, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x14, 0x00000000 # initialize rs1
li x15, 0x80000000 # initialize rs2
sh3add x6, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x15, 0x00000000 # initialize rs1
li x31, 0x80000001 # initialize rs2
sh3add x24, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x16, 0x00000000 # initialize rs1
li x27, 0x7fffffff # initialize rs2
sh3add x3, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x23, 0x00000000 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
sh3add x20, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x30, 0x00000000 # initialize rs1
li x2, 0xffffffff # initialize rs2
sh3add x28, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x5, 0x00000000 # initialize rs1
li x27, 0xfffffffe # initialize rs2
sh3add x3, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x5, 0x00000000 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
sh3add x15, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x18, 0x00000000 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
sh3add x25, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x15, 0x00000000 # initialize rs1
li x23, 0x55555555 # initialize rs2
sh3add x13, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x13, 0x00000001 # initialize rs1
li x28, 0x00000000 # initialize rs2
sh3add x14, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x22, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
sh3add x21, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x7, 0x00000001 # initialize rs1
li x20, 0x00000002 # initialize rs2
sh3add x26, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x22, 0x00000001 # initialize rs1
li x15, 0x80000000 # initialize rs2
sh3add x24, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x29, 0x00000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
sh3add x25, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x24, 0x00000001 # initialize rs1
li x20, 0x7fffffff # initialize rs2
sh3add x31, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x24, 0x00000001 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
sh3add x10, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x14, 0x00000001 # initialize rs1
li x10, 0xffffffff # initialize rs2
sh3add x9, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x25, 0x00000001 # initialize rs1
li x11, 0xfffffffe # initialize rs2
sh3add x12, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x28, 0x00000001 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
sh3add x24, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x14, 0x00000001 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
sh3add x3, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x14, 0x00000001 # initialize rs1
li x20, 0x55555555 # initialize rs2
sh3add x24, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x10, 0x00000002 # initialize rs1
li x18, 0x00000000 # initialize rs2
sh3add x19, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x15, 0x00000002 # initialize rs1
li x24, 0x00000001 # initialize rs2
sh3add x16, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x26, 0x00000002 # initialize rs1
li x10, 0x00000002 # initialize rs2
sh3add x21, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x25, 0x00000002 # initialize rs1
li x1, 0x80000000 # initialize rs2
sh3add x10, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x22, 0x00000002 # initialize rs1
li x2, 0x80000001 # initialize rs2
sh3add x28, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x28, 0x00000002 # initialize rs1
li x16, 0x7fffffff # initialize rs2
sh3add x25, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x1, 0x00000002 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
sh3add x22, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x8, 0x00000002 # initialize rs1
li x16, 0xffffffff # initialize rs2
sh3add x17, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x20, 0x00000002 # initialize rs1
li x8, 0xfffffffe # initialize rs2
sh3add x16, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x10, 0x00000002 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
sh3add x8, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x14, 0x00000002 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
sh3add x2, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x9, 0x00000002 # initialize rs1
li x30, 0x55555555 # initialize rs2
sh3add x5, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x31, 0x80000000 # initialize rs1
li x1, 0x00000000 # initialize rs2
sh3add x27, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x30, 0x80000000 # initialize rs1
li x18, 0x00000001 # initialize rs2
sh3add x21, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x26, 0x80000000 # initialize rs1
li x3, 0x00000002 # initialize rs2
sh3add x28, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x5, 0x80000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
sh3add x13, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x17, 0x80000000 # initialize rs1
li x29, 0x80000001 # initialize rs2
sh3add x23, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x2, 0x80000000 # initialize rs1
li x6, 0x7fffffff # initialize rs2
sh3add x12, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x17, 0x80000000 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
sh3add x1, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x3, 0x80000000 # initialize rs1
li x12, 0xffffffff # initialize rs2
sh3add x27, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x8, 0x80000000 # initialize rs1
li x21, 0xfffffffe # initialize rs2
sh3add x31, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x19, 0x80000000 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
sh3add x8, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x11, 0x80000000 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
sh3add x6, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x23, 0x80000000 # initialize rs1
li x28, 0x55555555 # initialize rs2
sh3add x10, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x13, 0x80000001 # initialize rs1
li x29, 0x00000000 # initialize rs2
sh3add x16, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x24, 0x80000001 # initialize rs1
li x31, 0x00000001 # initialize rs2
sh3add x14, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x24, 0x80000001 # initialize rs1
li x15, 0x00000002 # initialize rs2
sh3add x31, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x24, 0x80000001 # initialize rs1
li x12, 0x80000000 # initialize rs2
sh3add x26, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x5, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
sh3add x9, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x30, 0x80000001 # initialize rs1
li x29, 0x7fffffff # initialize rs2
sh3add x13, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x29, 0x80000001 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
sh3add x1, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x23, 0x80000001 # initialize rs1
li x30, 0xffffffff # initialize rs2
sh3add x1, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x5, 0x80000001 # initialize rs1
li x17, 0xfffffffe # initialize rs2
sh3add x2, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x1, 0x80000001 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
sh3add x8, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x7, 0x80000001 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
sh3add x29, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x14, 0x80000001 # initialize rs1
li x11, 0x55555555 # initialize rs2
sh3add x25, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x2, 0x7fffffff # initialize rs1
li x15, 0x00000000 # initialize rs2
sh3add x6, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x3, 0x7fffffff # initialize rs1
li x23, 0x00000001 # initialize rs2
sh3add x20, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x20, 0x7fffffff # initialize rs1
li x14, 0x00000002 # initialize rs2
sh3add x22, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x9, 0x7fffffff # initialize rs1
li x18, 0x80000000 # initialize rs2
sh3add x28, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x14, 0x7fffffff # initialize rs1
li x8, 0x80000001 # initialize rs2
sh3add x17, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x9, 0x7fffffff # initialize rs1
li x13, 0x7fffffff # initialize rs2
sh3add x20, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x22, 0x7fffffff # initialize rs1
li x7, 0x7ffffffe # initialize rs2
sh3add x1, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x25, 0x7fffffff # initialize rs1
li x5, 0xffffffff # initialize rs2
sh3add x22, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x19, 0x7fffffff # initialize rs1
li x25, 0xfffffffe # initialize rs2
sh3add x16, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x27, 0x7fffffff # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
sh3add x9, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x21, 0x7fffffff # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sh3add x28, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x22, 0x7fffffff # initialize rs1
li x19, 0x55555555 # initialize rs2
sh3add x11, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x12, 0x7ffffffe # initialize rs1
li x22, 0x00000000 # initialize rs2
sh3add x5, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x30, 0x7ffffffe # initialize rs1
li x2, 0x00000001 # initialize rs2
sh3add x28, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x30, 0x7ffffffe # initialize rs1
li x5, 0x00000002 # initialize rs2
sh3add x15, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x23, 0x7ffffffe # initialize rs1
li x29, 0x80000000 # initialize rs2
sh3add x28, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x12, 0x7ffffffe # initialize rs1
li x5, 0x80000001 # initialize rs2
sh3add x26, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x12, 0x7ffffffe # initialize rs1
li x3, 0x7fffffff # initialize rs2
sh3add x25, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x22, 0x7ffffffe # initialize rs1
li x20, 0x7ffffffe # initialize rs2
sh3add x14, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x31, 0x7ffffffe # initialize rs1
li x14, 0xffffffff # initialize rs2
sh3add x15, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x27, 0x7ffffffe # initialize rs1
li x14, 0xfffffffe # initialize rs2
sh3add x13, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x23, 0x7ffffffe # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
sh3add x12, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x28, 0x7ffffffe # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sh3add x7, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x2, 0x7ffffffe # initialize rs1
li x29, 0x55555555 # initialize rs2
sh3add x15, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x23, 0xffffffff # initialize rs1
li x20, 0x00000000 # initialize rs2
sh3add x6, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x24, 0xffffffff # initialize rs1
li x27, 0x00000001 # initialize rs2
sh3add x20, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x26, 0xffffffff # initialize rs1
li x18, 0x00000002 # initialize rs2
sh3add x10, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x13, 0xffffffff # initialize rs1
li x22, 0x80000000 # initialize rs2
sh3add x25, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x27, 0xffffffff # initialize rs1
li x5, 0x80000001 # initialize rs2
sh3add x19, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x2, 0xffffffff # initialize rs1
li x5, 0x7fffffff # initialize rs2
sh3add x3, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x30, 0xffffffff # initialize rs1
li x14, 0x7ffffffe # initialize rs2
sh3add x19, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x28, 0xffffffff # initialize rs1
li x27, 0xffffffff # initialize rs2
sh3add x31, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x3, 0xffffffff # initialize rs1
li x12, 0xfffffffe # initialize rs2
sh3add x25, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x11, 0xffffffff # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
sh3add x1, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x17, 0xffffffff # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sh3add x8, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x8, 0xffffffff # initialize rs1
li x9, 0x55555555 # initialize rs2
sh3add x29, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x29, 0xfffffffe # initialize rs1
li x28, 0x00000000 # initialize rs2
sh3add x30, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x6, 0xfffffffe # initialize rs1
li x15, 0x00000001 # initialize rs2
sh3add x27, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x23, 0xfffffffe # initialize rs1
li x25, 0x00000002 # initialize rs2
sh3add x24, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x26, 0xfffffffe # initialize rs1
li x9, 0x80000000 # initialize rs2
sh3add x12, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x10, 0xfffffffe # initialize rs1
li x15, 0x80000001 # initialize rs2
sh3add x27, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x13, 0xfffffffe # initialize rs1
li x19, 0x7fffffff # initialize rs2
sh3add x16, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x8, 0xfffffffe # initialize rs1
li x24, 0x7ffffffe # initialize rs2
sh3add x6, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x12, 0xfffffffe # initialize rs1
li x3, 0xffffffff # initialize rs2
sh3add x5, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x30, 0xfffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
sh3add x12, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x18, 0xfffffffe # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
sh3add x9, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x20, 0xfffffffe # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sh3add x1, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x10, 0xfffffffe # initialize rs1
li x24, 0x55555555 # initialize rs2
sh3add x9, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x15, 0x5bbc8872 # initialize rs1
li x30, 0x00000000 # initialize rs2
sh3add x9, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x26, 0x5bbc8872 # initialize rs1
li x1, 0x00000001 # initialize rs2
sh3add x7, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x23, 0x5bbc8872 # initialize rs1
li x9, 0x00000002 # initialize rs2
sh3add x31, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x2, 0x5bbc8872 # initialize rs1
li x17, 0x80000000 # initialize rs2
sh3add x14, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x30, 0x5bbc8872 # initialize rs1
li x19, 0x80000001 # initialize rs2
sh3add x28, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x10, 0x5bbc8872 # initialize rs1
li x27, 0x7fffffff # initialize rs2
sh3add x11, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x30, 0x5bbc8872 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
sh3add x27, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x2, 0x5bbc8872 # initialize rs1
li x11, 0xffffffff # initialize rs2
sh3add x20, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x1, 0x5bbc8872 # initialize rs1
li x12, 0xfffffffe # initialize rs2
sh3add x24, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x5, 0x5bbc8872 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
sh3add x12, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x15, 0x5bbc8872 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sh3add x18, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x31, 0x5bbc8872 # initialize rs1
li x27, 0x55555555 # initialize rs2
sh3add x11, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x23, 0xaaaaaaaa # initialize rs1
li x11, 0x00000000 # initialize rs2
sh3add x1, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x19, 0xaaaaaaaa # initialize rs1
li x28, 0x00000001 # initialize rs2
sh3add x9, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x11, 0xaaaaaaaa # initialize rs1
li x18, 0x00000002 # initialize rs2
sh3add x31, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x12, 0xaaaaaaaa # initialize rs1
li x30, 0x80000000 # initialize rs2
sh3add x3, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x11, 0xaaaaaaaa # initialize rs1
li x5, 0x80000001 # initialize rs2
sh3add x1, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x13, 0xaaaaaaaa # initialize rs1
li x28, 0x7fffffff # initialize rs2
sh3add x15, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x10, 0xaaaaaaaa # initialize rs1
li x8, 0x7ffffffe # initialize rs2
sh3add x13, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x31, 0xaaaaaaaa # initialize rs1
li x5, 0xffffffff # initialize rs2
sh3add x16, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x30, 0xaaaaaaaa # initialize rs1
li x1, 0xfffffffe # initialize rs2
sh3add x23, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x16, 0xaaaaaaaa # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
sh3add x7, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x30, 0xaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sh3add x20, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x8, 0xaaaaaaaa # initialize rs1
li x30, 0x55555555 # initialize rs2
sh3add x10, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x14, 0x55555555 # initialize rs1
li x27, 0x00000000 # initialize rs2
sh3add x26, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x22, 0x55555555 # initialize rs1
li x25, 0x00000001 # initialize rs2
sh3add x6, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x31, 0x55555555 # initialize rs1
li x26, 0x00000002 # initialize rs2
sh3add x21, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x16, 0x55555555 # initialize rs1
li x7, 0x80000000 # initialize rs2
sh3add x18, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x29, 0x55555555 # initialize rs1
li x18, 0x80000001 # initialize rs2
sh3add x1, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x15, 0x55555555 # initialize rs1
li x23, 0x7fffffff # initialize rs2
sh3add x26, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x21, 0x55555555 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
sh3add x30, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x2, 0x55555555 # initialize rs1
li x13, 0xffffffff # initialize rs2
sh3add x7, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x1, 0x55555555 # initialize rs1
li x19, 0xfffffffe # initialize rs2
sh3add x6, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x21, 0x55555555 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
sh3add x2, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x1, 0x55555555 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
sh3add x13, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x30, 0x55555555 # initialize rs1
li x26, 0x55555555 # initialize rs2
sh3add x24, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x98b9e8bc # initialize rs1
li x0, 0xb12b8b51 # initialize rs2
sh3add x19, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x7676e365 # initialize rs1
li x1, 0x3680fc6e # initialize rs2
sh3add x25, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe40ecb85 # initialize rs1
li x2, 0xba6ff6ac # initialize rs2
sh3add x22, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x3179856b # initialize rs1
li x3, 0x1a1acf5d # initialize rs2
sh3add x26, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf566d633 # initialize rs1
li x4, 0xfd3e3666 # initialize rs2
sh3add x19, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4fab3ded # initialize rs1
li x5, 0xfb0233e2 # initialize rs2
sh3add x2, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x66774cca # initialize rs1
li x6, 0x8575d1c1 # initialize rs2
sh3add x19, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x691557b2 # initialize rs1
li x7, 0xc2a2b40c # initialize rs2
sh3add x12, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x2733982d # initialize rs1
li x8, 0xa98f3491 # initialize rs2
sh3add x26, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xaf36aff4 # initialize rs1
li x9, 0xbd3efb0f # initialize rs2
sh3add x22, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xf465a6da # initialize rs1
li x10, 0xb20bcc1d # initialize rs2
sh3add x9, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xf81c7073 # initialize rs1
li x11, 0xf5c38b41 # initialize rs2
sh3add x8, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xa3417579 # initialize rs1
li x12, 0x5276c1f4 # initialize rs2
sh3add x5, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xeada1e6c # initialize rs1
li x13, 0x933f0dc0 # initialize rs2
sh3add x22, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x58114422 # initialize rs1
li x14, 0x4df55cd9 # initialize rs2
sh3add x27, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x11165a2c # initialize rs1
li x15, 0xb789f678 # initialize rs2
sh3add x18, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x1f790865 # initialize rs1
li x16, 0xa575afb7 # initialize rs2
sh3add x3, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xc986a403 # initialize rs1
li x17, 0x2266cf78 # initialize rs2
sh3add x11, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xe5728bf2 # initialize rs1
li x18, 0x2edc542b # initialize rs2
sh3add x27, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xa9c240e4 # initialize rs1
li x19, 0x1f34436b # initialize rs2
sh3add x3, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xabaa4320 # initialize rs1
li x20, 0x1c4ddb76 # initialize rs2
sh3add x8, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x82981ee2 # initialize rs1
li x21, 0xdd921c86 # initialize rs2
sh3add x11, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xe0ba9ca3 # initialize rs1
li x22, 0x189a92f2 # initialize rs2
sh3add x16, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xfa39694b # initialize rs1
li x23, 0x9ec374a9 # initialize rs2
sh3add x7, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xdad930e0 # initialize rs1
li x24, 0x3d59f5dc # initialize rs2
sh3add x31, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xd5ebce49 # initialize rs1
li x25, 0xbcac70c2 # initialize rs2
sh3add x16, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x9b8c73b4 # initialize rs1
li x26, 0xcdc1a330 # initialize rs2
sh3add x8, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xe1b2a298 # initialize rs1
li x27, 0xc8a16785 # initialize rs2
sh3add x16, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x27883d63 # initialize rs1
li x28, 0x16f03994 # initialize rs2
sh3add x21, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x6521faee # initialize rs1
li x29, 0x22a66482 # initialize rs2
sh3add x31, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x52346049 # initialize rs1
li x30, 0xf5127a8c # initialize rs2
sh3add x5, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x97302e5a # initialize rs1
li x31, 0x20b03e47 # initialize rs2
sh3add x2, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x3e90e775 # initialize rs1
li x10, 0x98be55ce # initialize rs2
sh3add x0, x0, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x77fd2faf # initialize rs1
li x17, 0xe82a4de6 # initialize rs2
sh3add x1, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x544e7f68 # initialize rs1
li x27, 0x05da7221 # initialize rs2
sh3add x2, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6bf28d34 # initialize rs1
li x27, 0x22422436 # initialize rs2
sh3add x3, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x98ed5c96 # initialize rs1
li x23, 0x5c7b56c9 # initialize rs2
sh3add x4, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x89970e39 # initialize rs1
li x29, 0x66f447fc # initialize rs2
sh3add x5, x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf6671160 # initialize rs1
li x24, 0xe130e77f # initialize rs2
sh3add x6, x6, x24 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xad895966 # initialize rs1
li x18, 0x2f859809 # initialize rs2
sh3add x7, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9f9399cb # initialize rs1
li x24, 0xfbd38102 # initialize rs2
sh3add x8, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x335d8154 # initialize rs1
li x7, 0x020897ec # initialize rs2
sh3add x9, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x93a2c0e8 # initialize rs1
li x18, 0xb8f0fd3e # initialize rs2
sh3add x10, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xf0112fc4 # initialize rs1
li x24, 0xf6a4c591 # initialize rs2
sh3add x11, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x38dfe34c # initialize rs1
li x14, 0xe64ccd56 # initialize rs2
sh3add x12, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xde9519dd # initialize rs1
li x15, 0x00c455a7 # initialize rs2
sh3add x13, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x32f33706 # initialize rs1
li x25, 0x336f55b3 # initialize rs2
sh3add x14, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x60c5b13e # initialize rs1
li x8, 0x6cdc560d # initialize rs2
sh3add x15, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x0d1c9afb # initialize rs1
li x23, 0xe2dc2bd9 # initialize rs2
sh3add x16, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x7050940a # initialize rs1
li x24, 0x6e952fe6 # initialize rs2
sh3add x17, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdc68be6c # initialize rs1
li x22, 0xe84b005f # initialize rs2
sh3add x18, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x4b9b5c91 # initialize rs1
li x28, 0x261cafee # initialize rs2
sh3add x19, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xbc3db685 # initialize rs1
li x30, 0x2932759b # initialize rs2
sh3add x20, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xc9f27595 # initialize rs1
li x28, 0xa70abd34 # initialize rs2
sh3add x21, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x99f69723 # initialize rs1
li x1, 0x35614a80 # initialize rs2
sh3add x22, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xc175035f # initialize rs1
li x17, 0x9809709c # initialize rs2
sh3add x23, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x96947fb1 # initialize rs1
li x31, 0xfcf0c2d4 # initialize rs2
sh3add x24, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x568a9c6c # initialize rs1
li x28, 0xf05c4533 # initialize rs2
sh3add x25, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x063cf6ea # initialize rs1
li x16, 0x42a8e347 # initialize rs2
sh3add x26, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x9f4b9076 # initialize rs1
li x14, 0xa005e49a # initialize rs2
sh3add x27, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x8ca0ea0d # initialize rs1
li x26, 0xa3a58c20 # initialize rs2
sh3add x28, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x39c2fb64 # initialize rs1
li x13, 0xf8b1fe56 # initialize rs2
sh3add x29, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x15e41c4f # initialize rs1
li x24, 0x6fc59b6a # initialize rs2
sh3add x30, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xd38a7f0c # initialize rs1
li x3, 0xbcb5ba3d # initialize rs2
sh3add x31, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x15, 0xef2318de # initialize rs1
li x0, 0x4f908353 # initialize rs2
sh3add x0, x15, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x6, 0x293e9ff2 # initialize rs1
li x1, 0x49318a9a # initialize rs2
sh3add x1, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x1, 0x14d27371 # initialize rs1
li x2, 0xa9326d4c # initialize rs2
sh3add x2, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x8, 0x52082e94 # initialize rs1
li x3, 0xff5c15b8 # initialize rs2
sh3add x3, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x92728bc5 # initialize rs1
li x4, 0x379c4c0c # initialize rs2
sh3add x4, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0xb8de403e # initialize rs1
li x5, 0xe7ef7310 # initialize rs2
sh3add x5, x2, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0xb13a4a98 # initialize rs1
li x6, 0x51d6a2b2 # initialize rs2
sh3add x6, x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x779fd344 # initialize rs1
li x7, 0x1b7ef771 # initialize rs2
sh3add x7, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x24, 0x69391f8e # initialize rs1
li x8, 0xc78d0250 # initialize rs2
sh3add x8, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x19, 0x4185dd76 # initialize rs1
li x9, 0x0614f71a # initialize rs2
sh3add x9, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x26, 0x02c08b3e # initialize rs1
li x10, 0xa9685e8c # initialize rs2
sh3add x10, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x10, 0xe2bf940b # initialize rs1
li x11, 0x4e3f5982 # initialize rs2
sh3add x11, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x28, 0xc4fd1146 # initialize rs1
li x12, 0x072bb012 # initialize rs2
sh3add x12, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x14, 0xd8d35728 # initialize rs1
li x13, 0x151e26b3 # initialize rs2
sh3add x13, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x11, 0x7730e021 # initialize rs1
li x14, 0x22d98035 # initialize rs2
sh3add x14, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x28, 0x7d650154 # initialize rs1
li x15, 0x6f3c0ab5 # initialize rs2
sh3add x15, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x11, 0xcde495df # initialize rs1
li x16, 0x596fa7bf # initialize rs2
sh3add x16, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x18, 0x85a04983 # initialize rs1
li x17, 0xaaba2715 # initialize rs2
sh3add x17, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x22, 0x6ec1411d # initialize rs1
li x18, 0x1b6f364c # initialize rs2
sh3add x18, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x24, 0xaf42a81b # initialize rs1
li x19, 0xe74f65f4 # initialize rs2
sh3add x19, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x23, 0xe98fc4cc # initialize rs1
li x20, 0xf8fd5678 # initialize rs2
sh3add x20, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x20, 0xe38df355 # initialize rs1
li x21, 0xa0b5f3de # initialize rs2
sh3add x21, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x6, 0xaa2926c7 # initialize rs1
li x22, 0x6a7a0d61 # initialize rs2
sh3add x22, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x9, 0x20e6fac8 # initialize rs1
li x23, 0x8b1b942f # initialize rs2
sh3add x23, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x22, 0x5d8a245d # initialize rs1
li x24, 0x93999875 # initialize rs2
sh3add x24, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x77e8373d # initialize rs1
li x25, 0xafd876a9 # initialize rs2
sh3add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x24, 0x4048830f # initialize rs1
li x26, 0x54195c5f # initialize rs2
sh3add x26, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x24, 0xa8cbb560 # initialize rs1
li x27, 0x7c317bb3 # initialize rs2
sh3add x27, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x4435a73a # initialize rs1
li x28, 0x25eff4b4 # initialize rs2
sh3add x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x11, 0x896af7ad # initialize rs1
li x29, 0x2f4b3f01 # initialize rs2
sh3add x29, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x9, 0x117c29f7 # initialize rs1
li x30, 0x7701e4df # initialize rs2
sh3add x30, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x17, 0xe3a2fe90 # initialize rs1
li x31, 0x722937ea # initialize rs2
sh3add x31, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x6ff1786f # initialize rs1
li x0, 0x050e6cff # initialize rs2
sh3add x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x8208e245 # initialize rs1
li x1, 0x0b7d867f # initialize rs2
sh3add x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x1438f897 # initialize rs1
li x2, 0x6e1ec271 # initialize rs2
sh3add x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x6ef853af # initialize rs1
li x3, 0x891f6e84 # initialize rs2
sh3add x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6b3e704b # initialize rs1
li x4, 0xbdb4f4a8 # initialize rs2
sh3add x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x67d1b6e6 # initialize rs1
li x5, 0xc389c9b4 # initialize rs2
sh3add x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xabdf5c0c # initialize rs1
li x6, 0xed7a2393 # initialize rs2
sh3add x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xedb0b394 # initialize rs1
li x7, 0x224dac96 # initialize rs2
sh3add x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x32a7102c # initialize rs1
li x8, 0xecb36900 # initialize rs2
sh3add x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xba1511e8 # initialize rs1
li x9, 0x6d10a59d # initialize rs2
sh3add x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x64f846e0 # initialize rs1
li x10, 0x75bc9f65 # initialize rs2
sh3add x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x7bf9e904 # initialize rs1
li x11, 0xa96e2e9f # initialize rs2
sh3add x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x81f32ac3 # initialize rs1
li x12, 0x2f5d4fd1 # initialize rs2
sh3add x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xc44dfeda # initialize rs1
li x13, 0xb217d230 # initialize rs2
sh3add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd1088c86 # initialize rs1
li x14, 0x7a1d9f48 # initialize rs2
sh3add x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xa5ef92cf # initialize rs1
li x15, 0x28c6d97f # initialize rs2
sh3add x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xad205258 # initialize rs1
li x16, 0xc57df18d # initialize rs2
sh3add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x28cc3d4d # initialize rs1
li x17, 0xf3c9fbee # initialize rs2
sh3add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x63986c00 # initialize rs1
li x18, 0x668b15ea # initialize rs2
sh3add x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x264312bf # initialize rs1
li x19, 0x9959b59c # initialize rs2
sh3add x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x2fc1517b # initialize rs1
li x20, 0xe4e65a33 # initialize rs2
sh3add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x565b4839 # initialize rs1
li x21, 0x1d98f1c3 # initialize rs2
sh3add x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xec9b20ca # initialize rs1
li x22, 0x5e18573e # initialize rs2
sh3add x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xba4db717 # initialize rs1
li x23, 0x70d86d35 # initialize rs2
sh3add x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xbbfec834 # initialize rs1
li x24, 0x06f0c419 # initialize rs2
sh3add x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x131155f5 # initialize rs1
li x25, 0xdab0b127 # initialize rs2
sh3add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x9fa70a30 # initialize rs1
li x26, 0x377ecbae # initialize rs2
sh3add x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xdabee6f8 # initialize rs1
li x27, 0x35ea0c1c # initialize rs2
sh3add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x21ad6077 # initialize rs1
li x28, 0xb0c3058c # initialize rs2
sh3add x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xc6f376b5 # initialize rs1
li x29, 0xc7f6eb07 # initialize rs2
sh3add x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc2126072 # initialize rs1
li x30, 0x526743bc # initialize rs2
sh3add x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xa722ae4a # initialize rs1
li x31, 0x145a7829 # initialize rs2
sh3add x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x9, x29 # perform first operation
sh3add x5, x15, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x6, x31 # perform first operation
sh3add x9, x22, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x22, x28 # perform first operation
sh3add x27, x29, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x1, x13 # perform first operation
sh3add x13, x29, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x18, x7 # perform first operation
sh3add x21, x22, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x1, x2 # perform first operation
sh3add x28, x15, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x5, x24 # perform first operation
sh3add x10, x11, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x13, x25 # perform first operation
sh3add x27, x1, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x14, x1 # perform first operation
sh3add x15, x17, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x7, x13 # perform first operation
sh3add x7, x10, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x27, x26 # perform first operation
sh3add x26, x8, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x23, x5 # perform first operation
sh3add x13, x2, x1 # perform second (triggering) operation

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
