///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbkb/WALLY-COV-pack.S
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
li x0, 0x52c7373c9138f3df # initialize rs1
li x20, 0xac19368b0a4f925f # initialize rs2
pack x5, x0, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xeaa783af2db49809 # initialize rs1
li x19, 0x4f94fa701f6f388f # initialize rs2
pack x5, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x5abb831e59bcceab # initialize rs1
li x6, 0xda66cecb3d14a42f # initialize rs2
pack x16, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x0ef599995e095706 # initialize rs1
li x2, 0xd5a2018626c09229 # initialize rs2
pack x14, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xaf5df4d07468740a # initialize rs1
li x8, 0x3d2e1a9c555379f5 # initialize rs2
pack x25, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8728e6ea7a590339 # initialize rs1
li x12, 0x8669032ac77e1913 # initialize rs2
pack x3, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0e9e97ef4b8d6f6a # initialize rs1
li x3, 0x90b6b8516713d366 # initialize rs2
pack x14, x6, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf870feba26eb47f2 # initialize rs1
li x20, 0x22175fbed8fbe56a # initialize rs2
pack x17, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x1bef9e5d6ddfe2bb # initialize rs1
li x17, 0xde909e5347e90d75 # initialize rs2
pack x12, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xb443652471caaeaa # initialize rs1
li x7, 0x1d9a8a7fa4339c72 # initialize rs2
pack x29, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x91c9b9b2078c6763 # initialize rs1
li x26, 0x98c22ec13bce1cfb # initialize rs2
pack x16, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x063830f98a4bbab2 # initialize rs1
li x19, 0x43f7c0dd0e42f4ce # initialize rs2
pack x15, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xf51f993ff77e7d61 # initialize rs1
li x11, 0xb902842325afb0ad # initialize rs2
pack x23, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x955394d60db7b684 # initialize rs1
li x15, 0xbc4d59d1f4306a89 # initialize rs2
pack x5, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xf1ebd235e1bd2156 # initialize rs1
li x6, 0xc033d25cde9a2208 # initialize rs2
pack x13, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe88c0b097dc06616 # initialize rs1
li x10, 0x8c09d3dcd5205505 # initialize rs2
pack x20, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x6c00f171acef9286 # initialize rs1
li x11, 0xba0879d5faa74fa7 # initialize rs2
pack x1, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x91a5470d959311a6 # initialize rs1
li x12, 0x70e9e3972e484ffe # initialize rs2
pack x10, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xfc289b3c8e700a24 # initialize rs1
li x17, 0xdbd07abe15e483b3 # initialize rs2
pack x24, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xb3d57feecd642d2e # initialize rs1
li x7, 0x8563a34e3fa1bb7b # initialize rs2
pack x30, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x54ae2036e5e68c13 # initialize rs1
li x30, 0xb0de92dde58f74d5 # initialize rs2
pack x27, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x65df71eb7001a60f # initialize rs1
li x24, 0x1573872f913e3a47 # initialize rs2
pack x16, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xc7070c7c0ebeba52 # initialize rs1
li x7, 0x67537737873cebf3 # initialize rs2
pack x28, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x1349b33b4556ceb8 # initialize rs1
li x19, 0xb97b71503192e974 # initialize rs2
pack x31, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x15d421ca42adb862 # initialize rs1
li x15, 0x00f015f7f62f3bc8 # initialize rs2
pack x9, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x5058ea6ab34f7bd7 # initialize rs1
li x22, 0x9d2b4f241dbd1bdf # initialize rs2
pack x19, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x6568a52f6c5a185a # initialize rs1
li x10, 0x8783a5aff7c7c080 # initialize rs2
pack x6, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x8fa0d4dc14ead4a5 # initialize rs1
li x9, 0x37ef310afb9efd89 # initialize rs2
pack x19, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x10cf65ad775fa27a # initialize rs1
li x31, 0x27da8befaf97e800 # initialize rs2
pack x15, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x6d6035a9ff79b898 # initialize rs1
li x18, 0x374e25199e141418 # initialize rs2
pack x23, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x26a6f0aae4ab72d3 # initialize rs1
li x18, 0x6776f6bbd56d90b5 # initialize rs2
pack x6, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xfca19bc33e5d19be # initialize rs1
li x8, 0xc8449984349410a6 # initialize rs2
pack x3, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cp_rs2 (Test source rs2 = x1)
li x19, 0xaa39e0507c8923a5 # initialize rs1
li x1, 0x2de99755e5101494 # initialize rs2
pack x6, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 256)

# Testcase cp_rs2 (Test source rs2 = x2)
li x20, 0xf4f751f506427d68 # initialize rs1
li x2, 0x9a328e6991b009c6 # initialize rs2
pack x1, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rs2 (Test source rs2 = x3)
li x20, 0xce9e6f949b2649a6 # initialize rs1
li x3, 0x8398ed88b2cb01c9 # initialize rs2
pack x16, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 272)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0x85ec3e70b8bac766 # initialize rs1
li x4, 0xdfd032df04a4a73e # initialize rs2
pack x2, x3, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 280)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0xd79822154cf33281 # initialize rs1
li x5, 0x538750cb94af7eb4 # initialize rs2
pack x24, x3, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 288)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x334b941ca8a699b3 # initialize rs1
li x6, 0x056bacccc6af944c # initialize rs2
pack x19, x17, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 296)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x49c8c2c06b1604da # initialize rs1
li x7, 0x1e93df3dc5ef5dc9 # initialize rs2
pack x14, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 304)

# Testcase cp_rs2 (Test source rs2 = x8)
li x11, 0x632abb3977d249e6 # initialize rs1
li x8, 0x99cce8ea98cb8a6d # initialize rs2
pack x27, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cp_rs2 (Test source rs2 = x9)
li x17, 0xe5ac9148ef03f3f6 # initialize rs1
li x9, 0xde8ce567c9cc679c # initialize rs2
pack x11, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 320)

# Testcase cp_rs2 (Test source rs2 = x10)
li x11, 0x7f14bc7c02744dc8 # initialize rs1
li x10, 0xc28115acdc3bf8fe # initialize rs2
pack x12, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 328)

# Testcase cp_rs2 (Test source rs2 = x11)
li x18, 0x93634316e8a1ee3b # initialize rs1
li x11, 0x7173f5499fc85e85 # initialize rs2
pack x5, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 336)

# Testcase cp_rs2 (Test source rs2 = x12)
li x21, 0x1f5ef26af41dfd65 # initialize rs1
li x12, 0xe38eb20f9b06f10b # initialize rs2
pack x24, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 344)

# Testcase cp_rs2 (Test source rs2 = x13)
li x2, 0x6b52544d71e598dd # initialize rs1
li x13, 0x38d12952bac8ae07 # initialize rs2
pack x15, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 352)

# Testcase cp_rs2 (Test source rs2 = x14)
li x8, 0x87dceb923d4efc0f # initialize rs1
li x14, 0x6a45d17c4f804671 # initialize rs2
pack x13, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rs2 (Test source rs2 = x15)
li x16, 0x01121d278e2be04e # initialize rs1
li x15, 0x1a734fa635a5a5de # initialize rs2
pack x12, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 368)

# Testcase cp_rs2 (Test source rs2 = x16)
li x30, 0xc67aa2e87eef3cab # initialize rs1
li x16, 0x422acfcf70df738f # initialize rs2
pack x1, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 376)

# Testcase cp_rs2 (Test source rs2 = x17)
li x24, 0x38ae5b746869c1e8 # initialize rs1
li x17, 0x63c417f42967a408 # initialize rs2
pack x7, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 384)

# Testcase cp_rs2 (Test source rs2 = x18)
li x8, 0xca736b3eae6d09ec # initialize rs1
li x18, 0x507dece79c8dfcff # initialize rs2
pack x2, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0xaeb9c943aa30ed24 # initialize rs1
li x19, 0xe88b84e9dbd39f04 # initialize rs2
pack x8, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 400)

# Testcase cp_rs2 (Test source rs2 = x20)
li x17, 0x01d4f1c962a07a78 # initialize rs1
li x20, 0x2181b5ce3cc7ceac # initialize rs2
pack x13, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cp_rs2 (Test source rs2 = x21)
li x17, 0xb6bce448000bade9 # initialize rs1
li x21, 0x1e65c7358c8f5039 # initialize rs2
pack x7, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cp_rs2 (Test source rs2 = x22)
li x24, 0xdd6c33d3e8f3c58e # initialize rs1
li x22, 0x1e0ff5114f07b497 # initialize rs2
pack x26, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 424)

# Testcase cp_rs2 (Test source rs2 = x23)
li x13, 0xdadff62381f89822 # initialize rs1
li x23, 0xd7e57ddffb0cab6f # initialize rs2
pack x2, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cp_rs2 (Test source rs2 = x24)
li x27, 0xf887025d6028e25e # initialize rs1
li x24, 0x341c175d4ceab86b # initialize rs2
pack x16, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 440)

# Testcase cp_rs2 (Test source rs2 = x25)
li x2, 0x925436ee582e720c # initialize rs1
li x25, 0x4ab5620b6526062b # initialize rs2
pack x14, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cp_rs2 (Test source rs2 = x26)
li x18, 0x53faca505b88517c # initialize rs1
li x26, 0x69a7837dc69c9f41 # initialize rs2
pack x3, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 456)

# Testcase cp_rs2 (Test source rs2 = x27)
li x6, 0xcb814e08f059d7b9 # initialize rs1
li x27, 0x7729d54787554069 # initialize rs2
pack x10, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cp_rs2 (Test source rs2 = x28)
li x17, 0x5a974109fd8c624d # initialize rs1
li x28, 0x2b243072de8bb503 # initialize rs2
pack x19, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cp_rs2 (Test source rs2 = x29)
li x31, 0x76eef01f059a3297 # initialize rs1
li x29, 0x17e572e36b8c6a9e # initialize rs2
pack x18, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 480)

# Testcase cp_rs2 (Test source rs2 = x30)
li x3, 0x2fcdb33f9247558a # initialize rs1
li x30, 0x7129c2b0c3d3a886 # initialize rs2
pack x25, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cp_rs2 (Test source rs2 = x31)
li x25, 0x8d722bb9f7f90205 # initialize rs1
li x31, 0xb1300d842af08c06 # initialize rs2
pack x9, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0x293943c9dfd02163 # initialize rs1
li x19, 0x32b8dbcaef1eab8b # initialize rs2
pack x0, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 504)

# Testcase cp_rd (Test destination rd = x1)
li x28, 0xb00480ac298cfbda # initialize rs1
li x3, 0x88b9e012443994df # initialize rs2
pack x1, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 512)

# Testcase cp_rd (Test destination rd = x2)
li x16, 0x77769d5c50b75eb3 # initialize rs1
li x24, 0x472e9c16ed823b09 # initialize rs2
pack x2, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cp_rd (Test destination rd = x3)
li x31, 0x245d120d2afd7952 # initialize rs1
li x14, 0xf0a7eb3423519abc # initialize rs2
pack x3, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0xd6d5a88593e28f49 # initialize rs1
li x30, 0xeaa53f4403685257 # initialize rs2
pack x4, x12, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 536)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0xa7e635fed57b106e # initialize rs1
li x31, 0xd85a619ee39dc830 # initialize rs2
pack x5, x20, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 544)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0x02dcd5bd69f604cd # initialize rs1
li x5, 0xcdb3f9ee07fd306d # initialize rs2
pack x6, x21, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 552)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x9e7487b9e0b703d7 # initialize rs1
li x14, 0xd0b3dd45b9029f55 # initialize rs2
pack x7, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cp_rd (Test destination rd = x8)
li x25, 0xd3c8820835371fad # initialize rs1
li x21, 0xdf7e4d535d9bc51b # initialize rs2
pack x8, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 568)

# Testcase cp_rd (Test destination rd = x9)
li x21, 0x22215d415bb66045 # initialize rs1
li x28, 0xcf3cedc17aa302d5 # initialize rs2
pack x9, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 576)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0xb33a8484fa09f742 # initialize rs1
li x28, 0x4d44a0c70bb30ea9 # initialize rs2
pack x10, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 584)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x0b26fdae9cbe71b2 # initialize rs1
li x22, 0x36ecab6eb00ad6d3 # initialize rs2
pack x11, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 592)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0x257854e65d83a7a7 # initialize rs1
li x25, 0x1f3b730d0b2fb6d9 # initialize rs2
pack x12, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cp_rd (Test destination rd = x13)
li x16, 0xeebae886edeefedc # initialize rs1
li x28, 0x36394bb5f6c1d625 # initialize rs2
pack x13, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 608)

# Testcase cp_rd (Test destination rd = x14)
li x31, 0x4757f77463a2a59c # initialize rs1
li x22, 0x7446313befbe2d05 # initialize rs2
pack x14, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cp_rd (Test destination rd = x15)
li x8, 0x0d091d53ce5ab736 # initialize rs1
li x25, 0xb38d039092ed8f62 # initialize rs2
pack x15, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cp_rd (Test destination rd = x16)
li x15, 0x3be78923ebc91efe # initialize rs1
li x29, 0x2519a3713e8f0e0d # initialize rs2
pack x16, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cp_rd (Test destination rd = x17)
li x20, 0x229deb9c4fc29528 # initialize rs1
li x23, 0x83b450407be72df1 # initialize rs2
pack x17, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 640)

# Testcase cp_rd (Test destination rd = x18)
li x1, 0x47a52805161428ee # initialize rs1
li x11, 0x083b99313ccac641 # initialize rs2
pack x18, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 648)

# Testcase cp_rd (Test destination rd = x19)
li x22, 0x4dfaef76c21fbba1 # initialize rs1
li x11, 0xb3aaa788c22b731e # initialize rs2
pack x19, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 656)

# Testcase cp_rd (Test destination rd = x20)
li x16, 0x92961595aef0a43f # initialize rs1
li x17, 0x7478ea3e8fa9e939 # initialize rs2
pack x20, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 664)

# Testcase cp_rd (Test destination rd = x21)
li x25, 0xcf8854f0b34430d5 # initialize rs1
li x1, 0x46889c275b1ec5ee # initialize rs2
pack x21, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 672)

# Testcase cp_rd (Test destination rd = x22)
li x31, 0x080aeecd38e05850 # initialize rs1
li x17, 0x3914807f691a95e5 # initialize rs2
pack x22, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 680)

# Testcase cp_rd (Test destination rd = x23)
li x10, 0x7a95365a60d3acf2 # initialize rs1
li x19, 0x275ad4c4a87a0744 # initialize rs2
pack x23, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 688)

# Testcase cp_rd (Test destination rd = x24)
li x18, 0x35cac0ea27fc3f46 # initialize rs1
li x22, 0xdd4b52e41fa12454 # initialize rs2
pack x24, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 696)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0x0b7747f70e3e69d9 # initialize rs1
li x17, 0x22056c805d21a30f # initialize rs2
pack x25, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 704)

# Testcase cp_rd (Test destination rd = x26)
li x10, 0xfdf6b84cca80b2c6 # initialize rs1
li x2, 0x3edc14e315a863ed # initialize rs2
pack x26, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cp_rd (Test destination rd = x27)
li x18, 0x7dc47439ed25d8c9 # initialize rs1
li x11, 0x336a1b54c3cc1f92 # initialize rs2
pack x27, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

# Testcase cp_rd (Test destination rd = x28)
li x30, 0xc4dd3162208c1281 # initialize rs1
li x10, 0x61712fb06e66a1b1 # initialize rs2
pack x28, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 728)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0xc86689572d0849e3 # initialize rs1
li x5, 0xeba24f87fd920141 # initialize rs2
pack x29, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 736)

# Testcase cp_rd (Test destination rd = x30)
li x27, 0x29b6f135a579b24e # initialize rs1
li x17, 0x62d83bc08c63aba6 # initialize rs2
pack x30, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 744)

# Testcase cp_rd (Test destination rd = x31)
li x19, 0x1bd6a41d7598bb76 # initialize rs1
li x11, 0x93a90a7af41d83af # initialize rs2
pack x31, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 752)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x0000000000000000 # initialize rs1
li x5, 0xb0355fc52ac506cd # initialize rs2
pack x16, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x0000000000000001 # initialize rs1
li x17, 0xef7178ebffc1e533 # initialize rs2
pack x23, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0x0000000000000002 # initialize rs1
li x18, 0x7212928290848a96 # initialize rs2
pack x19, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x3, 0x8000000000000000 # initialize rs1
li x17, 0xf986d6c8305d728d # initialize rs2
pack x1, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x25, 0x8000000000000001 # initialize rs1
li x14, 0x384cc996386ea6b5 # initialize rs2
pack x31, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
li x14, 0xae556886b57d3c5c # initialize rs2
pack x6, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x21, 0x7ffffffffffffffe # initialize rs1
li x26, 0xe9b416b323b91d02 # initialize rs2
pack x3, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
li x8, 0x0cccf840a3a16149 # initialize rs2
pack x9, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
li x24, 0x2aec93934c542ac8 # initialize rs2
pack x16, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x7b2545c753fb42da # initialize rs2
pack x28, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5c30d775738f9c8b # initialize rs2
pack x19, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x15, 0x5555555555555555 # initialize rs1
li x25, 0xe776f25c94de0c95 # initialize rs2
pack x2, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x30, 0x00000000ffffffff # initialize rs1
li x23, 0x047863633c1feaaa # initialize rs2
pack x3, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x13, 0x8120f6260ebaf95f # initialize rs2
pack x2, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x1, 0x0000000100000000 # initialize rs1
li x18, 0x20a93379b31fe078 # initialize rs2
pack x7, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x25, 0x0000000100000001 # initialize rs1
li x8, 0x24e79e67c3103021 # initialize rs2
pack x10, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 880)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x29, 0x853ff5170c5090b0 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
pack x11, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x16, 0xb7e7c3878a01d836 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
pack x22, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x27, 0x945a9db909ebbfcc # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
pack x18, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x19, 0xdc3a79fe699e5b5a # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
pack x13, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x18, 0x3f465cdf84483d84 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
pack x3, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x23, 0xd32bf2094408cd6f # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
pack x7, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x30, 0x5f626902b63fca45 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
pack x2, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x6, 0xd5c83a91099912ce # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
pack x25, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x10, 0x8b7af371babdd63d # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
pack x1, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x21, 0xe362e7aa71bc532e # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
pack x13, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x15, 0xab51af460e30e191 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x21, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x23, 0x7f099a74ebc8a2de # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
pack x25, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x19, 0x9a34c36e47d7b593 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
pack x22, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0xccb4d1aadd0ca500 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
pack x13, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x8, 0xa1c581652d70b90e # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
pack x6, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x20, 0xfda0dcd7824aaf6d # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
pack x10, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
pack x5, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x26, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
pack x16, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x3, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
pack x9, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x22, 0x0000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
pack x11, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x20, 0x0000000000000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
pack x9, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000000 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
pack x31, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000000000000 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
pack x21, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000000 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
pack x27, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
pack x20, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x6, 0x0000000000000000 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
pack x2, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000000 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x3, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x20, 0x0000000000000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
pack x2, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x21, 0x0000000000000000 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
pack x11, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x27, 0x0000000000000000 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
pack x11, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x11, 0x0000000000000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
pack x2, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x27, 0x0000000000000000 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
pack x5, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x8, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
pack x30, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x14, 0x0000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
pack x28, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x24, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
pack x15, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x13, 0x0000000000000001 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
pack x16, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x19, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
pack x31, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x27, 0x0000000000000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
pack x11, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000000000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
pack x16, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x29, 0x0000000000000001 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
pack x9, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x10, 0x0000000000000001 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
pack x9, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x13, 0x0000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
pack x29, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x0000000000000001 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x26, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x2, 0x0000000000000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
pack x23, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x21, 0x0000000000000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
pack x3, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x12, 0x0000000000000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
pack x26, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x28, 0x0000000000000001 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
pack x1, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x6, 0x0000000000000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
pack x21, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x20, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
pack x28, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x6, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
pack x14, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x22, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
pack x18, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x27, 0x0000000000000002 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
pack x1, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x5, 0x0000000000000002 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
pack x31, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x19, 0x0000000000000002 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
pack x26, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
pack x8, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000002 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
pack x7, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000002 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
pack x22, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000000000002 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
pack x7, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000000000002 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x24, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x31, 0x0000000000000002 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
pack x26, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x21, 0x0000000000000002 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
pack x29, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x3, 0x0000000000000002 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
pack x13, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x21, 0x0000000000000002 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
pack x1, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x10, 0x0000000000000002 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
pack x7, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x24, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
pack x21, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x23, 0x8000000000000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
pack x7, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x25, 0x8000000000000000 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
pack x21, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x13, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
pack x8, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x23, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
pack x26, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x15, 0x8000000000000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
pack x19, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x21, 0x8000000000000000 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
pack x27, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x11, 0x8000000000000000 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
pack x12, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x20, 0x8000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
pack x30, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x27, 0x8000000000000000 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
pack x18, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x8000000000000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x24, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x24, 0x8000000000000000 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
pack x29, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x8, 0x8000000000000000 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
pack x24, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x11, 0x8000000000000000 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
pack x26, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x2, 0x8000000000000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
pack x26, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x13, 0x8000000000000000 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
pack x26, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x8, 0x8000000000000001 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
pack x21, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x19, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
pack x7, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x31, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
pack x9, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x26, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
pack x11, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x7, 0x8000000000000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
pack x6, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x23, 0x8000000000000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
pack x17, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x20, 0x8000000000000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
pack x5, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x20, 0x8000000000000001 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
pack x9, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x20, 0x8000000000000001 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
pack x31, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x19, 0x8000000000000001 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
pack x2, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x8000000000000001 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x23, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x3, 0x8000000000000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
pack x18, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x7, 0x8000000000000001 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
pack x21, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x15, 0x8000000000000001 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
pack x31, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x24, 0x8000000000000001 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
pack x20, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x19, 0x8000000000000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
pack x10, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x2, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
pack x23, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x16, 0x7fffffffffffffff # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
pack x11, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x5, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
pack x11, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x9, 0x7fffffffffffffff # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
pack x6, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x17, 0x7fffffffffffffff # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
pack x11, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
pack x21, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x8, 0x7fffffffffffffff # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
pack x11, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
pack x2, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x6, 0x7fffffffffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
pack x23, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x30, 0x7fffffffffffffff # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
pack x25, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x7fffffffffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x31, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x24, 0x7fffffffffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
pack x26, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x14, 0x7fffffffffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
pack x30, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x22, 0x7fffffffffffffff # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
pack x6, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x27, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
pack x24, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x1, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
pack x5, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x27, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
pack x9, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x24, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
pack x12, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x21, 0x7ffffffffffffffe # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
pack x29, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0x7ffffffffffffffe # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
pack x25, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x24, 0x7ffffffffffffffe # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
pack x12, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x11, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
pack x22, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
pack x28, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x20, 0x7ffffffffffffffe # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
pack x14, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x9, 0x7ffffffffffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
pack x31, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x2, 0x7ffffffffffffffe # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
pack x11, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x7ffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x15, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x31, 0x7ffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
pack x29, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
pack x20, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x24, 0x7ffffffffffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
pack x12, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x11, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
pack x1, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x8, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
pack x6, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x22, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
pack x25, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x2, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
pack x18, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x3, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
pack x31, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x21, 0xffffffffffffffff # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
pack x10, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x20, 0xffffffffffffffff # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
pack x29, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
pack x10, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0xffffffffffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
pack x10, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x7, 0xffffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
pack x24, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x5, 0xffffffffffffffff # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
pack x25, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x10, 0xffffffffffffffff # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
pack x20, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xffffffffffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x30, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x27, 0xffffffffffffffff # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
pack x1, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x29, 0xffffffffffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
pack x16, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x1, 0xffffffffffffffff # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
pack x22, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x28, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
pack x17, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x6, 0xffffffffffffffff # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
pack x17, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x30, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
pack x20, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x24, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
pack x7, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x5, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
pack x27, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x6, 0xfffffffffffffffe # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
pack x1, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x24, 0xfffffffffffffffe # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
pack x1, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x7, 0xfffffffffffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
pack x21, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
pack x12, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x3, 0xfffffffffffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
pack x5, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
pack x24, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x2, 0xfffffffffffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
pack x29, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0xfffffffffffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x10, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x2, 0xfffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
pack x22, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x23, 0xfffffffffffffffe # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
pack x25, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
pack x2, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x7, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
pack x15, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x3, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
pack x8, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
pack x14, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
pack x2, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
pack x10, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
pack x7, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
pack x20, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
pack x19, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
pack x15, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
pack x24, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
pack x31, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
pack x12, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x15, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
pack x3, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
pack x15, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
pack x3, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
pack x9, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
pack x13, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
pack x22, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
pack x14, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
pack x24, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
pack x6, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
pack x28, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
pack x21, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
pack x14, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
pack x2, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
pack x29, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
pack x1, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x20, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
pack x11, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
pack x14, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
pack x17, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
pack x18, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
pack x19, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x15, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
pack x11, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x25, 0x5555555555555555 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
pack x5, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x22, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
pack x30, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x12, 0x5555555555555555 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
pack x30, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x22, 0x5555555555555555 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
pack x16, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x25, 0x5555555555555555 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
pack x16, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
pack x20, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x22, 0x5555555555555555 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
pack x30, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
pack x29, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x18, 0x5555555555555555 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
pack x24, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x5555555555555555 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x2, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x11, 0x5555555555555555 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
pack x3, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x19, 0x5555555555555555 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
pack x31, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x12, 0x5555555555555555 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
pack x3, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x30, 0x5555555555555555 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
pack x2, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x1, 0x5555555555555555 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
pack x20, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x31, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
pack x20, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x5, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
pack x18, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x27, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
pack x20, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x9, 0x00000000ffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
pack x19, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x2, 0x00000000ffffffff # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
pack x21, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x2, 0x00000000ffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
pack x30, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0x00000000ffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
pack x25, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x21, 0x00000000ffffffff # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
pack x27, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
pack x14, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x14, 0x00000000ffffffff # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
pack x23, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x00000000ffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x28, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x28, 0x00000000ffffffff # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
pack x3, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x1, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
pack x25, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x25, 0x00000000ffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
pack x19, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x3, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
pack x29, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x30, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
pack x2, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x5, 0x00000000fffffffe # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
pack x28, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x7, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
pack x31, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x25, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
pack x9, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x27, 0x00000000fffffffe # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
pack x1, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x18, 0x00000000fffffffe # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
pack x1, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x30, 0x00000000fffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
pack x27, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x30, 0x00000000fffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
pack x1, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
pack x19, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x19, 0x00000000fffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
pack x14, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x9, 0x00000000fffffffe # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
pack x22, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x00000000fffffffe # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x23, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x22, 0x00000000fffffffe # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
pack x20, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x9, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
pack x19, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x20, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
pack x13, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x12, 0x00000000fffffffe # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
pack x1, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x16, 0x00000000fffffffe # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
pack x11, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x7, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
pack x20, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x2, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
pack x1, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x21, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
pack x11, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x12, 0x0000000100000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
pack x8, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x28, 0x0000000100000000 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
pack x10, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x10, 0x0000000100000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
pack x11, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000100000000 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
pack x19, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
pack x12, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000100000000 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
pack x31, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x27, 0x0000000100000000 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
pack x29, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000100000000 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x14, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x28, 0x0000000100000000 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
pack x27, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x29, 0x0000000100000000 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
pack x15, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x16, 0x0000000100000000 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
pack x25, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x19, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
pack x1, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x29, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
pack x3, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x18, 0x0000000100000001 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
pack x31, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x16, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
pack x2, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x9, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
pack x17, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x10, 0x0000000100000001 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
pack x17, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x31, 0x0000000100000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
pack x15, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000100000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
pack x2, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000100000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
pack x13, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x15, 0x0000000100000001 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
pack x31, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000100000001 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
pack x20, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000100000001 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
pack x3, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000100000001 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x15, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x11, 0x0000000100000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
pack x21, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
pack x31, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x19, 0x0000000100000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
pack x30, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x2, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
pack x23, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x25, 0x0000000100000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
pack x31, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1256)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x9373134339a328c4 # initialize rs1
li x1, 0xd7e65a1003c2fccc # initialize rs2
pack x8, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe4a9959fd5f32758 # initialize rs1
li x2, 0xbfd86f2f4f11873b # initialize rs2
pack x8, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xdd18c5a4f367bf64 # initialize rs1
li x3, 0xbee7c984d3c1b263 # initialize rs2
pack x20, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4c68ea9ce0327ed2 # initialize rs1
li x4, 0x737cd5252a45989e # initialize rs2
pack x6, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1420b0ccf0e7a931 # initialize rs1
li x5, 0x5901ed6ae6c27428 # initialize rs2
pack x9, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1e1dd9ab63f3156b # initialize rs1
li x6, 0x0fcecf63adf568d9 # initialize rs2
pack x24, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4ee1be240713d7a4 # initialize rs1
li x7, 0x4947208136f819aa # initialize rs2
pack x23, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xf592959321a6919a # initialize rs1
li x8, 0xe4107f16235c3d38 # initialize rs2
pack x25, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xb415b708009cf59f # initialize rs1
li x9, 0xe823c8b3bb48c61a # initialize rs2
pack x3, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x842c0cffee5e5b45 # initialize rs1
li x10, 0x812c6ac7212384de # initialize rs2
pack x15, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x572c84b0cac35f81 # initialize rs1
li x11, 0x6d4dd1e9cca900bf # initialize rs2
pack x20, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x20c58d22b08dbdd2 # initialize rs1
li x12, 0x56243defe51d82e1 # initialize rs2
pack x1, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x820cf30b4b8e7297 # initialize rs1
li x13, 0x0f518f3372445142 # initialize rs2
pack x18, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x0283b6bee05669b0 # initialize rs1
li x14, 0xc85f506900b7e9cd # initialize rs2
pack x15, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x7cb26c499c495fdb # initialize rs1
li x15, 0x84e604fdb1d10ae9 # initialize rs2
pack x11, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x678b33536dc2a37b # initialize rs1
li x16, 0xed0d43e7877a96a1 # initialize rs2
pack x20, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x98fc647859b9fd20 # initialize rs1
li x17, 0x4657b7d9ca1c4fb8 # initialize rs2
pack x20, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xbaa1a43fa4523c64 # initialize rs1
li x18, 0x105db4474b52c70a # initialize rs2
pack x5, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x21ca55bf0e0f6246 # initialize rs1
li x19, 0x2526bf693944dba1 # initialize rs2
pack x21, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xf18fb20831f22846 # initialize rs1
li x20, 0xb5b2783f2aef1c8c # initialize rs2
pack x27, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x77698eb2b553633b # initialize rs1
li x21, 0x973f3586f4929068 # initialize rs2
pack x18, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x1b5d4e9d954db390 # initialize rs1
li x22, 0x710d82c082b6b90f # initialize rs2
pack x12, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x29a565c5708abd71 # initialize rs1
li x23, 0x9bd34edbb83c35d7 # initialize rs2
pack x16, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xade6551dbfeef1c4 # initialize rs1
li x24, 0x5b75d40eb440bd77 # initialize rs2
pack x9, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x495474420f63d3dc # initialize rs1
li x25, 0xfe460b8b3ee35573 # initialize rs2
pack x12, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xe9065c291df99096 # initialize rs1
li x26, 0x04f4d84f3e0ed8d3 # initialize rs2
pack x12, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x0d45f09dfb8a5e2c # initialize rs1
li x27, 0x310eef81c9a62292 # initialize rs2
pack x26, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x1247c5cb4246fe4d # initialize rs1
li x28, 0x734340a23027b24d # initialize rs2
pack x31, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x1c4ce51b33d35c07 # initialize rs1
li x29, 0xfd70bb11350bf7d6 # initialize rs2
pack x5, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xbdd6c947a8bdf528 # initialize rs1
li x30, 0x77d8934ef2e310f8 # initialize rs2
pack x11, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x3d3a925fb4a02ba3 # initialize rs1
li x31, 0x24517a85e46574e7 # initialize rs2
pack x11, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1504)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x21, 0x1d1baffa1e674d36 # initialize rs1
li x1, 0x048c8cfa388e5189 # initialize rs2
pack x1, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1512)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x3, 0x9a1ebf0f210309e6 # initialize rs1
li x2, 0x356ab4f319124d6e # initialize rs2
pack x2, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1520)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x19, 0xb2b22f72004e1a5f # initialize rs1
li x3, 0x85a74170824b17dc # initialize rs2
pack x3, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1528)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0xc8b0cd76e8ef3161 # initialize rs1
li x4, 0x33fa8f593794f5a8 # initialize rs2
pack x4, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1536)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x907fff77072f5c68 # initialize rs1
li x5, 0xc624e7a08a35b4d6 # initialize rs2
pack x5, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1544)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x7f20a796a8fdeedb # initialize rs1
li x6, 0x6ad5c49ceed776f1 # initialize rs2
pack x6, x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1552)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x612c0bf2854602ee # initialize rs1
li x7, 0x081d0849acfc67e8 # initialize rs2
pack x7, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1560)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x28, 0x2bf5fc38a62f4780 # initialize rs1
li x8, 0xb75bb69fc851d6f3 # initialize rs2
pack x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1568)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x3, 0xcea3fbb1ce1113de # initialize rs1
li x9, 0x0a1cc7d1401cfd28 # initialize rs2
pack x9, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1576)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x14, 0xbdbc2285150e5031 # initialize rs1
li x10, 0x064961cd9cf868e1 # initialize rs2
pack x10, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1584)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x31, 0x9d25d57b66410253 # initialize rs1
li x11, 0x5aed933978162573 # initialize rs2
pack x11, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1592)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x29, 0xfea2a338bc91c074 # initialize rs1
li x12, 0x6b3961ac1febedd0 # initialize rs2
pack x12, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1600)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x10, 0x6153c1168ae512b8 # initialize rs1
li x13, 0xfc1ae6e5625b3bdc # initialize rs2
pack x13, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1608)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x29, 0xf90f7ffec9e3df1f # initialize rs1
li x14, 0xfb72e39dcd5de851 # initialize rs2
pack x14, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1616)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x28, 0xf06f106968f1bdcf # initialize rs1
li x15, 0x8df88c154a12103c # initialize rs2
pack x15, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1624)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x3a3aa8e60ba8a6b6 # initialize rs1
li x16, 0x0c3804fd94d42010 # initialize rs2
pack x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1632)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x10, 0x84887d06b09da5b4 # initialize rs1
li x17, 0xa97c3a1606ec5082 # initialize rs2
pack x17, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1640)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x6, 0xdd1ffbe3bc76450e # initialize rs1
li x18, 0xcbf499e352a1fc37 # initialize rs2
pack x18, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1648)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x24, 0x41f42262e7cd7211 # initialize rs1
li x19, 0x409618cf945069ab # initialize rs2
pack x19, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1656)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x21, 0xd48850da37ae097e # initialize rs1
li x20, 0x6ce92af1cc2672e0 # initialize rs2
pack x20, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1664)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x964147b1fe18e443 # initialize rs1
li x21, 0xd43494f6df1d2b2a # initialize rs2
pack x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1672)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x14, 0x463c13f5e375d852 # initialize rs1
li x22, 0xa06949b20343879e # initialize rs2
pack x22, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1680)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x18, 0x229e53328f00b979 # initialize rs1
li x23, 0x0e0fa859d4e943f8 # initialize rs2
pack x23, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1688)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x18, 0xa460bf454e078b0f # initialize rs1
li x24, 0xb5f54fa35499c630 # initialize rs2
pack x24, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1696)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x14, 0x6693669a972048c2 # initialize rs1
li x25, 0x6ce3b8b568c736cf # initialize rs2
pack x25, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1704)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x23, 0x2a88267baa630bb0 # initialize rs1
li x26, 0x976a214c8d20803e # initialize rs2
pack x26, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1712)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x18, 0x3be5c63b112f4ea5 # initialize rs1
li x27, 0x73849b9ae6c9a0a1 # initialize rs2
pack x27, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1720)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x23, 0x039a1ff9fb8fa0f0 # initialize rs1
li x28, 0x50b6d8cf7454de60 # initialize rs2
pack x28, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1728)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x6, 0x42b280032c011f8d # initialize rs1
li x29, 0x3c091f5eefb62b49 # initialize rs2
pack x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1736)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x23, 0xa3da4853d6a794c8 # initialize rs1
li x30, 0x043d2b59d851e4b1 # initialize rs2
pack x30, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1744)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x22, 0x3f97c8b9d17bd2fb # initialize rs1
li x31, 0xd5a685b154e3196a # initialize rs2
pack x31, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1752)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x5bad3768434e6262 # initialize rs1
li x1, 0x7043d0a5672f9cc3 # initialize rs2
pack x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1760)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x0d436c1fdeda57d0 # initialize rs1
li x2, 0xf76ba7880a5fe9f0 # initialize rs2
pack x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1768)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xef4c60a0ceb61f3c # initialize rs1
li x3, 0xc470200f0b9eed9c # initialize rs2
pack x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1776)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x28398ac3200e0fa6 # initialize rs1
li x4, 0xa8a7d6b2e0fb4fc2 # initialize rs2
pack x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1784)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x14ac910ad40e9916 # initialize rs1
li x5, 0xbe72478eaec70c39 # initialize rs2
pack x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1792)
addi x6, x6, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf2ea900a0fb42ac6 # initialize rs1
li x6, 0x1ec3256d2349d7aa # initialize rs2
pack x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 0)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x37de2781c34647cc # initialize rs1
li x7, 0x1d49506c31763abb # initialize rs2
pack x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 8)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xde86f3098a8004aa # initialize rs1
li x8, 0x6d0094c09d8b5721 # initialize rs2
pack x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x9ab2b712dd5315db # initialize rs1
li x9, 0xe5316b5bd3fbce85 # initialize rs2
pack x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 24)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xc196e91ce4cf579c # initialize rs1
li x10, 0xd48fab06967ebf41 # initialize rs2
pack x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x5c9373b155874412 # initialize rs1
li x11, 0x63db0757d834b96a # initialize rs2
pack x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x7713e34406d2dab1 # initialize rs1
li x12, 0xf7823eac4d582d09 # initialize rs2
pack x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xb5dd665c53650a80 # initialize rs1
li x13, 0x0d6f50e60915fa8d # initialize rs2
pack x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x162b490e987397b7 # initialize rs1
li x14, 0xb21086786caf5291 # initialize rs2
pack x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x4b203f500b55492e # initialize rs1
li x15, 0xebbe60b05787e8a5 # initialize rs2
pack x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xbab74ea3d81ca086 # initialize rs1
li x16, 0x5f054fea92553725 # initialize rs2
pack x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 80)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x604b27e75883b0a1 # initialize rs1
li x17, 0x8cf8b55aa28e9995 # initialize rs2
pack x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 88)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xf8596b865d4d63ff # initialize rs1
li x18, 0xb6a123e4850cbc46 # initialize rs2
pack x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x859e751b4253552c # initialize rs1
li x19, 0x2988204978d4daf3 # initialize rs2
pack x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xc9481d1ad8e2e15d # initialize rs1
li x20, 0x11f88e70763d0fa8 # initialize rs2
pack x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xa9e6e8546a9c0b7c # initialize rs1
li x21, 0x3620339c76e3dcf5 # initialize rs2
pack x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 120)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x4239abccfbeeacdf # initialize rs1
li x22, 0x70b141ff28c379cf # initialize rs2
pack x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x42d6e3f6d550828b # initialize rs1
li x23, 0xb06c08c5847cd43a # initialize rs2
pack x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x4210acce7a5a6f14 # initialize rs1
li x24, 0xa04ea0daab703afe # initialize rs2
pack x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 144)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x409b0392e5d9de0d # initialize rs1
li x25, 0x4636e2226dfa0225 # initialize rs2
pack x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 152)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xdc10f6a6d9360895 # initialize rs1
li x26, 0x27cd6005fb2659ef # initialize rs2
pack x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xee288d0d3d682144 # initialize rs1
li x27, 0x96e1961a73209e93 # initialize rs2
pack x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 168)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x50c08cad39154c02 # initialize rs1
li x28, 0x74d3c3d7d2d54178 # initialize rs2
pack x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 176)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x44a5d0ee8e388222 # initialize rs1
li x29, 0xb00b78d2625ba82d # initialize rs2
pack x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 184)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x7f9bfc55fdc5ada3 # initialize rs1
li x30, 0x3f7a2c4bab7cb3bf # initialize rs2
pack x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 192)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xeeea76cfa6afb805 # initialize rs1
li x31, 0xde4cc115ea944f15 # initialize rs2
pack x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 200)

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x13, x19 # perform first operation
pack x17, x29, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x22, x7 # perform first operation
pack x18, x17, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x28, x27 # perform first operation
pack x2, x3, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x5, x28 # perform first operation
pack x28, x12, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x3, x19 # perform first operation
pack x16, x3, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x30, x6 # perform first operation
pack x27, x25, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x27, x22 # perform first operation
pack x10, x15, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x21, x20 # perform first operation
pack x18, x28, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x31, x5 # perform first operation
pack x23, x16, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x10, x26 # perform first operation
pack x10, x18, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x13, x11 # perform first operation
pack x11, x30, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x3, x15 # perform first operation
pack x28, x6, x11 # perform second (triggering) operation

.EQU SIGSIZE,3808


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
