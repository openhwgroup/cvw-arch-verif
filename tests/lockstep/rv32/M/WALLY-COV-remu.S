///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/M/WALLY-COV-remu.S
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
li x0, 0xb2238e73 # initialize rs1
li x7, 0xe3713a1a # initialize rs2
remu x21, x0, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xd1b57e9a # initialize rs1
li x13, 0x100ceb45 # initialize rs2
remu x27, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x679f256f # initialize rs1
li x11, 0x3eb304fa # initialize rs2
remu x19, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xbb7d998c # initialize rs1
li x25, 0x10350857 # initialize rs2
remu x8, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xad4bbd88 # initialize rs1
li x29, 0x496f3aa4 # initialize rs2
remu x2, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb5066df1 # initialize rs1
li x12, 0x7d183e56 # initialize rs2
remu x29, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x720cd6b2 # initialize rs1
li x25, 0x9b39d58d # initialize rs2
remu x14, x6, x25 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb67bf829 # initialize rs1
li x22, 0x8052f4c6 # initialize rs2
remu x4, x7, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x23a78f14 # initialize rs1
li x2, 0x5f0eee25 # initialize rs2
remu x12, x8, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x7edd920b # initialize rs1
li x16, 0xba1ff01e # initialize rs2
remu x27, x9, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x1932e8a9 # initialize rs1
li x11, 0xbcfdfb38 # initialize rs2
remu x7, x10, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xb4f3b044 # initialize rs1
li x15, 0xe46bb528 # initialize rs2
remu x17, x11, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xbcf01430 # initialize rs1
li x16, 0x316bba9e # initialize rs2
remu x23, x12, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x9d4f7b12 # initialize rs1
li x12, 0xf071f6d8 # initialize rs2
remu x3, x13, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x1a2c1d68 # initialize rs1
li x18, 0xab70b02c # initialize rs2
remu x6, x14, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x9e07187f # initialize rs1
li x3, 0xf8b830ec # initialize rs2
remu x8, x15, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x7ef9dca1 # initialize rs1
li x29, 0x31e2117a # initialize rs2
remu x1, x16, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3efe92d9 # initialize rs1
li x16, 0xdc2c7806 # initialize rs2
remu x29, x17, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x42ffb1e7 # initialize rs1
li x14, 0x8293d6ef # initialize rs2
remu x25, x18, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x56d573dd # initialize rs1
li x9, 0x6eb1fccd # initialize rs2
remu x14, x19, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x6aaa641e # initialize rs1
li x22, 0x9501c4aa # initialize rs2
remu x18, x20, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x3c27d197 # initialize rs1
li x28, 0xa5f920c7 # initialize rs2
remu x18, x21, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xe76c3245 # initialize rs1
li x6, 0x9929464d # initialize rs2
remu x20, x22, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xd3989d93 # initialize rs1
li x29, 0xfa0b8557 # initialize rs2
remu x9, x23, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xbbb552fc # initialize rs1
li x30, 0xed8e68b9 # initialize rs2
remu x23, x24, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x699fa1b3 # initialize rs1
li x9, 0xd756b248 # initialize rs2
remu x7, x25, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x351dab30 # initialize rs1
li x10, 0xf4eb6088 # initialize rs2
remu x1, x26, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x84339a1b # initialize rs1
li x11, 0xd801c51e # initialize rs2
remu x7, x27, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xa45f2d62 # initialize rs1
li x3, 0x4afd0313 # initialize rs2
remu x21, x28, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xa97f4ed9 # initialize rs1
li x12, 0x219df6bb # initialize rs2
remu x27, x29, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x9f2addb3 # initialize rs1
li x29, 0x71283f9e # initialize rs2
remu x25, x30, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x288ed5ed # initialize rs1
li x11, 0x9c0fca57 # initialize rs2
remu x7, x31, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x23, 0x06b97908 # initialize rs1
li x0, 0x55e3be58 # initialize rs2
remu x3, x23, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x26, 0xc41fa3dd # initialize rs1
li x1, 0xba49ca43 # initialize rs2
remu x24, x26, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x15, 0x289fdc17 # initialize rs1
li x2, 0x7e47d2f8 # initialize rs2
remu x10, x15, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x22, 0x92756905 # initialize rs1
li x3, 0x566499f4 # initialize rs2
remu x29, x22, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
li x29, 0x560a8338 # initialize rs1
li x4, 0x16535160 # initialize rs2
remu x30, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0xec196f6d # initialize rs1
li x5, 0x7434770a # initialize rs2
remu x20, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
li x15, 0x2752bf59 # initialize rs1
li x6, 0xb7cfb686 # initialize rs2
remu x12, x15, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0xf0b61d8a # initialize rs1
li x7, 0xf9dc9326 # initialize rs2
remu x20, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0xfc9b02cc # initialize rs1
li x8, 0x61001a0e # initialize rs2
remu x16, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x24, 0x1763c31a # initialize rs1
li x9, 0x0fb1eb25 # initialize rs2
remu x23, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x24, 0x949c92c1 # initialize rs1
li x10, 0x6ce3e3fb # initialize rs2
remu x20, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x2, 0x8c6a5f0b # initialize rs1
li x11, 0xc8942923 # initialize rs2
remu x10, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x20, 0x7826039b # initialize rs1
li x12, 0x833a423d # initialize rs2
remu x16, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x16, 0xf0c3e7ca # initialize rs1
li x13, 0xd3381e30 # initialize rs2
remu x9, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x15, 0x6ce7efed # initialize rs1
li x14, 0xd0a50655 # initialize rs2
remu x9, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x18, 0x7fa40e45 # initialize rs1
li x15, 0x428fa606 # initialize rs2
remu x13, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x8, 0x4a45f2cb # initialize rs1
li x16, 0xc1a9232f # initialize rs2
remu x17, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0x2392f006 # initialize rs1
li x17, 0xd2f02520 # initialize rs2
remu x19, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x23, 0xfba080cb # initialize rs1
li x18, 0x8042038d # initialize rs2
remu x5, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x18, 0xec36f42a # initialize rs1
li x19, 0x0254d07b # initialize rs2
remu x8, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x14, 0x9f2e45b2 # initialize rs1
li x20, 0x04c49ea1 # initialize rs2
remu x2, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x10, 0x9c2e456d # initialize rs1
li x21, 0xadf7ac1f # initialize rs2
remu x17, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x27, 0x3a02dad5 # initialize rs1
li x22, 0xb84520d2 # initialize rs2
remu x26, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x3, 0x1a90c0b4 # initialize rs1
li x23, 0x7ea03170 # initialize rs2
remu x7, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x26, 0x855470be # initialize rs1
li x24, 0x97894224 # initialize rs2
remu x2, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x17, 0x9c507740 # initialize rs1
li x25, 0xc0b96e1d # initialize rs2
remu x13, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x10, 0x1bde3eef # initialize rs1
li x26, 0xdaa192ed # initialize rs2
remu x13, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x6, 0xb377adb2 # initialize rs1
li x27, 0x5e979033 # initialize rs2
remu x15, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x19, 0xf79fd1d3 # initialize rs1
li x28, 0x4e8d09fc # initialize rs2
remu x27, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x26, 0x960c7113 # initialize rs1
li x29, 0x647ae866 # initialize rs2
remu x7, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x5, 0x5b940511 # initialize rs1
li x30, 0x85e94920 # initialize rs2
remu x6, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x14, 0x6a1c3e8f # initialize rs1
li x31, 0xebd49ca1 # initialize rs2
remu x30, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 252)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0x8b5f319a # initialize rs1
li x10, 0x63b5d6dc # initialize rs2
remu x0, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x20, 0x5ce46213 # initialize rs1
li x17, 0x0b7bbd4f # initialize rs2
remu x1, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x21, 0xc7f96d0c # initialize rs1
li x18, 0x7798155d # initialize rs2
remu x2, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x18, 0xa452dab3 # initialize rs1
li x11, 0xd96e1fdf # initialize rs2
remu x3, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0x39af6a8e # initialize rs1
li x26, 0x27f454c1 # initialize rs2
remu x4, x22, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x30b1f600 # initialize rs1
li x16, 0xc6751407 # initialize rs2
remu x5, x27, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x26c0a5bc # initialize rs1
li x5, 0xa5c927f1 # initialize rs2
remu x6, x9, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0xf562e8c9 # initialize rs1
li x11, 0x45b9a66f # initialize rs2
remu x7, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x7, 0x82ced62b # initialize rs1
li x3, 0x0bcb7112 # initialize rs2
remu x8, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0x069f938a # initialize rs1
li x2, 0x403ce9aa # initialize rs2
remu x9, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x7, 0xc71aedbc # initialize rs1
li x29, 0x5b7cf3d0 # initialize rs2
remu x10, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x13, 0x1f9da2e8 # initialize rs1
li x25, 0xa68341ff # initialize rs2
remu x11, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x21, 0x0e418b44 # initialize rs1
li x26, 0x292727b1 # initialize rs2
remu x12, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x29, 0xf6565cae # initialize rs1
li x13, 0xfdd2a116 # initialize rs2
remu x13, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x23, 0xda014e68 # initialize rs1
li x30, 0xe67adf19 # initialize rs2
remu x14, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x22, 0x3a1fe6b9 # initialize rs1
li x8, 0x811f749e # initialize rs2
remu x15, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x17, 0x5072c7ad # initialize rs1
li x5, 0x81026bb2 # initialize rs2
remu x16, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x28, 0xae4bcc46 # initialize rs1
li x30, 0xad68e20d # initialize rs2
remu x17, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x21, 0x18fc2903 # initialize rs1
li x12, 0x33f01cde # initialize rs2
remu x18, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x3, 0x3fc9b969 # initialize rs1
li x5, 0x3988fb47 # initialize rs2
remu x19, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0x778dac58 # initialize rs1
li x10, 0x761a6316 # initialize rs2
remu x20, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x278769f2 # initialize rs1
li x13, 0x0faad90e # initialize rs2
remu x21, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x30, 0x4c6b1434 # initialize rs1
li x27, 0xfe37b071 # initialize rs2
remu x22, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x26, 0x83a93a50 # initialize rs1
li x22, 0x7a45445c # initialize rs2
remu x23, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x18, 0xeb05f3b5 # initialize rs1
li x7, 0x6a416465 # initialize rs2
remu x24, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x27, 0x8aa799e4 # initialize rs1
li x16, 0x5168b5ab # initialize rs2
remu x25, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x15, 0xebbd6a9b # initialize rs1
li x9, 0xfa20060d # initialize rs2
remu x26, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x15, 0x2a41f24a # initialize rs1
li x3, 0xe9dcfd7f # initialize rs2
remu x27, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x19, 0x125d9398 # initialize rs1
li x28, 0xa1ba6e87 # initialize rs2
remu x28, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x22, 0x614c2a54 # initialize rs1
li x25, 0x6edefe68 # initialize rs2
remu x29, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x8, 0x39a99849 # initialize rs1
li x12, 0xeefbd23d # initialize rs2
remu x30, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x3, 0x08402076 # initialize rs1
li x30, 0x72a50971 # initialize rs2
remu x31, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x00000000 # initialize rs1
li x7, 0x7ce93d24 # initialize rs2
remu x12, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x5, 0x00000001 # initialize rs1
li x29, 0x9d5bf151 # initialize rs2
remu x30, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x26, 0x00000002 # initialize rs1
li x13, 0xb289bcd9 # initialize rs2
remu x23, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x27, 0x80000000 # initialize rs1
li x23, 0x4373daff # initialize rs2
remu x31, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x31, 0x80000001 # initialize rs1
li x15, 0xec968d4c # initialize rs2
remu x17, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x3, 0x7fffffff # initialize rs1
li x5, 0x3180826f # initialize rs2
remu x13, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x8, 0x7ffffffe # initialize rs1
li x20, 0x29243daa # initialize rs2
remu x5, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0xffffffff # initialize rs1
li x12, 0x417c0989 # initialize rs2
remu x11, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0xfffffffe # initialize rs1
li x24, 0x947fa205 # initialize rs2
remu x6, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x5, 0x5bbc8872 # initialize rs1
li x8, 0x040ea78e # initialize rs2
remu x28, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x26, 0xaaaaaaaa # initialize rs1
li x22, 0xad4e69f2 # initialize rs2
remu x28, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x55555555 # initialize rs1
li x7, 0xb57821b1 # initialize rs2
remu x1, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x6, 0x517c103e # initialize rs1
li x21, 0x00000000 # initialize rs2
remu x7, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x384b7d37 # initialize rs1
li x28, 0x00000001 # initialize rs2
remu x13, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x6, 0x5f427e69 # initialize rs1
li x2, 0x00000002 # initialize rs2
remu x18, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x15, 0x36a28a09 # initialize rs1
li x10, 0x80000000 # initialize rs2
remu x19, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x21, 0x7918bac1 # initialize rs1
li x22, 0x80000001 # initialize rs2
remu x8, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x16, 0xf53137c9 # initialize rs1
li x17, 0x7fffffff # initialize rs2
remu x20, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x9, 0x3daece23 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
remu x16, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0xf90ce6f8 # initialize rs1
li x1, 0xffffffff # initialize rs2
remu x18, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x28, 0x26b9fae3 # initialize rs1
li x21, 0xfffffffe # initialize rs2
remu x12, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x1, 0xe5eb9b79 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
remu x22, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x15, 0xb6332ce9 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
remu x19, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x15, 0x116f793d # initialize rs1
li x31, 0x55555555 # initialize rs2
remu x19, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0x00000000 # initialize rs1
li x14, 0x00000000 # initialize rs2
remu x9, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x00000000 # initialize rs1
li x22, 0x00000001 # initialize rs2
remu x28, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x24, 0x00000000 # initialize rs1
li x28, 0x00000002 # initialize rs2
remu x18, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x3, 0x00000000 # initialize rs1
li x7, 0x80000000 # initialize rs2
remu x10, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x17, 0x00000000 # initialize rs1
li x23, 0x80000001 # initialize rs2
remu x5, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x12, 0x00000000 # initialize rs1
li x23, 0x7fffffff # initialize rs2
remu x22, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x30, 0x00000000 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
remu x5, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x27, 0x00000000 # initialize rs1
li x6, 0xffffffff # initialize rs2
remu x2, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x26, 0x00000000 # initialize rs1
li x3, 0xfffffffe # initialize rs2
remu x15, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x16, 0x00000000 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
remu x18, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x22, 0x00000000 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
remu x9, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x8, 0x00000000 # initialize rs1
li x20, 0x55555555 # initialize rs2
remu x24, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x22, 0x00000001 # initialize rs1
li x13, 0x00000000 # initialize rs2
remu x6, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x22, 0x00000001 # initialize rs1
li x30, 0x00000001 # initialize rs2
remu x12, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x6, 0x00000001 # initialize rs1
li x16, 0x00000002 # initialize rs2
remu x25, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x8, 0x00000001 # initialize rs1
li x15, 0x80000000 # initialize rs2
remu x21, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x26, 0x00000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
remu x27, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x2, 0x00000001 # initialize rs1
li x3, 0x7fffffff # initialize rs2
remu x31, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x18, 0x00000001 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
remu x28, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x15, 0x00000001 # initialize rs1
li x21, 0xffffffff # initialize rs2
remu x13, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x18, 0x00000001 # initialize rs1
li x22, 0xfffffffe # initialize rs2
remu x1, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x26, 0x00000001 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
remu x28, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x1, 0x00000001 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
remu x10, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x19, 0x00000001 # initialize rs1
li x16, 0x55555555 # initialize rs2
remu x3, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x6, 0x00000002 # initialize rs1
li x5, 0x00000000 # initialize rs2
remu x28, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x10, 0x00000002 # initialize rs1
li x13, 0x00000001 # initialize rs2
remu x14, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x8, 0x00000002 # initialize rs1
li x23, 0x00000002 # initialize rs2
remu x25, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x30, 0x00000002 # initialize rs1
li x26, 0x80000000 # initialize rs2
remu x22, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x17, 0x00000002 # initialize rs1
li x25, 0x80000001 # initialize rs2
remu x5, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x3, 0x00000002 # initialize rs1
li x5, 0x7fffffff # initialize rs2
remu x1, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x17, 0x00000002 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
remu x30, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x5, 0x00000002 # initialize rs1
li x1, 0xffffffff # initialize rs2
remu x3, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x15, 0x00000002 # initialize rs1
li x7, 0xfffffffe # initialize rs2
remu x29, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x1, 0x00000002 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
remu x29, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x3, 0x00000002 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
remu x24, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x7, 0x00000002 # initialize rs1
li x12, 0x55555555 # initialize rs2
remu x13, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x21, 0x80000000 # initialize rs1
li x3, 0x00000000 # initialize rs2
remu x28, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x17, 0x80000000 # initialize rs1
li x1, 0x00000001 # initialize rs2
remu x7, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x22, 0x80000000 # initialize rs1
li x2, 0x00000002 # initialize rs2
remu x26, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x29, 0x80000000 # initialize rs1
li x8, 0x80000000 # initialize rs2
remu x27, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x21, 0x80000000 # initialize rs1
li x19, 0x80000001 # initialize rs2
remu x22, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x7, 0x80000000 # initialize rs1
li x2, 0x7fffffff # initialize rs2
remu x1, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x17, 0x80000000 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
remu x30, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x15, 0x80000000 # initialize rs1
li x31, 0xffffffff # initialize rs2
remu x10, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x14, 0x80000000 # initialize rs1
li x8, 0xfffffffe # initialize rs2
remu x13, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x28, 0x80000000 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
remu x18, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x20, 0x80000000 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
remu x23, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x2, 0x80000000 # initialize rs1
li x14, 0x55555555 # initialize rs2
remu x24, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x9, 0x80000001 # initialize rs1
li x25, 0x00000000 # initialize rs2
remu x19, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x14, 0x80000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
remu x29, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x16, 0x80000001 # initialize rs1
li x12, 0x00000002 # initialize rs2
remu x18, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x8, 0x80000001 # initialize rs1
li x9, 0x80000000 # initialize rs2
remu x21, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x24, 0x80000001 # initialize rs1
li x26, 0x80000001 # initialize rs2
remu x6, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x26, 0x80000001 # initialize rs1
li x1, 0x7fffffff # initialize rs2
remu x17, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x17, 0x80000001 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
remu x25, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x7, 0x80000001 # initialize rs1
li x10, 0xffffffff # initialize rs2
remu x24, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x10, 0x80000001 # initialize rs1
li x28, 0xfffffffe # initialize rs2
remu x1, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x22, 0x80000001 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
remu x30, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x28, 0x80000001 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
remu x21, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x25, 0x80000001 # initialize rs1
li x5, 0x55555555 # initialize rs2
remu x21, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x19, 0x7fffffff # initialize rs1
li x26, 0x00000000 # initialize rs2
remu x6, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x17, 0x7fffffff # initialize rs1
li x21, 0x00000001 # initialize rs2
remu x6, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x30, 0x7fffffff # initialize rs1
li x18, 0x00000002 # initialize rs2
remu x26, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x7, 0x7fffffff # initialize rs1
li x15, 0x80000000 # initialize rs2
remu x25, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x20, 0x7fffffff # initialize rs1
li x14, 0x80000001 # initialize rs2
remu x9, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x23, 0x7fffffff # initialize rs1
li x11, 0x7fffffff # initialize rs2
remu x28, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x26, 0x7fffffff # initialize rs1
li x28, 0x7ffffffe # initialize rs2
remu x10, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x12, 0x7fffffff # initialize rs1
li x27, 0xffffffff # initialize rs2
remu x19, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x3, 0x7fffffff # initialize rs1
li x9, 0xfffffffe # initialize rs2
remu x14, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x8, 0x7fffffff # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
remu x17, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x13, 0x7fffffff # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
remu x6, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x9, 0x7fffffff # initialize rs1
li x3, 0x55555555 # initialize rs2
remu x17, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x21, 0x7ffffffe # initialize rs1
li x10, 0x00000000 # initialize rs2
remu x22, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x25, 0x7ffffffe # initialize rs1
li x15, 0x00000001 # initialize rs2
remu x23, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x11, 0x7ffffffe # initialize rs1
li x12, 0x00000002 # initialize rs2
remu x29, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x12, 0x7ffffffe # initialize rs1
li x31, 0x80000000 # initialize rs2
remu x5, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x5, 0x7ffffffe # initialize rs1
li x15, 0x80000001 # initialize rs2
remu x26, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x6, 0x7ffffffe # initialize rs1
li x7, 0x7fffffff # initialize rs2
remu x9, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x2, 0x7ffffffe # initialize rs1
li x15, 0x7ffffffe # initialize rs2
remu x11, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x2, 0x7ffffffe # initialize rs1
li x11, 0xffffffff # initialize rs2
remu x27, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x27, 0x7ffffffe # initialize rs1
li x14, 0xfffffffe # initialize rs2
remu x30, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x23, 0x7ffffffe # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
remu x20, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x15, 0x7ffffffe # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
remu x24, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x29, 0x7ffffffe # initialize rs1
li x16, 0x55555555 # initialize rs2
remu x14, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x3, 0xffffffff # initialize rs1
li x15, 0x00000000 # initialize rs2
remu x26, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x14, 0xffffffff # initialize rs1
li x2, 0x00000001 # initialize rs2
remu x21, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x26, 0xffffffff # initialize rs1
li x1, 0x00000002 # initialize rs2
remu x27, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x12, 0xffffffff # initialize rs1
li x7, 0x80000000 # initialize rs2
remu x2, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x31, 0xffffffff # initialize rs1
li x19, 0x80000001 # initialize rs2
remu x9, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x18, 0xffffffff # initialize rs1
li x26, 0x7fffffff # initialize rs2
remu x9, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x21, 0xffffffff # initialize rs1
li x28, 0x7ffffffe # initialize rs2
remu x13, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x19, 0xffffffff # initialize rs1
li x10, 0xffffffff # initialize rs2
remu x31, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x14, 0xffffffff # initialize rs1
li x6, 0xfffffffe # initialize rs2
remu x17, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x14, 0xffffffff # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
remu x21, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x22, 0xffffffff # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
remu x23, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x5, 0xffffffff # initialize rs1
li x29, 0x55555555 # initialize rs2
remu x27, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x31, 0xfffffffe # initialize rs1
li x25, 0x00000000 # initialize rs2
remu x3, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x26, 0xfffffffe # initialize rs1
li x30, 0x00000001 # initialize rs2
remu x21, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x6, 0xfffffffe # initialize rs1
li x18, 0x00000002 # initialize rs2
remu x11, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x31, 0xfffffffe # initialize rs1
li x13, 0x80000000 # initialize rs2
remu x2, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x2, 0xfffffffe # initialize rs1
li x30, 0x80000001 # initialize rs2
remu x27, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x15, 0xfffffffe # initialize rs1
li x26, 0x7fffffff # initialize rs2
remu x11, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x7, 0xfffffffe # initialize rs1
li x25, 0x7ffffffe # initialize rs2
remu x14, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x17, 0xfffffffe # initialize rs1
li x15, 0xffffffff # initialize rs2
remu x16, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x27, 0xfffffffe # initialize rs1
li x15, 0xfffffffe # initialize rs2
remu x5, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x22, 0xfffffffe # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
remu x5, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x12, 0xfffffffe # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
remu x21, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x14, 0xfffffffe # initialize rs1
li x15, 0x55555555 # initialize rs2
remu x18, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x9, 0x5bbc8872 # initialize rs1
li x14, 0x00000000 # initialize rs2
remu x2, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x7, 0x5bbc8872 # initialize rs1
li x26, 0x00000001 # initialize rs2
remu x17, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x27, 0x5bbc8872 # initialize rs1
li x15, 0x00000002 # initialize rs2
remu x10, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x6, 0x5bbc8872 # initialize rs1
li x20, 0x80000000 # initialize rs2
remu x19, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x23, 0x5bbc8872 # initialize rs1
li x22, 0x80000001 # initialize rs2
remu x5, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x31, 0x5bbc8872 # initialize rs1
li x8, 0x7fffffff # initialize rs2
remu x21, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x8, 0x5bbc8872 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
remu x5, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x14, 0x5bbc8872 # initialize rs1
li x17, 0xffffffff # initialize rs2
remu x15, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x16, 0x5bbc8872 # initialize rs1
li x15, 0xfffffffe # initialize rs2
remu x2, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
remu x1, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x13, 0x5bbc8872 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
remu x28, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x1, 0x5bbc8872 # initialize rs1
li x28, 0x55555555 # initialize rs2
remu x31, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x16, 0xaaaaaaaa # initialize rs1
li x7, 0x00000000 # initialize rs2
remu x3, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x11, 0xaaaaaaaa # initialize rs1
li x10, 0x00000001 # initialize rs2
remu x22, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x2, 0xaaaaaaaa # initialize rs1
li x9, 0x00000002 # initialize rs2
remu x27, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x15, 0xaaaaaaaa # initialize rs1
li x31, 0x80000000 # initialize rs2
remu x30, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x10, 0xaaaaaaaa # initialize rs1
li x8, 0x80000001 # initialize rs2
remu x5, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x3, 0xaaaaaaaa # initialize rs1
li x2, 0x7fffffff # initialize rs2
remu x15, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x31, 0xaaaaaaaa # initialize rs1
li x16, 0x7ffffffe # initialize rs2
remu x15, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x21, 0xaaaaaaaa # initialize rs1
li x13, 0xffffffff # initialize rs2
remu x2, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x8, 0xaaaaaaaa # initialize rs1
li x29, 0xfffffffe # initialize rs2
remu x28, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x15, 0xaaaaaaaa # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
remu x27, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x29, 0xaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
remu x24, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x22, 0xaaaaaaaa # initialize rs1
li x26, 0x55555555 # initialize rs2
remu x11, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x14, 0x55555555 # initialize rs1
li x29, 0x00000000 # initialize rs2
remu x17, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x20, 0x55555555 # initialize rs1
li x6, 0x00000001 # initialize rs2
remu x27, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x30, 0x55555555 # initialize rs1
li x26, 0x00000002 # initialize rs2
remu x10, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x11, 0x55555555 # initialize rs1
li x28, 0x80000000 # initialize rs2
remu x24, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x25, 0x55555555 # initialize rs1
li x2, 0x80000001 # initialize rs2
remu x12, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x9, 0x55555555 # initialize rs1
li x21, 0x7fffffff # initialize rs2
remu x17, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x20, 0x55555555 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
remu x26, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x27, 0x55555555 # initialize rs1
li x26, 0xffffffff # initialize rs2
remu x2, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x10, 0x55555555 # initialize rs1
li x26, 0xfffffffe # initialize rs2
remu x27, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x31, 0x55555555 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
remu x10, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x13, 0x55555555 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
remu x15, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x3, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
remu x19, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x363987c7 # initialize rs1
li x0, 0x1e70d7d3 # initialize rs2
remu x13, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x66fc0cdc # initialize rs1
li x1, 0xafe2bbd2 # initialize rs2
remu x25, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x550d04c6 # initialize rs1
li x2, 0xd15ade45 # initialize rs2
remu x5, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x9530af0b # initialize rs1
li x3, 0xacb92577 # initialize rs2
remu x14, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x50bdbc27 # initialize rs1
li x4, 0xd34ed250 # initialize rs2
remu x14, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8801d72d # initialize rs1
li x5, 0x622f7a2f # initialize rs2
remu x13, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa9ec17ef # initialize rs1
li x6, 0xab821749 # initialize rs2
remu x25, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x572fa7da # initialize rs1
li x7, 0xc205b1f4 # initialize rs2
remu x19, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x50a9643a # initialize rs1
li x8, 0x89b29200 # initialize rs2
remu x23, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x28e16805 # initialize rs1
li x9, 0x108b1806 # initialize rs2
remu x29, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xe2509bce # initialize rs1
li x10, 0x19de6948 # initialize rs2
remu x26, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x77adee96 # initialize rs1
li x11, 0x17a224e8 # initialize rs2
remu x7, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x2d409e90 # initialize rs1
li x12, 0x78ee2085 # initialize rs2
remu x14, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x359002c0 # initialize rs1
li x13, 0xe94c1eb3 # initialize rs2
remu x3, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x1681e34a # initialize rs1
li x14, 0xccfb251c # initialize rs2
remu x26, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x2fb88978 # initialize rs1
li x15, 0x2427e0a7 # initialize rs2
remu x17, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x0bf4c867 # initialize rs1
li x16, 0x581c9891 # initialize rs2
remu x20, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x1f9f7d0f # initialize rs1
li x17, 0x8300d712 # initialize rs2
remu x29, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xef9509bd # initialize rs1
li x18, 0x0a026543 # initialize rs2
remu x2, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xe4d196d9 # initialize rs1
li x19, 0x48c36cf1 # initialize rs2
remu x1, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xc39ef5fa # initialize rs1
li x20, 0xed94c263 # initialize rs2
remu x21, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x4225d06c # initialize rs1
li x21, 0x4f21ef55 # initialize rs2
remu x1, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x7f1fc7cc # initialize rs1
li x22, 0xc325d2cd # initialize rs2
remu x12, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x7e0813d8 # initialize rs1
li x23, 0x0a75667c # initialize rs2
remu x26, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x2c4eb699 # initialize rs1
li x24, 0x78c28293 # initialize rs2
remu x18, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x656dfb89 # initialize rs1
li x25, 0x81d29887 # initialize rs2
remu x24, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xb6dc1175 # initialize rs1
li x26, 0x1beb4336 # initialize rs2
remu x22, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x5ceaa2b0 # initialize rs1
li x27, 0x21a714f8 # initialize rs2
remu x14, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x0cf7b129 # initialize rs1
li x28, 0x6cd535a7 # initialize rs2
remu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x318e2daa # initialize rs1
li x29, 0x3b1804c2 # initialize rs2
remu x13, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xa07cdf9c # initialize rs1
li x30, 0x48ff0899 # initialize rs2
remu x26, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x3cc371a0 # initialize rs1
li x31, 0xb5e3706f # initialize rs2
remu x22, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x1a0095bf # initialize rs1
li x29, 0xadd6d9c0 # initialize rs2
remu x0, x0, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x6eee0151 # initialize rs1
li x24, 0x9a104743 # initialize rs2
remu x1, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x1bb69f10 # initialize rs1
li x9, 0xda57b60c # initialize rs2
remu x2, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xccee204b # initialize rs1
li x30, 0x6e60210e # initialize rs2
remu x3, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x99d58ec7 # initialize rs1
li x13, 0x4f5551c2 # initialize rs2
remu x4, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x534e5eb8 # initialize rs1
li x10, 0xc73e77bd # initialize rs2
remu x5, x5, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5a42eac5 # initialize rs1
li x28, 0x1ad49f45 # initialize rs2
remu x6, x6, x28 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x40a9a0b1 # initialize rs1
li x28, 0x80fcc191 # initialize rs2
remu x7, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x2c959dc6 # initialize rs1
li x23, 0xcfff3ceb # initialize rs2
remu x8, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0375da3b # initialize rs1
li x13, 0x82be6ea7 # initialize rs2
remu x9, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x5e83f825 # initialize rs1
li x24, 0x3f066b4a # initialize rs2
remu x10, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x0a56cb8a # initialize rs1
li x3, 0x31e75393 # initialize rs2
remu x11, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x16bc615d # initialize rs1
li x21, 0xfc89bb21 # initialize rs2
remu x12, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x59e2d94f # initialize rs1
li x12, 0x1436bf19 # initialize rs2
remu x13, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x4cb21c1f # initialize rs1
li x11, 0x8c7d998d # initialize rs2
remu x14, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xcd6fdd35 # initialize rs1
li x20, 0xe45b05f5 # initialize rs2
remu x15, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xad9f2ae5 # initialize rs1
li x16, 0x3d88ecc8 # initialize rs2
remu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xaa7bd7a6 # initialize rs1
li x24, 0xe30806ea # initialize rs2
remu x17, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x3bf7d0da # initialize rs1
li x30, 0xb8247451 # initialize rs2
remu x18, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x99b0b462 # initialize rs1
li x1, 0x98d095f8 # initialize rs2
remu x19, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa5552fa2 # initialize rs1
li x28, 0x407b8d58 # initialize rs2
remu x20, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x591c9ff2 # initialize rs1
li x8, 0xdaeef550 # initialize rs2
remu x21, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x636c4e1d # initialize rs1
li x29, 0x91259856 # initialize rs2
remu x22, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x1ebde970 # initialize rs1
li x11, 0x9e4a2956 # initialize rs2
remu x23, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x81ac769f # initialize rs1
li x18, 0xd5258f88 # initialize rs2
remu x24, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x13cf2428 # initialize rs1
li x26, 0xc9a02862 # initialize rs2
remu x25, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xb8cd05c2 # initialize rs1
li x26, 0x4b3ecbce # initialize rs2
remu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x0900dffc # initialize rs1
li x10, 0xb2f07802 # initialize rs2
remu x27, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x8ef7aada # initialize rs1
li x23, 0xd3a6d87a # initialize rs2
remu x28, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xcd4b03c1 # initialize rs1
li x31, 0x6bffbdcc # initialize rs2
remu x29, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x18c08425 # initialize rs1
li x5, 0x0b6a3898 # initialize rs2
remu x30, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x96244c20 # initialize rs1
li x10, 0x0c1d65f7 # initialize rs2
remu x31, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x30, 0xf318613b # initialize rs1
li x0, 0x181e4a5e # initialize rs2
remu x0, x30, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x17, 0x0fa46d13 # initialize rs1
li x1, 0xa5d8e4e0 # initialize rs2
remu x1, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x9, 0x8c4b2ff2 # initialize rs1
li x2, 0xbccc2776 # initialize rs2
remu x2, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x14, 0xbdf947ad # initialize rs1
li x3, 0xbeba759c # initialize rs2
remu x3, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0xeff559dd # initialize rs1
li x4, 0xc5d90453 # initialize rs2
remu x4, x12, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0xd34191ac # initialize rs1
li x5, 0x198441ef # initialize rs2
remu x5, x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0xc5e5b176 # initialize rs1
li x6, 0x8520901f # initialize rs2
remu x6, x2, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0xd38c677e # initialize rs1
li x7, 0x913a6841 # initialize rs2
remu x7, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x28, 0x5bdff439 # initialize rs1
li x8, 0x8615d46d # initialize rs2
remu x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x11, 0xda16c2bd # initialize rs1
li x9, 0x3c1b4bca # initialize rs2
remu x9, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x17, 0xc6c44fed # initialize rs1
li x10, 0x384a55b8 # initialize rs2
remu x10, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x27, 0x364439c6 # initialize rs1
li x11, 0xb3f03fac # initialize rs2
remu x11, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x23, 0xd7f5030d # initialize rs1
li x12, 0x89f641b4 # initialize rs2
remu x12, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x22, 0x954c0322 # initialize rs1
li x13, 0xd3d0d515 # initialize rs2
remu x13, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x16, 0xae26e1fc # initialize rs1
li x14, 0x27caabea # initialize rs2
remu x14, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x6, 0xb551fbd9 # initialize rs1
li x15, 0x23a7c2f7 # initialize rs2
remu x15, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x24, 0xd36eb4b8 # initialize rs1
li x16, 0x635fcf22 # initialize rs2
remu x16, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x30, 0x2c1e0e27 # initialize rs1
li x17, 0x6d2c8ec5 # initialize rs2
remu x17, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x3, 0x9721ea73 # initialize rs1
li x18, 0x2e7fe83f # initialize rs2
remu x18, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x16, 0xa82693c4 # initialize rs1
li x19, 0x83b2a591 # initialize rs2
remu x19, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x7aa895bf # initialize rs1
li x20, 0xc8b0e081 # initialize rs2
remu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x30, 0x24747361 # initialize rs1
li x21, 0xb3538a7b # initialize rs2
remu x21, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x13, 0x196cc6b0 # initialize rs1
li x22, 0x9a60132e # initialize rs2
remu x22, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x6, 0xdf62737a # initialize rs1
li x23, 0x27024bf8 # initialize rs2
remu x23, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x30, 0xdb1d5d88 # initialize rs1
li x24, 0xe3d5e864 # initialize rs2
remu x24, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x13, 0x01f52ac7 # initialize rs1
li x25, 0x011f007b # initialize rs2
remu x25, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x31, 0x117f3596 # initialize rs1
li x26, 0xcab7eab1 # initialize rs2
remu x26, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x29, 0xfec6a8a8 # initialize rs1
li x27, 0x4a6213f0 # initialize rs2
remu x27, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x11, 0xcd42deac # initialize rs1
li x28, 0x633dc766 # initialize rs2
remu x28, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x31, 0xbcbbeb49 # initialize rs1
li x29, 0xf9de1dcc # initialize rs2
remu x29, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x8, 0x2f955828 # initialize rs1
li x30, 0xb0266a5f # initialize rs2
remu x30, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x26, 0x18ea4b3d # initialize rs1
li x31, 0xfe027993 # initialize rs2
remu x31, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xfa7fcad4 # initialize rs1
li x0, 0xe9f80f54 # initialize rs2
remu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x3b6c26a5 # initialize rs1
li x1, 0x765d68d1 # initialize rs2
remu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xa1a7ab5e # initialize rs1
li x2, 0x4c411f57 # initialize rs2
remu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x1bebe346 # initialize rs1
li x3, 0x0facef12 # initialize rs2
remu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5cfe17e1 # initialize rs1
li x4, 0x8780aa02 # initialize rs2
remu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4d8698ba # initialize rs1
li x5, 0xdd8f92bf # initialize rs2
remu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x50f0428d # initialize rs1
li x6, 0x1fb0d598 # initialize rs2
remu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x89714f6a # initialize rs1
li x7, 0xf22008a0 # initialize rs2
remu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x89458b8a # initialize rs1
li x8, 0x42fa0513 # initialize rs2
remu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x11fe548b # initialize rs1
li x9, 0xc13a08f1 # initialize rs2
remu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xcf2e5a42 # initialize rs1
li x10, 0x153bc0f2 # initialize rs2
remu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xfa8dc32a # initialize rs1
li x11, 0xe6007860 # initialize rs2
remu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x70029fbb # initialize rs1
li x12, 0xe7d197d8 # initialize rs2
remu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x18653982 # initialize rs1
li x13, 0x1f203ef5 # initialize rs2
remu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xdc2d7fbf # initialize rs1
li x14, 0x97ff0417 # initialize rs2
remu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x586e2f57 # initialize rs1
li x15, 0x6620bdc7 # initialize rs2
remu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xa7618031 # initialize rs1
li x16, 0x5600ed39 # initialize rs2
remu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x22c11e96 # initialize rs1
li x17, 0xb3b8ed97 # initialize rs2
remu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x9eb11ec0 # initialize rs1
li x18, 0x6b308719 # initialize rs2
remu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x8abb0259 # initialize rs1
li x19, 0x88751751 # initialize rs2
remu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x281687d6 # initialize rs1
li x20, 0x777318e3 # initialize rs2
remu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xf25cc438 # initialize rs1
li x21, 0x2a7f557c # initialize rs2
remu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xf36f6416 # initialize rs1
li x22, 0x1ef1717e # initialize rs2
remu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xc27bba7a # initialize rs1
li x23, 0xe1e33bf1 # initialize rs2
remu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xe717f5d0 # initialize rs1
li x24, 0x8c517e0b # initialize rs2
remu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x5ca9a01d # initialize rs1
li x25, 0x4b355812 # initialize rs2
remu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x5b3c8af8 # initialize rs1
li x26, 0x415ebe30 # initialize rs2
remu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc40e1a59 # initialize rs1
li x27, 0x1bd0caf9 # initialize rs2
remu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x16648bc5 # initialize rs1
li x28, 0xdf0778a1 # initialize rs2
remu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x240e7ac6 # initialize rs1
li x29, 0xb2662fb4 # initialize rs2
remu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x0282d351 # initialize rs1
li x30, 0x917b34a3 # initialize rs2
remu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x75ce2097 # initialize rs1
li x31, 0x4472dd5b # initialize rs2
remu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x9, x21 # perform first operation
remu x27, x25, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x13, x26 # perform first operation
remu x20, x11, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x20, x28 # perform first operation
remu x18, x11, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x26, x15 # perform first operation
remu x6, x9, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x16, x28 # perform first operation
remu x3, x30, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x18, x26 # perform first operation
remu x18, x27, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x30, x11 # perform first operation
remu x23, x13, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x2, x15 # perform first operation
remu x26, x8, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x25, x27 # perform first operation
remu x21, x28, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x19, x11 # perform first operation
remu x19, x31, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x18, x23 # perform first operation
remu x23, x12, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x7, x22 # perform first operation
remu x26, x30, x29 # perform second (triggering) operation

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
