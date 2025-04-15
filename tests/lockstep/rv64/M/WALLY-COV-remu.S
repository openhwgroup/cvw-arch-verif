///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/M/WALLY-COV-remu.S
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
li x0, 0x2e7da555485079af # initialize rs1
li x7, 0xeec1c7fcb0d5abe6 # initialize rs2
remu x21, x0, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x679f256f9345ea39 # initialize rs1
li x10, 0xd81449cfdf5da6b3 # initialize rs2
remu x11, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb724c957190780b8 # initialize rs1
li x26, 0xc01754454576838d # initialize rs2
remu x6, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xec0341d4b1f2ad7c # initialize rs1
li x10, 0xff6eb51dc14e354e # initialize rs2
remu x24, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd6b5f9fceaa7e5fb # initialize rs1
li x20, 0xae2ad266766594ea # initialize rs2
remu x2, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbd65c893e8a426da # initialize rs1
li x9, 0x7da8ceeab57365d3 # initialize rs2
remu x12, x5, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5675f654bcfdfb38 # initialize rs1
li x8, 0x0b167cd0c90eb555 # initialize rs2
remu x20, x6, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb4aeca4f8addee15 # initialize rs1
li x19, 0xb4f3b044f31a7164 # initialize rs2
remu x26, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x3283bd3ed7ad3a3e # initialize rs1
li x29, 0xbcf01430b3f707d0 # initialize rs2
remu x18, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x67f09aebdef9745a # initialize rs1
li x12, 0x8ddc2cd4179c2e3e # initialize rs2
remu x3, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb1578e4a300bcc9f # initialize rs1
li x3, 0x9e07187fb7253b83 # initialize rs2
remu x8, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x31e2117a3fdbaec7 # initialize rs1
li x24, 0x5a4d456e64715c77 # initialize rs2
remu x16, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xdc2c780666f0c57a # initialize rs1
li x26, 0x692f599c76af1f40 # initialize rs2
remu x8, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x778b77168293d6ef # initialize rs1
li x19, 0x743088fc908123e1 # initialize rs2
remu x26, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x00cf0054f04adf38 # initialize rs1
li x6, 0xa1101e70a222f546 # initialize rs2
remu x25, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x8d4586c6cfd6aa0d # initialize rs1
li x22, 0x9501c4aaedeaf8fb # initialize rs2
remu x18, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x3c27d1978b595275 # initialize rs1
li x28, 0xa5f920c7dfac8e55 # initialize rs2
remu x5, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8ddd4a9c6216fd29 # initialize rs1
li x6, 0xe76c3245c3f7a15e # initialize rs2
remu x20, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xd3989d93932000ed # initialize rs1
li x5, 0x6e1301b8fa0b8557 # initialize rs2
remu x19, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x6d153c40cc272de9 # initialize rs1
li x24, 0xe25c6ff32e29e126 # initialize rs2
remu x15, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xb37f51082c0ac96c # initialize rs1
li x10, 0xdbda42cd849bb875 # initialize rs2
remu x1, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x30ef4bedd801c51e # initialize rs1
li x18, 0xf676c81bee9f3c0a # initialize rs2
remu x26, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x52ad87e602250a0a # initialize rs1
li x30, 0x219df6bb5c70bc25 # initialize rs2
remu x27, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xd83a131f3e15ca5f # initialize rs1
li x20, 0xd574ae76284480d8 # initialize rs2
remu x10, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xeca9f6a496fc50ae # initialize rs1
li x7, 0xe6b8e06873eb0022 # initialize rs2
remu x26, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xe62ffde552daad97 # initialize rs1
li x16, 0x8cdfd5c86e767200 # initialize rs2
remu x7, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xf37aac5e39c2db53 # initialize rs1
li x25, 0xd54cbd1d813c387b # initialize rs2
remu x31, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x539e74fdc0030d9d # initialize rs1
li x15, 0xa68fc8c656052a4d # initialize rs2
remu x30, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xea4bc2c77b27fc87 # initialize rs1
li x23, 0x3b1d966ffde28fef # initialize rs2
remu x30, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x7fd8011ed999088d # initialize rs1
li x5, 0x413623e040f51117 # initialize rs2
remu x20, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xfbc45270db976667 # initialize rs1
li x15, 0x03fdeae4fb5db6d8 # initialize rs2
remu x9, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x9b360ddd7bc5b389 # initialize rs1
li x17, 0x0a68c6ab9a5d19f5 # initialize rs2
remu x3, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x23, 0xf195b2ba79e97598 # initialize rs1
li x0, 0x55e3be5868e8384f # initialize rs2
remu x3, x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x29, 0xe783e9f3c113090b # initialize rs1
li x1, 0x7e47d2f810b09e34 # initialize rs2
remu x18, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x9, 0xedb660c3e20b918b # initialize rs1
li x2, 0xcd2161c7d010d00a # initialize rs2
remu x14, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x20, 0x1312b5db6f8c8340 # initialize rs1
li x3, 0x2752bf595c23bbb1 # initialize rs2
remu x30, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0xf0b61d8a9cced771 # initialize rs1
li x4, 0x636dc812f9dc9326 # initialize rs2
remu x17, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0x084980640fb1eb25 # initialize rs1
li x5, 0xc2343d1c7b002eed # initialize rs2
remu x23, x24, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0xb40e70391c1026ff # initialize rs1
li x6, 0x4f5c2749c8942923 # initialize rs2
remu x2, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x833a423dc0ac4054 # initialize rs1
li x7, 0xadbd203c9c9f2213 # initialize rs2
remu x4, x16, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x31, 0xe9e28b9e1eca9cfc # initialize rs1
li x8, 0x6ce7efed41ab5eea # initialize rs2
remu x2, x31, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x18, 0xc8701620e2a2a480 # initialize rs1
li x9, 0x428fa60620c6e237 # initialize rs2
remu x13, x18, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x12, 0x2392f006927d121d # initialize rs1
li x10, 0xb7ba86333b8d7297 # initialize rs2
remu x25, x12, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0x64cbc694656fefc2 # initialize rs1
li x11, 0x2fb8813aa8f92cbd # initialize rs2
remu x18, x23, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x13, 0x9af8cb886396f20f # initialize rs1
li x12, 0xdc5575d217b2daf2 # initialize rs2
remu x22, x13, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x15, 0x0258cff4c483c64b # initialize rs1
li x13, 0x3768a0146964a01e # initialize rs2
remu x8, x15, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x19, 0xdac749a044474494 # initialize rs1
li x14, 0x79956c8b8eeb5616 # initialize rs2
remu x21, x19, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x25, 0xee94f90f1b1cd62e # initialize rs1
li x15, 0x4f17d0f1daa192ed # initialize rs2
remu x12, x25, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x3, 0xcbc873fee760bf99 # initialize rs1
li x16, 0x262e7b36b377adb2 # initialize rs2
remu x6, x3, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x24, 0xe1f9f88cf909ae1e # initialize rs1
li x17, 0x450ab197f79fd1d3 # initialize rs2
remu x13, x24, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x14, 0x24ad5688527c3bae # initialize rs1
li x18, 0x3bef25365b940511 # initialize rs2
remu x16, x14, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x21, 0xa255fa415667dd4d # initialize rs1
li x19, 0xdafad9111a8de157 # initialize rs2
remu x11, x21, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x26, 0x98ffb7d274e374ba # initialize rs1
li x20, 0xebcb0985de1911b6 # initialize rs2
remu x7, x26, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x22, 0x4e4c3fc3503a9c3d # initialize rs1
li x21, 0xf754973ed829fdb7 # initialize rs2
remu x20, x22, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x3, 0xeb1a5179a0618482 # initialize rs1
li x22, 0x949ce5cd1cdcb3d4 # initialize rs2
remu x20, x3, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x25, 0xb2d1b86d7c42d90c # initialize rs1
li x23, 0xcc5a3d1a46d0f7d3 # initialize rs2
remu x21, x25, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x16, 0x2d7f67a2b3ed5200 # initialize rs1
li x24, 0x6cb841a3adc32a75 # initialize rs2
remu x25, x16, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x19, 0x752a6d0682e5ffef # initialize rs1
li x25, 0xe5f0b2cacd7bfdd8 # initialize rs2
remu x1, x19, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x19, 0x46b0e86ac29f617b # initialize rs1
li x26, 0xeb7de4a81bc74864 # initialize rs2
remu x7, x19, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x8, 0x314a72c585d1dafe # initialize rs1
li x27, 0x8d90949f6945cce1 # initialize rs2
remu x3, x8, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x1, 0x8ec3c37c4b3147b4 # initialize rs1
li x28, 0x969236d69cf607ce # initialize rs2
remu x16, x1, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x3, 0xc6b642999d099822 # initialize rs1
li x29, 0x683f794e2f56d7e1 # initialize rs2
remu x13, x3, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x13, 0x59728d8838b12351 # initialize rs1
li x30, 0xf42debf82886524e # initialize rs2
remu x27, x13, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x27, 0xea9e38f5fa1591f9 # initialize rs1
li x31, 0xb53bee6358ed6746 # initialize rs2
remu x11, x27, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 504)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0xba5fe3b898b2dea1 # initialize rs1
li x10, 0xe073180311e9bddb # initialize rs2
remu x0, x14, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x31, 0x679ea7f4a64780e5 # initialize rs1
li x30, 0x8ab52e4ea7822ff1 # initialize rs2
remu x1, x31, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x9, 0x577ed8438b2a4076 # initialize rs1
li x4, 0xd96e1fdf6779749a # initialize rs2
remu x2, x9, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x18, 0xb2489481631acef8 # initialize rs1
li x8, 0x27f454c1973dff30 # initialize rs2
remu x3, x18, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
li x27, 0x5cc6672630b1f600 # initialize rs1
li x16, 0xc6751407e8a42c1b # initialize rs2
remu x4, x27, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x26c0a5bccd51e1a5 # initialize rs1
li x25, 0xa5c927f1f1b80e37 # initialize rs2
remu x5, x1, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0x64e3fbf2f562e8c9 # initialize rs1
li x11, 0x83ffad7c6d367323 # initialize rs2
remu x6, x12, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x4622581ed3d44f26 # initialize rs1
li x22, 0x3ca53bab09999458 # initialize rs2
remu x7, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x12, 0x5dd044ffc3d78ad6 # initialize rs1
li x16, 0x207e3387839e628f # initialize rs2
remu x8, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x21, 0x878b143ef7bda3c7 # initialize rs1
li x16, 0xe55870eac95100de # initialize rs2
remu x9, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0x26c3d2db62976582 # initialize rs1
li x13, 0xf6565cae96dd4e41 # initialize rs2
remu x10, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x25, 0x0752ec03677e40ef # initialize rs1
li x29, 0x9eb45fb2f1552a60 # initialize rs2
remu x11, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x7, 0xe9f3f64c0a7b135d # initialize rs1
li x17, 0x6ba6cd16e2873e52 # initialize rs2
remu x12, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x17, 0xde0f41e1c08b6466 # initialize rs1
li x14, 0xad68e20df30985d2 # initialize rs2
remu x13, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xab184e5add6fbc69 # initialize rs1
li x24, 0x703a0bf6a72caacb # initialize rs2
remu x14, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x5, 0x0a1699464e67d2c3 # initialize rs1
li x18, 0x4cf3fbbd778dac58 # initialize rs2
remu x15, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0xc820ed5034ab64fc # initialize rs1
li x25, 0x9bbe2579b5a1d6dd # initialize rs2
remu x16, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x6, 0xb035677ee25782da # initialize rs1
li x22, 0x78b789b583a93a50 # initialize rs2
remu x17, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x7, 0xb17b34b1714d0d8d # initialize rs1
li x18, 0xeb05f3b5e30c8a2c # initialize rs2
remu x18, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x27, 0x5168b5ab4d5cf4d9 # initialize rs1
li x16, 0x3378af11080b0ba5 # initialize rs2
remu x19, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x6, 0x2a41f24ac300aa02 # initialize rs1
li x15, 0x7010dde012a9cb62 # initialize rs2
remu x20, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x22, 0xd1c463d2cd290880 # initialize rs1
li x9, 0x614c2a54e0cf1473 # initialize rs2
remu x21, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0x39a99849817824ab # initialize rs1
li x8, 0x6ade92b6eefbd23d # initialize rs2
remu x22, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x3, 0x72a50971e22efe7d # initialize rs1
li x30, 0x588d43d86f980ee2 # initialize rs2
remu x23, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x15, 0xab6360c4cef96ac9 # initialize rs1
li x3, 0xdfc0430ea3a433f1 # initialize rs2
remu x24, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x8, 0xc7c13acc99a1ab4b # initialize rs1
li x31, 0x734065ac780db971 # initialize rs2
remu x25, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x30, 0x9e82e57ecd10e18d # initialize rs1
li x3, 0x1002e89ab16048ba # initialize rs2
remu x26, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x17, 0x42d93f2665bd9b68 # initialize rs1
li x31, 0x31a8b578ddfa523e # initialize rs2
remu x27, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x16, 0xf1902b3764a289a6 # initialize rs1
li x15, 0x1b58353c259faa04 # initialize rs2
remu x28, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x26, 0xd788bba7cdad8da0 # initialize rs1
li x11, 0x1588cabe19eedfff # initialize rs2
remu x29, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x5, 0x3923887287d3317a # initialize rs1
li x7, 0x11a83c7eed2eff4f # initialize rs2
remu x30, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x27, 0xaf020250d560866d # initialize rs1
li x14, 0x4184433496476141 # initialize rs2
remu x31, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x0000000000000000 # initialize rs1
li x7, 0xc03dacc6cfc91461 # initialize rs2
remu x12, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x9, 0x0000000000000001 # initialize rs1
li x15, 0xf7adbf057a1e746b # initialize rs2
remu x21, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x0000000000000002 # initialize rs1
li x21, 0x8a17bfbc093a317c # initialize rs2
remu x23, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x15, 0x8000000000000000 # initialize rs1
li x2, 0xec968d4cc7572262 # initialize rs2
remu x21, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rs1
li x18, 0x4af2bd5a0039d08a # initialize rs2
remu x22, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
li x16, 0x718a456f598f2fdc # initialize rs2
remu x15, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
li x14, 0xbbbce79b926e2474 # initialize rs2
remu x2, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x19, 0x33711cbccdda0cdc # initialize rs2
remu x1, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x20, 0xfffffffffffffffe # initialize rs1
li x3, 0x656371de435f8a37 # initialize rs2
remu x1, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0xd177b982102cb4dd # initialize rs2
remu x3, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xe81900954c807d5f # initialize rs2
remu x11, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x27, 0x5555555555555555 # initialize rs1
li x16, 0x077c98a76dbb1777 # initialize rs2
remu x26, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0x00000000ffffffff # initialize rs1
li x31, 0xe678997a82e75594 # initialize rs2
remu x1, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x20, 0x00000000fffffffe # initialize rs1
li x14, 0xebbb4d8d3372216c # initialize rs2
remu x26, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x9, 0x0000000100000000 # initialize rs1
li x27, 0xce750de32c54e82a # initialize rs2
remu x17, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0x0000000100000001 # initialize rs1
li x16, 0x1fd60bd209cef966 # initialize rs2
remu x1, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x6, 0x3e32010e517c103e # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
remu x7, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x28, 0xc02817f12c53e8c3 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
remu x8, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x1, 0x585765b8c66a476c # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
remu x30, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x17, 0xc797621a61f1f40a # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
remu x3, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x10, 0xab58958ea4582ebb # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
remu x17, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x24, 0xa079e31fe75860de # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
remu x16, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x16, 0xa10a1ca888f155cc # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
remu x25, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x25, 0xadcdef93a8fa3963 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
remu x21, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x31, 0x116f793db259738d # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
remu x11, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x20, 0x285b97aa92c35650 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
remu x15, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0x4d0fc67564012738 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x29, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x22, 0x359964d54aeaf097 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
remu x13, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x12, 0xcf7214c423622eeb # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
remu x3, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0x0ed196a6c0846254 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
remu x24, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x6, 0xda6879078a39d914 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
remu x7, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x10, 0x3bed031bd500f12f # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
remu x20, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
remu x9, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x2, 0x0000000000000000 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
remu x28, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x3, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
remu x10, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x21, 0x0000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
remu x15, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x27, 0x0000000000000000 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
remu x2, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
remu x22, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000000000000 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
remu x3, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x20, 0x0000000000000000 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
remu x21, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x12, 0x0000000000000000 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
remu x24, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x19, 0x0000000000000000 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
remu x25, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000000000000 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x30, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x17, 0x0000000000000000 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
remu x29, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x31, 0x0000000000000000 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
remu x27, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x12, 0x0000000000000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
remu x21, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x12, 0x0000000000000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
remu x23, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x17, 0x0000000000000000 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
remu x23, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x1, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
remu x8, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x25, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
remu x21, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x8, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
remu x25, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x6, 0x0000000000000001 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
remu x31, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x22, 0x0000000000000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
remu x25, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x9, 0x0000000000000001 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
remu x5, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x14, 0x0000000000000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
remu x3, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x1, 0x0000000000000001 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
remu x29, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x17, 0x0000000000000001 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
remu x19, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x20, 0x0000000000000001 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
remu x30, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000000000001 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x17, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x26, 0x0000000000000001 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
remu x8, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x11, 0x0000000000000001 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
remu x13, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x2, 0x0000000000000001 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
remu x26, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x21, 0x0000000000000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
remu x15, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x13, 0x0000000000000001 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
remu x2, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x28, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
remu x18, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x10, 0x0000000000000002 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
remu x2, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x31, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
remu x15, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x6, 0x0000000000000002 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
remu x14, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x9, 0x0000000000000002 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
remu x8, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x17, 0x0000000000000002 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
remu x12, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x17, 0x0000000000000002 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
remu x29, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000002 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
remu x24, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x10, 0x0000000000000002 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
remu x1, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000000000002 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
remu x16, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x0000000000000002 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x19, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x22, 0x0000000000000002 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
remu x27, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x20, 0x0000000000000002 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
remu x13, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x27, 0x0000000000000002 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
remu x20, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x23, 0x0000000000000002 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
remu x28, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x29, 0x0000000000000002 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
remu x14, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x9, 0x8000000000000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
remu x7, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x8, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
remu x17, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x31, 0x8000000000000000 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
remu x9, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x3, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
remu x11, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x9, 0x8000000000000000 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
remu x1, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x6, 0x8000000000000000 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
remu x12, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x6, 0x8000000000000000 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
remu x9, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x11, 0x8000000000000000 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
remu x3, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x14, 0x8000000000000000 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
remu x10, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x23, 0x8000000000000000 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
remu x20, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x8000000000000000 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x22, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x14, 0x8000000000000000 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
remu x3, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x14, 0x8000000000000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
remu x21, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x21, 0x8000000000000000 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
remu x2, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x2, 0x8000000000000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
remu x8, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x15, 0x8000000000000000 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
remu x17, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x10, 0x8000000000000001 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
remu x13, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x14, 0x8000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
remu x17, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x14, 0x8000000000000001 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
remu x21, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x5, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
remu x27, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
remu x28, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x20, 0x8000000000000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
remu x25, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x10, 0x8000000000000001 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
remu x31, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x8, 0x8000000000000001 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
remu x5, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x25, 0x8000000000000001 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
remu x16, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x19, 0x8000000000000001 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
remu x6, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x8000000000000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x3, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x18, 0x8000000000000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
remu x13, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x3, 0x8000000000000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
remu x27, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x9, 0x8000000000000001 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
remu x2, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x29, 0x8000000000000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
remu x18, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x7, 0x8000000000000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
remu x23, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x1, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
remu x8, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x17, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
remu x3, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x16, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
remu x2, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x11, 0x7fffffffffffffff # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
remu x19, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x23, 0x7fffffffffffffff # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
remu x9, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
remu x18, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x21, 0x7fffffffffffffff # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
remu x30, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x14, 0x7fffffffffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
remu x12, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x3, 0x7fffffffffffffff # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
remu x15, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x15, 0x7fffffffffffffff # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
remu x10, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x7fffffffffffffff # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x12, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x6, 0x7fffffffffffffff # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
remu x29, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
remu x27, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x8, 0x7fffffffffffffff # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
remu x12, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x29, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
remu x20, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x30, 0x7fffffffffffffff # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
remu x10, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x27, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
remu x23, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x25, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
remu x12, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x27, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
remu x11, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x14, 0x7ffffffffffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
remu x26, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x23, 0x7ffffffffffffffe # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
remu x7, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x11, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
remu x10, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
remu x17, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x21, 0x7ffffffffffffffe # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
remu x30, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x23, 0x7ffffffffffffffe # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
remu x7, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x22, 0x7ffffffffffffffe # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
remu x27, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x7ffffffffffffffe # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x5, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x8, 0x7ffffffffffffffe # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
remu x9, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x16, 0x7ffffffffffffffe # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
remu x27, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x2, 0x7ffffffffffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
remu x19, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x5, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
remu x2, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x5, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
remu x8, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x30, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
remu x22, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x19, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
remu x22, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x30, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
remu x12, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x25, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
remu x7, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x16, 0xffffffffffffffff # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
remu x22, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
remu x11, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x22, 0xffffffffffffffff # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
remu x3, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
remu x6, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x2, 0xffffffffffffffff # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
remu x19, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x18, 0xffffffffffffffff # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
remu x14, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xffffffffffffffff # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x1, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x27, 0xffffffffffffffff # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
remu x24, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x27, 0xffffffffffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
remu x16, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x12, 0xffffffffffffffff # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
remu x28, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x12, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
remu x7, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x3, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
remu x5, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x18, 0xfffffffffffffffe # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
remu x11, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x13, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
remu x18, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x14, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
remu x26, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x24, 0xfffffffffffffffe # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
remu x13, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x21, 0xfffffffffffffffe # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
remu x14, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x26, 0xfffffffffffffffe # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
remu x21, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
remu x1, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0xfffffffffffffffe # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
remu x13, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
remu x20, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x12, 0xfffffffffffffffe # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
remu x3, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xfffffffffffffffe # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x14, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x15, 0xfffffffffffffffe # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
remu x10, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x2, 0xfffffffffffffffe # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
remu x7, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x24, 0xfffffffffffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
remu x23, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x15, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
remu x19, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x19, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
remu x23, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
remu x22, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
remu x24, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
remu x22, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
remu x13, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
remu x13, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
remu x24, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
remu x19, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
remu x10, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
remu x3, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
remu x10, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x12, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
remu x22, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
remu x28, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
remu x30, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
remu x21, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
remu x18, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
remu x11, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
remu x18, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
remu x30, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
remu x11, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
remu x6, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
remu x7, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
remu x13, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
remu x9, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
remu x20, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
remu x31, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x1, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
remu x15, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
remu x14, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
remu x22, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
remu x22, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
remu x23, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x6, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
remu x5, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x12, 0x5555555555555555 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
remu x21, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x18, 0x5555555555555555 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
remu x25, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x13, 0x5555555555555555 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
remu x26, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x18, 0x5555555555555555 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
remu x15, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x17, 0x5555555555555555 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
remu x1, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x22, 0x5555555555555555 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
remu x16, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x1, 0x5555555555555555 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
remu x16, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x22, 0x5555555555555555 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
remu x3, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x5, 0x5555555555555555 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
remu x15, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x5555555555555555 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x17, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x27, 0x5555555555555555 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
remu x13, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x30, 0x5555555555555555 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
remu x28, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x24, 0x5555555555555555 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
remu x26, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x15, 0x5555555555555555 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
remu x17, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x21, 0x5555555555555555 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
remu x29, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x29, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
remu x22, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x24, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
remu x20, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x2, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
remu x14, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x2, 0x00000000ffffffff # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
remu x29, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x10, 0x00000000ffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
remu x9, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x24, 0x00000000ffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
remu x14, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x3, 0x00000000ffffffff # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
remu x22, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x2, 0x00000000ffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
remu x25, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
remu x19, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x28, 0x00000000ffffffff # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
remu x27, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x00000000ffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x3, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x2, 0x00000000ffffffff # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
remu x11, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
remu x27, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x19, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
remu x21, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x25, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
remu x6, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x9, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
remu x31, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x24, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
remu x23, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x17, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
remu x2, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x23, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
remu x25, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x17, 0x00000000fffffffe # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
remu x15, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x30, 0x00000000fffffffe # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
remu x20, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x28, 0x00000000fffffffe # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
remu x13, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
remu x24, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x28, 0x00000000fffffffe # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
remu x9, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
remu x9, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x16, 0x00000000fffffffe # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
remu x24, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x00000000fffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x10, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x10, 0x00000000fffffffe # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
remu x31, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x29, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
remu x17, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x28, 0x00000000fffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
remu x29, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x8, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
remu x7, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x17, 0x00000000fffffffe # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
remu x30, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x5, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
remu x20, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x25, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
remu x10, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x26, 0x0000000100000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
remu x7, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x15, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
remu x17, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x26, 0x0000000100000000 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
remu x13, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000100000000 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
remu x10, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x19, 0x0000000100000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
remu x10, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x15, 0x0000000100000000 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
remu x18, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000100000000 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
remu x1, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000100000000 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
remu x21, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x0000000100000000 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x29, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x17, 0x0000000100000000 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
remu x25, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
remu x24, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x13, 0x0000000100000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
remu x5, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x8, 0x0000000100000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
remu x2, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x3, 0x0000000100000000 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
remu x11, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x6, 0x0000000100000001 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
remu x13, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x27, 0x0000000100000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
remu x30, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x20, 0x0000000100000001 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
remu x30, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x20, 0x0000000100000001 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
remu x2, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x30, 0x0000000100000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
remu x22, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x6, 0x0000000100000001 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
remu x5, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000100000001 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
remu x28, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x12, 0x0000000100000001 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
remu x7, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x28, 0x0000000100000001 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
remu x11, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x26, 0x0000000100000001 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
remu x28, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0000000100000001 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x21, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x7, 0x0000000100000001 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
remu x30, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x16, 0x0000000100000001 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
remu x27, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x9, 0x0000000100000001 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
remu x6, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x11, 0x0000000100000001 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
remu x17, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x30, 0x0000000100000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
remu x27, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x1e70d7d3e5ef2fb8 # initialize rs1
li x0, 0xfdf2ff6550422722 # initialize rs2
remu x13, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x7fddd449afe2bbd2 # initialize rs1
li x1, 0xf5949aa4ac320327 # initialize rs2
remu x25, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x20d18324550d04c6 # initialize rs1
li x2, 0xd15ade45b1169851 # initialize rs2
remu x5, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x9530af0b88fe09d9 # initialize rs1
li x3, 0x50bdbc27b0e6a9b3 # initialize rs2
remu x23, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9a81f5f62c3f3c57 # initialize rs1
li x4, 0x622f7a2fda71e780 # initialize rs2
remu x24, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x99e908d33d91063d # initialize rs1
li x5, 0xa9ec17efc45bfe7b # initialize rs2
remu x30, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x572fa7dacb269636 # initialize rs1
li x6, 0xb43f4e15468736f6 # initialize rs2
remu x26, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x873d7a9a5fc3de7d # initialize rs1
li x7, 0xb0679c150cd1f61d # initialize rs2
remu x24, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xe07ce862ccc7c3a3 # initialize rs1
li x8, 0x108b180699d0b60e # initialize rs2
remu x13, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe2509bcef4fb8dbe # initialize rs1
li x9, 0xb51cc2fa931261eb # initialize rs2
remu x25, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x17a224e89f180223 # initialize rs1
li x10, 0xd50c2b38d9d5baf7 # initialize rs2
remu x7, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xf173e9deb37fa2ea # initialize rs1
li x11, 0x93386e9d76d9be3e # initialize rs2
remu x17, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x8250cec4e869218e # initialize rs1
li x12, 0x3311e37e72a4bfc5 # initialize rs2
remu x10, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xe7513363dd6b572b # initialize rs1
li x13, 0x541bb453caaf9f34 # initialize rs2
remu x6, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x88bf669498367bba # initialize rs1
li x14, 0x7a9d6b884af020f9 # initialize rs2
remu x13, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x48c36cf142c965a1 # initialize rs1
li x15, 0x3d07678a5be2249f # initialize rs2
remu x29, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x193fe17c28aa67a3 # initialize rs1
li x16, 0x7f1fc7cc5eeb949a # initialize rs2
remu x12, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x360f52c67e0813d8 # initialize rs1
li x17, 0x0a75667cfcf52c27 # initialize rs2
remu x21, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x2e1a9ea22c4eb699 # initialize rs1
li x18, 0x78c28293d90ac767 # initialize rs2
remu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xbc1a6a22e2b029e8 # initialize rs1
li x19, 0x536a3643e7114ee0 # initialize rs2
remu x11, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x6ecc894d2cd87e77 # initialize rs1
li x20, 0x5ceaa2b0df8eb938 # initialize rs2
remu x10, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xc5ebda9ce5b10474 # initialize rs1
li x21, 0x35131c9f1974e492 # initialize rs2
remu x5, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x2db49c753b1804c2 # initialize rs1
li x22, 0x6e81694533d551a2 # initialize rs2
remu x21, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x89fcce7fcd3c31d6 # initialize rs1
li x23, 0x55bb98bf3cc371a0 # initialize rs2
remu x15, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x753e7397836cad1c # initialize rs1
li x24, 0xb6bea95ce0c271b9 # initialize rs2
remu x13, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xd60cda7ffb4e2993 # initialize rs1
li x25, 0x137275a07f44b51d # initialize rs2
remu x28, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xeb1845eadfb4db3c # initialize rs1
li x26, 0x2cf551614a870ee6 # initialize rs2
remu x25, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x71b1b746aba326aa # initialize rs1
li x27, 0x4236b58698a7c699 # initialize rs2
remu x21, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x113b0bef80bdb0c1 # initialize rs1
li x28, 0x0ccb19140280f17b # initialize rs2
remu x15, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x539cf62cc044d300 # initialize rs1
li x29, 0xc89c3c4e6be43034 # initialize rs2
remu x7, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xb4c96f7db49dc48f # initialize rs1
li x30, 0x11b766817624b22d # initialize rs2
remu x13, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xade1488ac8fecaee # initialize rs1
li x31, 0xd3ec476d2902e58c # initialize rs2
remu x24, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf7ffb539ae146c1c # initialize rs1
li x29, 0xadd6d9c0fe3820ce # initialize rs2
remu x0, x0, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x221c6f034f6d38e5 # initialize rs1
li x24, 0x2c8baa4244355d50 # initialize rs2
remu x1, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xccee204b759a3055 # initialize rs1
li x27, 0x4f5551c23dcccb86 # initialize rs2
remu x2, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x1e2474055a42eac5 # initialize rs1
li x25, 0xfed35ed00fb86e1c # initialize rs2
remu x3, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2c959dc6f8dd86c7 # initialize rs1
li x12, 0x1cfc1a952d6c6a41 # initialize rs2
remu x4, x4, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8410ab2659c71548 # initialize rs1
li x16, 0x8db7d208a9f966a3 # initialize rs2
remu x5, x5, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd4c7bc0ff5e006ba # initialize rs1
li x10, 0x11afda2e9321aa29 # initialize rs2
remu x6, x6, x10 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf3e0677d053c9c80 # initialize rs1
li x22, 0xb4d02cbab0050239 # initialize rs2
remu x7, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x1acf761c5790e000 # initialize rs1
li x15, 0x1d3654995fbaba64 # initialize rs2
remu x8, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x6a96da304cb21c1f # initialize rs1
li x3, 0x8c7d998da1b77ce7 # initialize rs2
remu x9, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xa5e4657784c92ab8 # initialize rs1
li x20, 0x37159be2e45b05f5 # initialize rs2
remu x10, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x17610fe6be50ec3a # initialize rs1
li x15, 0xaa7bd7a6e39c8160 # initialize rs2
remu x11, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xc97851f098f85ad1 # initialize rs1
li x30, 0x067783743bf7d0da # initialize rs2
remu x12, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x99b0b462ec71fd1f # initialize rs1
li x26, 0x4dbed69d57a58c71 # initialize rs2
remu x13, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc981e151d424df65 # initialize rs1
li x26, 0x407b8d58c17884de # initialize rs2
remu x14, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xe03d47a483f7aac4 # initialize rs1
li x5, 0xdaeef5501b64cd01 # initialize rs2
remu x15, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xe225fc8bd83b2033 # initialize rs1
li x17, 0x4eadb1e9776ca258 # initialize rs2
remu x16, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x3307e7d5e0344c09 # initialize rs1
li x1, 0xd9ce4abf25e0973d # initialize rs2
remu x17, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x18395940592f6405 # initialize rs1
li x17, 0x8e1c67519150f300 # initialize rs2
remu x18, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x14b66a8e928656a8 # initialize rs1
li x26, 0xb8cd05c270ebfadd # initialize rs2
remu x19, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x706a7bf391800302 # initialize rs1
li x24, 0xbc547cadbc288193 # initialize rs2
remu x20, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd2d6dfaa12b28c60 # initialize rs1
li x1, 0x67ce5e07096a2829 # initialize rs2
remu x21, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x45f153f6b0420cac # initialize rs1
li x30, 0xe852580fd5a1ef58 # initialize rs2
remu x22, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x0b6a3898cb24e5ec # initialize rs1
li x29, 0xde0a8dc8377a441e # initialize rs2
remu x23, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd2bb8ab328ba79c8 # initialize rs1
li x2, 0x30b9b9b23372ab68 # initialize rs2
remu x24, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x9181fa164ee2cf3d # initialize rs1
li x24, 0x0de06318edf121fe # initialize rs2
remu x25, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x1428124cab58ae4c # initialize rs1
li x3, 0x65e316a4f3d451dd # initialize rs2
remu x26, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xca91d65d3e4de0d8 # initialize rs1
li x26, 0x4218bdf52fa03a6d # initialize rs2
remu x27, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x612d9eb7d7c20f79 # initialize rs1
li x21, 0x5987242deb746aa6 # initialize rs2
remu x28, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xb73849d4644b3d8f # initialize rs1
li x11, 0x2e2ceedafdb4796d # initialize rs2
remu x29, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xeb459ea1bf4d076b # initialize rs1
li x24, 0x6297ef75b9e16c7f # initialize rs2
remu x30, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xf6c51be09e7cbde5 # initialize rs1
li x20, 0x61289dfa4799c7bb # initialize rs2
remu x31, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x30, 0x181e4a5e25c228c4 # initialize rs1
li x0, 0x8909a11ba21bb561 # initialize rs2
remu x0, x30, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x30, 0x74d702659671303a # initialize rs1
li x1, 0x9faf90e34fa01162 # initialize rs2
remu x1, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x27, 0x474e56bd780cb984 # initialize rs1
li x2, 0x3556df125e7bb3ce # initialize rs2
remu x2, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x27, 0xbdf947ad90931a67 # initialize rs1
li x3, 0x62b341bebeba759c # initialize rs2
remu x3, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x26, 0x985c5c38ea4bb85e # initialize rs1
li x4, 0xd34191acdc086db8 # initialize rs2
remu x4, x26, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0x3994477efaba9061 # initialize rs1
li x5, 0xde8048bc00da2b21 # initialize rs2
remu x5, x24, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0xd92b575f3f47cbea # initialize rs1
li x6, 0x1f711aa14152d212 # initialize rs2
remu x6, x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0x3c1b4bcacc1f7185 # initialize rs1
li x7, 0x385af76db4bb531c # initialize rs2
remu x7, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x25, 0x160878c9ff89f679 # initialize rs1
li x8, 0x364439c6eb02f5c5 # initialize rs2
remu x8, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x10, 0x5d193e95a74df6dd # initialize rs1
li x9, 0x1456bbdfada91a5b # initialize rs2
remu x9, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x14, 0xae26e1fc9a0440c1 # initialize rs1
li x10, 0x37dbc9ca27caabea # initialize rs2
remu x10, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x21, 0x18669932959ca373 # initialize rs1
li x11, 0x5f2be321f9323089 # initialize rs2
remu x11, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x30, 0x412c22222c1e0e27 # initialize rs1
li x12, 0x6d2c8ec5f50b3ebd # initialize rs2
remu x12, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x8, 0xa7e2b00f2e6ebfc5 # initialize rs1
li x13, 0xd65532646cfd79dc # initialize rs2
remu x13, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x16, 0x83b2a59154bcce6b # initialize rs1
li x14, 0x53c07e971d00eadf # initialize rs2
remu x14, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x30, 0x8b1a0bede5e708c9 # initialize rs1
li x15, 0x08ca4eaf33ad58be # initialize rs2
remu x15, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x13, 0x0a72cd71196cc6b0 # initialize rs1
li x16, 0x9a60132ed1b30574 # initialize rs2
remu x16, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x6, 0xb491d4b3964c77c2 # initialize rs1
li x17, 0x27024bf850d08f91 # initialize rs2
remu x17, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x15, 0xdb1d5d88e1cf6754 # initialize rs1
li x18, 0x52713c45e3d5e864 # initialize rs2
remu x18, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x17, 0x011f007b44773a8b # initialize rs1
li x19, 0x026ff02993457ccb # initialize rs2
remu x19, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x25, 0x4c78f79423ae567a # initialize rs1
li x20, 0xdc5752664da27b58 # initialize rs2
remu x20, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x18, 0xcd42deac862bb938 # initialize rs1
li x21, 0x47fe5052633dc766 # initialize rs2
remu x21, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x17, 0x51180c088eb3d105 # initialize rs1
li x22, 0x58696d3af56ab569 # initialize rs2
remu x22, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x8, 0x97d89157db2c65e6 # initialize rs1
li x23, 0x3c5f9cb6099b3e61 # initialize rs2
remu x23, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x15, 0x44955f0b4b64ea0e # initialize rs1
li x24, 0x85420bfb8ddae36f # initialize rs2
remu x24, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x20, 0xdb850e3522d67fb6 # initialize rs1
li x25, 0x7dae273c4c67c202 # initialize rs2
remu x25, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x23, 0x262b5329a5a4e953 # initialize rs1
li x26, 0x5ebb7359f6128ba0 # initialize rs2
remu x26, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x1, 0x1154f6983b1d3ed3 # initialize rs1
li x27, 0xea771cac74a4da4f # initialize rs2
remu x27, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x22, 0x4078e1ce467f3257 # initialize rs1
li x28, 0x3401d4da8cec2300 # initialize rs2
remu x28, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x12, 0x1f0dacb0319dc941 # initialize rs1
li x29, 0x5a282873587c415c # initialize rs2
remu x29, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x3, 0x81524529880416b9 # initialize rs1
li x30, 0x6ad1f9ad5fec5e8a # initialize rs2
remu x30, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x17, 0xd180ae9f6c5d5736 # initialize rs1
li x31, 0x6345161e9bc997cd # initialize rs2
remu x31, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe6e618276cecdaee # initialize rs1
li x0, 0x3b6c26a56960ced4 # initialize rs2
remu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xa1a7ab5ee0ca17d5 # initialize rs1
li x1, 0xe10da2ee512c16a1 # initialize rs2
remu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x8f457ddb80534114 # initialize rs1
li x2, 0x92b0c668691cf89c # initialize rs2
remu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xa4562eefbef4302e # initialize rs1
li x3, 0x8780aa022f13d965 # initialize rs2
remu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x50e28fbc50f0428d # initialize rs1
li x4, 0x3afe20630b00d7fd # initialize rs2
remu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5973fefa89458b8a # initialize rs1
li x5, 0xc025f0a86e6dda01 # initialize rs2
remu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x79ac87a38de7aef0 # initialize rs1
li x6, 0xcf2e5a42acb4acf2 # initialize rs2
remu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfa8dc32ac27aeee4 # initialize rs1
li x7, 0xce259b5771bb8ff1 # initialize rs2
remu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xbe1fc18690bebc28 # initialize rs1
li x8, 0xe7d197d822a8f078 # initialize rs2
remu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x0debebe218653982 # initialize rs1
li x9, 0x1f203ef5b584bc9c # initialize rs2
remu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xd68d9626cd4ddeb9 # initialize rs1
li x10, 0x12d6a2c872dd9988 # initialize rs2
remu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x5600ed395aef84b9 # initialize rs1
li x11, 0x5d8a36bb11ff4ce8 # initialize rs2
remu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xb3b8ed97fb559f77 # initialize rs1
li x12, 0x9eb11ec013372c51 # initialize rs2
remu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xae395aa714f1f75d # initialize rs1
li x13, 0x7fe2736cf3259157 # initialize rs2
remu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x809d284e6d1b127f # initialize rs1
li x14, 0x5979fed9c8e32ff7 # initialize rs2
remu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x1233d0a883f3f324 # initialize rs1
li x15, 0x41ada115fb170c41 # initialize rs2
remu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xc27bba7ad3cf1f8c # initialize rs1
li x16, 0xbc23f0354dc31777 # initialize rs2
remu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x2f0165125ca9a01d # initialize rs1
li x17, 0x894259e7d14ec065 # initialize rs2
remu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x6be08c81880df797 # initialize rs1
li x18, 0x415ebe304dc45a79 # initialize rs2
remu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x5a9d04891bd0caf9 # initialize rs1
li x19, 0x114145bc9e411325 # initialize rs2
remu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x717d01eca091a2c9 # initialize rs1
li x20, 0xe0f8960803211459 # initialize rs2
remu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x91f4aadc8dc669ff # initialize rs1
li x21, 0xcf76046abc557a5e # initialize rs2
remu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x4472dd5b8fcc42e2 # initialize rs1
li x22, 0x056eaebf43274562 # initialize rs2
remu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xe2b7af1d32340585 # initialize rs1
li x23, 0xfca670d076cf6500 # initialize rs2
remu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x0b7ddfb9b8b8777d # initialize rs1
li x24, 0x95a76fab8e522a65 # initialize rs2
remu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x7ce89c61e55b6175 # initialize rs1
li x25, 0x991e9162475bd8f6 # initialize rs2
remu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x8647f74d9c4656ef # initialize rs1
li x26, 0x0228b1298a583abf # initialize rs2
remu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xde72682a709d9e32 # initialize rs1
li x27, 0x7a8cf03fe59ca8fc # initialize rs2
remu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x7511b78a61b0f58c # initialize rs1
li x28, 0x5a32f1b50fdff04a # initialize rs2
remu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xc994a7019bd49bc4 # initialize rs1
li x29, 0xe57edae974e152ff # initialize rs2
remu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xd9da07c439f13b73 # initialize rs1
li x30, 0x2d5db3dd38b97da8 # initialize rs2
remu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x0491103330f76470 # initialize rs1
li x31, 0xb72bd4f80fee7c14 # initialize rs2
remu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x9, x21 # perform first operation
remu x8, x22, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x25, x21 # perform first operation
remu x27, x14, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x31, x7 # perform first operation
remu x5, x12, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x31, x8 # perform first operation
remu x8, x29, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x31, x17 # perform first operation
remu x8, x31, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x11, x26 # perform first operation
remu x11, x31, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x18, x1 # perform first operation
remu x15, x13, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x8, x21 # perform first operation
remu x30, x28, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x7, x6 # perform first operation
remu x19, x12, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x19, x15 # perform first operation
remu x19, x26, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x16, x31 # perform first operation
remu x31, x23, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x8, x3 # perform first operation
remu x15, x27, x23 # perform second (triggering) operation

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
