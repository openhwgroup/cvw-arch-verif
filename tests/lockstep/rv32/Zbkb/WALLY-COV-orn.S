///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbkb/WALLY-COV-orn.S
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
li x0, 0x35d68583 # initialize rs1
li x15, 0x9fbd3b8f # initialize rs2
orn x1, x0, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x62b0cbd8 # initialize rs1
li x15, 0xea550508 # initialize rs2
orn x22, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xac64f405 # initialize rs1
li x6, 0x191ed206 # initialize rs2
orn x20, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x13711581 # initialize rs1
li x20, 0xc289a6a7 # initialize rs2
orn x13, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xbbbeb937 # initialize rs1
li x28, 0x358d3f3a # initialize rs2
orn x20, x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x81877e5a # initialize rs1
li x8, 0xa371ce2b # initialize rs2
orn x2, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x08ef0f05 # initialize rs1
li x9, 0x990393de # initialize rs2
orn x25, x6, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x07dcd558 # initialize rs1
li x26, 0xda910b25 # initialize rs2
orn x23, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x3d0db809 # initialize rs1
li x5, 0x25b27d69 # initialize rs2
orn x9, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x8fb2cf1e # initialize rs1
li x22, 0x18691d43 # initialize rs2
orn x13, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xe6ddfdc2 # initialize rs1
li x7, 0xa64b1c84 # initialize rs2
orn x6, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xd9697d21 # initialize rs1
li x30, 0xe8f110bb # initialize rs2
orn x8, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x8710edb9 # initialize rs1
li x26, 0x73eaa497 # initialize rs2
orn x30, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa5859068 # initialize rs1
li x22, 0xf3ed2636 # initialize rs2
orn x24, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x450ea0e0 # initialize rs1
li x9, 0x91d43d38 # initialize rs2
orn x13, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x04b66c7d # initialize rs1
li x6, 0x60233f45 # initialize rs2
orn x16, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x94125be9 # initialize rs1
li x6, 0x28acc5c3 # initialize rs2
orn x22, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x4d1c7108 # initialize rs1
li x6, 0xd1b74284 # initialize rs2
orn x7, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x4fd2da08 # initialize rs1
li x25, 0x95c5e5a2 # initialize rs2
orn x9, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x65c755a7 # initialize rs1
li x29, 0xe7e3a3b2 # initialize rs2
orn x5, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x02fe2d79 # initialize rs1
li x7, 0x24455c33 # initialize rs2
orn x18, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x5f10428e # initialize rs1
li x14, 0xbe7fd573 # initialize rs2
orn x13, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x2b840653 # initialize rs1
li x3, 0xd58b5f0e # initialize rs2
orn x11, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x7af0c7f1 # initialize rs1
li x30, 0x4b71b35e # initialize rs2
orn x19, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xe7f463cd # initialize rs1
li x22, 0xcec84b0c # initialize rs2
orn x30, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x2cd59f79 # initialize rs1
li x29, 0xb6d55352 # initialize rs2
orn x24, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x571a0d08 # initialize rs1
li x20, 0x7c17cc6f # initialize rs2
orn x27, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x21ac44d3 # initialize rs1
li x19, 0xff40e705 # initialize rs2
orn x22, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x280cf0e3 # initialize rs1
li x25, 0x26ecd0e9 # initialize rs2
orn x18, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0286adc9 # initialize rs1
li x7, 0xe193e0a3 # initialize rs2
orn x14, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xfb29768e # initialize rs1
li x7, 0x40f45029 # initialize rs2
orn x15, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x46166dd0 # initialize rs1
li x20, 0x2f5f8002 # initialize rs2
orn x3, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x58d5da2d # initialize rs1
li x0, 0xb07e918b # initialize rs2
orn x11, x20, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x22, 0xe08c4a16 # initialize rs1
li x1, 0xa259f52c # initialize rs2
orn x24, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x11, 0x758121ba # initialize rs1
li x2, 0x37a3a434 # initialize rs2
orn x12, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x10, 0xbba13549 # initialize rs1
li x3, 0x9779e938 # initialize rs2
orn x16, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0x0e98fbdc # initialize rs1
li x4, 0x6c1398e5 # initialize rs2
orn x19, x3, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x043356f3 # initialize rs1
li x5, 0x5b2bdfa1 # initialize rs2
orn x29, x3, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x5ba5199a # initialize rs1
li x6, 0xf4e11a33 # initialize rs2
orn x4, x9, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x0074edb1 # initialize rs1
li x7, 0x832c9351 # initialize rs2
orn x21, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x29, 0xd8390763 # initialize rs1
li x8, 0x6e396382 # initialize rs2
orn x31, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x1, 0x9351e0ff # initialize rs1
li x9, 0xe1d03e40 # initialize rs2
orn x11, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x17, 0x76096798 # initialize rs1
li x10, 0x4f5a4b14 # initialize rs2
orn x21, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0x7e61ca95 # initialize rs1
li x11, 0x30e1c1fa # initialize rs2
orn x13, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x1, 0x6a0af178 # initialize rs1
li x12, 0xafa80cf5 # initialize rs2
orn x24, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0x784f3b4b # initialize rs1
li x13, 0x4c12cadb # initialize rs2
orn x9, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x26, 0xd2cf6d59 # initialize rs1
li x14, 0x05ebbebb # initialize rs2
orn x24, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x16, 0x4eff20c7 # initialize rs1
li x15, 0xcdbe1e0e # initialize rs2
orn x2, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0xf0d13ff4 # initialize rs1
li x16, 0x8c658bb6 # initialize rs2
orn x5, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x13, 0x62320903 # initialize rs1
li x17, 0xfc9db631 # initialize rs2
orn x31, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x25, 0x5b35ce40 # initialize rs1
li x18, 0xc801e693 # initialize rs2
orn x29, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x29, 0x3831b052 # initialize rs1
li x19, 0x1263a774 # initialize rs2
orn x2, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x15, 0xde276018 # initialize rs1
li x20, 0xc133486b # initialize rs2
orn x7, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x31, 0x13d92597 # initialize rs1
li x21, 0x9bcfa163 # initialize rs2
orn x23, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x25, 0x5d95e90c # initialize rs1
li x22, 0x1dc69551 # initialize rs2
orn x11, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x8, 0x09e05268 # initialize rs1
li x23, 0xf93b8a20 # initialize rs2
orn x1, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x29, 0x36e2d60c # initialize rs1
li x24, 0xeb710dac # initialize rs2
orn x12, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x14, 0xaa930606 # initialize rs1
li x25, 0xf0f90b5d # initialize rs2
orn x22, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x6, 0x239263d1 # initialize rs1
li x26, 0xfffae18e # initialize rs2
orn x3, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x20, 0xc091cd73 # initialize rs1
li x27, 0x55b4edc2 # initialize rs2
orn x13, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x17, 0x9560e72c # initialize rs1
li x28, 0xd66fd723 # initialize rs2
orn x31, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x27, 0x4ef28877 # initialize rs1
li x29, 0xee17b6c2 # initialize rs2
orn x1, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x12, 0x4a73ff5e # initialize rs1
li x30, 0xb1e10825 # initialize rs2
orn x8, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x21, 0x8f515bbf # initialize rs1
li x31, 0xa5b7a9c8 # initialize rs2
orn x16, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 252)

# Testcase cp_rd (Test destination rd = x0)
li x6, 0x07b60f4a # initialize rs1
li x24, 0x1d9b5538 # initialize rs2
orn x0, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0x9dae91d1 # initialize rs1
li x16, 0xcf17d278 # initialize rs2
orn x1, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xe093cad1 # initialize rs1
li x18, 0x4729fa55 # initialize rs2
orn x2, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x12, 0x11647233 # initialize rs1
li x21, 0x3e38512a # initialize rs2
orn x3, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0xfe496166 # initialize rs1
li x18, 0x675454a6 # initialize rs2
orn x4, x30, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0xad876b74 # initialize rs1
li x28, 0x135f46fe # initialize rs2
orn x5, x11, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0x9f8e2960 # initialize rs1
li x27, 0xcb5cfef4 # initialize rs2
orn x6, x14, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x72446403 # initialize rs1
li x29, 0x3395af78 # initialize rs2
orn x7, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x2, 0xc1c12c1c # initialize rs1
li x26, 0xe4b59af6 # initialize rs2
orn x8, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x27, 0xa8393ae1 # initialize rs1
li x24, 0xea8a0292 # initialize rs2
orn x9, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x29, 0xc0386db7 # initialize rs1
li x22, 0x905e1856 # initialize rs2
orn x10, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x16, 0xe52af749 # initialize rs1
li x17, 0xf5b3dc99 # initialize rs2
orn x11, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0x8a971d3c # initialize rs1
li x11, 0x52a8a89f # initialize rs2
orn x12, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0xeb5b3d79 # initialize rs1
li x12, 0x50e6e558 # initialize rs2
orn x13, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x18, 0x366d37da # initialize rs1
li x11, 0x8f6051c2 # initialize rs2
orn x14, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x25, 0x70d9914a # initialize rs1
li x20, 0x3fdbb4cb # initialize rs2
orn x15, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x23, 0x55ecc433 # initialize rs1
li x9, 0x480e8acd # initialize rs2
orn x16, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x9, 0x0388d540 # initialize rs1
li x13, 0x837c034c # initialize rs2
orn x17, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0xcff79b9e # initialize rs1
li x24, 0x44f34fe5 # initialize rs2
orn x18, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x16, 0xd83aedcb # initialize rs1
li x13, 0x0d6349ec # initialize rs2
orn x19, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x3, 0xd631f462 # initialize rs1
li x14, 0x53ab5dd8 # initialize rs2
orn x20, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0xbf56a381 # initialize rs1
li x14, 0x32a81a0c # initialize rs2
orn x21, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0xf1eab7d0 # initialize rs1
li x3, 0xc2232f92 # initialize rs2
orn x22, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x9, 0x36a29a35 # initialize rs1
li x15, 0xc39acf75 # initialize rs2
orn x23, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0x8309970a # initialize rs1
li x10, 0xee96cea6 # initialize rs2
orn x24, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0x9a442e1c # initialize rs1
li x24, 0xdec544a1 # initialize rs2
orn x25, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x18, 0x791ca639 # initialize rs1
li x2, 0xffc90a5c # initialize rs2
orn x26, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x1, 0x3a8cdef8 # initialize rs1
li x28, 0xcac9f627 # initialize rs2
orn x27, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x23, 0x618f3515 # initialize rs1
li x6, 0x748fb221 # initialize rs2
orn x28, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x3, 0xf3ff161b # initialize rs1
li x24, 0x18e43d15 # initialize rs2
orn x29, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x22, 0xf08ff1e1 # initialize rs1
li x10, 0x6c70d0e3 # initialize rs2
orn x30, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x10, 0xcd94cb60 # initialize rs1
li x20, 0x3ad76ff2 # initialize rs2
orn x31, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x18, 0x00000000 # initialize rs1
li x7, 0xf0023e83 # initialize rs2
orn x6, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x00000001 # initialize rs1
li x10, 0xf2eab1af # initialize rs2
orn x11, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0x00000002 # initialize rs1
li x26, 0xb57d4ab4 # initialize rs2
orn x20, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x6, 0x80000000 # initialize rs1
li x28, 0xc101e77a # initialize rs2
orn x27, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x25, 0x80000001 # initialize rs1
li x14, 0xa34935b8 # initialize rs2
orn x18, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x15, 0x7fffffff # initialize rs1
li x9, 0x2e265f27 # initialize rs2
orn x8, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x1, 0x7ffffffe # initialize rs1
li x16, 0x6535ac1f # initialize rs2
orn x24, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0xffffffff # initialize rs1
li x12, 0xb56d0b70 # initialize rs2
orn x8, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0xfffffffe # initialize rs1
li x5, 0xeab2023a # initialize rs2
orn x26, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x18, 0x5bbc8872 # initialize rs1
li x25, 0x2ca86e5e # initialize rs2
orn x26, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0xaaaaaaaa # initialize rs1
li x2, 0xf376bda8 # initialize rs2
orn x23, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x9, 0x55555555 # initialize rs1
li x8, 0x09793528 # initialize rs2
orn x25, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x22960db0 # initialize rs1
li x3, 0x00000000 # initialize rs2
orn x16, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0x2c2bd5eb # initialize rs1
li x19, 0x00000001 # initialize rs2
orn x16, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x14, 0xa42c4daf # initialize rs1
li x21, 0x00000002 # initialize rs2
orn x25, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x3, 0xd0052340 # initialize rs1
li x11, 0x80000000 # initialize rs2
orn x29, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x31, 0xf97910e7 # initialize rs1
li x6, 0x80000001 # initialize rs2
orn x17, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x26, 0x977ee08f # initialize rs1
li x22, 0x7fffffff # initialize rs2
orn x15, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x2, 0x38320dde # initialize rs1
li x7, 0x7ffffffe # initialize rs2
orn x30, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0x92ef8b9e # initialize rs1
li x14, 0xffffffff # initialize rs2
orn x23, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0x0f996c0a # initialize rs1
li x9, 0xfffffffe # initialize rs2
orn x22, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x8, 0x2762d21d # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
orn x20, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x31, 0x23fba35c # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
orn x7, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x31, 0xe1dcfe35 # initialize rs1
li x15, 0x55555555 # initialize rs2
orn x27, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x13, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
orn x20, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x8, 0x00000000 # initialize rs1
li x21, 0x00000001 # initialize rs2
orn x6, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x18, 0x00000000 # initialize rs1
li x9, 0x00000002 # initialize rs2
orn x19, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x16, 0x00000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
orn x5, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x19, 0x00000000 # initialize rs1
li x9, 0x80000001 # initialize rs2
orn x24, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x27, 0x00000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
orn x31, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x31, 0x00000000 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
orn x12, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x11, 0x00000000 # initialize rs1
li x21, 0xffffffff # initialize rs2
orn x19, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x00000000 # initialize rs1
li x26, 0xfffffffe # initialize rs2
orn x23, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x19, 0x00000000 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
orn x20, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x28, 0x00000000 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
orn x24, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x20, 0x00000000 # initialize rs1
li x16, 0x55555555 # initialize rs2
orn x1, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x6, 0x00000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
orn x7, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x25, 0x00000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
orn x26, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x28, 0x00000001 # initialize rs1
li x24, 0x00000002 # initialize rs2
orn x10, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x10, 0x00000001 # initialize rs1
li x8, 0x80000000 # initialize rs2
orn x12, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x25, 0x00000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
orn x26, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x26, 0x00000001 # initialize rs1
li x6, 0x7fffffff # initialize rs2
orn x25, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x13, 0x00000001 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
orn x18, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x30, 0x00000001 # initialize rs1
li x11, 0xffffffff # initialize rs2
orn x15, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x21, 0x00000001 # initialize rs1
li x9, 0xfffffffe # initialize rs2
orn x1, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x12, 0x00000001 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
orn x19, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x5, 0x00000001 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
orn x24, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x24, 0x00000001 # initialize rs1
li x26, 0x55555555 # initialize rs2
orn x25, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x15, 0x00000002 # initialize rs1
li x10, 0x00000000 # initialize rs2
orn x13, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x3, 0x00000002 # initialize rs1
li x9, 0x00000001 # initialize rs2
orn x28, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x11, 0x00000002 # initialize rs1
li x16, 0x00000002 # initialize rs2
orn x29, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x20, 0x00000002 # initialize rs1
li x21, 0x80000000 # initialize rs2
orn x31, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x1, 0x00000002 # initialize rs1
li x23, 0x80000001 # initialize rs2
orn x26, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x25, 0x00000002 # initialize rs1
li x20, 0x7fffffff # initialize rs2
orn x14, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x17, 0x00000002 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
orn x8, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x8, 0x00000002 # initialize rs1
li x6, 0xffffffff # initialize rs2
orn x13, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x31, 0x00000002 # initialize rs1
li x1, 0xfffffffe # initialize rs2
orn x26, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x11, 0x00000002 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
orn x29, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x3, 0x00000002 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
orn x25, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x19, 0x00000002 # initialize rs1
li x1, 0x55555555 # initialize rs2
orn x16, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x23, 0x80000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
orn x31, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x9, 0x80000000 # initialize rs1
li x19, 0x00000001 # initialize rs2
orn x11, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x3, 0x80000000 # initialize rs1
li x31, 0x00000002 # initialize rs2
orn x2, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x28, 0x80000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
orn x20, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x12, 0x80000000 # initialize rs1
li x31, 0x80000001 # initialize rs2
orn x15, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x27, 0x80000000 # initialize rs1
li x16, 0x7fffffff # initialize rs2
orn x28, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x14, 0x80000000 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
orn x12, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x30, 0x80000000 # initialize rs1
li x26, 0xffffffff # initialize rs2
orn x14, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x5, 0x80000000 # initialize rs1
li x26, 0xfffffffe # initialize rs2
orn x24, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x28, 0x80000000 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
orn x26, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x18, 0x80000000 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
orn x8, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x28, 0x80000000 # initialize rs1
li x3, 0x55555555 # initialize rs2
orn x16, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x23, 0x80000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
orn x10, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x5, 0x80000001 # initialize rs1
li x6, 0x00000001 # initialize rs2
orn x16, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x13, 0x80000001 # initialize rs1
li x23, 0x00000002 # initialize rs2
orn x3, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x23, 0x80000001 # initialize rs1
li x18, 0x80000000 # initialize rs2
orn x15, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x21, 0x80000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
orn x7, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x22, 0x80000001 # initialize rs1
li x15, 0x7fffffff # initialize rs2
orn x1, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x3, 0x80000001 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
orn x21, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x7, 0x80000001 # initialize rs1
li x17, 0xffffffff # initialize rs2
orn x12, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x23, 0x80000001 # initialize rs1
li x18, 0xfffffffe # initialize rs2
orn x19, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x31, 0x80000001 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
orn x6, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x12, 0x80000001 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
orn x19, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x2, 0x80000001 # initialize rs1
li x19, 0x55555555 # initialize rs2
orn x30, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x11, 0x7fffffff # initialize rs1
li x29, 0x00000000 # initialize rs2
orn x6, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x23, 0x7fffffff # initialize rs1
li x3, 0x00000001 # initialize rs2
orn x9, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x9, 0x7fffffff # initialize rs1
li x17, 0x00000002 # initialize rs2
orn x7, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x24, 0x7fffffff # initialize rs1
li x11, 0x80000000 # initialize rs2
orn x12, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x6, 0x7fffffff # initialize rs1
li x15, 0x80000001 # initialize rs2
orn x9, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x10, 0x7fffffff # initialize rs1
li x5, 0x7fffffff # initialize rs2
orn x24, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x16, 0x7fffffff # initialize rs1
li x17, 0x7ffffffe # initialize rs2
orn x19, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x27, 0x7fffffff # initialize rs1
li x10, 0xffffffff # initialize rs2
orn x24, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x21, 0x7fffffff # initialize rs1
li x27, 0xfffffffe # initialize rs2
orn x23, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x21, 0x7fffffff # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
orn x3, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x25, 0x7fffffff # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
orn x9, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x15, 0x7fffffff # initialize rs1
li x18, 0x55555555 # initialize rs2
orn x3, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x16, 0x7ffffffe # initialize rs1
li x19, 0x00000000 # initialize rs2
orn x31, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x9, 0x7ffffffe # initialize rs1
li x20, 0x00000001 # initialize rs2
orn x18, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x5, 0x7ffffffe # initialize rs1
li x20, 0x00000002 # initialize rs2
orn x1, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x13, 0x7ffffffe # initialize rs1
li x7, 0x80000000 # initialize rs2
orn x10, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x17, 0x7ffffffe # initialize rs1
li x29, 0x80000001 # initialize rs2
orn x6, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x30, 0x7ffffffe # initialize rs1
li x28, 0x7fffffff # initialize rs2
orn x20, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x24, 0x7ffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
orn x17, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x19, 0x7ffffffe # initialize rs1
li x17, 0xffffffff # initialize rs2
orn x29, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x26, 0x7ffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
orn x6, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x15, 0x7ffffffe # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
orn x26, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x31, 0x7ffffffe # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
orn x14, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x20, 0x7ffffffe # initialize rs1
li x14, 0x55555555 # initialize rs2
orn x6, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x17, 0xffffffff # initialize rs1
li x23, 0x00000000 # initialize rs2
orn x28, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x21, 0xffffffff # initialize rs1
li x3, 0x00000001 # initialize rs2
orn x10, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x23, 0xffffffff # initialize rs1
li x31, 0x00000002 # initialize rs2
orn x6, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x5, 0xffffffff # initialize rs1
li x10, 0x80000000 # initialize rs2
orn x15, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x16, 0xffffffff # initialize rs1
li x10, 0x80000001 # initialize rs2
orn x6, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x7, 0xffffffff # initialize rs1
li x21, 0x7fffffff # initialize rs2
orn x31, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x10, 0xffffffff # initialize rs1
li x3, 0x7ffffffe # initialize rs2
orn x2, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x23, 0xffffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
orn x1, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x1, 0xffffffff # initialize rs1
li x27, 0xfffffffe # initialize rs2
orn x25, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x16, 0xffffffff # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
orn x7, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x2, 0xffffffff # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
orn x15, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x17, 0xffffffff # initialize rs1
li x31, 0x55555555 # initialize rs2
orn x5, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x15, 0xfffffffe # initialize rs1
li x26, 0x00000000 # initialize rs2
orn x14, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x19, 0xfffffffe # initialize rs1
li x17, 0x00000001 # initialize rs2
orn x8, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x31, 0xfffffffe # initialize rs1
li x16, 0x00000002 # initialize rs2
orn x18, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x2, 0xfffffffe # initialize rs1
li x7, 0x80000000 # initialize rs2
orn x24, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x7, 0xfffffffe # initialize rs1
li x27, 0x80000001 # initialize rs2
orn x10, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x27, 0xfffffffe # initialize rs1
li x20, 0x7fffffff # initialize rs2
orn x1, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x31, 0xfffffffe # initialize rs1
li x9, 0x7ffffffe # initialize rs2
orn x26, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x15, 0xfffffffe # initialize rs1
li x5, 0xffffffff # initialize rs2
orn x9, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x15, 0xfffffffe # initialize rs1
li x5, 0xfffffffe # initialize rs2
orn x18, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x3, 0xfffffffe # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
orn x9, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x31, 0xfffffffe # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
orn x14, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x12, 0xfffffffe # initialize rs1
li x13, 0x55555555 # initialize rs2
orn x28, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x30, 0x5bbc8872 # initialize rs1
li x1, 0x00000000 # initialize rs2
orn x28, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x10, 0x5bbc8872 # initialize rs1
li x18, 0x00000001 # initialize rs2
orn x2, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x5, 0x5bbc8872 # initialize rs1
li x23, 0x00000002 # initialize rs2
orn x8, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x26, 0x5bbc8872 # initialize rs1
li x1, 0x80000000 # initialize rs2
orn x2, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x3, 0x5bbc8872 # initialize rs1
li x12, 0x80000001 # initialize rs2
orn x28, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x20, 0x5bbc8872 # initialize rs1
li x22, 0x7fffffff # initialize rs2
orn x23, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x17, 0x5bbc8872 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
orn x27, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x24, 0x5bbc8872 # initialize rs1
li x18, 0xffffffff # initialize rs2
orn x20, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x10, 0x5bbc8872 # initialize rs1
li x20, 0xfffffffe # initialize rs2
orn x24, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x14, 0x5bbc8872 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
orn x23, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x7, 0x5bbc8872 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
orn x6, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x8, 0x5bbc8872 # initialize rs1
li x21, 0x55555555 # initialize rs2
orn x18, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x27, 0xaaaaaaaa # initialize rs1
li x12, 0x00000000 # initialize rs2
orn x19, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x11, 0xaaaaaaaa # initialize rs1
li x27, 0x00000001 # initialize rs2
orn x8, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x1, 0xaaaaaaaa # initialize rs1
li x14, 0x00000002 # initialize rs2
orn x23, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x13, 0xaaaaaaaa # initialize rs1
li x19, 0x80000000 # initialize rs2
orn x24, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x12, 0xaaaaaaaa # initialize rs1
li x29, 0x80000001 # initialize rs2
orn x2, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x13, 0xaaaaaaaa # initialize rs1
li x5, 0x7fffffff # initialize rs2
orn x14, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x17, 0xaaaaaaaa # initialize rs1
li x8, 0x7ffffffe # initialize rs2
orn x20, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x25, 0xaaaaaaaa # initialize rs1
li x9, 0xffffffff # initialize rs2
orn x22, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x18, 0xaaaaaaaa # initialize rs1
li x15, 0xfffffffe # initialize rs2
orn x24, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x26, 0xaaaaaaaa # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
orn x17, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x28, 0xaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
orn x31, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x20, 0xaaaaaaaa # initialize rs1
li x31, 0x55555555 # initialize rs2
orn x25, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x3, 0x55555555 # initialize rs1
li x31, 0x00000000 # initialize rs2
orn x23, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x2, 0x55555555 # initialize rs1
li x24, 0x00000001 # initialize rs2
orn x27, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x23, 0x55555555 # initialize rs1
li x5, 0x00000002 # initialize rs2
orn x31, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x25, 0x55555555 # initialize rs1
li x21, 0x80000000 # initialize rs2
orn x29, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x19, 0x55555555 # initialize rs1
li x7, 0x80000001 # initialize rs2
orn x15, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x10, 0x55555555 # initialize rs1
li x19, 0x7fffffff # initialize rs2
orn x31, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x27, 0x55555555 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
orn x23, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x14, 0x55555555 # initialize rs1
li x7, 0xffffffff # initialize rs2
orn x22, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x16, 0x55555555 # initialize rs1
li x23, 0xfffffffe # initialize rs2
orn x28, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x25, 0x55555555 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
orn x3, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x12, 0x55555555 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
orn x20, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x17, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
orn x9, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x3774dead # initialize rs1
li x0, 0x8634be26 # initialize rs2
orn x11, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x1f340b38 # initialize rs1
li x1, 0xdaee35f8 # initialize rs2
orn x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x10b3219b # initialize rs1
li x2, 0xb01887db # initialize rs2
orn x7, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xc994076f # initialize rs1
li x3, 0x041e7839 # initialize rs2
orn x12, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xbab83435 # initialize rs1
li x4, 0x2f14d58c # initialize rs2
orn x26, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x05674505 # initialize rs1
li x5, 0xa906e73a # initialize rs2
orn x13, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8abc5986 # initialize rs1
li x6, 0xf15a4d96 # initialize rs2
orn x15, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3532e071 # initialize rs1
li x7, 0x0b7776f4 # initialize rs2
orn x5, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x2180f8b2 # initialize rs1
li x8, 0x21856958 # initialize rs2
orn x20, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x47716b1e # initialize rs1
li x9, 0x1f373160 # initialize rs2
orn x8, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x777eb50a # initialize rs1
li x10, 0x1c47b63c # initialize rs2
orn x31, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x05761342 # initialize rs1
li x11, 0x7af45594 # initialize rs2
orn x5, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x4aa204ac # initialize rs1
li x12, 0x0ee0eb75 # initialize rs2
orn x16, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x9dc18c55 # initialize rs1
li x13, 0x236bc160 # initialize rs2
orn x23, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xa8e99f8a # initialize rs1
li x14, 0x7d55fc34 # initialize rs2
orn x2, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x4f1daa98 # initialize rs1
li x15, 0x9ee3f9b5 # initialize rs2
orn x18, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x334b5517 # initialize rs1
li x16, 0x24bf71d6 # initialize rs2
orn x23, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x89f8de31 # initialize rs1
li x17, 0x986dbba8 # initialize rs2
orn x18, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x50c0546d # initialize rs1
li x18, 0x567791e0 # initialize rs2
orn x30, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x4b1a1b07 # initialize rs1
li x19, 0x02466543 # initialize rs2
orn x26, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x0128cb31 # initialize rs1
li x20, 0x9e13a081 # initialize rs2
orn x18, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x166389f2 # initialize rs1
li x21, 0x91df58d7 # initialize rs2
orn x8, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xa243688a # initialize rs1
li x22, 0xf8068ccc # initialize rs2
orn x23, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x2ffc15a3 # initialize rs1
li x23, 0x33ffde6f # initialize rs2
orn x12, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x75b81940 # initialize rs1
li x24, 0xca8b23aa # initialize rs2
orn x26, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x56e96363 # initialize rs1
li x25, 0x7e59ca7d # initialize rs2
orn x7, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xc7152f84 # initialize rs1
li x26, 0x4302ef58 # initialize rs2
orn x18, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xab785f63 # initialize rs1
li x27, 0x5552ba22 # initialize rs2
orn x23, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x053089ca # initialize rs1
li x28, 0xaee7804e # initialize rs2
orn x3, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xe6a53913 # initialize rs1
li x29, 0xc02bacb3 # initialize rs2
orn x18, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x9025b781 # initialize rs1
li x30, 0xaa735799 # initialize rs2
orn x14, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x8932f6c2 # initialize rs1
li x31, 0x10fa0fd1 # initialize rs2
orn x20, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xba505e1b # initialize rs1
li x28, 0x0b6566b4 # initialize rs2
orn x0, x0, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa30a3b48 # initialize rs1
li x7, 0xc177d161 # initialize rs2
orn x1, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x81572259 # initialize rs1
li x6, 0x31550a33 # initialize rs2
orn x2, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xf9309aa9 # initialize rs1
li x19, 0xbfaf3fb4 # initialize rs2
orn x3, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x90eabf50 # initialize rs1
li x29, 0xd7bc18bf # initialize rs2
orn x4, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb2c9ad83 # initialize rs1
li x8, 0x80adb071 # initialize rs2
orn x5, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbd7cfd48 # initialize rs1
li x8, 0x1f5f0611 # initialize rs2
orn x6, x6, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0da29830 # initialize rs1
li x8, 0x044d203d # initialize rs2
orn x7, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x1feacd29 # initialize rs1
li x5, 0xa23a1fc1 # initialize rs2
orn x8, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0a814e44 # initialize rs1
li x9, 0xc450dbd2 # initialize rs2
orn x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x30dfd416 # initialize rs1
li x15, 0x2610dcd9 # initialize rs2
orn x10, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x0fe76b00 # initialize rs1
li x20, 0xb487019e # initialize rs2
orn x11, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xeeb300bf # initialize rs1
li x3, 0xedc3fec6 # initialize rs2
orn x12, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe81cb114 # initialize rs1
li x12, 0xcd31cf0d # initialize rs2
orn x13, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x7721541b # initialize rs1
li x10, 0x1a974e45 # initialize rs2
orn x14, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x88effa66 # initialize rs1
li x22, 0xa030d8c6 # initialize rs2
orn x15, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x5cb4bab9 # initialize rs1
li x7, 0x6192f087 # initialize rs2
orn x16, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x71665850 # initialize rs1
li x25, 0xb3e5a9d2 # initialize rs2
orn x17, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x3647b2d6 # initialize rs1
li x22, 0xe8eba1ae # initialize rs2
orn x18, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x27799f4c # initialize rs1
li x9, 0xdb430c67 # initialize rs2
orn x19, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xc33e05a4 # initialize rs1
li x15, 0xb87d19d4 # initialize rs2
orn x20, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x6748d675 # initialize rs1
li x13, 0x049e543a # initialize rs2
orn x21, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xc73db83f # initialize rs1
li x5, 0x651098f5 # initialize rs2
orn x22, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x11c71755 # initialize rs1
li x24, 0x70add216 # initialize rs2
orn x23, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xdaebeb70 # initialize rs1
li x29, 0x3e24de95 # initialize rs2
orn x24, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x16bdef66 # initialize rs1
li x17, 0xbbfabfbf # initialize rs2
orn x25, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xab7966fa # initialize rs1
li x28, 0x89befc7c # initialize rs2
orn x26, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x08b4429b # initialize rs1
li x19, 0x4f4c3945 # initialize rs2
orn x27, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x768b6ea8 # initialize rs1
li x3, 0x7e7c0cb0 # initialize rs2
orn x28, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x7ad4b783 # initialize rs1
li x1, 0xe686c098 # initialize rs2
orn x29, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x07967f6b # initialize rs1
li x25, 0x8c2124ae # initialize rs2
orn x30, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xee4bdc06 # initialize rs1
li x8, 0x1b6941b9 # initialize rs2
orn x31, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x29, 0x46dcd479 # initialize rs1
li x0, 0x236e147b # initialize rs2
orn x0, x29, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x24, 0x71a4fce7 # initialize rs1
li x1, 0x9af30386 # initialize rs2
orn x1, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x6, 0x41a12274 # initialize rs1
li x2, 0x1bdab533 # initialize rs2
orn x2, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xa90627b8 # initialize rs1
li x3, 0x4d6c1ce5 # initialize rs2
orn x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0x9321c867 # initialize rs1
li x4, 0x8239928d # initialize rs2
orn x4, x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0xcedbf125 # initialize rs1
li x5, 0xa218171e # initialize rs2
orn x5, x21, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x596c9e08 # initialize rs1
li x6, 0x926c3b30 # initialize rs2
orn x6, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0xf24876b1 # initialize rs1
li x7, 0x8cf00bd4 # initialize rs2
orn x7, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x24, 0x9932c65e # initialize rs1
li x8, 0xd8362a6b # initialize rs2
orn x8, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x26, 0x4d211a7e # initialize rs1
li x9, 0xbb245677 # initialize rs2
orn x9, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x8, 0x5e71d9d6 # initialize rs1
li x10, 0x1afb73b9 # initialize rs2
orn x10, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x25, 0xbe327c80 # initialize rs1
li x11, 0x7b5ad3c4 # initialize rs2
orn x11, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xcf0a7fbc # initialize rs1
li x12, 0x7ddc6b32 # initialize rs2
orn x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x25, 0xa94e1ff3 # initialize rs1
li x13, 0xee9b92a6 # initialize rs2
orn x13, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x25, 0xc5f1d951 # initialize rs1
li x14, 0xc29fe778 # initialize rs2
orn x14, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x30, 0x25a44160 # initialize rs1
li x15, 0xa49748d4 # initialize rs2
orn x15, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x22, 0x23920858 # initialize rs1
li x16, 0x29d3cfa9 # initialize rs2
orn x16, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x13, 0x519136e3 # initialize rs1
li x17, 0x22e35a4f # initialize rs2
orn x17, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x11, 0x5cb2a816 # initialize rs1
li x18, 0x44dd6323 # initialize rs2
orn x18, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x12, 0x8cbcfee7 # initialize rs1
li x19, 0x458bd486 # initialize rs2
orn x19, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x24, 0x0af782cb # initialize rs1
li x20, 0x99091f91 # initialize rs2
orn x20, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x6, 0xebe0dcec # initialize rs1
li x21, 0x87ecdec2 # initialize rs2
orn x21, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x23, 0xc97bd85a # initialize rs1
li x22, 0x469124ed # initialize rs2
orn x22, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x11, 0x0f72b85f # initialize rs1
li x23, 0x8fe131c6 # initialize rs2
orn x23, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x19, 0x224bb4a7 # initialize rs1
li x24, 0xa00b8d0f # initialize rs2
orn x24, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x15, 0x31aafbe3 # initialize rs1
li x25, 0xd9a8c62d # initialize rs2
orn x25, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x6, 0x3a777ec2 # initialize rs1
li x26, 0x0ef16821 # initialize rs2
orn x26, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x14, 0xacca9a41 # initialize rs1
li x27, 0x2ac222ad # initialize rs2
orn x27, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x13, 0xb53cabc2 # initialize rs1
li x28, 0x08aa1cf2 # initialize rs2
orn x28, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x26, 0xcb0a3b84 # initialize rs1
li x29, 0x6125e87f # initialize rs2
orn x29, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x15, 0xc71fdd20 # initialize rs1
li x30, 0x56955978 # initialize rs2
orn x30, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x23, 0xb101abbc # initialize rs1
li x31, 0x32f7c9e3 # initialize rs2
orn x31, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x336a687f # initialize rs1
li x0, 0x6caae38e # initialize rs2
orn x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xe79a68d0 # initialize rs1
li x1, 0xb5fd024f # initialize rs2
orn x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x4b0d99a6 # initialize rs1
li x2, 0x43b136ff # initialize rs2
orn x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x4f534027 # initialize rs1
li x3, 0xe7bfbb07 # initialize rs2
orn x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x64413165 # initialize rs1
li x4, 0x56a54c00 # initialize rs2
orn x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x92039a90 # initialize rs1
li x5, 0x3122b9a2 # initialize rs2
orn x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x06a114fe # initialize rs1
li x6, 0x4d837705 # initialize rs2
orn x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1d6199d2 # initialize rs1
li x7, 0xfbadeca4 # initialize rs2
orn x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x853babe1 # initialize rs1
li x8, 0xde46e370 # initialize rs2
orn x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xf08f9456 # initialize rs1
li x9, 0x0abd90dc # initialize rs2
orn x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x7cde4bd7 # initialize rs1
li x10, 0xf356ddeb # initialize rs2
orn x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x9d92c538 # initialize rs1
li x11, 0x35445da8 # initialize rs2
orn x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x63752df0 # initialize rs1
li x12, 0xfc9560eb # initialize rs2
orn x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x92bd0179 # initialize rs1
li x13, 0x18e21c58 # initialize rs2
orn x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x91661b79 # initialize rs1
li x14, 0x4ba26a83 # initialize rs2
orn x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x59f8e93d # initialize rs1
li x15, 0xb67aab26 # initialize rs2
orn x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x5727c33a # initialize rs1
li x16, 0x40e50534 # initialize rs2
orn x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x5f242068 # initialize rs1
li x17, 0xe6f9488f # initialize rs2
orn x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x2eacebcb # initialize rs1
li x18, 0xc29cebc6 # initialize rs2
orn x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x08d92acb # initialize rs1
li x19, 0x56802cb4 # initialize rs2
orn x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xfedc4ac7 # initialize rs1
li x20, 0xb318a44b # initialize rs2
orn x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x01ece716 # initialize rs1
li x21, 0x7a0cc909 # initialize rs2
orn x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x81bc468c # initialize rs1
li x22, 0x252e153b # initialize rs2
orn x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x8d5cd3fe # initialize rs1
li x23, 0xd50290dc # initialize rs2
orn x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xb8bc982d # initialize rs1
li x24, 0x6a2477e4 # initialize rs2
orn x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x01dcfa5c # initialize rs1
li x25, 0xb7b4fbbd # initialize rs2
orn x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xda05faf0 # initialize rs1
li x26, 0x08eb3e21 # initialize rs2
orn x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x59b61d66 # initialize rs1
li x27, 0x246d7dad # initialize rs2
orn x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x5a7839f8 # initialize rs1
li x28, 0x5a2801ad # initialize rs2
orn x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x4e41b487 # initialize rs1
li x29, 0xbfa93062 # initialize rs2
orn x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xef247109 # initialize rs1
li x30, 0x01d42fb9 # initialize rs2
orn x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x7a618f01 # initialize rs1
li x31, 0x07d1b5cb # initialize rs2
orn x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x26, x2 # perform first operation
orn x20, x28, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x21, x10 # perform first operation
orn x2, x8, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x8, x28 # perform first operation
orn x19, x2, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x25, x20 # perform first operation
orn x25, x1, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x18, x20 # perform first operation
orn x18, x24, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x30, x28 # perform first operation
orn x28, x11, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x1, x3 # perform first operation
orn x5, x26, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x16, x17 # perform first operation
orn x23, x5, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x22, x23 # perform first operation
orn x14, x30, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x16, x19 # perform first operation
orn x16, x7, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x2, x16 # perform first operation
orn x16, x23, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x24, x8 # perform first operation
orn x13, x10, x23 # perform second (triggering) operation

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
