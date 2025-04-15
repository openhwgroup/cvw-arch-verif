///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-sll.S
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
li x0, 0x2ace426a # initialize rs1
li x2, 0x0a05af93 # initialize rs2
sll x30, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xa77f1358 # initialize rs1
li x18, 0x3a9dff77 # initialize rs2
sll x31, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x0b8ce01f # initialize rs1
li x24, 0x6b250c91 # initialize rs2
sll x12, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x27d184bb # initialize rs1
li x28, 0x1be14edb # initialize rs2
sll x17, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x81dcb75f # initialize rs1
li x31, 0x57327f30 # initialize rs2
sll x15, x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0912f944 # initialize rs1
li x13, 0x1aa9246d # initialize rs2
sll x31, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbe421b5d # initialize rs1
li x26, 0x31cc8e37 # initialize rs2
sll x19, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7cdd2ebb # initialize rs1
li x18, 0x5e84e21b # initialize rs2
sll x26, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x626af42b # initialize rs1
li x20, 0xc7bdb495 # initialize rs2
sll x18, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc69d33c3 # initialize rs1
li x25, 0x4c566aa6 # initialize rs2
sll x7, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x66184568 # initialize rs1
li x27, 0xdd5e023a # initialize rs2
sll x14, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x309c207a # initialize rs1
li x25, 0x7ab57ac9 # initialize rs2
sll x5, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x13893425 # initialize rs1
li x17, 0xa6d2ca82 # initialize rs2
sll x13, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x50652221 # initialize rs1
li x31, 0x147d9f0c # initialize rs2
sll x19, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x86ebe42a # initialize rs1
li x3, 0xc92ff320 # initialize rs2
sll x10, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xef68d259 # initialize rs1
li x20, 0xe60284a7 # initialize rs2
sll x2, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x1501efbe # initialize rs1
li x14, 0x18372430 # initialize rs2
sll x30, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x82e76a64 # initialize rs1
li x19, 0xd2a8cd50 # initialize rs2
sll x3, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x1f204420 # initialize rs1
li x10, 0x00385db6 # initialize rs2
sll x24, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x59ea4cf7 # initialize rs1
li x13, 0x1de0fde2 # initialize rs2
sll x17, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4fa9b340 # initialize rs1
li x5, 0x55ac5018 # initialize rs2
sll x31, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xfff0aa83 # initialize rs1
li x10, 0x52c24530 # initialize rs2
sll x29, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x2d6968ad # initialize rs1
li x30, 0x48748315 # initialize rs2
sll x29, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xfd89d868 # initialize rs1
li x3, 0xcd8a3b8e # initialize rs2
sll x31, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x4b30386c # initialize rs1
li x31, 0xf91ec9c2 # initialize rs2
sll x3, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x525b021e # initialize rs1
li x29, 0x4644906c # initialize rs2
sll x23, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xd7b1af36 # initialize rs1
li x18, 0x41a8006f # initialize rs2
sll x14, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf8bf3184 # initialize rs1
li x11, 0x31e5eed7 # initialize rs2
sll x7, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x680eac4a # initialize rs1
li x1, 0xd6002882 # initialize rs2
sll x15, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xea0917ae # initialize rs1
li x6, 0xe1e843f0 # initialize rs2
sll x16, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x8b94c087 # initialize rs1
li x29, 0xf2c08836 # initialize rs2
sll x5, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xed21f4c2 # initialize rs1
li x30, 0xe031035b # initialize rs2
sll x19, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x24, 0x609180e9 # initialize rs1
li x0, 0xbed5f949 # initialize rs2
sll x5, x24, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x7, 0x0df135bf # initialize rs1
li x1, 0x888317b4 # initialize rs2
sll x16, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x10, 0x507867f9 # initialize rs1
li x2, 0xe5d21955 # initialize rs2
sll x31, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x16, 0xf2eee015 # initialize rs1
li x3, 0xd6ed988a # initialize rs2
sll x6, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x15, 0xcbaa3929 # initialize rs1
li x4, 0xb43c4487 # initialize rs2
sll x5, x15, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
li x21, 0x0d96d310 # initialize rs1
li x5, 0x0a990c20 # initialize rs2
sll x10, x21, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0xcf3fddf8 # initialize rs1
li x6, 0xe7b4c884 # initialize rs2
sll x25, x2, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0x3531afad # initialize rs1
li x7, 0xf386de76 # initialize rs2
sll x18, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x28, 0x6822ea08 # initialize rs1
li x8, 0xfbb8f2eb # initialize rs2
sll x20, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x2, 0x96605087 # initialize rs1
li x9, 0xf206dbcb # initialize rs2
sll x24, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x6, 0x984494d5 # initialize rs1
li x10, 0x11412225 # initialize rs2
sll x24, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x2, 0x03a813a5 # initialize rs1
li x11, 0x92696180 # initialize rs2
sll x28, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x16, 0xd5724077 # initialize rs1
li x12, 0x9eda63ac # initialize rs2
sll x29, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x31, 0xd012cf1f # initialize rs1
li x13, 0x012740b8 # initialize rs2
sll x28, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x10, 0xcb279957 # initialize rs1
li x14, 0xf426ca8f # initialize rs2
sll x2, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0xa8994092 # initialize rs1
li x15, 0x9a4e8baa # initialize rs2
sll x8, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x23, 0x246f180b # initialize rs1
li x16, 0xebd78e63 # initialize rs2
sll x17, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x11, 0xef14885c # initialize rs1
li x17, 0x34016dc5 # initialize rs2
sll x8, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x21, 0xf694f449 # initialize rs1
li x18, 0xccb0006d # initialize rs2
sll x11, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0x764a4bed # initialize rs1
li x19, 0x2cf3bad6 # initialize rs2
sll x23, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x19, 0xd70b22bc # initialize rs1
li x20, 0x722cb495 # initialize rs2
sll x10, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x23, 0x5ec32af1 # initialize rs1
li x21, 0x47e8e3c7 # initialize rs2
sll x10, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x6, 0xea4c3a2e # initialize rs1
li x22, 0x8dd44874 # initialize rs2
sll x24, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x13, 0x39bf1819 # initialize rs1
li x23, 0x8edb2423 # initialize rs2
sll x15, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x17, 0x53c220ef # initialize rs1
li x24, 0x543df6e4 # initialize rs2
sll x28, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x5, 0x85983130 # initialize rs1
li x25, 0x65c0db3e # initialize rs2
sll x6, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x17, 0xb9e1bf86 # initialize rs1
li x26, 0x768f4c77 # initialize rs2
sll x27, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x26, 0x04c3d3b0 # initialize rs1
li x27, 0x9312be90 # initialize rs2
sll x22, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x23, 0x67e16952 # initialize rs1
li x28, 0x50c95bb2 # initialize rs2
sll x14, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x9, 0x2db17360 # initialize rs1
li x29, 0x8ac7d1e2 # initialize rs2
sll x30, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x15, 0xa5ddc8f9 # initialize rs1
li x30, 0xa52ddb4a # initialize rs2
sll x11, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x5, 0x352c13fc # initialize rs1
li x31, 0xe5752fe3 # initialize rs2
sll x23, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 252)

# Testcase cp_rd (Test destination rd = x0)
li x22, 0x9e1eddd1 # initialize rs1
li x29, 0x3f5401ca # initialize rs2
sll x0, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x18, 0x989eef13 # initialize rs1
li x21, 0x00f1fe36 # initialize rs2
sll x1, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x6, 0x51402e29 # initialize rs1
li x8, 0x80fb9805 # initialize rs2
sll x2, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x28, 0x3b32a06f # initialize rs1
li x1, 0x48831cd4 # initialize rs2
sll x3, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0xd3192a50 # initialize rs1
li x27, 0x4d1f51f5 # initialize rs2
sll x4, x12, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x69b44353 # initialize rs1
li x30, 0x05ff4d22 # initialize rs2
sll x5, x31, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x4e617ba3 # initialize rs1
li x28, 0x7d6e81d2 # initialize rs2
sll x6, x24, x28 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x56dad312 # initialize rs1
li x29, 0x3783b83f # initialize rs2
sll x7, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x28, 0x5ce181be # initialize rs1
li x29, 0x0ab1e350 # initialize rs2
sll x8, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x27, 0xd52138fb # initialize rs1
li x2, 0x087a297c # initialize rs2
sll x9, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x22, 0x881a9c09 # initialize rs1
li x28, 0xce6a8f80 # initialize rs2
sll x10, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0xc04a67d3 # initialize rs1
li x11, 0xaeb1a641 # initialize rs2
sll x11, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x14, 0xf0af984d # initialize rs1
li x10, 0xaed6fab1 # initialize rs2
sll x12, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x20, 0x54f050ec # initialize rs1
li x14, 0x7ef83d52 # initialize rs2
sll x13, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x22, 0x674c8a7e # initialize rs1
li x7, 0xfd7758bb # initialize rs2
sll x14, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x30, 0x1a44b76e # initialize rs1
li x27, 0xa36ba928 # initialize rs2
sll x15, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x5, 0xdc5cbc95 # initialize rs1
li x11, 0x57f5a7da # initialize rs2
sll x16, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x9, 0x70a872a2 # initialize rs1
li x28, 0x7fc81f22 # initialize rs2
sll x17, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x12, 0x0c089009 # initialize rs1
li x8, 0x53bf7185 # initialize rs2
sll x18, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x29, 0xc45b431b # initialize rs1
li x24, 0xd95289b3 # initialize rs2
sll x19, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x30, 0x8c9fa725 # initialize rs1
li x31, 0x95176c06 # initialize rs2
sll x20, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x20, 0xed7833b2 # initialize rs1
li x27, 0xbf452244 # initialize rs2
sll x21, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xdbb4c91a # initialize rs1
li x13, 0xd783bbdd # initialize rs2
sll x22, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x9, 0xc0c58fba # initialize rs1
li x18, 0x5dc6cbe8 # initialize rs2
sll x23, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0xe9112f00 # initialize rs1
li x24, 0x4b21b69d # initialize rs2
sll x24, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0xf55f9007 # initialize rs1
li x8, 0x6ddb3608 # initialize rs2
sll x25, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x5, 0x9e09bb18 # initialize rs1
li x27, 0x1c04d377 # initialize rs2
sll x26, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0x9597da87 # initialize rs1
li x9, 0xc01db013 # initialize rs2
sll x27, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x2, 0x36d07d68 # initialize rs1
li x12, 0xb9693872 # initialize rs2
sll x28, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x10, 0xf28e76c6 # initialize rs1
li x26, 0x5e8f44b6 # initialize rs2
sll x29, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x12, 0x4a82c982 # initialize rs1
li x8, 0x94c43529 # initialize rs2
sll x30, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x22, 0xa0419ca4 # initialize rs1
li x30, 0xd6fc4146 # initialize rs2
sll x31, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x00000000 # initialize rs1
li x28, 0x2d6c8cb7 # initialize rs2
sll x13, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x00000001 # initialize rs1
li x15, 0xc4dd948d # initialize rs2
sll x8, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0x00000002 # initialize rs1
li x25, 0x1a185a23 # initialize rs2
sll x23, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x14, 0x80000000 # initialize rs1
li x3, 0x92e53fcf # initialize rs2
sll x18, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x31, 0x80000001 # initialize rs1
li x11, 0xf7c08d90 # initialize rs2
sll x19, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x27, 0x7fffffff # initialize rs1
li x24, 0x8aae9856 # initialize rs2
sll x16, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x7, 0x7ffffffe # initialize rs1
li x20, 0x43a2d2b1 # initialize rs2
sll x26, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x1, 0xffffffff # initialize rs1
li x28, 0x66483eb6 # initialize rs2
sll x14, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x24, 0xfffffffe # initialize rs1
li x20, 0xdffe6bee # initialize rs2
sll x7, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x5, 0x5bbc8872 # initialize rs1
li x18, 0xa774c983 # initialize rs2
sll x28, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x2, 0xaaaaaaaa # initialize rs1
li x23, 0xcda878f4 # initialize rs2
sll x5, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x12, 0x55555555 # initialize rs1
li x10, 0xaa634e95 # initialize rs2
sll x6, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x18, 0x6136f9f1 # initialize rs1
li x1, 0x00000000 # initialize rs2
sll x7, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0xcb1254a7 # initialize rs1
li x18, 0x00000001 # initialize rs2
sll x24, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x3b1988e2 # initialize rs1
li x6, 0x00000002 # initialize rs2
sll x5, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x21, 0x7f9336c0 # initialize rs1
li x22, 0x80000000 # initialize rs2
sll x15, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x24, 0x4e990dfc # initialize rs1
li x12, 0x80000001 # initialize rs2
sll x14, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x16, 0xc1ababec # initialize rs1
li x29, 0x7fffffff # initialize rs2
sll x25, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x24, 0x628e2851 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
sll x15, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x6, 0xd0c4d7d1 # initialize rs1
li x28, 0xffffffff # initialize rs2
sll x9, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x21, 0xc4c24c6b # initialize rs1
li x30, 0xfffffffe # initialize rs2
sll x27, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x6, 0xe458a0dd # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
sll x24, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x26, 0x8c2cc8a7 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sll x10, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x23, 0x2ebd3128 # initialize rs1
li x1, 0x55555555 # initialize rs2
sll x28, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x24, 0x00000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
sll x12, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x5, 0x00000000 # initialize rs1
li x25, 0x00000001 # initialize rs2
sll x18, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x22, 0x00000000 # initialize rs1
li x17, 0x00000002 # initialize rs2
sll x5, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x25, 0x00000000 # initialize rs1
li x26, 0x80000000 # initialize rs2
sll x5, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x23, 0x00000000 # initialize rs1
li x21, 0x80000001 # initialize rs2
sll x2, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x25, 0x00000000 # initialize rs1
li x11, 0x7fffffff # initialize rs2
sll x10, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x22, 0x00000000 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
sll x6, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x8, 0x00000000 # initialize rs1
li x5, 0xffffffff # initialize rs2
sll x18, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x27, 0x00000000 # initialize rs1
li x14, 0xfffffffe # initialize rs2
sll x12, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x11, 0x00000000 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
sll x26, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x29, 0x00000000 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
sll x10, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x1, 0x00000000 # initialize rs1
li x2, 0x55555555 # initialize rs2
sll x14, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x11, 0x00000001 # initialize rs1
li x7, 0x00000000 # initialize rs2
sll x1, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x20, 0x00000001 # initialize rs1
li x22, 0x00000001 # initialize rs2
sll x17, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x8, 0x00000001 # initialize rs1
li x14, 0x00000002 # initialize rs2
sll x19, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x23, 0x00000001 # initialize rs1
li x7, 0x80000000 # initialize rs2
sll x18, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x26, 0x00000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
sll x25, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x28, 0x00000001 # initialize rs1
li x2, 0x7fffffff # initialize rs2
sll x24, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x3, 0x00000001 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
sll x8, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x22, 0x00000001 # initialize rs1
li x20, 0xffffffff # initialize rs2
sll x1, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x10, 0x00000001 # initialize rs1
li x15, 0xfffffffe # initialize rs2
sll x7, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x28, 0x00000001 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
sll x21, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x23, 0x00000001 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
sll x6, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x2, 0x00000001 # initialize rs1
li x10, 0x55555555 # initialize rs2
sll x16, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x2, 0x00000002 # initialize rs1
li x5, 0x00000000 # initialize rs2
sll x31, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x29, 0x00000002 # initialize rs1
li x28, 0x00000001 # initialize rs2
sll x11, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x24, 0x00000002 # initialize rs1
li x26, 0x00000002 # initialize rs2
sll x30, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x23, 0x00000002 # initialize rs1
li x28, 0x80000000 # initialize rs2
sll x1, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x15, 0x00000002 # initialize rs1
li x25, 0x80000001 # initialize rs2
sll x20, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x14, 0x00000002 # initialize rs1
li x27, 0x7fffffff # initialize rs2
sll x26, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x20, 0x00000002 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
sll x25, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x22, 0x00000002 # initialize rs1
li x30, 0xffffffff # initialize rs2
sll x29, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x21, 0x00000002 # initialize rs1
li x1, 0xfffffffe # initialize rs2
sll x24, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x2, 0x00000002 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
sll x19, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x19, 0x00000002 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sll x31, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x9, 0x00000002 # initialize rs1
li x29, 0x55555555 # initialize rs2
sll x8, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x9, 0x80000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
sll x2, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x16, 0x80000000 # initialize rs1
li x25, 0x00000001 # initialize rs2
sll x17, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x1, 0x80000000 # initialize rs1
li x2, 0x00000002 # initialize rs2
sll x31, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x31, 0x80000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
sll x10, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x12, 0x80000000 # initialize rs1
li x19, 0x80000001 # initialize rs2
sll x24, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x14, 0x80000000 # initialize rs1
li x27, 0x7fffffff # initialize rs2
sll x3, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x30, 0x80000000 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
sll x9, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x18, 0x80000000 # initialize rs1
li x29, 0xffffffff # initialize rs2
sll x9, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x10, 0x80000000 # initialize rs1
li x2, 0xfffffffe # initialize rs2
sll x7, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x16, 0x80000000 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
sll x30, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x27, 0x80000000 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
sll x30, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x23, 0x80000000 # initialize rs1
li x26, 0x55555555 # initialize rs2
sll x30, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x28, 0x80000001 # initialize rs1
li x13, 0x00000000 # initialize rs2
sll x12, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x6, 0x80000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
sll x18, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x12, 0x80000001 # initialize rs1
li x19, 0x00000002 # initialize rs2
sll x11, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x10, 0x80000001 # initialize rs1
li x7, 0x80000000 # initialize rs2
sll x16, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x27, 0x80000001 # initialize rs1
li x24, 0x80000001 # initialize rs2
sll x1, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x29, 0x80000001 # initialize rs1
li x1, 0x7fffffff # initialize rs2
sll x23, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x21, 0x80000001 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
sll x25, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x11, 0x80000001 # initialize rs1
li x27, 0xffffffff # initialize rs2
sll x23, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x3, 0x80000001 # initialize rs1
li x31, 0xfffffffe # initialize rs2
sll x25, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x7, 0x80000001 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
sll x22, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x17, 0x80000001 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
sll x8, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x27, 0x80000001 # initialize rs1
li x30, 0x55555555 # initialize rs2
sll x20, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x14, 0x7fffffff # initialize rs1
li x28, 0x00000000 # initialize rs2
sll x19, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x1, 0x7fffffff # initialize rs1
li x9, 0x00000001 # initialize rs2
sll x21, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x10, 0x7fffffff # initialize rs1
li x8, 0x00000002 # initialize rs2
sll x14, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x15, 0x7fffffff # initialize rs1
li x21, 0x80000000 # initialize rs2
sll x7, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x2, 0x7fffffff # initialize rs1
li x1, 0x80000001 # initialize rs2
sll x10, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x31, 0x7fffffff # initialize rs1
li x21, 0x7fffffff # initialize rs2
sll x27, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x3, 0x7fffffff # initialize rs1
li x6, 0x7ffffffe # initialize rs2
sll x7, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x13, 0x7fffffff # initialize rs1
li x30, 0xffffffff # initialize rs2
sll x12, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x28, 0x7fffffff # initialize rs1
li x2, 0xfffffffe # initialize rs2
sll x20, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x2, 0x7fffffff # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
sll x17, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x16, 0x7fffffff # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sll x6, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x16, 0x7fffffff # initialize rs1
li x9, 0x55555555 # initialize rs2
sll x7, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x24, 0x7ffffffe # initialize rs1
li x13, 0x00000000 # initialize rs2
sll x21, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x9, 0x7ffffffe # initialize rs1
li x6, 0x00000001 # initialize rs2
sll x18, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x9, 0x7ffffffe # initialize rs1
li x3, 0x00000002 # initialize rs2
sll x10, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x20, 0x7ffffffe # initialize rs1
li x24, 0x80000000 # initialize rs2
sll x23, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x7, 0x7ffffffe # initialize rs1
li x11, 0x80000001 # initialize rs2
sll x14, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x13, 0x7ffffffe # initialize rs1
li x6, 0x7fffffff # initialize rs2
sll x9, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x31, 0x7ffffffe # initialize rs1
li x1, 0x7ffffffe # initialize rs2
sll x19, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x10, 0x7ffffffe # initialize rs1
li x6, 0xffffffff # initialize rs2
sll x16, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x29, 0x7ffffffe # initialize rs1
li x2, 0xfffffffe # initialize rs2
sll x22, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x13, 0x7ffffffe # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
sll x7, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x20, 0x7ffffffe # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
sll x29, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x31, 0x7ffffffe # initialize rs1
li x17, 0x55555555 # initialize rs2
sll x2, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x20, 0xffffffff # initialize rs1
li x22, 0x00000000 # initialize rs2
sll x24, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x7, 0xffffffff # initialize rs1
li x3, 0x00000001 # initialize rs2
sll x16, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x25, 0xffffffff # initialize rs1
li x26, 0x00000002 # initialize rs2
sll x3, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x30, 0xffffffff # initialize rs1
li x25, 0x80000000 # initialize rs2
sll x24, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x9, 0xffffffff # initialize rs1
li x13, 0x80000001 # initialize rs2
sll x15, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x11, 0xffffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
sll x17, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x10, 0xffffffff # initialize rs1
li x15, 0x7ffffffe # initialize rs2
sll x3, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0xffffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
sll x15, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x14, 0xffffffff # initialize rs1
li x24, 0xfffffffe # initialize rs2
sll x21, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x17, 0xffffffff # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
sll x23, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x21, 0xffffffff # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
sll x20, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x22, 0xffffffff # initialize rs1
li x12, 0x55555555 # initialize rs2
sll x7, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x25, 0xfffffffe # initialize rs1
li x19, 0x00000000 # initialize rs2
sll x13, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x18, 0xfffffffe # initialize rs1
li x30, 0x00000001 # initialize rs2
sll x25, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x7, 0xfffffffe # initialize rs1
li x1, 0x00000002 # initialize rs2
sll x23, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x26, 0xfffffffe # initialize rs1
li x15, 0x80000000 # initialize rs2
sll x18, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x3, 0xfffffffe # initialize rs1
li x26, 0x80000001 # initialize rs2
sll x28, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x6, 0xfffffffe # initialize rs1
li x3, 0x7fffffff # initialize rs2
sll x28, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x15, 0xfffffffe # initialize rs1
li x14, 0x7ffffffe # initialize rs2
sll x12, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x17, 0xfffffffe # initialize rs1
li x1, 0xffffffff # initialize rs2
sll x29, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x26, 0xfffffffe # initialize rs1
li x5, 0xfffffffe # initialize rs2
sll x31, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x5, 0xfffffffe # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
sll x31, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x13, 0xfffffffe # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
sll x26, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x25, 0xfffffffe # initialize rs1
li x15, 0x55555555 # initialize rs2
sll x16, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x25, 0x5bbc8872 # initialize rs1
li x15, 0x00000000 # initialize rs2
sll x13, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x22, 0x5bbc8872 # initialize rs1
li x18, 0x00000001 # initialize rs2
sll x28, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x31, 0x5bbc8872 # initialize rs1
li x5, 0x00000002 # initialize rs2
sll x9, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x31, 0x5bbc8872 # initialize rs1
li x21, 0x80000000 # initialize rs2
sll x19, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x28, 0x5bbc8872 # initialize rs1
li x24, 0x80000001 # initialize rs2
sll x12, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x25, 0x5bbc8872 # initialize rs1
li x16, 0x7fffffff # initialize rs2
sll x19, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x19, 0x5bbc8872 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
sll x7, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x25, 0x5bbc8872 # initialize rs1
li x17, 0xffffffff # initialize rs2
sll x10, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x30, 0x5bbc8872 # initialize rs1
li x11, 0xfffffffe # initialize rs2
sll x24, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x31, 0x5bbc8872 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
sll x24, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x19, 0x5bbc8872 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sll x6, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x12, 0x5bbc8872 # initialize rs1
li x3, 0x55555555 # initialize rs2
sll x8, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x31, 0xaaaaaaaa # initialize rs1
li x25, 0x00000000 # initialize rs2
sll x18, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x20, 0xaaaaaaaa # initialize rs1
li x31, 0x00000001 # initialize rs2
sll x8, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x15, 0xaaaaaaaa # initialize rs1
li x27, 0x00000002 # initialize rs2
sll x21, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x31, 0xaaaaaaaa # initialize rs1
li x28, 0x80000000 # initialize rs2
sll x21, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x28, 0xaaaaaaaa # initialize rs1
li x25, 0x80000001 # initialize rs2
sll x20, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x1, 0xaaaaaaaa # initialize rs1
li x5, 0x7fffffff # initialize rs2
sll x30, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x19, 0xaaaaaaaa # initialize rs1
li x25, 0x7ffffffe # initialize rs2
sll x21, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x24, 0xaaaaaaaa # initialize rs1
li x19, 0xffffffff # initialize rs2
sll x28, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x25, 0xaaaaaaaa # initialize rs1
li x16, 0xfffffffe # initialize rs2
sll x28, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x25, 0xaaaaaaaa # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
sll x27, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x18, 0xaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
sll x28, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x1, 0xaaaaaaaa # initialize rs1
li x7, 0x55555555 # initialize rs2
sll x5, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x27, 0x55555555 # initialize rs1
li x30, 0x00000000 # initialize rs2
sll x26, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x31, 0x55555555 # initialize rs1
li x6, 0x00000001 # initialize rs2
sll x28, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x25, 0x55555555 # initialize rs1
li x12, 0x00000002 # initialize rs2
sll x29, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x7, 0x55555555 # initialize rs1
li x20, 0x80000000 # initialize rs2
sll x29, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x9, 0x55555555 # initialize rs1
li x7, 0x80000001 # initialize rs2
sll x10, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x19, 0x55555555 # initialize rs1
li x1, 0x7fffffff # initialize rs2
sll x31, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x29, 0x55555555 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
sll x16, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x1, 0x55555555 # initialize rs1
li x16, 0xffffffff # initialize rs2
sll x22, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x10, 0x55555555 # initialize rs1
li x13, 0xfffffffe # initialize rs2
sll x28, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x19, 0x55555555 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sll x10, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x1, 0x55555555 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
sll x20, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x16, 0x55555555 # initialize rs1
li x17, 0x55555555 # initialize rs2
sll x29, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xab828af9 # initialize rs1
li x0, 0xa0030e7f # initialize rs2
sll x14, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xea139575 # initialize rs1
li x1, 0x7639ea67 # initialize rs2
sll x14, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xb1adcf13 # initialize rs1
li x2, 0x35ef6940 # initialize rs2
sll x29, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xc5b6a60c # initialize rs1
li x3, 0xbc7ab025 # initialize rs2
sll x25, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x47089cc3 # initialize rs1
li x4, 0x848ea37b # initialize rs2
sll x6, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdf8e4ab5 # initialize rs1
li x5, 0x5d00b1b0 # initialize rs2
sll x12, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc0f50da5 # initialize rs1
li x6, 0xa5b20b5e # initialize rs2
sll x10, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa5b97e0d # initialize rs1
li x7, 0x83e70867 # initialize rs2
sll x10, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x940c9f91 # initialize rs1
li x8, 0x09d9d43a # initialize rs2
sll x7, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xca962f39 # initialize rs1
li x9, 0x09e133e2 # initialize rs2
sll x5, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x3ee2f4c4 # initialize rs1
li x10, 0x7b6bf888 # initialize rs2
sll x12, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xbe7f5fc7 # initialize rs1
li x11, 0xce93e204 # initialize rs2
sll x16, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xacf4e2d0 # initialize rs1
li x12, 0x5e0b6ddb # initialize rs2
sll x9, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x58375c21 # initialize rs1
li x13, 0x4c7d861f # initialize rs2
sll x27, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9a7e1d68 # initialize rs1
li x14, 0xb929e9a1 # initialize rs2
sll x31, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xdb9b851b # initialize rs1
li x15, 0x383bea78 # initialize rs2
sll x14, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x1df71a40 # initialize rs1
li x16, 0x966895eb # initialize rs2
sll x13, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x4bdaed6e # initialize rs1
li x17, 0x76ae9380 # initialize rs2
sll x20, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x6c3c1263 # initialize rs1
li x18, 0x5677c028 # initialize rs2
sll x20, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x9af5a52f # initialize rs1
li x19, 0xe2181621 # initialize rs2
sll x15, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x2d40dc92 # initialize rs1
li x20, 0xaf79fb96 # initialize rs2
sll x12, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x1822e623 # initialize rs1
li x21, 0xb63d18b1 # initialize rs2
sll x10, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xb0ab074f # initialize rs1
li x22, 0xe85dfabb # initialize rs2
sll x27, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xedc90a74 # initialize rs1
li x23, 0x7fb72aa8 # initialize rs2
sll x16, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x0915b325 # initialize rs1
li x24, 0x7793870e # initialize rs2
sll x20, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x2d271542 # initialize rs1
li x25, 0xa66f94e1 # initialize rs2
sll x3, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xe3d54538 # initialize rs1
li x26, 0xa328cc67 # initialize rs2
sll x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x2f12e916 # initialize rs1
li x27, 0x4d8c8657 # initialize rs2
sll x24, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x1c1c6435 # initialize rs1
li x28, 0x79a4618a # initialize rs2
sll x8, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x08aa08c6 # initialize rs1
li x29, 0x1de357ac # initialize rs2
sll x27, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xcbb05014 # initialize rs1
li x30, 0x1d6f12a9 # initialize rs2
sll x7, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xd452e83b # initialize rs1
li x31, 0x3b8ff1b0 # initialize rs2
sll x7, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc9896b18 # initialize rs1
li x10, 0x7403ffde # initialize rs2
sll x0, x0, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x5c6a5726 # initialize rs1
li x14, 0x384deca4 # initialize rs2
sll x1, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x98b606d1 # initialize rs1
li x23, 0x024547f9 # initialize rs2
sll x2, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x172f833c # initialize rs1
li x18, 0x45b345a5 # initialize rs2
sll x3, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4c40a454 # initialize rs1
li x25, 0xa28b6460 # initialize rs2
sll x4, x4, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x54fc0e90 # initialize rs1
li x31, 0x10255337 # initialize rs2
sll x5, x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd346e7c2 # initialize rs1
li x18, 0x2e24b4b0 # initialize rs2
sll x6, x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x68c57652 # initialize rs1
li x25, 0x6302249a # initialize rs2
sll x7, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd2eda563 # initialize rs1
li x7, 0x24dc9672 # initialize rs2
sll x8, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf0365455 # initialize rs1
li x18, 0x7200bb0f # initialize rs2
sll x9, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x759714aa # initialize rs1
li x30, 0x8607302d # initialize rs2
sll x10, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x4229a925 # initialize rs1
li x18, 0x4defaeee # initialize rs2
sll x11, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x0221b438 # initialize rs1
li x31, 0x9e22994b # initialize rs2
sll x12, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x863e839b # initialize rs1
li x16, 0x3d83a43b # initialize rs2
sll x13, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x526c95f7 # initialize rs1
li x15, 0x26f5e6e5 # initialize rs2
sll x14, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x6023aaad # initialize rs1
li x30, 0x472197a7 # initialize rs2
sll x15, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x0b660710 # initialize rs1
li x25, 0xb4b61131 # initialize rs2
sll x16, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xf2adcde6 # initialize rs1
li x19, 0xfb9b9fcb # initialize rs2
sll x17, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xa828e3cd # initialize rs1
li x11, 0x5881fa74 # initialize rs2
sll x18, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x373744e3 # initialize rs1
li x3, 0x945ee3ae # initialize rs2
sll x19, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa9866f09 # initialize rs1
li x1, 0x1aa6bd1f # initialize rs2
sll x20, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd80902d7 # initialize rs1
li x13, 0x0594170b # initialize rs2
sll x21, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x750e9806 # initialize rs1
li x2, 0xcdae3df4 # initialize rs2
sll x22, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xf206fe4e # initialize rs1
li x26, 0xb8836faf # initialize rs2
sll x23, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xf7b87e07 # initialize rs1
li x20, 0x19bbab34 # initialize rs2
sll x24, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xeddc70e4 # initialize rs1
li x23, 0x4e1ab2ce # initialize rs2
sll x25, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x79a32f49 # initialize rs1
li x30, 0xf358985d # initialize rs2
sll x26, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xdeca4218 # initialize rs1
li x5, 0x044bc680 # initialize rs2
sll x27, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa6427aa2 # initialize rs1
li x22, 0xa17e6183 # initialize rs2
sll x28, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf8c71c95 # initialize rs1
li x17, 0x3d76c3f2 # initialize rs2
sll x29, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xbe293b07 # initialize rs1
li x28, 0x90acfedb # initialize rs2
sll x30, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x67cf4605 # initialize rs1
li x7, 0x0e87bba5 # initialize rs2
sll x31, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x3, 0xdf7089df # initialize rs1
li x0, 0x2b92d42e # initialize rs2
sll x0, x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x15, 0xcb0a637b # initialize rs1
li x1, 0xe56e2ff6 # initialize rs2
sll x1, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x30, 0xa0699f8c # initialize rs1
li x2, 0x668361ba # initialize rs2
sll x2, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x10, 0x39192c2d # initialize rs1
li x3, 0x793ea865 # initialize rs2
sll x3, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0x5986d45b # initialize rs1
li x4, 0xbbaccbed # initialize rs2
sll x4, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x500f05ed # initialize rs1
li x5, 0x295cb5c1 # initialize rs2
sll x5, x9, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xf33c92e8 # initialize rs1
li x6, 0xb63c0006 # initialize rs2
sll x6, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x98a7dd71 # initialize rs1
li x7, 0x576c6c94 # initialize rs2
sll x7, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x10, 0xe968284a # initialize rs1
li x8, 0x9d4eb424 # initialize rs2
sll x8, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x30, 0xcc23fd36 # initialize rs1
li x9, 0x549358ae # initialize rs2
sll x9, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x13, 0x0b37d5cf # initialize rs1
li x10, 0xa2fc670c # initialize rs2
sll x10, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x6, 0x8fc15b86 # initialize rs1
li x11, 0x4f63feee # initialize rs2
sll x11, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x31, 0x64a971bf # initialize rs1
li x12, 0xfd1ded1e # initialize rs2
sll x12, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x2, 0x7ae048fc # initialize rs1
li x13, 0x59daba55 # initialize rs2
sll x13, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x28, 0x98339ac4 # initialize rs1
li x14, 0x742e2bc1 # initialize rs2
sll x14, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x30, 0x7d67e41c # initialize rs1
li x15, 0x8cd2e737 # initialize rs2
sll x15, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x7, 0x60c55d14 # initialize rs1
li x16, 0x6029f472 # initialize rs2
sll x16, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x15, 0x0b062810 # initialize rs1
li x17, 0xd1a86de4 # initialize rs2
sll x17, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x30, 0x60959835 # initialize rs1
li x18, 0x147e4ad8 # initialize rs2
sll x18, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x11, 0x89652d32 # initialize rs1
li x19, 0xc2147f2d # initialize rs2
sll x19, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x7, 0xf1d45064 # initialize rs1
li x20, 0xd1fd8051 # initialize rs2
sll x20, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x3ba346d0 # initialize rs1
li x21, 0x6e8bb161 # initialize rs2
sll x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x21, 0x8b4de1b9 # initialize rs1
li x22, 0x0f25ac51 # initialize rs2
sll x22, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x15, 0xe6d4f167 # initialize rs1
li x23, 0x3bb427f6 # initialize rs2
sll x23, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x3, 0x1148892b # initialize rs1
li x24, 0xe7d2c371 # initialize rs2
sll x24, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x7, 0xd8da346d # initialize rs1
li x25, 0xfb8a8a6a # initialize rs2
sll x25, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x25, 0x327819b4 # initialize rs1
li x26, 0x2ae8e17e # initialize rs2
sll x26, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x18, 0x5a999a73 # initialize rs1
li x27, 0x57a4000a # initialize rs2
sll x27, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x21, 0xe5c7405c # initialize rs1
li x28, 0xc719700e # initialize rs2
sll x28, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x5, 0x1964ffbb # initialize rs1
li x29, 0x0c71e393 # initialize rs2
sll x29, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x17, 0x454d8042 # initialize rs1
li x30, 0xb0dbefca # initialize rs2
sll x30, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x3, 0x5052ca74 # initialize rs1
li x31, 0x6f5e213d # initialize rs2
sll x31, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xa5e6321f # initialize rs1
li x0, 0xa29f77a0 # initialize rs2
sll x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xdfc4c559 # initialize rs1
li x1, 0x871952ff # initialize rs2
sll x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x99b3998a # initialize rs1
li x2, 0xbd96a331 # initialize rs2
sll x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x5cea8b37 # initialize rs1
li x3, 0xb51a0ac3 # initialize rs2
sll x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9a3dfa94 # initialize rs1
li x4, 0x0efed169 # initialize rs2
sll x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x49eb90fd # initialize rs1
li x5, 0xbaad9194 # initialize rs2
sll x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9288d979 # initialize rs1
li x6, 0x929e2349 # initialize rs2
sll x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdee4ce7f # initialize rs1
li x7, 0x2092feb0 # initialize rs2
sll x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x4982fcce # initialize rs1
li x8, 0xec0783b6 # initialize rs2
sll x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xa89c39de # initialize rs1
li x9, 0xc797a3cd # initialize rs2
sll x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xff7c73b6 # initialize rs1
li x10, 0x4fbe529d # initialize rs2
sll x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x11059020 # initialize rs1
li x11, 0xd6712fa9 # initialize rs2
sll x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x4b54c9fa # initialize rs1
li x12, 0x86631965 # initialize rs2
sll x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x6394fe81 # initialize rs1
li x13, 0x44e11126 # initialize rs2
sll x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x40c83b85 # initialize rs1
li x14, 0xba55878f # initialize rs2
sll x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x13688f71 # initialize rs1
li x15, 0x272802a2 # initialize rs2
sll x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x8195213c # initialize rs1
li x16, 0x2ebb1ffa # initialize rs2
sll x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x0423b26a # initialize rs1
li x17, 0xd2fe184d # initialize rs2
sll x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xcd19b5d4 # initialize rs1
li x18, 0x20f6f3fd # initialize rs2
sll x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xed5aa8cf # initialize rs1
li x19, 0x124642a3 # initialize rs2
sll x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xe542cfad # initialize rs1
li x20, 0x47ff2d0c # initialize rs2
sll x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x513b2931 # initialize rs1
li x21, 0xf866aebf # initialize rs2
sll x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xa234146b # initialize rs1
li x22, 0xb5ecc5ea # initialize rs2
sll x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x4e8a7cdb # initialize rs1
li x23, 0x9337ebd9 # initialize rs2
sll x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x257d1849 # initialize rs1
li x24, 0xc8095bcb # initialize rs2
sll x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xf632350b # initialize rs1
li x25, 0xd7dea422 # initialize rs2
sll x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xa65a1fbe # initialize rs1
li x26, 0x0ea5e695 # initialize rs2
sll x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xefbb5ee5 # initialize rs1
li x27, 0x42511b64 # initialize rs2
sll x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x6d11789b # initialize rs1
li x28, 0x9362b071 # initialize rs2
sll x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x40e1113d # initialize rs1
li x29, 0xe2880677 # initialize rs2
sll x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xeadff080 # initialize rs1
li x30, 0x581b8ddd # initialize rs2
sll x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xfdb07a21 # initialize rs1
li x31, 0x5311654d # initialize rs2
sll x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x8, x15 # perform first operation
sll x6, x31, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x21, x20 # perform first operation
sll x29, x17, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x21, x19 # perform first operation
sll x7, x28, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x22, x13 # perform first operation
sll x13, x9, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x20, x6 # perform first operation
sll x20, x22, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x15, x27 # perform first operation
sll x27, x5, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x21, x26 # perform first operation
sll x19, x29, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x27, x31 # perform first operation
sll x26, x5, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x3, x31 # perform first operation
sll x19, x17, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x5, x19 # perform first operation
sll x5, x26, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x26, x13 # perform first operation
sll x13, x24, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x15, x19 # perform first operation
sll x27, x7, x13 # perform second (triggering) operation

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
