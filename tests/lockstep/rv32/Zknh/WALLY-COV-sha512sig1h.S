///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zknh/WALLY-COV-sha512sig1h.S
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
li x0, 0x9f45fbfb # initialize rs1
li x11, 0x445ec84b # initialize rs2
sha512sig1h x8, x0, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x0401da61 # initialize rs1
li x11, 0xaa4a4c4e # initialize rs2
sha512sig1h x10, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x0c259aed # initialize rs1
li x23, 0x9ae83589 # initialize rs2
sha512sig1h x10, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x9e5d1252 # initialize rs1
li x29, 0x444a3805 # initialize rs2
sha512sig1h x8, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc901acf0 # initialize rs1
li x6, 0x9a0093c0 # initialize rs2
sha512sig1h x9, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x43396d9b # initialize rs1
li x13, 0xc29fadaf # initialize rs2
sha512sig1h x25, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1e55d843 # initialize rs1
li x24, 0x0c4601b3 # initialize rs2
sha512sig1h x13, x6, x24 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf8641ef5 # initialize rs1
li x23, 0x3307156e # initialize rs2
sha512sig1h x17, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x59bc87ef # initialize rs1
li x22, 0x8edf9438 # initialize rs2
sha512sig1h x5, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x40851197 # initialize rs1
li x26, 0x42e7f5f2 # initialize rs2
sha512sig1h x10, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x234211b6 # initialize rs1
li x21, 0xc53baee8 # initialize rs2
sha512sig1h x25, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xd22eb620 # initialize rs1
li x25, 0xd7a50d88 # initialize rs2
sha512sig1h x30, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x7f77cea5 # initialize rs1
li x24, 0xa3cb90f7 # initialize rs2
sha512sig1h x3, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xd632a332 # initialize rs1
li x18, 0x4904540e # initialize rs2
sha512sig1h x24, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc813aff1 # initialize rs1
li x30, 0x15b469ad # initialize rs2
sha512sig1h x6, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x374c5a7a # initialize rs1
li x24, 0xbfb9c436 # initialize rs2
sha512sig1h x10, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x26b66e94 # initialize rs1
li x7, 0x3bf5cf82 # initialize rs2
sha512sig1h x23, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x68eefef3 # initialize rs1
li x8, 0x07fe7716 # initialize rs2
sha512sig1h x9, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x3438542b # initialize rs1
li x3, 0x546f04f0 # initialize rs2
sha512sig1h x7, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x72c98a31 # initialize rs1
li x24, 0xe02a0946 # initialize rs2
sha512sig1h x16, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4a42363c # initialize rs1
li x7, 0xba90fa6c # initialize rs2
sha512sig1h x16, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x1d5c3341 # initialize rs1
li x8, 0x4d5dc38b # initialize rs2
sha512sig1h x12, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x774221da # initialize rs1
li x17, 0x098a4327 # initialize rs2
sha512sig1h x2, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xe85eb445 # initialize rs1
li x29, 0xc11443c6 # initialize rs2
sha512sig1h x22, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x1178c1c0 # initialize rs1
li x21, 0x33e1b621 # initialize rs2
sha512sig1h x2, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x69c5d66f # initialize rs1
li x24, 0x94ea3748 # initialize rs2
sha512sig1h x23, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x593598c1 # initialize rs1
li x24, 0xdc7fbdfc # initialize rs2
sha512sig1h x19, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x4ccdc2ed # initialize rs1
li x13, 0x8324138c # initialize rs2
sha512sig1h x6, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xed05c5ff # initialize rs1
li x31, 0xe0c066e9 # initialize rs2
sha512sig1h x27, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x81fd653a # initialize rs1
li x22, 0x4d4b36f6 # initialize rs2
sha512sig1h x27, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x26910bfd # initialize rs1
li x27, 0x1e8c9478 # initialize rs2
sha512sig1h x7, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x2a7ca2d8 # initialize rs1
li x22, 0x90177a09 # initialize rs2
sha512sig1h x10, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x14, 0x914c8a3a # initialize rs1
li x0, 0x5357e9f6 # initialize rs2
sha512sig1h x18, x14, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x29, 0x494aea2f # initialize rs1
li x1, 0xe46a6dd8 # initialize rs2
sha512sig1h x17, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0x03774d04 # initialize rs1
li x2, 0xb6d5d10e # initialize rs2
sha512sig1h x28, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x22, 0x6c37a8ed # initialize rs1
li x3, 0x7df527dc # initialize rs2
sha512sig1h x19, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x101e84fc # initialize rs1
li x4, 0x8359ea21 # initialize rs2
sha512sig1h x5, x11, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
li x22, 0x031682d7 # initialize rs1
li x5, 0x5094d63e # initialize rs2
sha512sig1h x26, x22, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x3fe4cb2b # initialize rs1
li x6, 0x891eadd9 # initialize rs2
sha512sig1h x4, x29, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0x6661108d # initialize rs1
li x7, 0x4ddc15c6 # initialize rs2
sha512sig1h x17, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0x8f441793 # initialize rs1
li x8, 0x169301c5 # initialize rs2
sha512sig1h x3, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x10, 0x83449118 # initialize rs1
li x9, 0xe0309357 # initialize rs2
sha512sig1h x15, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x22, 0x3164639f # initialize rs1
li x10, 0x6d9cbd5c # initialize rs2
sha512sig1h x20, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x9, 0x9300ce20 # initialize rs1
li x11, 0xc4cb0ad6 # initialize rs2
sha512sig1h x20, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x19, 0x36f9e080 # initialize rs1
li x12, 0x31351912 # initialize rs2
sha512sig1h x13, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x16, 0xcd15fa91 # initialize rs1
li x13, 0x346075f5 # initialize rs2
sha512sig1h x30, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0x8d8502db # initialize rs1
li x14, 0x375e87db # initialize rs2
sha512sig1h x5, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0x572ef046 # initialize rs1
li x15, 0x51b1b671 # initialize rs2
sha512sig1h x26, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x31, 0xec08fadb # initialize rs1
li x16, 0x3caaad95 # initialize rs2
sha512sig1h x17, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x10, 0x03e9f314 # initialize rs1
li x17, 0x7e2d157b # initialize rs2
sha512sig1h x18, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x28, 0x29cb9a22 # initialize rs1
li x18, 0x55df1f40 # initialize rs2
sha512sig1h x12, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0xa5c8172d # initialize rs1
li x19, 0x8d6e3d8e # initialize rs2
sha512sig1h x3, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x6, 0xdc1d4ec3 # initialize rs1
li x20, 0xd165d77d # initialize rs2
sha512sig1h x16, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x29, 0x7190e058 # initialize rs1
li x21, 0x15c4c932 # initialize rs2
sha512sig1h x18, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x1, 0x8b4c730e # initialize rs1
li x22, 0xaca1ff2a # initialize rs2
sha512sig1h x24, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x8, 0x00285555 # initialize rs1
li x23, 0xfe3930da # initialize rs2
sha512sig1h x18, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x29, 0xdc23004b # initialize rs1
li x24, 0xc63e99ac # initialize rs2
sha512sig1h x6, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x26, 0x18e0ea0c # initialize rs1
li x25, 0xf740b62e # initialize rs2
sha512sig1h x30, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x10, 0x7f935b8c # initialize rs1
li x26, 0x74335e56 # initialize rs2
sha512sig1h x28, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x26, 0x979f742d # initialize rs1
li x27, 0x7079ba9b # initialize rs2
sha512sig1h x18, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x19, 0x040fe3d2 # initialize rs1
li x28, 0x6821c2c6 # initialize rs2
sha512sig1h x10, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x15, 0x5005b051 # initialize rs1
li x29, 0x056bee5c # initialize rs2
sha512sig1h x27, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x27, 0x37fd8961 # initialize rs1
li x30, 0x83b0c00a # initialize rs2
sha512sig1h x14, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x19, 0x64d9ae5c # initialize rs1
li x31, 0x887ce19a # initialize rs2
sha512sig1h x23, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 252)

# Testcase cp_rd (Test destination rd = x0)
li x21, 0x0c8b9aba # initialize rs1
li x20, 0xa0151719 # initialize rs2
sha512sig1h x0, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x26, 0x6854971e # initialize rs1
li x9, 0xc8f4fec8 # initialize rs2
sha512sig1h x1, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x14, 0x3b9e2607 # initialize rs1
li x24, 0xe11f5cfc # initialize rs2
sha512sig1h x2, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x29, 0x3acaed4e # initialize rs1
li x27, 0x3a39e247 # initialize rs2
sha512sig1h x3, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x9ef7b9d5 # initialize rs1
li x3, 0x61d8c8db # initialize rs2
sha512sig1h x4, x11, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x2468f683 # initialize rs1
li x26, 0xe64d20c5 # initialize rs2
sha512sig1h x5, x21, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0x3d16b811 # initialize rs1
li x23, 0xc0bd79f6 # initialize rs2
sha512sig1h x6, x20, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0x615293a5 # initialize rs1
li x20, 0xbf4c6922 # initialize rs2
sha512sig1h x7, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x5, 0xbbcdbed4 # initialize rs1
li x16, 0xb998a564 # initialize rs2
sha512sig1h x8, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x8, 0x3e6784dd # initialize rs1
li x1, 0x528049e8 # initialize rs2
sha512sig1h x9, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x27, 0x2e847084 # initialize rs1
li x25, 0xadd25f5a # initialize rs2
sha512sig1h x10, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x19, 0xaf167581 # initialize rs1
li x29, 0x908686f4 # initialize rs2
sha512sig1h x11, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x5, 0x466ee6c6 # initialize rs1
li x19, 0x3280e47c # initialize rs2
sha512sig1h x12, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x21, 0x26ca5fbc # initialize rs1
li x1, 0x0adc938d # initialize rs2
sha512sig1h x13, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x23, 0x13d0a810 # initialize rs1
li x14, 0x887b79d4 # initialize rs2
sha512sig1h x14, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x26, 0x2b1e01d8 # initialize rs1
li x11, 0x517f0cb6 # initialize rs2
sha512sig1h x15, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x5, 0xa67fa7b9 # initialize rs1
li x7, 0x12314e05 # initialize rs2
sha512sig1h x16, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x21, 0xe52ff5d2 # initialize rs1
li x29, 0x91efec3b # initialize rs2
sha512sig1h x17, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0x9c5ff2f7 # initialize rs1
li x16, 0x14963720 # initialize rs2
sha512sig1h x18, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x22, 0xa66febad # initialize rs1
li x28, 0x2edee096 # initialize rs2
sha512sig1h x19, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x17, 0x0323bd90 # initialize rs1
li x18, 0x472cd468 # initialize rs2
sha512sig1h x20, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x26, 0x7417fe82 # initialize rs1
li x29, 0x217db1c2 # initialize rs2
sha512sig1h x21, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x21, 0x6fe5d4c7 # initialize rs1
li x27, 0x193a35c8 # initialize rs2
sha512sig1h x22, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x8, 0xc2399f02 # initialize rs1
li x18, 0x86367c71 # initialize rs2
sha512sig1h x23, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x27, 0x0b2955ed # initialize rs1
li x19, 0x0eb48aec # initialize rs2
sha512sig1h x24, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0xbbb08607 # initialize rs1
li x13, 0xef8f0591 # initialize rs2
sha512sig1h x25, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x7, 0x2f0e3b0a # initialize rs1
li x24, 0xcdac41eb # initialize rs2
sha512sig1h x26, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x30, 0x6780d784 # initialize rs1
li x15, 0x1fa48674 # initialize rs2
sha512sig1h x27, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x18, 0x46c627fa # initialize rs1
li x24, 0xc989f344 # initialize rs2
sha512sig1h x28, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x13, 0x0a1c87fd # initialize rs1
li x23, 0x78d29254 # initialize rs2
sha512sig1h x29, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x12, 0x51c0c48d # initialize rs1
li x10, 0x220ca888 # initialize rs2
sha512sig1h x30, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x23, 0x51bf471e # initialize rs1
li x27, 0x7829d2b2 # initialize rs2
sha512sig1h x31, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0x00000000 # initialize rs1
li x8, 0x7a25507f # initialize rs2
sha512sig1h x12, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x00000001 # initialize rs1
li x27, 0x87a263e8 # initialize rs2
sha512sig1h x21, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x00000002 # initialize rs1
li x21, 0xc362fe11 # initialize rs2
sha512sig1h x2, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x30, 0x80000000 # initialize rs1
li x3, 0xd702ea93 # initialize rs2
sha512sig1h x31, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x21, 0x80000001 # initialize rs1
li x3, 0x9e52e4f6 # initialize rs2
sha512sig1h x30, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x14, 0x7fffffff # initialize rs1
li x25, 0xd1f47bf2 # initialize rs2
sha512sig1h x7, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x21, 0x7ffffffe # initialize rs1
li x5, 0xa9832d51 # initialize rs2
sha512sig1h x24, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0xffffffff # initialize rs1
li x9, 0xd2f97c5b # initialize rs2
sha512sig1h x31, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0xfffffffe # initialize rs1
li x17, 0xaa3c410b # initialize rs2
sha512sig1h x29, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs1
li x23, 0xcc45fe89 # initialize rs2
sha512sig1h x14, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x29, 0xaaaaaaaa # initialize rs1
li x1, 0x51e1f408 # initialize rs2
sha512sig1h x31, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x13, 0x55555555 # initialize rs1
li x23, 0xa54a6999 # initialize rs2
sha512sig1h x2, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x26, 0x579af01e # initialize rs1
li x30, 0x00000000 # initialize rs2
sha512sig1h x18, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x23, 0x50acbe78 # initialize rs1
li x13, 0x00000001 # initialize rs2
sha512sig1h x20, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x31, 0x5c07c977 # initialize rs1
li x26, 0x00000002 # initialize rs2
sha512sig1h x12, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x12, 0x369c9f4c # initialize rs1
li x31, 0x80000000 # initialize rs2
sha512sig1h x23, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x26, 0x181b872b # initialize rs1
li x14, 0x80000001 # initialize rs2
sha512sig1h x9, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x12, 0x6751edf5 # initialize rs1
li x15, 0x7fffffff # initialize rs2
sha512sig1h x21, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x24, 0x78ab7478 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
sha512sig1h x10, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x26, 0xa26f29e8 # initialize rs1
li x14, 0xffffffff # initialize rs2
sha512sig1h x22, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x21, 0x599749c1 # initialize rs1
li x1, 0xfffffffe # initialize rs2
sha512sig1h x9, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x19, 0xbc78843a # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
sha512sig1h x24, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x23, 0xf9961a56 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sha512sig1h x15, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x16, 0xbc42fab2 # initialize rs1
li x21, 0x55555555 # initialize rs2
sha512sig1h x1, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x25, 0x00000000 # initialize rs1
li x5, 0x00000000 # initialize rs2
sha512sig1h x19, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x16, 0x00000000 # initialize rs1
li x31, 0x00000001 # initialize rs2
sha512sig1h x26, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x28, 0x00000000 # initialize rs1
li x19, 0x00000002 # initialize rs2
sha512sig1h x13, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x9, 0x00000000 # initialize rs1
li x3, 0x80000000 # initialize rs2
sha512sig1h x1, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x27, 0x00000000 # initialize rs1
li x15, 0x80000001 # initialize rs2
sha512sig1h x22, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x9, 0x00000000 # initialize rs1
li x1, 0x7fffffff # initialize rs2
sha512sig1h x28, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x15, 0x00000000 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
sha512sig1h x12, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x16, 0x00000000 # initialize rs1
li x11, 0xffffffff # initialize rs2
sha512sig1h x12, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x19, 0x00000000 # initialize rs1
li x3, 0xfffffffe # initialize rs2
sha512sig1h x1, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x18, 0x00000000 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
sha512sig1h x1, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x18, 0x00000000 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
sha512sig1h x28, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x27, 0x00000000 # initialize rs1
li x21, 0x55555555 # initialize rs2
sha512sig1h x30, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x24, 0x00000001 # initialize rs1
li x30, 0x00000000 # initialize rs2
sha512sig1h x8, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x14, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
sha512sig1h x2, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x14, 0x00000001 # initialize rs1
li x2, 0x00000002 # initialize rs2
sha512sig1h x3, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x21, 0x00000001 # initialize rs1
li x8, 0x80000000 # initialize rs2
sha512sig1h x15, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x1, 0x00000001 # initialize rs1
li x10, 0x80000001 # initialize rs2
sha512sig1h x28, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x30, 0x00000001 # initialize rs1
li x12, 0x7fffffff # initialize rs2
sha512sig1h x6, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x14, 0x00000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
sha512sig1h x12, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x3, 0x00000001 # initialize rs1
li x16, 0xffffffff # initialize rs2
sha512sig1h x24, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x28, 0x00000001 # initialize rs1
li x5, 0xfffffffe # initialize rs2
sha512sig1h x15, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x6, 0x00000001 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
sha512sig1h x9, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x27, 0x00000001 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
sha512sig1h x17, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x7, 0x00000001 # initialize rs1
li x19, 0x55555555 # initialize rs2
sha512sig1h x23, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x26, 0x00000002 # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sig1h x7, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x24, 0x00000002 # initialize rs1
li x18, 0x00000001 # initialize rs2
sha512sig1h x11, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x15, 0x00000002 # initialize rs1
li x21, 0x00000002 # initialize rs2
sha512sig1h x6, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x15, 0x00000002 # initialize rs1
li x6, 0x80000000 # initialize rs2
sha512sig1h x1, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x16, 0x00000002 # initialize rs1
li x1, 0x80000001 # initialize rs2
sha512sig1h x7, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x14, 0x00000002 # initialize rs1
li x11, 0x7fffffff # initialize rs2
sha512sig1h x17, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x25, 0x00000002 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
sha512sig1h x14, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x24, 0x00000002 # initialize rs1
li x29, 0xffffffff # initialize rs2
sha512sig1h x31, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x2, 0x00000002 # initialize rs1
li x13, 0xfffffffe # initialize rs2
sha512sig1h x8, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x30, 0x00000002 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
sha512sig1h x1, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x22, 0x00000002 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
sha512sig1h x21, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x6, 0x00000002 # initialize rs1
li x21, 0x55555555 # initialize rs2
sha512sig1h x19, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x26, 0x80000000 # initialize rs1
li x19, 0x00000000 # initialize rs2
sha512sig1h x17, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x10, 0x80000000 # initialize rs1
li x27, 0x00000001 # initialize rs2
sha512sig1h x7, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x10, 0x80000000 # initialize rs1
li x8, 0x00000002 # initialize rs2
sha512sig1h x3, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x28, 0x80000000 # initialize rs1
li x13, 0x80000000 # initialize rs2
sha512sig1h x21, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x19, 0x80000000 # initialize rs1
li x27, 0x80000001 # initialize rs2
sha512sig1h x10, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x12, 0x80000000 # initialize rs1
li x10, 0x7fffffff # initialize rs2
sha512sig1h x16, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x6, 0x80000000 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
sha512sig1h x24, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x27, 0x80000000 # initialize rs1
li x12, 0xffffffff # initialize rs2
sha512sig1h x18, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x16, 0x80000000 # initialize rs1
li x14, 0xfffffffe # initialize rs2
sha512sig1h x28, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x12, 0x80000000 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
sha512sig1h x5, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x7, 0x80000000 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
sha512sig1h x19, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x24, 0x80000000 # initialize rs1
li x30, 0x55555555 # initialize rs2
sha512sig1h x27, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x14, 0x80000001 # initialize rs1
li x27, 0x00000000 # initialize rs2
sha512sig1h x2, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x6, 0x80000001 # initialize rs1
li x3, 0x00000001 # initialize rs2
sha512sig1h x12, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x3, 0x80000001 # initialize rs1
li x28, 0x00000002 # initialize rs2
sha512sig1h x9, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x16, 0x80000001 # initialize rs1
li x8, 0x80000000 # initialize rs2
sha512sig1h x7, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x12, 0x80000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
sha512sig1h x21, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x18, 0x80000001 # initialize rs1
li x2, 0x7fffffff # initialize rs2
sha512sig1h x17, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x23, 0x80000001 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
sha512sig1h x13, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x15, 0x80000001 # initialize rs1
li x22, 0xffffffff # initialize rs2
sha512sig1h x12, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x16, 0x80000001 # initialize rs1
li x10, 0xfffffffe # initialize rs2
sha512sig1h x9, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x6, 0x80000001 # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
sha512sig1h x13, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x31, 0x80000001 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
sha512sig1h x22, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x17, 0x80000001 # initialize rs1
li x6, 0x55555555 # initialize rs2
sha512sig1h x8, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x26, 0x7fffffff # initialize rs1
li x8, 0x00000000 # initialize rs2
sha512sig1h x24, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x5, 0x7fffffff # initialize rs1
li x13, 0x00000001 # initialize rs2
sha512sig1h x1, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x6, 0x7fffffff # initialize rs1
li x27, 0x00000002 # initialize rs2
sha512sig1h x1, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x26, 0x7fffffff # initialize rs1
li x24, 0x80000000 # initialize rs2
sha512sig1h x9, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x6, 0x7fffffff # initialize rs1
li x20, 0x80000001 # initialize rs2
sha512sig1h x27, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x22, 0x7fffffff # initialize rs1
li x13, 0x7fffffff # initialize rs2
sha512sig1h x5, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x1, 0x7fffffff # initialize rs1
li x30, 0x7ffffffe # initialize rs2
sha512sig1h x21, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x6, 0x7fffffff # initialize rs1
li x17, 0xffffffff # initialize rs2
sha512sig1h x27, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x6, 0x7fffffff # initialize rs1
li x15, 0xfffffffe # initialize rs2
sha512sig1h x17, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x15, 0x7fffffff # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sha512sig1h x26, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x1, 0x7fffffff # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
sha512sig1h x13, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x18, 0x7fffffff # initialize rs1
li x25, 0x55555555 # initialize rs2
sha512sig1h x2, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x30, 0x7ffffffe # initialize rs1
li x12, 0x00000000 # initialize rs2
sha512sig1h x31, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x6, 0x7ffffffe # initialize rs1
li x10, 0x00000001 # initialize rs2
sha512sig1h x14, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x24, 0x7ffffffe # initialize rs1
li x30, 0x00000002 # initialize rs2
sha512sig1h x6, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x2, 0x7ffffffe # initialize rs1
li x8, 0x80000000 # initialize rs2
sha512sig1h x16, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x21, 0x7ffffffe # initialize rs1
li x2, 0x80000001 # initialize rs2
sha512sig1h x12, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x3, 0x7ffffffe # initialize rs1
li x18, 0x7fffffff # initialize rs2
sha512sig1h x26, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x30, 0x7ffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
sha512sig1h x17, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x16, 0x7ffffffe # initialize rs1
li x29, 0xffffffff # initialize rs2
sha512sig1h x8, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x13, 0x7ffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
sha512sig1h x22, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x5, 0x7ffffffe # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
sha512sig1h x26, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x22, 0x7ffffffe # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sha512sig1h x9, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x10, 0x7ffffffe # initialize rs1
li x12, 0x55555555 # initialize rs2
sha512sig1h x9, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x22, 0xffffffff # initialize rs1
li x31, 0x00000000 # initialize rs2
sha512sig1h x15, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x2, 0xffffffff # initialize rs1
li x24, 0x00000001 # initialize rs2
sha512sig1h x7, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x3, 0xffffffff # initialize rs1
li x18, 0x00000002 # initialize rs2
sha512sig1h x31, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x23, 0xffffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
sha512sig1h x3, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x17, 0xffffffff # initialize rs1
li x23, 0x80000001 # initialize rs2
sha512sig1h x28, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x11, 0xffffffff # initialize rs1
li x25, 0x7fffffff # initialize rs2
sha512sig1h x18, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x5, 0xffffffff # initialize rs1
li x13, 0x7ffffffe # initialize rs2
sha512sig1h x30, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x1, 0xffffffff # initialize rs1
li x26, 0xffffffff # initialize rs2
sha512sig1h x24, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x23, 0xffffffff # initialize rs1
li x5, 0xfffffffe # initialize rs2
sha512sig1h x31, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x20, 0xffffffff # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
sha512sig1h x27, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x17, 0xffffffff # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sha512sig1h x13, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x24, 0xffffffff # initialize rs1
li x12, 0x55555555 # initialize rs2
sha512sig1h x17, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x9, 0xfffffffe # initialize rs1
li x20, 0x00000000 # initialize rs2
sha512sig1h x26, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x18, 0xfffffffe # initialize rs1
li x17, 0x00000001 # initialize rs2
sha512sig1h x31, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x1, 0xfffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
sha512sig1h x14, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x23, 0xfffffffe # initialize rs1
li x5, 0x80000000 # initialize rs2
sha512sig1h x18, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x27, 0xfffffffe # initialize rs1
li x25, 0x80000001 # initialize rs2
sha512sig1h x26, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x5, 0xfffffffe # initialize rs1
li x3, 0x7fffffff # initialize rs2
sha512sig1h x26, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x16, 0xfffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
sha512sig1h x8, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x27, 0xfffffffe # initialize rs1
li x7, 0xffffffff # initialize rs2
sha512sig1h x15, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x9, 0xfffffffe # initialize rs1
li x15, 0xfffffffe # initialize rs2
sha512sig1h x8, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x22, 0xfffffffe # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
sha512sig1h x2, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x8, 0xfffffffe # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
sha512sig1h x17, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x15, 0xfffffffe # initialize rs1
li x9, 0x55555555 # initialize rs2
sha512sig1h x1, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x26, 0x5bbc8872 # initialize rs1
li x28, 0x00000000 # initialize rs2
sha512sig1h x2, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x27, 0x5bbc8872 # initialize rs1
li x23, 0x00000001 # initialize rs2
sha512sig1h x14, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x7, 0x5bbc8872 # initialize rs1
li x21, 0x00000002 # initialize rs2
sha512sig1h x16, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x19, 0x5bbc8872 # initialize rs1
li x12, 0x80000000 # initialize rs2
sha512sig1h x5, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x24, 0x5bbc8872 # initialize rs1
li x20, 0x80000001 # initialize rs2
sha512sig1h x5, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x12, 0x5bbc8872 # initialize rs1
li x22, 0x7fffffff # initialize rs2
sha512sig1h x29, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x14, 0x5bbc8872 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
sha512sig1h x31, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x13, 0x5bbc8872 # initialize rs1
li x20, 0xffffffff # initialize rs2
sha512sig1h x14, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x22, 0x5bbc8872 # initialize rs1
li x25, 0xfffffffe # initialize rs2
sha512sig1h x30, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x27, 0x5bbc8872 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
sha512sig1h x25, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x7, 0x5bbc8872 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sha512sig1h x29, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x17, 0x5bbc8872 # initialize rs1
li x7, 0x55555555 # initialize rs2
sha512sig1h x22, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x16, 0xaaaaaaaa # initialize rs1
li x26, 0x00000000 # initialize rs2
sha512sig1h x7, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x12, 0xaaaaaaaa # initialize rs1
li x20, 0x00000001 # initialize rs2
sha512sig1h x10, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x27, 0xaaaaaaaa # initialize rs1
li x17, 0x00000002 # initialize rs2
sha512sig1h x31, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x2, 0xaaaaaaaa # initialize rs1
li x30, 0x80000000 # initialize rs2
sha512sig1h x22, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x10, 0xaaaaaaaa # initialize rs1
li x6, 0x80000001 # initialize rs2
sha512sig1h x12, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x29, 0xaaaaaaaa # initialize rs1
li x10, 0x7fffffff # initialize rs2
sha512sig1h x14, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x12, 0xaaaaaaaa # initialize rs1
li x5, 0x7ffffffe # initialize rs2
sha512sig1h x22, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x23, 0xaaaaaaaa # initialize rs1
li x5, 0xffffffff # initialize rs2
sha512sig1h x31, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x1, 0xaaaaaaaa # initialize rs1
li x21, 0xfffffffe # initialize rs2
sha512sig1h x27, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x5, 0xaaaaaaaa # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
sha512sig1h x15, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x2, 0xaaaaaaaa # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
sha512sig1h x10, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x3, 0xaaaaaaaa # initialize rs1
li x2, 0x55555555 # initialize rs2
sha512sig1h x15, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x20, 0x55555555 # initialize rs1
li x1, 0x00000000 # initialize rs2
sha512sig1h x31, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x12, 0x55555555 # initialize rs1
li x6, 0x00000001 # initialize rs2
sha512sig1h x14, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x6, 0x55555555 # initialize rs1
li x13, 0x00000002 # initialize rs2
sha512sig1h x27, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x22, 0x55555555 # initialize rs1
li x2, 0x80000000 # initialize rs2
sha512sig1h x19, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x19, 0x55555555 # initialize rs1
li x30, 0x80000001 # initialize rs2
sha512sig1h x11, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x23, 0x55555555 # initialize rs1
li x7, 0x7fffffff # initialize rs2
sha512sig1h x14, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x29, 0x55555555 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
sha512sig1h x5, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x22, 0x55555555 # initialize rs1
li x17, 0xffffffff # initialize rs2
sha512sig1h x10, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x21, 0x55555555 # initialize rs1
li x22, 0xfffffffe # initialize rs2
sha512sig1h x26, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x12, 0x55555555 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
sha512sig1h x14, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x10, 0x55555555 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
sha512sig1h x1, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x1, 0x55555555 # initialize rs1
li x18, 0x55555555 # initialize rs2
sha512sig1h x14, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x55989b31 # initialize rs1
li x0, 0x4457b61f # initialize rs2
sha512sig1h x27, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xb622da0a # initialize rs1
li x1, 0x22f07337 # initialize rs2
sha512sig1h x11, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x4372f97d # initialize rs1
li x2, 0xc3f2f55b # initialize rs2
sha512sig1h x29, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2b739b9f # initialize rs1
li x3, 0x04075853 # initialize rs2
sha512sig1h x5, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5bc8dc4e # initialize rs1
li x4, 0x655bcd7e # initialize rs2
sha512sig1h x13, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0ea5752d # initialize rs1
li x5, 0xf65c6291 # initialize rs2
sha512sig1h x14, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x36b1fe4f # initialize rs1
li x6, 0xff87fe16 # initialize rs2
sha512sig1h x27, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x27, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa9bc84a2 # initialize rs1
li x7, 0xef7927b2 # initialize rs2
sha512sig1h x5, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x39c74efd # initialize rs1
li x8, 0x3d47065f # initialize rs2
sha512sig1h x27, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x35a12f86 # initialize rs1
li x9, 0x8183904a # initialize rs2
sha512sig1h x23, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xcff531b5 # initialize rs1
li x10, 0x161df162 # initialize rs2
sha512sig1h x7, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xbfc21f7e # initialize rs1
li x11, 0x5847c06a # initialize rs2
sha512sig1h x1, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xd585a2ff # initialize rs1
li x12, 0x067a90e9 # initialize rs2
sha512sig1h x30, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xde23774c # initialize rs1
li x13, 0x06c33a95 # initialize rs2
sha512sig1h x10, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x1ccde1ae # initialize rs1
li x14, 0x274d4703 # initialize rs2
sha512sig1h x3, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x5c2085f7 # initialize rs1
li x15, 0x0ce56167 # initialize rs2
sha512sig1h x6, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x610cc87a # initialize rs1
li x16, 0xef89de3d # initialize rs2
sha512sig1h x24, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x1a5140a7 # initialize rs1
li x17, 0x2c65bace # initialize rs2
sha512sig1h x8, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x0777b153 # initialize rs1
li x18, 0xe9ccc01e # initialize rs2
sha512sig1h x27, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xf48123f2 # initialize rs1
li x19, 0x0bce0032 # initialize rs2
sha512sig1h x9, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x9ffa6c75 # initialize rs1
li x20, 0x86672f98 # initialize rs2
sha512sig1h x9, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xf4173b63 # initialize rs1
li x21, 0xda58f7d7 # initialize rs2
sha512sig1h x12, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x87676fff # initialize rs1
li x22, 0x6533bb92 # initialize rs2
sha512sig1h x15, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xc0639ce0 # initialize rs1
li x23, 0x49d9ec64 # initialize rs2
sha512sig1h x18, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x4ff7826e # initialize rs1
li x24, 0x221c31f1 # initialize rs2
sha512sig1h x31, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xe79c2846 # initialize rs1
li x25, 0xb58e4695 # initialize rs2
sha512sig1h x8, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x773d3868 # initialize rs1
li x26, 0xb801e5d2 # initialize rs2
sha512sig1h x19, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x86cfc9e6 # initialize rs1
li x27, 0xff8e7127 # initialize rs2
sha512sig1h x10, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x95955e0d # initialize rs1
li x28, 0x9e18f6e5 # initialize rs2
sha512sig1h x27, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xc0474e6d # initialize rs1
li x29, 0x2d4f8562 # initialize rs2
sha512sig1h x12, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x2bab9df2 # initialize rs1
li x30, 0x31f63248 # initialize rs2
sha512sig1h x19, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x20dfb8b9 # initialize rs1
li x31, 0xa51676d3 # initialize rs2
sha512sig1h x6, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x526b8036 # initialize rs1
li x18, 0xed6e2646 # initialize rs2
sha512sig1h x0, x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xd7ba1c91 # initialize rs1
li x2, 0x3dd5dd2b # initialize rs2
sha512sig1h x1, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8bbe6706 # initialize rs1
li x2, 0x6e8aeadd # initialize rs2
sha512sig1h x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x811cee20 # initialize rs1
li x24, 0xd31ec4dc # initialize rs2
sha512sig1h x3, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1a38dbac # initialize rs1
li x27, 0x637d1eec # initialize rs2
sha512sig1h x4, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf50b9e64 # initialize rs1
li x17, 0x89721121 # initialize rs2
sha512sig1h x5, x5, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa2f48923 # initialize rs1
li x1, 0xd181bc69 # initialize rs2
sha512sig1h x6, x6, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf8bb2fb8 # initialize rs1
li x25, 0xdccc23c8 # initialize rs2
sha512sig1h x7, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8c79bbcb # initialize rs1
li x20, 0xa73867be # initialize rs2
sha512sig1h x8, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0566b326 # initialize rs1
li x2, 0x982f7591 # initialize rs2
sha512sig1h x9, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xb06778a9 # initialize rs1
li x25, 0x2de10870 # initialize rs2
sha512sig1h x10, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x6944be9d # initialize rs1
li x9, 0xe27a07f8 # initialize rs2
sha512sig1h x11, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x82ecac80 # initialize rs1
li x24, 0x8595c1b2 # initialize rs2
sha512sig1h x12, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x7200e2b3 # initialize rs1
li x30, 0xb5410d8d # initialize rs2
sha512sig1h x13, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x4306d226 # initialize rs1
li x15, 0x62acd8a8 # initialize rs2
sha512sig1h x14, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xe968ab3c # initialize rs1
li x1, 0x0da418fc # initialize rs2
sha512sig1h x15, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xdcd879be # initialize rs1
li x21, 0x37befdf4 # initialize rs2
sha512sig1h x16, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xe63d9f41 # initialize rs1
li x12, 0x6cd54669 # initialize rs2
sha512sig1h x17, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x929ddb8a # initialize rs1
li x5, 0x878a4843 # initialize rs2
sha512sig1h x18, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x6c7c5fc8 # initialize rs1
li x5, 0xb543e006 # initialize rs2
sha512sig1h x19, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa3aaf532 # initialize rs1
li x14, 0x4887c9d4 # initialize rs2
sha512sig1h x20, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x6dbbd7d6 # initialize rs1
li x16, 0x7f6078e6 # initialize rs2
sha512sig1h x21, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x26ab0aec # initialize rs1
li x25, 0x37fa9eda # initialize rs2
sha512sig1h x22, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x12f20ea4 # initialize rs1
li x8, 0x581b393e # initialize rs2
sha512sig1h x23, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xf3036c76 # initialize rs1
li x21, 0x9713424f # initialize rs2
sha512sig1h x24, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xf5f7aba0 # initialize rs1
li x28, 0xd1888d72 # initialize rs2
sha512sig1h x25, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xe3b05a46 # initialize rs1
li x24, 0x1e3630ce # initialize rs2
sha512sig1h x26, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x60b62f9e # initialize rs1
li x20, 0x47dd3aae # initialize rs2
sha512sig1h x27, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x714a438c # initialize rs1
li x12, 0x2643e3c7 # initialize rs2
sha512sig1h x28, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf438ba3a # initialize rs1
li x30, 0x2cad0f8a # initialize rs2
sha512sig1h x29, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6dda85c3 # initialize rs1
li x2, 0x80f15341 # initialize rs2
sha512sig1h x30, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x44362ce7 # initialize rs1
li x30, 0x47699a92 # initialize rs2
sha512sig1h x31, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x16, 0xa9f388e2 # initialize rs1
li x0, 0xb33c41df # initialize rs2
sha512sig1h x0, x16, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x19, 0xc065d8d7 # initialize rs1
li x1, 0x859ac655 # initialize rs2
sha512sig1h x1, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x26, 0x80d894d0 # initialize rs1
li x2, 0x4e17df12 # initialize rs2
sha512sig1h x2, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x13, 0x3d7c4746 # initialize rs1
li x3, 0x3d4ecc2b # initialize rs2
sha512sig1h x3, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x4e206e8a # initialize rs1
li x4, 0x419cde92 # initialize rs2
sha512sig1h x4, x6, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x76122f88 # initialize rs1
li x5, 0x5c66bc2f # initialize rs2
sha512sig1h x5, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0xb3dee504 # initialize rs1
li x6, 0x78a045ad # initialize rs2
sha512sig1h x6, x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x5f3cc315 # initialize rs1
li x7, 0x584c16d1 # initialize rs2
sha512sig1h x7, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x2, 0x647673fb # initialize rs1
li x8, 0xaae2212e # initialize rs2
sha512sig1h x8, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x7, 0x92b661c7 # initialize rs1
li x9, 0x40698d49 # initialize rs2
sha512sig1h x9, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x2, 0xc34fe71c # initialize rs1
li x10, 0xfecf8982 # initialize rs2
sha512sig1h x10, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x22, 0x9f047e8c # initialize rs1
li x11, 0xf6fb07a2 # initialize rs2
sha512sig1h x11, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x9, 0xb29359a7 # initialize rs1
li x12, 0x5249cf37 # initialize rs2
sha512sig1h x12, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x9, 0xcb9133b0 # initialize rs1
li x13, 0xbe14d759 # initialize rs2
sha512sig1h x13, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x20, 0x8e045cc8 # initialize rs1
li x14, 0xd9631c1f # initialize rs2
sha512sig1h x14, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x1, 0x002de876 # initialize rs1
li x15, 0xc7f8b55b # initialize rs2
sha512sig1h x15, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x29, 0x7ea28374 # initialize rs1
li x16, 0xb6e0627a # initialize rs2
sha512sig1h x16, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x1, 0x885030fe # initialize rs1
li x17, 0x39aa0b52 # initialize rs2
sha512sig1h x17, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x31, 0xde2a201f # initialize rs1
li x18, 0x59f1548c # initialize rs2
sha512sig1h x18, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x461e184f # initialize rs1
li x19, 0x6ed362b4 # initialize rs2
sha512sig1h x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x6, 0xd08fb364 # initialize rs1
li x20, 0xc089e9b5 # initialize rs2
sha512sig1h x20, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x15, 0xa78844e2 # initialize rs1
li x21, 0x643c155b # initialize rs2
sha512sig1h x21, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x14, 0x97935bd8 # initialize rs1
li x22, 0x9f1c4e65 # initialize rs2
sha512sig1h x22, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x15, 0x5e8839d6 # initialize rs1
li x23, 0x3e403203 # initialize rs2
sha512sig1h x23, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x7, 0xf1e9c89f # initialize rs1
li x24, 0xac96d24e # initialize rs2
sha512sig1h x24, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x1, 0x107262b8 # initialize rs1
li x25, 0x6a9d28b7 # initialize rs2
sha512sig1h x25, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x8, 0x6ed2a456 # initialize rs1
li x26, 0xddd7083e # initialize rs2
sha512sig1h x26, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x20, 0x4b3b915a # initialize rs1
li x27, 0x9c596cd6 # initialize rs2
sha512sig1h x27, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x13, 0xd33fa407 # initialize rs1
li x28, 0x36aad22e # initialize rs2
sha512sig1h x28, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x30, 0xdecfd197 # initialize rs1
li x29, 0x81b491be # initialize rs2
sha512sig1h x29, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x7, 0x02b8a43e # initialize rs1
li x30, 0x1ffe559e # initialize rs2
sha512sig1h x30, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x7, 0x8a4feb39 # initialize rs1
li x31, 0x086d3cb5 # initialize rs2
sha512sig1h x31, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x5df46ec1 # initialize rs1
li x0, 0x6b7b6d53 # initialize rs2
sha512sig1h x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xe184aa7d # initialize rs1
li x1, 0x1557fc05 # initialize rs2
sha512sig1h x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x8f081235 # initialize rs1
li x2, 0x0a25fa1f # initialize rs2
sha512sig1h x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xaedea2c7 # initialize rs1
li x3, 0x0cedc0c4 # initialize rs2
sha512sig1h x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xef1eade8 # initialize rs1
li x4, 0x2170ee09 # initialize rs2
sha512sig1h x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x381e1f12 # initialize rs1
li x5, 0x8a50e171 # initialize rs2
sha512sig1h x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa051b5b2 # initialize rs1
li x6, 0x63745e6e # initialize rs2
sha512sig1h x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf15961b6 # initialize rs1
li x7, 0x2ef0615e # initialize rs2
sha512sig1h x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x25450ae9 # initialize rs1
li x8, 0x63e8e3b9 # initialize rs2
sha512sig1h x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xba299a57 # initialize rs1
li x9, 0x410d5b8a # initialize rs2
sha512sig1h x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x0a177ef8 # initialize rs1
li x10, 0x5520677f # initialize rs2
sha512sig1h x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x4e8319e9 # initialize rs1
li x11, 0xf2f234d2 # initialize rs2
sha512sig1h x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xe83e9a45 # initialize rs1
li x12, 0xf69767a5 # initialize rs2
sha512sig1h x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x4947f256 # initialize rs1
li x13, 0x5ae4ce5f # initialize rs2
sha512sig1h x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xeb50ee67 # initialize rs1
li x14, 0xf5f9a0d7 # initialize rs2
sha512sig1h x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x4fba0d35 # initialize rs1
li x15, 0xbb67e141 # initialize rs2
sha512sig1h x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xfbcc24dc # initialize rs1
li x16, 0x890fd435 # initialize rs2
sha512sig1h x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x492059de # initialize rs1
li x17, 0x9f4174d7 # initialize rs2
sha512sig1h x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x40887145 # initialize rs1
li x18, 0xfe8b8ba7 # initialize rs2
sha512sig1h x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x8a951bc2 # initialize rs1
li x19, 0x67f9472e # initialize rs2
sha512sig1h x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x3bedd8dc # initialize rs1
li x20, 0xd6f1df6d # initialize rs2
sha512sig1h x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x0fb22e10 # initialize rs1
li x21, 0xe2df1fb3 # initialize rs2
sha512sig1h x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x9c9a4f81 # initialize rs1
li x22, 0xb7aeab53 # initialize rs2
sha512sig1h x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xceb2d08b # initialize rs1
li x23, 0x298d2b53 # initialize rs2
sha512sig1h x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x04edf5b3 # initialize rs1
li x24, 0xe66e8b34 # initialize rs2
sha512sig1h x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x92006f9e # initialize rs1
li x25, 0xa9945473 # initialize rs2
sha512sig1h x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x82a2f9f6 # initialize rs1
li x26, 0x3a268af6 # initialize rs2
sha512sig1h x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xca00697e # initialize rs1
li x27, 0x5a80d038 # initialize rs2
sha512sig1h x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xb2d605b6 # initialize rs1
li x28, 0x9d701a71 # initialize rs2
sha512sig1h x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xc73df127 # initialize rs1
li x29, 0x5fd936bb # initialize rs2
sha512sig1h x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x88c441eb # initialize rs1
li x30, 0xe807b768 # initialize rs2
sha512sig1h x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xcf4bba44 # initialize rs1
li x31, 0x02916c45 # initialize rs2
sha512sig1h x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x26, x16 # perform first operation
sha512sig1h x29, x9, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x18, x16 # perform first operation
sha512sig1h x9, x3, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x28, x25 # perform first operation
sha512sig1h x12, x16, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x7, x8 # perform first operation
sha512sig1h x31, x31, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x30, x14 # perform first operation
sha512sig1h x17, x23, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x12, x11 # perform first operation
sha512sig1h x24, x9, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x5, x22 # perform first operation
sha512sig1h x17, x14, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x8, x10 # perform first operation
sha512sig1h x11, x14, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x1, x7 # perform first operation
sha512sig1h x19, x8, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x2, x6 # perform first operation
sha512sig1h x2, x3, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x18, x30 # perform first operation
sha512sig1h x30, x15, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x8, x2 # perform first operation
sha512sig1h x6, x14, x23 # perform second (triggering) operation

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
