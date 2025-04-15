///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbkb/WALLY-COV-pack.S
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
li x0, 0x9138f3df # initialize rs1
li x20, 0x0755d27e # initialize rs2
pack x5, x0, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x96ee561a # initialize rs1
li x14, 0x1f6f388f # initialize rs2
pack x19, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x4e50767f # initialize rs1
li x11, 0x7dfc828f # initialize rs2
pack x25, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xdb59e854 # initialize rs1
li x12, 0xda66cecb # initialize rs2
pack x13, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1029eb37 # initialize rs1
li x30, 0x09cb025d # initialize rs2
pack x20, x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe5ea4c43 # initialize rs1
li x27, 0x263303cc # initialize rs2
pack x8, x5, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x812079ae # initialize rs1
li x25, 0xa3cc0f66 # initialize rs2
pack x19, x6, x25 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x555379f5 # initialize rs1
li x22, 0x376c7593 # initialize rs2
pack x12, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x8669032a # initialize rs1
li x12, 0x2d5dd45d # initialize rs2
pack x3, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x4b8d6f6a # initialize rs1
li x28, 0x9e4195bb # initialize rs2
pack x19, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x78d1718f # initialize rs1
li x17, 0x4fb30f51 # initialize rs2
pack x11, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x7f85ca1a # initialize rs1
li x28, 0xd8fbe56a # initialize rs2
pack x30, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x352c7c12 # initialize rs1
li x6, 0xf24c9d4f # initialize rs2
pack x30, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xf6aac62e # initialize rs1
li x21, 0xc1ef7579 # initialize rs2
pack x5, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4db78c4d # initialize rs1
li x21, 0x8d5f398c # initialize rs2
pack x29, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x063830f9 # initialize rs1
li x30, 0x0e42f4ce # initialize rs2
pack x23, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x56a85cc0 # initialize rs1
li x30, 0xae3c3a1a # initialize rs2
pack x18, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x1e4e1767 # initialize rs1
li x12, 0xb9028423 # initialize rs2
pack x11, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xd913c21f # initialize rs1
li x15, 0x877a770f # initialize rs2
pack x5, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x101afbbc # initialize rs1
li x20, 0x650bc8a5 # initialize rs2
pack x12, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xbe419132 # initialize rs1
li x3, 0x6d39597e # initialize rs2
pack x16, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x63695f05 # initialize rs1
li x27, 0x3b7ec680 # initialize rs2
pack x18, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x2a4813e8 # initialize rs1
li x17, 0xcdf89884 # initialize rs2
pack x9, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xba0879d5 # initialize rs1
li x15, 0x3042b1ac # initialize rs2
pack x19, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x91a5470d # initialize rs1
li x10, 0x2e484ffe # initialize rs2
pack x19, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xb8a329b1 # initialize rs1
li x3, 0x25d1707d # initialize rs2
pack x17, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x910fc49b # initialize rs1
li x21, 0xdbd07abe # initialize rs2
pack x2, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x3f3f0cb6 # initialize rs1
li x30, 0xeb2ef899 # initialize rs2
pack x8, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x035ffe6f # initialize rs1
li x6, 0xccf4edd7 # initialize rs2
pack x25, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x59429bd5 # initialize rs1
li x7, 0xfcfac580 # initialize rs2
pack x14, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xb0de92dd # initialize rs1
li x29, 0x76257f65 # initialize rs2
pack x11, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x913e3a47 # initialize rs1
li x10, 0x1499a9fc # initialize rs2
pack x16, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 124)

# Testcase cp_rs2 (Test source rs2 = x1)
li x19, 0x920298ac # initialize rs1
li x1, 0x2de99755 # initialize rs2
pack x6, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cp_rs2 (Test source rs2 = x2)
li x26, 0x627635ce # initialize rs1
li x2, 0x122f5061 # initialize rs2
pack x23, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 132)

# Testcase cp_rs2 (Test source rs2 = x3)
li x1, 0x9a328e69 # initialize rs1
li x3, 0x3d942147 # initialize rs2
pack x31, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 136)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x8398ed88 # initialize rs1
li x4, 0xce1d3df6 # initialize rs2
pack x26, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 140)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x14f1e408 # initialize rs1
li x5, 0xf7b8b621 # initialize rs2
pack x7, x9, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 144)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0x86c42ca1 # initialize rs1
li x6, 0x3eec1835 # initialize rs2
pack x27, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 148)

# Testcase cp_rs2 (Test source rs2 = x7)
li x16, 0xbedc6172 # initialize rs1
li x7, 0xd7982215 # initialize rs2
pack x3, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 152)

# Testcase cp_rs2 (Test source rs2 = x8)
li x17, 0x94af7eb4 # initialize rs1
li x8, 0xbfc8be1a # initialize rs2
pack x28, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 156)

# Testcase cp_rs2 (Test source rs2 = x9)
li x16, 0x334b941c # initialize rs1
li x9, 0x056baccc # initialize rs2
pack x11, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_rs2 (Test source rs2 = x10)
li x23, 0x6a528d2d # initialize rs1
li x10, 0xbda8c7a9 # initialize rs2
pack x14, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 164)

# Testcase cp_rs2 (Test source rs2 = x11)
li x25, 0x49832e1a # initialize rs1
li x11, 0xd651a205 # initialize rs2
pack x1, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 168)

# Testcase cp_rs2 (Test source rs2 = x12)
li x29, 0x80f28943 # initialize rs1
li x12, 0xc55f4f29 # initialize rs2
pack x27, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 172)

# Testcase cp_rs2 (Test source rs2 = x13)
li x26, 0x99cce8ea # initialize rs1
li x13, 0x946ea4ec # initialize rs2
pack x20, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 176)

# Testcase cp_rs2 (Test source rs2 = x14)
li x21, 0x00beb57f # initialize rs1
li x14, 0x0f29e657 # initialize rs2
pack x19, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 180)

# Testcase cp_rs2 (Test source rs2 = x15)
li x10, 0x02744dc8 # initialize rs1
li x15, 0xdf4a705d # initialize rs2
pack x20, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cp_rs2 (Test source rs2 = x16)
li x14, 0xc1d7eba9 # initialize rs1
li x16, 0x0af32e71 # initialize rs2
pack x22, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 188)

# Testcase cp_rs2 (Test source rs2 = x17)
li x20, 0x63d2a7de # initialize rs1
li x17, 0x30612bb7 # initialize rs2
pack x15, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 192)

# Testcase cp_rs2 (Test source rs2 = x18)
li x12, 0xd3ec7654 # initialize rs1
li x18, 0x46a0db8c # initialize rs2
pack x21, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 196)

# Testcase cp_rs2 (Test source rs2 = x19)
li x1, 0x43edb134 # initialize rs1
li x19, 0xbe60b173 # initialize rs2
pack x17, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs2 (Test source rs2 = x20)
li x2, 0xbac8ae07 # initialize rs1
li x20, 0x4007a3b4 # initialize rs2
pack x18, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 204)

# Testcase cp_rs2 (Test source rs2 = x21)
li x16, 0xc0cfc4bf # initialize rs1
li x21, 0x684f72c7 # initialize rs2
pack x7, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 208)

# Testcase cp_rs2 (Test source rs2 = x22)
li x5, 0x4f804671 # initialize rs1
li x22, 0x79c2f713 # initialize rs2
pack x30, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 212)

# Testcase cp_rs2 (Test source rs2 = x23)
li x8, 0x865f96c9 # initialize rs1
li x23, 0x952a84a7 # initialize rs2
pack x17, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 216)

# Testcase cp_rs2 (Test source rs2 = x24)
li x3, 0x962b7ed0 # initialize rs1
li x24, 0x473ad455 # initialize rs2
pack x28, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 220)

# Testcase cp_rs2 (Test source rs2 = x25)
li x6, 0x29e9d519 # initialize rs1
li x25, 0x806dfe44 # initialize rs2
pack x13, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cp_rs2 (Test source rs2 = x26)
li x2, 0xca736b3e # initialize rs1
li x26, 0x507dece7 # initialize rs2
pack x22, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 228)

# Testcase cp_rs2 (Test source rs2 = x27)
li x17, 0x9d6b9048 # initialize rs1
li x27, 0x3abd2852 # initialize rs2
pack x10, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rs2 (Test source rs2 = x28)
li x29, 0x9d36e1bf # initialize rs1
li x28, 0x468ff7e9 # initialize rs2
pack x18, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 236)

# Testcase cp_rs2 (Test source rs2 = x29)
li x30, 0xdf86abc5 # initialize rs1
li x29, 0x2181b5ce # initialize rs2
pack x22, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 240)

# Testcase cp_rs2 (Test source rs2 = x30)
li x17, 0xd112cf8f # initialize rs1
li x30, 0x8c35a85e # initialize rs2
pack x7, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 244)

# Testcase cp_rs2 (Test source rs2 = x31)
li x17, 0x1e65c735 # initialize rs1
li x31, 0x2008e55f # initialize rs2
pack x18, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 248)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0x0e628d7c # initialize rs1
li x19, 0xdfd02163 # initialize rs2
pack x0, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 252)

# Testcase cp_rd (Test destination rd = x1)
li x30, 0x8d868cdf # initialize rs1
li x9, 0xf823ee2e # initialize rs2
pack x1, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_rd (Test destination rd = x2)
li x17, 0xc7064589 # initialize rs1
li x7, 0xb00480ac # initialize rs2
pack x2, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 260)

# Testcase cp_rd (Test destination rd = x3)
li x13, 0xbe9a07fa # initialize rs1
li x6, 0x36d2a449 # initialize rs2
pack x3, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0xed823b09 # initialize rs1
li x2, 0x40d20f94 # initialize rs2
pack x4, x15, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 268)

# Testcase cp_rd (Test destination rd = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0x2afd7952 # initialize rs1
li x31, 0x08378706 # initialize rs2
pack x5, x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 272)

# Testcase cp_rd (Test destination rd = x6)
li x4, 0x6962e714 # initialize rs1
li x15, 0xc9febcce # initialize rs2
pack x6, x4, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 276)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xe1acfe21 # initialize rs1
li x1, 0x1c400d57 # initialize rs2
pack x7, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 280)

# Testcase cp_rd (Test destination rd = x8)
li x30, 0xd85a619e # initialize rs1
li x29, 0x1a93645f # initialize rs2
pack x8, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 284)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0xad391e37 # initialize rs1
li x25, 0xfb984565 # initialize rs2
pack x9, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 288)

# Testcase cp_rd (Test destination rd = x10)
li x7, 0x0d16a3b1 # initialize rs1
li x16, 0x6ffa50cb # initialize rs2
pack x10, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 292)

# Testcase cp_rd (Test destination rd = x11)
li x30, 0xf873aa22 # initialize rs1
li x28, 0xde886a62 # initialize rs2
pack x11, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cp_rd (Test destination rd = x12)
li x18, 0xdf7e4d53 # initialize rs1
li x19, 0x4f87157b # initialize rs2
pack x12, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 300)

# Testcase cp_rd (Test destination rd = x13)
li x5, 0xe826580f # initialize rs1
li x8, 0xa4c17fb4 # initialize rs2
pack x13, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 304)

# Testcase cp_rd (Test destination rd = x14)
li x2, 0x403c3286 # initialize rs1
li x10, 0x351273dc # initialize rs2
pack x14, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 308)

# Testcase cp_rd (Test destination rd = x15)
li x17, 0x3d89ff10 # initialize rs1
li x20, 0xef01b27d # initialize rs2
pack x15, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cp_rd (Test destination rd = x16)
li x18, 0xf46f034c # initialize rs1
li x8, 0xb8b57059 # initialize rs2
pack x16, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 316)

# Testcase cp_rd (Test destination rd = x17)
li x18, 0x1f3b730d # initialize rs1
li x26, 0x07cdf21f # initialize rs2
pack x17, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 320)

# Testcase cp_rd (Test destination rd = x18)
li x31, 0x183e852c # initialize rs1
li x7, 0x2e1f1562 # initialize rs2
pack x18, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 324)

# Testcase cp_rd (Test destination rd = x19)
li x24, 0x6ac40089 # initialize rs1
li x2, 0xc57e60f9 # initialize rs2
pack x19, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 328)

# Testcase cp_rd (Test destination rd = x20)
li x18, 0xb38d0390 # initialize rs1
li x26, 0xc9edd2fb # initialize rs2
pack x20, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 332)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0xa58e25d3 # initialize rs1
li x15, 0x3be78923 # initialize rs2
pack x21, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 336)

# Testcase cp_rd (Test destination rd = x22)
li x16, 0x05f31dcd # initialize rs1
li x6, 0xae7313be # initialize rs2
pack x22, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 340)

# Testcase cp_rd (Test destination rd = x23)
li x19, 0xb4fa63ea # initialize rs1
li x9, 0x229deb9c # initialize rs2
pack x23, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 344)

# Testcase cp_rd (Test destination rd = x24)
li x31, 0xf5bf2b37 # initialize rs1
li x1, 0x243afb6b # initialize rs2
pack x24, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 348)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0x38715e79 # initialize rs1
li x25, 0x85bdb18c # initialize rs2
pack x25, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 352)

# Testcase cp_rd (Test destination rd = x26)
li x5, 0xc7916a94 # initialize rs1
li x29, 0x38a37182 # initialize rs2
pack x26, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 356)

# Testcase cp_rd (Test destination rd = x27)
li x20, 0x40d56cf6 # initialize rs1
li x12, 0xef7fb625 # initialize rs2
pack x27, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 360)

# Testcase cp_rd (Test destination rd = x28)
li x7, 0xa8677588 # initialize rs1
li x23, 0x5480ec68 # initialize rs2
pack x28, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 364)

# Testcase cp_rd (Test destination rd = x29)
li x14, 0xed0c8bad # initialize rs1
li x12, 0xc27c9217 # initialize rs2
pack x29, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 368)

# Testcase cp_rd (Test destination rd = x30)
li x9, 0x1e292934 # initialize rs1
li x11, 0x02fcc402 # initialize rs2
pack x30, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 372)

# Testcase cp_rd (Test destination rd = x31)
li x14, 0x6dfd6737 # initialize rs1
li x8, 0x66778505 # initialize rs2
pack x31, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 376)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x00000000 # initialize rs1
li x5, 0x3cc4a1cf # initialize rs2
pack x16, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0x00000001 # initialize rs1
li x7, 0x5ba8651b # initialize rs2
pack x26, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x00000002 # initialize rs1
li x1, 0x51b2fb56 # initialize rs2
pack x10, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x15, 0x80000000 # initialize rs1
li x17, 0xf52867ed # initialize rs2
pack x8, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x31, 0x80000001 # initialize rs1
li x29, 0x02035713 # initialize rs2
pack x13, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x27, 0x7fffffff # initialize rs1
li x30, 0xf1013321 # initialize rs2
pack x22, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x1, 0x7ffffffe # initialize rs1
li x2, 0x386ea6b5 # initialize rs2
pack x29, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x29, 0xffffffff # initialize rs1
li x10, 0x9349aeed # initialize rs2
pack x23, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0xfffffffe # initialize rs1
li x28, 0x67bea421 # initialize rs2
pack x7, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x16, 0x5bbc8872 # initialize rs1
li x28, 0xc51fd197 # initialize rs2
pack x14, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x2, 0xaaaaaaaa # initialize rs1
li x5, 0xd5cb772f # initialize rs2
pack x30, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x29, 0x55555555 # initialize rs1
li x24, 0xfd24ed2a # initialize rs2
pack x1, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x29, 0xc6907d81 # initialize rs1
li x21, 0x00000000 # initialize rs2
pack x11, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x9, 0x83bfb5f7 # initialize rs1
li x6, 0x00000001 # initialize rs2
pack x21, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x12, 0xb7e7c387 # initialize rs1
li x22, 0x00000002 # initialize rs2
pack x18, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x10, 0x6442d7c6 # initialize rs1
li x3, 0x80000000 # initialize rs2
pack x24, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x10, 0x08fa1a8d # initialize rs1
li x23, 0x80000001 # initialize rs2
pack x24, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x22, 0x96a2c4e2 # initialize rs1
li x7, 0x7fffffff # initialize rs2
pack x16, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x9, 0x33030926 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
pack x7, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x29, 0x013aeffb # initialize rs1
li x31, 0xffffffff # initialize rs2
pack x10, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x27, 0xd034fbe7 # initialize rs1
li x13, 0xfffffffe # initialize rs2
pack x24, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x30, 0x5f626902 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
pack x2, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x6, 0xfacbd8fd # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
pack x25, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x18, 0x06aca5fb # initialize rs1
li x29, 0x55555555 # initialize rs2
pack x10, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0x00000000 # initialize rs1
li x3, 0x00000000 # initialize rs2
pack x5, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x22, 0x00000000 # initialize rs1
li x28, 0x00000001 # initialize rs2
pack x2, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x21, 0x00000000 # initialize rs1
li x12, 0x00000002 # initialize rs2
pack x22, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x15, 0x00000000 # initialize rs1
li x16, 0x80000000 # initialize rs2
pack x25, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x11, 0x00000000 # initialize rs1
li x25, 0x80000001 # initialize rs2
pack x30, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x3, 0x00000000 # initialize rs1
li x20, 0x7fffffff # initialize rs2
pack x14, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x6, 0x00000000 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
pack x19, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x8, 0x00000000 # initialize rs1
li x25, 0xffffffff # initialize rs2
pack x31, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x10, 0x00000000 # initialize rs1
li x21, 0xfffffffe # initialize rs2
pack x13, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x14, 0x00000000 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
pack x9, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x23, 0x00000000 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
pack x3, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x1, 0x00000000 # initialize rs1
li x11, 0x55555555 # initialize rs2
pack x20, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x21, 0x00000001 # initialize rs1
li x16, 0x00000000 # initialize rs2
pack x20, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x23, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
pack x3, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x2, 0x00000001 # initialize rs1
li x25, 0x00000002 # initialize rs2
pack x14, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x6, 0x00000001 # initialize rs1
li x11, 0x80000000 # initialize rs2
pack x7, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x12, 0x00000001 # initialize rs1
li x30, 0x80000001 # initialize rs2
pack x6, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x10, 0x00000001 # initialize rs1
li x2, 0x7fffffff # initialize rs2
pack x31, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x14, 0x00000001 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
pack x31, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x14, 0x00000001 # initialize rs1
li x18, 0xffffffff # initialize rs2
pack x7, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x3, 0x00000001 # initialize rs1
li x1, 0xfffffffe # initialize rs2
pack x23, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x14, 0x00000001 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
pack x30, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x12, 0x00000001 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
pack x8, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x19, 0x00000001 # initialize rs1
li x28, 0x55555555 # initialize rs2
pack x8, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x12, 0x00000002 # initialize rs1
li x21, 0x00000000 # initialize rs2
pack x14, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x21, 0x00000002 # initialize rs1
li x31, 0x00000001 # initialize rs2
pack x2, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x12, 0x00000002 # initialize rs1
li x31, 0x00000002 # initialize rs2
pack x1, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x25, 0x00000002 # initialize rs1
li x17, 0x80000000 # initialize rs2
pack x28, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x6, 0x00000002 # initialize rs1
li x5, 0x80000001 # initialize rs2
pack x30, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x30, 0x00000002 # initialize rs1
li x9, 0x7fffffff # initialize rs2
pack x12, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x18, 0x00000002 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
pack x1, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x15, 0x00000002 # initialize rs1
li x13, 0xffffffff # initialize rs2
pack x11, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x19, 0x00000002 # initialize rs1
li x13, 0xfffffffe # initialize rs2
pack x22, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x13, 0x00000002 # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
pack x29, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x28, 0x00000002 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
pack x15, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x27, 0x00000002 # initialize rs1
li x17, 0x55555555 # initialize rs2
pack x14, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x17, 0x80000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
pack x19, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x14, 0x80000000 # initialize rs1
li x19, 0x00000001 # initialize rs2
pack x29, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x10, 0x80000000 # initialize rs1
li x12, 0x00000002 # initialize rs2
pack x8, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x11, 0x80000000 # initialize rs1
li x28, 0x80000000 # initialize rs2
pack x17, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x17, 0x80000000 # initialize rs1
li x22, 0x80000001 # initialize rs2
pack x11, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x17, 0x80000000 # initialize rs1
li x19, 0x7fffffff # initialize rs2
pack x24, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x16, 0x80000000 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
pack x21, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x11, 0x80000000 # initialize rs1
li x28, 0xffffffff # initialize rs2
pack x24, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x27, 0x80000000 # initialize rs1
li x6, 0xfffffffe # initialize rs2
pack x12, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x3, 0x80000000 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
pack x27, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x22, 0x80000000 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
pack x27, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x17, 0x80000000 # initialize rs1
li x14, 0x55555555 # initialize rs2
pack x23, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x14, 0x80000001 # initialize rs1
li x10, 0x00000000 # initialize rs2
pack x18, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x14, 0x80000001 # initialize rs1
li x27, 0x00000001 # initialize rs2
pack x6, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x9, 0x80000001 # initialize rs1
li x24, 0x00000002 # initialize rs2
pack x5, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x20, 0x80000001 # initialize rs1
li x21, 0x80000000 # initialize rs2
pack x3, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x21, 0x80000001 # initialize rs1
li x30, 0x80000001 # initialize rs2
pack x22, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x27, 0x80000001 # initialize rs1
li x5, 0x7fffffff # initialize rs2
pack x16, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x13, 0x80000001 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
pack x18, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x22, 0x80000001 # initialize rs1
li x18, 0xffffffff # initialize rs2
pack x11, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x24, 0x80000001 # initialize rs1
li x12, 0xfffffffe # initialize rs2
pack x9, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x17, 0x80000001 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
pack x8, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x21, 0x80000001 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
pack x18, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x1, 0x80000001 # initialize rs1
li x26, 0x55555555 # initialize rs2
pack x8, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x16, 0x7fffffff # initialize rs1
li x11, 0x00000000 # initialize rs2
pack x26, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x12, 0x7fffffff # initialize rs1
li x6, 0x00000001 # initialize rs2
pack x26, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x3, 0x7fffffff # initialize rs1
li x6, 0x00000002 # initialize rs2
pack x12, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x22, 0x7fffffff # initialize rs1
li x7, 0x80000000 # initialize rs2
pack x19, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x27, 0x7fffffff # initialize rs1
li x17, 0x80000001 # initialize rs2
pack x28, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x19, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
pack x8, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x22, 0x7fffffff # initialize rs1
li x14, 0x7ffffffe # initialize rs2
pack x24, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x23, 0x7fffffff # initialize rs1
li x11, 0xffffffff # initialize rs2
pack x7, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x25, 0x7fffffff # initialize rs1
li x8, 0xfffffffe # initialize rs2
pack x30, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x29, 0x7fffffff # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
pack x19, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x21, 0x7fffffff # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
pack x24, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x15, 0x7fffffff # initialize rs1
li x23, 0x55555555 # initialize rs2
pack x28, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x20, 0x7ffffffe # initialize rs1
li x23, 0x00000000 # initialize rs2
pack x14, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x10, 0x7ffffffe # initialize rs1
li x31, 0x00000001 # initialize rs2
pack x14, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x15, 0x7ffffffe # initialize rs1
li x11, 0x00000002 # initialize rs2
pack x12, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x25, 0x7ffffffe # initialize rs1
li x27, 0x80000000 # initialize rs2
pack x30, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x29, 0x7ffffffe # initialize rs1
li x20, 0x80000001 # initialize rs2
pack x28, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x1, 0x7ffffffe # initialize rs1
li x12, 0x7fffffff # initialize rs2
pack x16, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x30, 0x7ffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
pack x27, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x7, 0x7ffffffe # initialize rs1
li x23, 0xffffffff # initialize rs2
pack x8, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x9, 0x7ffffffe # initialize rs1
li x24, 0xfffffffe # initialize rs2
pack x27, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x24, 0x7ffffffe # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
pack x29, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x1, 0x7ffffffe # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
pack x29, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x9, 0x7ffffffe # initialize rs1
li x28, 0x55555555 # initialize rs2
pack x29, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x8, 0xffffffff # initialize rs1
li x3, 0x00000000 # initialize rs2
pack x17, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x26, 0xffffffff # initialize rs1
li x3, 0x00000001 # initialize rs2
pack x6, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x27, 0xffffffff # initialize rs1
li x17, 0x00000002 # initialize rs2
pack x15, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x7, 0xffffffff # initialize rs1
li x19, 0x80000000 # initialize rs2
pack x12, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x9, 0xffffffff # initialize rs1
li x20, 0x80000001 # initialize rs2
pack x11, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x2, 0xffffffff # initialize rs1
li x21, 0x7fffffff # initialize rs2
pack x16, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x26, 0xffffffff # initialize rs1
li x18, 0x7ffffffe # initialize rs2
pack x12, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x31, 0xffffffff # initialize rs1
li x11, 0xffffffff # initialize rs2
pack x23, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x25, 0xffffffff # initialize rs1
li x20, 0xfffffffe # initialize rs2
pack x17, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x11, 0xffffffff # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
pack x6, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x29, 0xffffffff # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
pack x2, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x1, 0xffffffff # initialize rs1
li x7, 0x55555555 # initialize rs2
pack x3, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x31, 0xfffffffe # initialize rs1
li x16, 0x00000000 # initialize rs2
pack x11, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x24, 0xfffffffe # initialize rs1
li x27, 0x00000001 # initialize rs2
pack x2, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x31, 0xfffffffe # initialize rs1
li x27, 0x00000002 # initialize rs2
pack x13, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x17, 0xfffffffe # initialize rs1
li x23, 0x80000000 # initialize rs2
pack x9, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x16, 0xfffffffe # initialize rs1
li x21, 0x80000001 # initialize rs2
pack x17, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x23, 0xfffffffe # initialize rs1
li x24, 0x7fffffff # initialize rs2
pack x7, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x24, 0xfffffffe # initialize rs1
li x23, 0x7ffffffe # initialize rs2
pack x26, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x7, 0xfffffffe # initialize rs1
li x15, 0xffffffff # initialize rs2
pack x17, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x18, 0xfffffffe # initialize rs1
li x11, 0xfffffffe # initialize rs2
pack x21, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x10, 0xfffffffe # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
pack x13, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x31, 0xfffffffe # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
pack x26, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x19, 0xfffffffe # initialize rs1
li x15, 0x55555555 # initialize rs2
pack x10, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x5, 0x5bbc8872 # initialize rs1
li x12, 0x00000000 # initialize rs2
pack x27, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x11, 0x5bbc8872 # initialize rs1
li x8, 0x00000001 # initialize rs2
pack x30, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x2, 0x5bbc8872 # initialize rs1
li x25, 0x00000002 # initialize rs2
pack x23, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x15, 0x5bbc8872 # initialize rs1
li x1, 0x80000000 # initialize rs2
pack x10, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x30, 0x5bbc8872 # initialize rs1
li x8, 0x80000001 # initialize rs2
pack x13, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x8, 0x5bbc8872 # initialize rs1
li x21, 0x7fffffff # initialize rs2
pack x2, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x13, 0x5bbc8872 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
pack x28, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x25, 0x5bbc8872 # initialize rs1
li x29, 0xffffffff # initialize rs2
pack x6, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x20, 0x5bbc8872 # initialize rs1
li x18, 0xfffffffe # initialize rs2
pack x24, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x6, 0x5bbc8872 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
pack x19, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x5, 0x5bbc8872 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
pack x9, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x26, 0x5bbc8872 # initialize rs1
li x29, 0x55555555 # initialize rs2
pack x2, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x30, 0xaaaaaaaa # initialize rs1
li x6, 0x00000000 # initialize rs2
pack x12, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x9, 0xaaaaaaaa # initialize rs1
li x3, 0x00000001 # initialize rs2
pack x24, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x7, 0xaaaaaaaa # initialize rs1
li x27, 0x00000002 # initialize rs2
pack x5, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x25, 0xaaaaaaaa # initialize rs1
li x23, 0x80000000 # initialize rs2
pack x6, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x10, 0xaaaaaaaa # initialize rs1
li x18, 0x80000001 # initialize rs2
pack x27, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x9, 0xaaaaaaaa # initialize rs1
li x29, 0x7fffffff # initialize rs2
pack x28, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x6, 0xaaaaaaaa # initialize rs1
li x24, 0x7ffffffe # initialize rs2
pack x25, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x22, 0xaaaaaaaa # initialize rs1
li x10, 0xffffffff # initialize rs2
pack x6, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x27, 0xaaaaaaaa # initialize rs1
li x3, 0xfffffffe # initialize rs2
pack x10, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x27, 0xaaaaaaaa # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
pack x12, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
pack x13, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x6, 0xaaaaaaaa # initialize rs1
li x26, 0x55555555 # initialize rs2
pack x18, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x16, 0x55555555 # initialize rs1
li x12, 0x00000000 # initialize rs2
pack x11, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x24, 0x55555555 # initialize rs1
li x2, 0x00000001 # initialize rs2
pack x12, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x29, 0x55555555 # initialize rs1
li x20, 0x00000002 # initialize rs2
pack x16, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x28, 0x55555555 # initialize rs1
li x24, 0x80000000 # initialize rs2
pack x29, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x21, 0x55555555 # initialize rs1
li x20, 0x80000001 # initialize rs2
pack x19, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x30, 0x55555555 # initialize rs1
li x12, 0x7fffffff # initialize rs2
pack x19, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x6, 0x55555555 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
pack x31, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x7, 0x55555555 # initialize rs1
li x21, 0xffffffff # initialize rs2
pack x29, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x1, 0x55555555 # initialize rs1
li x28, 0xfffffffe # initialize rs2
pack x26, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x20, 0x55555555 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
pack x5, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x30, 0x55555555 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
pack x26, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x28, 0x55555555 # initialize rs1
li x10, 0x55555555 # initialize rs2
pack x29, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1048)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x73c09fa9 # initialize rs1
li x1, 0xbaca37dc # initialize rs2
pack x8, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe4a9959f # initialize rs1
li x2, 0x55adb355 # initialize rs2
pack x23, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xdd18c5a4 # initialize rs1
li x3, 0xd3af9832 # initialize rs2
pack x17, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa21d64d2 # initialize rs1
li x4, 0x80ff4db3 # initialize rs2
pack x22, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4c68ea9c # initialize rs1
li x5, 0xae57c935 # initialize rs2
pack x6, x5, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x6, 0x1ab100d6 # initialize rs1
li x6, 0x55e61ba1 # initialize rs2
pack x27, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x27, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe6c27428 # initialize rs1
li x7, 0xe565a6ba # initialize rs2
pack x22, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x7c6b90a7 # initialize rs1
li x8, 0x7cc6b8de # initialize rs2
pack x24, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xd3b9cd9e # initialize rs1
li x9, 0xa13706cc # initialize rs2
pack x23, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xbfcf1023 # initialize rs1
li x10, 0x4ee1be24 # initialize rs2
pack x16, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x36f819aa # initialize rs1
li x11, 0x32f0de8d # initialize rs2
pack x3, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x0b35f395 # initialize rs1
li x12, 0xe4107f16 # initialize rs2
pack x25, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x712e25c7 # initialize rs1
li x13, 0x01c89722 # initialize rs2
pack x19, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xe823c8b3 # initialize rs1
li x14, 0xe9ed75c0 # initialize rs2
pack x24, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x6f2cb8e2 # initialize rs1
li x15, 0xf3a796d6 # initialize rs2
pack x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xec0d3ea9 # initialize rs1
li x16, 0x470b1110 # initialize rs2
pack x14, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xc35cbc0a # initialize rs1
li x17, 0x572c84b0 # initialize rs2
pack x22, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xf9b6c4bb # initialize rs1
li x18, 0x8160e326 # initialize rs2
pack x11, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x56243def # initialize rs1
li x19, 0xa725245f # initialize rs2
pack x29, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x8d6a9e29 # initialize rs1
li x20, 0x0f518f33 # initialize rs2
pack x18, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x5b877831 # initialize rs1
li x21, 0x702f14a7 # initialize rs2
pack x17, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x411b9f75 # initialize rs1
li x22, 0xc85f5069 # initialize rs2
pack x1, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x9c495fdb # initialize rs1
li x23, 0x245e4171 # initialize rs2
pack x11, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x8701bc21 # initialize rs1
li x24, 0x6dc2a37b # initialize rs2
pack x27, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x3de20ab1 # initialize rs1
li x25, 0x69bb751e # initialize rs2
pack x20, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x4657b7d9 # initialize rs1
li x26, 0x9b2ee57a # initialize rs2
pack x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xbaa1a43f # initialize rs1
li x27, 0x96bc6bd0 # initialize rs2
pack x14, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xa5973221 # initialize rs1
li x28, 0x21ca55bf # initialize rs2
pack x13, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x3ff8f437 # initialize rs1
li x29, 0xb5b2783f # initialize rs2
pack x2, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x77698eb2 # initialize rs1
li x30, 0xa0b8ffec # initialize rs2
pack x18, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xd3c5fcea # initialize rs1
li x31, 0x351b8b90 # initialize rs2
pack x19, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1172)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x21, 0x90787563 # initialize rs1
li x1, 0x1e674d36 # initialize rs2
pack x1, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x29, 0x77b5234e # initialize rs1
li x2, 0x90de5044 # initialize rs2
pack x2, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1180)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x30, 0xbda92037 # initialize rs1
li x3, 0x72c674e4 # initialize rs2
pack x3, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0x85a74170 # initialize rs1
li x4, 0xa302641c # initialize rs2
pack x4, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1188)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0xb751548b # initialize rs1
li x5, 0x2eb324d1 # initialize rs2
pack x5, x10, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0x3794f5a8 # initialize rs1
li x6, 0x5a05dc8c # initialize rs2
pack x6, x13, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1196)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x4c7c8c1e # initialize rs1
li x7, 0xf35b0407 # initialize rs2
pack x7, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x31, 0xaf595466 # initialize rs1
li x8, 0x1220a2f9 # initialize rs2
pack x8, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1204)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x25, 0x7b9ff115 # initialize rs1
li x9, 0x6ad5c49c # initialize rs2
pack x9, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x15, 0x4485ec0d # initialize rs1
li x10, 0x0f447a99 # initialize rs2
pack x10, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1212)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x31, 0x15a74ddd # initialize rs1
li x11, 0xdbf103d6 # initialize rs2
pack x11, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x28, 0x30ecbb1f # initialize rs1
li x12, 0x647024c4 # initialize rs2
pack x12, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1220)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x26, 0xcea3fbb1 # initialize rs1
li x13, 0x401cfd28 # initialize rs2
pack x13, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x6, 0x167ea671 # initialize rs1
li x14, 0x064961cd # initialize rs2
pack x14, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1228)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x30, 0x5e999744 # initialize rs1
li x15, 0x78162573 # initialize rs2
pack x15, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1232)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x18, 0xf331d692 # initialize rs1
li x16, 0x153e8996 # initialize rs2
pack x16, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1236)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x27, 0x0b874b7d # initialize rs1
li x17, 0x15c0bb61 # initialize rs2
pack x17, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1240)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x17, 0x03665a6e # initialize rs1
li x18, 0xbd86aa98 # initialize rs2
pack x18, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1244)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x12, 0xe7b95a2d # initialize rs1
li x19, 0x207001f5 # initialize rs2
pack x19, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1248)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x22, 0xb0be0ee1 # initialize rs1
li x20, 0x7ad25d69 # initialize rs2
pack x20, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1252)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x29, 0x066b73cf # initialize rs1
li x21, 0xa8275c3d # initialize rs2
pack x21, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1256)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x29, 0x3a3aa8e6 # initialize rs1
li x22, 0xaca3f075 # initialize rs2
pack x22, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1260)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x1, 0x27eff6b8 # initialize rs1
li x23, 0x6bdd6603 # initialize rs2
pack x23, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1264)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x5, 0x601582bb # initialize rs1
li x24, 0xef999205 # initialize rs2
pack x24, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1268)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x20, 0xe9c8c600 # initialize rs1
li x25, 0xcbf499e3 # initialize rs2
pack x25, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1272)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x15, 0x409618cf # initialize rs1
li x26, 0x0ed5976b # initialize rs2
pack x26, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1276)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x21, 0x6ce92af1 # initialize rs1
li x27, 0xc0e36931 # initialize rs2
pack x27, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1280)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x5, 0xd43494f6 # initialize rs1
li x28, 0x90b23af5 # initialize rs2
pack x28, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1284)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x14, 0x4516d848 # initialize rs1
li x29, 0x463c13f5 # initialize rs2
pack x29, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1288)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x20, 0xfa9b7101 # initialize rs1
li x30, 0x8f00b979 # initialize rs2
pack x30, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1292)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x23, 0x8019afc6 # initialize rs1
li x31, 0x7e623534 # initialize rs2
pack x31, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x434e6262 # initialize rs1
li x1, 0x3107a825 # initialize rs2
pack x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1300)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xa6ec043e # initialize rs1
li x2, 0x3982ff95 # initialize rs2
pack x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x25ba8211 # initialize rs1
li x3, 0x218a8fd1 # initialize rs2
pack x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1308)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc7aa5a4b # initialize rs1
li x4, 0x8d46d7e8 # initialize rs2
pack x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdacc5e82 # initialize rs1
li x5, 0x28e09e12 # initialize rs2
pack x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1316)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x200e0fa6 # initialize rs1
li x6, 0x7ce26f5e # initialize rs2
pack x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3c0811e9 # initialize rs1
li x7, 0x14ac910a # initialize rs2
pack x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1324)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xd3896fed # initialize rs1
li x8, 0xd3545932 # initialize rs2
pack x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x51d9a462 # initialize rs1
li x9, 0xc15fa775 # initialize rs2
pack x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1332)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x5857322b # initialize rs1
li x10, 0x9d4ba9a2 # initialize rs2
pack x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x37de2781 # initialize rs1
li x11, 0x8a10b01b # initialize rs2
pack x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1340)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x84de2cda # initialize rs1
li x12, 0xabe495cc # initialize rs2
pack x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x35623c40 # initialize rs1
li x13, 0xcd422435 # initialize rs2
pack x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1348)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xf57ccde7 # initialize rs1
li x14, 0x51e94829 # initialize rs2
pack x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xf6678da1 # initialize rs1
li x15, 0xdea216f4 # initialize rs2
pack x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1356)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x1232129c # initialize rs1
li x16, 0x7cf9bc82 # initialize rs2
pack x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x28e5f2c4 # initialize rs1
li x17, 0xbdb66198 # initialize rs2
pack x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1364)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x134003b7 # initialize rs1
li x18, 0x96ffc718 # initialize rs2
pack x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x1f48dd5c # initialize rs1
li x19, 0x38fada1e # initialize rs2
pack x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1372)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x30dbb6cf # initialize rs1
li x20, 0x5b27821a # initialize rs2
pack x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc37b9e7b # initialize rs1
li x21, 0x162b490e # initialize rs2
pack x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1380)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xe2ed5ddb # initialize rs1
li x22, 0xe347d555 # initialize rs2
pack x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xe825eae2 # initialize rs1
li x23, 0xed66b84f # initialize rs2
pack x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1388)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x0b55492e # initialize rs1
li x24, 0x7966648d # initialize rs2
pack x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xeda707e3 # initialize rs1
li x25, 0x2d0960b6 # initialize rs2
pack x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1396)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xbab74ea3 # initialize rs1
li x26, 0x92553725 # initialize rs2
pack x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xf298650d # initialize rs1
li x27, 0x5883b0a1 # initialize rs2
pack x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1404)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x890cf167 # initialize rs1
li x28, 0x41d4c937 # initialize rs2
pack x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xd26836d2 # initialize rs1
li x29, 0x28b6c6db # initialize rs2
pack x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1412)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x78d4daf3 # initialize rs1
li x30, 0x33645568 # initialize rs2
pack x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xf0e0f92e # initialize rs1
li x31, 0x11f88e70 # initialize rs2
pack x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1420)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x13, x19 # perform first operation
pack x23, x8, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x5, x8 # perform first operation
pack x3, x26, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x2, x8 # perform first operation
pack x3, x21, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x7, x22 # perform first operation
pack x22, x2, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x27, x16 # perform first operation
pack x17, x21, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x9, x31 # perform first operation
pack x5, x25, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x28, x18 # perform first operation
pack x2, x12, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x3, x25 # perform first operation
pack x31, x14, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x19, x25 # perform first operation
pack x9, x18, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x21, x26 # perform first operation
pack x21, x5, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x25, x11 # perform first operation
pack x11, x21, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x15, x13 # perform first operation
pack x5, x1, x14 # perform second (triggering) operation

.EQU SIGSIZE,1424


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
