///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/M/WALLY-COV-mulh.S
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
li x0, 0x5dbb328f # initialize rs1
li x28, 0xe5919b6f # initialize rs2
mulh x6, x0, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x42431c71 # initialize rs1
li x30, 0xd0b5e046 # initialize rs2
mulh x28, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x8576ffc2 # initialize rs1
li x6, 0x509fee4c # initialize rs2
mulh x20, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x12cfee96 # initialize rs1
li x5, 0x666fea99 # initialize rs2
mulh x17, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf8ff9838 # initialize rs1
li x19, 0x9e491539 # initialize rs2
mulh x11, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7d0e26bb # initialize rs1
li x7, 0x504fc633 # initialize rs2
mulh x28, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x55b84a5d # initialize rs1
li x11, 0x1542bc61 # initialize rs2
mulh x15, x6, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x04ff399d # initialize rs1
li x5, 0x66ad5af3 # initialize rs2
mulh x19, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2872b1a1 # initialize rs1
li x30, 0x1a986d5e # initialize rs2
mulh x9, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2f4895f8 # initialize rs1
li x16, 0xa544c189 # initialize rs2
mulh x23, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x47b6d67c # initialize rs1
li x11, 0x57f94609 # initialize rs2
mulh x7, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x31033a3c # initialize rs1
li x21, 0x743d3f63 # initialize rs2
mulh x9, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x0fc40fee # initialize rs1
li x1, 0x0a10e7b0 # initialize rs2
mulh x17, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x426da32b # initialize rs1
li x2, 0xab833c81 # initialize rs2
mulh x18, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xdf76185c # initialize rs1
li x15, 0xe3144200 # initialize rs2
mulh x13, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xb1fd9a25 # initialize rs1
li x30, 0x8812c447 # initialize rs2
mulh x6, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb7a41d0e # initialize rs1
li x19, 0x89a52996 # initialize rs2
mulh x21, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xf2a26886 # initialize rs1
li x1, 0xf297193e # initialize rs2
mulh x16, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x2335539a # initialize rs1
li x6, 0xc12ebfb6 # initialize rs2
mulh x7, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x7bfe01ef # initialize rs1
li x26, 0x581287b1 # initialize rs2
mulh x13, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xb179d2b5 # initialize rs1
li x18, 0x59aad829 # initialize rs2
mulh x12, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xfdb89b23 # initialize rs1
li x24, 0x7d3d9f68 # initialize rs2
mulh x16, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5feb68a4 # initialize rs1
li x25, 0xdbca6996 # initialize rs2
mulh x16, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xc35b6d54 # initialize rs1
li x22, 0x684a1902 # initialize rs2
mulh x18, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xc43ac81a # initialize rs1
li x1, 0xbc4b94d2 # initialize rs2
mulh x14, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xe30356a4 # initialize rs1
li x19, 0x08d7f817 # initialize rs2
mulh x7, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x429dee92 # initialize rs1
li x25, 0x2acc6c70 # initialize rs2
mulh x3, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf389253a # initialize rs1
li x18, 0x4c8c367a # initialize rs2
mulh x12, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xb50a9953 # initialize rs1
li x3, 0x99e0b977 # initialize rs2
mulh x25, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x7b9d0297 # initialize rs1
li x30, 0x38032368 # initialize rs2
mulh x2, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x7b55ff75 # initialize rs1
li x2, 0x31b1b044 # initialize rs2
mulh x16, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x079dbf5e # initialize rs1
li x15, 0x4104d2ec # initialize rs2
mulh x6, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x23, 0xcdd24804 # initialize rs1
li x0, 0x3ccd9e8d # initialize rs2
mulh x11, x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x31, 0x71bf0ff8 # initialize rs1
li x1, 0x3b299d89 # initialize rs2
mulh x30, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x12, 0x7fb430e0 # initialize rs1
li x2, 0x1b1f5fc3 # initialize rs2
mulh x26, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x11, 0xc4d590fc # initialize rs1
li x3, 0x9f6527a2 # initialize rs2
mulh x7, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x04feb1de # initialize rs1
li x4, 0xf7b353b2 # initialize rs2
mulh x18, x24, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x00eb2709 # initialize rs1
li x5, 0xf2dd7e33 # initialize rs2
mulh x27, x3, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0xf5ebb374 # initialize rs1
li x6, 0x78785c38 # initialize rs2
mulh x14, x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0xadf65a80 # initialize rs1
li x7, 0xcd0ad42d # initialize rs2
mulh x23, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x30, 0x1d963eec # initialize rs1
li x8, 0xb7af5f2b # initialize rs2
mulh x1, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x22, 0xc5f3dc5f # initialize rs1
li x9, 0xc859f2f8 # initialize rs2
mulh x11, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x18, 0xba2aa89e # initialize rs1
li x10, 0xb2ea12c7 # initialize rs2
mulh x12, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0x0bd40ec9 # initialize rs1
li x11, 0xe3f0c55d # initialize rs2
mulh x17, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x1, 0x4a753bb2 # initialize rs1
li x12, 0x14ecd7cf # initialize rs2
mulh x16, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0xd4fd9d2e # initialize rs1
li x13, 0xfda98fb0 # initialize rs2
mulh x25, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x31, 0xd71e65ed # initialize rs1
li x14, 0x89fc9f61 # initialize rs2
mulh x17, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x18, 0x4cafcbc2 # initialize rs1
li x15, 0xed62811f # initialize rs2
mulh x8, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x21, 0x83e5179d # initialize rs1
li x16, 0x30e70555 # initialize rs2
mulh x14, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x2, 0xd4fa9b63 # initialize rs1
li x17, 0x3ec7cfb3 # initialize rs2
mulh x14, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x24, 0x4f5307a0 # initialize rs1
li x18, 0x0fdefebb # initialize rs2
mulh x29, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x12, 0x86e7af65 # initialize rs1
li x19, 0x2861cf3f # initialize rs2
mulh x27, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x7, 0x5dfbefca # initialize rs1
li x20, 0xf77f9977 # initialize rs2
mulh x10, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x27, 0x0be9e89a # initialize rs1
li x21, 0x61067094 # initialize rs2
mulh x2, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x3, 0x25a5d4b8 # initialize rs1
li x22, 0xab05d7c6 # initialize rs2
mulh x15, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x22, 0x506671f9 # initialize rs1
li x23, 0x4678994f # initialize rs2
mulh x28, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x1, 0x5f2898d9 # initialize rs1
li x24, 0xe6b39d35 # initialize rs2
mulh x12, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x30, 0xe4279381 # initialize rs1
li x25, 0x8e2b51d8 # initialize rs2
mulh x8, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0x76d0e0ee # initialize rs1
li x26, 0x09636861 # initialize rs2
mulh x8, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x10, 0xb4c7db77 # initialize rs1
li x27, 0x72ecd8fe # initialize rs2
mulh x13, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x24, 0x402b5535 # initialize rs1
li x28, 0xe9b3a823 # initialize rs2
mulh x1, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x13, 0x7bbaa262 # initialize rs1
li x29, 0xdddc3936 # initialize rs2
mulh x17, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x2, 0x56e19f0e # initialize rs1
li x30, 0x771b3f5d # initialize rs2
mulh x11, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x14, 0xa94d6f60 # initialize rs1
li x31, 0x0a690ab9 # initialize rs2
mulh x25, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 252)

# Testcase cp_rd (Test destination rd = x0)
li x11, 0xec4ad914 # initialize rs1
li x26, 0xfe2374c2 # initialize rs2
mulh x0, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x6, 0x9dc86b23 # initialize rs1
li x5, 0x1b7076ef # initialize rs2
mulh x1, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x12, 0xa6726023 # initialize rs1
li x6, 0xd7a78e64 # initialize rs2
mulh x2, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x26, 0x03c6638b # initialize rs1
li x2, 0x020c187e # initialize rs2
mulh x3, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0x192b6988 # initialize rs1
li x29, 0xa1a2ae0d # initialize rs2
mulh x4, x12, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0xced705b8 # initialize rs1
li x25, 0xd15cfdc4 # initialize rs2
mulh x5, x1, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x110c2db3 # initialize rs1
li x4, 0x0036db37 # initialize rs2
mulh x6, x9, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0xa53d0d65 # initialize rs1
li x20, 0x3d20ca88 # initialize rs2
mulh x7, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x1, 0xb693fca1 # initialize rs1
li x20, 0xc2b0f6fb # initialize rs2
mulh x8, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0xcda2e5a6 # initialize rs1
li x10, 0x288cd02f # initialize rs2
mulh x9, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x16, 0x97fd24bc # initialize rs1
li x18, 0xc3f807b0 # initialize rs2
mulh x10, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0x8f34948a # initialize rs1
li x20, 0x5e5553f9 # initialize rs2
mulh x11, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x24, 0x24e2038e # initialize rs1
li x25, 0x151cb813 # initialize rs2
mulh x12, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0xaf58109f # initialize rs1
li x30, 0xad7c33db # initialize rs2
mulh x13, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0x865371d1 # initialize rs1
li x2, 0x56df9f53 # initialize rs2
mulh x14, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0xed237b54 # initialize rs1
li x20, 0x8cc264cb # initialize rs2
mulh x15, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0xe717aadb # initialize rs1
li x25, 0x5cc7cee8 # initialize rs2
mulh x16, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0x1fc554b1 # initialize rs1
li x23, 0xb44713fe # initialize rs2
mulh x17, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x26, 0xd55e1063 # initialize rs1
li x2, 0xa7de7835 # initialize rs2
mulh x18, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x20, 0x68d738da # initialize rs1
li x29, 0x028ef2e3 # initialize rs2
mulh x19, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x24, 0x1946a165 # initialize rs1
li x13, 0x0d6b2757 # initialize rs2
mulh x20, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xec4fc3ae # initialize rs1
li x24, 0xa124af07 # initialize rs2
mulh x21, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x30, 0xd4069144 # initialize rs1
li x15, 0x5deb46fe # initialize rs2
mulh x22, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x11, 0x1452c22c # initialize rs1
li x23, 0x56563ddc # initialize rs2
mulh x23, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0xfe07202c # initialize rs1
li x2, 0x73a1e54b # initialize rs2
mulh x24, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0xd0d8a790 # initialize rs1
li x8, 0xbba3d184 # initialize rs2
mulh x25, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x8, 0x8e771085 # initialize rs1
li x23, 0x6216c829 # initialize rs2
mulh x26, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x15, 0xc2137f05 # initialize rs1
li x22, 0xef95f096 # initialize rs2
mulh x27, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x22, 0xd1c369e7 # initialize rs1
li x6, 0xae67ff48 # initialize rs2
mulh x28, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x7, 0x437c48e9 # initialize rs1
li x15, 0x28738d4e # initialize rs2
mulh x29, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x24, 0xc09645a0 # initialize rs1
li x20, 0x27640739 # initialize rs2
mulh x30, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0x1612b678 # initialize rs1
li x16, 0x50f78a0d # initialize rs2
mulh x31, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x11, 0x00000000 # initialize rs1
li x14, 0xef62558a # initialize rs2
mulh x21, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x00000001 # initialize rs1
li x18, 0x1a64ad01 # initialize rs2
mulh x2, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x00000002 # initialize rs1
li x25, 0x40dc1fda # initialize rs2
mulh x17, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x12, 0x80000000 # initialize rs1
li x6, 0x78765941 # initialize rs2
mulh x15, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x17, 0x80000001 # initialize rs1
li x24, 0x2ae5fb52 # initialize rs2
mulh x13, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x9, 0x7fffffff # initialize rs1
li x24, 0x96103c31 # initialize rs2
mulh x29, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
li x2, 0xc840f9ec # initialize rs2
mulh x26, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x24, 0xffffffff # initialize rs1
li x19, 0x2d49fe02 # initialize rs2
mulh x10, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x24, 0xfffffffe # initialize rs1
li x31, 0x03092701 # initialize rs2
mulh x25, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x5, 0x5bbc8872 # initialize rs1
li x15, 0x9e5ffc68 # initialize rs2
mulh x8, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x3, 0xaaaaaaaa # initialize rs1
li x19, 0x1866e87c # initialize rs2
mulh x27, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x25, 0x55555555 # initialize rs1
li x13, 0xfab4c4ef # initialize rs2
mulh x24, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x14, 0xbd74dece # initialize rs1
li x16, 0x00000000 # initialize rs2
mulh x23, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0x0ba809d2 # initialize rs1
li x23, 0x00000001 # initialize rs2
mulh x10, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x972a5371 # initialize rs1
li x6, 0x00000002 # initialize rs2
mulh x23, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x20, 0x897cc17e # initialize rs1
li x12, 0x80000000 # initialize rs2
mulh x5, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x15, 0x47c4e9d5 # initialize rs1
li x18, 0x80000001 # initialize rs2
mulh x29, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x23, 0x0c16f559 # initialize rs1
li x5, 0x7fffffff # initialize rs2
mulh x2, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x14, 0x78fd5829 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
mulh x5, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x14, 0xdbd552d2 # initialize rs1
li x6, 0xffffffff # initialize rs2
mulh x31, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x28, 0xea55bb01 # initialize rs1
li x22, 0xfffffffe # initialize rs2
mulh x16, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x18, 0xbab63708 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
mulh x23, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x17, 0x4bfb53ef # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
mulh x20, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x3, 0xe090358c # initialize rs1
li x14, 0x55555555 # initialize rs2
mulh x2, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x5, 0x00000000 # initialize rs1
li x31, 0x00000000 # initialize rs2
mulh x23, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x31, 0x00000000 # initialize rs1
li x3, 0x00000001 # initialize rs2
mulh x12, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x12, 0x00000000 # initialize rs1
li x14, 0x00000002 # initialize rs2
mulh x11, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x21, 0x00000000 # initialize rs1
li x8, 0x80000000 # initialize rs2
mulh x29, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x15, 0x00000000 # initialize rs1
li x29, 0x80000001 # initialize rs2
mulh x8, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x5, 0x00000000 # initialize rs1
li x13, 0x7fffffff # initialize rs2
mulh x30, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x17, 0x00000000 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
mulh x16, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x21, 0x00000000 # initialize rs1
li x13, 0xffffffff # initialize rs2
mulh x11, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x1, 0x00000000 # initialize rs1
li x18, 0xfffffffe # initialize rs2
mulh x28, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x19, 0x00000000 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
mulh x28, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x23, 0x00000000 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
mulh x10, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x27, 0x00000000 # initialize rs1
li x17, 0x55555555 # initialize rs2
mulh x14, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x21, 0x00000001 # initialize rs1
li x30, 0x00000000 # initialize rs2
mulh x3, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x31, 0x00000001 # initialize rs1
li x17, 0x00000001 # initialize rs2
mulh x19, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x8, 0x00000001 # initialize rs1
li x7, 0x00000002 # initialize rs2
mulh x20, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x2, 0x00000001 # initialize rs1
li x12, 0x80000000 # initialize rs2
mulh x11, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x5, 0x00000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
mulh x28, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x18, 0x00000001 # initialize rs1
li x17, 0x7fffffff # initialize rs2
mulh x23, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x14, 0x00000001 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
mulh x19, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x18, 0x00000001 # initialize rs1
li x3, 0xffffffff # initialize rs2
mulh x30, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x11, 0x00000001 # initialize rs1
li x7, 0xfffffffe # initialize rs2
mulh x8, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x11, 0x00000001 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
mulh x2, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x31, 0x00000001 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
mulh x2, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x2, 0x00000001 # initialize rs1
li x25, 0x55555555 # initialize rs2
mulh x10, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x7, 0x00000002 # initialize rs1
li x1, 0x00000000 # initialize rs2
mulh x24, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x9, 0x00000002 # initialize rs1
li x26, 0x00000001 # initialize rs2
mulh x21, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x15, 0x00000002 # initialize rs1
li x24, 0x00000002 # initialize rs2
mulh x3, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x28, 0x00000002 # initialize rs1
li x1, 0x80000000 # initialize rs2
mulh x30, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x20, 0x00000002 # initialize rs1
li x31, 0x80000001 # initialize rs2
mulh x19, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x19, 0x00000002 # initialize rs1
li x6, 0x7fffffff # initialize rs2
mulh x10, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x5, 0x00000002 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
mulh x11, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x8, 0x00000002 # initialize rs1
li x16, 0xffffffff # initialize rs2
mulh x6, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x8, 0x00000002 # initialize rs1
li x2, 0xfffffffe # initialize rs2
mulh x16, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x9, 0x00000002 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
mulh x22, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x31, 0x00000002 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
mulh x28, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x18, 0x00000002 # initialize rs1
li x14, 0x55555555 # initialize rs2
mulh x28, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x18, 0x80000000 # initialize rs1
li x23, 0x00000000 # initialize rs2
mulh x30, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x9, 0x80000000 # initialize rs1
li x13, 0x00000001 # initialize rs2
mulh x31, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x9, 0x80000000 # initialize rs1
li x16, 0x00000002 # initialize rs2
mulh x1, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x13, 0x80000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
mulh x27, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x28, 0x80000000 # initialize rs1
li x30, 0x80000001 # initialize rs2
mulh x16, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x22, 0x80000000 # initialize rs1
li x13, 0x7fffffff # initialize rs2
mulh x17, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x12, 0x80000000 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
mulh x13, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x6, 0x80000000 # initialize rs1
li x29, 0xffffffff # initialize rs2
mulh x17, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x23, 0x80000000 # initialize rs1
li x15, 0xfffffffe # initialize rs2
mulh x26, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x10, 0x80000000 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
mulh x31, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x14, 0x80000000 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
mulh x22, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x21, 0x80000000 # initialize rs1
li x18, 0x55555555 # initialize rs2
mulh x16, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x5, 0x80000001 # initialize rs1
li x13, 0x00000000 # initialize rs2
mulh x26, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x29, 0x80000001 # initialize rs1
li x21, 0x00000001 # initialize rs2
mulh x20, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x23, 0x80000001 # initialize rs1
li x9, 0x00000002 # initialize rs2
mulh x29, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x26, 0x80000001 # initialize rs1
li x30, 0x80000000 # initialize rs2
mulh x18, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x7, 0x80000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
mulh x16, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x25, 0x80000001 # initialize rs1
li x27, 0x7fffffff # initialize rs2
mulh x22, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x14, 0x80000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
mulh x16, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x24, 0x80000001 # initialize rs1
li x25, 0xffffffff # initialize rs2
mulh x7, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x27, 0x80000001 # initialize rs1
li x19, 0xfffffffe # initialize rs2
mulh x10, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x18, 0x80000001 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
mulh x11, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x16, 0x80000001 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
mulh x12, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x10, 0x80000001 # initialize rs1
li x18, 0x55555555 # initialize rs2
mulh x21, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x24, 0x7fffffff # initialize rs1
li x8, 0x00000000 # initialize rs2
mulh x21, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x28, 0x7fffffff # initialize rs1
li x17, 0x00000001 # initialize rs2
mulh x9, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x30, 0x7fffffff # initialize rs1
li x23, 0x00000002 # initialize rs2
mulh x9, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x19, 0x7fffffff # initialize rs1
li x14, 0x80000000 # initialize rs2
mulh x25, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x30, 0x7fffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
mulh x31, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x15, 0x7fffffff # initialize rs1
li x18, 0x7fffffff # initialize rs2
mulh x29, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x14, 0x7fffffff # initialize rs1
li x26, 0x7ffffffe # initialize rs2
mulh x23, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x24, 0x7fffffff # initialize rs1
li x10, 0xffffffff # initialize rs2
mulh x2, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x6, 0x7fffffff # initialize rs1
li x19, 0xfffffffe # initialize rs2
mulh x14, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x27, 0x7fffffff # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
mulh x30, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x27, 0x7fffffff # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
mulh x2, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x6, 0x7fffffff # initialize rs1
li x17, 0x55555555 # initialize rs2
mulh x2, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x20, 0x7ffffffe # initialize rs1
li x12, 0x00000000 # initialize rs2
mulh x10, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x6, 0x7ffffffe # initialize rs1
li x27, 0x00000001 # initialize rs2
mulh x22, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x17, 0x7ffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
mulh x18, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x11, 0x7ffffffe # initialize rs1
li x8, 0x80000000 # initialize rs2
mulh x25, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x14, 0x7ffffffe # initialize rs1
li x5, 0x80000001 # initialize rs2
mulh x22, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x28, 0x7ffffffe # initialize rs1
li x25, 0x7fffffff # initialize rs2
mulh x26, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x9, 0x7ffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
mulh x19, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x9, 0x7ffffffe # initialize rs1
li x31, 0xffffffff # initialize rs2
mulh x25, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x28, 0x7ffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
mulh x22, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x18, 0x7ffffffe # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
mulh x16, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x24, 0x7ffffffe # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
mulh x18, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x2, 0x7ffffffe # initialize rs1
li x9, 0x55555555 # initialize rs2
mulh x6, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x25, 0xffffffff # initialize rs1
li x15, 0x00000000 # initialize rs2
mulh x9, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x17, 0xffffffff # initialize rs1
li x8, 0x00000001 # initialize rs2
mulh x29, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x26, 0xffffffff # initialize rs1
li x15, 0x00000002 # initialize rs2
mulh x19, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x19, 0xffffffff # initialize rs1
li x25, 0x80000000 # initialize rs2
mulh x29, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x19, 0xffffffff # initialize rs1
li x11, 0x80000001 # initialize rs2
mulh x26, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x29, 0xffffffff # initialize rs1
li x18, 0x7fffffff # initialize rs2
mulh x3, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x9, 0xffffffff # initialize rs1
li x7, 0x7ffffffe # initialize rs2
mulh x5, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x6, 0xffffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
mulh x30, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x29, 0xffffffff # initialize rs1
li x10, 0xfffffffe # initialize rs2
mulh x31, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x23, 0xffffffff # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
mulh x21, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x2, 0xffffffff # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
mulh x8, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x5, 0xffffffff # initialize rs1
li x7, 0x55555555 # initialize rs2
mulh x19, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x1, 0xfffffffe # initialize rs1
li x31, 0x00000000 # initialize rs2
mulh x14, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x6, 0xfffffffe # initialize rs1
li x28, 0x00000001 # initialize rs2
mulh x12, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x13, 0xfffffffe # initialize rs1
li x25, 0x00000002 # initialize rs2
mulh x11, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x9, 0xfffffffe # initialize rs1
li x5, 0x80000000 # initialize rs2
mulh x26, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x17, 0xfffffffe # initialize rs1
li x19, 0x80000001 # initialize rs2
mulh x9, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x8, 0xfffffffe # initialize rs1
li x15, 0x7fffffff # initialize rs2
mulh x23, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x25, 0xfffffffe # initialize rs1
li x20, 0x7ffffffe # initialize rs2
mulh x6, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x31, 0xfffffffe # initialize rs1
li x19, 0xffffffff # initialize rs2
mulh x25, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x21, 0xfffffffe # initialize rs1
li x26, 0xfffffffe # initialize rs2
mulh x2, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x9, 0xfffffffe # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
mulh x18, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x16, 0xfffffffe # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
mulh x19, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x27, 0xfffffffe # initialize rs1
li x28, 0x55555555 # initialize rs2
mulh x8, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x19, 0x5bbc8872 # initialize rs1
li x22, 0x00000000 # initialize rs2
mulh x1, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x20, 0x5bbc8872 # initialize rs1
li x15, 0x00000001 # initialize rs2
mulh x27, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x14, 0x5bbc8872 # initialize rs1
li x28, 0x00000002 # initialize rs2
mulh x17, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x23, 0x5bbc8872 # initialize rs1
li x31, 0x80000000 # initialize rs2
mulh x30, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x13, 0x5bbc8872 # initialize rs1
li x11, 0x80000001 # initialize rs2
mulh x22, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x2, 0x5bbc8872 # initialize rs1
li x6, 0x7fffffff # initialize rs2
mulh x10, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x17, 0x5bbc8872 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
mulh x28, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x8, 0x5bbc8872 # initialize rs1
li x15, 0xffffffff # initialize rs2
mulh x31, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x25, 0x5bbc8872 # initialize rs1
li x15, 0xfffffffe # initialize rs2
mulh x5, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x18, 0x5bbc8872 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
mulh x30, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x16, 0x5bbc8872 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
mulh x28, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x6, 0x5bbc8872 # initialize rs1
li x16, 0x55555555 # initialize rs2
mulh x25, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x28, 0xaaaaaaaa # initialize rs1
li x5, 0x00000000 # initialize rs2
mulh x2, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x2, 0xaaaaaaaa # initialize rs1
li x6, 0x00000001 # initialize rs2
mulh x18, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x17, 0xaaaaaaaa # initialize rs1
li x26, 0x00000002 # initialize rs2
mulh x21, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x29, 0xaaaaaaaa # initialize rs1
li x9, 0x80000000 # initialize rs2
mulh x28, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x18, 0xaaaaaaaa # initialize rs1
li x5, 0x80000001 # initialize rs2
mulh x13, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x22, 0xaaaaaaaa # initialize rs1
li x5, 0x7fffffff # initialize rs2
mulh x13, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x20, 0xaaaaaaaa # initialize rs1
li x14, 0x7ffffffe # initialize rs2
mulh x1, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x12, 0xaaaaaaaa # initialize rs1
li x10, 0xffffffff # initialize rs2
mulh x21, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x31, 0xaaaaaaaa # initialize rs1
li x5, 0xfffffffe # initialize rs2
mulh x27, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x17, 0xaaaaaaaa # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
mulh x8, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x30, 0xaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
mulh x11, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x16, 0xaaaaaaaa # initialize rs1
li x7, 0x55555555 # initialize rs2
mulh x2, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x30, 0x55555555 # initialize rs1
li x27, 0x00000000 # initialize rs2
mulh x22, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x30, 0x55555555 # initialize rs1
li x7, 0x00000001 # initialize rs2
mulh x13, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x16, 0x55555555 # initialize rs1
li x26, 0x00000002 # initialize rs2
mulh x6, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x11, 0x55555555 # initialize rs1
li x1, 0x80000000 # initialize rs2
mulh x26, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x6, 0x55555555 # initialize rs1
li x23, 0x80000001 # initialize rs2
mulh x27, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x13, 0x55555555 # initialize rs1
li x6, 0x7fffffff # initialize rs2
mulh x29, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x28, 0x55555555 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
mulh x25, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x17, 0x55555555 # initialize rs1
li x5, 0xffffffff # initialize rs2
mulh x12, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x14, 0x55555555 # initialize rs1
li x1, 0xfffffffe # initialize rs2
mulh x16, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x24, 0x55555555 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
mulh x5, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x30, 0x55555555 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
mulh x24, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x14, 0x55555555 # initialize rs1
li x17, 0x55555555 # initialize rs2
mulh x2, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xe2cabe95 # initialize rs1
li x0, 0x10e3c45f # initialize rs2
mulh x25, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xcc7ab83d # initialize rs1
li x1, 0x90d15024 # initialize rs2
mulh x23, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x8740123d # initialize rs1
li x2, 0x2aef0b4c # initialize rs2
mulh x16, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x16955946 # initialize rs1
li x3, 0x8a9575b2 # initialize rs2
mulh x12, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x40ff53e5 # initialize rs1
li x4, 0x78a446bd # initialize rs2
mulh x25, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x91c31bf7 # initialize rs1
li x5, 0x5a17035f # initialize rs2
mulh x19, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0421ed4f # initialize rs1
li x6, 0xf7cbd5b6 # initialize rs2
mulh x30, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x137ef6d6 # initialize rs1
li x7, 0x1cb51ca5 # initialize rs2
mulh x26, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x9d8e1296 # initialize rs1
li x8, 0xd0d22af2 # initialize rs2
mulh x25, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x9b7895f8 # initialize rs1
li x9, 0x0ce69c6d # initialize rs2
mulh x18, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x3696e975 # initialize rs1
li x10, 0xfb6f528a # initialize rs2
mulh x2, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x1c914720 # initialize rs1
li x11, 0xac38429e # initialize rs2
mulh x25, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x5240e7e7 # initialize rs1
li x12, 0xe481fa30 # initialize rs2
mulh x17, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xec934107 # initialize rs1
li x13, 0xd6c8cdb2 # initialize rs2
mulh x11, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xde93b7f0 # initialize rs1
li x14, 0xa124a142 # initialize rs2
mulh x30, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x35c84470 # initialize rs1
li x15, 0x6fe4cd52 # initialize rs2
mulh x21, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xda64ca03 # initialize rs1
li x16, 0xe4618b0c # initialize rs2
mulh x8, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x287e7808 # initialize rs1
li x17, 0xdbba19b0 # initialize rs2
mulh x11, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x0c356a3a # initialize rs1
li x18, 0x3bf22102 # initialize rs2
mulh x23, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xe0919f4e # initialize rs1
li x19, 0x3b6e4670 # initialize rs2
mulh x3, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x41bb1c1f # initialize rs1
li x20, 0xa8190be6 # initialize rs2
mulh x18, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x02774cca # initialize rs1
li x21, 0xcc1ce131 # initialize rs2
mulh x1, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x2fc9b7b4 # initialize rs1
li x22, 0x553bbfb5 # initialize rs2
mulh x31, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xe19635ce # initialize rs1
li x23, 0x380e5190 # initialize rs2
mulh x25, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x669b4e6d # initialize rs1
li x24, 0x30e19519 # initialize rs2
mulh x11, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x7c6c6f26 # initialize rs1
li x25, 0x478fe1d0 # initialize rs2
mulh x27, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x097c50ea # initialize rs1
li x26, 0xeccf5ef5 # initialize rs2
mulh x18, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xc433705d # initialize rs1
li x27, 0x3353c0c7 # initialize rs2
mulh x26, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xa4f7f255 # initialize rs1
li x28, 0xc8cf9c6e # initialize rs2
mulh x24, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x4cb4e4ce # initialize rs1
li x29, 0x86d73eb2 # initialize rs2
mulh x17, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xaebd0843 # initialize rs1
li x30, 0x9c854696 # initialize rs2
mulh x22, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x5cb8913e # initialize rs1
li x31, 0x3f11a5e4 # initialize rs2
mulh x2, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf00ce5e8 # initialize rs1
li x15, 0x1c94687b # initialize rs2
mulh x0, x0, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xf7ce2783 # initialize rs1
li x15, 0x41b64ea3 # initialize rs2
mulh x1, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8c5068da # initialize rs1
li x13, 0xe79a097d # initialize rs2
mulh x2, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0128d8f2 # initialize rs1
li x16, 0xccf6a4a6 # initialize rs2
mulh x3, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe2c1601d # initialize rs1
li x27, 0x8884330f # initialize rs2
mulh x4, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2486499c # initialize rs1
li x8, 0x5b628588 # initialize rs2
mulh x5, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x47f1a837 # initialize rs1
li x17, 0xab29439a # initialize rs2
mulh x6, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfc49caa8 # initialize rs1
li x21, 0x81ae18b3 # initialize rs2
mulh x7, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x2a1d404b # initialize rs1
li x22, 0xbf76b19c # initialize rs2
mulh x8, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf7436497 # initialize rs1
li x28, 0x3b63928b # initialize rs2
mulh x9, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x71b1893c # initialize rs1
li x21, 0xcfe48b27 # initialize rs2
mulh x10, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x4060bba8 # initialize rs1
li x27, 0x672f13ba # initialize rs2
mulh x11, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x434479ca # initialize rs1
li x25, 0xdb24a2e5 # initialize rs2
mulh x12, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x9c78c849 # initialize rs1
li x2, 0x18716bbc # initialize rs2
mulh x13, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc3a00eed # initialize rs1
li x6, 0x32c941c1 # initialize rs2
mulh x14, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8956c0e2 # initialize rs1
li x1, 0x9d6a2ef5 # initialize rs2
mulh x15, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x78212236 # initialize rs1
li x30, 0x06621afe # initialize rs2
mulh x16, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x815594a4 # initialize rs1
li x22, 0x824beec6 # initialize rs2
mulh x17, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe5cdcac6 # initialize rs1
li x8, 0xb14feeb8 # initialize rs2
mulh x18, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x1febf700 # initialize rs1
li x14, 0xdc65a8e2 # initialize rs2
mulh x19, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xb80b8497 # initialize rs1
li x21, 0x45811470 # initialize rs2
mulh x20, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xcaf91f73 # initialize rs1
li x8, 0x6452470f # initialize rs2
mulh x21, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x0e8ab7b1 # initialize rs1
li x21, 0x38444b82 # initialize rs2
mulh x22, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x73a6e1f6 # initialize rs1
li x26, 0x36c7cc98 # initialize rs2
mulh x23, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x1fee855e # initialize rs1
li x26, 0xf8ac7f29 # initialize rs2
mulh x24, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xa51040cd # initialize rs1
li x21, 0xa436969d # initialize rs2
mulh x25, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x4a29d745 # initialize rs1
li x11, 0x633794e7 # initialize rs2
mulh x26, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x6c5acf87 # initialize rs1
li x3, 0xa82fc7ac # initialize rs2
mulh x27, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xcc8ca497 # initialize rs1
li x26, 0x57b9ec6e # initialize rs2
mulh x28, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x47182aa7 # initialize rs1
li x8, 0x2a316e0b # initialize rs2
mulh x29, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xeab33e7e # initialize rs1
li x15, 0x73f4b2e4 # initialize rs2
mulh x30, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xcb77878a # initialize rs1
li x1, 0x5a1b8fc5 # initialize rs2
mulh x31, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x23, 0xc218c578 # initialize rs1
li x0, 0xdc250b45 # initialize rs2
mulh x0, x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x28, 0x5611ce79 # initialize rs1
li x1, 0x6334946c # initialize rs2
mulh x1, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x7, 0x6e2a5105 # initialize rs1
li x2, 0x0c489fa6 # initialize rs2
mulh x2, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x6, 0x63f47c6c # initialize rs1
li x3, 0xbf0fae52 # initialize rs2
mulh x3, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0xfd89e546 # initialize rs1
li x4, 0xb0f098b6 # initialize rs2
mulh x4, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x1d1455e2 # initialize rs1
li x5, 0x2cc2c046 # initialize rs2
mulh x5, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0x09f8ca9b # initialize rs1
li x6, 0x50565365 # initialize rs2
mulh x6, x25, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x0b4bd85d # initialize rs1
li x7, 0xfe745c1e # initialize rs2
mulh x7, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x28, 0x90da8de3 # initialize rs1
li x8, 0x34294fb4 # initialize rs2
mulh x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x25, 0xf0687d74 # initialize rs1
li x9, 0x53142fa6 # initialize rs2
mulh x9, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x25, 0x5d00961e # initialize rs1
li x10, 0xd8279e34 # initialize rs2
mulh x10, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x7, 0x8801b80c # initialize rs1
li x11, 0x6fb36969 # initialize rs2
mulh x11, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x22, 0xa4dc079b # initialize rs1
li x12, 0x337cc8b9 # initialize rs2
mulh x12, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x9, 0x111c2989 # initialize rs1
li x13, 0x2730db0c # initialize rs2
mulh x13, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x19, 0xf5d008d0 # initialize rs1
li x14, 0x88b70c8a # initialize rs2
mulh x14, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x14, 0xac2153a7 # initialize rs1
li x15, 0xc8116817 # initialize rs2
mulh x15, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x29, 0x69659859 # initialize rs1
li x16, 0x8b029be2 # initialize rs2
mulh x16, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x31, 0xdf8e6a3f # initialize rs1
li x17, 0x97cf00cc # initialize rs2
mulh x17, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x13, 0xabaf39e4 # initialize rs1
li x18, 0x130a6590 # initialize rs2
mulh x18, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x14, 0xd6274998 # initialize rs1
li x19, 0x40232890 # initialize rs2
mulh x19, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x17, 0x75d40fcf # initialize rs1
li x20, 0x80806fd1 # initialize rs2
mulh x20, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x12, 0xb80d4e03 # initialize rs1
li x21, 0x51efdd77 # initialize rs2
mulh x21, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x11, 0x6d89fd96 # initialize rs1
li x22, 0x67acd1ef # initialize rs2
mulh x22, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x30, 0x8b50d279 # initialize rs1
li x23, 0xaa046d7b # initialize rs2
mulh x23, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x30, 0xd4cd445b # initialize rs1
li x24, 0x029fca87 # initialize rs2
mulh x24, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x30, 0x02b2f4d7 # initialize rs1
li x25, 0x4fc67324 # initialize rs2
mulh x25, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x14, 0x08ef23ff # initialize rs1
li x26, 0x30245b6a # initialize rs2
mulh x26, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x18, 0x532359db # initialize rs1
li x27, 0x49297720 # initialize rs2
mulh x27, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x10, 0xf05064b7 # initialize rs1
li x28, 0xfc9c862e # initialize rs2
mulh x28, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x31, 0x2ec1080d # initialize rs1
li x29, 0x2479cc70 # initialize rs2
mulh x29, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x8, 0xb62dc359 # initialize rs1
li x30, 0xede7a971 # initialize rs2
mulh x30, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x6, 0x5ac6f962 # initialize rs1
li x31, 0x32a9c9d5 # initialize rs2
mulh x31, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe86b2365 # initialize rs1
li x0, 0xada5531f # initialize rs2
mulh x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x5f4b311b # initialize rs1
li x1, 0xfe130f20 # initialize rs2
mulh x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x71ac07c6 # initialize rs1
li x2, 0x51b98f83 # initialize rs2
mulh x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xefbdeb38 # initialize rs1
li x3, 0xe4fd3183 # initialize rs2
mulh x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc3519fcb # initialize rs1
li x4, 0x04405d49 # initialize rs2
mulh x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfe6fc5c6 # initialize rs1
li x5, 0x2d9757d3 # initialize rs2
mulh x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb6f0f2bc # initialize rs1
li x6, 0x0c8fe258 # initialize rs2
mulh x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x860098fd # initialize rs1
li x7, 0x08c73d59 # initialize rs2
mulh x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xbfc95372 # initialize rs1
li x8, 0xf3d867db # initialize rs2
mulh x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xf55bde9c # initialize rs1
li x9, 0x0bc53a07 # initialize rs2
mulh x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xbddfe276 # initialize rs1
li x10, 0x451393b4 # initialize rs2
mulh x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xf0bf44e5 # initialize rs1
li x11, 0xa78c2a1e # initialize rs2
mulh x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x2b80d948 # initialize rs1
li x12, 0x3e6fdb7e # initialize rs2
mulh x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x13ea96e4 # initialize rs1
li x13, 0x5736ea7e # initialize rs2
mulh x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xe3e988f2 # initialize rs1
li x14, 0xbf609bc9 # initialize rs2
mulh x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xe89671cd # initialize rs1
li x15, 0xaf14a6b4 # initialize rs2
mulh x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x3047f66d # initialize rs1
li x16, 0x25834e1b # initialize rs2
mulh x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xaf4b9d9f # initialize rs1
li x17, 0x9402963b # initialize rs2
mulh x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xc5c38468 # initialize rs1
li x18, 0x9c466109 # initialize rs2
mulh x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x66415dd4 # initialize rs1
li x19, 0xb92147f2 # initialize rs2
mulh x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xa322bda7 # initialize rs1
li x20, 0x0095b822 # initialize rs2
mulh x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xcc91ba99 # initialize rs1
li x21, 0x1bef3aab # initialize rs2
mulh x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x6b0acd67 # initialize rs1
li x22, 0xb1c8ede9 # initialize rs2
mulh x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x3b7a24f2 # initialize rs1
li x23, 0xd06f7da6 # initialize rs2
mulh x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x705c4d26 # initialize rs1
li x24, 0x2fea344e # initialize rs2
mulh x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x24b86bf5 # initialize rs1
li x25, 0x8de01e65 # initialize rs2
mulh x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x26c3c640 # initialize rs1
li x26, 0xacba9ac7 # initialize rs2
mulh x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x86bb5e3f # initialize rs1
li x27, 0xb536e225 # initialize rs2
mulh x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x9a4e68f4 # initialize rs1
li x28, 0x6f18f5bb # initialize rs2
mulh x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x95082284 # initialize rs1
li x29, 0x49aeae6d # initialize rs2
mulh x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x6172c6cd # initialize rs1
li x30, 0x8569f7c7 # initialize rs2
mulh x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x9253fce4 # initialize rs1
li x31, 0xd8361018 # initialize rs2
mulh x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x12, x30 # perform first operation
mulh x26, x10, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x7, x20 # perform first operation
mulh x3, x12, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x12, x27 # perform first operation
mulh x2, x30, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x14, x9 # perform first operation
mulh x14, x8, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x21, x23 # perform first operation
mulh x2, x17, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x14, x12 # perform first operation
mulh x9, x28, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x10, x11 # perform first operation
mulh x26, x9, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x22, x21 # perform first operation
mulh x27, x1, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x7, x18 # perform first operation
mulh x14, x15, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x21, x24 # perform first operation
mulh x21, x16, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x7, x15 # perform first operation
mulh x15, x8, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x28, x30 # perform first operation
mulh x13, x14, x24 # perform second (triggering) operation

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
