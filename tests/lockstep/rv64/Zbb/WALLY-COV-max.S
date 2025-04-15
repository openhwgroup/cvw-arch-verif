///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-max.S
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
li x0, 0x028886a6ea8f8fc8 # initialize rs1
li x8, 0x4a1b2ff46b480d98 # initialize rs2
max x11, x0, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xe83773754b3311ef # initialize rs1
li x19, 0x303cbeb793367bc4 # initialize rs2
max x14, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x100f55a6b637a70c # initialize rs1
li x28, 0x8f8a597acf4800f9 # initialize rs2
max x5, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xd51df8b5e7c5455a # initialize rs1
li x25, 0x376842179f6a5879 # initialize rs2
max x19, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x100ba83a4e50286a # initialize rs1
li x29, 0x0294d5caef4abace # initialize rs2
max x25, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x07fe44fc72c07b96 # initialize rs1
li x9, 0xcb3fcfd41d653504 # initialize rs2
max x28, x5, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9245554e46439755 # initialize rs1
li x18, 0xb65419ec271baac9 # initialize rs2
max x3, x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7abf978581ad681c # initialize rs1
li x31, 0xf31880662ec229b4 # initialize rs2
max x10, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf8c46175b1acbfcd # initialize rs1
li x11, 0x074cdc440f5f8222 # initialize rs2
max x18, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x9d425cfeb4f4d550 # initialize rs1
li x13, 0xa2938350cb7d505a # initialize rs2
max x1, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xd64e34d8161a5182 # initialize rs1
li x29, 0xeaae4bc14f5cba56 # initialize rs2
max x20, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x13b2824ba7fa92ea # initialize rs1
li x22, 0x54c647be0c9ce220 # initialize rs2
max x2, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xa8facf445e365821 # initialize rs1
li x2, 0xd2c72624b48e66d5 # initialize rs2
max x7, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb008b66e03bb824a # initialize rs1
li x7, 0x006bd7906dc9fc37 # initialize rs2
max x18, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x448991c87280a617 # initialize rs1
li x9, 0x3c8889e70ac3433b # initialize rs2
max x27, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xa1038e0a52b5a6f0 # initialize rs1
li x12, 0xce56b4ece35db21c # initialize rs2
max x17, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x56437d520bb7d430 # initialize rs1
li x25, 0xd625e9c977672cf8 # initialize rs2
max x5, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x25250412ef5aafe8 # initialize rs1
li x1, 0x1a237dd1b119f2ef # initialize rs2
max x13, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x46a292ca86dc8fdd # initialize rs1
li x17, 0x722fcc13efbeb2aa # initialize rs2
max x22, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x075ea2c752e1656f # initialize rs1
li x31, 0x81226bd7b7e9e76b # initialize rs2
max x21, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xeded8d09420105df # initialize rs1
li x12, 0xfb64c2253e88877c # initialize rs2
max x5, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xa542641cb6e7dc23 # initialize rs1
li x30, 0x1828637b214139f7 # initialize rs2
max x24, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x4913904ebffc2ed0 # initialize rs1
li x8, 0x5eb0d7a39a9ccc21 # initialize rs2
max x30, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xebbe2b8b02e345eb # initialize rs1
li x26, 0x52e3fe36c836dde7 # initialize rs2
max x10, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x351b5ef37cfe7f9a # initialize rs1
li x19, 0xd29213cb9071ab83 # initialize rs2
max x11, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x18e5268fac74cd93 # initialize rs1
li x2, 0xab71835a188077d3 # initialize rs2
max x17, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x8ac03c21c6897073 # initialize rs1
li x7, 0xc85550911da570ca # initialize rs2
max x16, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x215303ef1c7a23a4 # initialize rs1
li x22, 0x41de049e64be1965 # initialize rs2
max x2, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x19f1737e113fd018 # initialize rs1
li x9, 0xa02222b3d1be7074 # initialize rs2
max x25, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x519a3c1644719699 # initialize rs1
li x11, 0xded24178bda1c03d # initialize rs2
max x28, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xffff1bb2e9f65a2c # initialize rs1
li x22, 0xc1b041047893bd71 # initialize rs2
max x29, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xf5c9df9805ebd5c2 # initialize rs1
li x28, 0x3ed4fd1f0f7b8fb4 # initialize rs2
max x30, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x14, 0x25919e0c8ee79406 # initialize rs1
li x0, 0x605efdd1a290cbf1 # initialize rs2
max x29, x14, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x10, 0xaa3800aa270ba498 # initialize rs1
li x1, 0x09183a48e18d9dd4 # initialize rs2
max x23, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x10, 0x7664448d4d95b99b # initialize rs1
li x2, 0x78a9ce6fa049e1ee # initialize rs2
max x7, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x26, 0x45b33b3315ac5451 # initialize rs1
li x3, 0x701c71ca5fb69a56 # initialize rs2
max x18, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0x89148ff51283e92d # initialize rs1
li x4, 0x4697df668801673c # initialize rs2
max x27, x16, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0xf26891db6729be28 # initialize rs1
li x5, 0xcb899356cf76c4e6 # initialize rs2
max x31, x11, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0x5c55c5be93187f20 # initialize rs1
li x6, 0xdb912d2fad0a4bfa # initialize rs2
max x23, x20, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0xfa8ce927eab67d02 # initialize rs1
li x7, 0xbe96f95781889052 # initialize rs2
max x16, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0x28d4636b4d66cc89 # initialize rs1
li x8, 0x66a3ebf5470181bc # initialize rs2
max x13, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x12, 0x32953684e9ed93a9 # initialize rs1
li x9, 0x7b79a2c819f42792 # initialize rs2
max x11, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x18, 0x2ccb06102ac6a010 # initialize rs1
li x10, 0xa28cdb53f1fc04e5 # initialize rs2
max x15, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0x55a8aa3f24eecaeb # initialize rs1
li x11, 0xcb8e6d6b2160874c # initialize rs2
max x29, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x30, 0x9722da74c61e4625 # initialize rs1
li x12, 0xde3a37215e283006 # initialize rs2
max x24, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x1, 0x35fd3415a164cd95 # initialize rs1
li x13, 0xfc526ecefcdc8824 # initialize rs2
max x21, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x9, 0x3acfed1a597b45e7 # initialize rs1
li x14, 0x8d2be4bcb44128ce # initialize rs2
max x11, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x26, 0x4e29eb3921068139 # initialize rs1
li x15, 0xfd083104c5718559 # initialize rs2
max x27, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x3, 0xde3a6ef8aaaf2b95 # initialize rs1
li x16, 0xb5382e4e27d87164 # initialize rs2
max x12, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x19, 0xbc07833863500454 # initialize rs1
li x17, 0x46e943059a11d7fa # initialize rs2
max x13, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x12, 0x237698e124db9999 # initialize rs1
li x18, 0x1cadc5510525513d # initialize rs2
max x10, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x11, 0xfb3e90a5d4411d77 # initialize rs1
li x19, 0xfae60424e7ff1264 # initialize rs2
max x3, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0x7905a9ce02b51bb4 # initialize rs1
li x20, 0x893d97397d731771 # initialize rs2
max x11, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x13, 0x5e613834be79490c # initialize rs1
li x21, 0x576b2b855b369cd7 # initialize rs2
max x2, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x5, 0xa6cf136a458827f9 # initialize rs1
li x22, 0x3caab5cdcea050ec # initialize rs2
max x30, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x13, 0xeb20f2e849195944 # initialize rs1
li x23, 0x645ce441e7d27531 # initialize rs2
max x28, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x22, 0x87f82ae9af9b0ed5 # initialize rs1
li x24, 0x500eabbabcf03cb0 # initialize rs2
max x28, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x17, 0x255f02a2f229053f # initialize rs1
li x25, 0x0871de2b94bd00a1 # initialize rs2
max x5, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x16, 0x7763fad6e54b74b4 # initialize rs1
li x26, 0x5035d03917ae1a64 # initialize rs2
max x13, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x14, 0x71ea1626cd92f8cc # initialize rs1
li x27, 0x95899b05304d542a # initialize rs2
max x1, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x14, 0x8b8986a750477bd7 # initialize rs1
li x28, 0x7a05704c3c664088 # initialize rs2
max x13, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x12, 0x625a1ff8445a61b8 # initialize rs1
li x29, 0xefab851b5e17ae84 # initialize rs2
max x9, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x12, 0x16561f185f38bf1d # initialize rs1
li x30, 0x99d01501b70a095e # initialize rs2
max x23, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x9, 0xfd62d03668fadd47 # initialize rs1
li x31, 0xfa4d7c559f4b1b62 # initialize rs2
max x12, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0x0324015d913185c8 # initialize rs1
li x12, 0x154c8d7b4126db62 # initialize rs2
max x0, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x16, 0x918185533065ef7a # initialize rs1
li x15, 0x0a119f1c9424952b # initialize rs2
max x1, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x15, 0x2d4ad1f759a4c261 # initialize rs1
li x12, 0x0751be879d914fea # initialize rs2
max x2, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x26, 0x58c5ef527a8d0bc3 # initialize rs1
li x7, 0x00f8d6b5b80f98b6 # initialize rs2
max x3, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0xd1cb9c8b09ad6421 # initialize rs1
li x27, 0x36cd89b3f338d6d1 # initialize rs2
max x4, x29, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x3e1640cd1d4a60f4 # initialize rs1
li x30, 0xe249b3331daccd52 # initialize rs2
max x5, x9, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0xab77708c8d5b226b # initialize rs1
li x11, 0x85537baac8240e94 # initialize rs2
max x6, x2, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0x54bdfaf991b4a024 # initialize rs1
li x16, 0x5e645ad3f50b46a7 # initialize rs2
max x7, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x27, 0x67fa6f5ef88cf0ff # initialize rs1
li x8, 0xd73e31d8c12bbaac # initialize rs2
max x8, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x21, 0xb53606faa41d3cb4 # initialize rs1
li x16, 0x352a500a7c8b09d0 # initialize rs2
max x9, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x4881b0680bcc34fa # initialize rs1
li x3, 0x7797ab724c8b6f63 # initialize rs2
max x10, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x16, 0xb21599694e897d8d # initialize rs1
li x31, 0x91b24061728c4c6b # initialize rs2
max x11, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x11, 0x06d70b8bdf4eb79d # initialize rs1
li x27, 0xa37f4d416642dbe8 # initialize rs2
max x12, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x12, 0x829bfe2b71c4aae8 # initialize rs1
li x7, 0x017b26e0e4459512 # initialize rs2
max x13, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x8633e9fafd320789 # initialize rs1
li x24, 0x6d039bc49aa958d5 # initialize rs2
max x14, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x29, 0x3e5daee2a4920b03 # initialize rs1
li x31, 0xb43264e54da8454f # initialize rs2
max x15, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x13, 0x89302ce3dbe8c195 # initialize rs1
li x9, 0x1343fa041baca7b5 # initialize rs2
max x16, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x23, 0x865cb73aafcc22dc # initialize rs1
li x6, 0xf6e9df2c56658786 # initialize rs2
max x17, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x7, 0xa6a5a659861e1619 # initialize rs1
li x30, 0xd010d87a15b3d938 # initialize rs2
max x18, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x2, 0x363654ece5e7af77 # initialize rs1
li x6, 0xbb92fa998b6cfd50 # initialize rs2
max x19, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x6, 0x84e2bf2b65b6a7a1 # initialize rs1
li x22, 0x762c49e2117ad702 # initialize rs2
max x20, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x20, 0x89788a6c71556ab8 # initialize rs1
li x29, 0x29ad72546f7a4614 # initialize rs2
max x21, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x25, 0x7bca234c2b9f73b2 # initialize rs1
li x28, 0x8d7b44080c8a0d7b # initialize rs2
max x22, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0x8d4ef4073d13278d # initialize rs1
li x7, 0x40b56f585928cfa5 # initialize rs2
max x23, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x6, 0x90638a96d96353ae # initialize rs1
li x5, 0xff4822221b06756a # initialize rs2
max x24, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x31, 0x489c5981e9ccb66b # initialize rs1
li x13, 0x739ed976346460ef # initialize rs2
max x25, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x15, 0x7eaae51c8fafd945 # initialize rs1
li x26, 0x7a6af299999a180f # initialize rs2
max x26, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x15, 0x71d39f260df9b5b0 # initialize rs1
li x21, 0xb7c3fdc2be209d9d # initialize rs2
max x27, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x5, 0x4dd69d5ba743a56b # initialize rs1
li x26, 0x3b8df5596c9c379a # initialize rs2
max x28, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x20, 0xde546e2c52d12d3b # initialize rs1
li x23, 0xa3e3e9537a599df1 # initialize rs2
max x29, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x15, 0x8cba1f35e3b6441b # initialize rs1
li x25, 0xd887de51f21291b9 # initialize rs2
max x30, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x27, 0x0873e1b2ea8d8164 # initialize rs1
li x19, 0x325050c11ba8baf8 # initialize rs2
max x31, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x0000000000000000 # initialize rs1
li x5, 0x8afe32bc4f0f4a20 # initialize rs2
max x19, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x0000000000000001 # initialize rs1
li x10, 0x34dd4943beae25a9 # initialize rs2
max x5, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x18, 0x0000000000000002 # initialize rs1
li x23, 0x54d23095bf551ec1 # initialize rs2
max x21, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x1, 0x8000000000000000 # initialize rs1
li x15, 0x33b73a5ef998d8bc # initialize rs2
max x20, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x23, 0x8000000000000001 # initialize rs1
li x12, 0x53ac341495390074 # initialize rs2
max x20, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x10, 0xe0a9d96fc1e26ac4 # initialize rs2
max x30, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x2, 0x7ffffffffffffffe # initialize rs1
li x7, 0xe49fd25249b22e13 # initialize rs2
max x31, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs1
li x8, 0x0a53ea9c2d1f9c28 # initialize rs2
max x20, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x18, 0xdd87d67aad60942e # initialize rs2
max x30, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0xa795160fbe8ae6f5 # initialize rs2
max x16, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x71fad93f39ef21f9 # initialize rs2
max x20, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x25, 0x5555555555555555 # initialize rs1
li x6, 0x1602cb3aaa4340b5 # initialize rs2
max x31, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x6, 0x00000000ffffffff # initialize rs1
li x19, 0x6b1cb48da7cf3fb3 # initialize rs2
max x31, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x31, 0x00000000fffffffe # initialize rs1
li x21, 0xa03445e286c4fb94 # initialize rs2
max x23, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x12, 0x0000000100000000 # initialize rs1
li x21, 0xae147c2d78ca21ff # initialize rs2
max x8, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x20, 0x0000000100000001 # initialize rs1
li x24, 0x8380e7ea14f04f97 # initialize rs2
max x27, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0x7349eb327ab2169a # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
max x25, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0xd6f9af18374604bb # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
max x30, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x17, 0x07b29e65b7c927cd # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
max x23, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x11, 0xf1a125952dc32db0 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
max x15, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x24, 0x785dc1abec5d73a0 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
max x28, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x5, 0xf4335e3e8de44647 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
max x23, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x13, 0x98d19e9949c527d2 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
max x6, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x6, 0x7fd7b655496700b7 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
max x26, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x26, 0xd7cb0da6c2e491c8 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
max x3, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x13, 0x76fe002b22667bce # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
max x18, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0x5918956aaa10caf2 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x18, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x19, 0xe09117bcc2d1db04 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
max x12, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x23, 0xeded998abddfa633 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
max x31, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x16, 0x2fe9a86ca35c5584 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
max x18, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x22, 0x029018da81023aad # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
max x17, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x19, 0x0dab7536c822f0fd # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
max x26, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x13, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
max x10, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x16, 0x0000000000000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
max x26, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x21, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
max x11, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x31, 0x0000000000000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
max x14, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x28, 0x0000000000000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
max x10, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000000000000 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
max x29, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000000000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
max x24, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
max x1, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000000000000 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
max x22, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x27, 0x0000000000000000 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
max x8, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000000000000 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x5, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x6, 0x0000000000000000 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
max x19, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x17, 0x0000000000000000 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
max x20, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x27, 0x0000000000000000 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
max x1, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x27, 0x0000000000000000 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
max x31, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x29, 0x0000000000000000 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
max x5, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x27, 0x0000000000000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
max x26, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x25, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
max x19, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x18, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
max x16, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x31, 0x0000000000000001 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
max x17, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x6, 0x0000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
max x15, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000000000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
max x30, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000000000001 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
max x25, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x1, 0x0000000000000001 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
max x27, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000001 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
max x15, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000000000001 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
max x23, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000000000001 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x7, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x21, 0x0000000000000001 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
max x9, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x18, 0x0000000000000001 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
max x20, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x31, 0x0000000000000001 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
max x5, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x7, 0x0000000000000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
max x12, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x25, 0x0000000000000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
max x6, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x31, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
max x5, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x2, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
max x26, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x28, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
max x18, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x30, 0x0000000000000002 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
max x21, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x27, 0x0000000000000002 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
max x20, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x19, 0x0000000000000002 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
max x11, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000000000002 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
max x12, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x27, 0x0000000000000002 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
max x6, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x10, 0x0000000000000002 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
max x25, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x9, 0x0000000000000002 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
max x11, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000000000002 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x19, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x8, 0x0000000000000002 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
max x24, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x15, 0x0000000000000002 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
max x16, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x8, 0x0000000000000002 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
max x7, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x31, 0x0000000000000002 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
max x13, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x30, 0x0000000000000002 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
max x12, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x21, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
max x19, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x5, 0x8000000000000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
max x9, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x10, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
max x23, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x27, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
max x14, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x7, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
max x16, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x16, 0x8000000000000000 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
max x23, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x18, 0x8000000000000000 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
max x20, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x15, 0x8000000000000000 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
max x24, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x21, 0x8000000000000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
max x3, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x22, 0x8000000000000000 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
max x17, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x8000000000000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x8, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x12, 0x8000000000000000 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
max x6, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x25, 0x8000000000000000 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
max x6, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x26, 0x8000000000000000 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
max x10, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x30, 0x8000000000000000 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
max x8, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x7, 0x8000000000000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
max x22, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x26, 0x8000000000000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
max x24, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x18, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
max x9, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x21, 0x8000000000000001 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
max x31, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x17, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
max x19, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x9, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
max x23, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x14, 0x8000000000000001 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
max x11, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x20, 0x8000000000000001 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
max x2, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x11, 0x8000000000000001 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
max x10, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x31, 0x8000000000000001 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
max x3, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x10, 0x8000000000000001 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
max x14, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x8000000000000001 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x28, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x15, 0x8000000000000001 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
max x30, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x15, 0x8000000000000001 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
max x24, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x31, 0x8000000000000001 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
max x29, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x27, 0x8000000000000001 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
max x1, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x3, 0x8000000000000001 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
max x26, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x30, 0x7fffffffffffffff # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
max x29, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x19, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
max x23, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x30, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
max x12, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x18, 0x7fffffffffffffff # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
max x25, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x21, 0x7fffffffffffffff # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
max x17, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
max x17, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
max x24, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
max x12, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x6, 0x7fffffffffffffff # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
max x3, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x27, 0x7fffffffffffffff # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
max x8, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x7fffffffffffffff # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x24, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x16, 0x7fffffffffffffff # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
max x21, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x2, 0x7fffffffffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
max x12, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x26, 0x7fffffffffffffff # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
max x11, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x13, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
max x22, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x18, 0x7fffffffffffffff # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
max x19, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x7, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
max x29, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x16, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
max x13, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x13, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
max x5, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
max x17, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
max x7, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
max x24, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x31, 0x7ffffffffffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
max x24, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
max x17, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
max x26, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x14, 0x7ffffffffffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
max x24, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x7ffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x16, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x19, 0x7ffffffffffffffe # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
max x26, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
max x18, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x2, 0x7ffffffffffffffe # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
max x13, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x1, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
max x6, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x29, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
max x14, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x29, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
max x1, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x24, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
max x8, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x20, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
max x12, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x24, 0xffffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
max x26, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x8, 0xffffffffffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
max x24, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
max x17, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x1, 0xffffffffffffffff # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
max x2, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x7, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
max x23, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x20, 0xffffffffffffffff # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
max x2, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x11, 0xffffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
max x5, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xffffffffffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x10, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x28, 0xffffffffffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
max x21, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x27, 0xffffffffffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
max x1, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x2, 0xffffffffffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
max x23, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x31, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
max x15, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x6, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
max x21, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x8, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
max x10, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x3, 0xfffffffffffffffe # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
max x23, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x17, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
max x11, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x23, 0xfffffffffffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
max x18, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x28, 0xfffffffffffffffe # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
max x10, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x28, 0xfffffffffffffffe # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
max x10, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x20, 0xfffffffffffffffe # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
max x3, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x31, 0xfffffffffffffffe # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
max x21, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
max x2, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x30, 0xfffffffffffffffe # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
max x17, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0xfffffffffffffffe # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x31, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x24, 0xfffffffffffffffe # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
max x15, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
max x2, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x2, 0xfffffffffffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
max x10, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x23, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
max x20, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x8, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
max x22, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
max x22, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
max x27, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
max x21, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
max x27, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
max x1, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
max x10, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
max x7, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
max x28, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
max x27, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
max x23, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x21, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
max x1, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
max x25, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
max x24, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
max x6, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
max x3, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
max x5, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
max x20, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
max x26, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
max x7, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
max x18, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
max x6, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
max x14, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
max x26, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
max x11, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
max x15, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x8, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
max x3, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
max x11, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
max x1, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
max x9, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
max x10, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x26, 0x5555555555555555 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
max x25, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x30, 0x5555555555555555 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
max x14, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x16, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
max x11, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x19, 0x5555555555555555 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
max x29, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x17, 0x5555555555555555 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
max x6, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x7, 0x5555555555555555 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
max x26, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x17, 0x5555555555555555 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
max x18, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x3, 0x5555555555555555 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
max x18, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x9, 0x5555555555555555 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
max x11, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x23, 0x5555555555555555 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
max x13, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x5555555555555555 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x21, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x14, 0x5555555555555555 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
max x24, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x24, 0x5555555555555555 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
max x7, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x21, 0x5555555555555555 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
max x25, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x5, 0x5555555555555555 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
max x9, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x14, 0x5555555555555555 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
max x5, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x11, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
max x27, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x3, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
max x15, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x16, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
max x19, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x30, 0x00000000ffffffff # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
max x27, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x24, 0x00000000ffffffff # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
max x7, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x29, 0x00000000ffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
max x26, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x18, 0x00000000ffffffff # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
max x9, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
max x22, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
max x17, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x23, 0x00000000ffffffff # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
max x6, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x00000000ffffffff # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x28, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x14, 0x00000000ffffffff # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
max x29, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
max x22, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x10, 0x00000000ffffffff # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
max x14, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x14, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
max x29, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x16, 0x00000000ffffffff # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
max x9, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x10, 0x00000000fffffffe # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
max x13, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x20, 0x00000000fffffffe # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
max x8, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x16, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
max x11, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x30, 0x00000000fffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
max x13, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x22, 0x00000000fffffffe # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
max x9, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x00000000fffffffe # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
max x17, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x15, 0x00000000fffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
max x12, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x12, 0x00000000fffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
max x13, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
max x2, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0x00000000fffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
max x30, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x00000000fffffffe # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x8, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x5, 0x00000000fffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
max x19, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x9, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
max x31, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x19, 0x00000000fffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
max x30, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x13, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
max x14, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x20, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
max x12, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x24, 0x0000000100000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
max x25, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x12, 0x0000000100000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
max x16, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x14, 0x0000000100000000 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
max x27, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x8, 0x0000000100000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
max x14, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x22, 0x0000000100000000 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
max x9, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x10, 0x0000000100000000 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
max x27, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000100000000 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
max x19, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x28, 0x0000000100000000 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
max x15, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000100000000 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
max x20, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000100000000 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
max x5, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000100000000 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x14, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x20, 0x0000000100000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
max x14, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x2, 0x0000000100000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
max x27, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x21, 0x0000000100000000 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
max x1, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x14, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
max x24, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x25, 0x0000000100000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
max x27, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x24, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
max x11, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x12, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
max x28, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x17, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
max x28, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x23, 0x0000000100000001 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
max x17, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x2, 0x0000000100000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
max x21, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x19, 0x0000000100000001 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
max x17, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x13, 0x0000000100000001 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
max x31, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x23, 0x0000000100000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
max x25, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x26, 0x0000000100000001 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
max x5, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000100000001 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
max x13, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000100000001 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
max x22, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x3, 0x0000000100000001 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
max x16, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
max x22, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x9, 0x0000000100000001 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
max x31, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x1, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
max x17, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x30, 0x0000000100000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
max x31, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x2e97e01cb39a7930 # initialize rs1
li x0, 0x4878c403387e4563 # initialize rs2
max x8, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x9bcdaf323c747d7c # initialize rs1
li x1, 0xa2439cf5aef08e0d # initialize rs2
max x22, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x9c69ce0d91a46f68 # initialize rs1
li x2, 0x6d24c632e01806f5 # initialize rs2
max x24, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xbbab0f1494f6f7d8 # initialize rs1
li x3, 0x26ced29d69441d8b # initialize rs2
max x5, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8e91d3c3bba52aaa # initialize rs1
li x4, 0x7bab1f36a2af42d1 # initialize rs2
max x29, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x461b545372d7e56a # initialize rs1
li x5, 0xbc19123c9b28057f # initialize rs2
max x26, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2a7c59f8ca926952 # initialize rs1
li x6, 0x25e929b08a216742 # initialize rs2
max x27, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x27, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa57a895fbad3b99f # initialize rs1
li x7, 0x5026d80a3c8ddca3 # initialize rs2
max x26, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x9da7958c2566acf7 # initialize rs1
li x8, 0x704170539ef9e218 # initialize rs2
max x26, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa72dfc933be5e8de # initialize rs1
li x9, 0x600d04965e525827 # initialize rs2
max x29, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x36d5513045184e8f # initialize rs1
li x10, 0x2a6296961285aead # initialize rs2
max x21, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x45968d825a6a6243 # initialize rs1
li x11, 0x508c595c2fa0df8a # initialize rs2
max x6, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xefd5a57de000874a # initialize rs1
li x12, 0x7f0a3f4294892369 # initialize rs2
max x15, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x5f0d8a596ff0d9ec # initialize rs1
li x13, 0xd66ca7253619cb6b # initialize rs2
max x26, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x162416e5d3488fbd # initialize rs1
li x14, 0x3e5ef71a660fd34f # initialize rs2
max x31, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x2e36ddf2664f2f98 # initialize rs1
li x15, 0x490ea17b0cac514b # initialize rs2
max x23, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x4c68be88262941dc # initialize rs1
li x16, 0x9a8b87a145380e2c # initialize rs2
max x9, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xa867bc113369ba69 # initialize rs1
li x17, 0x2946c7c34041c907 # initialize rs2
max x26, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x54e13979b9996375 # initialize rs1
li x18, 0x9811f7de470d5d59 # initialize rs2
max x7, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xf2e94e879c397b13 # initialize rs1
li x19, 0x651ec5f1195893d7 # initialize rs2
max x24, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x48cc80d916d48381 # initialize rs1
li x20, 0x5b54b1ec27d2a68c # initialize rs2
max x27, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xde6e4b51f967bc4d # initialize rs1
li x21, 0x1b6b3860f2be11e4 # initialize rs2
max x19, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x9a6ba727e117aea7 # initialize rs1
li x22, 0x04c065379278cd34 # initialize rs2
max x8, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x73eb86d248fadb0e # initialize rs1
li x23, 0xdf2b8923d209ea9a # initialize rs2
max x8, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xefeae4697200db35 # initialize rs1
li x24, 0x437111f3dab3e257 # initialize rs2
max x9, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xf612b98b3aa35583 # initialize rs1
li x25, 0x54962613079e5f4d # initialize rs2
max x31, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x0b9128068a59dcf3 # initialize rs1
li x26, 0xfb3a26cefe5a9bd5 # initialize rs2
max x10, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xb8339b5b6175c790 # initialize rs1
li x27, 0x8f4356b5e674f0bb # initialize rs2
max x16, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x2fbdd6943d2c224a # initialize rs1
li x28, 0xce55a9eaa4c19dd7 # initialize rs2
max x23, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xdc07435b8a21d587 # initialize rs1
li x29, 0xe237ae77c3cfc4a2 # initialize rs2
max x9, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x8d2a0ad2a0772373 # initialize rs1
li x30, 0xa7c238c86d8a3e76 # initialize rs2
max x25, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x705d78dfbfedf535 # initialize rs1
li x31, 0xfe364dedcc94a79c # initialize rs2
max x12, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x6efc0c92b848b1fd # initialize rs1
li x8, 0x1a10068d614cb469 # initialize rs2
max x0, x0, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb04aa2ec68224568 # initialize rs1
li x16, 0x52699270aec7e6c1 # initialize rs2
max x1, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x6199550ad7a44276 # initialize rs1
li x8, 0xaf16cff4bc86f25c # initialize rs2
max x2, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x8bdf5d0940c1da24 # initialize rs1
li x5, 0xd31a62bc011302c3 # initialize rs2
max x3, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0f813a32d2a03ad5 # initialize rs1
li x13, 0xf31bcdb84608c8e6 # initialize rs2
max x4, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf5cb12672474c95f # initialize rs1
li x19, 0xfe465339dd038d2f # initialize rs2
max x5, x5, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa0ab747438c74783 # initialize rs1
li x18, 0x0b58c175bc9922e4 # initialize rs2
max x6, x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x89d33c34fae8da71 # initialize rs1
li x21, 0x95eb561c85ee0731 # initialize rs2
max x7, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xb73ae94881061bb1 # initialize rs1
li x31, 0xc9c3d23b56eb2841 # initialize rs2
max x8, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd77207e92c48fb17 # initialize rs1
li x23, 0x729bdfe6d8a01cbd # initialize rs2
max x9, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x7262f562ab687308 # initialize rs1
li x10, 0xcc6f6bae3588d9e3 # initialize rs2
max x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x587f5e260c05122b # initialize rs1
li x20, 0x09363181679ea2ce # initialize rs2
max x11, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x6fa061e738acbd92 # initialize rs1
li x27, 0x2a8fd2846db3f3bd # initialize rs2
max x12, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x5f8ba68648b1615a # initialize rs1
li x18, 0x18eeead14f3f8a4f # initialize rs2
max x13, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x02f906e5c7287c57 # initialize rs1
li x25, 0x62be542004dd1c07 # initialize rs2
max x14, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x512cc7b4068e0c5a # initialize rs1
li x26, 0x76ca1f3fa01dcb78 # initialize rs2
max x15, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x0181b122a3655213 # initialize rs1
li x31, 0x82ce4e560a4e79e3 # initialize rs2
max x16, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x5cb242376d57ea6b # initialize rs1
li x21, 0xa9cd7f05012d2b85 # initialize rs2
max x17, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x348c382b3046f90f # initialize rs1
li x30, 0x34fa1e4f412cd9f4 # initialize rs2
max x18, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x2e9d4ad19ffe4081 # initialize rs1
li x15, 0x13a5636be2cb314d # initialize rs2
max x19, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x5804472873af97aa # initialize rs1
li x19, 0xde4decbf3b44ff9a # initialize rs2
max x20, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x01904ee1873ee1ee # initialize rs1
li x31, 0xe15bc9213936f8cc # initialize rs2
max x21, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x0aa4862e9ba90f7a # initialize rs1
li x9, 0x7a7f7a7c826581e0 # initialize rs2
max x22, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x7e0f7586c3b42223 # initialize rs1
li x17, 0x872edaa5ceb7e38b # initialize rs2
max x23, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x6fabfe670048d8aa # initialize rs1
li x21, 0xd9a0bda832852a31 # initialize rs2
max x24, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x81003c095c8279a5 # initialize rs1
li x10, 0x33b7f6049c2cca6c # initialize rs2
max x25, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x5f5c7ace632f551b # initialize rs1
li x29, 0xd121fcf4a4ba1cf5 # initialize rs2
max x26, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1853e0f2c6a2dcb2 # initialize rs1
li x27, 0x8995ee1d35bf3f8c # initialize rs2
max x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa85e6c08abbcb0cf # initialize rs1
li x27, 0x41a3545576ac8dbe # initialize rs2
max x28, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x6f2e89ecff0f7199 # initialize rs1
li x30, 0x5a0a6ef187a9538e # initialize rs2
max x29, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd2d7d9ac29001eb0 # initialize rs1
li x3, 0xbffdcbf9aea30175 # initialize rs2
max x30, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xb5fac5ea930c7e46 # initialize rs1
li x14, 0x1fb9e2d6079aa895 # initialize rs2
max x31, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x19, 0x1850683fe9c6a9e9 # initialize rs1
li x0, 0x9c0c2558391894fe # initialize rs2
max x0, x19, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x28, 0x1d1cc5a28ace5544 # initialize rs1
li x1, 0x317e899883e2d521 # initialize rs2
max x1, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x3, 0x171bb25f1facc951 # initialize rs1
li x2, 0x35e041a0bb19ea75 # initialize rs2
max x2, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x2, 0x700e61b822549597 # initialize rs1
li x3, 0xad94a2550bfa260e # initialize rs2
max x3, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0x730b3c274090226b # initialize rs1
li x4, 0xe3c4f709130f303e # initialize rs2
max x4, x16, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0xfb9bf339caf8f9ac # initialize rs1
li x5, 0xe663ca71e5108af7 # initialize rs2
max x5, x19, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x6d4a7c0c5ff536b8 # initialize rs1
li x6, 0x55327fd2088503b1 # initialize rs2
max x6, x18, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0xa8f5d53f8d7b2e3b # initialize rs1
li x7, 0x173c66ea063d7112 # initialize rs2
max x7, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x18, 0x6083709367ddc68d # initialize rs1
li x8, 0xdf0461719289df11 # initialize rs2
max x8, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x2, 0x4b78934214b854a0 # initialize rs1
li x9, 0xa9c3fdae23185ef1 # initialize rs2
max x9, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x3, 0xc8f19b2180031408 # initialize rs1
li x10, 0x716f56ed928ea51e # initialize rs2
max x10, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x29, 0xa67494294e6b7013 # initialize rs1
li x11, 0xe77fdff4a005c856 # initialize rs2
max x11, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x22, 0xd2d9839cbeb01cd7 # initialize rs1
li x12, 0xf95a530cdaf81d67 # initialize rs2
max x12, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x19, 0x380f07575ede96d7 # initialize rs1
li x13, 0x0e8b679a1f9ca44a # initialize rs2
max x13, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x31, 0x21085f6c89a39442 # initialize rs1
li x14, 0xa8f9c813b389125b # initialize rs2
max x14, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x22, 0x92d9150b345fcccd # initialize rs1
li x15, 0xdd29e550967daa93 # initialize rs2
max x15, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x24, 0xe7f33e0f69a2929c # initialize rs1
li x16, 0x1f487a23c123d458 # initialize rs2
max x16, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x25, 0x976ca704df07f45d # initialize rs1
li x17, 0xe636d3c8c9f4ec39 # initialize rs2
max x17, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x27, 0x0d4d5fe6b75edfcf # initialize rs1
li x18, 0xb115a01348a24bbc # initialize rs2
max x18, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x26, 0x7598656a80805d35 # initialize rs1
li x19, 0x6bf51bd0cdba0fed # initialize rs2
max x19, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x14, 0xe9912b0fb5522b84 # initialize rs1
li x20, 0x71cb16d2cdc2a478 # initialize rs2
max x20, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x18, 0x57e1adb7ad88e85c # initialize rs1
li x21, 0x508c024b6cbe1700 # initialize rs2
max x21, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x27, 0xd3ff65344bbdee61 # initialize rs1
li x22, 0x618f17242b4fa248 # initialize rs2
max x22, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x9, 0x18a164caf645b25e # initialize rs1
li x23, 0x4c12f1e8c6bcfc69 # initialize rs2
max x23, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x27, 0x66ca864d7eea131c # initialize rs1
li x24, 0x32b0f2b443ef2933 # initialize rs2
max x24, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x24, 0x66a3078f0c377e44 # initialize rs1
li x25, 0x2d2c02259e06ed8d # initialize rs2
max x25, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x10, 0xc588f9ee97ed3863 # initialize rs1
li x26, 0x24338aa328fe6926 # initialize rs2
max x26, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x22, 0xea305d582b059109 # initialize rs1
li x27, 0xe315f55356a8689d # initialize rs2
max x27, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x11, 0x7023bf94373ad461 # initialize rs1
li x28, 0x20ee1601566b912e # initialize rs2
max x28, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x27, 0x2b40fec49f902e21 # initialize rs1
li x29, 0xec9f4a032cda91d9 # initialize rs2
max x29, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x24, 0x4fc00a3e5ef9f42f # initialize rs1
li x30, 0x115798507302298a # initialize rs2
max x30, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x27, 0x8b3bb9e28bf96e24 # initialize rs1
li x31, 0x831cbbb2f955b9f6 # initialize rs2
max x31, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe3e0d62aea0d845f # initialize rs1
li x0, 0xba8a28b1e7073ad4 # initialize rs2
max x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xc02a65348712a85a # initialize rs1
li x1, 0xd8c429d2ff4cda87 # initialize rs2
max x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x0e1c290c0548219d # initialize rs1
li x2, 0xee6ab0cd67e1ef50 # initialize rs2
max x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xa3e89e17147daa42 # initialize rs1
li x3, 0x22d9e6c518b1bf8e # initialize rs2
max x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf7502126d2c6ff74 # initialize rs1
li x4, 0xebf4a1123e8835db # initialize rs2
max x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x774ef6ba2ad04c7e # initialize rs1
li x5, 0x7899ef86ac1d5907 # initialize rs2
max x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x47a64c639d05805b # initialize rs1
li x6, 0x1a644f12dd6b4531 # initialize rs2
max x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6fc0336f9e5334ac # initialize rs1
li x7, 0x51009d2d6f85b15b # initialize rs2
max x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x2971298c743c0e05 # initialize rs1
li x8, 0x21f4275c0ab29897 # initialize rs2
max x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xc63892f289081356 # initialize rs1
li x9, 0xf55b9b1661c9de48 # initialize rs2
max x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x95f1b0981581e6d7 # initialize rs1
li x10, 0xefcb6306642a71ab # initialize rs2
max x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x5c5e0c082abe69a5 # initialize rs1
li x11, 0xc7a20deaf5b09da7 # initialize rs2
max x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x189dae1309b64752 # initialize rs1
li x12, 0xedb9806c3de35eef # initialize rs2
max x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x4df113617dd13c06 # initialize rs1
li x13, 0x1978caa6fc8762b7 # initialize rs2
max x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xf91c38824060593f # initialize rs1
li x14, 0x69f6850435aea9bf # initialize rs2
max x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x35b83e6ca1ddd02e # initialize rs1
li x15, 0x6c6b7c72fd0036ad # initialize rs2
max x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x4c52e5863fdd66d6 # initialize rs1
li x16, 0x9b1ac6fc45f001d5 # initialize rs2
max x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x00e8cfb9182f36dd # initialize rs1
li x17, 0x6cc614dae848c676 # initialize rs2
max x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x6637886095bf1813 # initialize rs1
li x18, 0x9aa9faa13c42afa6 # initialize rs2
max x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xd6ebb83468e2af4f # initialize rs1
li x19, 0x0266c8829bc60a02 # initialize rs2
max x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xc5d84a92cfc7f2dc # initialize rs1
li x20, 0xb72f6a54a0797df9 # initialize rs2
max x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xf4e7208c0552cd86 # initialize rs1
li x21, 0x280fcdb3fd5b2a85 # initialize rs2
max x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x7b29737ef0b06500 # initialize rs1
li x22, 0x99cb1fc3e6da2afd # initialize rs2
max x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x55902de07c0434de # initialize rs1
li x23, 0x57349f350659d1f1 # initialize rs2
max x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x65488cebc453cc1a # initialize rs1
li x24, 0x8083014893eebd3d # initialize rs2
max x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xba8d861a0af660e1 # initialize rs1
li x25, 0xb56efc5d14efae10 # initialize rs2
max x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xf938f23b0368c984 # initialize rs1
li x26, 0x1279ec0bc9f3ec6f # initialize rs2
max x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x64c30463fa84a17e # initialize rs1
li x27, 0x24e345d5e319d913 # initialize rs2
max x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x0d3fb3daebeb9308 # initialize rs1
li x28, 0xaed7789427cd5fe8 # initialize rs2
max x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xf5096f0f144c6805 # initialize rs1
li x29, 0x2caa93a37d4869c1 # initialize rs2
max x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x3010493705b74443 # initialize rs1
li x30, 0xcd87c22715f8e899 # initialize rs2
max x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xf3f97521bcca31ce # initialize rs1
li x31, 0x38b97831576f5fed # initialize rs2
max x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x18, x20 # perform first operation
max x13, x22, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x28, x8 # perform first operation
max x18, x16, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x2, x23 # perform first operation
max x30, x21, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x6, x16 # perform first operation
max x6, x26, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x22, x13 # perform first operation
max x1, x27, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x6, x2 # perform first operation
max x12, x2, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x3, x13 # perform first operation
max x29, x23, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x8, x11 # perform first operation
max x30, x12, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x5, x26 # perform first operation
max x29, x20, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x20, x16 # perform first operation
max x20, x22, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x28, x6 # perform first operation
max x6, x23, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x10, x13 # perform first operation
max x5, x21, x1 # perform second (triggering) operation

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
