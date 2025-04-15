///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-slt.S
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
li x0, 0xea562851 # initialize rs1
li x5, 0x1d03f01c # initialize rs2
slt x18, x0, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x06fc86e8 # initialize rs1
li x27, 0xe887e9ee # initialize rs2
slt x13, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x88a701d3 # initialize rs1
li x9, 0xbadb48be # initialize rs2
slt x24, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xe5cd076d # initialize rs1
li x14, 0x63450672 # initialize rs2
slt x16, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x02b376ff # initialize rs1
li x2, 0x00b02769 # initialize rs2
slt x24, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x35469dc2 # initialize rs1
li x8, 0x5a025cdd # initialize rs2
slt x31, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x82f45fc8 # initialize rs1
li x30, 0xfd96625a # initialize rs2
slt x18, x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1502b1e5 # initialize rs1
li x20, 0x51dfb3d4 # initialize rs2
slt x15, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x1cb7a43d # initialize rs1
li x7, 0xc0b82c08 # initialize rs2
slt x30, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xb8ab615d # initialize rs1
li x26, 0x04d3dcbe # initialize rs2
slt x29, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xeaa478ae # initialize rs1
li x15, 0x930a718f # initialize rs2
slt x25, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xb5e5afac # initialize rs1
li x19, 0xe430b610 # initialize rs2
slt x31, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x25f23f25 # initialize rs1
li x28, 0xb38e8700 # initialize rs2
slt x22, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x3ec27f23 # initialize rs1
li x24, 0x66a01617 # initialize rs2
slt x31, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4327daa7 # initialize rs1
li x18, 0x7768b3e1 # initialize rs2
slt x30, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1df08754 # initialize rs1
li x6, 0xf79465de # initialize rs2
slt x2, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xd2378587 # initialize rs1
li x29, 0xbcbc65ab # initialize rs2
slt x30, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x10549acc # initialize rs1
li x26, 0x6dacf05d # initialize rs2
slt x31, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x18836824 # initialize rs1
li x17, 0x5ca60e72 # initialize rs2
slt x6, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xe0ef2fcc # initialize rs1
li x6, 0xc907dd4e # initialize rs2
slt x18, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xf2a8d934 # initialize rs1
li x6, 0xcf970722 # initialize rs2
slt x15, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x6c568882 # initialize rs1
li x17, 0x8aa439db # initialize rs2
slt x26, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x50de03c1 # initialize rs1
li x17, 0xbb994ceb # initialize rs2
slt x16, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xf7b7a803 # initialize rs1
li x11, 0x0718932e # initialize rs2
slt x25, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x501b52bc # initialize rs1
li x26, 0x97f83be8 # initialize rs2
slt x2, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xb71c12d1 # initialize rs1
li x15, 0x9ca3c257 # initialize rs2
slt x13, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x9e5a9578 # initialize rs1
li x18, 0xe8e39550 # initialize rs2
slt x19, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x68bd1787 # initialize rs1
li x20, 0x3b2389df # initialize rs2
slt x23, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x17056b1c # initialize rs1
li x3, 0xdb30cbc6 # initialize rs2
slt x30, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x2b4a97a6 # initialize rs1
li x7, 0xe706c759 # initialize rs2
slt x16, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xf51968c3 # initialize rs1
li x10, 0x27a5587b # initialize rs2
slt x21, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x179862e0 # initialize rs1
li x17, 0x77e5b216 # initialize rs2
slt x14, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x9, 0x503e0f4e # initialize rs1
li x0, 0x4fdecda5 # initialize rs2
slt x19, x9, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x26, 0xeb0c2092 # initialize rs1
li x1, 0x3e517919 # initialize rs2
slt x13, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x31, 0x9e4c2d4a # initialize rs1
li x2, 0xa6f5833d # initialize rs2
slt x28, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x15, 0x2a6d710f # initialize rs1
li x3, 0x0aa5a35b # initialize rs2
slt x10, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0x7e1d4bde # initialize rs1
li x4, 0xbc1ac3fc # initialize rs2
slt x16, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x0e2d275e # initialize rs1
li x5, 0x6fbb1ad5 # initialize rs2
slt x14, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x11, 0x4efaa8e9 # initialize rs1
li x6, 0x02a91351 # initialize rs2
slt x29, x11, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0x651b5c6c # initialize rs1
li x7, 0x31a2f87c # initialize rs2
slt x19, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x14, 0x1feff560 # initialize rs1
li x8, 0x3553f981 # initialize rs2
slt x11, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x10, 0x0d46f3c2 # initialize rs1
li x9, 0x26388278 # initialize rs2
slt x11, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x20, 0x849475f5 # initialize rs1
li x10, 0xf02f317e # initialize rs2
slt x11, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0xb6b6fa32 # initialize rs1
li x11, 0xab00a1c6 # initialize rs2
slt x16, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x28, 0xedc4fbdf # initialize rs1
li x12, 0x6c792ded # initialize rs2
slt x20, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x17, 0x75be8719 # initialize rs1
li x13, 0x0296ca04 # initialize rs2
slt x24, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x25, 0x22cf956a # initialize rs1
li x14, 0x520bc355 # initialize rs2
slt x11, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x6, 0xabc06c1b # initialize rs1
li x15, 0x5a1ee62e # initialize rs2
slt x3, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x8, 0x41aea10e # initialize rs1
li x16, 0xe1bb6cd3 # initialize rs2
slt x7, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0x7a6534de # initialize rs1
li x17, 0xe72b8765 # initialize rs2
slt x15, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x8, 0xeeb43dec # initialize rs1
li x18, 0xfc68f759 # initialize rs2
slt x1, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x21, 0x52b311ab # initialize rs1
li x19, 0x95bb9619 # initialize rs2
slt x11, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0xc38ddc93 # initialize rs1
li x20, 0xdae72da5 # initialize rs2
slt x7, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x9, 0xad64fc21 # initialize rs1
li x21, 0xcfb6135e # initialize rs2
slt x17, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x3, 0x0c54bc56 # initialize rs1
li x22, 0xf5a094fb # initialize rs2
slt x10, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x9, 0xb9fee848 # initialize rs1
li x23, 0xc8e1cf67 # initialize rs2
slt x8, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x15, 0x5ca31b6d # initialize rs1
li x24, 0x28d29030 # initialize rs2
slt x9, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x12, 0xfe13bf08 # initialize rs1
li x25, 0x0d831d33 # initialize rs2
slt x16, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x13, 0x53abfee2 # initialize rs1
li x26, 0xe8620646 # initialize rs2
slt x21, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x5, 0xdefa6cdd # initialize rs1
li x27, 0x552052ab # initialize rs2
slt x1, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x24, 0xa7620027 # initialize rs1
li x28, 0x5c98272c # initialize rs2
slt x30, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x11, 0xea5fc5c7 # initialize rs1
li x29, 0xcb4488a3 # initialize rs2
slt x27, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x25, 0xc18a95ab # initialize rs1
li x30, 0x1d528a08 # initialize rs2
slt x24, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x17, 0x32350aa5 # initialize rs1
li x31, 0x76e83957 # initialize rs2
slt x9, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 252)

# Testcase cp_rd (Test destination rd = x0)
li x17, 0x16874ce9 # initialize rs1
li x16, 0xc85f60ea # initialize rs2
slt x0, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x3, 0xfa23d8fe # initialize rs1
li x16, 0xb7f13815 # initialize rs2
slt x1, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x21, 0x075761dc # initialize rs1
li x6, 0xbfc67305 # initialize rs2
slt x2, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x31, 0xe70bc36a # initialize rs1
li x6, 0x84802487 # initialize rs2
slt x3, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x82cb7611 # initialize rs1
li x17, 0x0f774a8f # initialize rs2
slt x4, x18, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x390fed3e # initialize rs1
li x10, 0xc5dc2878 # initialize rs2
slt x5, x27, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0xd722dd4f # initialize rs1
li x4, 0x465bedb5 # initialize rs2
slt x6, x8, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0xaef1d502 # initialize rs1
li x15, 0xf2ed7768 # initialize rs2
slt x7, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x31, 0x68c948b1 # initialize rs1
li x24, 0xed2fe95f # initialize rs2
slt x8, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x29, 0x110ddbfa # initialize rs1
li x6, 0xe537fc28 # initialize rs2
slt x9, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0x93f80939 # initialize rs1
li x11, 0xdb11d345 # initialize rs2
slt x10, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x17, 0x676c3238 # initialize rs1
li x16, 0x6f60f537 # initialize rs2
slt x11, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x17, 0xd07cc825 # initialize rs1
li x10, 0x6b1da880 # initialize rs2
slt x12, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0x3a118457 # initialize rs1
li x26, 0xda949ac1 # initialize rs2
slt x13, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0xdac7ee93 # initialize rs1
li x5, 0xc3c2aad2 # initialize rs2
slt x14, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x16, 0x12698bcd # initialize rs1
li x8, 0x544b6f5a # initialize rs2
slt x15, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x20, 0x20f77e2f # initialize rs1
li x27, 0x2da4c416 # initialize rs2
slt x16, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x22, 0xd4c78913 # initialize rs1
li x19, 0xe4d28a26 # initialize rs2
slt x17, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x27, 0x486b3701 # initialize rs1
li x29, 0xa10dc3fd # initialize rs2
slt x18, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xac467d88 # initialize rs1
li x24, 0x88a58d76 # initialize rs2
slt x19, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x25, 0x0f480f5f # initialize rs1
li x13, 0x35d94cb5 # initialize rs2
slt x20, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0x55d10cdf # initialize rs1
li x24, 0xc0b9085a # initialize rs2
slt x21, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x10, 0x1068ba1b # initialize rs1
li x18, 0xa55c8fac # initialize rs2
slt x22, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x11, 0xb6a08451 # initialize rs1
li x27, 0x4ebea812 # initialize rs2
slt x23, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0x12504bb6 # initialize rs1
li x1, 0x7bf6b46f # initialize rs2
slt x24, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x31, 0xfb082fc4 # initialize rs1
li x2, 0xfefbae3a # initialize rs2
slt x25, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x6, 0x3e948ca5 # initialize rs1
li x25, 0xf218c7df # initialize rs2
slt x26, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0x5d64fe2f # initialize rs1
li x13, 0xfdafeb50 # initialize rs2
slt x27, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x13, 0x6d147ae5 # initialize rs1
li x15, 0xa2408dca # initialize rs2
slt x28, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x6, 0x27914224 # initialize rs1
li x29, 0xbcbf349c # initialize rs2
slt x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x11, 0x6f410107 # initialize rs1
li x5, 0xfde37586 # initialize rs2
slt x30, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x14, 0x67473c79 # initialize rs1
li x19, 0x6a511ca7 # initialize rs2
slt x31, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x00000000 # initialize rs1
li x12, 0xefdd6fff # initialize rs2
slt x29, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x2, 0x00000001 # initialize rs1
li x28, 0x341a21ab # initialize rs2
slt x21, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0x00000002 # initialize rs1
li x18, 0x6519bcf7 # initialize rs2
slt x24, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x11, 0x80000000 # initialize rs1
li x16, 0xe94158a8 # initialize rs2
slt x26, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x10, 0x80000001 # initialize rs1
li x25, 0x0617e342 # initialize rs2
slt x29, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x1, 0x7fffffff # initialize rs1
li x21, 0xd984785f # initialize rs2
slt x14, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x29, 0x7ffffffe # initialize rs1
li x2, 0x83f3904a # initialize rs2
slt x10, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x21, 0xffffffff # initialize rs1
li x5, 0xbef879ee # initialize rs2
slt x31, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x27, 0xfffffffe # initialize rs1
li x5, 0x4fa6c520 # initialize rs2
slt x21, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x13, 0x5bbc8872 # initialize rs1
li x28, 0x8242f483 # initialize rs2
slt x25, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x24, 0xaaaaaaaa # initialize rs1
li x10, 0x3d1905e1 # initialize rs2
slt x14, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x15, 0x55555555 # initialize rs1
li x18, 0x4576702e # initialize rs2
slt x17, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0xde9eb0a3 # initialize rs1
li x29, 0x00000000 # initialize rs2
slt x25, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x20, 0xc8872cd2 # initialize rs1
li x31, 0x00000001 # initialize rs2
slt x15, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x22, 0x6452e05c # initialize rs1
li x3, 0x00000002 # initialize rs2
slt x2, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x17, 0x1dd382d3 # initialize rs1
li x16, 0x80000000 # initialize rs2
slt x24, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x5, 0x04d7f2e9 # initialize rs1
li x14, 0x80000001 # initialize rs2
slt x11, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x22, 0x1692e972 # initialize rs1
li x7, 0x7fffffff # initialize rs2
slt x20, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x31, 0x444f265e # initialize rs1
li x2, 0x7ffffffe # initialize rs2
slt x28, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x28, 0xed5a7d62 # initialize rs1
li x18, 0xffffffff # initialize rs2
slt x24, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0x04bad457 # initialize rs1
li x28, 0xfffffffe # initialize rs2
slt x26, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x31, 0x3c3b89c2 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
slt x22, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x3, 0x511b3d1c # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
slt x17, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x3, 0x28e29564 # initialize rs1
li x10, 0x55555555 # initialize rs2
slt x29, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x6, 0x00000000 # initialize rs1
li x26, 0x00000000 # initialize rs2
slt x20, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x8, 0x00000000 # initialize rs1
li x20, 0x00000001 # initialize rs2
slt x7, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x9, 0x00000000 # initialize rs1
li x23, 0x00000002 # initialize rs2
slt x8, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x29, 0x00000000 # initialize rs1
li x22, 0x80000000 # initialize rs2
slt x15, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x2, 0x00000000 # initialize rs1
li x29, 0x80000001 # initialize rs2
slt x13, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x23, 0x00000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
slt x26, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x26, 0x00000000 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
slt x16, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x14, 0x00000000 # initialize rs1
li x8, 0xffffffff # initialize rs2
slt x6, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x17, 0x00000000 # initialize rs1
li x27, 0xfffffffe # initialize rs2
slt x19, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x18, 0x00000000 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
slt x29, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x31, 0x00000000 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
slt x27, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x23, 0x00000000 # initialize rs1
li x3, 0x55555555 # initialize rs2
slt x15, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x28, 0x00000001 # initialize rs1
li x27, 0x00000000 # initialize rs2
slt x16, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x27, 0x00000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
slt x6, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x13, 0x00000001 # initialize rs1
li x8, 0x00000002 # initialize rs2
slt x30, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x17, 0x00000001 # initialize rs1
li x19, 0x80000000 # initialize rs2
slt x7, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x12, 0x00000001 # initialize rs1
li x9, 0x80000001 # initialize rs2
slt x6, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x30, 0x00000001 # initialize rs1
li x12, 0x7fffffff # initialize rs2
slt x11, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x3, 0x00000001 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
slt x9, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x23, 0x00000001 # initialize rs1
li x29, 0xffffffff # initialize rs2
slt x22, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x3, 0x00000001 # initialize rs1
li x2, 0xfffffffe # initialize rs2
slt x8, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x9, 0x00000001 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
slt x25, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x25, 0x00000001 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
slt x27, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x8, 0x00000001 # initialize rs1
li x20, 0x55555555 # initialize rs2
slt x6, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x30, 0x00000002 # initialize rs1
li x24, 0x00000000 # initialize rs2
slt x20, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x25, 0x00000002 # initialize rs1
li x7, 0x00000001 # initialize rs2
slt x1, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x8, 0x00000002 # initialize rs1
li x12, 0x00000002 # initialize rs2
slt x28, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x26, 0x00000002 # initialize rs1
li x6, 0x80000000 # initialize rs2
slt x9, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x11, 0x00000002 # initialize rs1
li x28, 0x80000001 # initialize rs2
slt x25, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x7, 0x00000002 # initialize rs1
li x28, 0x7fffffff # initialize rs2
slt x20, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x2, 0x00000002 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
slt x16, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x31, 0x00000002 # initialize rs1
li x6, 0xffffffff # initialize rs2
slt x25, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x14, 0x00000002 # initialize rs1
li x11, 0xfffffffe # initialize rs2
slt x29, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x29, 0x00000002 # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
slt x17, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x6, 0x00000002 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
slt x22, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x23, 0x00000002 # initialize rs1
li x16, 0x55555555 # initialize rs2
slt x29, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x29, 0x80000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
slt x21, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x3, 0x80000000 # initialize rs1
li x31, 0x00000001 # initialize rs2
slt x5, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x18, 0x80000000 # initialize rs1
li x30, 0x00000002 # initialize rs2
slt x15, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x23, 0x80000000 # initialize rs1
li x30, 0x80000000 # initialize rs2
slt x17, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x20, 0x80000000 # initialize rs1
li x21, 0x80000001 # initialize rs2
slt x29, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x2, 0x80000000 # initialize rs1
li x21, 0x7fffffff # initialize rs2
slt x15, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x21, 0x80000000 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
slt x31, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x18, 0x80000000 # initialize rs1
li x1, 0xffffffff # initialize rs2
slt x28, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x6, 0x80000000 # initialize rs1
li x3, 0xfffffffe # initialize rs2
slt x26, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x12, 0x80000000 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
slt x8, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x6, 0x80000000 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
slt x9, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x7, 0x80000000 # initialize rs1
li x19, 0x55555555 # initialize rs2
slt x2, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x10, 0x80000001 # initialize rs1
li x9, 0x00000000 # initialize rs2
slt x18, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x11, 0x80000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
slt x27, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x28, 0x80000001 # initialize rs1
li x27, 0x00000002 # initialize rs2
slt x8, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x5, 0x80000001 # initialize rs1
li x23, 0x80000000 # initialize rs2
slt x30, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x16, 0x80000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
slt x30, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x28, 0x80000001 # initialize rs1
li x21, 0x7fffffff # initialize rs2
slt x10, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x12, 0x80000001 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
slt x9, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x6, 0x80000001 # initialize rs1
li x10, 0xffffffff # initialize rs2
slt x30, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x30, 0x80000001 # initialize rs1
li x28, 0xfffffffe # initialize rs2
slt x1, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x5, 0x80000001 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
slt x11, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x2, 0x80000001 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
slt x8, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x16, 0x80000001 # initialize rs1
li x22, 0x55555555 # initialize rs2
slt x30, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x17, 0x7fffffff # initialize rs1
li x21, 0x00000000 # initialize rs2
slt x20, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x22, 0x7fffffff # initialize rs1
li x7, 0x00000001 # initialize rs2
slt x5, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x19, 0x7fffffff # initialize rs1
li x20, 0x00000002 # initialize rs2
slt x13, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x20, 0x7fffffff # initialize rs1
li x24, 0x80000000 # initialize rs2
slt x9, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x31, 0x7fffffff # initialize rs1
li x21, 0x80000001 # initialize rs2
slt x26, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x24, 0x7fffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
slt x27, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x10, 0x7fffffff # initialize rs1
li x29, 0x7ffffffe # initialize rs2
slt x9, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x14, 0x7fffffff # initialize rs1
li x29, 0xffffffff # initialize rs2
slt x2, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x15, 0x7fffffff # initialize rs1
li x10, 0xfffffffe # initialize rs2
slt x14, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x10, 0x7fffffff # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
slt x16, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x8, 0x7fffffff # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
slt x7, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x10, 0x7fffffff # initialize rs1
li x26, 0x55555555 # initialize rs2
slt x16, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x22, 0x7ffffffe # initialize rs1
li x10, 0x00000000 # initialize rs2
slt x1, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x22, 0x7ffffffe # initialize rs1
li x5, 0x00000001 # initialize rs2
slt x29, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x27, 0x7ffffffe # initialize rs1
li x14, 0x00000002 # initialize rs2
slt x2, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x29, 0x7ffffffe # initialize rs1
li x17, 0x80000000 # initialize rs2
slt x20, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x26, 0x7ffffffe # initialize rs1
li x5, 0x80000001 # initialize rs2
slt x15, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x19, 0x7ffffffe # initialize rs1
li x1, 0x7fffffff # initialize rs2
slt x21, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x23, 0x7ffffffe # initialize rs1
li x3, 0x7ffffffe # initialize rs2
slt x13, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x13, 0x7ffffffe # initialize rs1
li x6, 0xffffffff # initialize rs2
slt x31, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x5, 0x7ffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
slt x30, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x6, 0x7ffffffe # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
slt x2, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x23, 0x7ffffffe # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
slt x24, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x13, 0x7ffffffe # initialize rs1
li x6, 0x55555555 # initialize rs2
slt x17, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x18, 0xffffffff # initialize rs1
li x10, 0x00000000 # initialize rs2
slt x20, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x27, 0xffffffff # initialize rs1
li x18, 0x00000001 # initialize rs2
slt x24, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x28, 0xffffffff # initialize rs1
li x15, 0x00000002 # initialize rs2
slt x13, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x28, 0xffffffff # initialize rs1
li x16, 0x80000000 # initialize rs2
slt x3, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x2, 0xffffffff # initialize rs1
li x20, 0x80000001 # initialize rs2
slt x31, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x23, 0xffffffff # initialize rs1
li x20, 0x7fffffff # initialize rs2
slt x26, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x16, 0xffffffff # initialize rs1
li x28, 0x7ffffffe # initialize rs2
slt x1, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x26, 0xffffffff # initialize rs1
li x27, 0xffffffff # initialize rs2
slt x21, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x10, 0xffffffff # initialize rs1
li x7, 0xfffffffe # initialize rs2
slt x1, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x30, 0xffffffff # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
slt x12, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x15, 0xffffffff # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
slt x13, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x27, 0xffffffff # initialize rs1
li x14, 0x55555555 # initialize rs2
slt x29, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x11, 0xfffffffe # initialize rs1
li x3, 0x00000000 # initialize rs2
slt x22, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x30, 0xfffffffe # initialize rs1
li x18, 0x00000001 # initialize rs2
slt x11, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x10, 0xfffffffe # initialize rs1
li x26, 0x00000002 # initialize rs2
slt x11, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x30, 0xfffffffe # initialize rs1
li x27, 0x80000000 # initialize rs2
slt x2, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x24, 0xfffffffe # initialize rs1
li x29, 0x80000001 # initialize rs2
slt x10, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x11, 0xfffffffe # initialize rs1
li x30, 0x7fffffff # initialize rs2
slt x25, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x9, 0xfffffffe # initialize rs1
li x5, 0x7ffffffe # initialize rs2
slt x31, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x11, 0xfffffffe # initialize rs1
li x21, 0xffffffff # initialize rs2
slt x13, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x11, 0xfffffffe # initialize rs1
li x20, 0xfffffffe # initialize rs2
slt x13, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x23, 0xfffffffe # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
slt x16, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x31, 0xfffffffe # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
slt x13, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x5, 0xfffffffe # initialize rs1
li x30, 0x55555555 # initialize rs2
slt x12, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x9, 0x5bbc8872 # initialize rs1
li x31, 0x00000000 # initialize rs2
slt x20, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x6, 0x5bbc8872 # initialize rs1
li x10, 0x00000001 # initialize rs2
slt x19, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x25, 0x5bbc8872 # initialize rs1
li x26, 0x00000002 # initialize rs2
slt x5, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x22, 0x5bbc8872 # initialize rs1
li x28, 0x80000000 # initialize rs2
slt x12, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x15, 0x5bbc8872 # initialize rs1
li x20, 0x80000001 # initialize rs2
slt x29, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x23, 0x5bbc8872 # initialize rs1
li x9, 0x7fffffff # initialize rs2
slt x3, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x1, 0x5bbc8872 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
slt x16, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x17, 0x5bbc8872 # initialize rs1
li x22, 0xffffffff # initialize rs2
slt x11, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x1, 0x5bbc8872 # initialize rs1
li x12, 0xfffffffe # initialize rs2
slt x30, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x19, 0x5bbc8872 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
slt x6, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x12, 0x5bbc8872 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
slt x9, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x10, 0x5bbc8872 # initialize rs1
li x1, 0x55555555 # initialize rs2
slt x14, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x19, 0xaaaaaaaa # initialize rs1
li x23, 0x00000000 # initialize rs2
slt x18, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x10, 0xaaaaaaaa # initialize rs1
li x5, 0x00000001 # initialize rs2
slt x8, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x18, 0xaaaaaaaa # initialize rs1
li x13, 0x00000002 # initialize rs2
slt x28, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x2, 0xaaaaaaaa # initialize rs1
li x8, 0x80000000 # initialize rs2
slt x7, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x24, 0xaaaaaaaa # initialize rs1
li x13, 0x80000001 # initialize rs2
slt x27, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x10, 0xaaaaaaaa # initialize rs1
li x9, 0x7fffffff # initialize rs2
slt x13, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x22, 0xaaaaaaaa # initialize rs1
li x6, 0x7ffffffe # initialize rs2
slt x7, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x30, 0xaaaaaaaa # initialize rs1
li x11, 0xffffffff # initialize rs2
slt x25, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x1, 0xaaaaaaaa # initialize rs1
li x5, 0xfffffffe # initialize rs2
slt x6, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x25, 0xaaaaaaaa # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
slt x1, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x11, 0xaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
slt x28, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x21, 0xaaaaaaaa # initialize rs1
li x15, 0x55555555 # initialize rs2
slt x1, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x30, 0x55555555 # initialize rs1
li x6, 0x00000000 # initialize rs2
slt x22, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x6, 0x55555555 # initialize rs1
li x23, 0x00000001 # initialize rs2
slt x13, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x8, 0x55555555 # initialize rs1
li x13, 0x00000002 # initialize rs2
slt x3, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x6, 0x55555555 # initialize rs1
li x1, 0x80000000 # initialize rs2
slt x8, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x26, 0x55555555 # initialize rs1
li x29, 0x80000001 # initialize rs2
slt x24, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x25, 0x55555555 # initialize rs1
li x31, 0x7fffffff # initialize rs2
slt x27, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x22, 0x55555555 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
slt x29, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x19, 0x55555555 # initialize rs1
li x2, 0xffffffff # initialize rs2
slt x20, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x22, 0x55555555 # initialize rs1
li x17, 0xfffffffe # initialize rs2
slt x3, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x17, 0x55555555 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
slt x8, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x19, 0x55555555 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
slt x7, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x15, 0x55555555 # initialize rs1
li x27, 0x55555555 # initialize rs2
slt x17, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x0842b03c # initialize rs1
li x0, 0x59112b79 # initialize rs2
slt x6, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x0e451816 # initialize rs1
li x1, 0xb345e482 # initialize rs2
slt x13, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xb4acff27 # initialize rs1
li x2, 0x52b9291e # initialize rs2
slt x14, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xff500f9f # initialize rs1
li x3, 0xea720c9c # initialize rs2
slt x24, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3df61e6d # initialize rs1
li x4, 0x1d7141c1 # initialize rs2
slt x29, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9c0abc16 # initialize rs1
li x5, 0x63230241 # initialize rs2
slt x13, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x66586358 # initialize rs1
li x6, 0x3a2f9b2d # initialize rs2
slt x20, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe96ec128 # initialize rs1
li x7, 0xc23eba33 # initialize rs2
slt x15, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x853f64a1 # initialize rs1
li x8, 0x601a68ae # initialize rs2
slt x22, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x4f0b24fb # initialize rs1
li x9, 0x9d0777c6 # initialize rs2
slt x20, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x8077cd32 # initialize rs1
li x10, 0x60e84904 # initialize rs2
slt x9, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xa8b49dc8 # initialize rs1
li x11, 0x3362e2a2 # initialize rs2
slt x19, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x517c002b # initialize rs1
li x12, 0x5a9313ec # initialize rs2
slt x8, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x67c1c932 # initialize rs1
li x13, 0x2b69ba3f # initialize rs2
slt x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xe2ab9fbe # initialize rs1
li x14, 0x25faa3aa # initialize rs2
slt x6, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xecc5687a # initialize rs1
li x15, 0x97d772ae # initialize rs2
slt x17, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x0646a203 # initialize rs1
li x16, 0x92380172 # initialize rs2
slt x11, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x79b14626 # initialize rs1
li x17, 0xfdaf1859 # initialize rs2
slt x13, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xecd17cd0 # initialize rs1
li x18, 0xbcee28eb # initialize rs2
slt x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xae564904 # initialize rs1
li x19, 0xc3747e55 # initialize rs2
slt x2, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x4cd4b234 # initialize rs1
li x20, 0xeea9a63f # initialize rs2
slt x24, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x06bb0c94 # initialize rs1
li x21, 0x803fd4d4 # initialize rs2
slt x30, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x6d416bd0 # initialize rs1
li x22, 0xa2e48cd5 # initialize rs2
slt x8, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x7ad6b656 # initialize rs1
li x23, 0x79d57298 # initialize rs2
slt x18, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x016e5573 # initialize rs1
li x24, 0x353e4f47 # initialize rs2
slt x2, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xb13f59c2 # initialize rs1
li x25, 0xdf7b0303 # initialize rs2
slt x2, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x7b0829be # initialize rs1
li x26, 0xbc621d63 # initialize rs2
slt x3, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xe364a5aa # initialize rs1
li x27, 0x9ab71003 # initialize rs2
slt x14, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x0e107541 # initialize rs1
li x28, 0xfc7757f1 # initialize rs2
slt x31, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x7bb4e159 # initialize rs1
li x29, 0x90958a90 # initialize rs2
slt x24, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x7950064d # initialize rs1
li x30, 0x14c3ea40 # initialize rs2
slt x13, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xed08125d # initialize rs1
li x31, 0x49383f2f # initialize rs2
slt x24, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x238e28a4 # initialize rs1
li x25, 0x58e6abd2 # initialize rs2
slt x0, x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x6be716b3 # initialize rs1
li x26, 0xdade4629 # initialize rs2
slt x1, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8096902e # initialize rs1
li x18, 0x83c607dd # initialize rs2
slt x2, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x4998363f # initialize rs1
li x13, 0xccc0e2fa # initialize rs2
slt x3, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x88dc254d # initialize rs1
li x22, 0x3d0e538f # initialize rs2
slt x4, x4, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x905db617 # initialize rs1
li x29, 0x56601de7 # initialize rs2
slt x5, x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc83a7c14 # initialize rs1
li x7, 0x29808f43 # initialize rs2
slt x6, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x9fb49306 # initialize rs1
li x27, 0x43c97def # initialize rs2
slt x7, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8e5cfff7 # initialize rs1
li x7, 0xbc411cfe # initialize rs2
slt x8, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x5d999fc2 # initialize rs1
li x31, 0xe38addd8 # initialize rs2
slt x9, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xdab8d72f # initialize rs1
li x21, 0xa27264e0 # initialize rs2
slt x10, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2dab2b5e # initialize rs1
li x16, 0x16f1e3bf # initialize rs2
slt x11, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3cb9d8cb # initialize rs1
li x14, 0x9fadd711 # initialize rs2
slt x12, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb4da43c8 # initialize rs1
li x10, 0xbd04bdb8 # initialize rs2
slt x13, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x5e4ea48a # initialize rs1
li x28, 0xde03caf0 # initialize rs2
slt x14, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd9313ceb # initialize rs1
li x27, 0x512cc15e # initialize rs2
slt x15, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x27c75c15 # initialize rs1
li x7, 0xfec81428 # initialize rs2
slt x16, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x4f56198e # initialize rs1
li x9, 0x2d88841b # initialize rs2
slt x17, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x45c78ecc # initialize rs1
li x18, 0x5c79d43f # initialize rs2
slt x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x851036cf # initialize rs1
li x5, 0x00f4f0e9 # initialize rs2
slt x19, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x1dfd1ff8 # initialize rs1
li x8, 0xe870f049 # initialize rs2
slt x20, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd78c285c # initialize rs1
li x5, 0x63ab51c1 # initialize rs2
slt x21, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xce4d2285 # initialize rs1
li x22, 0x17054125 # initialize rs2
slt x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x24c11b4f # initialize rs1
li x19, 0x4cc5a20b # initialize rs2
slt x23, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0d70482a # initialize rs1
li x15, 0xd5b2e74b # initialize rs2
slt x24, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xeeee45dd # initialize rs1
li x6, 0xaa77863c # initialize rs2
slt x25, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x23f5b957 # initialize rs1
li x24, 0x43e0ea0a # initialize rs2
slt x26, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x0ae96326 # initialize rs1
li x6, 0x4b3e2b2b # initialize rs2
slt x27, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xd488245a # initialize rs1
li x18, 0xa6dd9a12 # initialize rs2
slt x28, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x55929028 # initialize rs1
li x21, 0x9ac0eaa7 # initialize rs2
slt x29, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xcbc4016f # initialize rs1
li x28, 0x44fa0e35 # initialize rs2
slt x30, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3caf0abc # initialize rs1
li x27, 0x3f22a6ea # initialize rs2
slt x31, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x18, 0x532314cd # initialize rs1
li x0, 0x14aeea91 # initialize rs2
slt x0, x18, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x23, 0xf7d4f66d # initialize rs1
li x1, 0x0b0eb3b1 # initialize rs2
slt x1, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x1, 0xa3ed4b17 # initialize rs1
li x2, 0x63636e56 # initialize rs2
slt x2, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x12, 0xd9a6bfab # initialize rs1
li x3, 0x270d1e4b # initialize rs2
slt x3, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0x08698abe # initialize rs1
li x4, 0x51e6f0b6 # initialize rs2
slt x4, x25, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x885b98f6 # initialize rs1
li x5, 0x1ebde180 # initialize rs2
slt x5, x9, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0xcb3ae821 # initialize rs1
li x6, 0xa3c50451 # initialize rs2
slt x6, x15, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x5f64f7bc # initialize rs1
li x7, 0xd1345f76 # initialize rs2
slt x7, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x11, 0x9b3eaf2d # initialize rs1
li x8, 0x6074d847 # initialize rs2
slt x8, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x25, 0x83912331 # initialize rs1
li x9, 0x7761d8f7 # initialize rs2
slt x9, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x21, 0xe2a4dca6 # initialize rs1
li x10, 0xe25847a0 # initialize rs2
slt x10, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x2, 0x863f190c # initialize rs1
li x11, 0x45548a70 # initialize rs2
slt x11, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x6, 0x7935a028 # initialize rs1
li x12, 0xe78e9028 # initialize rs2
slt x12, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x15, 0x92e96357 # initialize rs1
li x13, 0xf6019a8f # initialize rs2
slt x13, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x6, 0x727623a7 # initialize rs1
li x14, 0xaaaf4504 # initialize rs2
slt x14, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x6, 0x07f62104 # initialize rs1
li x15, 0x6bf3e463 # initialize rs2
slt x15, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x7, 0xc72dd5c6 # initialize rs1
li x16, 0x5812d2ad # initialize rs2
slt x16, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x11, 0x34063a2e # initialize rs1
li x17, 0xde8fd606 # initialize rs2
slt x17, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x24, 0xfcbe36ba # initialize rs1
li x18, 0xb975dae6 # initialize rs2
slt x18, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x25, 0x8656f2c6 # initialize rs1
li x19, 0xd3f46dc0 # initialize rs2
slt x19, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x6, 0x21385e95 # initialize rs1
li x20, 0x979534e0 # initialize rs2
slt x20, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x16, 0x7510177d # initialize rs1
li x21, 0xc0104215 # initialize rs2
slt x21, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x10, 0x1298777f # initialize rs1
li x22, 0xecdbe1e4 # initialize rs2
slt x22, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x26, 0x439da77b # initialize rs1
li x23, 0x8c037b9b # initialize rs2
slt x23, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x10, 0x33823c60 # initialize rs1
li x24, 0x9224f761 # initialize rs2
slt x24, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x20, 0x3ac97899 # initialize rs1
li x25, 0x9174c6b5 # initialize rs2
slt x25, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x23, 0x65fb0a56 # initialize rs1
li x26, 0x79c8b750 # initialize rs2
slt x26, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x31, 0x4b785880 # initialize rs1
li x27, 0x9c566d48 # initialize rs2
slt x27, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x27, 0xab299142 # initialize rs1
li x28, 0xd1a12219 # initialize rs2
slt x28, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x24, 0x3605d7ee # initialize rs1
li x29, 0x714391af # initialize rs2
slt x29, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x29, 0xa3278a3b # initialize rs1
li x30, 0xed164fc2 # initialize rs2
slt x30, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x2, 0x73e42337 # initialize rs1
li x31, 0x71738c28 # initialize rs2
slt x31, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x77e6f5c1 # initialize rs1
li x0, 0x7d8b6b03 # initialize rs2
slt x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd74054d6 # initialize rs1
li x1, 0x0f7e6095 # initialize rs2
slt x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x0cc1d027 # initialize rs1
li x2, 0x5a816e19 # initialize rs2
slt x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xc41c8b05 # initialize rs1
li x3, 0x339dbd0a # initialize rs2
slt x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb13d1397 # initialize rs1
li x4, 0x970f1b50 # initialize rs2
slt x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5ba1fc9c # initialize rs1
li x5, 0x27a7ae0e # initialize rs2
slt x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8f7d6771 # initialize rs1
li x6, 0xa71ffe28 # initialize rs2
slt x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9f0a6dcf # initialize rs1
li x7, 0xea308c47 # initialize rs2
slt x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x63afe16f # initialize rs1
li x8, 0xa952cd15 # initialize rs2
slt x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xcdaa204f # initialize rs1
li x9, 0x11145a37 # initialize rs2
slt x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x35b2c90d # initialize rs1
li x10, 0x31281f0d # initialize rs2
slt x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe190d6c8 # initialize rs1
li x11, 0xec929bd0 # initialize rs2
slt x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xd73b3281 # initialize rs1
li x12, 0xf486a77f # initialize rs2
slt x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xda6a3aa4 # initialize rs1
li x13, 0x15cf42a4 # initialize rs2
slt x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x52890086 # initialize rs1
li x14, 0xaedfefcb # initialize rs2
slt x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xb463e9e6 # initialize rs1
li x15, 0x5ded6427 # initialize rs2
slt x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x2ce26efe # initialize rs1
li x16, 0x1ed15acc # initialize rs2
slt x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x52b3b97c # initialize rs1
li x17, 0x32b9cd3c # initialize rs2
slt x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x82a9021e # initialize rs1
li x18, 0xbcdd81a6 # initialize rs2
slt x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x2120177b # initialize rs1
li x19, 0x4e60f37c # initialize rs2
slt x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x91f2271f # initialize rs1
li x20, 0x14677935 # initialize rs2
slt x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x7b26af1b # initialize rs1
li x21, 0x001efa0e # initialize rs2
slt x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x35296ae7 # initialize rs1
li x22, 0x46597b79 # initialize rs2
slt x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x18dec99b # initialize rs1
li x23, 0xb3417eb7 # initialize rs2
slt x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x0c50be19 # initialize rs1
li x24, 0xb238e2a2 # initialize rs2
slt x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x832c286f # initialize rs1
li x25, 0xee013cfa # initialize rs2
slt x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xf8fcc919 # initialize rs1
li x26, 0x7b0899f3 # initialize rs2
slt x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x367e6e67 # initialize rs1
li x27, 0xff53fb69 # initialize rs2
slt x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xe8767cc4 # initialize rs1
li x28, 0x9ce33178 # initialize rs2
slt x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x718c182d # initialize rs1
li x29, 0x11e0f1fb # initialize rs2
slt x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x2626b837 # initialize rs1
li x30, 0xe5c1869b # initialize rs2
slt x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xc3a821a6 # initialize rs1
li x31, 0xf5e20245 # initialize rs2
slt x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x26, x18 # perform first operation
slt x11, x7, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x13, x26 # perform first operation
slt x14, x18, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x8, x7 # perform first operation
slt x19, x30, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x30, x17 # perform first operation
slt x17, x11, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x10, x8 # perform first operation
slt x10, x19, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x22, x28 # perform first operation
slt x28, x12, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x8, x24 # perform first operation
slt x22, x3, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x9, x11 # perform first operation
slt x10, x31, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x9, x10 # perform first operation
slt x28, x29, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x18, x13 # perform first operation
slt x18, x3, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x22, x10 # perform first operation
slt x10, x26, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x5, x10 # perform first operation
slt x25, x15, x30 # perform second (triggering) operation

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
