///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-subw.S
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
li x0, 0xab1e0b5131da964c # initialize rs1
li x24, 0xf09c310a13626cb2 # initialize rs2
subw x12, x0, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x9ef459541f20c3a2 # initialize rs1
li x31, 0xc47db4b33c97c7fe # initialize rs2
subw x11, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xe47da0cd4bbb8d2d # initialize rs1
li x22, 0x25cd12b7eef5ce43 # initialize rs2
subw x16, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x48812637a9941a5b # initialize rs1
li x25, 0x1194d34b6d42eb9f # initialize rs2
subw x13, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x380f7edb37bd76a4 # initialize rs1
li x1, 0x94bf843711371222 # initialize rs2
subw x21, x4, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf33b09ea79ff3b9d # initialize rs1
li x11, 0xa8e6eefcfbd5ec62 # initialize rs2
subw x13, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb6485956bb8f8212 # initialize rs1
li x17, 0x369c318149dc7c8a # initialize rs2
subw x27, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x27, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa328ea2b215349fe # initialize rs1
li x19, 0x2bc540569a328d0c # initialize rs2
subw x23, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x960d81c99a17b277 # initialize rs1
li x6, 0x95d6060ee5eef844 # initialize rs2
subw x23, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xa2418e873e60bc90 # initialize rs1
li x2, 0x2655d51fc9fc00d4 # initialize rs2
subw x18, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x3c621bfb648cadd7 # initialize rs1
li x18, 0x9296f9951de63a64 # initialize rs2
subw x11, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa060ad15229e3eb8 # initialize rs1
li x18, 0x8f87f491b8e53fcb # initialize rs2
subw x14, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x85e7f5c4eb18dd5f # initialize rs1
li x7, 0xf6c86db9a7e94170 # initialize rs2
subw x27, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x3804efc1f431f37c # initialize rs1
li x7, 0xbe087acfe8c74158 # initialize rs2
subw x6, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x7d06a1ce8251901f # initialize rs1
li x20, 0xce2814961467dc67 # initialize rs2
subw x8, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x539d332120e07e8b # initialize rs1
li x29, 0x82dac52e7299e85d # initialize rs2
subw x23, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xc4ee922992e23962 # initialize rs1
li x7, 0x35bd0d1a566291a8 # initialize rs2
subw x9, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x1406edd15b322520 # initialize rs1
li x2, 0x05dd62a34d07f5a2 # initialize rs2
subw x29, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x6af864f077bdb1c2 # initialize rs1
li x28, 0xe463f5264e13b576 # initialize rs2
subw x10, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x4a5916e9642d09e0 # initialize rs1
li x29, 0xe947d7c97a97419a # initialize rs2
subw x15, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x13a6adf9ee3559ed # initialize rs1
li x10, 0x65dc3b86cb300da0 # initialize rs2
subw x3, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xaca3c75e02be9a13 # initialize rs1
li x1, 0x71c77792eb899267 # initialize rs2
subw x29, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x3d35f4a968731797 # initialize rs1
li x9, 0xc5d63f50ee6c5af2 # initialize rs2
subw x25, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xcab2de33b61b748a # initialize rs1
li x7, 0x9c715e5bbda64c26 # initialize rs2
subw x13, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xa6a0f804c8ca98ad # initialize rs1
li x30, 0xb314d22f061105d5 # initialize rs2
subw x20, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xad74ae5c908c6927 # initialize rs1
li x8, 0x4a5cda62e0f9f65f # initialize rs2
subw x3, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xd763cf8cc784c679 # initialize rs1
li x1, 0xfcaf4860086554e1 # initialize rs2
subw x10, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x7a50cc4ae63c510e # initialize rs1
li x7, 0x292cb437f1f0cb0c # initialize rs2
subw x6, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x11351d2ce311f8da # initialize rs1
li x2, 0x75b3a670254c9dd2 # initialize rs2
subw x5, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xfdca18ad4d6ac81f # initialize rs1
li x2, 0x5bf60acc9eb917cd # initialize rs2
subw x10, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xab170a6bd14d9e24 # initialize rs1
li x18, 0x71dda1227f53c4c8 # initialize rs2
subw x19, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xb65f89a652cac087 # initialize rs1
li x27, 0xd6c1aaffdc0317b7 # initialize rs2
subw x23, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x30, 0x6a8d9d2c50e2b041 # initialize rs1
li x0, 0x98838740c9a8192d # initialize rs2
subw x16, x30, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x30, 0xe5dde2ba28fbded3 # initialize rs1
li x1, 0x630ddb0df33fc182 # initialize rs2
subw x6, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x20, 0xe7af5ebddeaa8e1b # initialize rs1
li x2, 0x5b6f473d89bfbabf # initialize rs2
subw x6, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x11, 0x1cd18d1066cbc28e # initialize rs1
li x3, 0xeff5506fd60796ce # initialize rs2
subw x6, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x75164402ebf555ed # initialize rs1
li x4, 0x918ace7bb088cee4 # initialize rs2
subw x12, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0xf62bfa66436533bf # initialize rs1
li x5, 0xa6842f06cd7069ec # initialize rs2
subw x26, x18, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0x74a4bea5df1ce0a6 # initialize rs1
li x6, 0x600ef1d6e1933747 # initialize rs2
subw x31, x26, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0xd235420260edcd7a # initialize rs1
li x7, 0xa294774614a6b5ef # initialize rs2
subw x12, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x26, 0x12c9c23c2e63ba63 # initialize rs1
li x8, 0x2460f123a8f3a54a # initialize rs2
subw x31, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x24, 0x717283298f294fb1 # initialize rs1
li x9, 0x21ef59cb4c0ccead # initialize rs2
subw x16, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x31, 0x9175b048912ca909 # initialize rs1
li x10, 0x65a98bff1948945e # initialize rs2
subw x7, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x19, 0x5ad77cfce9a70108 # initialize rs1
li x11, 0xf3dfb810b7b1351d # initialize rs2
subw x18, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x6, 0x1138b56021904303 # initialize rs1
li x12, 0xde2041d3b0c36729 # initialize rs2
subw x23, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x23, 0xef73cbaedbcfeba3 # initialize rs1
li x13, 0xe38b198135385113 # initialize rs2
subw x22, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0x69a7c0423ea3c9f3 # initialize rs1
li x14, 0x390ba5dd336faf4a # initialize rs2
subw x24, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x23, 0xd85d97a279a85e6c # initialize rs1
li x15, 0xb6868a04efccc37f # initialize rs2
subw x28, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0x5efdce91974b1a01 # initialize rs1
li x16, 0xb1d82c0e5eab4a0c # initialize rs2
subw x14, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x28, 0x98c2f26fd9e71c33 # initialize rs1
li x17, 0x6ead7b8da7cebc0c # initialize rs2
subw x24, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x31, 0xe424a17617524fac # initialize rs1
li x18, 0x8ddc3b7ee553f4b9 # initialize rs2
subw x9, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x11, 0x7f7e8d873d4e1b37 # initialize rs1
li x19, 0x81c3c3f9fec4dd9a # initialize rs2
subw x10, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x22, 0xb0475586f0f09e6d # initialize rs1
li x20, 0x680d9b8177cc247d # initialize rs2
subw x24, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x22, 0x161f4b4aef59c78c # initialize rs1
li x21, 0x2a00ffe06d7b69ca # initialize rs2
subw x27, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x24, 0xcd3e682daa9dee72 # initialize rs1
li x22, 0x16da040a6e461cd0 # initialize rs2
subw x5, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x14, 0x19d91e4a404d22ca # initialize rs1
li x23, 0xf3a64a6382f3b79c # initialize rs2
subw x3, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x25, 0xc689acea5067164b # initialize rs1
li x24, 0x608d83da5e64d860 # initialize rs2
subw x31, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x8, 0xfe3632d1df5b642e # initialize rs1
li x25, 0x3145dc29d2aef9bc # initialize rs2
subw x15, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x22, 0x6a070213285d8ecf # initialize rs1
li x26, 0x76313ad17e7859c2 # initialize rs2
subw x24, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x20, 0x886b8a185a6057c0 # initialize rs1
li x27, 0x53d7327e541ce4b3 # initialize rs2
subw x18, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x26, 0x67db101cfb3f6ca1 # initialize rs1
li x28, 0x44d9d3f4e26c7e1c # initialize rs2
subw x11, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x28, 0xd7ac5065db286b04 # initialize rs1
li x29, 0x6334e6692e0de57c # initialize rs2
subw x11, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x26, 0x1cf2524a5fa8aa57 # initialize rs1
li x30, 0x63242714a544cf80 # initialize rs2
subw x27, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x26, 0xa8f6e376fec3c2c3 # initialize rs1
li x31, 0x345c48d6752648ff # initialize rs2
subw x9, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 504)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0x2cf22cf9c527e90e # initialize rs1
li x20, 0x20fcbde656bdedaa # initialize rs2
subw x0, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x8, 0x915956f93f002200 # initialize rs1
li x27, 0xec1f2a92bedcfcc3 # initialize rs2
subw x1, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x12, 0xe75c1fc266417fd3 # initialize rs1
li x6, 0xbb14e56f55f23035 # initialize rs2
subw x2, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x8, 0xd78dbf38e2584ad5 # initialize rs1
li x27, 0x572974bfcfcb05d6 # initialize rs2
subw x3, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x4b183533b05b2a56 # initialize rs1
li x22, 0xbe8369beb4b54ac0 # initialize rs2
subw x4, x10, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0xb42c0b073283bc99 # initialize rs1
li x25, 0x82ef2c1e3478a104 # initialize rs2
subw x5, x3, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x4495a2f59c5a921a # initialize rs1
li x22, 0x29217013a429c5e1 # initialize rs2
subw x6, x24, x22 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x20, 0xaaa5a974e8bf38d7 # initialize rs1
li x31, 0xceb658a5ee75032f # initialize rs2
subw x7, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x12, 0x79301397ea0bf185 # initialize rs1
li x10, 0xaf462c137de051ef # initialize rs2
subw x8, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x24, 0xe3d9ad46a660bab1 # initialize rs1
li x29, 0x61c166801a48e854 # initialize rs2
subw x9, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x27, 0x82387b5ac7d2b5d0 # initialize rs1
li x25, 0xd0050d655ac38091 # initialize rs2
subw x10, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x30, 0x577dc8b45b948d6e # initialize rs1
li x5, 0xf7855a26cddaac30 # initialize rs2
subw x11, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x28, 0xeadfbc6a935a72c3 # initialize rs1
li x3, 0xce31614cd3a42601 # initialize rs2
subw x12, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x22, 0x65485ec55db7da11 # initialize rs1
li x15, 0x5a7de2efa95a1ea3 # initialize rs2
subw x13, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x28, 0xf655ffecd8237e1d # initialize rs1
li x2, 0xfa744f07f5869543 # initialize rs2
subw x14, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x8, 0xdb332dc774c63eb8 # initialize rs1
li x29, 0x498e51c7f514cfb9 # initialize rs2
subw x15, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x22, 0xbd02d98f30b7f1b4 # initialize rs1
li x31, 0x4e9c768942b40d0d # initialize rs2
subw x16, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x24, 0x65babb34e00d8ae1 # initialize rs1
li x3, 0x04816659499d9da4 # initialize rs2
subw x17, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x9, 0x6fa67752edc110ae # initialize rs1
li x2, 0xab336d73c5a3a08f # initialize rs2
subw x18, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x11, 0x9618c5c7695e1b80 # initialize rs1
li x24, 0x0ccd19241889dfa4 # initialize rs2
subw x19, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x8, 0xae788f8e61db961c # initialize rs1
li x1, 0xcf9677a72f2ad115 # initialize rs2
subw x20, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x15, 0x18e5f77d4a1ea492 # initialize rs1
li x28, 0x5b265bee6634a6b3 # initialize rs2
subw x21, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x16, 0xe1e193c553e8bb7b # initialize rs1
li x30, 0xeeda193f9c56a0e2 # initialize rs2
subw x22, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x17, 0x13ed7e7276b5b4bc # initialize rs1
li x21, 0x395117f760643f96 # initialize rs2
subw x23, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0xa31868f52f5ab543 # initialize rs1
li x7, 0x8f08a9ea3fdb892b # initialize rs2
subw x24, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x27, 0x33a112c6b14e2bd9 # initialize rs1
li x28, 0x48bf2404a4ddbd74 # initialize rs2
subw x25, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x29, 0xc106363f7e4b1ec9 # initialize rs1
li x23, 0xb7b68f55cca8e0ac # initialize rs2
subw x26, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x14, 0x6fd0621a4485bd88 # initialize rs1
li x1, 0x6b8da568c2349fc0 # initialize rs2
subw x27, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x30, 0x2aee4ca69fac26f3 # initialize rs1
li x3, 0x7e91b5cc6ad73ac6 # initialize rs2
subw x28, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x17, 0x4a6919d18cf88c76 # initialize rs1
li x13, 0x648602d37962c056 # initialize rs2
subw x29, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x56ba87a83a246284 # initialize rs1
li x29, 0xe8a064eeaf5183df # initialize rs2
subw x30, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x18, 0x3f9bf2c5c81c7f7d # initialize rs1
li x26, 0x02ed82c573c204f8 # initialize rs2
subw x31, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x1, 0x0000000000000000 # initialize rs1
li x30, 0x6bec3c2ef74990e2 # initialize rs2
subw x14, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x0000000000000001 # initialize rs1
li x11, 0x24eb64a8ee705023 # initialize rs2
subw x28, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x0000000000000002 # initialize rs1
li x14, 0x04bf5a3b86d9aa8f # initialize rs2
subw x13, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x26, 0x8000000000000000 # initialize rs1
li x19, 0x33b59b1e912418fa # initialize rs2
subw x1, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x1, 0x8000000000000001 # initialize rs1
li x14, 0x711bf29013279308 # initialize rs2
subw x7, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x3, 0x7fffffffffffffff # initialize rs1
li x15, 0x22dc29e60e6e8071 # initialize rs2
subw x10, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x30, 0x7ffffffffffffffe # initialize rs1
li x16, 0xd1192f78c162dc89 # initialize rs2
subw x5, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x12, 0xffffffffffffffff # initialize rs1
li x14, 0xaee0634813770b2c # initialize rs2
subw x18, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rs1
li x26, 0x3560c04c28a952d4 # initialize rs2
subw x29, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x58c644871ccf416c # initialize rs2
subw x11, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x7c6453b70567b8e7 # initialize rs2
subw x26, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x1, 0x5555555555555555 # initialize rs1
li x13, 0xfcefe08bc1806f3a # initialize rs2
subw x5, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x14, 0x00000000ffffffff # initialize rs1
li x18, 0x154126856a63f21c # initialize rs2
subw x13, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x20, 0x00000000fffffffe # initialize rs1
li x21, 0xeb409cde5a96357c # initialize rs2
subw x19, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x24, 0x0000000100000000 # initialize rs1
li x28, 0xb4deee533bc431c6 # initialize rs2
subw x27, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x10, 0x0000000100000001 # initialize rs1
li x17, 0xdeb5a4fbb267abfb # initialize rs2
subw x20, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0xcbe4cd1a2be492eb # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
subw x28, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0x6bee8063199941de # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
subw x2, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0xeeed1d5658057132 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
subw x26, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x16, 0xb3e6d5409565ee3c # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
subw x19, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x5, 0xb01e78ccb99134ae # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
subw x31, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x15, 0x7d6049af86d269e7 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
subw x24, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x2, 0x2348cff075b7963c # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
subw x18, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x16, 0xc7c9f725bd2ea877 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
subw x31, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x9, 0x6ce4c668c2dd66f9 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
subw x19, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x27, 0x805d2f0faa3d04d4 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
subw x8, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x19, 0x003af7585a2c3e5a # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x26, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x21, 0x71543767f59ffb17 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
subw x27, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x30, 0xb39da863ed3a1389 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
subw x24, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x14, 0x75d2d284bcaf47a2 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
subw x29, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x25, 0xd0e3baf379bf5276 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
subw x2, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x29, 0x01842d058f28ec18 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
subw x26, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0x0000000000000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
subw x13, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x7, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
subw x18, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x10, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
subw x7, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x12, 0x0000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
subw x6, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x21, 0x0000000000000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
subw x3, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x9, 0x0000000000000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
subw x7, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000000000000 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
subw x8, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x7, 0x0000000000000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
subw x15, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x20, 0x0000000000000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
subw x13, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x8, 0x0000000000000000 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
subw x2, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x0000000000000000 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x13, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x18, 0x0000000000000000 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
subw x8, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x20, 0x0000000000000000 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
subw x24, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x22, 0x0000000000000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
subw x16, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x23, 0x0000000000000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
subw x2, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x6, 0x0000000000000000 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
subw x21, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x21, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
subw x3, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x1, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
subw x16, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x28, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
subw x15, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x31, 0x0000000000000001 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
subw x8, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x7, 0x0000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
subw x10, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000001 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
subw x12, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000000000001 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
subw x16, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x25, 0x0000000000000001 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
subw x5, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x6, 0x0000000000000001 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
subw x27, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000000000001 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
subw x15, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000000000001 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x27, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x26, 0x0000000000000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
subw x18, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x5, 0x0000000000000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
subw x30, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x14, 0x0000000000000001 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
subw x26, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x7, 0x0000000000000001 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
subw x23, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x22, 0x0000000000000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
subw x12, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x30, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
subw x19, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x8, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
subw x10, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x28, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
subw x22, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x23, 0x0000000000000002 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
subw x7, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x5, 0x0000000000000002 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
subw x12, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000002 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
subw x18, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
subw x20, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x17, 0x0000000000000002 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
subw x24, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x31, 0x0000000000000002 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
subw x22, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x15, 0x0000000000000002 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
subw x5, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000000000002 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x30, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x29, 0x0000000000000002 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
subw x22, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x14, 0x0000000000000002 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
subw x7, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x21, 0x0000000000000002 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
subw x7, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x6, 0x0000000000000002 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
subw x26, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x9, 0x0000000000000002 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
subw x27, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x9, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
subw x12, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x15, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
subw x2, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x19, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
subw x2, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x25, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
subw x17, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x26, 0x8000000000000000 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
subw x13, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x16, 0x8000000000000000 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
subw x10, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x23, 0x8000000000000000 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
subw x24, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x15, 0x8000000000000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
subw x5, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x3, 0x8000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
subw x12, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x5, 0x8000000000000000 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
subw x10, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x8000000000000000 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x18, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x18, 0x8000000000000000 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
subw x11, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x2, 0x8000000000000000 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
subw x11, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x3, 0x8000000000000000 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
subw x29, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x8, 0x8000000000000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
subw x6, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x15, 0x8000000000000000 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
subw x12, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x27, 0x8000000000000001 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
subw x31, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x30, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
subw x18, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x7, 0x8000000000000001 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
subw x27, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x20, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
subw x16, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x25, 0x8000000000000001 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
subw x21, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x18, 0x8000000000000001 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
subw x20, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x10, 0x8000000000000001 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
subw x31, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x8, 0x8000000000000001 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
subw x27, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x12, 0x8000000000000001 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
subw x17, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x31, 0x8000000000000001 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
subw x26, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x8000000000000001 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x2, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x11, 0x8000000000000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
subw x2, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x13, 0x8000000000000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
subw x20, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x19, 0x8000000000000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
subw x28, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x13, 0x8000000000000001 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
subw x1, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x10, 0x8000000000000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
subw x17, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x29, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
subw x16, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x13, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
subw x10, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x25, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
subw x17, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x19, 0x7fffffffffffffff # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
subw x23, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x8, 0x7fffffffffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
subw x28, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
subw x2, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x29, 0x7fffffffffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
subw x30, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
subw x10, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
subw x19, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x2, 0x7fffffffffffffff # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
subw x17, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x7fffffffffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x8, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x19, 0x7fffffffffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
subw x26, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x15, 0x7fffffffffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
subw x9, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x22, 0x7fffffffffffffff # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
subw x23, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x9, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
subw x16, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x12, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
subw x25, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x13, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
subw x27, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x15, 0x7ffffffffffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
subw x25, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x2, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
subw x29, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x23, 0x7ffffffffffffffe # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
subw x24, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x2, 0x7ffffffffffffffe # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
subw x15, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x3, 0x7ffffffffffffffe # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
subw x30, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
subw x5, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
subw x25, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
subw x27, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x31, 0x7ffffffffffffffe # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
subw x1, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x7ffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x19, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x31, 0x7ffffffffffffffe # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
subw x19, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x15, 0x7ffffffffffffffe # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
subw x31, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x23, 0x7ffffffffffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
subw x27, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x28, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
subw x26, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
subw x23, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x30, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
subw x7, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x15, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
subw x24, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x29, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
subw x5, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x30, 0xffffffffffffffff # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
subw x15, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x1, 0xffffffffffffffff # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
subw x8, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
subw x5, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x28, 0xffffffffffffffff # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
subw x25, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x16, 0xffffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
subw x19, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x24, 0xffffffffffffffff # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
subw x11, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x25, 0xffffffffffffffff # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
subw x12, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xffffffffffffffff # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x19, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x15, 0xffffffffffffffff # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
subw x17, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x8, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
subw x3, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x28, 0xffffffffffffffff # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
subw x13, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x23, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
subw x20, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x16, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
subw x25, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x25, 0xfffffffffffffffe # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
subw x15, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x7, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
subw x18, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x26, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
subw x3, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x13, 0xfffffffffffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
subw x12, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x31, 0xfffffffffffffffe # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
subw x2, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x2, 0xfffffffffffffffe # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
subw x26, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x2, 0xfffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
subw x28, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0xfffffffffffffffe # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
subw x17, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
subw x13, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x28, 0xfffffffffffffffe # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
subw x9, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xfffffffffffffffe # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x29, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x30, 0xfffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
subw x28, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x23, 0xfffffffffffffffe # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
subw x7, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x19, 0xfffffffffffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
subw x7, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x28, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
subw x15, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x21, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
subw x29, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
subw x29, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
subw x9, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
subw x18, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
subw x17, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
subw x3, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
subw x10, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
subw x9, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
subw x6, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
subw x11, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
subw x13, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x5, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
subw x15, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
subw x3, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
subw x27, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
subw x19, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
subw x16, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
subw x25, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
subw x30, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
subw x9, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
subw x15, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
subw x19, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
subw x29, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
subw x14, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
subw x16, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
subw x1, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
subw x22, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x20, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
subw x2, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
subw x14, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
subw x2, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
subw x26, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
subw x15, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x28, 0x5555555555555555 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
subw x21, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x31, 0x5555555555555555 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
subw x5, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x9, 0x5555555555555555 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
subw x16, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x23, 0x5555555555555555 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
subw x8, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x31, 0x5555555555555555 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
subw x11, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x22, 0x5555555555555555 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
subw x11, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
subw x28, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x10, 0x5555555555555555 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
subw x26, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x13, 0x5555555555555555 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
subw x23, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x23, 0x5555555555555555 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
subw x17, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x5555555555555555 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x24, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x2, 0x5555555555555555 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
subw x27, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x20, 0x5555555555555555 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
subw x2, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x30, 0x5555555555555555 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
subw x28, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x22, 0x5555555555555555 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
subw x18, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x27, 0x5555555555555555 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
subw x18, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x7, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
subw x30, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x18, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
subw x24, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x13, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
subw x7, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x6, 0x00000000ffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
subw x31, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x13, 0x00000000ffffffff # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
subw x3, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
subw x23, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x1, 0x00000000ffffffff # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
subw x31, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x29, 0x00000000ffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
subw x3, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x15, 0x00000000ffffffff # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
subw x12, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x28, 0x00000000ffffffff # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
subw x14, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x00000000ffffffff # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x24, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x7, 0x00000000ffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
subw x20, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x28, 0x00000000ffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
subw x11, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x9, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
subw x18, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x1, 0x00000000ffffffff # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
subw x15, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x7, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
subw x21, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x30, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
subw x26, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x16, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
subw x26, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x22, 0x00000000fffffffe # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
subw x30, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x6, 0x00000000fffffffe # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
subw x23, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x5, 0x00000000fffffffe # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
subw x26, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x18, 0x00000000fffffffe # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
subw x8, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
subw x3, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x2, 0x00000000fffffffe # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
subw x16, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x9, 0x00000000fffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
subw x15, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x30, 0x00000000fffffffe # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
subw x20, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x00000000fffffffe # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x13, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x29, 0x00000000fffffffe # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
subw x23, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x19, 0x00000000fffffffe # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
subw x24, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x1, 0x00000000fffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
subw x8, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x8, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
subw x11, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x18, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
subw x20, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x21, 0x0000000100000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
subw x24, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x26, 0x0000000100000000 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
subw x10, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x30, 0x0000000100000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
subw x19, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x23, 0x0000000100000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
subw x25, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x18, 0x0000000100000000 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
subw x24, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x17, 0x0000000100000000 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
subw x6, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000100000000 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
subw x21, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x6, 0x0000000100000000 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
subw x18, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000100000000 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
subw x17, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x17, 0x0000000100000000 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
subw x21, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000100000000 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x10, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x27, 0x0000000100000000 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
subw x20, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
subw x17, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x28, 0x0000000100000000 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
subw x8, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x14, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
subw x25, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x21, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
subw x13, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x14, 0x0000000100000001 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
subw x23, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x22, 0x0000000100000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
subw x9, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x22, 0x0000000100000001 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
subw x27, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x20, 0x0000000100000001 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
subw x3, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x23, 0x0000000100000001 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
subw x24, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x19, 0x0000000100000001 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
subw x20, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000100000001 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
subw x17, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x1, 0x0000000100000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
subw x27, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000100000001 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
subw x8, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000100000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
subw x1, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x0000000100000001 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x16, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x15, 0x0000000100000001 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
subw x12, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
subw x27, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x20, 0x0000000100000001 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
subw x25, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x20, 0x0000000100000001 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
subw x22, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x1, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
subw x3, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xe7bc9e7dabe9bf62 # initialize rs1
li x0, 0xaf74a929014683cb # initialize rs2
subw x29, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x1cbe0f0083bfcc1b # initialize rs1
li x1, 0x98089d034e29ab23 # initialize rs2
subw x24, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc2673e47e5643866 # initialize rs1
li x2, 0xd9ef43dc736c1041 # initialize rs2
subw x28, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x8c69dba789102f92 # initialize rs1
li x3, 0xabb31260a965dfcc # initialize rs2
subw x20, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8da32b08e776e797 # initialize rs1
li x4, 0xa67f1795350dc06a # initialize rs2
subw x17, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x367adbd037bda5b0 # initialize rs1
li x5, 0xa2151c9509fdb6de # initialize rs2
subw x26, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc458641fa8a2be41 # initialize rs1
li x6, 0x092c45e23a8b1010 # initialize rs2
subw x28, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x862b521cd0bf7c50 # initialize rs1
li x7, 0x35ace9afe53d8a14 # initialize rs2
subw x25, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x7dd21efdc3f07fa6 # initialize rs1
li x8, 0xf9b8c098dc8b0e60 # initialize rs2
subw x28, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x41f1081b3387f6ec # initialize rs1
li x9, 0x1a03354d62b26cee # initialize rs2
subw x27, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x4e5dca757cf397bb # initialize rs1
li x10, 0x014cca91efd02caf # initialize rs2
subw x15, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x9446de86bf8e9e70 # initialize rs1
li x11, 0x2aad505424935c44 # initialize rs2
subw x15, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x585fb9d3814f9573 # initialize rs1
li x12, 0x4108b7c1d33c3fdc # initialize rs2
subw x27, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x193609a404e1d192 # initialize rs1
li x13, 0x434ebf411c304762 # initialize rs2
subw x6, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xc290da9d7f223368 # initialize rs1
li x14, 0xf077682ba0861279 # initialize rs2
subw x20, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x02a49b9085eac12c # initialize rs1
li x15, 0x646f5a8be835e957 # initialize rs2
subw x12, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xe9d1e740980b5b10 # initialize rs1
li x16, 0x03d1668f0df77f3d # initialize rs2
subw x13, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x3d16cc1e29ebc263 # initialize rs1
li x17, 0xeb38853c52215def # initialize rs2
subw x20, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xff8b22cce586a290 # initialize rs1
li x18, 0x68a2dae71e166b58 # initialize rs2
subw x6, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x06bf4de4936c87a4 # initialize rs1
li x19, 0xc9d30463e6cc14a1 # initialize rs2
subw x24, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x569a29b8ead5b425 # initialize rs1
li x20, 0xf565bd9eb9eb31c6 # initialize rs2
subw x31, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x1ff4e6f0abb6292e # initialize rs1
li x21, 0x440aa5f858191b2f # initialize rs2
subw x18, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x5b5422666b3fccb0 # initialize rs1
li x22, 0x72b61d594f343904 # initialize rs2
subw x27, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xfd475d26b605d87c # initialize rs1
li x23, 0x4f65043b8b5b2ebe # initialize rs2
subw x26, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xe70034db78604e6a # initialize rs1
li x24, 0xaeb6dd5b3d53b0fc # initialize rs2
subw x3, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x1b911b882547df1d # initialize rs1
li x25, 0x0dabdcd990bc0b86 # initialize rs2
subw x13, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xc5a0eee97fba4e5b # initialize rs1
li x26, 0xa6edec2e29c5ebfc # initialize rs2
subw x7, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xc32d39b7edd65a23 # initialize rs1
li x27, 0x55e061a5b414715a # initialize rs2
subw x17, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x50eea6fb3270b0d8 # initialize rs1
li x28, 0xfda16dec3c7fa3e3 # initialize rs2
subw x8, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x6760eef83bd60e1b # initialize rs1
li x29, 0xb1b9c4061fc29e59 # initialize rs2
subw x8, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x8cfb9dd322420a11 # initialize rs1
li x30, 0xc7a8d19ab1ee274b # initialize rs2
subw x26, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x4a2098dbf76a6350 # initialize rs1
li x31, 0x7c728768a0c90520 # initialize rs2
subw x14, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x6bf5e5415b644c34 # initialize rs1
li x13, 0x2e73173adf3c698d # initialize rs2
subw x0, x0, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x30d88baf634187d7 # initialize rs1
li x19, 0x83141eac3a35595f # initialize rs2
subw x1, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xd2065eb21f62439c # initialize rs1
li x24, 0xb23f2938b3731b1f # initialize rs2
subw x2, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x878a548a55083ede # initialize rs1
li x14, 0x2e97df89bd1623ae # initialize rs2
subw x3, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3a0661044a3329c3 # initialize rs1
li x15, 0xefc705737f11304d # initialize rs2
subw x4, x4, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x671d1e9ea20a96a9 # initialize rs1
li x16, 0x4434b587d0bc8195 # initialize rs2
subw x5, x5, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x58efa142b9c6b27d # initialize rs1
li x26, 0xfd37037eceadb056 # initialize rs2
subw x6, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x901e5d9bab3fe25d # initialize rs1
li x12, 0xa253c5a397e9262b # initialize rs2
subw x7, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd7b508d4af051b98 # initialize rs1
li x2, 0x5a5b29dd2265b7f8 # initialize rs2
subw x8, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xbdacefa80e620361 # initialize rs1
li x13, 0x64dfcb8d3b69ec3a # initialize rs2
subw x9, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xf52c733be6a2e9b0 # initialize rs1
li x14, 0x8c8bb7e82128e6b6 # initialize rs2
subw x10, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xcbbedcbccfaf0570 # initialize rs1
li x9, 0x2383cff1fda7f7e6 # initialize rs2
subw x11, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x5f97312058dc4259 # initialize rs1
li x5, 0x1b26dcd2f54a782c # initialize rs2
subw x12, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x9edc48ba7f224d3f # initialize rs1
li x22, 0xe8f4a0d0fbb38f20 # initialize rs2
subw x13, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x7bffb4a4d73ef5b9 # initialize rs1
li x7, 0x7bdf92e12c0f6c24 # initialize rs2
subw x14, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xfa45997ff8e97644 # initialize rs1
li x20, 0x349621acdaf43e08 # initialize rs2
subw x15, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x0be9bd362e56131c # initialize rs1
li x21, 0x6b626e2ddaaff158 # initialize rs2
subw x16, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xcd9ffe86979ab8ea # initialize rs1
li x14, 0x7b963314eb15f5bd # initialize rs2
subw x17, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xb57882c8f4d3904f # initialize rs1
li x10, 0x67832f00396a2bf8 # initialize rs2
subw x18, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa985ae9631cda1bc # initialize rs1
li x18, 0xee3cc1f2a5d1e453 # initialize rs2
subw x19, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x126df756faaeb279 # initialize rs1
li x29, 0x927b1279edcf9373 # initialize rs2
subw x20, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x6ce6c278e1f044e5 # initialize rs1
li x23, 0xee4bfd482b6e9c5f # initialize rs2
subw x21, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe064b6bad69af1ab # initialize rs1
li x1, 0xbae2b787546c8eaa # initialize rs2
subw x22, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x010eecf66094e338 # initialize rs1
li x15, 0x144ffd7f33f7f696 # initialize rs2
subw x23, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xed1602bc3dc54622 # initialize rs1
li x29, 0x87138b53effce8b2 # initialize rs2
subw x24, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x4e1551b893d022d1 # initialize rs1
li x6, 0x6cb83d26681ac01c # initialize rs2
subw x25, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x4d5c9fcbb6e2b4ea # initialize rs1
li x2, 0x589e8aaaf9be53bc # initialize rs2
subw x26, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xd4861ea49939c7a7 # initialize rs1
li x23, 0x48567279050ae5d2 # initialize rs2
subw x27, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xb4a9917a0ea8f626 # initialize rs1
li x3, 0xeed73cf9967446e6 # initialize rs2
subw x28, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf2c4a86204ac6836 # initialize rs1
li x13, 0xb0207149be826a17 # initialize rs2
subw x29, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x5ace53727b28c776 # initialize rs1
li x13, 0x0e61ba7f847fdad9 # initialize rs2
subw x30, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x9b932a8e34fd19fc # initialize rs1
li x18, 0x708ae8fd166a322e # initialize rs2
subw x31, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x26, 0xe293cbaf661ec815 # initialize rs1
li x0, 0xc904eeb1168933ac # initialize rs2
subw x0, x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x27, 0x63b2a6ecdc9e6679 # initialize rs1
li x1, 0xd4e036488d9865be # initialize rs2
subw x1, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x5, 0xbe8327aa2d4e03a2 # initialize rs1
li x2, 0xe59354fbadec470b # initialize rs2
subw x2, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x9, 0xe39bad3264aa1763 # initialize rs1
li x3, 0x8c18155b64e17f9a # initialize rs2
subw x3, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0x077cdd83ddc14d8a # initialize rs1
li x4, 0x90755aedd19cd4e7 # initialize rs2
subw x4, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0xb2a5021e71e44167 # initialize rs1
li x5, 0x1215789d23cf467e # initialize rs2
subw x5, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x2c5509af50046fbc # initialize rs1
li x6, 0x5a5575f1cdd85d90 # initialize rs2
subw x6, x17, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0xb2a9eb53eaed1d11 # initialize rs1
li x7, 0xcc7debcb5c087d42 # initialize rs2
subw x7, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x25, 0x37d320c4b77f0ff1 # initialize rs1
li x8, 0x1d668e44edf60181 # initialize rs2
subw x8, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x15, 0x8ede430f0dc1ed4f # initialize rs1
li x9, 0x51045217b4501a23 # initialize rs2
subw x9, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x24, 0xff20c404798641a0 # initialize rs1
li x10, 0xeb0e596dcf7a17ee # initialize rs2
subw x10, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x9, 0x2c021b1fd1392ce6 # initialize rs1
li x11, 0x64d2d1aecea32091 # initialize rs2
subw x11, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x5, 0x09ac59bbb42b8884 # initialize rs1
li x12, 0x67a63183bd8d1787 # initialize rs2
subw x12, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x14, 0x7354ca25435c1e35 # initialize rs1
li x13, 0x3b8ee6889c923b3d # initialize rs2
subw x13, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x5, 0x517abcc725f07924 # initialize rs1
li x14, 0x7881ed6ac643fa94 # initialize rs2
subw x14, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x11, 0x4c3ef9597cee5668 # initialize rs1
li x15, 0x158e92cc196b5c65 # initialize rs2
subw x15, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x13, 0x7242e4cc5f273c3c # initialize rs1
li x16, 0x16dd686f2a3087a9 # initialize rs2
subw x16, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x14, 0xa26f881c3b0ccae2 # initialize rs1
li x17, 0xe979e7fe540d09ff # initialize rs2
subw x17, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x19, 0x3fa938791ab6ea62 # initialize rs1
li x18, 0x08ed2867cf97325b # initialize rs2
subw x18, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x23, 0xb8843e1f0bb02d3a # initialize rs1
li x19, 0x7f21df0eab2a7733 # initialize rs2
subw x19, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x31, 0xc5f86a323719b54c # initialize rs1
li x20, 0x9360962e6f795015 # initialize rs2
subw x20, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x274b1bcca6ffe410 # initialize rs1
li x21, 0x6871341443f56381 # initialize rs2
subw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x1b3b73fc9a8879cb # initialize rs1
li x22, 0x5b608d9c6151608d # initialize rs2
subw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x18, 0xe5e4e3120655474a # initialize rs1
li x23, 0xb1a1734178133e1c # initialize rs2
subw x23, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x16, 0xe40ec047bf7003d0 # initialize rs1
li x24, 0xbd2b0b8ec332d612 # initialize rs2
subw x24, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x28, 0xc5f0617fbd271995 # initialize rs1
li x25, 0x0326c67642d88941 # initialize rs2
subw x25, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x3, 0x7c55b88ccf303f89 # initialize rs1
li x26, 0xf3135df5076e012c # initialize rs2
subw x26, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x16, 0x0be0ab1881c7377b # initialize rs1
li x27, 0x62c82d4165cda734 # initialize rs2
subw x27, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x13, 0x9309a8aab4c403ae # initialize rs1
li x28, 0x4efd67a6dc73f600 # initialize rs2
subw x28, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x7, 0x3e8e3b3ddd6dcc61 # initialize rs1
li x29, 0xaba4cf187085f73f # initialize rs2
subw x29, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x10, 0x7c2265cb542d91f4 # initialize rs1
li x30, 0x11442f7202358eea # initialize rs2
subw x30, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x12, 0x166419ad8e9d1db6 # initialize rs1
li x31, 0x509c8bcd5c08004c # initialize rs2
subw x31, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xcc3629bf54ba8883 # initialize rs1
li x0, 0x6a7e2d19f2f79e02 # initialize rs2
subw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xdf23e4fc541b0ab7 # initialize rs1
li x1, 0x75a404b69432d5b5 # initialize rs2
subw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x02fde38b2b20d268 # initialize rs1
li x2, 0x15c2d3a17c761cae # initialize rs2
subw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x9a3d3b0836efeeb1 # initialize rs1
li x3, 0x0821bc2cf244ba05 # initialize rs2
subw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa944d1467d35e1b0 # initialize rs1
li x4, 0x18895fc2843b1bcd # initialize rs2
subw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0308aa61e26cca87 # initialize rs1
li x5, 0xf1657714c972c456 # initialize rs2
subw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xea471e4547542b28 # initialize rs1
li x6, 0xb42b4bf81c5753bb # initialize rs2
subw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5754cf9fe612b88f # initialize rs1
li x7, 0xe31781e935755db4 # initialize rs2
subw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x2c1d5c2a7b8b03ab # initialize rs1
li x8, 0xf3fe3e79d8fb5650 # initialize rs2
subw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x088f818223e59773 # initialize rs1
li x9, 0xd6ef8da5e97bb763 # initialize rs2
subw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x1de60c825826d14a # initialize rs1
li x10, 0xd036800c8d7ebce6 # initialize rs2
subw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xd48dbcc9e4514edd # initialize rs1
li x11, 0xd64d41dffbdf7c57 # initialize rs2
subw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x4ad7ab1f66febbbe # initialize rs1
li x12, 0xd40dd17733920b07 # initialize rs2
subw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x093d8ee0abe7c7f0 # initialize rs1
li x13, 0xb2a2c8ce77843534 # initialize rs2
subw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd985a4f2195072f9 # initialize rs1
li x14, 0xf027700208cf2018 # initialize rs2
subw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xf9de31cb4874a172 # initialize rs1
li x15, 0x17349466665b10ed # initialize rs2
subw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xdf3073f9da325cb1 # initialize rs1
li x16, 0xdc6be81b0719dade # initialize rs2
subw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x3891211a5373b9d2 # initialize rs1
li x17, 0xcc0f357e398d1bc5 # initialize rs2
subw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x15ea823bb468b92a # initialize rs1
li x18, 0x35db3fa66e5ed835 # initialize rs2
subw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x977209a588577225 # initialize rs1
li x19, 0x54a348edfe694127 # initialize rs2
subw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x48e0d207c1549340 # initialize rs1
li x20, 0xdf1f42a7e957c2d9 # initialize rs2
subw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x043ea2db2df55333 # initialize rs1
li x21, 0xb0d6ff9d34a4f5dd # initialize rs2
subw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xd9e8a29f86c4e6f0 # initialize rs1
li x22, 0x8bb2b1dbf5d39361 # initialize rs2
subw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x4c4704f87d5eec4a # initialize rs1
li x23, 0x8902d2197a9aa06e # initialize rs2
subw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x74e566e80f1f2f09 # initialize rs1
li x24, 0x13faa6bd557b634e # initialize rs2
subw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xf52e0ae1d2632ba9 # initialize rs1
li x25, 0x552865c26acd5ef3 # initialize rs2
subw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x5522b774def750bd # initialize rs1
li x26, 0x0719cfebb730751e # initialize rs2
subw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x94a7f3004e887308 # initialize rs1
li x27, 0xa9b7ecea73f03b68 # initialize rs2
subw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x22a71146dccef598 # initialize rs1
li x28, 0xe1d99b5d575895d4 # initialize rs2
subw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x3bd958e838526d30 # initialize rs1
li x29, 0x77ab188db2d737c1 # initialize rs2
subw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x7b9e589216c28a59 # initialize rs1
li x30, 0x3277874484d6b01b # initialize rs2
subw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x0f27ad836d2c87f3 # initialize rs1
li x31, 0xe3e8c9e58bf4aaa0 # initialize rs2
subw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x17, x7 # perform first operation
subw x9, x20, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x12, x3 # perform first operation
subw x16, x23, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x8, x2 # perform first operation
subw x6, x10, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x23, x15 # perform first operation
subw x15, x20, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x11, x10 # perform first operation
subw x10, x31, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x2, x7 # perform first operation
subw x20, x8, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x3, x9 # perform first operation
subw x20, x24, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x7, x6 # perform first operation
subw x25, x29, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x19, x10 # perform first operation
subw x27, x12, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x13, x24 # perform first operation
subw x13, x7, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x26, x25 # perform first operation
subw x25, x18, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x20, x23 # perform first operation
subw x16, x6, x24 # perform second (triggering) operation

.EQU SIGSIZE,4096


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
