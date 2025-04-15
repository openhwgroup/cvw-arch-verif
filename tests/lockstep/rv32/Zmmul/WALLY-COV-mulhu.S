///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zmmul/WALLY-COV-mulhu.S
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
li x0, 0x17432fcd # initialize rs1
li x6, 0xf722f804 # initialize rs2
mulhu x3, x0, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x79b5073b # initialize rs1
li x6, 0x56b86d48 # initialize rs2
mulhu x29, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x18aa79a4 # initialize rs1
li x28, 0x468a6db5 # initialize rs2
mulhu x21, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x2e10f2ab # initialize rs1
li x12, 0xcdd5943d # initialize rs2
mulhu x8, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe90868a6 # initialize rs1
li x11, 0x4c6a8908 # initialize rs2
mulhu x3, x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x299da4ba # initialize rs1
li x16, 0xfaed267a # initialize rs2
mulhu x26, x5, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x86fcef4d # initialize rs1
li x14, 0x0628a242 # initialize rs2
mulhu x7, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xc559b47e # initialize rs1
li x22, 0xcd3d110f # initialize rs2
mulhu x23, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x776a6cda # initialize rs1
li x29, 0x8156b383 # initialize rs2
mulhu x17, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xe998b974 # initialize rs1
li x3, 0x5e52af30 # initialize rs2
mulhu x22, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xac3861a7 # initialize rs1
li x18, 0x19529dc4 # initialize rs2
mulhu x26, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xe0ee6806 # initialize rs1
li x20, 0x07a3ab42 # initialize rs2
mulhu x23, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x50e1950f # initialize rs1
li x7, 0xa748715c # initialize rs2
mulhu x5, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x76220212 # initialize rs1
li x18, 0xe7048adc # initialize rs2
mulhu x6, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4e0b7acf # initialize rs1
li x19, 0x8416e166 # initialize rs2
mulhu x26, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1a0812f1 # initialize rs1
li x14, 0xbe3d8eb1 # initialize rs2
mulhu x30, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xc834e8e9 # initialize rs1
li x1, 0xacdeb9f7 # initialize rs2
mulhu x14, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xd9f02161 # initialize rs1
li x30, 0x5052af5f # initialize rs2
mulhu x2, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x1a656987 # initialize rs1
li x29, 0x2fd434a3 # initialize rs2
mulhu x30, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x9d14f89a # initialize rs1
li x11, 0x47edd060 # initialize rs2
mulhu x30, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x122058d2 # initialize rs1
li x31, 0xc9abb433 # initialize rs2
mulhu x12, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x5eb54149 # initialize rs1
li x25, 0x7d08dbd1 # initialize rs2
mulhu x29, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xb4055bf8 # initialize rs1
li x10, 0x0dbd1395 # initialize rs2
mulhu x13, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x2d10070e # initialize rs1
li x20, 0xe1438e69 # initialize rs2
mulhu x27, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x7afc0b01 # initialize rs1
li x22, 0xc5e52ff2 # initialize rs2
mulhu x6, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x8a4df606 # initialize rs1
li x26, 0xaa952447 # initialize rs2
mulhu x27, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xe425999d # initialize rs1
li x22, 0x5c4aa9f3 # initialize rs2
mulhu x9, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x0d88be99 # initialize rs1
li x24, 0x76767d0f # initialize rs2
mulhu x3, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xf104c157 # initialize rs1
li x25, 0xa56c53ae # initialize rs2
mulhu x13, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xbd15e0b5 # initialize rs1
li x27, 0xfea1c7bd # initialize rs2
mulhu x7, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x7f816533 # initialize rs1
li x8, 0x45c1e58b # initialize rs2
mulhu x14, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xd4457a2a # initialize rs1
li x7, 0x9a7a720a # initialize rs2
mulhu x20, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x19, 0x510b3e2c # initialize rs1
li x0, 0xc1b9c240 # initialize rs2
mulhu x30, x19, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x5, 0x20e9c169 # initialize rs1
li x1, 0x828a790c # initialize rs2
mulhu x9, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0xec0ba0db # initialize rs1
li x2, 0xaeb55997 # initialize rs2
mulhu x6, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x26, 0x051f006b # initialize rs1
li x3, 0x3b7f5e81 # initialize rs2
mulhu x27, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0xc62483b2 # initialize rs1
li x4, 0xc735c58f # initialize rs2
mulhu x22, x21, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0xe2d7d4b3 # initialize rs1
li x5, 0x7ab7d882 # initialize rs2
mulhu x19, x20, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0x90a1eb8d # initialize rs1
li x6, 0x320e64b3 # initialize rs2
mulhu x3, x26, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0xee42ba24 # initialize rs1
li x7, 0x73246184 # initialize rs2
mulhu x28, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x21, 0xa7663a0b # initialize rs1
li x8, 0xf48b3296 # initialize rs2
mulhu x12, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x22, 0x8226b78e # initialize rs1
li x9, 0x28022560 # initialize rs2
mulhu x1, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x20, 0x03d4f02c # initialize rs1
li x10, 0xf0c785d1 # initialize rs2
mulhu x21, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x26, 0x9ff9b0cd # initialize rs1
li x11, 0x4cbe2896 # initialize rs2
mulhu x18, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x22, 0x3bc74405 # initialize rs1
li x12, 0x287fe776 # initialize rs2
mulhu x3, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x18, 0x7440b45c # initialize rs1
li x13, 0xb1a61252 # initialize rs2
mulhu x11, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0xb8279e6f # initialize rs1
li x14, 0x63eafa4b # initialize rs2
mulhu x31, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x1, 0x4177c169 # initialize rs1
li x15, 0x3bdeea5a # initialize rs2
mulhu x13, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x2, 0x5f21fc43 # initialize rs1
li x16, 0x6b0ea3d1 # initialize rs2
mulhu x25, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0xc943417a # initialize rs1
li x17, 0x1f25cc39 # initialize rs2
mulhu x12, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x7, 0x5eae3357 # initialize rs1
li x18, 0x540d546d # initialize rs2
mulhu x25, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x22, 0x26c2dc04 # initialize rs1
li x19, 0xbb8bbd49 # initialize rs2
mulhu x26, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x24, 0xceeb5b75 # initialize rs1
li x20, 0x15a874af # initialize rs2
mulhu x9, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x28, 0x47c5472c # initialize rs1
li x21, 0x9a96499d # initialize rs2
mulhu x29, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x27, 0x776bd701 # initialize rs1
li x22, 0x031cdba2 # initialize rs2
mulhu x8, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x7, 0x60d6cf94 # initialize rs1
li x23, 0x5ee84b9b # initialize rs2
mulhu x31, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x14, 0xc774f98a # initialize rs1
li x24, 0x14f2d5e4 # initialize rs2
mulhu x29, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x8, 0x4c35d676 # initialize rs1
li x25, 0xf27dea0d # initialize rs2
mulhu x29, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x10, 0x61aee5cc # initialize rs1
li x26, 0xa2cb9b6f # initialize rs2
mulhu x18, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0x5b764edb # initialize rs1
li x27, 0xbd584fe9 # initialize rs2
mulhu x20, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x26, 0xa3cd0f9f # initialize rs1
li x28, 0x92cc4f74 # initialize rs2
mulhu x12, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x7, 0x9d974ad4 # initialize rs1
li x29, 0xa2cdf16a # initialize rs2
mulhu x1, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x16, 0x441f809a # initialize rs1
li x30, 0xfb9c5f10 # initialize rs2
mulhu x18, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x28, 0x3f8d32fc # initialize rs1
li x31, 0x9f26daea # initialize rs2
mulhu x12, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 252)

# Testcase cp_rd (Test destination rd = x0)
li x9, 0x72815b08 # initialize rs1
li x3, 0x11df0951 # initialize rs2
mulhu x0, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x22, 0xc155aea3 # initialize rs1
li x14, 0x0c64a93e # initialize rs2
mulhu x1, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0x7edc301a # initialize rs1
li x5, 0xeaed4c33 # initialize rs2
mulhu x2, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x6, 0xc05c5669 # initialize rs1
li x12, 0x41213427 # initialize rs2
mulhu x3, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0xe3b2422f # initialize rs1
li x14, 0x763948a4 # initialize rs2
mulhu x4, x24, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x091f1367 # initialize rs1
li x8, 0x148874ab # initialize rs2
mulhu x5, x27, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0xb6948412 # initialize rs1
li x9, 0x70986212 # initialize rs2
mulhu x6, x3, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x9da59f2c # initialize rs1
li x19, 0x4debca54 # initialize rs2
mulhu x7, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x7, 0x64a570c3 # initialize rs1
li x12, 0x834e87f8 # initialize rs2
mulhu x8, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0x9fd65ba6 # initialize rs1
li x24, 0x030b3c84 # initialize rs2
mulhu x9, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x29, 0x4876bc61 # initialize rs1
li x30, 0x43a7aa0f # initialize rs2
mulhu x10, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x24, 0xa595e877 # initialize rs1
li x19, 0xb4bc6b84 # initialize rs2
mulhu x11, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0xcf0760c2 # initialize rs1
li x15, 0xaad4ff29 # initialize rs2
mulhu x12, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x2, 0x13cf0855 # initialize rs1
li x23, 0x3cfd9a10 # initialize rs2
mulhu x13, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0xe4ec6561 # initialize rs1
li x3, 0x59898c14 # initialize rs2
mulhu x14, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0xffe96744 # initialize rs1
li x6, 0x88e87872 # initialize rs2
mulhu x15, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x7, 0x0efcedbb # initialize rs1
li x17, 0xf1dc987d # initialize rs2
mulhu x16, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x23, 0x65db7377 # initialize rs1
li x22, 0x38c2ab3b # initialize rs2
mulhu x17, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x15, 0xc0db5c1f # initialize rs1
li x21, 0xbdc221cb # initialize rs2
mulhu x18, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x18, 0xd7295ba4 # initialize rs1
li x6, 0x6476146e # initialize rs2
mulhu x19, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x6, 0x31b107f5 # initialize rs1
li x18, 0xdbc25b97 # initialize rs2
mulhu x20, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0xc1d8c0f5 # initialize rs1
li x26, 0x9f8ffdb1 # initialize rs2
mulhu x21, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x12, 0x71e238e9 # initialize rs1
li x21, 0xa74cf740 # initialize rs2
mulhu x22, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0x50a8919a # initialize rs1
li x11, 0x657b2ad1 # initialize rs2
mulhu x23, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x16, 0xed42b671 # initialize rs1
li x28, 0xb6e65b2f # initialize rs2
mulhu x24, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x1, 0x9d176eb4 # initialize rs1
li x31, 0xf570474f # initialize rs2
mulhu x25, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x17, 0xf128a4f7 # initialize rs1
li x9, 0x5dc86724 # initialize rs2
mulhu x26, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x3, 0xca270b8b # initialize rs1
li x12, 0x0f9d9af1 # initialize rs2
mulhu x27, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x26, 0x6e0b1ce1 # initialize rs1
li x13, 0xe19214fd # initialize rs2
mulhu x28, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x3, 0xad5d8a27 # initialize rs1
li x21, 0xb6eb3e1d # initialize rs2
mulhu x29, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x26, 0x230e5bdb # initialize rs1
li x21, 0xa3991969 # initialize rs2
mulhu x30, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x15, 0xe0bab547 # initialize rs1
li x18, 0x6ea5b916 # initialize rs2
mulhu x31, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x00000000 # initialize rs1
li x3, 0x03c7d871 # initialize rs2
mulhu x30, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x15, 0x00000001 # initialize rs1
li x18, 0x62bcda87 # initialize rs2
mulhu x31, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x00000002 # initialize rs1
li x31, 0x37463392 # initialize rs2
mulhu x26, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x12, 0x80000000 # initialize rs1
li x11, 0x5cdd28eb # initialize rs2
mulhu x6, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x26, 0x80000001 # initialize rs1
li x25, 0x7b751ab1 # initialize rs2
mulhu x6, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x19, 0x7fffffff # initialize rs1
li x12, 0xdc4d4216 # initialize rs2
mulhu x6, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x16, 0x7ffffffe # initialize rs1
li x7, 0x2e2275b0 # initialize rs2
mulhu x21, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0xffffffff # initialize rs1
li x8, 0xe7d46b00 # initialize rs2
mulhu x2, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x26, 0xfffffffe # initialize rs1
li x8, 0xf7ba5d18 # initialize rs2
mulhu x1, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs1
li x11, 0x60ec2fe7 # initialize rs2
mulhu x1, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x8, 0xaaaaaaaa # initialize rs1
li x20, 0x6e543615 # initialize rs2
mulhu x18, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x23, 0x55555555 # initialize rs1
li x13, 0x007b486e # initialize rs2
mulhu x15, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0x4ecc5e53 # initialize rs1
li x18, 0x00000000 # initialize rs2
mulhu x24, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0x8e3e264b # initialize rs1
li x13, 0x00000001 # initialize rs2
mulhu x29, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x30, 0xc4069d10 # initialize rs1
li x11, 0x00000002 # initialize rs2
mulhu x10, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x2, 0x0035918f # initialize rs1
li x19, 0x80000000 # initialize rs2
mulhu x31, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x8, 0x86299b5d # initialize rs1
li x29, 0x80000001 # initialize rs2
mulhu x21, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x3, 0xd8fa40db # initialize rs1
li x14, 0x7fffffff # initialize rs2
mulhu x13, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x22, 0x9484a513 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
mulhu x3, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x30, 0x15f445cb # initialize rs1
li x29, 0xffffffff # initialize rs2
mulhu x16, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x21, 0x7c6ebceb # initialize rs1
li x11, 0xfffffffe # initialize rs2
mulhu x1, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x19, 0xb21b2225 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
mulhu x29, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x31, 0x4be76ece # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
mulhu x12, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x22, 0xaba00d75 # initialize rs1
li x19, 0x55555555 # initialize rs2
mulhu x16, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x11, 0x00000000 # initialize rs1
li x24, 0x00000000 # initialize rs2
mulhu x16, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x18, 0x00000000 # initialize rs1
li x6, 0x00000001 # initialize rs2
mulhu x22, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x3, 0x00000000 # initialize rs1
li x16, 0x00000002 # initialize rs2
mulhu x18, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x18, 0x00000000 # initialize rs1
li x12, 0x80000000 # initialize rs2
mulhu x11, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x26, 0x00000000 # initialize rs1
li x31, 0x80000001 # initialize rs2
mulhu x14, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x6, 0x00000000 # initialize rs1
li x31, 0x7fffffff # initialize rs2
mulhu x10, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x29, 0x00000000 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
mulhu x7, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x9, 0x00000000 # initialize rs1
li x25, 0xffffffff # initialize rs2
mulhu x22, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x16, 0x00000000 # initialize rs1
li x11, 0xfffffffe # initialize rs2
mulhu x14, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x14, 0x00000000 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
mulhu x10, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x19, 0x00000000 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
mulhu x3, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x9, 0x00000000 # initialize rs1
li x31, 0x55555555 # initialize rs2
mulhu x2, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x19, 0x00000001 # initialize rs1
li x20, 0x00000000 # initialize rs2
mulhu x15, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x25, 0x00000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
mulhu x23, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x19, 0x00000001 # initialize rs1
li x8, 0x00000002 # initialize rs2
mulhu x2, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x24, 0x00000001 # initialize rs1
li x22, 0x80000000 # initialize rs2
mulhu x9, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x6, 0x00000001 # initialize rs1
li x23, 0x80000001 # initialize rs2
mulhu x30, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x6, 0x00000001 # initialize rs1
li x1, 0x7fffffff # initialize rs2
mulhu x30, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x26, 0x00000001 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
mulhu x3, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x2, 0x00000001 # initialize rs1
li x8, 0xffffffff # initialize rs2
mulhu x27, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x30, 0x00000001 # initialize rs1
li x31, 0xfffffffe # initialize rs2
mulhu x28, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x31, 0x00000001 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
mulhu x15, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x3, 0x00000001 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
mulhu x28, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x7, 0x00000001 # initialize rs1
li x26, 0x55555555 # initialize rs2
mulhu x2, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x11, 0x00000002 # initialize rs1
li x1, 0x00000000 # initialize rs2
mulhu x17, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x23, 0x00000002 # initialize rs1
li x27, 0x00000001 # initialize rs2
mulhu x1, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x19, 0x00000002 # initialize rs1
li x16, 0x00000002 # initialize rs2
mulhu x10, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x10, 0x00000002 # initialize rs1
li x9, 0x80000000 # initialize rs2
mulhu x27, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x25, 0x00000002 # initialize rs1
li x10, 0x80000001 # initialize rs2
mulhu x24, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x18, 0x00000002 # initialize rs1
li x22, 0x7fffffff # initialize rs2
mulhu x31, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x6, 0x00000002 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
mulhu x8, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x9, 0x00000002 # initialize rs1
li x28, 0xffffffff # initialize rs2
mulhu x27, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x5, 0x00000002 # initialize rs1
li x9, 0xfffffffe # initialize rs2
mulhu x29, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x12, 0x00000002 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
mulhu x25, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x25, 0x00000002 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
mulhu x23, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x5, 0x00000002 # initialize rs1
li x28, 0x55555555 # initialize rs2
mulhu x2, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x14, 0x80000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
mulhu x28, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x28, 0x80000000 # initialize rs1
li x31, 0x00000001 # initialize rs2
mulhu x9, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x2, 0x80000000 # initialize rs1
li x5, 0x00000002 # initialize rs2
mulhu x26, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x2, 0x80000000 # initialize rs1
li x17, 0x80000000 # initialize rs2
mulhu x25, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x9, 0x80000000 # initialize rs1
li x17, 0x80000001 # initialize rs2
mulhu x18, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x15, 0x80000000 # initialize rs1
li x22, 0x7fffffff # initialize rs2
mulhu x1, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x30, 0x80000000 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
mulhu x22, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x7, 0x80000000 # initialize rs1
li x24, 0xffffffff # initialize rs2
mulhu x11, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x1, 0x80000000 # initialize rs1
li x13, 0xfffffffe # initialize rs2
mulhu x26, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x9, 0x80000000 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
mulhu x17, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x11, 0x80000000 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
mulhu x28, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x30, 0x80000000 # initialize rs1
li x18, 0x55555555 # initialize rs2
mulhu x3, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x25, 0x80000001 # initialize rs1
li x3, 0x00000000 # initialize rs2
mulhu x21, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x28, 0x80000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
mulhu x19, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x3, 0x80000001 # initialize rs1
li x18, 0x00000002 # initialize rs2
mulhu x20, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x21, 0x80000001 # initialize rs1
li x16, 0x80000000 # initialize rs2
mulhu x29, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x13, 0x80000001 # initialize rs1
li x2, 0x80000001 # initialize rs2
mulhu x15, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x5, 0x80000001 # initialize rs1
li x26, 0x7fffffff # initialize rs2
mulhu x21, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x31, 0x80000001 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
mulhu x23, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x27, 0x80000001 # initialize rs1
li x5, 0xffffffff # initialize rs2
mulhu x23, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x18, 0x80000001 # initialize rs1
li x21, 0xfffffffe # initialize rs2
mulhu x31, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x19, 0x80000001 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
mulhu x18, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x3, 0x80000001 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
mulhu x7, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x9, 0x80000001 # initialize rs1
li x5, 0x55555555 # initialize rs2
mulhu x6, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x10, 0x7fffffff # initialize rs1
li x2, 0x00000000 # initialize rs2
mulhu x20, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x7, 0x7fffffff # initialize rs1
li x24, 0x00000001 # initialize rs2
mulhu x22, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x13, 0x7fffffff # initialize rs1
li x28, 0x00000002 # initialize rs2
mulhu x17, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x28, 0x7fffffff # initialize rs1
li x21, 0x80000000 # initialize rs2
mulhu x24, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x20, 0x7fffffff # initialize rs1
li x12, 0x80000001 # initialize rs2
mulhu x26, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x20, 0x7fffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
mulhu x13, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x6, 0x7fffffff # initialize rs1
li x8, 0x7ffffffe # initialize rs2
mulhu x5, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x25, 0x7fffffff # initialize rs1
li x23, 0xffffffff # initialize rs2
mulhu x5, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x25, 0x7fffffff # initialize rs1
li x26, 0xfffffffe # initialize rs2
mulhu x6, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x11, 0x7fffffff # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
mulhu x16, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x17, 0x7fffffff # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
mulhu x16, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x22, 0x7fffffff # initialize rs1
li x18, 0x55555555 # initialize rs2
mulhu x25, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x17, 0x7ffffffe # initialize rs1
li x6, 0x00000000 # initialize rs2
mulhu x19, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x17, 0x7ffffffe # initialize rs1
li x13, 0x00000001 # initialize rs2
mulhu x5, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x27, 0x7ffffffe # initialize rs1
li x24, 0x00000002 # initialize rs2
mulhu x12, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x17, 0x7ffffffe # initialize rs1
li x3, 0x80000000 # initialize rs2
mulhu x15, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x23, 0x7ffffffe # initialize rs1
li x10, 0x80000001 # initialize rs2
mulhu x11, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x15, 0x7ffffffe # initialize rs1
li x1, 0x7fffffff # initialize rs2
mulhu x20, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x17, 0x7ffffffe # initialize rs1
li x13, 0x7ffffffe # initialize rs2
mulhu x31, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x19, 0x7ffffffe # initialize rs1
li x15, 0xffffffff # initialize rs2
mulhu x14, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x9, 0x7ffffffe # initialize rs1
li x14, 0xfffffffe # initialize rs2
mulhu x21, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x16, 0x7ffffffe # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
mulhu x8, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x2, 0x7ffffffe # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
mulhu x5, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x5, 0x7ffffffe # initialize rs1
li x29, 0x55555555 # initialize rs2
mulhu x23, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x23, 0xffffffff # initialize rs1
li x7, 0x00000000 # initialize rs2
mulhu x25, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x12, 0xffffffff # initialize rs1
li x22, 0x00000001 # initialize rs2
mulhu x3, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x28, 0xffffffff # initialize rs1
li x26, 0x00000002 # initialize rs2
mulhu x2, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x2, 0xffffffff # initialize rs1
li x26, 0x80000000 # initialize rs2
mulhu x18, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x5, 0xffffffff # initialize rs1
li x26, 0x80000001 # initialize rs2
mulhu x6, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x1, 0xffffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
mulhu x19, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x6, 0xffffffff # initialize rs1
li x5, 0x7ffffffe # initialize rs2
mulhu x29, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x7, 0xffffffff # initialize rs1
li x19, 0xffffffff # initialize rs2
mulhu x30, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x29, 0xffffffff # initialize rs1
li x30, 0xfffffffe # initialize rs2
mulhu x14, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x27, 0xffffffff # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
mulhu x22, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x29, 0xffffffff # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
mulhu x23, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x27, 0xffffffff # initialize rs1
li x6, 0x55555555 # initialize rs2
mulhu x1, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x22, 0xfffffffe # initialize rs1
li x9, 0x00000000 # initialize rs2
mulhu x11, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x14, 0xfffffffe # initialize rs1
li x20, 0x00000001 # initialize rs2
mulhu x3, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x18, 0xfffffffe # initialize rs1
li x2, 0x00000002 # initialize rs2
mulhu x17, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x28, 0xfffffffe # initialize rs1
li x30, 0x80000000 # initialize rs2
mulhu x13, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x29, 0xfffffffe # initialize rs1
li x22, 0x80000001 # initialize rs2
mulhu x12, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x6, 0xfffffffe # initialize rs1
li x20, 0x7fffffff # initialize rs2
mulhu x14, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x22, 0xfffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
mulhu x15, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x5, 0xfffffffe # initialize rs1
li x3, 0xffffffff # initialize rs2
mulhu x29, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x26, 0xfffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
mulhu x2, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x14, 0xfffffffe # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
mulhu x19, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x19, 0xfffffffe # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
mulhu x18, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x5, 0xfffffffe # initialize rs1
li x31, 0x55555555 # initialize rs2
mulhu x20, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x3, 0x5bbc8872 # initialize rs1
li x25, 0x00000000 # initialize rs2
mulhu x20, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x26, 0x5bbc8872 # initialize rs1
li x10, 0x00000001 # initialize rs2
mulhu x12, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x17, 0x5bbc8872 # initialize rs1
li x5, 0x00000002 # initialize rs2
mulhu x26, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x13, 0x5bbc8872 # initialize rs1
li x31, 0x80000000 # initialize rs2
mulhu x11, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x10, 0x5bbc8872 # initialize rs1
li x15, 0x80000001 # initialize rs2
mulhu x29, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x8, 0x5bbc8872 # initialize rs1
li x11, 0x7fffffff # initialize rs2
mulhu x24, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x27, 0x5bbc8872 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
mulhu x5, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x14, 0x5bbc8872 # initialize rs1
li x3, 0xffffffff # initialize rs2
mulhu x16, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x17, 0x5bbc8872 # initialize rs1
li x31, 0xfffffffe # initialize rs2
mulhu x16, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x3, 0x5bbc8872 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
mulhu x19, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x27, 0x5bbc8872 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
mulhu x5, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x19, 0x5bbc8872 # initialize rs1
li x15, 0x55555555 # initialize rs2
mulhu x27, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x28, 0xaaaaaaaa # initialize rs1
li x5, 0x00000000 # initialize rs2
mulhu x11, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x13, 0xaaaaaaaa # initialize rs1
li x23, 0x00000001 # initialize rs2
mulhu x16, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x5, 0xaaaaaaaa # initialize rs1
li x16, 0x00000002 # initialize rs2
mulhu x18, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x22, 0xaaaaaaaa # initialize rs1
li x30, 0x80000000 # initialize rs2
mulhu x5, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x12, 0xaaaaaaaa # initialize rs1
li x9, 0x80000001 # initialize rs2
mulhu x3, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x13, 0xaaaaaaaa # initialize rs1
li x7, 0x7fffffff # initialize rs2
mulhu x16, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x10, 0xaaaaaaaa # initialize rs1
li x18, 0x7ffffffe # initialize rs2
mulhu x21, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x22, 0xaaaaaaaa # initialize rs1
li x10, 0xffffffff # initialize rs2
mulhu x5, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaa # initialize rs1
li x6, 0xfffffffe # initialize rs2
mulhu x15, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x22, 0xaaaaaaaa # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
mulhu x31, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x12, 0xaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
mulhu x7, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x21, 0xaaaaaaaa # initialize rs1
li x1, 0x55555555 # initialize rs2
mulhu x26, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x20, 0x55555555 # initialize rs1
li x17, 0x00000000 # initialize rs2
mulhu x1, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x14, 0x55555555 # initialize rs1
li x29, 0x00000001 # initialize rs2
mulhu x12, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x22, 0x55555555 # initialize rs1
li x16, 0x00000002 # initialize rs2
mulhu x15, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x30, 0x55555555 # initialize rs1
li x31, 0x80000000 # initialize rs2
mulhu x25, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x30, 0x55555555 # initialize rs1
li x10, 0x80000001 # initialize rs2
mulhu x6, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x25, 0x55555555 # initialize rs1
li x1, 0x7fffffff # initialize rs2
mulhu x31, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x30, 0x55555555 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
mulhu x21, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x7, 0x55555555 # initialize rs1
li x10, 0xffffffff # initialize rs2
mulhu x26, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x10, 0x55555555 # initialize rs1
li x13, 0xfffffffe # initialize rs2
mulhu x11, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x7, 0x55555555 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
mulhu x11, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x7, 0x55555555 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
mulhu x8, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x31, 0x55555555 # initialize rs1
li x25, 0x55555555 # initialize rs2
mulhu x24, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x91d20c9f # initialize rs1
li x0, 0xae4f3841 # initialize rs2
mulhu x30, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc70fe58a # initialize rs1
li x1, 0xcf1c4a18 # initialize rs2
mulhu x13, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x8258fad3 # initialize rs1
li x2, 0xfa3aed1c # initialize rs2
mulhu x21, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xf7c0ab85 # initialize rs1
li x3, 0xd8ba0fdb # initialize rs2
mulhu x16, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x933dff40 # initialize rs1
li x4, 0x8accd521 # initialize rs2
mulhu x27, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe23cbf70 # initialize rs1
li x5, 0xe27c55e3 # initialize rs2
mulhu x3, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcf0384aa # initialize rs1
li x6, 0xc538e58d # initialize rs2
mulhu x31, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc2a66d83 # initialize rs1
li x7, 0x9ae9c365 # initialize rs2
mulhu x1, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xa67d06e2 # initialize rs1
li x8, 0x950680c7 # initialize rs2
mulhu x18, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x95e8bb1d # initialize rs1
li x9, 0x65fd46cf # initialize rs2
mulhu x23, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd0e2d76c # initialize rs1
li x10, 0x13d71b6f # initialize rs2
mulhu x7, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x17bde8c1 # initialize rs1
li x11, 0x46d2911a # initialize rs2
mulhu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x3a806211 # initialize rs1
li x12, 0xad013fda # initialize rs2
mulhu x5, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x3a6c728c # initialize rs1
li x13, 0x323cf684 # initialize rs2
mulhu x27, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x87c9935c # initialize rs1
li x14, 0x437cf64b # initialize rs2
mulhu x30, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xd8088dae # initialize rs1
li x15, 0x1550efe9 # initialize rs2
mulhu x14, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x72d731fd # initialize rs1
li x16, 0x0671db31 # initialize rs2
mulhu x27, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x5e80ce8f # initialize rs1
li x17, 0xf2a976d8 # initialize rs2
mulhu x26, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xc9d5f9f0 # initialize rs1
li x18, 0xe3fdb771 # initialize rs2
mulhu x19, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xaf1f603f # initialize rs1
li x19, 0x7a08c6c9 # initialize rs2
mulhu x7, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x3c34ad3a # initialize rs1
li x20, 0xa6d6243b # initialize rs2
mulhu x30, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x7cc32e9b # initialize rs1
li x21, 0xcee8a89d # initialize rs2
mulhu x18, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x5fe09f34 # initialize rs1
li x22, 0x6206e96b # initialize rs2
mulhu x30, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x15bbfb5a # initialize rs1
li x23, 0xd82ddb21 # initialize rs2
mulhu x13, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xba1b1b97 # initialize rs1
li x24, 0xcefa1052 # initialize rs2
mulhu x22, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x9b35d970 # initialize rs1
li x25, 0x3a2cf51e # initialize rs2
mulhu x5, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x19a6ba96 # initialize rs1
li x26, 0xd362cffa # initialize rs2
mulhu x1, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x66077413 # initialize rs1
li x27, 0xbb16bd32 # initialize rs2
mulhu x28, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xd1871b08 # initialize rs1
li x28, 0x0763cde9 # initialize rs2
mulhu x29, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x2ebdfa52 # initialize rs1
li x29, 0x1c43a4be # initialize rs2
mulhu x5, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xf3cef31c # initialize rs1
li x30, 0x560ee237 # initialize rs2
mulhu x13, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x945ad728 # initialize rs1
li x31, 0x771f589d # initialize rs2
mulhu x16, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xed6bb107 # initialize rs1
li x9, 0x9a5f35d9 # initialize rs2
mulhu x0, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x5eb18481 # initialize rs1
li x17, 0xb52a1fa6 # initialize rs2
mulhu x1, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xa40b5ed0 # initialize rs1
li x20, 0xa2c7a558 # initialize rs2
mulhu x2, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x2a412c6d # initialize rs1
li x5, 0x40f14fa4 # initialize rs2
mulhu x3, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xadc0f024 # initialize rs1
li x12, 0xb3898e8b # initialize rs2
mulhu x4, x4, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6c6e3170 # initialize rs1
li x22, 0x4cbd7b24 # initialize rs2
mulhu x5, x5, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdb55f6a2 # initialize rs1
li x17, 0xfe0e7580 # initialize rs2
mulhu x6, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5701122b # initialize rs1
li x20, 0x935c3891 # initialize rs2
mulhu x7, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x69a95f89 # initialize rs1
li x16, 0x310fdde5 # initialize rs2
mulhu x8, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x2a7de062 # initialize rs1
li x19, 0x87f245f4 # initialize rs2
mulhu x9, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xfacd4dcd # initialize rs1
li x7, 0x1f937c1e # initialize rs2
mulhu x10, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xe1e4da45 # initialize rs1
li x21, 0x6a1f9a9d # initialize rs2
mulhu x11, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x9736cc34 # initialize rs1
li x30, 0x5dc83fa5 # initialize rs2
mulhu x12, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb907f7e4 # initialize rs1
li x1, 0x3db31a0e # initialize rs2
mulhu x13, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x189a7313 # initialize rs1
li x21, 0x6c7f76d8 # initialize rs2
mulhu x14, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x9939e065 # initialize rs1
li x28, 0x11d2b024 # initialize rs2
mulhu x15, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xf379fdcb # initialize rs1
li x22, 0xd0679bbc # initialize rs2
mulhu x16, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xbd2dbdd5 # initialize rs1
li x11, 0x12dfa1e2 # initialize rs2
mulhu x17, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x10b0c4f7 # initialize rs1
li x29, 0x4316c21b # initialize rs2
mulhu x18, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x43561db3 # initialize rs1
li x12, 0x27ca0093 # initialize rs2
mulhu x19, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x85f55018 # initialize rs1
li x19, 0xd731c0ef # initialize rs2
mulhu x20, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x90f55051 # initialize rs1
li x13, 0x5db49a67 # initialize rs2
mulhu x21, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xbed239e1 # initialize rs1
li x15, 0x887ac400 # initialize rs2
mulhu x22, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa0be1bb3 # initialize rs1
li x29, 0x6f08c1d7 # initialize rs2
mulhu x23, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7ee872f6 # initialize rs1
li x20, 0x875abe7f # initialize rs2
mulhu x24, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x7a361778 # initialize rs1
li x27, 0x4674db21 # initialize rs2
mulhu x25, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xdf7a1ca9 # initialize rs1
li x31, 0x970d9d47 # initialize rs2
mulhu x26, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x4e2f7fd8 # initialize rs1
li x9, 0x1c4e28de # initialize rs2
mulhu x27, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x2ce1fb85 # initialize rs1
li x28, 0xb7cd7cdb # initialize rs2
mulhu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xacf75a02 # initialize rs1
li x8, 0x4697d84c # initialize rs2
mulhu x29, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x3df610c0 # initialize rs1
li x10, 0xb148af22 # initialize rs2
mulhu x30, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xb4e4f45f # initialize rs1
li x22, 0xa35bed46 # initialize rs2
mulhu x31, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x14, 0x87c6eb03 # initialize rs1
li x0, 0xc8336bf4 # initialize rs2
mulhu x0, x14, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x17, 0xb39b1136 # initialize rs1
li x1, 0x311e0741 # initialize rs2
mulhu x1, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x25, 0x9066dc09 # initialize rs1
li x2, 0xa2cfac48 # initialize rs2
mulhu x2, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x5, 0x0abfafed # initialize rs1
li x3, 0x4293904e # initialize rs2
mulhu x3, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0xdf2b2ce9 # initialize rs1
li x4, 0x0717b35d # initialize rs2
mulhu x4, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0xb62d6a46 # initialize rs1
li x5, 0x5a15673d # initialize rs2
mulhu x5, x27, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0x14d86c14 # initialize rs1
li x6, 0x90b846e8 # initialize rs2
mulhu x6, x19, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0xf0057d9c # initialize rs1
li x7, 0xf79dd7b8 # initialize rs2
mulhu x7, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x28, 0x029bb19c # initialize rs1
li x8, 0x232cfe04 # initialize rs2
mulhu x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x13, 0xfc2e4d1f # initialize rs1
li x9, 0x227ca45b # initialize rs2
mulhu x9, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x18, 0xcd452c7d # initialize rs1
li x10, 0x2fea5e39 # initialize rs2
mulhu x10, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x19, 0x4f947f6a # initialize rs1
li x11, 0xe254e856 # initialize rs2
mulhu x11, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x30, 0xe1153a51 # initialize rs1
li x12, 0xb51d4a0e # initialize rs2
mulhu x12, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x1, 0x076f6bd1 # initialize rs1
li x13, 0x3f8f0939 # initialize rs2
mulhu x13, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x1, 0x695d7cc3 # initialize rs1
li x14, 0x5c6f90d5 # initialize rs2
mulhu x14, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x24, 0x09881864 # initialize rs1
li x15, 0x76e64e1e # initialize rs2
mulhu x15, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x28, 0xd8214a6b # initialize rs1
li x16, 0xb6396fd1 # initialize rs2
mulhu x16, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x21, 0x926dc048 # initialize rs1
li x17, 0x32d485cc # initialize rs2
mulhu x17, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x24, 0x50a6f0af # initialize rs1
li x18, 0xd500df64 # initialize rs2
mulhu x18, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x13, 0xa4456def # initialize rs1
li x19, 0x8f3d3ff1 # initialize rs2
mulhu x19, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x22, 0x3c4981df # initialize rs1
li x20, 0x826440a4 # initialize rs2
mulhu x20, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xd45a6984 # initialize rs1
li x21, 0x419154db # initialize rs2
mulhu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x23, 0xd596a40b # initialize rs1
li x22, 0x307b304e # initialize rs2
mulhu x22, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x19, 0x602e10b4 # initialize rs1
li x23, 0x751333a7 # initialize rs2
mulhu x23, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x1, 0x6d7d404f # initialize rs1
li x24, 0x09651159 # initialize rs2
mulhu x24, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x15, 0x941af236 # initialize rs1
li x25, 0x0527c807 # initialize rs2
mulhu x25, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x9, 0xe13f5be6 # initialize rs1
li x26, 0xb3d99254 # initialize rs2
mulhu x26, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x6, 0x8cb9f092 # initialize rs1
li x27, 0x75722cd1 # initialize rs2
mulhu x27, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x6, 0x350ebe16 # initialize rs1
li x28, 0xd36d21f4 # initialize rs2
mulhu x28, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x28, 0x0d8e3cdd # initialize rs1
li x29, 0xaf7964ab # initialize rs2
mulhu x29, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x12, 0x6acc92ba # initialize rs1
li x30, 0xf85a0011 # initialize rs2
mulhu x30, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x5, 0xc479738e # initialize rs1
li x31, 0x729629ac # initialize rs2
mulhu x31, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x4972c203 # initialize rs1
li x0, 0x01ba73bf # initialize rs2
mulhu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x2f5ff80d # initialize rs1
li x1, 0xb5da6f83 # initialize rs2
mulhu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x94c96c42 # initialize rs1
li x2, 0x52a47bea # initialize rs2
mulhu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x62638a07 # initialize rs1
li x3, 0xffba3c01 # initialize rs2
mulhu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb4625956 # initialize rs1
li x4, 0x0e4ec274 # initialize rs2
mulhu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdb602064 # initialize rs1
li x5, 0x97d5fc7e # initialize rs2
mulhu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x84c10165 # initialize rs1
li x6, 0x34936338 # initialize rs2
mulhu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x90717f57 # initialize rs1
li x7, 0x59c941fe # initialize rs2
mulhu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x6e6e2a7c # initialize rs1
li x8, 0x0e0266a4 # initialize rs2
mulhu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xf8f32a0a # initialize rs1
li x9, 0xa1e3f289 # initialize rs2
mulhu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x04606571 # initialize rs1
li x10, 0x244ab8c0 # initialize rs2
mulhu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x02c4ecd7 # initialize rs1
li x11, 0x8ce50214 # initialize rs2
mulhu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xa46b119a # initialize rs1
li x12, 0x9a980047 # initialize rs2
mulhu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x61e1bd09 # initialize rs1
li x13, 0x88172079 # initialize rs2
mulhu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xb80ab22c # initialize rs1
li x14, 0x7ea3886b # initialize rs2
mulhu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xc78b7881 # initialize rs1
li x15, 0xa5684e2c # initialize rs2
mulhu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x43ba1aeb # initialize rs1
li x16, 0x3badbd75 # initialize rs2
mulhu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x852b5fce # initialize rs1
li x17, 0x87274548 # initialize rs2
mulhu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x3c12bdc4 # initialize rs1
li x18, 0x41f82b51 # initialize rs2
mulhu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x65735c76 # initialize rs1
li x19, 0x4526570e # initialize rs2
mulhu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x0d6fedaf # initialize rs1
li x20, 0xf7eec62d # initialize rs2
mulhu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xe19e97d0 # initialize rs1
li x21, 0x1006cdeb # initialize rs2
mulhu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x2e75245e # initialize rs1
li x22, 0x0782fe8f # initialize rs2
mulhu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x99539651 # initialize rs1
li x23, 0x8566b0aa # initialize rs2
mulhu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x7d1cd16f # initialize rs1
li x24, 0x7bdb3ae8 # initialize rs2
mulhu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xab43bac7 # initialize rs1
li x25, 0x4674cee4 # initialize rs2
mulhu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xc965d074 # initialize rs1
li x26, 0xc11700e3 # initialize rs2
mulhu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x12e4b229 # initialize rs1
li x27, 0xa7993605 # initialize rs2
mulhu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xe246579d # initialize rs1
li x28, 0x1c70eac7 # initialize rs2
mulhu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x7662068e # initialize rs1
li x29, 0x26b4f9d7 # initialize rs2
mulhu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xeda22bb8 # initialize rs1
li x30, 0x421beadc # initialize rs2
mulhu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x947bd225 # initialize rs1
li x31, 0x0c5248b4 # initialize rs2
mulhu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x5, x22 # perform first operation
mulhu x19, x31, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x27, x3 # perform first operation
mulhu x26, x7, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x19, x25 # perform first operation
mulhu x27, x29, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x6, x24 # perform first operation
mulhu x6, x29, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x26, x10 # perform first operation
mulhu x30, x18, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x25, x29 # perform first operation
mulhu x29, x26, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x19, x12 # perform first operation
mulhu x27, x28, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x7, x14 # perform first operation
mulhu x24, x22, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x8, x27 # perform first operation
mulhu x16, x7, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x15, x5 # perform first operation
mulhu x15, x25, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x1, x31 # perform first operation
mulhu x31, x9, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x13, x6 # perform first operation
mulhu x20, x11, x12 # perform second (triggering) operation

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
