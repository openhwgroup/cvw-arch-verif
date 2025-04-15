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

    

// ******************
// Tests from: WALLY-COV-mulw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x6bac973893baec53 # initialize rs1
li x24, 0x2b1c1174f7be0be9 # initialize rs2
mulw x28, x0, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb4740966d8f6eb67 # initialize rs1
li x17, 0x49ece0217d8134ae # initialize rs2
mulw x22, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xe066bf0c26611cda # initialize rs1
li x17, 0xe0b544ce0fe2984a # initialize rs2
mulw x8, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xbbb0fde1bf5b14f0 # initialize rs1
li x8, 0xf99e1b1aebe5a2ee # initialize rs2
mulw x15, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8343de21703419bc # initialize rs1
li x27, 0x57c4cb8d1314d719 # initialize rs2
mulw x8, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x10c91afd7827ee2e # initialize rs1
li x19, 0xa5603715ba64c6dd # initialize rs2
mulw x21, x5, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9dc12d210b2a1e5b # initialize rs1
li x12, 0xc597ed46fed3e8ea # initialize rs2
mulw x24, x6, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc52d4fd735b762aa # initialize rs1
li x9, 0x7d1e9dc28a13a54a # initialize rs2
mulw x5, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x6c1463cfd7af408a # initialize rs1
li x16, 0x8616c36571e17332 # initialize rs2
mulw x1, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc9a0caeb170baa8b # initialize rs1
li x28, 0xa8a195df95dfc8c3 # initialize rs2
mulw x3, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xbf3876502b8a79e3 # initialize rs1
li x7, 0xd14825a6f85ed9e8 # initialize rs2
mulw x17, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xcda9fa88cb3d026a # initialize rs1
li x24, 0xc8c65474cf3cff36 # initialize rs2
mulw x29, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xa566490fc40d0e3d # initialize rs1
li x9, 0xee2f690451e4167a # initialize rs2
mulw x22, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xfc281dc672d8bc46 # initialize rs1
li x30, 0x6a6990f3cb7fee14 # initialize rs2
mulw x28, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xb14e667f144e645f # initialize rs1
li x31, 0xdfa9cff8802e663c # initialize rs2
mulw x23, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1dd1a34915100d5d # initialize rs1
li x29, 0x43e6bb3059dd3e0f # initialize rs2
mulw x20, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xbdb04634539e8367 # initialize rs1
li x27, 0x29ce91fe44e74e9e # initialize rs2
mulw x2, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x14fea2d6bb646cbd # initialize rs1
li x15, 0x1bc33bb747e6d101 # initialize rs2
mulw x16, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x7089ce8dd7431a96 # initialize rs1
li x13, 0x630ff6c4fbed1924 # initialize rs2
mulw x26, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xce0eebba18d29010 # initialize rs1
li x22, 0x7c198280d59b3970 # initialize rs2
mulw x17, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xc1dece80a2ad068c # initialize rs1
li x24, 0xbdf580d68619f2cd # initialize rs2
mulw x21, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x7311ddcb3bcf7d20 # initialize rs1
li x28, 0x3767d270e9d94a6f # initialize rs2
mulw x2, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x13aa4ed89a2e2141 # initialize rs1
li x3, 0xbf63cfa2382dc316 # initialize rs2
mulw x16, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb1191290e4938d84 # initialize rs1
li x8, 0x9fb2690d38b38754 # initialize rs2
mulw x25, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x8647bd80500ff3bf # initialize rs1
li x17, 0xbc9d29092e518f69 # initialize rs2
mulw x3, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x3778f4b3a7bc2940 # initialize rs1
li x29, 0x8fb097b17090cd0e # initialize rs2
mulw x18, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x8d7a7bb998e67f55 # initialize rs1
li x22, 0xd9c2f2d8afa0c322 # initialize rs2
mulw x5, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x17214f984f164595 # initialize rs1
li x17, 0x061ca906725a77ee # initialize rs2
mulw x11, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x46f50cd8f7d521be # initialize rs1
li x6, 0xbc4d6023eac73140 # initialize rs2
mulw x20, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xf61cf261e792459e # initialize rs1
li x12, 0x6ce9b4bdc4c4c1ce # initialize rs2
mulw x27, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xe93566ff15e6fd85 # initialize rs1
li x28, 0x8eac71152a7ad4bc # initialize rs2
mulw x11, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xf89326bc2b8ed9fa # initialize rs1
li x9, 0xcc9fd2c4334bf11a # initialize rs2
mulw x29, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x3, 0x5123643c2f8fd936 # initialize rs1
li x0, 0x46f22ef2975c2eba # initialize rs2
mulw x25, x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x25, 0x3ce748b8f93a5d29 # initialize rs1
li x1, 0x01f6ffa04080b315 # initialize rs2
mulw x29, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x16, 0xfebc208882327113 # initialize rs1
li x2, 0x83daa1518a80e8b1 # initialize rs2
mulw x10, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x22, 0x5aed7a9f24d2cd1c # initialize rs1
li x3, 0xe1fd28db09cc8fc3 # initialize rs2
mulw x20, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0x7c5f7d062f12a6f4 # initialize rs1
li x4, 0x837bf7ca023d72e9 # initialize rs2
mulw x7, x28, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x3500bed264a42e2c # initialize rs1
li x5, 0x6c503f29c0c96086 # initialize rs2
mulw x11, x3, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0xc13dd2c96ce9b779 # initialize rs1
li x6, 0xde3c8779d21ef49a # initialize rs2
mulw x13, x21, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0x4ded6404ba962041 # initialize rs1
li x7, 0x4fb96f3cc475fae1 # initialize rs2
mulw x27, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0xe4d9f455c07a1eb7 # initialize rs1
li x8, 0x1c28627da101295f # initialize rs2
mulw x31, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x24, 0x936873fc0c50cc7b # initialize rs1
li x9, 0x1de566687032e20a # initialize rs2
mulw x16, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x15, 0x728034f523534733 # initialize rs1
li x10, 0x5538c213212ae5a0 # initialize rs2
mulw x6, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x17, 0xd01d480fb70ec8c4 # initialize rs1
li x11, 0x0aa2fcf82b12a239 # initialize rs2
mulw x20, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x13, 0x854bf8a9f971f8de # initialize rs1
li x12, 0x8857617aacc81ce9 # initialize rs2
mulw x18, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0x8228cd335b5aaa26 # initialize rs1
li x13, 0xfde511085682c1ba # initialize rs2
mulw x24, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x20, 0xcf50ebb8b8806863 # initialize rs1
li x14, 0x807faa55e247bfcf # initialize rs2
mulw x25, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x8, 0x1fe03b038d6d0ab5 # initialize rs1
li x15, 0x65b082ab1a5bcafa # initialize rs2
mulw x25, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x3, 0x1e43aa8799874769 # initialize rs1
li x16, 0x3fbba894f29e0091 # initialize rs2
mulw x11, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x30, 0xb2f61fc799216a87 # initialize rs1
li x17, 0x5aeafd01c10f1288 # initialize rs2
mulw x13, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x12, 0xc99e6a5eef798885 # initialize rs1
li x18, 0x8d32d956aa57e0a3 # initialize rs2
mulw x21, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x1, 0x9fb002b70ca98498 # initialize rs1
li x19, 0x77c3351f1e600afc # initialize rs2
mulw x16, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x5, 0x7505ef9f84138719 # initialize rs1
li x20, 0xf4953a74e28fd643 # initialize rs2
mulw x9, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x28, 0xfb243d26cfdd2a7c # initialize rs1
li x21, 0x8a0572c847d107d2 # initialize rs2
mulw x3, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x9, 0xe04e61e443f8c308 # initialize rs1
li x22, 0x618ad5501415874c # initialize rs2
mulw x21, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x29, 0xc52d92cace5bc067 # initialize rs1
li x23, 0x56d7269a47133063 # initialize rs2
mulw x1, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x19, 0x376506f5569805ca # initialize rs1
li x24, 0xb5fe0f1a30e2b782 # initialize rs2
mulw x2, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x7, 0xb255463ca3e691d0 # initialize rs1
li x25, 0x3c08716d2457f781 # initialize rs2
mulw x3, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x27, 0xae140f71dfba14a2 # initialize rs1
li x26, 0x09c7381e1b3c8861 # initialize rs2
mulw x9, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x22, 0x27fc6636570e69f7 # initialize rs1
li x27, 0x4fa056c36836895e # initialize rs2
mulw x14, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x27, 0xdb748a343ef70a65 # initialize rs1
li x28, 0xa9008f2212b5feeb # initialize rs2
mulw x16, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x13, 0x246c489efec35931 # initialize rs1
li x29, 0x123a6f516588d865 # initialize rs2
mulw x26, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x3, 0xb8d9e6a8ac392dc5 # initialize rs1
li x30, 0x5d63e7194b872029 # initialize rs2
mulw x1, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x17, 0xc8c2971ab47cbbc6 # initialize rs1
li x31, 0x7356ec8eb3bdbf0d # initialize rs2
mulw x10, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 504)

# Testcase cp_rd (Test destination rd = x0)
li x18, 0xe071305c2e30a22b # initialize rs1
li x31, 0x65b467b180ff3ab8 # initialize rs2
mulw x0, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x17, 0x43e9cb9e176509ad # initialize rs1
li x29, 0xf6b40275abe38d76 # initialize rs2
mulw x1, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0x5ca17c652fe7c1f8 # initialize rs1
li x2, 0xe0397239f226de88 # initialize rs2
mulw x2, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x15, 0xe6edad250f59c5dd # initialize rs1
li x2, 0xfd608bb6ebb14fef # initialize rs2
mulw x3, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0xd5ddf178c88ea932 # initialize rs1
li x27, 0x63697213bbfe6b17 # initialize rs2
mulw x4, x1, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0x0a6ac6a6a6a0ad2a # initialize rs1
li x27, 0xc35b6cb1e0464ba8 # initialize rs2
mulw x5, x30, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x57b7204e5f88ef9e # initialize rs1
li x9, 0x335bc3ed74bb131a # initialize rs2
mulw x6, x18, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0x4bbbae29fc748fa6 # initialize rs1
li x14, 0x12a070ac066e63e0 # initialize rs2
mulw x7, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x26, 0x56269ffad6efc841 # initialize rs1
li x22, 0x6b25cf4fe5cba286 # initialize rs2
mulw x8, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0x35808190ee2a5628 # initialize rs1
li x23, 0xe261b3b6572468dc # initialize rs2
mulw x9, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0x32f193df3f24936c # initialize rs1
li x18, 0xd9727ffdf3c895c9 # initialize rs2
mulw x10, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x2, 0xc0e48c315532be2d # initialize rs1
li x29, 0x4ae15e189d629101 # initialize rs2
mulw x11, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x23, 0x18481d66c7dea846 # initialize rs1
li x20, 0x1c5feb25707cc4eb # initialize rs2
mulw x12, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x6, 0xae69dc5bce944052 # initialize rs1
li x29, 0xce7bec5e2c551639 # initialize rs2
mulw x13, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x3, 0xfd0127f639f9d488 # initialize rs1
li x29, 0x7ce507bc937540bd # initialize rs2
mulw x14, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x16, 0xf6203d5af4787ab4 # initialize rs1
li x18, 0xda08cf682e5f9f4c # initialize rs2
mulw x15, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x31, 0xfce252b9c37aa925 # initialize rs1
li x20, 0x501bde579033c0ee # initialize rs2
mulw x16, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x8, 0xd3c2b43492e10249 # initialize rs1
li x6, 0x1cb185bcdd4998a0 # initialize rs2
mulw x17, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x19, 0x4605a5b647ab869d # initialize rs1
li x8, 0x3a4829f6d8918b20 # initialize rs2
mulw x18, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0x715917721acf7bc9 # initialize rs1
li x16, 0x1a3e63d0bb5b640e # initialize rs2
mulw x19, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x16, 0x601d2c8824c79890 # initialize rs1
li x27, 0x759213dc092bfe5b # initialize rs2
mulw x20, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x24, 0x8391edb7adb6d669 # initialize rs1
li x31, 0x3866590b3d7b6c52 # initialize rs2
mulw x21, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x10, 0x4ef6f967f835b033 # initialize rs1
li x19, 0x7822603e682e895d # initialize rs2
mulw x22, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x6, 0x5defba0500d01128 # initialize rs1
li x29, 0xd0e54a405f7e0b06 # initialize rs2
mulw x23, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x19, 0xb04d2cd9fa41fd50 # initialize rs1
li x16, 0xde58f83d242c8197 # initialize rs2
mulw x24, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x28, 0x16d36564e2325f34 # initialize rs1
li x14, 0x2dd5dde80ce309e2 # initialize rs2
mulw x25, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x21, 0x522800b8aa0675c3 # initialize rs1
li x12, 0x87df25d168f4ef1c # initialize rs2
mulw x26, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x20, 0xec37ca04c7d9fd4c # initialize rs1
li x18, 0x5551e136affbf23c # initialize rs2
mulw x27, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x18, 0x7c4860c6caeb8692 # initialize rs1
li x14, 0xa1fa1c171653e957 # initialize rs2
mulw x28, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x31, 0x17a74fe436e04aa8 # initialize rs1
li x30, 0x90d2caa54b727aa1 # initialize rs2
mulw x29, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0x0ff25d922012fd9f # initialize rs1
li x20, 0x581db71288d0a560 # initialize rs2
mulw x30, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x10, 0x685028187126df7f # initialize rs1
li x13, 0xaf2612711537e129 # initialize rs2
mulw x31, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x6, 0x0000000000000000 # initialize rs1
li x5, 0x905e6abd8404e4ed # initialize rs2
mulw x19, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x0000000000000001 # initialize rs1
li x20, 0xf86b2266b4eee4a8 # initialize rs2
mulw x12, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0x0000000000000002 # initialize rs1
li x28, 0xb8a57aa9de018f6a # initialize rs2
mulw x3, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x28, 0x8000000000000000 # initialize rs1
li x7, 0x3440995aa17b57ef # initialize rs2
mulw x21, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x3, 0x8000000000000001 # initialize rs1
li x29, 0x8d73aef36c550f88 # initialize rs2
mulw x6, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x13, 0x7fffffffffffffff # initialize rs1
li x17, 0x0f2785a0214ab660 # initialize rs2
mulw x24, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
li x3, 0xcd5dda4c516856b9 # initialize rs2
mulw x17, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x8, 0xffffffffffffffff # initialize rs1
li x25, 0x832cdf4ce0832f92 # initialize rs2
mulw x7, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x7, 0xede5adcdf660e03e # initialize rs2
mulw x28, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x78c8636abd77eab9 # initialize rs2
mulw x16, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0xbf81b5270fe303b3 # initialize rs2
mulw x29, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x5, 0x5555555555555555 # initialize rs1
li x7, 0x80330aeae6f5f397 # initialize rs2
mulw x12, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0x00000000ffffffff # initialize rs1
li x21, 0xc8b49abe98b0c624 # initialize rs2
mulw x29, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x30, 0x00000000fffffffe # initialize rs1
li x18, 0xbf7ce10674a0fd7c # initialize rs2
mulw x5, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x7, 0x0000000100000000 # initialize rs1
li x14, 0x328095e7d26490ea # initialize rs2
mulw x20, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x26, 0x0000000100000001 # initialize rs1
li x17, 0x1de9bd36813927d4 # initialize rs2
mulw x15, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0xf2ea950ee9247037 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
mulw x27, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x26, 0xd142473823ab8d5d # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
mulw x20, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x6, 0xb3a29f5d06262f62 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
mulw x30, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x20, 0xde9b5f3b8b4584ee # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
mulw x19, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x15, 0x6ed14978757d7062 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
mulw x13, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x28, 0x481b28681d219b15 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
mulw x26, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x23, 0x4e13fa06b2dfbeb9 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
mulw x29, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x18, 0x58a79046d1f7ac11 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
mulw x17, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x13, 0x7b7e0d5b2e7ac079 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
mulw x31, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x20, 0xe8141d38777e0cc3 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
mulw x18, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x5, 0x5ff3c5aaa679ed57 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x13, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x29, 0xb27e138c60e4b844 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
mulw x3, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xce088cf5dc01ca01 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
mulw x8, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x17, 0x813fd379fa2fba91 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
mulw x14, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x9, 0x53755d216c14121a # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
mulw x25, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x13, 0xa091ebba9b559790 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
mulw x30, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x25, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
mulw x31, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x17, 0x0000000000000000 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
mulw x29, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x15, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
mulw x28, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x2, 0x0000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
mulw x31, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x17, 0x0000000000000000 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
mulw x31, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x20, 0x0000000000000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
mulw x19, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000000000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
mulw x24, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x11, 0x0000000000000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
mulw x22, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
mulw x20, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x20, 0x0000000000000000 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
mulw x22, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x0000000000000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x18, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x2, 0x0000000000000000 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
mulw x29, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x29, 0x0000000000000000 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
mulw x23, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x3, 0x0000000000000000 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mulw x15, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x29, 0x0000000000000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
mulw x22, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x23, 0x0000000000000000 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
mulw x17, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x5, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
mulw x15, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x31, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
mulw x11, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x17, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
mulw x10, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x7, 0x0000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
mulw x18, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x15, 0x0000000000000001 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
mulw x5, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000001 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
mulw x24, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x9, 0x0000000000000001 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
mulw x28, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000001 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
mulw x13, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x22, 0x0000000000000001 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
mulw x12, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x18, 0x0000000000000001 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
mulw x29, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x24, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x17, 0x0000000000000001 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
mulw x27, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x12, 0x0000000000000001 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
mulw x23, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x21, 0x0000000000000001 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
mulw x12, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x16, 0x0000000000000001 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
mulw x20, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x5, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
mulw x19, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x17, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
mulw x31, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x27, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
mulw x26, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x1, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
mulw x20, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x1, 0x0000000000000002 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
mulw x27, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x7, 0x0000000000000002 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
mulw x10, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x9, 0x0000000000000002 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
mulw x31, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000000000002 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
mulw x11, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x9, 0x0000000000000002 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulw x30, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
mulw x1, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x8, 0x0000000000000002 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
mulw x18, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x0000000000000002 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x24, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x30, 0x0000000000000002 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
mulw x16, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x18, 0x0000000000000002 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
mulw x16, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x8, 0x0000000000000002 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
mulw x5, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x13, 0x0000000000000002 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
mulw x21, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x5, 0x0000000000000002 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
mulw x12, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x7, 0x8000000000000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
mulw x5, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x17, 0x8000000000000000 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
mulw x19, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x31, 0x8000000000000000 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
mulw x22, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x2, 0x8000000000000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mulw x7, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x22, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
mulw x10, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x16, 0x8000000000000000 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
mulw x6, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x28, 0x8000000000000000 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
mulw x17, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x29, 0x8000000000000000 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
mulw x8, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x21, 0x8000000000000000 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
mulw x10, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x15, 0x8000000000000000 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
mulw x7, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x8000000000000000 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x22, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x16, 0x8000000000000000 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
mulw x11, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x9, 0x8000000000000000 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
mulw x30, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x12, 0x8000000000000000 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
mulw x28, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x11, 0x8000000000000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
mulw x31, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x27, 0x8000000000000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
mulw x5, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x27, 0x8000000000000001 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
mulw x28, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x27, 0x8000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
mulw x1, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x24, 0x8000000000000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
mulw x21, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x27, 0x8000000000000001 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
mulw x26, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x21, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
mulw x12, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x14, 0x8000000000000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
mulw x19, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x7, 0x8000000000000001 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
mulw x5, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x14, 0x8000000000000001 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
mulw x1, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x22, 0x8000000000000001 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
mulw x25, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x21, 0x8000000000000001 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
mulw x25, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x8000000000000001 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x30, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x14, 0x8000000000000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
mulw x5, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x19, 0x8000000000000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
mulw x13, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x29, 0x8000000000000001 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
mulw x1, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x6, 0x8000000000000001 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
mulw x7, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x10, 0x8000000000000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
mulw x19, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x30, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
mulw x17, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x15, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
mulw x24, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x11, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
mulw x28, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x17, 0x7fffffffffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
mulw x6, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x25, 0x7fffffffffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
mulw x6, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x2, 0x7fffffffffffffff # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
mulw x21, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x24, 0x7fffffffffffffff # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
mulw x28, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x21, 0x7fffffffffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
mulw x1, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x24, 0x7fffffffffffffff # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
mulw x12, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x17, 0x7fffffffffffffff # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
mulw x16, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x7fffffffffffffff # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x18, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x6, 0x7fffffffffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
mulw x30, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
mulw x20, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x23, 0x7fffffffffffffff # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
mulw x16, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x6, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
mulw x1, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x29, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
mulw x20, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x5, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
mulw x13, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x27, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
mulw x8, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x23, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
mulw x31, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x6, 0x7ffffffffffffffe # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
mulw x28, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x22, 0x7ffffffffffffffe # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
mulw x6, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x26, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
mulw x25, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0x7ffffffffffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
mulw x10, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x21, 0x7ffffffffffffffe # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
mulw x23, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
mulw x1, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x28, 0x7ffffffffffffffe # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
mulw x13, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x7ffffffffffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x29, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x15, 0x7ffffffffffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
mulw x10, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x14, 0x7ffffffffffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
mulw x13, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x14, 0x7ffffffffffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
mulw x8, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
mulw x27, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x30, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
mulw x25, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x20, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
mulw x6, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x17, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
mulw x30, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x24, 0xffffffffffffffff # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
mulw x1, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x6, 0xffffffffffffffff # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
mulw x14, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x14, 0xffffffffffffffff # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
mulw x16, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x2, 0xffffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
mulw x23, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
mulw x5, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x25, 0xffffffffffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulw x19, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x20, 0xffffffffffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
mulw x18, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x1, 0xffffffffffffffff # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
mulw x3, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0xffffffffffffffff # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x17, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x20, 0xffffffffffffffff # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
mulw x14, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x8, 0xffffffffffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
mulw x19, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x17, 0xffffffffffffffff # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
mulw x16, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x24, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
mulw x31, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x18, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
mulw x10, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x15, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
mulw x20, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x24, 0xfffffffffffffffe # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
mulw x21, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x12, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
mulw x26, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x21, 0xfffffffffffffffe # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
mulw x24, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x23, 0xfffffffffffffffe # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
mulw x27, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x25, 0xfffffffffffffffe # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mulw x10, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
mulw x25, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x29, 0xfffffffffffffffe # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
mulw x14, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
mulw x9, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x8, 0xfffffffffffffffe # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
mulw x24, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xfffffffffffffffe # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x13, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x23, 0xfffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulw x5, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x22, 0xfffffffffffffffe # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
mulw x23, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
mulw x13, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x25, 0xfffffffffffffffe # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
mulw x24, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x21, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
mulw x20, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
mulw x30, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
mulw x7, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
mulw x24, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
mulw x9, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
mulw x29, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
mulw x20, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
mulw x22, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
mulw x13, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
mulw x7, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
mulw x14, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x24, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
mulw x21, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
mulw x15, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
mulw x3, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
mulw x26, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
mulw x17, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
mulw x27, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
mulw x10, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
mulw x11, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
mulw x2, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
mulw x12, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
mulw x25, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
mulw x2, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulw x8, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
mulw x25, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
mulw x7, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x30, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
mulw x5, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
mulw x12, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
mulw x17, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
mulw x15, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
mulw x1, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x7, 0x5555555555555555 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
mulw x2, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x8, 0x5555555555555555 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
mulw x3, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x5, 0x5555555555555555 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
mulw x20, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x15, 0x5555555555555555 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
mulw x20, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x19, 0x5555555555555555 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
mulw x11, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
mulw x1, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x5, 0x5555555555555555 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
mulw x3, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x26, 0x5555555555555555 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulw x19, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x7, 0x5555555555555555 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
mulw x13, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x13, 0x5555555555555555 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
mulw x22, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x5555555555555555 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x11, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x2, 0x5555555555555555 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
mulw x15, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
mulw x10, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x29, 0x5555555555555555 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
mulw x13, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x12, 0x5555555555555555 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
mulw x29, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x1, 0x5555555555555555 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
mulw x16, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x18, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
mulw x1, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x11, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
mulw x7, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x21, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
mulw x25, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x28, 0x00000000ffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
mulw x14, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x29, 0x00000000ffffffff # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
mulw x9, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x10, 0x00000000ffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
mulw x5, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x6, 0x00000000ffffffff # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
mulw x26, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mulw x29, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x19, 0x00000000ffffffff # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
mulw x10, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x26, 0x00000000ffffffff # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
mulw x3, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x00000000ffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x18, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x5, 0x00000000ffffffff # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
mulw x20, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x31, 0x00000000ffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
mulw x11, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0x00000000ffffffff # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
mulw x3, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x29, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
mulw x12, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x22, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
mulw x10, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x1, 0x00000000fffffffe # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
mulw x12, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x8, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
mulw x9, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x14, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
mulw x9, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x7, 0x00000000fffffffe # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
mulw x11, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x5, 0x00000000fffffffe # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
mulw x18, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x27, 0x00000000fffffffe # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
mulw x15, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x8, 0x00000000fffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
mulw x18, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
mulw x1, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
mulw x24, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x9, 0x00000000fffffffe # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
mulw x12, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x00000000fffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x31, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x16, 0x00000000fffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
mulw x10, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x23, 0x00000000fffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
mulw x9, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x8, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
mulw x13, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x6, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
mulw x5, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x10, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
mulw x29, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x3, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
mulw x5, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x7, 0x0000000100000000 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
mulw x19, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x23, 0x0000000100000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
mulw x21, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x23, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
mulw x26, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x29, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
mulw x2, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000100000000 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
mulw x7, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000100000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
mulw x20, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x28, 0x0000000100000000 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
mulw x7, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000100000000 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
mulw x20, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000100000000 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
mulw x18, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000100000000 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x16, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x18, 0x0000000100000000 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
mulw x1, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
mulw x21, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x28, 0x0000000100000000 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
mulw x16, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x1, 0x0000000100000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
mulw x31, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x12, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
mulw x11, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x7, 0x0000000100000001 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
mulw x24, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x1, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
mulw x29, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x31, 0x0000000100000001 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
mulw x15, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x10, 0x0000000100000001 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
mulw x8, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x19, 0x0000000100000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
mulw x11, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x20, 0x0000000100000001 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
mulw x22, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000100000001 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
mulw x14, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
mulw x15, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x5, 0x0000000100000001 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
mulw x10, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x27, 0x0000000100000001 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
mulw x3, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x0000000100000001 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x22, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x9, 0x0000000100000001 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
mulw x19, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x20, 0x0000000100000001 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
mulw x26, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x23, 0x0000000100000001 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
mulw x6, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x23, 0x0000000100000001 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
mulw x18, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x15, 0x0000000100000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
mulw x13, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xb00838e616ab8745 # initialize rs1
li x0, 0x9c7f13cd2c2c7021 # initialize rs2
mulw x3, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xd1c32600ded8af1b # initialize rs1
li x1, 0xa34f01b1c27f9f3e # initialize rs2
mulw x6, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x8b33e44b615e5c90 # initialize rs1
li x2, 0xc1f90922b4ede064 # initialize rs2
mulw x5, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xcde69ae277de0d01 # initialize rs1
li x3, 0xefbb77070d186e0f # initialize rs2
mulw x5, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc4df3e2b8ab339e1 # initialize rs1
li x4, 0xd7aaafc88f0b0f5b # initialize rs2
mulw x8, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x04cd8461a615e1e1 # initialize rs1
li x5, 0x12b80149679cd2e3 # initialize rs2
mulw x10, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2dd192faf79e9718 # initialize rs1
li x6, 0xf8a4db58a0684a39 # initialize rs2
mulw x25, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1ec9e66604156dbd # initialize rs1
li x7, 0x06493a663fdf5dd7 # initialize rs2
mulw x5, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xf14c05d2715c9757 # initialize rs1
li x8, 0xaf12bf7ae2098fa2 # initialize rs2
mulw x10, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xc66ccc49858fdfb7 # initialize rs1
li x9, 0x260dfd60749cf0c7 # initialize rs2
mulw x10, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd705b1e8e15bffe5 # initialize rs1
li x10, 0x5d844351dc6156d0 # initialize rs2
mulw x25, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xb4a891a901e8b290 # initialize rs1
li x11, 0x57533af6ef68b0bc # initialize rs2
mulw x12, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xc3ad456bcaa139ec # initialize rs1
li x12, 0x54aa5b7ef10188a6 # initialize rs2
mulw x2, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xfa37196c3f196599 # initialize rs1
li x13, 0xb37878139ab90607 # initialize rs2
mulw x17, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9c2f5edd0c52417c # initialize rs1
li x14, 0xec95cb32837cafc0 # initialize rs2
mulw x22, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x2018b40363674dac # initialize rs1
li x15, 0xea5a2dfdf55d9912 # initialize rs2
mulw x14, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xc6238ebda86b9310 # initialize rs1
li x16, 0xc4a229c7c704f316 # initialize rs2
mulw x7, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x48a48a8d2f679aa3 # initialize rs1
li x17, 0x51c8d59fa1375f64 # initialize rs2
mulw x16, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x49752a1b4f244b22 # initialize rs1
li x18, 0xff4e4a1a18918f35 # initialize rs2
mulw x19, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xe5860229621dc9a1 # initialize rs1
li x19, 0x7ce98a4e69697c5a # initialize rs2
mulw x10, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x427620673f986753 # initialize rs1
li x20, 0x44294a7b6d798874 # initialize rs2
mulw x13, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x4efb5916b808c589 # initialize rs1
li x21, 0xd579b878245e5871 # initialize rs2
mulw x25, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x92b634e9351ca84b # initialize rs1
li x22, 0x5bd54608f9c17176 # initialize rs2
mulw x2, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xeb258bd280c787ad # initialize rs1
li x23, 0x21bf0dec413c3232 # initialize rs2
mulw x24, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x48bf44d8260c5016 # initialize rs1
li x24, 0x139e50665a05780f # initialize rs2
mulw x1, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x197b8a6a0014e67f # initialize rs1
li x25, 0xeb0971880abb0207 # initialize rs2
mulw x30, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x2e8c31f05d04dd30 # initialize rs1
li x26, 0xfee272076d9121e8 # initialize rs2
mulw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x2002887081ce5ec5 # initialize rs1
li x27, 0x72cad7590aad81a7 # initialize rs2
mulw x9, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xf45ad30731b5b71b # initialize rs1
li x28, 0x7547710ae53082f8 # initialize rs2
mulw x5, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x24e31b589a7894a4 # initialize rs1
li x29, 0x3c985ce38905340c # initialize rs2
mulw x2, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x68bf3d9bfe3b6faf # initialize rs1
li x30, 0xe00beff7c3cf82c5 # initialize rs2
mulw x12, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x771d17f0697bf5b4 # initialize rs1
li x31, 0xa7afa6a9ae0be111 # initialize rs2
mulw x14, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x0859f8724c33e6a3 # initialize rs1
li x5, 0xd7cfaa80442877c1 # initialize rs2
mulw x0, x0, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x43cc3c1c22b8b6ce # initialize rs1
li x30, 0x4fedba158ad73c39 # initialize rs2
mulw x1, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x65773e34fe4fa095 # initialize rs1
li x31, 0x7fb0f0baf6a6c2d8 # initialize rs2
mulw x2, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x1d0920b480a67b08 # initialize rs1
li x10, 0x88ee81207d0e38a4 # initialize rs2
mulw x3, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4f623847ff531dce # initialize rs1
li x3, 0x2428bb4319ebf1b5 # initialize rs2
mulw x4, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x219752190a2c6b35 # initialize rs1
li x13, 0x41534437790d26f6 # initialize rs2
mulw x5, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb734a4fb13aa091c # initialize rs1
li x1, 0x06754e251ae2293f # initialize rs2
mulw x6, x6, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1d984887d964d10e # initialize rs1
li x9, 0xa23a1b39009a543f # initialize rs2
mulw x7, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9661f9de5259bcef # initialize rs1
li x18, 0x28d892d38f79a361 # initialize rs2
mulw x8, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa2215a3c356953bb # initialize rs1
li x31, 0x2365c42b1e0e8dc2 # initialize rs2
mulw x9, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xb66c0c7864c00ee4 # initialize rs1
li x17, 0xe707a1604e08b911 # initialize rs2
mulw x10, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x52707365d507aeb5 # initialize rs1
li x2, 0x67e6ea70f0473583 # initialize rs2
mulw x11, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x664962452913c7c8 # initialize rs1
li x15, 0x599a7250b0f7de5d # initialize rs2
mulw x12, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x41cf916a54386a50 # initialize rs1
li x19, 0xd731097c0d4ac309 # initialize rs2
mulw x13, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x682f011a846baebb # initialize rs1
li x3, 0x0d44c6136013df61 # initialize rs2
mulw x14, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x68b35f47130b3509 # initialize rs1
li x21, 0xa310aece8d067392 # initialize rs2
mulw x15, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x6e3101de7c3fd4a4 # initialize rs1
li x27, 0x015baca2983e467a # initialize rs2
mulw x16, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x60cdefe168bf4e18 # initialize rs1
li x9, 0x0c14927d75dac13e # initialize rs2
mulw x17, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5d7b71546d92983f # initialize rs1
li x20, 0xe59c84a77c8f6529 # initialize rs2
mulw x18, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x266a5c2e33753406 # initialize rs1
li x1, 0x03e4856ea9d4b182 # initialize rs2
mulw x19, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xe40b5bf5ebd96cec # initialize rs1
li x6, 0xe6a690ebceb9de55 # initialize rs2
mulw x20, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf4f0487ef7b904b4 # initialize rs1
li x13, 0xc527537be61ecb17 # initialize rs2
mulw x21, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xcc05e3622aeb8d58 # initialize rs1
li x12, 0x652f2d6bdb194f8c # initialize rs2
mulw x22, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd269b4730309f8c0 # initialize rs1
li x5, 0xf66aec05cf1b259f # initialize rs2
mulw x23, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x9d20ec4bccf46d22 # initialize rs1
li x15, 0xae1fb6c6d5ae960c # initialize rs2
mulw x24, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x6c98a63c5c3cf387 # initialize rs1
li x17, 0x945464e52ac83acd # initialize rs2
mulw x25, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x5705f84d0f314e12 # initialize rs1
li x21, 0xf89dc6d4d71eb6af # initialize rs2
mulw x26, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x78540ff21d96dbb5 # initialize rs1
li x5, 0xd5d46f3b8567d9ea # initialize rs2
mulw x27, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x9ad51d9663e58227 # initialize rs1
li x23, 0xf00be9e4170d8bea # initialize rs2
mulw x28, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x168846ade73a249c # initialize rs1
li x27, 0x5d4434db1310114e # initialize rs2
mulw x29, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x2c499a9a3aed3fa7 # initialize rs1
li x19, 0x7c3954b2b2de4300 # initialize rs2
mulw x30, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xcff3a526ec5c673f # initialize rs1
li x26, 0x644a5a7d4929230e # initialize rs2
mulw x31, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x8, 0x5ef7506f0b614f61 # initialize rs1
li x0, 0x8e50754113914ffd # initialize rs2
mulw x0, x8, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x12, 0x2d893d7924d80495 # initialize rs1
li x1, 0x5b65f55ba83ec3dc # initialize rs2
mulw x1, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xa8d6d753ad0baf20 # initialize rs1
li x2, 0x4df084284519a8ee # initialize rs2
mulw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x12, 0x531f80b54762b7ef # initialize rs1
li x3, 0x23e7d293f16561ee # initialize rs2
mulw x3, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0xa54e4f25b18fb8bf # initialize rs1
li x4, 0xd06410354c2b8128 # initialize rs2
mulw x4, x9, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0x5cdd0ede73edc097 # initialize rs1
li x5, 0x5b1bcbe6829d08fa # initialize rs2
mulw x5, x8, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x93141bfab56b552d # initialize rs1
li x6, 0xe67e9b28860cf2c6 # initialize rs2
mulw x6, x29, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0xa30715dc2ad6fa88 # initialize rs1
li x7, 0x61acab3acd954b03 # initialize rs2
mulw x7, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x22, 0x2b88f847fb6f9fa3 # initialize rs1
li x8, 0x09bace913ba56e0a # initialize rs2
mulw x8, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x29, 0xf1a7171fb3a7dbbc # initialize rs1
li x9, 0x86d0fd1ecb74e72a # initialize rs2
mulw x9, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xc438bdd5cb4e97e0 # initialize rs1
li x10, 0x0d88a8ce2ce8315a # initialize rs2
mulw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x1, 0x59f2e73b26ae6b2c # initialize rs1
li x11, 0x330b8a2603378b14 # initialize rs2
mulw x11, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x30, 0x272ef96f615d7f8c # initialize rs1
li x12, 0x42c4261d5795193f # initialize rs2
mulw x12, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x25, 0xe886fe0df77525e6 # initialize rs1
li x13, 0x164ce25972bd1f4e # initialize rs2
mulw x13, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x28, 0x677a8cdfaffb8374 # initialize rs1
li x14, 0x1d31831cd213690c # initialize rs2
mulw x14, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x22, 0x715dc289e6f3bb45 # initialize rs1
li x15, 0x8491efd3e2098f42 # initialize rs2
mulw x15, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x14, 0x61a0813943633f43 # initialize rs1
li x16, 0xe2a0897d21d9ecda # initialize rs2
mulw x16, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x24, 0xaad1489b0104b040 # initialize rs1
li x17, 0x7884339b1d5a94c3 # initialize rs2
mulw x17, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x31, 0xc401ca22124e86e7 # initialize rs1
li x18, 0xb3895354881a3244 # initialize rs2
mulw x18, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x2, 0x80b36d1d39e57480 # initialize rs1
li x19, 0x45688e8062bd6427 # initialize rs2
mulw x19, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x25, 0xfd849e2c0c97acab # initialize rs1
li x20, 0x250ca705bb34666e # initialize rs2
mulw x20, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x25, 0x312ffeadff4952d6 # initialize rs1
li x21, 0x8513ae9cf95b0661 # initialize rs2
mulw x21, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x19, 0xdbd35cae3c1bbe69 # initialize rs1
li x22, 0x82fbec89f5701f85 # initialize rs2
mulw x22, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x6, 0x740077f6e9a29bf4 # initialize rs1
li x23, 0x5a3ed71dbfd9cafa # initialize rs2
mulw x23, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x29, 0x2a73fb97546fde61 # initialize rs1
li x24, 0xf3d244fd5ca8d7b9 # initialize rs2
mulw x24, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x26, 0x2b0091b682704978 # initialize rs1
li x25, 0x5d5d3a74b45c0ddc # initialize rs2
mulw x25, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x27, 0x8138ae5878d30951 # initialize rs1
li x26, 0x70833554ca01fc00 # initialize rs2
mulw x26, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x29, 0x1cddeb9c22b398eb # initialize rs1
li x27, 0x6cf5fbf8b54199f6 # initialize rs2
mulw x27, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x1, 0x2f7e19abd52e0e77 # initialize rs1
li x28, 0xf00d17e1c0cd402f # initialize rs2
mulw x28, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x21, 0x1c7394587c785b5b # initialize rs1
li x29, 0xdb1436717324e985 # initialize rs2
mulw x29, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x10, 0x41011de4eb377d9e # initialize rs1
li x30, 0xfb5c9d79b7adb63c # initialize rs2
mulw x30, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x76e3063605879976 # initialize rs1
li x31, 0x5776f0c9e51ef439 # initialize rs2
mulw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x7df4825755c3ed36 # initialize rs1
li x0, 0xe1fed6699a54a8db # initialize rs2
mulw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x10375133725eebd9 # initialize rs1
li x1, 0xb507ef4807826026 # initialize rs2
mulw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x6a508b2ad97abd35 # initialize rs1
li x2, 0xed539a2b6096be95 # initialize rs2
mulw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xd33f879f163a2d3d # initialize rs1
li x3, 0xc26f0866969928fa # initialize rs2
mulw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x84a8e9407a3b9346 # initialize rs1
li x4, 0x19ec1b10d9c5768f # initialize rs2
mulw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1af22b071ac4bfa3 # initialize rs1
li x5, 0x1ad492625cf1a57b # initialize rs2
mulw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x79ebf8fda93cb743 # initialize rs1
li x6, 0xf4a8bbea7d8359cc # initialize rs2
mulw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdf80edcf59407c8d # initialize rs1
li x7, 0xb22843058b947fcb # initialize rs2
mulw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x96eedcb5b949fc7e # initialize rs1
li x8, 0xbc0ac5388b564ef4 # initialize rs2
mulw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x78d37788bff43375 # initialize rs1
li x9, 0xf3fe721701c2f62c # initialize rs2
mulw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x72cc4b4ccc505a07 # initialize rs1
li x10, 0x6018fc09f9d5d2fa # initialize rs2
mulw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x9d93bc821c056e10 # initialize rs1
li x11, 0x575087300dbeb659 # initialize rs2
mulw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x224b2feadd9f7579 # initialize rs1
li x12, 0x8c0c2737d908a9df # initialize rs2
mulw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xc111735e92630f68 # initialize rs1
li x13, 0xac8426b606cbaa0d # initialize rs2
mulw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x191fe435d6e17141 # initialize rs1
li x14, 0xf1cec3049e954a6a # initialize rs2
mulw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xbc1bff045c18cab8 # initialize rs1
li x15, 0xed1eac221b429a6c # initialize rs2
mulw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x8a9d1c2cf72c189a # initialize rs1
li x16, 0xf14056c363bb35da # initialize rs2
mulw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xcb4b0d500af27fcd # initialize rs1
li x17, 0x49732cb0b280cc39 # initialize rs2
mulw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x81f5f497d1e243a8 # initialize rs1
li x18, 0x7dc936c89dfc434f # initialize rs2
mulw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x554091f9bd4ac34f # initialize rs1
li x19, 0x7704beafba6f3f3d # initialize rs2
mulw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xd50784c037c9efc0 # initialize rs1
li x20, 0x9243297f537f6556 # initialize rs2
mulw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xd0213b515f7d600d # initialize rs1
li x21, 0xc2ad5f212d11e82e # initialize rs2
mulw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xbfbc6713efd500d2 # initialize rs1
li x22, 0xf23477b0ba4a1ab0 # initialize rs2
mulw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x31f533e2108cd658 # initialize rs1
li x23, 0x245462eeb398788a # initialize rs2
mulw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x91c25774610c8144 # initialize rs1
li x24, 0x028e0fc8f4d6cf39 # initialize rs2
mulw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x8bcdd25508db1266 # initialize rs1
li x25, 0x41e8019ccbeb4500 # initialize rs2
mulw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x554a1e2f591af345 # initialize rs1
li x26, 0x0c522b5e9d5c8aa2 # initialize rs2
mulw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x63f3a488b75d50ab # initialize rs1
li x27, 0x2ebfa0c20be017ab # initialize rs2
mulw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x4e7995cf576781b8 # initialize rs1
li x28, 0x2ce5ecc474ca7f5a # initialize rs2
mulw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x88ec70eb61f2fcbf # initialize rs1
li x29, 0x4a53a7c2443e87db # initialize rs2
mulw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xa7981d6a27c02422 # initialize rs1
li x30, 0x9dff3309943765c0 # initialize rs2
mulw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xd356acbdb1c3b7f0 # initialize rs1
li x31, 0x5852fce2bb8d044b # initialize rs2
mulw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x16, x1 # perform first operation
mulw x18, x22, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x3, x23 # perform first operation
mulw x15, x16, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x14, x9 # perform first operation
mulw x26, x28, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x3, x25 # perform first operation
mulw x6, x6, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x2, x28 # perform first operation
mulw x2, x7, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x5, x14 # perform first operation
mulw x14, x28, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x9, x13 # perform first operation
mulw x24, x3, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x28, x3 # perform first operation
mulw x15, x12, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x18, x15 # perform first operation
mulw x27, x10, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x18, x16 # perform first operation
mulw x18, x10, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x2, x22 # perform first operation
mulw x22, x23, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x12, x24 # perform first operation
mulw x27, x2, x1 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-mulhsu.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x2394b9a66befd711 # initialize rs1
li x27, 0xe687a9d924713451 # initialize rs2
mulhsu x6, x0, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x688f9d2fb4c60b46 # initialize rs1
li x24, 0x1acc276f7e31cdb4 # initialize rs2
mulhsu x8, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x1fed5abd18f16933 # initialize rs1
li x31, 0xcb899e33ac623845 # initialize rs2
mulhsu x16, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb408a095b364a465 # initialize rs1
li x19, 0x3b81feddc1cf75eb # initialize rs2
mulhsu x29, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x24a3f0d40e082baa # initialize rs1
li x9, 0xc8c512e4843b0d26 # initialize rs2
mulhsu x12, x4, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfd5786855ba9ee09 # initialize rs1
li x19, 0xe300f4101c185784 # initialize rs2
mulhsu x14, x5, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf017e28aab21802a # initialize rs1
li x29, 0xca01c60c5f44e09f # initialize rs2
mulhsu x4, x6, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc0154cd082e60ff9 # initialize rs1
li x6, 0xc6526dc18e168f28 # initialize rs2
mulhsu x18, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x570a0e1376f41190 # initialize rs1
li x25, 0xe474725ee5f78e7e # initialize rs2
mulhsu x31, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x74f0ecf47626172a # initialize rs1
li x1, 0xa9e8e5f232af0d45 # initialize rs2
mulhsu x7, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xf7aac818219a7f26 # initialize rs1
li x12, 0x4dc270cbedc2c8c9 # initialize rs2
mulhsu x15, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xb6a4d4372a79a856 # initialize rs1
li x24, 0x133ead405a517d34 # initialize rs2
mulhsu x1, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xe15e1a8fe1d4cdb7 # initialize rs1
li x21, 0x41c28fddfa9b1b80 # initialize rs2
mulhsu x2, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x12916c265a334470 # initialize rs1
li x9, 0xaa315876d8ee6847 # initialize rs2
mulhsu x30, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc75a7ed441a02048 # initialize rs1
li x12, 0xc2d2bd6eed809bb2 # initialize rs2
mulhsu x28, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xfe2f904f6f83daef # initialize rs1
li x22, 0xcedede41f2853372 # initialize rs2
mulhsu x16, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xce0a01c4e6859b0b # initialize rs1
li x31, 0x7987ee5e275d83fe # initialize rs2
mulhsu x30, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xf1cb5125f046de1c # initialize rs1
li x27, 0xec3770ed95a3863b # initialize rs2
mulhsu x6, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x45579eed97a17375 # initialize rs1
li x30, 0x1f6d3d0eed1d1cdb # initialize rs2
mulhsu x20, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x01395b2784adc3d4 # initialize rs1
li x20, 0x855ca9c75c066218 # initialize rs2
mulhsu x16, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xf83d8f7ddb3761ce # initialize rs1
li x29, 0xcfe5e0db5285f9cc # initialize rs2
mulhsu x19, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x291447dc67e8c0a6 # initialize rs1
li x23, 0x1ba78f69c4295bfa # initialize rs2
mulhsu x12, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x7b7fcc015894a7f4 # initialize rs1
li x6, 0x95d0f53ad340684a # initialize rs2
mulhsu x18, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xf72ca7ac81e13168 # initialize rs1
li x28, 0x2a4ba9c4df198ea2 # initialize rs2
mulhsu x2, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x363140139b30545a # initialize rs1
li x5, 0x46d7ab4a753ae52d # initialize rs2
mulhsu x8, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xf659df5001d46aa0 # initialize rs1
li x18, 0x3b5585dda5e8cf7d # initialize rs2
mulhsu x15, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xe373b063a55e8411 # initialize rs1
li x22, 0xf65be2ee3380a221 # initialize rs2
mulhsu x25, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xc1c28a2ba72e70d3 # initialize rs1
li x21, 0x1bf6b2cfae8a7d43 # initialize rs2
mulhsu x19, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x0f026b29e716a972 # initialize rs1
li x22, 0x28b5aa27efffa459 # initialize rs2
mulhsu x7, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0b16deecf0cc3fbd # initialize rs1
li x14, 0xcc140a0bb0e4d790 # initialize rs2
mulhsu x31, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xb7d09385f9cf2785 # initialize rs1
li x27, 0x57ae5c29068385b5 # initialize rs2
mulhsu x14, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x295b5ae37d4168a9 # initialize rs1
li x2, 0x757759f46f4246c6 # initialize rs2
mulhsu x28, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x22, 0xad3b5939b525b465 # initialize rs1
li x0, 0x0fc47b58374ae309 # initialize rs2
mulhsu x23, x22, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x6, 0xcad8fb21ae8a4132 # initialize rs1
li x1, 0xe76dab14869b1d9b # initialize rs2
mulhsu x8, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x11, 0xf7769cd3d8b64be1 # initialize rs1
li x2, 0x607ceb17374af94e # initialize rs2
mulhsu x29, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x21, 0x84ba565b6433f712 # initialize rs1
li x3, 0xcb5c37a53d8aff8b # initialize rs2
mulhsu x2, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x0f4397ac8ea12164 # initialize rs1
li x4, 0xa6c8820c5d31ef0c # initialize rs2
mulhsu x11, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
li x26, 0x118c1f67e8070dbe # initialize rs1
li x5, 0xdedb88ba118b8764 # initialize rs2
mulhsu x25, x26, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x1e2cd48aca710364 # initialize rs1
li x6, 0xfe65b3db1f9edfab # initialize rs2
mulhsu x24, x18, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xdf6e0e0fb5f942e3 # initialize rs1
li x7, 0x7703609db255b190 # initialize rs2
mulhsu x6, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x31, 0x747e38797d2a8892 # initialize rs1
li x8, 0xa9406cad9333dcc6 # initialize rs2
mulhsu x5, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x29, 0x718f92fa34b14f79 # initialize rs1
li x9, 0x41a61a95e34165d4 # initialize rs2
mulhsu x12, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x6, 0x5f7150ea117b7ad8 # initialize rs1
li x10, 0xf8c3d6aa0febe795 # initialize rs2
mulhsu x13, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x17, 0x22c9c25382815a56 # initialize rs1
li x11, 0x5381fd262209fdbe # initialize rs2
mulhsu x9, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x11, 0xaa44a86eae3196fd # initialize rs1
li x12, 0xf393ca81b7629e1a # initialize rs2
mulhsu x24, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0x3ad86db76fc27e41 # initialize rs1
li x13, 0x003eee34b7751eb8 # initialize rs2
mulhsu x22, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x11, 0x0f77c99511caed7a # initialize rs1
li x14, 0x3743c15610d18c2a # initialize rs2
mulhsu x20, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x23, 0x9b75198db677b240 # initialize rs1
li x15, 0x6958c8311bf85170 # initialize rs2
mulhsu x27, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x15, 0xb435303e9e6dd2f0 # initialize rs1
li x16, 0x662eeb462dcc622e # initialize rs2
mulhsu x30, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x31, 0x13adf0f556cfe2cc # initialize rs1
li x17, 0xbb80f64ced913f59 # initialize rs2
mulhsu x29, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x9, 0xe3f7f54db84f5d04 # initialize rs1
li x18, 0x144fbaaaa676ea69 # initialize rs2
mulhsu x6, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x13, 0x74f695f44b269834 # initialize rs1
li x19, 0x9f689eaa5d11fc32 # initialize rs2
mulhsu x6, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x13, 0xdda5015b1d73965e # initialize rs1
li x20, 0x64449092a263c849 # initialize rs2
mulhsu x17, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x24, 0xd88b747b5f4bc843 # initialize rs1
li x21, 0x361a5c712f0ff28b # initialize rs2
mulhsu x1, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x7, 0x0e41552a1aaaf834 # initialize rs1
li x22, 0x2baf8d2cac03b8cf # initialize rs2
mulhsu x19, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x17, 0xc88a7f7f935dc276 # initialize rs1
li x23, 0x9771762920dc9863 # initialize rs2
mulhsu x19, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x10, 0x286d6d01b05f557e # initialize rs1
li x24, 0xd59fb6b25ed610e4 # initialize rs2
mulhsu x9, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x29, 0xe44fa77619f27711 # initialize rs1
li x25, 0x7e2363e4857eabca # initialize rs2
mulhsu x17, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x6, 0xa6c47c93f9714173 # initialize rs1
li x26, 0x2749cb82cc18a459 # initialize rs2
mulhsu x25, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x7, 0xe9ef55ae40d90726 # initialize rs1
li x27, 0xc41e1200b19a669b # initialize rs2
mulhsu x3, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x27, 0x1ffb20fdb1d9bc6d # initialize rs1
li x28, 0xba9c5e661617d53a # initialize rs2
mulhsu x24, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x2, 0xfcc11bd88f14ab7b # initialize rs1
li x29, 0x159455d38c171cd2 # initialize rs2
mulhsu x7, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x22, 0x467da0795ed9e2d0 # initialize rs1
li x30, 0x5c78883ceb7b9a2c # initialize rs2
mulhsu x14, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x1, 0xa87fb6c1b2a8f677 # initialize rs1
li x31, 0x0635fe7ace5b0120 # initialize rs2
mulhsu x16, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cp_rd (Test destination rd = x0)
li x12, 0xe31c7d575a1a484a # initialize rs1
li x16, 0x1bc472a014741c2c # initialize rs2
mulhsu x0, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x27, 0x747a9f739e03886a # initialize rs1
li x24, 0x17cc4bdc00b43d85 # initialize rs2
mulhsu x1, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x11, 0x734aac3816561cbc # initialize rs1
li x28, 0x9fd97f652ce58b49 # initialize rs2
mulhsu x2, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0x3b8b6948496b610a # initialize rs1
li x14, 0x5f824428803c8bb6 # initialize rs2
mulhsu x3, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0xe6046828637689a4 # initialize rs1
li x24, 0x43cbc32b6f1ea489 # initialize rs2
mulhsu x4, x2, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0xe3a5aa034876e23a # initialize rs1
li x19, 0x34413ab5b5e3809c # initialize rs2
mulhsu x5, x1, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0xc8bc3243c75e299a # initialize rs1
li x31, 0xd27bf97689ab8121 # initialize rs2
mulhsu x6, x3, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0x36b865ba54cd4514 # initialize rs1
li x17, 0x3420c710187bda19 # initialize rs2
mulhsu x7, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x20, 0x55d3f004df9273e0 # initialize rs1
li x15, 0x03e96f18ef4dba4a # initialize rs2
mulhsu x8, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6811011baea6efc1 # initialize rs1
li x1, 0x1fff19609fdde1fb # initialize rs2
mulhsu x9, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x1706c43a479463c5 # initialize rs1
li x3, 0xc32489a8a1a5dc30 # initialize rs2
mulhsu x10, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xcf8c026b89a56dc8 # initialize rs1
li x27, 0x1722b6353df8cbda # initialize rs2
mulhsu x11, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x5, 0x7cc059513a516f57 # initialize rs1
li x17, 0xbefa1395c31f8b09 # initialize rs2
mulhsu x12, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0x21027c86b47d6741 # initialize rs1
li x16, 0x939f585dafdf0d9a # initialize rs2
mulhsu x13, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0xe7ab56882fa013bb # initialize rs1
li x25, 0x85e492dc0441d11b # initialize rs2
mulhsu x14, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x30, 0xa67082d6d1e85b0b # initialize rs1
li x28, 0x13afd089b9ecce82 # initialize rs2
mulhsu x15, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0x1193d7f847cea601 # initialize rs1
li x3, 0x7d8269ca4e1f3717 # initialize rs2
mulhsu x16, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x13, 0x2601fe9dca681d69 # initialize rs1
li x2, 0xac0df8d0e09256e2 # initialize rs2
mulhsu x17, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x29, 0xb0f254240836ceaa # initialize rs1
li x15, 0xb73b984d32bb070c # initialize rs2
mulhsu x18, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x7, 0xf0d12d555ca7f59f # initialize rs1
li x27, 0x4f678113d5ebcb54 # initialize rs2
mulhsu x19, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x19, 0x752590505076b693 # initialize rs1
li x5, 0xa4eea1777c23bf97 # initialize rs2
mulhsu x20, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x7, 0xf7262773495ca1a4 # initialize rs1
li x6, 0x82aa94ff5b253c69 # initialize rs2
mulhsu x21, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0x9ff5cc26ea5cffb8 # initialize rs1
li x2, 0x18b121ffe80a86a6 # initialize rs2
mulhsu x22, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x16, 0xfd01d1054d3ba14a # initialize rs1
li x13, 0x4e9ac764eab85972 # initialize rs2
mulhsu x23, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x5, 0xb85f6605c17b4f47 # initialize rs1
li x9, 0xd3b057204651a92b # initialize rs2
mulhsu x24, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x15, 0x0aa1f680c0ec8ba0 # initialize rs1
li x10, 0xf013562388a7668a # initialize rs2
mulhsu x25, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x24, 0xc571928f3c825fc9 # initialize rs1
li x30, 0x23832ea8a259468d # initialize rs2
mulhsu x26, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0xed0c02675d44359e # initialize rs1
li x17, 0x02ea7d806683297a # initialize rs2
mulhsu x27, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x16, 0xebc673c3d28921f8 # initialize rs1
li x7, 0x6190c4fada565d31 # initialize rs2
mulhsu x28, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x9, 0x666d6bb484ae8942 # initialize rs1
li x5, 0x21bed446fa79b42d # initialize rs2
mulhsu x29, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x12, 0x886f3b11279d44bd # initialize rs1
li x22, 0xa0ea5f9e2aad98f8 # initialize rs2
mulhsu x30, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x11, 0xe25bb025bdb6489f # initialize rs1
li x22, 0x7acb532b17499f58 # initialize rs2
mulhsu x31, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x6, 0x0000000000000000 # initialize rs1
li x18, 0x322387ee9ecbdc81 # initialize rs2
mulhsu x30, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x0000000000000001 # initialize rs1
li x28, 0x6918c988632139c1 # initialize rs2
mulhsu x10, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x0000000000000002 # initialize rs1
li x24, 0xffed5d8b30a1585e # initialize rs2
mulhsu x13, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x14, 0x8000000000000000 # initialize rs1
li x26, 0xab1cd70d9dfbd902 # initialize rs2
mulhsu x2, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x26, 0x8000000000000001 # initialize rs1
li x6, 0x68a9847abbaac491 # initialize rs2
mulhsu x5, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
li x20, 0xe64ed7d408fd2dec # initialize rs2
mulhsu x31, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x19, 0x1e72c88fbea94f82 # initialize rs2
mulhsu x21, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x18, 0x3e46745f5046fc59 # initialize rs2
mulhsu x2, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x16, 0xe449442ec4f19a41 # initialize rs2
mulhsu x21, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x890bd27c09a19105 # initialize rs2
mulhsu x19, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x9a5d835d07c2302d # initialize rs2
mulhsu x17, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rs1
li x7, 0xe4ae460ecd67dc0b # initialize rs2
mulhsu x11, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x18, 0xf8e9e2cd2615391d # initialize rs2
mulhsu x9, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x27, 0x00000000fffffffe # initialize rs1
li x22, 0x29faf3db99b94b2d # initialize rs2
mulhsu x3, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x9, 0x0000000100000000 # initialize rs1
li x20, 0x99387f13d0a4575b # initialize rs2
mulhsu x21, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x22, 0x0000000100000001 # initialize rs1
li x30, 0x665350cca315b8a5 # initialize rs2
mulhsu x29, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0xcaae3d5ec0f8046a # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
mulhsu x16, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0xc04812f79e608770 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
mulhsu x28, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x20, 0x43c3580b6fb91438 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
mulhsu x17, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x3, 0x6da9091528d0b855 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
mulhsu x8, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x2, 0xa540472f352859bb # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
mulhsu x18, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x19, 0x62a6518f1d4e5fd1 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
mulhsu x14, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x22, 0x1a8658e7743cb2e6 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
mulhsu x5, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x15, 0xb5202d1763c01cd0 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
mulhsu x29, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x23, 0x4587de98b738be9a # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
mulhsu x7, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x28, 0x5e9cf397b6651598 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x13, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0x36e102337a676f51 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x5, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x27, 0x5d46fadb401cc47d # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
mulhsu x31, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xe03ebd37e3debe25 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhsu x16, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x26, 0x562ca00150960735 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
mulhsu x31, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x13, 0xdce6a12fcc50b7f4 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
mulhsu x30, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x18, 0x80588984aef97d32 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
mulhsu x23, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x3, 0x0000000000000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
mulhsu x8, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x31, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
mulhsu x15, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x9, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
mulhsu x19, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x19, 0x0000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
mulhsu x28, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x29, 0x0000000000000000 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
mulhsu x15, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000000000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
mulhsu x22, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000000000000 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
mulhsu x19, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x5, 0x0000000000000000 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulhsu x13, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x31, 0x0000000000000000 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
mulhsu x30, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x11, 0x0000000000000000 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x2, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0000000000000000 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x29, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x25, 0x0000000000000000 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
mulhsu x26, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x7, 0x0000000000000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
mulhsu x25, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x27, 0x0000000000000000 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
mulhsu x21, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x31, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mulhsu x26, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x10, 0x0000000000000000 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
mulhsu x7, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x17, 0x0000000000000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
mulhsu x27, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x20, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
mulhsu x17, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x22, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
mulhsu x29, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x29, 0x0000000000000001 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
mulhsu x12, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x21, 0x0000000000000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
mulhsu x11, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000000000001 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
mulhsu x22, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
mulhsu x23, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mulhsu x16, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
mulhsu x22, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000000000001 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x20, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000000000001 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x24, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x23, 0x0000000000000001 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
mulhsu x24, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
mulhsu x7, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x10, 0x0000000000000001 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
mulhsu x12, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x13, 0x0000000000000001 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mulhsu x22, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x5, 0x0000000000000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
mulhsu x6, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x22, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
mulhsu x6, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x16, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
mulhsu x24, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x27, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
mulhsu x30, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x29, 0x0000000000000002 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
mulhsu x5, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x1, 0x0000000000000002 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
mulhsu x18, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000002 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
mulhsu x13, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x26, 0x0000000000000002 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
mulhsu x3, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000002 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mulhsu x13, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x18, 0x0000000000000002 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
mulhsu x3, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x26, 0x0000000000000002 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x5, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000002 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x20, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x20, 0x0000000000000002 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
mulhsu x28, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
mulhsu x18, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x12, 0x0000000000000002 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
mulhsu x2, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x15, 0x0000000000000002 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
mulhsu x2, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x27, 0x0000000000000002 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulhsu x21, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x31, 0x8000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
mulhsu x19, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x5, 0x8000000000000000 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
mulhsu x11, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x2, 0x8000000000000000 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
mulhsu x23, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x5, 0x8000000000000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mulhsu x30, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x31, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
mulhsu x12, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x23, 0x8000000000000000 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mulhsu x8, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x11, 0x8000000000000000 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
mulhsu x2, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x5, 0x8000000000000000 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mulhsu x9, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x6, 0x8000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
mulhsu x11, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x20, 0x8000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x24, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x8000000000000000 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x27, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x10, 0x8000000000000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
mulhsu x27, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x13, 0x8000000000000000 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
mulhsu x3, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x28, 0x8000000000000000 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
mulhsu x15, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x26, 0x8000000000000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
mulhsu x30, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x10, 0x8000000000000000 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
mulhsu x7, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x9, 0x8000000000000001 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
mulhsu x8, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x20, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
mulhsu x13, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x6, 0x8000000000000001 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
mulhsu x26, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x19, 0x8000000000000001 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
mulhsu x8, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
mulhsu x23, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x17, 0x8000000000000001 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
mulhsu x11, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x11, 0x8000000000000001 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
mulhsu x17, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x14, 0x8000000000000001 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
mulhsu x13, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x21, 0x8000000000000001 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
mulhsu x7, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x16, 0x8000000000000001 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x3, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x8000000000000001 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x14, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x27, 0x8000000000000001 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
mulhsu x5, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x16, 0x8000000000000001 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
mulhsu x26, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x1, 0x8000000000000001 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
mulhsu x11, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x26, 0x8000000000000001 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
mulhsu x16, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x7, 0x8000000000000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
mulhsu x25, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x1, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
mulhsu x5, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x14, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
mulhsu x20, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x19, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
mulhsu x20, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x12, 0x7fffffffffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
mulhsu x2, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x5, 0x7fffffffffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
mulhsu x30, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
mulhsu x7, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0x7fffffffffffffff # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
mulhsu x22, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x6, 0x7fffffffffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
mulhsu x23, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x30, 0x7fffffffffffffff # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
mulhsu x18, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x6, 0x7fffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x25, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x7fffffffffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x20, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x28, 0x7fffffffffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
mulhsu x9, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
mulhsu x27, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x17, 0x7fffffffffffffff # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
mulhsu x27, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x24, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
mulhsu x21, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x14, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
mulhsu x29, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x21, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
mulhsu x29, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x6, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
mulhsu x29, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x12, 0x7ffffffffffffffe # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
mulhsu x5, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
mulhsu x14, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x19, 0x7ffffffffffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
mulhsu x22, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x18, 0x7ffffffffffffffe # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
mulhsu x23, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
mulhsu x11, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x24, 0x7ffffffffffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
mulhsu x23, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
mulhsu x20, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x9, 0x7ffffffffffffffe # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x24, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x7ffffffffffffffe # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x30, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x24, 0x7ffffffffffffffe # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
mulhsu x13, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhsu x16, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x9, 0x7ffffffffffffffe # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
mulhsu x19, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x7, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
mulhsu x15, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x30, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
mulhsu x14, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x31, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
mulhsu x9, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x5, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
mulhsu x12, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x3, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
mulhsu x25, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x16, 0xffffffffffffffff # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
mulhsu x28, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x29, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
mulhsu x3, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mulhsu x9, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x17, 0xffffffffffffffff # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
mulhsu x6, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
mulhsu x26, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
mulhsu x17, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x13, 0xffffffffffffffff # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x11, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xffffffffffffffff # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x17, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x9, 0xffffffffffffffff # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
mulhsu x19, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x28, 0xffffffffffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
mulhsu x8, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x9, 0xffffffffffffffff # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
mulhsu x8, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x15, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
mulhsu x6, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x5, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
mulhsu x9, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x23, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
mulhsu x1, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x17, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
mulhsu x3, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x11, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
mulhsu x29, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x19, 0xfffffffffffffffe # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
mulhsu x20, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x26, 0xfffffffffffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
mulhsu x24, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x26, 0xfffffffffffffffe # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
mulhsu x9, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
mulhsu x31, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x30, 0xfffffffffffffffe # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
mulhsu x1, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
mulhsu x11, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x23, 0xfffffffffffffffe # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x30, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xfffffffffffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x6, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x12, 0xfffffffffffffffe # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
mulhsu x14, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
mulhsu x3, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
mulhsu x5, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x1, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
mulhsu x27, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x6, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
mulhsu x15, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
mulhsu x22, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
mulhsu x7, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
mulhsu x28, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
mulhsu x7, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
mulhsu x15, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
mulhsu x12, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
mulhsu x23, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
mulhsu x29, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
mulhsu x23, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x10, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x14, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
mulhsu x7, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
mulhsu x31, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
mulhsu x29, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
mulhsu x17, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
mulhsu x25, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
mulhsu x27, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
mulhsu x24, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
mulhsu x21, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
mulhsu x7, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
mulhsu x8, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
mulhsu x24, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
mulhsu x17, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
mulhsu x10, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
mulhsu x27, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x6, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x31, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
mulhsu x18, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
mulhsu x19, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
mulhsu x30, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
mulhsu x14, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
mulhsu x10, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x23, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
mulhsu x18, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x29, 0x5555555555555555 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
mulhsu x1, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x22, 0x5555555555555555 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
mulhsu x19, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x31, 0x5555555555555555 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
mulhsu x25, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x24, 0x5555555555555555 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
mulhsu x6, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x23, 0x5555555555555555 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
mulhsu x13, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x25, 0x5555555555555555 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
mulhsu x19, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x18, 0x5555555555555555 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
mulhsu x30, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x24, 0x5555555555555555 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
mulhsu x30, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x21, 0x5555555555555555 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x10, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x5555555555555555 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x3, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x23, 0x5555555555555555 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
mulhsu x13, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x29, 0x5555555555555555 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
mulhsu x14, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x14, 0x5555555555555555 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
mulhsu x3, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x24, 0x5555555555555555 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
mulhsu x28, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x30, 0x5555555555555555 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
mulhsu x8, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x10, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
mulhsu x7, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x7, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
mulhsu x29, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x3, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
mulhsu x9, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x12, 0x00000000ffffffff # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
mulhsu x18, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x26, 0x00000000ffffffff # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
mulhsu x25, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
mulhsu x14, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x12, 0x00000000ffffffff # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
mulhsu x27, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x8, 0x00000000ffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
mulhsu x12, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
mulhsu x1, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x17, 0x00000000ffffffff # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x22, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x00000000ffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x7, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x11, 0x00000000ffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
mulhsu x29, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x25, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
mulhsu x17, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x7, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
mulhsu x29, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x19, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
mulhsu x29, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x1, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulhsu x12, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x16, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
mulhsu x13, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x19, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
mulhsu x5, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x25, 0x00000000fffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
mulhsu x30, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x17, 0x00000000fffffffe # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
mulhsu x14, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x26, 0x00000000fffffffe # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
mulhsu x25, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x3, 0x00000000fffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
mulhsu x11, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0x00000000fffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
mulhsu x19, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
mulhsu x8, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
mulhsu x11, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x16, 0x00000000fffffffe # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x6, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x00000000fffffffe # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x1, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x31, 0x00000000fffffffe # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
mulhsu x1, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhsu x5, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x27, 0x00000000fffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
mulhsu x7, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x31, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
mulhsu x26, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x26, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
mulhsu x15, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x28, 0x0000000100000000 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
mulhsu x30, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x7, 0x0000000100000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
mulhsu x20, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x7, 0x0000000100000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
mulhsu x20, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x28, 0x0000000100000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
mulhsu x27, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x18, 0x0000000100000000 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
mulhsu x28, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000100000000 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
mulhsu x13, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000100000000 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
mulhsu x26, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x7, 0x0000000100000000 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
mulhsu x28, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000100000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
mulhsu x31, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000100000000 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x17, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x0000000100000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x2, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x22, 0x0000000100000000 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
mulhsu x5, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x12, 0x0000000100000000 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
mulhsu x7, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x23, 0x0000000100000000 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
mulhsu x8, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x25, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
mulhsu x18, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x13, 0x0000000100000000 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
mulhsu x15, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x30, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
mulhsu x25, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x27, 0x0000000100000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
mulhsu x14, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x19, 0x0000000100000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
mulhsu x2, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x24, 0x0000000100000001 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
mulhsu x18, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x6, 0x0000000100000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
mulhsu x25, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000100000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
mulhsu x9, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000100000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
mulhsu x24, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x25, 0x0000000100000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
mulhsu x30, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000100000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
mulhsu x12, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x5, 0x0000000100000001 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x30, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000100000001 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x31, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x12, 0x0000000100000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
mulhsu x30, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x21, 0x0000000100000001 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
mulhsu x31, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x11, 0x0000000100000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mulhsu x6, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x22, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
mulhsu x12, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x15, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
mulhsu x5, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x9619a0230b6ca632 # initialize rs1
li x0, 0x49e7593b51171cdb # initialize rs2
mulhsu x24, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x128245ed113d7312 # initialize rs1
li x1, 0xefce297b9a4b5cd6 # initialize rs2
mulhsu x22, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x6a80ae4d47416d4e # initialize rs1
li x2, 0xb7e6d729090424c5 # initialize rs2
mulhsu x9, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x655baa994a309455 # initialize rs1
li x3, 0x41416bd4105473d3 # initialize rs2
mulhsu x13, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5a7f729b13b96721 # initialize rs1
li x4, 0xfa92bc53a7babaf7 # initialize rs2
mulhsu x19, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x606f54df36051445 # initialize rs1
li x5, 0x8da169addc581119 # initialize rs2
mulhsu x23, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x84cce74042a98625 # initialize rs1
li x6, 0x46f15c1126bcc464 # initialize rs2
mulhsu x25, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf6a51df7809871f4 # initialize rs1
li x7, 0x2ad17de257b112c5 # initialize rs2
mulhsu x31, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xa2c06f2c6bae1101 # initialize rs1
li x8, 0xc631b2987df7a3dc # initialize rs2
mulhsu x11, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x2f698ab8638f2c82 # initialize rs1
li x9, 0xe2ac105bd3e6d7fd # initialize rs2
mulhsu x18, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x8f063a3159d839c2 # initialize rs1
li x10, 0x9d09ae82f0fa77d0 # initialize rs2
mulhsu x14, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x79001b068e654d2a # initialize rs1
li x11, 0x67dcb96278d692d7 # initialize rs2
mulhsu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x30cc0e8d2bbcd73b # initialize rs1
li x12, 0xfb954acfbe185813 # initialize rs2
mulhsu x24, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xa69bd98c7c5fff62 # initialize rs1
li x13, 0x5b513fc5b8f99ba0 # initialize rs2
mulhsu x15, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x4940beeac1999e1b # initialize rs1
li x14, 0x59769749b61d3109 # initialize rs2
mulhsu x30, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xdcb6f5562c400b35 # initialize rs1
li x15, 0xbe2c0f77ea40f958 # initialize rs2
mulhsu x20, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x87ee37333b16d307 # initialize rs1
li x16, 0x1e7ef0fb69cebdbf # initialize rs2
mulhsu x26, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x58c3fd8bb09bbc0c # initialize rs1
li x17, 0x88332422efc43aef # initialize rs2
mulhsu x2, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x46f7d6337b16d49e # initialize rs1
li x18, 0x9b6850f64e535394 # initialize rs2
mulhsu x13, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x6ec5b919a6b8b5be # initialize rs1
li x19, 0x4acdcb5d4fe9b318 # initialize rs2
mulhsu x25, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xdcadaf78ddaab707 # initialize rs1
li x20, 0x1bde42c714180785 # initialize rs2
mulhsu x16, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x95dd27337d481753 # initialize rs1
li x21, 0xe56b5550c76fcf56 # initialize rs2
mulhsu x14, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x9e550e9bcd5ea3e3 # initialize rs1
li x22, 0xc6b72f5ff8360e73 # initialize rs2
mulhsu x17, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xf9613a7f08a8b4cf # initialize rs1
li x23, 0xac1544f56c2b479a # initialize rs2
mulhsu x5, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x1f55d5686f85d317 # initialize rs1
li x24, 0xe92899a0e96c56be # initialize rs2
mulhsu x3, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x307d0b0690c2d266 # initialize rs1
li x25, 0x82f7ba5773edb0e0 # initialize rs2
mulhsu x17, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xb124c271942593c2 # initialize rs1
li x26, 0xc479e52a909079be # initialize rs2
mulhsu x16, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x70bc6753710337ee # initialize rs1
li x27, 0xc169d163eb8839ef # initialize rs2
mulhsu x19, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xeaaacffb187581a8 # initialize rs1
li x28, 0xea1085a4964e1b35 # initialize rs2
mulhsu x15, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x01eb451c56b32a91 # initialize rs1
li x29, 0x51ca93acae2dacf0 # initialize rs2
mulhsu x23, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x7fb234416ff41c06 # initialize rs1
li x30, 0x0f9018ecdc049bb7 # initialize rs2
mulhsu x17, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x8066dbe85f9bde64 # initialize rs1
li x31, 0x11ebf192f1a4f4d4 # initialize rs2
mulhsu x17, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x689496af37c5c662 # initialize rs1
li x18, 0xfb76691ebc66d17c # initialize rs2
mulhsu x0, x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x451accc04db526ed # initialize rs1
li x15, 0x3c712f6261404bd2 # initialize rs2
mulhsu x1, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x85795838b44ce21f # initialize rs1
li x12, 0x6def5dcc64f7b902 # initialize rs2
mulhsu x2, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xe16d3168934dd050 # initialize rs1
li x3, 0x65f5d4aa57cf019d # initialize rs2
mulhsu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x483ecdcadf45692d # initialize rs1
li x15, 0xdafa05189c286a3f # initialize rs2
mulhsu x4, x4, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9637716a0ff74594 # initialize rs1
li x29, 0xcb9d2a90c87ad4a4 # initialize rs2
mulhsu x5, x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x490cc848591ad4b9 # initialize rs1
li x4, 0xb81dca121aa93a92 # initialize rs2
mulhsu x6, x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x16caeae6d15e1790 # initialize rs1
li x14, 0xe5fdb67383e11d42 # initialize rs2
mulhsu x7, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x11d4314586f54d99 # initialize rs1
li x21, 0xdecde0ab65e4495b # initialize rs2
mulhsu x8, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x7e76c9873e99e365 # initialize rs1
li x24, 0x773f294141cdb849 # initialize rs2
mulhsu x9, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x22d6a002c8f96fd7 # initialize rs1
li x6, 0x1c15e5f480bc27d9 # initialize rs2
mulhsu x10, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x848babf2a67c0f03 # initialize rs1
li x14, 0x4aa61daa6c256571 # initialize rs2
mulhsu x11, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x399ceb9010cb6441 # initialize rs1
li x3, 0x278ddfbf8c12bd91 # initialize rs2
mulhsu x12, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x9e6eade3a0283798 # initialize rs1
li x3, 0x6697ca7aead9e65d # initialize rs2
mulhsu x13, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x76d1d481c35d682b # initialize rs1
li x8, 0xb138cfb12465525e # initialize rs2
mulhsu x14, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xccbb10683100d72c # initialize rs1
li x3, 0x7450121e40da24c6 # initialize rs2
mulhsu x15, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x0cdaa55379d7bd14 # initialize rs1
li x9, 0xc4d0b7723adc721a # initialize rs2
mulhsu x16, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xdc6df153c87b76cc # initialize rs1
li x19, 0x4af22b3d8f74fcf4 # initialize rs2
mulhsu x17, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe32bec34f9dd92c6 # initialize rs1
li x19, 0x34ac85fe1087bd51 # initialize rs2
mulhsu x18, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa5ef0f660b440f78 # initialize rs1
li x30, 0xdd62ebcf884b7faa # initialize rs2
mulhsu x19, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xecbd6007d0cf3510 # initialize rs1
li x9, 0xd597db28cb8918ac # initialize rs2
mulhsu x20, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2c8771ba780783b9 # initialize rs1
li x11, 0xb946e28800652c1d # initialize rs2
mulhsu x21, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb7bf45f6da8ba2d8 # initialize rs1
li x21, 0xba12ea5d174f228d # initialize rs2
mulhsu x22, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x9c8283f3f5267107 # initialize rs1
li x14, 0x42fda078d3d55bd2 # initialize rs2
mulhsu x23, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x8a8603d1fa363305 # initialize rs1
li x28, 0x2596dc09d3c9aefb # initialize rs2
mulhsu x24, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x81c6bf3a27b17d86 # initialize rs1
li x17, 0xcf824f839cae81e7 # initialize rs2
mulhsu x25, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2612629edc9d6a2d # initialize rs1
li x23, 0xb7638392bdb066ce # initialize rs2
mulhsu x26, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x0d01082efd28daf0 # initialize rs1
li x11, 0x3b6c3b8addc4953a # initialize rs2
mulhsu x27, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xaa6c00550a4373a4 # initialize rs1
li x8, 0x9c6ad222a56e57fd # initialize rs2
mulhsu x28, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x9d2f96561ddb6f0c # initialize rs1
li x11, 0xcc5909ecd3df1c85 # initialize rs2
mulhsu x29, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x5bc8f9524ed2cee2 # initialize rs1
li x15, 0x34e45b07124a4c56 # initialize rs2
mulhsu x30, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa546aa3772d359de # initialize rs1
li x23, 0xc687171ab8852200 # initialize rs2
mulhsu x31, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x28, 0xbb11074ae12bc797 # initialize rs1
li x0, 0x1b88e578701db29a # initialize rs2
mulhsu x0, x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x27, 0x849f33bdb1b655a2 # initialize rs1
li x1, 0x4a5ca373d930a453 # initialize rs2
mulhsu x1, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x1, 0xaeff411cd0ffe581 # initialize rs1
li x2, 0x2f4e349274cc2195 # initialize rs2
mulhsu x2, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x7, 0x58739d2a3667d97b # initialize rs1
li x3, 0x735125362a429ce0 # initialize rs2
mulhsu x3, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0xe3a17fbba4f8531e # initialize rs1
li x4, 0x20ec8d25534bae65 # initialize rs2
mulhsu x4, x18, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x9348bc843daa3724 # initialize rs1
li x5, 0xcad14dd2dd39ee4f # initialize rs2
mulhsu x5, x21, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x9c016d1366b1457e # initialize rs1
li x6, 0x621fd1c6e350fbad # initialize rs2
mulhsu x6, x2, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0xdf774542fb074919 # initialize rs1
li x7, 0xadbf42c1a7e7998f # initialize rs2
mulhsu x7, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x25, 0x6501873e5db5f112 # initialize rs1
li x8, 0x81644412432a0751 # initialize rs2
mulhsu x8, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x26, 0x2425776a895ff703 # initialize rs1
li x9, 0x1c238677db728a35 # initialize rs2
mulhsu x9, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x15, 0xb22f75d1cf3b10ec # initialize rs1
li x10, 0x08178250ebb78360 # initialize rs2
mulhsu x10, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x6, 0x16132ba02ac74d2e # initialize rs1
li x11, 0x73f4fe537fca2a9a # initialize rs2
mulhsu x11, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x9, 0xa2728da29de9ccdd # initialize rs1
li x12, 0x99c8a16e47c918bc # initialize rs2
mulhsu x12, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x30, 0x6ded49c063fd637a # initialize rs1
li x13, 0xd62a7b35f40c2543 # initialize rs2
mulhsu x13, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x23, 0xab8a34028f31126c # initialize rs1
li x14, 0xc6abf6655c370f94 # initialize rs2
mulhsu x14, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x10, 0x43d0ca82ca7fdf08 # initialize rs1
li x15, 0xca49d7627b9ef67c # initialize rs2
mulhsu x15, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x1, 0x0090b3c0718ff329 # initialize rs1
li x16, 0x88b141674d06bf1d # initialize rs2
mulhsu x16, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x9, 0xfb7ee05856d1b2c9 # initialize rs1
li x17, 0xa425b27303d92cdd # initialize rs2
mulhsu x17, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x15, 0xabb0048e089d7d31 # initialize rs1
li x18, 0xde90dfe8c3f0faaa # initialize rs2
mulhsu x18, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x25, 0x91d8b82004b546f9 # initialize rs1
li x19, 0x66d4cb1bcd6137d8 # initialize rs2
mulhsu x19, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x15, 0xb2b39c1c8c4af81d # initialize rs1
li x20, 0x94fd5de35290cd66 # initialize rs2
mulhsu x20, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x8, 0x452d040d258d7817 # initialize rs1
li x21, 0x86705307c46c9635 # initialize rs2
mulhsu x21, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x30, 0x77266485520bc8a1 # initialize rs1
li x22, 0xece512079f3b292f # initialize rs2
mulhsu x22, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x3e3b3fba0a4e6d7d # initialize rs1
li x23, 0x78248a70f86fe8a8 # initialize rs2
mulhsu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x29, 0x0c6f8090663a753c # initialize rs1
li x24, 0x74c7c34c6a526d8e # initialize rs2
mulhsu x24, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x9, 0xdd136424871966f1 # initialize rs1
li x25, 0xba0a0e82f7183dda # initialize rs2
mulhsu x25, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x17, 0x3f3674d8f8dbcc37 # initialize rs1
li x26, 0xb00dc77879d4f59b # initialize rs2
mulhsu x26, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x11, 0xbdb1a150712e637d # initialize rs1
li x27, 0x7fa3ff99e16149b8 # initialize rs2
mulhsu x27, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x26, 0x60e4e0e2fa06aa6b # initialize rs1
li x28, 0x9812ea7a5a672843 # initialize rs2
mulhsu x28, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x30, 0x1dfd0a727a73c451 # initialize rs1
li x29, 0xd12fa489888d0a3d # initialize rs2
mulhsu x29, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x8, 0xe9d951a815587b34 # initialize rs1
li x30, 0xdbed136b3dd3aada # initialize rs2
mulhsu x30, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x29, 0xecb9e7009e869dbe # initialize rs1
li x31, 0x865afb9e162ed85d # initialize rs2
mulhsu x31, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x7ba00a264e1384e7 # initialize rs1
li x0, 0xaa9be6a8db49c67f # initialize rs2
mulhsu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x37d7b080c4c89b1b # initialize rs1
li x1, 0xbebbbf874587ae36 # initialize rs2
mulhsu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xd1164ec00d0f7f0a # initialize rs1
li x2, 0x5a1c4ba5e8761afc # initialize rs2
mulhsu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xdcf24e4247b5ffda # initialize rs1
li x3, 0x9f2a56f2658aceea # initialize rs2
mulhsu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9f0ccf75ca5e92e1 # initialize rs1
li x4, 0x0621c3d7d61636a8 # initialize rs2
mulhsu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb435d53629c148cb # initialize rs1
li x5, 0xbc83bcfd2e1a9efe # initialize rs2
mulhsu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x64b141ac8f98b859 # initialize rs1
li x6, 0xa6612bfa1de297b1 # initialize rs2
mulhsu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5f4edc4efcb250db # initialize rs1
li x7, 0xde9b46dd88e1aa9f # initialize rs2
mulhsu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x771ab508fa6d1761 # initialize rs1
li x8, 0x199168bcb6a2bf39 # initialize rs2
mulhsu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xde95cfc032ea77b3 # initialize rs1
li x9, 0xbffcce45f9fcd4be # initialize rs2
mulhsu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x086d82411f99e7b8 # initialize rs1
li x10, 0x7f7066be1d3bee8a # initialize rs2
mulhsu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x830eb58e6b10a608 # initialize rs1
li x11, 0x9e5b94cab2cc9be4 # initialize rs2
mulhsu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x10e737bbbcca6bb6 # initialize rs1
li x12, 0x9a0b034bc05fa580 # initialize rs2
mulhsu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xa0d9770169c9fdba # initialize rs1
li x13, 0x16fef4bddb469220 # initialize rs2
mulhsu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x81035044b9f56e9e # initialize rs1
li x14, 0xdbdfed6ead96ce9e # initialize rs2
mulhsu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x575130c52c0b3a08 # initialize rs1
li x15, 0x3ec58129610f9e0d # initialize rs2
mulhsu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x85364ad850939b51 # initialize rs1
li x16, 0x21a2a94a4e2cf319 # initialize rs2
mulhsu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xbde2bd5948c0c9fb # initialize rs1
li x17, 0x8cf2b13fc27b123c # initialize rs2
mulhsu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xa7bdd607fc984690 # initialize rs1
li x18, 0x65007fc3f0befb11 # initialize rs2
mulhsu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x6247ab1c4cc5d250 # initialize rs1
li x19, 0x17259403ea99cf68 # initialize rs2
mulhsu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x34d135bf46f765b0 # initialize rs1
li x20, 0x4648d9c872174191 # initialize rs2
mulhsu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x24005f97dc63683f # initialize rs1
li x21, 0xa88903913eb435ff # initialize rs2
mulhsu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x7f9331870b26b1dd # initialize rs1
li x22, 0xafd1f9d5aaf171fc # initialize rs2
mulhsu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x3b009a9d5502756e # initialize rs1
li x23, 0xafe95d14da62759b # initialize rs2
mulhsu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xae030e41b0f313f4 # initialize rs1
li x24, 0xa74801c3937829f7 # initialize rs2
mulhsu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x744b9c3c87ee5cbc # initialize rs1
li x25, 0x5d5783134dc22558 # initialize rs2
mulhsu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xe1d3c4168fae1b56 # initialize rs1
li x26, 0x9fcaeb5f3b163850 # initialize rs2
mulhsu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x10b4830a817ccdb7 # initialize rs1
li x27, 0x33c77d5e72ad1641 # initialize rs2
mulhsu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x5fb203cc09968de3 # initialize rs1
li x28, 0x19d6f246f54aaf66 # initialize rs2
mulhsu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xc84a2bb0b584236e # initialize rs1
li x29, 0xa40381d36f3f2ab4 # initialize rs2
mulhsu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xcdc4fbe131056194 # initialize rs1
li x30, 0xd21508c9785eb4ca # initialize rs2
mulhsu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x5a5e75c458d62503 # initialize rs1
li x31, 0x71face3eaea29a32 # initialize rs2
mulhsu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x31, x22 # perform first operation
mulhsu x15, x21, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x2, x16 # perform first operation
mulhsu x5, x9, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x21, x12 # perform first operation
mulhsu x5, x10, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x14, x8 # perform first operation
mulhsu x25, x16, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x31, x1 # perform first operation
mulhsu x2, x25, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x16, x14 # perform first operation
mulhsu x26, x12, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x25, x30 # perform first operation
mulhsu x23, x28, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x30, x28 # perform first operation
mulhsu x10, x9, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x8, x28 # perform first operation
mulhsu x27, x20, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x31, x9 # perform first operation
mulhsu x31, x30, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x6, x12 # perform first operation
mulhsu x12, x16, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x17, x19 # perform first operation
mulhsu x15, x10, x18 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-mulh.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x2b019a472427a489 # initialize rs1
li x28, 0x8485b837997ad6ba # initialize rs2
mulh x6, x0, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x6e655f7bd0b5e046 # initialize rs1
li x19, 0x7c7a9d921805a1fe # initialize rs2
mulh x11, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x7d4baa849f2f4d50 # initialize rs1
li x28, 0x6298ca94867e144d # initialize rs2
mulh x31, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x666fea99f21fc3ca # initialize rs1
li x5, 0x96b1fcce09192ea4 # initialize rs2
mulh x25, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7d0e26bbfde00c9f # initialize rs1
li x28, 0x79475491aabb9ad9 # initialize rs2
mulh x2, x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6b6b24e41542bc61 # initialize rs1
li x19, 0x79eb1a64ee88d7e2 # initialize rs2
mulh x18, x5, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x261e1964ae39a125 # initialize rs1
li x13, 0xeed6d5e13cd264e5 # initialize rs2
mulh x2, x6, x13 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe18465033e05bf6d # initialize rs1
li x5, 0x1a986d5eeca0ed92 # initialize rs2
mulh x19, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9253d902e89942fb # initialize rs1
li x9, 0xa544c1895e6b4a1e # initialize rs2
mulh x16, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x47b6d67ca5e563a5 # initialize rs1
li x28, 0x3b99970057f94609 # initialize rs2
mulh x23, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb22665080a975b25 # initialize rs1
li x12, 0x01e948c7369b5850 # initialize rs2
mulh x15, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x0a10e7b097dfd12e # initialize rs1
li x25, 0xef688bb672674e91 # initialize rs2
mulh x9, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xab833c81fb4c8460 # initialize rs1
li x2, 0x761445addccaaa21 # initialize rs2
mulh x24, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xbde1aea89c1711eb # initialize rs1
li x6, 0x8812c4477cc47cfb # initialize rs2
mulh x8, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x89a52996258848de # initialize rs1
li x19, 0x07d4b04601688718 # initialize rs2
mulh x21, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x2335539a3625cf85 # initialize rs1
li x29, 0xb7ce2441a7b78a5c # initialize rs2
mulh x6, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x898dd4da4f248690 # initialize rs1
li x1, 0x615762beb179d2b5 # initialize rs2
mulh x8, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x4b81a1f3fdb89b23 # initialize rs1
li x7, 0x7d3d9f68d88fc697 # initialize rs2
mulh x27, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xe6735012cee645c4 # initialize rs1
li x23, 0x708bbac82ce1d522 # initialize rs2
mulh x10, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xc43ac81ad4e59d53 # initialize rs1
li x14, 0x0b9c6987bc4b94d2 # initialize rs2
mulh x23, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xee0b80241ad72223 # initialize rs1
li x3, 0xdd5a0460f3777de3 # initialize rs2
mulh x26, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x429dee92bd8887b2 # initialize rs1
li x28, 0xf821c629e1e65407 # initialize rs2
mulh x23, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x4c8c367ae4b2bd6c # initialize rs1
li x2, 0xc0f6689621dbd3bc # initialize rs2
mulh x27, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb4b0bf0ec7d47be5 # initialize rs1
li x7, 0x7c5356b00e40f52d # initialize rs2
mulh x2, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x72a8c02b093be98a # initialize rs1
li x17, 0x4104d2ec8c133751 # initialize rs2
mulh x30, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x664878c038fb17e2 # initialize rs1
li x1, 0x68b60bce03736311 # initialize rs2
mulh x22, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xbc6b6a6c54607916 # initialize rs1
li x30, 0xdddfacf7c0f599b8 # initialize rs2
mulh x6, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xeddad03428ecc72c # initialize rs1
li x11, 0x0c268657e260c599 # initialize rs2
mulh x1, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xc8b6089538ff6774 # initialize rs1
li x11, 0x82a7ab543208eb09 # initialize rs2
mulh x14, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xb99b54fb9dbaf5a4 # initialize rs1
li x28, 0x3db5eacda028c872 # initialize rs2
mulh x21, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x71b0a2fd262d898d # initialize rs1
li x18, 0xa5ba2b1046a795c1 # initialize rs2
mulh x11, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x8c3d01d3c8189b9e # initialize rs1
li x14, 0xb51631acdd8a5cb1 # initialize rs2
mulh x12, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x23, 0xbfab06704afb61cf # initialize rs1
li x0, 0x4e146f60cdd24804 # initialize rs2
mulh x11, x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x5, 0x39a54f677fb430e0 # initialize rs1
li x1, 0xdfbac7af97fea15e # initialize rs2
mulh x16, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x31, 0xab85d3444e02d517 # initialize rs1
li x2, 0xed1d35cec17c5eb0 # initialize rs2
mulh x14, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x31, 0xfd01fd2d88e4941d # initialize rs1
li x3, 0x24b7e490ec396390 # initialize rs2
mulh x16, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x779e428cf5ebb374 # initialize rs1
li x4, 0x318f4537259ddf32 # initialize rs2
mulh x20, x23, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x26, 0x58ce66f99bd01326 # initialize rs1
li x5, 0x381f009fb7af5f2b # initialize rs2
mulh x12, x26, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x08431d66d84c3920 # initialize rs1
li x6, 0x969609902bdf41aa # initialize rs2
mulh x15, x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x4a753bb2c6e61c70 # initialize rs1
li x7, 0x430ba67114ecd7cf # initialize rs2
mulh x20, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0x8b5b6b8c425fb278 # initialize rs1
li x8, 0x5f70248616bacd46 # initialize rs2
mulh x19, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x22, 0x30e705558967a6af # initialize rs1
li x9, 0x0f6802394795aba5 # initialize rs2
mulh x1, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x14, 0x015c66bb993ec6d7 # initialize rs1
li x10, 0xc3483849a98b85a0 # initialize rs2
mulh x8, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x17, 0x8430693ab87a1334 # initialize rs1
li x11, 0x4f5307a0fd50bcbf # initialize rs2
mulh x12, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x31, 0x66a336574fc23c18 # initialize rs1
li x12, 0x9f614e9ca0cfd601 # initialize rs2
mulh x23, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x20, 0x3f2eeaeead464bfc # initialize rs1
li x13, 0xa8e0dd0008d58be0 # initialize rs2
mulh x2, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x1, 0xab05d7c6c4dce3d9 # initialize rs1
li x14, 0x5431bbf333eca370 # initialize rs2
mulh x27, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x20, 0x858d7fd070242b66 # initialize rs1
li x15, 0x5a439106652bd99b # initialize rs2
mulh x8, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x1, 0x9860181ecb2330c6 # initialize rs1
li x16, 0xe4279381ecf298ba # initialize rs2
mulh x22, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x5, 0xf5a8bd94e3b915f1 # initialize rs1
li x17, 0x32b4e31f9e63cd66 # initialize rs2
mulh x18, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x29, 0xacbb3252d0511cd6 # initialize rs1
li x18, 0xbbf193d12d5bb516 # initialize rs2
mulh x15, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x15, 0xe9b3a823aea1bc69 # initialize rs1
li x19, 0x24bf121a8538d60a # initialize rs2
mulh x24, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x28, 0x0eafa30b57fe91a5 # initialize rs1
li x20, 0x771b3f5dbdd6ed3f # initialize rs2
mulh x13, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x25, 0xa94d6f60bc2f6776 # initialize rs1
li x21, 0x4edbc0150a690ab9 # initialize rs2
mulh x26, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x23, 0x00b08e4385a2a4e7 # initialize rs1
li x22, 0xfcc3ade7130db407 # initialize rs2
mulh x14, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x17, 0x1e98b148526c5c86 # initialize rs1
li x23, 0xe427a162893736b1 # initialize rs2
mulh x20, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x6, 0x02eb60b103cfc76c # initialize rs1
li x24, 0x84077a151cc9e701 # initialize rs2
mulh x15, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x14, 0x4413cc5a2ccf450f # initialize rs1
li x25, 0xd74ead0956e7fcad # initialize rs2
mulh x1, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x12, 0x62bbc6f2f9160df6 # initialize rs1
li x26, 0x102c128072ac1148 # initialize rs2
mulh x15, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0xb9bc82be9a4ac26d # initialize rs1
li x27, 0x165932a8069f9ae3 # initialize rs2
mulh x17, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x12, 0x8f64d362a239c983 # initialize rs1
li x28, 0x0795143c8e75850a # initialize rs2
mulh x18, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x26, 0xeac9dbc48d076b48 # initialize rs1
li x29, 0x07a62358d448d7f9 # initialize rs2
mulh x16, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x7, 0xac17d17700b560f0 # initialize rs1
li x30, 0x695945bcf51ce3cd # initialize rs2
mulh x15, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x5, 0xb806f811f5704e3d # initialize rs1
li x31, 0xafa0ec9ce11cceb8 # initialize rs2
mulh x2, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 504)

# Testcase cp_rd (Test destination rd = x0)
li x11, 0x12ecff13fe2374c2 # initialize rs1
li x26, 0xef56bd7fc2a2219b # initialize rs2
mulh x0, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x19, 0xaeeb6b1551bb8654 # initialize rs1
li x20, 0x2dd93a8b4dad7b11 # initialize rs2
mulh x1, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0xa6726023e6619f41 # initialize rs1
li x12, 0xc86bc0a5aef65f26 # initialize rs2
mulh x2, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x17, 0x6066526b0f5e54b3 # initialize rs1
li x10, 0x03c6638b9dc7ff71 # initialize rs2
mulh x3, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x52036ca0152524ee # initialize rs1
li x3, 0xced705b8dd1bba7c # initialize rs2
mulh x4, x29, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0x0036db379bf8d7a6 # initialize rs1
li x28, 0x22b233fbedc9c5c1 # initialize rs2
mulh x5, x4, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x414c08638ce1ef6a # initialize rs1
li x20, 0x3225365c6ddcc441 # initialize rs2
mulh x6, x1, x20 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0x97fd24bc9787b78d # initialize rs1
li x16, 0xa448ef8f1a92037b # initialize rs2
mulh x7, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x2, 0x49c11412c7dd4c0a # initialize rs1
li x14, 0x24e2038eedee4423 # initialize rs2
mulh x8, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x17, 0x151cb813c899b951 # initialize rs1
li x6, 0x242b4e96edfae4c8 # initialize rs2
mulh x9, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x414c4f4146bd93cc # initialize rs1
li x25, 0x44a9c534865371d1 # initialize rs2
mulh x10, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x31, 0xf7a5fbade48043f9 # initialize rs1
li x27, 0xf2d40041d66d4d65 # initialize rs2
mulh x11, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0x43a7f82ee717aadb # initialize rs1
li x25, 0x5cc7cee8e6c651ac # initialize rs2
mulh x12, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0x2a8ff92f1c68d10a # initialize rs1
li x26, 0xdced3d09a848fa2c # initialize rs2
mulh x13, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x5, 0x85d4b39ce42c1a9d # initialize rs1
li x13, 0x0d6b2757195693f4 # initialize rs2
mulh x14, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x21, 0xa124af07ef465cf1 # initialize rs1
li x24, 0xb85190f2f123bdb1 # initialize rs2
mulh x15, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0x24cad08ad4069144 # initialize rs1
li x12, 0x713bd3bb7603814e # initialize rs2
mulh x16, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x19, 0xdd3b7acd2659bb91 # initialize rs1
li x31, 0x8cd340c105c2221e # initialize rs2
mulh x17, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x9, 0x3fa4497f709165c8 # initialize rs1
li x15, 0x1ce583e9587572a5 # initialize rs2
mulh x18, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x8, 0x433744369b6fb262 # initialize rs1
li x19, 0xb2719c073bf6e0a0 # initialize rs2
mulh x19, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x16, 0x95b73873e30cb8b2 # initialize rs1
li x15, 0x63695d535091df15 # initialize rs2
mulh x20, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x2, 0x35dd75772ed7cf5c # initialize rs1
li x18, 0x437c48e954546ae8 # initialize rs2
mulh x21, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x11, 0x70067fa6c4fb22b9 # initialize rs1
li x16, 0xb3e207b27dcb36cc # initialize rs2
mulh x22, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0x9c815873aecf1ff4 # initialize rs1
li x15, 0x933c043f9ec4fcac # initialize rs2
mulh x23, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x21, 0xc299898295a7643e # initialize rs1
li x24, 0x4cd5def89098841a # initialize rs2
mulh x24, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x23, 0x6e7a19da658d5339 # initialize rs1
li x28, 0xfbbcb5e8983a6064 # initialize rs2
mulh x25, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x22, 0xc164f04e3e17d0cc # initialize rs1
li x16, 0x92d0dc7d8019f4d0 # initialize rs2
mulh x26, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x2, 0x69ea1e2cafe2e712 # initialize rs1
li x25, 0xd09c2f96648622a2 # initialize rs2
mulh x27, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x15, 0x579c364c369171a3 # initialize rs1
li x21, 0xb91bc27e54899c80 # initialize rs2
mulh x28, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x26, 0x50dfe1831a5788e7 # initialize rs1
li x16, 0x2ed698be2de939d2 # initialize rs2
mulh x29, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x20, 0xc6327d80a4ade92a # initialize rs1
li x2, 0xd9d288d9d1630bae # initialize rs2
mulh x30, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xdeab4569045e9b9e # initialize rs1
li x3, 0x1fcb8f1042437bd7 # initialize rs2
mulh x31, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x11, 0x0000000000000000 # initialize rs1
li x14, 0x6ee88c3ba9bf6168 # initialize rs2
mulh x21, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x0000000000000001 # initialize rs1
li x19, 0x13a093b587bd98be # initialize rs2
mulh x17, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x1, 0x0000000000000002 # initialize rs1
li x12, 0x2329ef0378765941 # initialize rs2
mulh x6, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x27, 0x8000000000000000 # initialize rs1
li x6, 0x3e3b8c2ab26d9560 # initialize rs2
mulh x5, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x20, 0x8000000000000001 # initialize rs1
li x31, 0x33d09a272d64f896 # initialize rs2
mulh x19, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x16, 0x7fffffffffffffff # initialize rs1
li x9, 0x3b2f8a0fcdbd0c53 # initialize rs2
mulh x17, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x18, 0x7ffffffffffffffe # initialize rs1
li x14, 0x969094273f449174 # initialize rs2
mulh x17, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x7, 0x869cb5b96cd7859b # initialize rs2
mulh x27, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x20, 0xfffffffffffffffe # initialize rs1
li x2, 0x8dcb53087ea567b5 # initialize rs2
mulh x17, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x40cd562935ff866c # initialize rs2
mulh x5, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x22376c86a69f46aa # initialize rs2
mulh x15, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x3, 0x5555555555555555 # initialize rs1
li x25, 0x5ba7cb5758b075ce # initialize rs2
mulh x20, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0x00000000ffffffff # initialize rs1
li x2, 0x9a84b10bb068e326 # initialize rs2
mulh x25, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x10, 0x00000000fffffffe # initialize rs1
li x17, 0xd11c42c22591fa20 # initialize rs2
mulh x31, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x2, 0x0000000100000000 # initialize rs1
li x20, 0x3550b2ff432e4576 # initialize rs2
mulh x15, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x1, 0x0000000100000001 # initialize rs1
li x6, 0xe82ea1c09836a063 # initialize rs2
mulh x2, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x14, 0x017f2442ff4d0c32 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
mulh x23, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x22, 0xb43e6d47639e5b5a # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
mulh x2, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x6, 0xd7766b87859e5e43 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
mulh x3, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x21, 0x85f6e4231818fe18 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
mulh x19, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x16, 0xb643797f33f152e1 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
mulh x13, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x13, 0xcf9a91461410525a # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
mulh x19, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x7, 0x9ebf9df5a1268d54 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
mulh x1, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x8, 0xbab63708b061b6e8 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mulh x6, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x28, 0xea8b6d1c3ff193f5 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
mulh x17, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x29, 0x717471ae72bdc953 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
mulh x31, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x31, 0x1275e0c46088c541 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x21, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x19, 0x8ba22b82bb1dcb6c # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
mulh x31, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x26, 0x16e42fccc486b4b9 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
mulh x28, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x26, 0x2bddaf6088146880 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
mulh x25, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x25, 0xf96167053e1d6b4b # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mulh x13, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x10, 0x89e6c75eae4961a9 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
mulh x16, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x5, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
mulh x23, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x21, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
mulh x25, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x11, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
mulh x1, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x10, 0x0000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
mulh x13, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x16, 0x0000000000000000 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
mulh x3, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
mulh x30, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000000000000 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
mulh x21, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000000 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
mulh x7, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
mulh x17, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000000000000 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
mulh x14, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x0000000000000000 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x2, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x8, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
mulh x21, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x20, 0x0000000000000000 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
mulh x10, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x30, 0x0000000000000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
mulh x27, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x11, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mulh x8, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x6, 0x0000000000000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
mulh x9, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x17, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
mulh x6, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x27, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
mulh x12, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x24, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
mulh x23, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x11, 0x0000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
mulh x18, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x24, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
mulh x9, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000000000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
mulh x17, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000000000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
mulh x11, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
mulh x17, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000000000001 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
mulh x6, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x5, 0x0000000000000001 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
mulh x27, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000000000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x28, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x13, 0x0000000000000001 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
mulh x18, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x1, 0x0000000000000001 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
mulh x27, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x9, 0x0000000000000001 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
mulh x25, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x1, 0x0000000000000001 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
mulh x5, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x2, 0x0000000000000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
mulh x10, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x14, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
mulh x22, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x11, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
mulh x10, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x30, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
mulh x10, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x12, 0x0000000000000002 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
mulh x9, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x21, 0x0000000000000002 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
mulh x17, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
mulh x18, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x17, 0x0000000000000002 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
mulh x30, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x1, 0x0000000000000002 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
mulh x25, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000000000002 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
mulh x31, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000000000002 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
mulh x29, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000000000002 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x3, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x28, 0x0000000000000002 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
mulh x9, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x2, 0x0000000000000002 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
mulh x19, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
mulh x3, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x2, 0x0000000000000002 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
mulh x7, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x19, 0x0000000000000002 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
mulh x14, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x19, 0x8000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
mulh x6, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x17, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
mulh x14, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x6, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
mulh x22, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x31, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
mulh x10, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x13, 0x8000000000000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
mulh x5, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x1, 0x8000000000000000 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
mulh x5, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x18, 0x8000000000000000 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
mulh x23, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x28, 0x8000000000000000 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
mulh x22, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x3, 0x8000000000000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
mulh x23, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x13, 0x8000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
mulh x10, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x8000000000000000 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x12, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x2, 0x8000000000000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulh x16, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x16, 0x8000000000000000 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
mulh x17, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x18, 0x8000000000000000 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
mulh x21, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x5, 0x8000000000000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
mulh x26, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x7, 0x8000000000000000 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulh x15, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x15, 0x8000000000000001 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
mulh x24, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x20, 0x8000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
mulh x24, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x26, 0x8000000000000001 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
mulh x18, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x26, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
mulh x2, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x1, 0x8000000000000001 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
mulh x17, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x21, 0x8000000000000001 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
mulh x29, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x31, 0x8000000000000001 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
mulh x20, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x26, 0x8000000000000001 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
mulh x15, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x7, 0x8000000000000001 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
mulh x26, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x6, 0x8000000000000001 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
mulh x22, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x8000000000000001 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x16, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x18, 0x8000000000000001 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
mulh x10, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x12, 0x8000000000000001 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
mulh x19, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x28, 0x8000000000000001 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
mulh x2, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x29, 0x8000000000000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
mulh x16, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x26, 0x8000000000000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
mulh x5, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x23, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
mulh x26, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x20, 0x7fffffffffffffff # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
mulh x8, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x9, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
mulh x5, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x7, 0x7fffffffffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
mulh x25, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x26, 0x7fffffffffffffff # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
mulh x16, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x14, 0x7fffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
mulh x30, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0x7fffffffffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
mulh x28, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x11, 0x7fffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mulh x25, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x18, 0x7fffffffffffffff # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
mulh x13, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x13, 0x7fffffffffffffff # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
mulh x14, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x7fffffffffffffff # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x13, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x27, 0x7fffffffffffffff # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
mulh x19, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
mulh x18, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x30, 0x7fffffffffffffff # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
mulh x11, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x27, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
mulh x31, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x21, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
mulh x26, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x16, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
mulh x6, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x23, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
mulh x25, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x6, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
mulh x3, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
mulh x2, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x15, 0x7ffffffffffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
mulh x5, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
mulh x12, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
mulh x19, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x26, 0x7ffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
mulh x16, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x19, 0x7ffffffffffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
mulh x7, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x20, 0x7ffffffffffffffe # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
mulh x5, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x7ffffffffffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x16, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x15, 0x7ffffffffffffffe # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
mulh x27, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x27, 0x7ffffffffffffffe # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
mulh x14, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x3, 0x7ffffffffffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
mulh x24, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x5, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
mulh x18, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
mulh x6, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x27, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
mulh x11, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x5, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
mulh x8, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x3, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
mulh x11, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x21, 0xffffffffffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
mulh x31, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x3, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
mulh x18, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x12, 0xffffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
mulh x6, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
mulh x20, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulh x29, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x16, 0xffffffffffffffff # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
mulh x3, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x8, 0xffffffffffffffff # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
mulh x26, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0xffffffffffffffff # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x26, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x1, 0xffffffffffffffff # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
mulh x7, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x16, 0xffffffffffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulh x23, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x5, 0xffffffffffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
mulh x21, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x19, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
mulh x10, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x16, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
mulh x30, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x11, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
mulh x13, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x2, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
mulh x27, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x29, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
mulh x19, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x21, 0xfffffffffffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mulh x5, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x2, 0xfffffffffffffffe # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
mulh x11, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x13, 0xfffffffffffffffe # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
mulh x31, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0xfffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
mulh x13, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x13, 0xfffffffffffffffe # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
mulh x1, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
mulh x19, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x1, 0xfffffffffffffffe # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
mulh x25, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xfffffffffffffffe # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x27, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x27, 0xfffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulh x21, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x28, 0xfffffffffffffffe # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
mulh x12, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mulh x10, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x22, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
mulh x31, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x6, 0xfffffffffffffffe # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
mulh x2, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
mulh x21, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
mulh x9, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
mulh x26, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
mulh x3, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
mulh x19, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
mulh x27, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
mulh x20, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
mulh x25, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
mulh x27, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
mulh x30, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x5, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
mulh x2, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
mulh x15, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
mulh x24, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
mulh x18, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
mulh x24, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
mulh x15, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
mulh x17, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
mulh x7, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
mulh x6, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
mulh x24, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
mulh x6, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
mulh x26, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
mulh x1, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
mulh x13, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
mulh x17, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x30, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
mulh x2, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
mulh x3, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
mulh x14, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
mulh x12, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
mulh x30, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x31, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
mulh x1, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x25, 0x5555555555555555 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
mulh x6, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x26, 0x5555555555555555 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
mulh x25, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x25, 0x5555555555555555 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
mulh x23, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x19, 0x5555555555555555 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
mulh x24, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x7, 0x5555555555555555 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
mulh x29, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x17, 0x5555555555555555 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
mulh x10, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x27, 0x5555555555555555 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
mulh x29, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x16, 0x5555555555555555 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
mulh x25, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x13, 0x5555555555555555 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
mulh x18, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x5555555555555555 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x22, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x5, 0x5555555555555555 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
mulh x13, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x13, 0x5555555555555555 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
mulh x24, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x12, 0x5555555555555555 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
mulh x2, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x20, 0x5555555555555555 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
mulh x31, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x13, 0x5555555555555555 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulh x22, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x6, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
mulh x19, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x2, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
mulh x17, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x31, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
mulh x24, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x24, 0x00000000ffffffff # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
mulh x22, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x2, 0x00000000ffffffff # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
mulh x16, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x8, 0x00000000ffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
mulh x16, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
mulh x3, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
mulh x9, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x19, 0x00000000ffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
mulh x7, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x17, 0x00000000ffffffff # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
mulh x1, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x00000000ffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x18, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x20, 0x00000000ffffffff # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
mulh x28, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x10, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
mulh x7, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x29, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
mulh x9, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x10, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
mulh x13, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x27, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
mulh x6, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x8, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
mulh x18, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x18, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
mulh x5, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x14, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
mulh x5, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x17, 0x00000000fffffffe # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
mulh x26, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x2, 0x00000000fffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
mulh x31, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x14, 0x00000000fffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
mulh x10, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0x00000000fffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
mulh x24, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x24, 0x00000000fffffffe # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
mulh x16, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x10, 0x00000000fffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
mulh x20, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x22, 0x00000000fffffffe # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
mulh x20, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x00000000fffffffe # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x16, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x8, 0x00000000fffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
mulh x27, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
mulh x30, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x7, 0x00000000fffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mulh x31, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x25, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
mulh x18, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x6, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
mulh x1, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x19, 0x0000000100000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
mulh x28, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x23, 0x0000000100000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
mulh x6, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x31, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
mulh x18, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x28, 0x0000000100000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
mulh x19, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x8, 0x0000000100000000 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
mulh x12, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mulh x30, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x13, 0x0000000100000000 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
mulh x7, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
mulh x5, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x20, 0x0000000100000000 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
mulh x23, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x19, 0x0000000100000000 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
mulh x8, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000100000000 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x12, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x14, 0x0000000100000000 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
mulh x3, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x13, 0x0000000100000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
mulh x19, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x2, 0x0000000100000000 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mulh x13, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x16, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mulh x19, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x22, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
mulh x2, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x2, 0x0000000100000001 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
mulh x16, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x8, 0x0000000100000001 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
mulh x20, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x7, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
mulh x21, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x19, 0x0000000100000001 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
mulh x16, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x3, 0x0000000100000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
mulh x27, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000001 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mulh x5, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000100000001 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
mulh x25, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x31, 0x0000000100000001 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
mulh x27, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x26, 0x0000000100000001 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
mulh x10, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000100000001 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
mulh x15, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000100000001 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x13, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x29, 0x0000000100000001 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
mulh x14, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
mulh x27, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x16, 0x0000000100000001 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
mulh x5, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x7, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
mulh x17, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x17, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
mulh x23, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x46f6fa23e2cabe95 # initialize rs1
li x0, 0x10e3c45ff3440172 # initialize rs2
mulh x25, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x81d9beac1fa8b005 # initialize rs1
li x1, 0xcc7ab83db7c95d82 # initialize rs2
mulh x14, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe9c0a2de96485efb # initialize rs1
li x2, 0xa016e42d474cdc1d # initialize rs2
mulh x17, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2841b1753102fa8d # initialize rs1
li x3, 0x5decd66c31908462 # initialize rs2
mulh x18, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x410f838dc2c37ad5 # initialize rs1
li x4, 0xa2b66ab57663cabb # initialize rs2
mulh x8, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfc1303dec2bc6da6 # initialize rs1
li x5, 0x9aec81f7d70fa652 # initialize rs2
mulh x21, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcaa92c375dfbab2d # initialize rs1
li x6, 0x31ca4557137ef6d6 # initialize rs2
mulh x18, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9d8e12968f9ee381 # initialize rs1
li x7, 0xb1cc357ce02e20d0 # initialize rs2
mulh x5, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xd1c185da3a62d836 # initialize rs1
li x8, 0x3696e975948e20dc # initialize rs2
mulh x1, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa4c726d34d7a6c73 # initialize rs1
li x9, 0x1c914720c26b3a13 # initialize rs2
mulh x24, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x5240e7e798d26634 # initialize rs1
li x10, 0x776649469ec485b8 # initialize rs2
mulh x17, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x7e52dd50e727a890 # initialize rs1
li x11, 0x15a044584ab09a9a # initialize rs2
mulh x20, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xad84b30026306a54 # initialize rs1
li x12, 0x092cc1bc6fe4cd52 # initialize rs2
mulh x31, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x2ed81e4a26168f5a # initialize rs1
li x13, 0xa9fc2dcdd8eaa04c # initialize rs2
mulh x29, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x92f67c6622d086db # initialize rs1
li x14, 0x3bf22102676b038c # initialize rs2
mulh x10, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x1ca49456fe4a8cfa # initialize rs1
li x15, 0xa60b38616603b80f # initialize rs2
mulh x18, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xcc1ce131e2a288c9 # initialize rs1
li x16, 0x92c6808fee1d81ff # initialize rs2
mulh x26, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x3032c25d688de187 # initialize rs1
li x17, 0x38b0674ee19635ce # initialize rs2
mulh x30, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x37c4616e669b4e6d # initialize rs1
li x18, 0xa50d11d4a6ffa349 # initialize rs2
mulh x11, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x1fae67ec7ffa5b97 # initialize rs1
li x19, 0xa7c3f5848cce8253 # initialize rs2
mulh x28, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x3353c0c7245f8684 # initialize rs1
li x20, 0xc8cf9c6e5480b616 # initialize rs2
mulh x25, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x781330d026ceaf8b # initialize rs1
li x21, 0xfe94e72107124eb0 # initialize rs2
mulh x17, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xfbc3f296d443426c # initialize rs1
li x22, 0x5cb8913e0ee88bba # initialize rs2
mulh x29, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xeb82df99a801cead # initialize rs1
li x23, 0xd265ab21b7f0c949 # initialize rs2
mulh x27, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x735a215047003e73 # initialize rs1
li x24, 0x97d558893e6c235e # initialize rs2
mulh x23, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xeaa4df51bdfc44ed # initialize rs1
li x25, 0xc2f717eadc06b44f # initialize rs2
mulh x26, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xac17cedbb6ef0d97 # initialize rs1
li x26, 0x862d73138ee9b780 # initialize rs2
mulh x9, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xd00c2af1f0cd076c # initialize rs1
li x27, 0xc904615eed1a0433 # initialize rs2
mulh x13, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x3aa643cecd490f13 # initialize rs1
li x28, 0xf3c6ee4ca0b33107 # initialize rs2
mulh x26, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x1794fc8a6d71ef34 # initialize rs1
li x29, 0x28e87ef9bff4e16d # initialize rs2
mulh x30, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x306a0d7c5e842a3d # initialize rs1
li x30, 0xb94dd85f8a2ab94c # initialize rs2
mulh x5, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x8b806cc3be02fca7 # initialize rs1
li x31, 0xb6d1443d22aae32b # initialize rs2
mulh x29, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x3350a7b5f00ce5e8 # initialize rs1
li x15, 0x228af073e60d0993 # initialize rs2
mulh x0, x0, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xbb41430de19ffc1e # initialize rs1
li x22, 0x2ed2d9cb51a3eb35 # initialize rs2
mulh x1, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xfd892c4791b0a659 # initialize rs1
li x21, 0xccf6a4a6d8bb7246 # initialize rs2
mulh x2, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x98800b4ba5fb4f27 # initialize rs1
li x27, 0x239cd86ccfe132e4 # initialize rs2
mulh x3, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x47f1a837c7eae7a8 # initialize rs1
li x16, 0x7aa0bbddab29439a # initialize rs2
mulh x4, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4ff40ca7fc49caa8 # initialize rs1
li x21, 0x0123186f1c42fcfe # initialize rs2
mulh x5, x5, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xff8237be7cf8e91b # initialize rs1
li x8, 0x2cb78c3510b714d8 # initialize rs2
mulh x6, x6, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf04522276363f8c5 # initialize rs1
li x30, 0xed61a5b52176b627 # initialize rs2
mulh x7, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x6d3150d300371a1c # initialize rs1
li x13, 0x9c78c849a5ba3c2e # initialize rs2
mulh x8, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf4c838019ea5acc0 # initialize rs1
li x26, 0x92ee0a9c29aa71d3 # initialize rs2
mulh x9, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x3e4187f60a910672 # initialize rs1
li x20, 0x8956c0e2aeecd037 # initialize rs2
mulh x10, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xfb07154fe916c1d3 # initialize rs1
li x1, 0x7852809b78212236 # initialize rs2
mulh x11, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x824beec65e5198fb # initialize rs1
li x13, 0x53442a402186f938 # initialize rs2
mulh x12, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x4e1cad42fd9095f5 # initialize rs1
li x8, 0xea04bbe46e49db05 # initialize rs2
mulh x13, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x78f5a6dd45811470 # initialize rs1
li x8, 0x35b023b69d041895 # initialize rs2
mulh x14, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa6f940243043a29b # initialize rs1
li x26, 0x46b53dcb0e8ab7b1 # initialize rs2
mulh x15, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x73a6e1f65344de1c # initialize rs1
li x20, 0x9da39293a545e3be # initialize rs2
mulh x16, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1fee855ef05d1045 # initialize rs1
li x25, 0xdf07fdbf54715b7a # initialize rs2
mulh x17, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x4a29d7450135bf8a # initialize rs1
li x23, 0x3229570dc12ae81c # initialize rs2
mulh x18, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa22e2592360488f4 # initialize rs1
li x23, 0x448fa278175a84e3 # initialize rs2
mulh x19, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x6b0e65496fd0a6bb # initialize rs1
li x19, 0x383c8ce5fcc63b82 # initialize rs2
mulh x20, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x5a1b8fc54d27c7b5 # initialize rs1
li x15, 0xa5a58f7e3ab1ae3c # initialize rs2
mulh x21, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xbe85c940b5b2636c # initialize rs1
li x15, 0x9486cca53c5e6f64 # initialize rs2
mulh x22, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xaf8134f30cae0be9 # initialize rs1
li x29, 0xcee968a165cfc01c # initialize rs2
mulh x23, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x04619b78280b2d72 # initialize rs1
li x28, 0x8d89682b34509af4 # initialize rs2
mulh x24, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xc1545b646b76104c # initialize rs1
li x31, 0x6ade29fa9ae93a40 # initialize rs2
mulh x25, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x59835a17b6ef81c7 # initialize rs1
li x29, 0x53e77dcb268606b8 # initialize rs2
mulh x26, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x04db5ec8c4f8fb19 # initialize rs1
li x20, 0x500926bde4f393cf # initialize rs2
mulh x27, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x87b7a199ac8c2e9f # initialize rs1
li x6, 0x052943ee0fb4cd1c # initialize rs2
mulh x28, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x3f7bcf58d1dc7e82 # initialize rs1
li x6, 0x504c1b72d29693c0 # initialize rs2
mulh x29, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x028f554acbefbe19 # initialize rs1
li x11, 0xbfb6cafd77c6b978 # initialize rs2
mulh x30, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x74cb8c3218f202ad # initialize rs1
li x25, 0xcaeb820a80536a69 # initialize rs2
mulh x31, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x23, 0x105be4385f7bb6af # initialize rs1
li x0, 0x2d1b3758fe7832dc # initialize rs2
mulh x0, x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x13, 0x59a9e94c9a9c144e # initialize rs1
li x1, 0xe1ff3e8b0ed3e4e2 # initialize rs2
mulh x1, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x15, 0xca8d59592e633f32 # initialize rs1
li x2, 0x756f75c6bf0fae52 # initialize rs2
mulh x2, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x15, 0xa445b18a6872f06d # initialize rs1
li x3, 0x1d1455e2e2019382 # initialize rs2
mulh x3, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0x5b0c813b09f8ca9b # initialize rs1
li x4, 0x4bfaa00c82edeb53 # initialize rs2
mulh x4, x25, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0xc8f05b7c594993be # initialize rs1
li x5, 0xdeccc8bb0fa8f157 # initialize rs2
mulh x5, x4, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0x765f10ac21013f8c # initialize rs1
li x6, 0xf0687d74e3e1f00c # initialize rs2
mulh x6, x28, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0x8b7f58eea3c47092 # initialize rs1
li x7, 0x245dfd6dd8279e34 # initialize rs2
mulh x7, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xe25a6c9db27b0b1b # initialize rs1
li x8, 0xa9cb77101a6fbbe6 # initialize rs2
mulh x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x12, 0x3f386544894711b2 # initialize rs1
li x9, 0xce0c8d863c06aafc # initialize rs2
mulh x9, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x24, 0x88b70c8a1ea8963d # initialize rs1
li x10, 0x87cb9cae545a7ad3 # initialize rs2
mulh x10, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x26, 0x752d43c4c8116817 # initialize rs1
li x11, 0x12cac251b86a78fe # initialize rs2
mulh x11, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x5, 0x8b87d26fdee56f4f # initialize rs1
li x12, 0x97cf00cc73f186cf # initialize rs2
mulh x12, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x74a144feabaf39e4 # initialize rs1
li x13, 0x6a87155a749eb570 # initialize rs2
mulh x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x6, 0xaf3522151ebe711c # initialize rs1
li x14, 0xf17e092a756693ad # initialize rs2
mulh x14, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x19, 0x51efdd773259896c # initialize rs1
li x15, 0x5f3daa6b082f4568 # initialize rs2
mulh x15, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x20, 0x597a0cbbeae94862 # initialize rs1
li x16, 0x8b50d279ccb96d74 # initialize rs2
mulh x16, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x1, 0xd4cd445b1414a986 # initialize rs1
li x17, 0x029fca87e54473b3 # initialize rs2
mulh x17, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x8, 0x02b2f4d7c3a544b1 # initialize rs1
li x18, 0x179096804fc67324 # initialize rs2
mulh x18, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x6, 0x08ef23fff526610d # initialize rs1
li x19, 0xd074dd9b24ea9dc0 # initialize rs2
mulh x19, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x25, 0x7b04e09394eaf686 # initialize rs1
li x20, 0xad384ee6ce6d022c # initialize rs2
mulh x20, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x6, 0x5c89dbc508c42b85 # initialize rs1
li x21, 0x2479cc70f8b21669 # initialize rs2
mulh x21, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x8, 0x5b3d8646fb51f7a5 # initialize rs1
li x22, 0xf826e77578142fea # initialize rs2
mulh x22, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x21, 0x84188cce1b9ac6c0 # initialize rs1
li x23, 0xa582cd9f6a06fdf8 # initialize rs2
mulh x23, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x25, 0x7e89fc9abc37c671 # initialize rs1
li x24, 0x53af92a38261ef8c # initialize rs2
mulh x24, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x15, 0xd82c9bf84d583179 # initialize rs1
li x25, 0xd4b809781b0eb013 # initialize rs2
mulh x25, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x21, 0x0f453a966e581ea3 # initialize rs1
li x26, 0x175713a0c421d636 # initialize rs2
mulh x26, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x19, 0xe2f43ce9f281956e # initialize rs1
li x27, 0x2063ed2cf6e898a3 # initialize rs2
mulh x27, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x25, 0xee693d0d53142e79 # initialize rs1
li x28, 0xeb3c6b85c42465aa # initialize rs2
mulh x28, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x5, 0x8fa49583b2b3d5f8 # initialize rs1
li x29, 0x1640bd6982fec86e # initialize rs2
mulh x29, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x25, 0xe68d0551e2b722e0 # initialize rs1
li x30, 0xbf5fa0242c5b7d61 # initialize rs2
mulh x30, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x19, 0x8e83bd00f577afac # initialize rs1
li x31, 0x240f53bc9bf2bdae # initialize rs2
mulh x31, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xa37c692214d92711 # initialize rs1
li x0, 0x5f4b311b6116cb0a # initialize rs2
mulh x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xcb3ca9b87fba235e # initialize rs1
li x1, 0x71ac07c6abf530fe # initialize rs2
mulh x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x7f3080ace4fd3183 # initialize rs1
li x2, 0x9692d62a31bedecb # initialize rs2
mulh x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x332374d9fe6fc5c6 # initialize rs1
li x3, 0x3a4140867affb924 # initialize rs2
mulh x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1d3cc3c9f3f370dd # initialize rs1
li x4, 0x860098fd725a5da6 # initialize rs2
mulh x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbfc95372cd6d0733 # initialize rs1
li x5, 0x54d2e4b5d347e8a5 # initialize rs2
mulh x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x54c93f35103654d2 # initialize rs1
li x6, 0x4cc1baf245852541 # initialize rs2
mulh x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x40a16b0e4c6737d2 # initialize rs1
li x7, 0xc3e1c88d6b6048ea # initialize rs2
mulh x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x721071a44921a77f # initialize rs1
li x8, 0x13ea96e441ba1464 # initialize rs2
mulh x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xdc9889409b83b268 # initialize rs1
li x9, 0xcbf70e2cf70c8e4e # initialize rs2
mulh x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x25834e1b75e82f13 # initialize rs1
li x10, 0x8cc6cd075b17e3e7 # initialize rs2
mulh x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xa96b94fe29404f6d # initialize rs1
li x11, 0xb5af8a221ba0d8d7 # initialize rs2
mulh x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xd92e2a16e2ad81cd # initialize rs1
li x12, 0x8e4514a39d7ff459 # initialize rs2
mulh x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x6ef49cfd096ab144 # initialize rs1
li x13, 0xcc91ba99f4ee432d # initialize rs2
mulh x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x8695025623091afc # initialize rs1
li x14, 0xb8b319eb1f8047db # initialize rs2
mulh x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xd06f7da6929ae5b2 # initialize rs1
li x15, 0x1ad532a619eb8390 # initialize rs2
mulh x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xda0738f4d5cf3684 # initialize rs1
li x16, 0xab9cf3fc5ded9910 # initialize rs2
mulh x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x767a0a323d7fdfe7 # initialize rs1
li x17, 0x44248a5b38023ef9 # initialize rs2
mulh x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x1f711f8b8972e86c # initialize rs1
li x18, 0xaa29276d8eacd35e # initialize rs2
mulh x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x6f18f5bbfe7f4336 # initialize rs1
li x19, 0x3c976e0795082284 # initialize rs2
mulh x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x909de8f7cfd931d9 # initialize rs1
li x20, 0x8569f7c753b2e1be # initialize rs2
mulh x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x433c6ec79253fce4 # initialize rs1
li x21, 0xd8361018f6f20147 # initialize rs2
mulh x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x49f069102bb2006e # initialize rs1
li x22, 0x1190f0820683918e # initialize rs2
mulh x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x686b59bbd645ebda # initialize rs1
li x23, 0x3966615acaba130b # initialize rs2
mulh x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xe71423a4965e8375 # initialize rs1
li x24, 0xedcdbba4dceb7238 # initialize rs2
mulh x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xaea7996ea0d9bc80 # initialize rs1
li x25, 0x86346546a275c1fd # initialize rs2
mulh x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xd1c5448f8ee62eb0 # initialize rs1
li x26, 0x8940aa4962a07d51 # initialize rs2
mulh x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x6a4d65b1650103ca # initialize rs1
li x27, 0xee6ee9b5f3b91e35 # initialize rs2
mulh x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x8c98bf534f32a2d2 # initialize rs1
li x28, 0x5455b2585c5b7cfb # initialize rs2
mulh x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x53aa8d6dbbdfb8c1 # initialize rs1
li x29, 0x1317c3d0992bb3d2 # initialize rs2
mulh x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xd1f871093407622c # initialize rs1
li x30, 0xd178193eed606253 # initialize rs2
mulh x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xc16a512ebd337404 # initialize rs1
li x31, 0x86d2bf620b06b33f # initialize rs2
mulh x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x12, x30 # perform first operation
mulh x23, x20, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x13, x15 # perform first operation
mulh x27, x11, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x27, x29 # perform first operation
mulh x14, x18, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x29, x14 # perform first operation
mulh x14, x11, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x9, x31 # perform first operation
mulh x9, x13, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x7, x24 # perform first operation
mulh x7, x14, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x1, x5 # perform first operation
mulh x27, x14, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x14, x11 # perform first operation
mulh x19, x8, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x24, x23 # perform first operation
mulh x8, x12, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x29, x1 # perform first operation
mulh x29, x8, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x16, x21 # perform first operation
mulh x21, x14, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x10, x13 # perform first operation
mulh x26, x8, x5 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-mulhu.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xe87a9a770d9b31d8 # initialize rs1
li x6, 0xed1d94dbf7f77f9e # initialize rs2
mulhu x3, x0, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x5711de2b8e905579 # initialize rs1
li x27, 0x32c6042379b5073b # initialize rs2
mulhu x8, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x343bed0493acdccf # initialize rs1
li x31, 0x5f0e4c6f7a2dc3d7 # initialize rs2
mulhu x29, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xa1ec1b1002ef9dd0 # initialize rs1
li x25, 0x526e8ee63527c584 # initialize rs2
mulhu x8, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x73f6d083f8be09ef # initialize rs1
li x6, 0x5808b059836da355 # initialize rs2
mulhu x9, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x55e011bf5352ee22 # initialize rs1
li x13, 0x6ba58ea486fcef4d # initialize rs2
mulhu x18, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcd3d110f4dec1aa3 # initialize rs1
li x23, 0xdee1a81a7e31fc80 # initialize rs2
mulhu x2, x6, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8156b383ebc6690c # initialize rs1
li x6, 0x92499c6502ead586 # initialize rs2
mulhu x1, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9e087363628cfb3e # initialize rs1
li x12, 0xac3861a7c9cbc419 # initialize rs2
mulhu x14, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x34670b7fe0ee6806 # initialize rs1
li x30, 0xde6b15d2801b1cdc # initialize rs2
mulhu x22, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb39c594db4e54cd0 # initialize rs1
li x8, 0x36dc3761f954a469 # initialize rs2
mulhu x30, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa748715c989f1058 # initialize rs1
li x27, 0xdb5e173525ee4a15 # initialize rs2
mulhu x28, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x48a41bad17b4bcfa # initialize rs1
li x5, 0xf7eaeb31f96904f9 # initialize rs2
mulhu x29, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb4bb03ca09b3dc26 # initialize rs1
li x7, 0xbe3d8eb15ebf8c1e # initialize rs2
mulhu x17, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x0454bde3acdeb9f7 # initialize rs1
li x1, 0x7b56e8803cb63267 # initialize rs2
mulhu x26, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x4edb7dd51a656987 # initialize rs1
li x3, 0x2fd434a3e328a27f # initialize rs2
mulhu x29, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x9e941d671f46a5c8 # initialize rs1
li x5, 0xf7485d01025eab9c # initialize rs2
mulhu x9, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xa2e4745318680eba # initialize rs1
li x5, 0x9b30d6f06f90f3d7 # initialize rs2
mulhu x1, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x9b207b494ee1ddd3 # initialize rs1
li x25, 0xba7874957dff6903 # initialize rs2
mulhu x6, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xa69120cf74ab7b04 # initialize rs1
li x18, 0x54fa2e1f0b52052c # initialize rs2
mulhu x25, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x170320191906f5a1 # initialize rs1
li x28, 0xc083351c260b2659 # initialize rs2
mulhu x23, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xd63173ed2d641d13 # initialize rs1
li x22, 0x851fb81681ec5e51 # initialize rs2
mulhu x16, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xda74e9c9e0b7e34d # initialize rs1
li x8, 0xd5b0f44e36923473 # initialize rs2
mulhu x14, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x75f56827f3f72427 # initialize rs1
li x31, 0xf1105c63f92431e3 # initialize rs2
mulhu x16, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x609c79652107626f # initialize rs1
li x1, 0xf3dd771624b64e7d # initialize rs2
mulhu x5, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x5ff019dd1673bb2a # initialize rs1
li x31, 0xa9467ff28fc01d24 # initialize rs2
mulhu x28, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xf39810a807d7a40c # initialize rs1
li x18, 0x12a47555dd6b9a5d # initialize rs2
mulhu x16, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x420c78484715b346 # initialize rs1
li x5, 0x768babab28485a38 # initialize rs2
mulhu x16, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xed366470b4e945cd # initialize rs1
li x24, 0x57f35ee32a96c015 # initialize rs2
mulhu x15, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x1f733a74c1016879 # initialize rs1
li x7, 0xb51d7d76f5914cee # initialize rs2
mulhu x11, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xb7107c4e3d1c155a # initialize rs1
li x19, 0x11930775f2ebb593 # initialize rs2
mulhu x1, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x3415008aa81224d2 # initialize rs1
li x3, 0x5ea22d9269b4ad2c # initialize rs2
mulhu x10, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x19, 0x8a0c4039dcbd99ac # initialize rs1
li x0, 0xc1b9c240415b3b51 # initialize rs2
mulhu x30, x19, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x5, 0xd1c16c2d72d9b7da # initialize rs1
li x1, 0x1ad965ce0aff5072 # initialize rs2
mulhu x17, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x8, 0xeca5b315a9ab6e73 # initialize rs1
li x2, 0x051f006bd12e8750 # initialize rs2
mulhu x12, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x30, 0xc735c58f0009a691 # initialize rs1
li x3, 0x1513327c2dc72505 # initialize rs2
mulhu x25, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x90a1eb8d163dc984 # initialize rs1
li x4, 0xa290637feb4c32c0 # initialize rs2
mulhu x26, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x28e0ab80ee42ba24 # initialize rs1
li x5, 0x49707b8b73246184 # initialize rs2
mulhu x28, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0xd2e14bac99547218 # initialize rs1
li x6, 0xf48b3296e6f5b301 # initialize rs2
mulhu x16, x21, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x16, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0x280225607a76213b # initialize rs1
li x7, 0x50c527e6df8df3a2 # initialize rs2
mulhu x1, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x26, 0x01ee68fe59dbca41 # initialize rs1
li x8, 0x8f2584c0cc3dc854 # initialize rs2
mulhu x24, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x20, 0xc875f520e89ebf62 # initialize rs1
li x9, 0xac6a588707b531a8 # initialize rs2
mulhu x31, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x13, 0xe8b3859a8c6238ba # initialize rs1
li x10, 0xb652fbc77919311b # initialize rs2
mulhu x3, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0x8eb3acd61482e03e # initialize rs1
li x11, 0x3d9fdcd85f945f33 # initialize rs2
mulhu x8, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x31, 0x6b0ea3d1f4618f10 # initialize rs1
li x12, 0xada65185363bf24b # initialize rs2
mulhu x26, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x14, 0x3129a3ba6cb9b068 # initialize rs1
li x13, 0x87ea76d4c47be9d7 # initialize rs2
mulhu x3, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x29, 0xbf85830d0cbf90dc # initialize rs1
li x14, 0x26c2dc04cc64f7df # initialize rs2
mulhu x11, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x24, 0xa5887287f1941501 # initialize rs1
li x15, 0x1824ff97ceeb5b75 # initialize rs2
mulhu x20, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x21, 0x776bd7013f8ae230 # initialize rs1
li x16, 0x2f6ca69d3c72f388 # initialize rs2
mulhu x27, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0x67f3a3d0f46a18c9 # initialize rs1
li x17, 0xcb5c925d049718b7 # initialize rs2
mulhu x20, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x29, 0xc774f98ae48eb262 # initialize rs1
li x18, 0x2575d942ad6389d9 # initialize rs2
mulhu x27, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x21, 0xf27dea0de7673620 # initialize rs1
li x19, 0xca46b58b14346ce6 # initialize rs2
mulhu x11, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x22, 0x61aee5ccf8068027 # initialize rs1
li x20, 0x5b12381ba2cb9b6f # initialize rs2
mulhu x21, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x11, 0xce01c33661868329 # initialize rs1
li x21, 0xbbfcb1931d11a67b # initialize rs2
mulhu x24, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x12, 0x5e395a320ddf3e16 # initialize rs1
li x22, 0x3ea296034071c9a3 # initialize rs2
mulhu x24, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x5, 0x1181fd5f98240f15 # initialize rs1
li x23, 0xdc7cab9244e7219c # initialize rs2
mulhu x2, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x2, 0xe4056b7c0a2263f5 # initialize rs1
li x24, 0x704b7db761c66747 # initialize rs2
mulhu x20, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x11, 0xfd42d29a85b59bc6 # initialize rs1
li x25, 0x377e1cc58fadfa4c # initialize rs2
mulhu x23, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x24, 0xcfee193ce3664e67 # initialize rs1
li x26, 0xcbef25906ac00f6c # initialize rs2
mulhu x18, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x3, 0xead929ed211cbad3 # initialize rs1
li x27, 0x2e7511c9f34da42c # initialize rs2
mulhu x30, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x27, 0x8bc15246f89d0c17 # initialize rs1
li x28, 0x0939815feb784209 # initialize rs2
mulhu x5, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x27, 0xb4a335ce5c742bc8 # initialize rs1
li x29, 0x877ac199c19bef0b # initialize rs2
mulhu x7, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x20, 0xeb0f61a4a15f3b8b # initialize rs1
li x30, 0xc1138de3b2f752a3 # initialize rs2
mulhu x24, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x15, 0x115ffe5d2617636f # initialize rs1
li x31, 0x3b26406fa250e9c2 # initialize rs2
mulhu x10, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 504)

# Testcase cp_rd (Test destination rd = x0)
li x9, 0xaa66599f4b682e92 # initialize rs1
li x3, 0x0dd8c97072815b08 # initialize rs2
mulhu x0, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x26, 0xac14f5a638eb6ab9 # initialize rs1
li x18, 0x0a545770c155aea3 # initialize rs2
mulhu x1, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0xa5d58f67b34e8835 # initialize rs1
li x5, 0xeaed4c33796b3359 # initialize rs2
mulhu x2, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x6, 0x7a947234c05c5669 # initialize rs1
li x12, 0x50d545e97f08cf18 # initialize rs2
mulhu x3, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0xf20aae31b82c1e2e # initialize rs1
li x22, 0x70986212d3dd8eb8 # initialize rs2
mulhu x4, x9, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0xcbd9c75af19e424a # initialize rs1
li x20, 0xc0c660ec0f9be24e # initialize rs2
mulhu x5, x28, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0xc4eaa07ef8678b06 # initialize rs1
li x20, 0x5ab40948effd797e # initialize rs2
mulhu x6, x24, x20 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x6, x7 # switch signature pointer register to avoid conflict with test
li x5, 0xa595e877a3bb05df # initialize rs1
li x4, 0x64bfde8fb4bc6b84 # initialize rs2
mulhu x7, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x9, 0xeccfcddca9b1806a # initialize rs1
li x23, 0x7803468f3cfd9a10 # initialize rs2
mulhu x8, x9, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x4, 0x489bcc7f59898c14 # initialize rs1
li x15, 0x7f6f6dc9fff3d5ff # initialize rs2
mulhu x9, x4, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x26, 0xd93ee64e152238d7 # initialize rs1
li x18, 0x0e21657502c2499c # initialize rs2
mulhu x10, x26, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd86431e8c144102a # initialize rs1
li x18, 0xf1dc987d8606ee89 # initialize rs2
mulhu x11, x11, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x22, 0x703e9e32362f76e9 # initialize rs1
li x21, 0x0dc29ae4a57dbe72 # initialize rs2
mulhu x12, x22, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x27, 0x6476146ea7ae3af6 # initialize rs1
li x8, 0xc7c9dde0ee0a61a1 # initialize rs2
mulhu x13, x27, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0x491fb6f59f8ffdb1 # initialize rs1
li x26, 0xa604c1d8052e1a5b # initialize rs2
mulhu x14, x16, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xa74cf740e5e45658 # initialize rs1
li x1, 0x86f716927195d208 # initialize rs2
mulhu x15, x15, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0x0134b02c768bc845 # initialize rs1
li x18, 0x7d9e52ff8eb12103 # initialize rs2
mulhu x16, x28, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x16, 0xf128a4f70c9cb69e # initialize rs1
li x17, 0xd7d3900cb5274a69 # initialize rs2
mulhu x17, x16, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x095714ec0f9d9af1 # initialize rs1
li x17, 0xb68ae80afbddad0a # initialize rs2
mulhu x18, x18, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x29, 0x27dafd0a661597ad # initialize rs1
li x14, 0xb6eb3e1d722fe259 # initialize rs2
mulhu x19, x29, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x30, 0x4af2d6bd230e5bdb # initialize rs1
li x10, 0x5dd6c5014b74c5da # initialize rs2
mulhu x20, x30, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0x82eab54624480ef2 # initialize rs1
li x21, 0x822cbb4b2a58a50b # initialize rs2
mulhu x21, x30, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x26, 0x3cbf21ddd8cfba93 # initialize rs1
li x4, 0x7e0cfb5fdaca2b3b # initialize rs2
mulhu x22, x26, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x27, 0x6c5fc82ae7bd15a0 # initialize rs1
li x24, 0x7fe11c27a9b0c053 # initialize rs2
mulhu x23, x27, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x27, 0xa1b37e2856118151 # initialize rs1
li x11, 0x3a3da958b930b737 # initialize rs2
mulhu x24, x27, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x28, 0x66e7a9da877c55ab # initialize rs1
li x19, 0xd8961c6896e23c6d # initialize rs2
mulhu x25, x28, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x29, 0x923422d0271f366b # initialize rs1
li x26, 0x41f1d25b4d15abf2 # initialize rs2
mulhu x26, x29, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x2, 0x53f2d3ff204ea4a6 # initialize rs1
li x28, 0xe958df074e5c5286 # initialize rs2
mulhu x27, x2, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x11, 0x57e740ccfa05cbb9 # initialize rs1
li x17, 0x13c9dc8387b0cea6 # initialize rs2
mulhu x28, x11, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x23, 0x9a673e5338a12b18 # initialize rs1
li x14, 0x609e1ad2c3cc44ff # initialize rs2
mulhu x29, x23, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0x0e524bf5171a49ef # initialize rs1
li x16, 0x7d1768d19202f72d # initialize rs2
mulhu x30, x18, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x17, 0xce888fabba30e055 # initialize rs1
li x5, 0x88b81cc72e11913a # initialize rs2
mulhu x31, x17, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x0000000000000000 # initialize rs1
li x3, 0x6fa6b38454a84417 # initialize rs2
mulhu x30, x20, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x2, 0x0000000000000001 # initialize rs1
li x18, 0xa87cf0c0c1356d8c # initialize rs2
mulhu x29, x2, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x0000000000000002 # initialize rs1
li x3, 0x501552315b2d33cd # initialize rs2
mulhu x13, x29, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x9, 0x8000000000000000 # initialize rs1
li x16, 0xe9694b8c7ecaa615 # initialize rs2
mulhu x22, x9, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x18, 0x8000000000000001 # initialize rs1
li x5, 0xe7d46b007eee7cf2 # initialize rs2
mulhu x16, x18, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
li x30, 0xf7ba5d181445cdea # initialize rs2
mulhu x17, x24, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x18, 0x7ffffffffffffffe # initialize rs1
li x9, 0x8169386d4afeb544 # initialize rs2
mulhu x26, x18, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x10, 0xb4c79f44015de811 # initialize rs2
mulhu x9, x20, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x9, 0xb887086b66d58c5b # initialize rs2
mulhu x5, x11, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0xfdea5a8caac9637e # initialize rs2
mulhu x16, x2, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xe77972f0c7b63b01 # initialize rs2
mulhu x31, x12, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs1
li x21, 0xf6373c36b5c1ae6a # initialize rs2
mulhu x29, x26, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x7, 0x3c22c0d509e06df7 # initialize rs2
mulhu x27, x18, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x15, 0x388cabdce0b42b6c # initialize rs2
mulhu x12, x14, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x24, 0x0000000100000000 # initialize rs1
li x27, 0xbbb560ab1ce26f5c # initialize rs2
mulhu x17, x24, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x2, 0x0000000100000001 # initialize rs1
li x1, 0xdf3298f83354b072 # initialize rs2
mulhu x14, x2, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0xacbc643541fa4c3a # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
mulhu x18, x17, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x2, 0x13abb26d37f72d85 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
mulhu x28, x2, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0x86299b5da2a249ba # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
mulhu x24, x11, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x3, 0x0069e357aeb5da04 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
mulhu x8, x3, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0x519f4919a3e275da # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
mulhu x7, x13, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x16, 0x3c3e3f2211d73d1c # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mulhu x22, x16, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x31, 0xb93507a262893951 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
mulhu x12, x31, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x14, 0xea9d2d1fa783f3fe # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
mulhu x8, x14, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x13, 0xfd92b940e52a2861 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
mulhu x15, x13, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x7, 0x66c048e15ff7e338 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
mulhu x16, x7, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0xe0b5bf882636023f # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x2, x21, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x31, 0x9c55508c820267e9 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
mulhu x28, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x30, 0x3ea95fc3985d490b # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
mulhu x12, x30, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x31, 0x632315522989efbd # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
mulhu x9, x31, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0xc7b48dcbc5aef632 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
mulhu x29, x14, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x26, 0xdcb155ca3c29c9a9 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
mulhu x20, x26, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x11, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
mulhu x16, x11, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x27, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
mulhu x18, x27, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x3, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
mulhu x20, x3, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x23, 0x0000000000000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
mulhu x3, x23, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x11, 0x0000000000000000 # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
mulhu x7, x11, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
mulhu x7, x24, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000000000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
mulhu x5, x11, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x14, 0x0000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
mulhu x31, x14, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x10, 0x0000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
mulhu x11, x10, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000000000000 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
mulhu x17, x2, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000000000000 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x23, x31, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x1, 0x0000000000000000 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
mulhu x4, x1, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x7, 0x0000000000000000 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
mulhu x24, x7, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x11, 0x0000000000000000 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
mulhu x24, x11, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x3, 0x0000000000000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
mulhu x28, x3, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x10, 0x0000000000000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
mulhu x11, x10, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x9, 0x0000000000000001 # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
mulhu x26, x9, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x10, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
mulhu x27, x10, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x24, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
mulhu x27, x24, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x18, 0x0000000000000001 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
mulhu x31, x18, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x14, 0x0000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
mulhu x9, x14, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x19, 0x0000000000000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
mulhu x21, x19, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
mulhu x15, x23, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000001 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
mulhu x8, x28, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000000000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
mulhu x28, x14, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
mulhu x20, x31, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000000000001 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x14, x5, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x13, 0x0000000000000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
mulhu x18, x13, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x17, 0x0000000000000001 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
mulhu x27, x17, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x31, 0x0000000000000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mulhu x24, x31, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x9, 0x0000000000000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
mulhu x1, x9, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x9, 0x0000000000000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulhu x12, x9, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x12, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
mulhu x21, x12, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x21, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
mulhu x20, x21, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x20, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
mulhu x10, x20, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x18, 0x0000000000000002 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
mulhu x27, x18, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x10, 0x0000000000000002 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
mulhu x17, x10, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x5, 0x0000000000000002 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
mulhu x2, x5, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000000000002 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
mulhu x9, x3, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x13, 0x0000000000000002 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
mulhu x1, x13, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000000000002 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
mulhu x10, x30, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000000000002 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
mulhu x5, x1, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000000000002 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x17, x11, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x16, 0x0000000000000002 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
mulhu x21, x16, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x16, 0x0000000000000002 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
mulhu x20, x16, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x14, 0x0000000000000002 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
mulhu x12, x14, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x13, 0x0000000000000002 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
mulhu x25, x13, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x16, 0x0000000000000002 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
mulhu x14, x16, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x28, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
mulhu x31, x28, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x8, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
mulhu x3, x8, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x21, 0x8000000000000000 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
mulhu x3, x21, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x15, 0x8000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
mulhu x27, x15, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x4, 0x8000000000000000 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
mulhu x27, x4, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x13, 0x8000000000000000 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
mulhu x15, x13, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x15, 0x8000000000000000 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
mulhu x9, x15, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x16, 0x8000000000000000 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
mulhu x8, x16, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x27, 0x8000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
mulhu x31, x27, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x25, 0x8000000000000000 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
mulhu x30, x25, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x8000000000000000 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x14, x20, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x20, 0x8000000000000000 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
mulhu x18, x20, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x10, 0x8000000000000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
mulhu x8, x10, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
mulhu x27, x22, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x18, 0x8000000000000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
mulhu x3, x18, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x20, 0x8000000000000000 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulhu x15, x20, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x26, 0x8000000000000001 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
mulhu x21, x26, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x13, 0x8000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
mulhu x27, x13, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x2, 0x8000000000000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
mulhu x26, x2, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x22, 0x8000000000000001 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
mulhu x17, x22, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
mulhu x28, x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x13, 0x8000000000000001 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
mulhu x9, x13, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x2, 0x8000000000000001 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
mulhu x11, x2, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x5, 0x8000000000000001 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
mulhu x29, x5, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x16, 0x8000000000000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
mulhu x28, x16, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x1, 0x8000000000000001 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
mulhu x21, x1, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x8000000000000001 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x20, x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x22, 0x8000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
mulhu x30, x22, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x27, 0x8000000000000001 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
mulhu x26, x27, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x2, 0x8000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
mulhu x31, x2, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x18, 0x8000000000000001 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
mulhu x13, x18, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x2, 0x8000000000000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
mulhu x11, x2, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x16, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
mulhu x23, x16, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x24, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
mulhu x19, x24, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x23, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
mulhu x30, x23, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x7, 0x7fffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
mulhu x3, x7, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x23, 0x7fffffffffffffff # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
mulhu x11, x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
mulhu x20, x27, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x26, 0x7fffffffffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
mulhu x2, x26, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x5, 0x7fffffffffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulhu x10, x5, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0x7fffffffffffffff # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
mulhu x30, x22, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x12, 0x7fffffffffffffff # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
mulhu x23, x12, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x7fffffffffffffff # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x27, x4, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x25, 0x7fffffffffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
mulhu x20, x25, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x1, 0x7fffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
mulhu x24, x1, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
mulhu x9, x31, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x21, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
mulhu x10, x21, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x27, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulhu x20, x27, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x22, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
mulhu x15, x22, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 1792)
addi x6, x6, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x18, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
mulhu x26, x18, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x13, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
mulhu x19, x13, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x10, 0x7ffffffffffffffe # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
mulhu x9, x10, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x11, 0x7ffffffffffffffe # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
mulhu x8, x11, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x7, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
mulhu x8, x7, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
mulhu x2, x28, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x10, 0x7ffffffffffffffe # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
mulhu x2, x10, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
mulhu x13, x15, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x16, 0x7ffffffffffffffe # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
mulhu x30, x16, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x7ffffffffffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x15, x3, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x16, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulhu x30, x16, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
mulhu x28, x23, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
mulhu x28, x26, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x2, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
mulhu x16, x2, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x9, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
mulhu x28, x9, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x28, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
mulhu x15, x28, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x15, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
mulhu x29, x15, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x14, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
mulhu x18, x14, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x7, 0xffffffffffffffff # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
mulhu x17, x7, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x1, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
mulhu x10, x1, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x22, 0xffffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
mulhu x5, x22, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
mulhu x14, x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
mulhu x8, x23, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x16, 0xffffffffffffffff # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
mulhu x5, x16, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x9, 0xffffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
mulhu x17, x9, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xffffffffffffffff # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x24, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x4, 0xffffffffffffffff # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
mulhu x11, x4, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
mulhu x22, x30, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x11, 0xffffffffffffffff # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
mulhu x14, x11, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x8, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
mulhu x25, x8, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x3, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
mulhu x23, x3, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x3, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
mulhu x8, x3, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x3, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
mulhu x1, x3, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x18, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
mulhu x19, x18, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x8, 0xfffffffffffffffe # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
mulhu x27, x8, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x16, 0xfffffffffffffffe # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
mulhu x11, x16, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x15, 0xfffffffffffffffe # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
mulhu x20, x15, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
mulhu x22, x27, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x24, 0xfffffffffffffffe # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
mulhu x15, x24, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
mulhu x11, x18, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x14, 0xfffffffffffffffe # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
mulhu x23, x14, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xfffffffffffffffe # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x28, x20, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x30, 0xfffffffffffffffe # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
mulhu x17, x30, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x15, 0xfffffffffffffffe # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
mulhu x19, x15, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x25, 0xfffffffffffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
mulhu x27, x25, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x29, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
mulhu x14, x29, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x1, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
mulhu x12, x1, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
mulhu x8, x23, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
mulhu x17, x16, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
mulhu x16, x2, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
mulhu x22, x14, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
mulhu x21, x23, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
mulhu x11, x2, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
mulhu x7, x10, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulhu x2, x19, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
mulhu x16, x19, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
mulhu x23, x10, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x3, x15, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
mulhu x7, x12, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhu x22, x31, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mulhu x19, x14, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
mulhu x11, x13, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
mulhu x23, x17, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
mulhu x26, x27, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
mulhu x12, x29, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
mulhu x11, x19, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
mulhu x16, x26, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
mulhu x21, x4, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
mulhu x30, x26, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
mulhu x28, x11, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
mulhu x11, x29, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
mulhu x22, x11, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
mulhu x9, x10, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x2, x20, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
mulhu x5, x25, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
mulhu x28, x23, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
mulhu x16, x29, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mulhu x25, x17, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
mulhu x20, x2, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x8, 0x5555555555555555 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
mulhu x13, x8, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x17, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
mulhu x7, x17, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x27, 0x5555555555555555 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
mulhu x14, x27, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x16, 0x5555555555555555 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
mulhu x10, x16, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x21, 0x5555555555555555 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
mulhu x14, x21, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x30, 0x5555555555555555 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
mulhu x16, x30, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x5, 0x5555555555555555 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
mulhu x14, x5, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x12, 0x5555555555555555 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
mulhu x28, x12, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x30, 0x5555555555555555 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
mulhu x17, x30, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x31, 0x5555555555555555 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
mulhu x2, x31, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x5555555555555555 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x5, x31, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x5, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
mulhu x25, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x19, 0x5555555555555555 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
mulhu x29, x19, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x30, 0x5555555555555555 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mulhu x18, x30, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x15, 0x5555555555555555 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
mulhu x29, x15, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x23, 0x5555555555555555 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
mulhu x15, x23, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x17, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
mulhu x15, x17, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x15, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
mulhu x8, x15, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x8, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
mulhu x2, x8, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x28, 0x00000000ffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
mulhu x27, x28, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x13, 0x00000000ffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
mulhu x19, x13, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x12, 0x00000000ffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
mulhu x26, x12, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
mulhu x28, x8, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x23, 0x00000000ffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulhu x20, x23, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x14, 0x00000000ffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
mulhu x25, x14, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x25, 0x00000000ffffffff # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
mulhu x20, x25, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x00000000ffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x12, x18, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x19, 0x00000000ffffffff # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
mulhu x14, x19, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x30, 0x00000000ffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
mulhu x31, x30, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x17, 0x00000000ffffffff # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
mulhu x3, x17, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x11, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
mulhu x24, x11, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x21, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
mulhu x8, x21, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x26, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
mulhu x5, x26, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x26, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
mulhu x1, x26, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x15, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
mulhu x25, x15, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x11, 0x00000000fffffffe # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
mulhu x23, x11, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x15, 0x00000000fffffffe # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
mulhu x8, x15, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
mulhu x27, x20, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
mulhu x14, x3, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
mulhu x2, x20, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
mulhu x26, x14, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x1, 0x00000000fffffffe # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
mulhu x26, x1, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x00000000fffffffe # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x16, x25, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x23, 0x00000000fffffffe # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
mulhu x18, x23, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x5, 0x00000000fffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
mulhu x11, x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
mulhu x1, x29, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x4, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mulhu x8, x4, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x13, 0x00000000fffffffe # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
mulhu x30, x13, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x10, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
mulhu x4, x10, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x22, 0x0000000100000000 # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
mulhu x18, x22, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x9, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
mulhu x18, x9, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x4, 0x0000000100000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mulhu x31, x4, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x20, 0x0000000100000000 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
mulhu x9, x20, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
mulhu x17, x14, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000100000000 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
mulhu x10, x28, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x24, 0x0000000100000000 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
mulhu x22, x24, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000100000000 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
mulhu x14, x15, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000100000000 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
mulhu x27, x12, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000100000000 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x27, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x23, 0x0000000100000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulhu x18, x23, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhu x8, x23, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x20, 0x0000000100000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mulhu x11, x20, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x23, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mulhu x9, x23, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x3, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
mulhu x14, x3, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x8, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
mulhu x5, x8, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x7, 0x0000000100000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
mulhu x12, x7, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x9, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
mulhu x5, x9, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x19, 0x0000000100000001 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
mulhu x9, x19, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x17, 0x0000000100000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
mulhu x1, x17, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000100000001 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
mulhu x30, x18, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x7, 0x0000000100000001 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
mulhu x26, x7, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
mulhu x1, x8, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x23, 0x0000000100000001 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
mulhu x27, x23, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000100000001 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
mulhu x18, x21, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x0000000100000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x2, x12, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x12, 0x0000000100000001 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
mulhu x29, x12, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x2, 0x0000000100000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
mulhu x3, x2, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x11, 0x0000000100000001 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
mulhu x26, x11, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x13, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
mulhu x19, x13, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x4, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
mulhu x29, x4, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x3cb9bf4423750c36 # initialize rs1
li x0, 0x719fee192769d4b6 # initialize rs2
mulhu x30, x0, x0 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x6278a2df933dff40 # initialize rs1
li x1, 0x8accd52182e66b8d # initialize rs2
mulhu x19, x1, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x13c67e9c8e293862 # initialize rs1
li x2, 0xe23cbf701128e83e # initialize rs2
mulhu x14, x2, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xd05bd13b19766160 # initialize rs1
li x3, 0xd7e3f36099e90576 # initialize rs2
mulhu x2, x3, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x4, 0x9ae9c3653de70e36 # initialize rs1
li x4, 0x5361f8895028529c # initialize rs2
mulhu x1, x4, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x5, 0x029f5a2b65fd46cf # initialize rs1
li x5, 0x6ac83b3fb2d20af9 # initialize rs2
mulhu x16, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x37fe723613d71b6f # initialize rs1
li x6, 0x7a3018aaa0ab4181 # initialize rs2
mulhu x10, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdc2ed1e2b578f795 # initialize rs1
li x7, 0x87379fb03b165617 # initialize rs2
mulhu x11, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x7cbccef14dd80f42 # initialize rs1
li x8, 0x48cae2f45d21cc73 # initialize rs2
mulhu x18, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x1dda952879526921 # initialize rs1
li x9, 0x3a6c728cd00486f4 # initialize rs2
mulhu x2, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x3db09245560fda25 # initialize rs1
li x10, 0xcf417852367f54c0 # initialize rs2
mulhu x26, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xd53e1661142b99b9 # initialize rs1
li x11, 0x606ca30784990fbf # initialize rs2
mulhu x23, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xe3fdb7712d2962e9 # initialize rs1
li x12, 0x8441917f612630ba # initialize rs2
mulhu x19, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x266362407a08c6c9 # initialize rs1
li x13, 0x0855268616465850 # initialize rs2
mulhu x9, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x3c01171b5e54698b # initialize rs1
li x14, 0xa993164cac4406cf # initialize rs2
mulhu x15, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xc434153305e8ec73 # initialize rs1
li x15, 0xec1feb241f652dea # initialize rs2
mulhu x27, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xb9175e3ab3afac7b # initialize rs1
li x16, 0x01d92cc815bbfb5a # initialize rs2
mulhu x7, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xcc7f2587737022e1 # initialize rs1
li x17, 0x34f62e68b39c1358 # initialize rs2
mulhu x28, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x486fe61819a6ba96 # initialize rs1
li x18, 0xbd657ae7370de485 # initialize rs2
mulhu x31, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x0f122c63862e9ab3 # initialize rs1
li x19, 0x0763cde937893c9d # initialize rs2
mulhu x24, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x1c43a4bec17a34cc # initialize rs1
li x20, 0x13fd9072f3cef31c # initialize rs2
mulhu x27, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x945ad7287aa40108 # initialize rs1
li x21, 0xcfba267b91ace176 # initialize rs2
mulhu x24, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x308ed5d944bf5535 # initialize rs1
li x22, 0x7c78526f8dc1c9b7 # initialize rs2
mulhu x24, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x870951f3d46ecdc3 # initialize rs1
li x23, 0x0e9a49b3871bc4c6 # initialize rs2
mulhu x21, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x19398ccf1cdaee4e # initialize rs1
li x24, 0x47d795f1a6fbfa93 # initialize rs2
mulhu x31, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x2d032d736367026f # initialize rs1
li x25, 0x42eefc43856bcfda # initialize rs2
mulhu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xaf9207de945c6a59 # initialize rs1
li x26, 0xcccb2401a80154e4 # initialize rs2
mulhu x17, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x17e5a2237b0575ba # initialize rs1
li x27, 0x5f889f0f7ddc8b6f # initialize rs2
mulhu x6, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xcbc0d24245e96730 # initialize rs1
li x28, 0xdf8659e75659c9cd # initialize rs2
mulhu x13, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xcf33a6859c4ab2d2 # initialize rs1
li x29, 0xefb5e4647d4e494f # initialize rs2
mulhu x23, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xec215b43bca1b6a5 # initialize rs1
li x30, 0x7c0da2bee0da0ccb # initialize rs2
mulhu x19, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x33f13d6d50e36354 # initialize rs1
li x31, 0xfe1249153ed93416 # initialize rs2
mulhu x2, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf2c0eb60ced0cc8b # initialize rs1
li x9, 0xed6bb107ede5fec0 # initialize rs2
mulhu x0, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa06766aa8b1c3b09 # initialize rs1
li x21, 0x06e32d76b52a1fa6 # initialize rs2
mulhu x1, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x927a4bc48fc29993 # initialize rs1
li x24, 0x537904b6e79f770f # initialize rs2
mulhu x2, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd325a5317af6012a # initialize rs1
li x9, 0x0172de5de5367b38 # initialize rs2
mulhu x3, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6a1e242e15443e24 # initialize rs1
li x8, 0xf68073beaa051d48 # initialize rs2
mulhu x4, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0240f9a38f7ce7c7 # initialize rs1
li x16, 0x3cfe7f1bdb55f6a2 # initialize rs2
mulhu x5, x5, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xea4b7e3afa01602b # initialize rs1
li x18, 0x5701122b68645639 # initialize rs2
mulhu x6, x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x310fdde54452461e # initialize rs1
li x22, 0xb4c47ce594f2701f # initialize rs2
mulhu x7, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x31f082732734c887 # initialize rs1
li x19, 0xfacd4dcd7bd2b05e # initialize rs2
mulhu x8, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf0ce2008f8b71c43 # initialize rs1
li x25, 0x954dfb28847f9119 # initialize rs2
mulhu x9, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xea73908d54c455cb # initialize rs1
li x22, 0x3798329c9736cc34 # initialize rs2
mulhu x10, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa11d78d1fdc71a4c # initialize rs1
li x10, 0xb907f7e4cd88a4f3 # initialize rs2
mulhu x11, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3bf3bad9a3a622e6 # initialize rs1
li x7, 0x1931dc4a6c7f76d8 # initialize rs2
mulhu x12, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x11d2b0242f515c80 # initialize rs1
li x17, 0x1f386e4a06ae02bb # initialize rs2
mulhu x13, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xe85d5d86013938b2 # initialize rs1
li x11, 0x314ec36abd2dbdd5 # initialize rs2
mulhu x14, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x0aa79d3710b0c4f7 # initialize rs1
li x19, 0xe523073e1c8a5cc9 # initialize rs2
mulhu x15, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x7dc5ddc8291b4bc3 # initialize rs1
li x14, 0xd731c0ef1d6590fb # initialize rs2
mulhu x16, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x887ac4005dcdbbf5 # initialize rs1
li x8, 0x57e8b5ac2405bcce # initialize rs2
mulhu x17, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xba9b159082c46921 # initialize rs1
li x18, 0x5d8f446def5d235f # initialize rs2
mulhu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xe934e0cb02a9cce6 # initialize rs1
li x8, 0xab212ddf6859051e # initialize rs2
mulhu x19, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x0d761b58a7e8c63a # initialize rs1
li x11, 0x2ce1fb8573ff8577 # initialize rs2
mulhu x20, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd7d8161f4f3a8e35 # initialize rs1
li x7, 0x3df610c0813964bd # initialize rs2
mulhu x21, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb4e4f45fb471d75e # initialize rs1
li x6, 0x15b8331ca35bed46 # initialize rs2
mulhu x22, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x797a0f13a51bba7e # initialize rs1
li x22, 0xc284b28a7eaeab77 # initialize rs2
mulhu x23, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xac79096616875750 # initialize rs1
li x14, 0x450c7836ea00bf9b # initialize rs2
mulhu x24, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x7bd81e249568dfde # initialize rs1
li x3, 0xeac3677c64ef4dcf # initialize rs2
mulhu x25, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x12092ddce2780b1a # initialize rs1
li x27, 0x5ae6609621970cff # initialize rs2
mulhu x26, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x022e94a7079f4ffc # initialize rs1
li x25, 0x944bc96822b5aab5 # initialize rs2
mulhu x27, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa64a74a554b855a1 # initialize rs1
li x22, 0x0f4147ebf7f218a9 # initialize rs2
mulhu x28, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x180206cf4e008744 # initialize rs1
li x12, 0x3e6c2aeb0975ae6d # initialize rs2
mulhu x29, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xba24b4e929be68ee # initialize rs1
li x3, 0xd4a6c4aedee515ce # initialize rs2
mulhu x30, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe19441708914ee06 # initialize rs1
li x10, 0xfd6bea62ec82d2fa # initialize rs2
mulhu x31, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x14, 0x582f2c6a5ff9c0d7 # initialize rs1
li x0, 0xf469c2c790b64bd7 # initialize rs2
mulhu x0, x14, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x12, 0x39f2d10a4293904e # initialize rs1
li x1, 0x8eed8a9f6395566a # initialize rs2
mulhu x1, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x1, 0x475e2ef0b62d6a46 # initialize rs1
li x2, 0xc86d91b0f8146886 # initialize rs2
mulhu x2, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x21, 0xb324b4c1edeb0e30 # initialize rs1
li x3, 0xf79dd7b809ba6a14 # initialize rs2
mulhu x3, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x029bb19c6969ae12 # initialize rs1
li x4, 0x0191e8d1232cfe04 # initialize rs2
mulhu x4, x11, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x0bfe8524fc2e4d1f # initialize rs1
li x5, 0x6ebda442e486ed9f # initialize rs2
mulhu x5, x13, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0xae9bc1fbc5c128fb # initialize rs1
li x6, 0xc5d4fb1bf96900f4 # initialize rs2
mulhu x6, x26, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0xeb003f1d765972ef # initialize rs1
li x7, 0x03ec6034453f3382 # initialize rs2
mulhu x7, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x15, 0x47e3f324b19d9b58 # initialize rs1
li x8, 0xf5a8a63188cd2fcb # initialize rs2
mulhu x8, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x31, 0xb274ababad9a905b # initialize rs1
li x9, 0x76e64e1ed8ffded6 # initialize rs2
mulhu x9, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x21, 0x16cb33c4d8214a6b # initialize rs1
li x10, 0xb6396fd185864a26 # initialize rs2
mulhu x10, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x24, 0xa43aa1e4332c71e0 # initialize rs1
li x11, 0x7947543e4f22fba5 # initialize rs2
mulhu x11, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x30, 0x5ca4495544c07046 # initialize rs1
li x12, 0xccfcfd6ec2f72d80 # initialize rs2
mulhu x12, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x1, 0x636585788c3176bf # initialize rs1
li x13, 0xb5b6f463aa4719ce # initialize rs2
mulhu x13, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x15, 0xa426412041d8e27b # initialize rs1
li x14, 0x6b078573d45a6984 # initialize rs2
mulhu x14, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x1, 0xd596a40ba791f65a # initialize rs1
li x15, 0x0934a7f4307b304e # initialize rs2
mulhu x15, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x28, 0x42dd345be016a920 # initialize rs1
li x16, 0x8ad9c9e897f0442b # initialize rs2
mulhu x16, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x21, 0x6a12a113980503da # initialize rs1
li x17, 0x941af236db3ee70a # initialize rs2
mulhu x17, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x19, 0x40bdba7ab3d99254 # initialize rs1
li x18, 0xa098cc823765cf45 # initialize rs2
mulhu x18, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x15, 0xc0195c1e68581d8b # initialize rs1
li x19, 0xb43c8e097b49e864 # initialize rs2
mulhu x19, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x27, 0xb6e833d9029a8d6e # initialize rs1
li x20, 0xcb9ebda1aefa13a9 # initialize rs2
mulhu x20, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x30, 0xf85a00111c4d5b92 # initialize rs1
li x21, 0x2b9a5e9db57e3f26 # initialize rs2
mulhu x21, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x10, 0x75888a86c4c35530 # initialize rs1
li x22, 0xdef097406d16d49c # initialize rs2
mulhu x22, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x18, 0xaea56bc7e1572ffd # initialize rs1
li x23, 0x2dbeb643fa28240c # initialize rs2
mulhu x23, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x11, 0x0e270f810dd7af42 # initialize rs1
li x24, 0x80f0dc95c255211a # initialize rs2
mulhu x24, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x26, 0x6c040d37be36b31a # initialize rs1
li x25, 0x97134f205a8effcf # initialize rs2
mulhu x25, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x29, 0x7a8cfcbd5946bd86 # initialize rs1
li x26, 0x5310e1f09a1ba929 # initialize rs2
mulhu x26, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x18, 0x0c7f9dcf328800f6 # initialize rs1
li x27, 0x51b0b3278e8e4385 # initialize rs2
mulhu x27, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x16, 0xd4fc1b4c2446a2e5 # initialize rs1
li x28, 0x9302f3ca022b812c # initialize rs2
mulhu x28, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x20, 0xa3615a31d359e6e4 # initialize rs1
li x29, 0xfd5588c442fd7098 # initialize rs2
mulhu x29, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x21, 0x4104b6343ca769e9 # initialize rs1
li x30, 0xc0af75fd204ffede # initialize rs2
mulhu x30, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x13, 0xa19563bd7b268358 # initialize rs1
li x31, 0x1c5480cb93d30ff7 # initialize rs2
mulhu x31, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x0952a6ba01ba73bf # initialize rs1
li x0, 0x97ee641ac42624c3 # initialize rs2
mulhu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x8c14cad7c4b8f4fa # initialize rs1
li x1, 0xf9856c84599aaee9 # initialize rs2
mulhu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x3d7ca9dd107de4b3 # initialize rs1
li x2, 0x7b800278e83aa636 # initialize rs2
mulhu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x0e4ec27464e455bb # initialize rs1
li x3, 0x0f0b477126c64088 # initialize rs2
mulhu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x241e60728c6cecbe # initialize rs1
li x4, 0x34936338e91d87f7 # initialize rs2
mulhu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7eb77660ad99ba5f # initialize rs1
li x5, 0xf00b954e3f65c384 # initialize rs2
mulhu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf8f32a0a95388cb2 # initialize rs1
li x6, 0x7d1e5627a1e3f289 # initialize rs2
mulhu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd83141688404c34a # initialize rs1
li x7, 0xba755b5ab0392a94 # initialize rs2
mulhu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xb1f0797e18cba818 # initialize rs1
li x8, 0x01133fbd9a980047 # initialize rs2
mulhu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x3cd6538676b755b8 # initialize rs1
li x9, 0x37ea6148b3dfd1b5 # initialize rs2
mulhu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x161e186f7ea3886b # initialize rs1
li x10, 0x9f113f8459b998ff # initialize rs2
mulhu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x4d809aa7cdb80c7a # initialize rs1
li x11, 0x1cd618883120ce51 # initialize rs2
mulhu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x3c2d18ff5b2806d1 # initialize rs1
li x12, 0x6c1216aa2527f037 # initialize rs2
mulhu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x22b80150d91bfb18 # initialize rs1
li x13, 0x3864fb0996088fe0 # initialize rs2
mulhu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x60d66dba65735c76 # initialize rs1
li x14, 0xf6ef7f3e1696892a # initialize rs2
mulhu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x7f42d9c94f18c54e # initialize rs1
li x15, 0xeade9537352086c9 # initialize rs2
mulhu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xe19e97d0d9c4a380 # initialize rs1
li x16, 0xc0b0c42388ef70a7 # initialize rs2
mulhu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x2e75245ec5d6881b # initialize rs1
li x17, 0x6037c5f60782fe8f # initialize rs2
mulhu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x8c292cdc398a21ee # initialize rs1
li x18, 0xeeaacea5f7f7b1f4 # initialize rs2
mulhu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xab43bac7afadb7e3 # initialize rs1
li x19, 0xf05c4ddcea900ee7 # initialize rs2
mulhu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x061bd2f3c11700e3 # initialize rs1
li x20, 0xb47c5198eb0dc44f # initialize rs2
mulhu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc3642bfc734a820a # initialize rs1
li x21, 0x6eeb7f17e246579d # initialize rs2
mulhu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x7662068e92a65dc4 # initialize rs1
li x22, 0x11f1ed47520bc54f # initialize rs2
mulhu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xc98c262dbf11d2ae # initialize rs1
li x23, 0x61881905ca2e3f61 # initialize rs2
mulhu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xc67e867be6abec39 # initialize rs1
li x24, 0x6c09b1894b945783 # initialize rs2
mulhu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x250dbe854b14b3e7 # initialize rs1
li x25, 0x46afa79fea48dcb9 # initialize rs2
mulhu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x97448bf2c4f2a5a4 # initialize rs1
li x26, 0x9587f348fc31a807 # initialize rs2
mulhu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x98e0aed1b91f9e2b # initialize rs1
li x27, 0xc1a8c327e5d701f5 # initialize rs2
mulhu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x86c062d767f3704d # initialize rs1
li x28, 0xc644815b6d91df5b # initialize rs2
mulhu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x1eef239a8cc160ea # initialize rs1
li x29, 0x87ac20ac39a4b953 # initialize rs2
mulhu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc433cb35110ffabd # initialize rs1
li x30, 0x00f4a9b447f0d1ab # initialize rs2
mulhu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xc7b10710f91acf49 # initialize rs1
li x31, 0x413968954283a46f # initialize rs2
mulhu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x5, x22 # perform first operation
mulhu x14, x31, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x18, x12 # perform first operation
mulhu x7, x15, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x14, x11 # perform first operation
mulhu x26, x1, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x1, x30 # perform first operation
mulhu x10, x20, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x31, x28 # perform first operation
mulhu x31, x28, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x1, x25 # perform first operation
mulhu x28, x23, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x30, x1 # perform first operation
mulhu x7, x19, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x27, x9 # perform first operation
mulhu x19, x29, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x18, x29 # perform first operation
mulhu x12, x10, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x17, x1 # perform first operation
mulhu x17, x18, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x12, x1 # perform first operation
mulhu x1, x19, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x25, x6 # perform first operation
mulhu x7, x30, x18 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-mul.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x85558031f14a7e90 # initialize rs1
li x2, 0x485de21c77d32db8 # initialize rs2
mul x26, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xe5b2ba61fdb32a80 # initialize rs1
li x2, 0x521af14e3e0ace47 # initialize rs2
mul x8, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x09960fe51fa6bf61 # initialize rs1
li x3, 0x41154fc6270fbeca # initialize rs2
mul x25, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8e2b1214a3f82ab5 # initialize rs1
li x14, 0x88b923e9406720e0 # initialize rs2
mul x11, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1c0984f74b85bca4 # initialize rs1
li x29, 0x17f6999229bf93ef # initialize rs2
mul x1, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcb19d8daa53dd02f # initialize rs1
li x27, 0x9ece252fabaa1a99 # initialize rs2
mul x19, x5, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7d64b18097618499 # initialize rs1
li x31, 0xa8c89e501b571492 # initialize rs2
mul x29, x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcaa91f159268d865 # initialize rs1
li x18, 0x1e1f1f5d5313a2f0 # initialize rs2
mul x15, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xa09b3878d56d9139 # initialize rs1
li x25, 0x2f5317622f69ed12 # initialize rs2
mul x3, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xbd104bf002505130 # initialize rs1
li x3, 0xa88a8febd84761dd # initialize rs2
mul x28, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x4d9a1b8d2bc68259 # initialize rs1
li x28, 0x1b59ab7e042bd76a # initialize rs2
mul x31, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x73ce1d34fccd5425 # initialize rs1
li x15, 0x479c750ecf4bc615 # initialize rs2
mul x24, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x7845a6a47271588d # initialize rs1
li x3, 0x426542a0e452f0d6 # initialize rs2
mul x30, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xec072c45abfb1641 # initialize rs1
li x14, 0xd022b98dca4585bb # initialize rs2
mul x26, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4b4f4902de8932a0 # initialize rs1
li x18, 0x42f10512b3837019 # initialize rs2
mul x16, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x14c8f53c5048016a # initialize rs1
li x14, 0xfb2b1e497da5c0d0 # initialize rs2
mul x24, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xf79bbca87c968d7e # initialize rs1
li x12, 0x5f4847074c380284 # initialize rs2
mul x23, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x738d6067fac2a18e # initialize rs1
li x14, 0x5adee5d93558a1b6 # initialize rs2
mul x21, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x0a569f5b39c34a63 # initialize rs1
li x30, 0xe641aebcdfdb07ff # initialize rs2
mul x8, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x438f530726f92a9f # initialize rs1
li x25, 0x473363fd932af80b # initialize rs2
mul x15, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x54ea7c159e521f42 # initialize rs1
li x11, 0xccc4e0cf5d2d45eb # initialize rs2
mul x30, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x8a5761058f27d906 # initialize rs1
li x31, 0x4b6a47e7208fee55 # initialize rs2
mul x19, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x55a5a7eb616f7a04 # initialize rs1
li x21, 0x0e2178710e667797 # initialize rs2
mul x16, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb8ecfa82864bfd72 # initialize rs1
li x18, 0xe74e912971c59e65 # initialize rs2
mul x7, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xb5e7151a6bd78490 # initialize rs1
li x12, 0xe0dfb59d4ab02f8b # initialize rs2
mul x13, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xe88d39ae513187fa # initialize rs1
li x2, 0x341e9dab79ab696a # initialize rs2
mul x27, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x2debd9db23e519f9 # initialize rs1
li x17, 0x416d6131f9d6afa4 # initialize rs2
mul x16, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x637a6407ae475083 # initialize rs1
li x15, 0xab4bba8e5c872f85 # initialize rs2
mul x11, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x5855878db671124d # initialize rs1
li x2, 0xc9a1ca76af0322b0 # initialize rs2
mul x26, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x3ce6fa5df0aebd88 # initialize rs1
li x22, 0x00e8b84223a47628 # initialize rs2
mul x23, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x1403d929aafcf2a3 # initialize rs1
li x2, 0x43c5306f38cd4177 # initialize rs2
mul x26, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x68902d6b519be338 # initialize rs1
li x22, 0x7283339ced8fb406 # initialize rs2
mul x5, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x27, 0x028695baa537c6fc # initialize rs1
li x0, 0x6e44599c8c0af779 # initialize rs2
mul x30, x27, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0xe9e126dfc0f5bddc # initialize rs1
li x1, 0x9a24b80e6760a224 # initialize rs2
mul x15, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x29, 0x494d03f4c5ee2daa # initialize rs1
li x2, 0xaefd5a285cd9d298 # initialize rs2
mul x18, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x15, 0xde6eeccf28e9f44c # initialize rs1
li x3, 0x510863bb9338c007 # initialize rs2
mul x29, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x820c08391417b4b8 # initialize rs1
li x4, 0xbc7da84f4ab10e02 # initialize rs2
mul x15, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
li x2, 0xdeb92e4ba46ce421 # initialize rs1
li x5, 0xb12c164f52e49ba1 # initialize rs2
mul x23, x2, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0xc91646c4973f9818 # initialize rs1
li x6, 0x0fe01131a3d2d47b # initialize rs2
mul x17, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x17, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x2729367ed8738c68 # initialize rs1
li x7, 0x3e0984d7ac5d824c # initialize rs2
mul x21, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0x63969d84f705f716 # initialize rs1
li x8, 0x5673506f1baa3112 # initialize rs2
mul x10, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x5, 0x20b30ebd62f9cd1c # initialize rs1
li x9, 0x97bfdc5ad3ea856e # initialize rs2
mul x14, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x25, 0x73e417bb385c1ef5 # initialize rs1
li x10, 0x1c6d2efa5fa83c3e # initialize rs2
mul x27, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x2, 0xd0e32727aece95a0 # initialize rs1
li x11, 0x490ea0b23a9eaa1e # initialize rs2
mul x20, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x17, 0x73a8cd66c014adce # initialize rs1
li x12, 0xb55de30ee517579a # initialize rs2
mul x10, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x27, 0x778ecf9662118383 # initialize rs1
li x13, 0xdbb64e54c6f43bc5 # initialize rs2
mul x17, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x2, 0x3a7915239f2465e2 # initialize rs1
li x14, 0x89fb8acc9f4a2f65 # initialize rs2
mul x7, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0x55352de8935ffc2c # initialize rs1
li x15, 0xe7b4f4c1ec92b805 # initialize rs2
mul x6, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x26, 0xfc4659b90f7e1583 # initialize rs1
li x16, 0x4562a1724d397402 # initialize rs2
mul x29, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0x9d54eed5be49022d # initialize rs1
li x17, 0xe4b5cdb93d587221 # initialize rs2
mul x16, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x5, 0x2c747532fcafdc73 # initialize rs1
li x18, 0xcde980470ad3f950 # initialize rs2
mul x1, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x21, 0x513ce8fa1377ed60 # initialize rs1
li x19, 0x9f45fcbc8ad9373a # initialize rs2
mul x13, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x28, 0xaff35d298a86087b # initialize rs1
li x20, 0xb9c62d98048448be # initialize rs2
mul x6, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x23, 0x808e560239f5f7bf # initialize rs1
li x21, 0x188f80e7769b7826 # initialize rs2
mul x14, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0x13560cef908262aa # initialize rs1
li x22, 0xbbbf836cd7a07ce4 # initialize rs2
mul x8, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x20, 0x6143fbf8767c418a # initialize rs1
li x23, 0x2262c48481a5f677 # initialize rs2
mul x5, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x10, 0x872cb34da5ffd7f2 # initialize rs1
li x24, 0xa45051b3e9ddeb4b # initialize rs2
mul x29, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x16, 0x53700e7f6b427b48 # initialize rs1
li x25, 0x554aae1867e884af # initialize rs2
mul x8, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x3, 0xbf649885e7612852 # initialize rs1
li x26, 0xb8210b229330984a # initialize rs2
mul x23, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x16, 0x32f583761c9ee19a # initialize rs1
li x27, 0x4e48e6d06bf149df # initialize rs2
mul x19, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x22, 0xa5bc85ff0c912c14 # initialize rs1
li x28, 0xf90fa2b035b67c88 # initialize rs2
mul x7, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0xa08b185d3603f549 # initialize rs1
li x29, 0x535a15644dbfb62b # initialize rs2
mul x12, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x16, 0x93b45be51fb03afe # initialize rs1
li x30, 0x6185993f51cf8c17 # initialize rs2
mul x2, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x12, 0x4245875b16b66c7e # initialize rs1
li x31, 0x6a7186b38a9ec6f5 # initialize rs2
mul x18, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 504)

# Testcase cp_rd (Test destination rd = x0)
li x23, 0xdd43703e7dbe4682 # initialize rs1
li x27, 0xcb6604000b6a821d # initialize rs2
mul x0, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x31, 0xc05f17cf029d7090 # initialize rs1
li x15, 0x132428ba60dec141 # initialize rs2
mul x1, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x30, 0x58ba903e61dbb0cd # initialize rs1
li x7, 0x10d1f0afc8a5b76b # initialize rs2
mul x2, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x31, 0x3b14704ce4c6c298 # initialize rs1
li x22, 0x2dc296589848d0e2 # initialize rs2
mul x3, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xf50c673f35c40870 # initialize rs1
li x5, 0xe7b6b5a84c732888 # initialize rs2
mul x4, x19, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
li x13, 0x52b0106f9961e307 # initialize rs1
li x15, 0x6f4670f80834f6f5 # initialize rs2
mul x5, x13, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x646eaa16544a9d6c # initialize rs1
li x26, 0x0a888d8a2346fa49 # initialize rs2
mul x6, x22, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x3200daa5165fd0bb # initialize rs1
li x6, 0x38cc83fa7c089236 # initialize rs2
mul x7, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x18, 0x57745bc3fe9eb928 # initialize rs1
li x12, 0x804add865b209e1b # initialize rs2
mul x8, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x29, 0xd77507f62bafdc2b # initialize rs1
li x14, 0x7c2ca2592fab2a0a # initialize rs2
mul x9, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0xd50c2e1e3d216e51 # initialize rs1
li x30, 0xccfa0697d8f82191 # initialize rs2
mul x10, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x15, 0x323e26a93d514b75 # initialize rs1
li x8, 0xc5af3a64626f720e # initialize rs2
mul x11, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x28, 0x9f15437ce518d279 # initialize rs1
li x29, 0xaad880a88481a861 # initialize rs2
mul x12, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x742b26729d9c6367 # initialize rs1
li x31, 0x19ed16232792332d # initialize rs2
mul x13, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x28, 0x7feee5e2a14ad7ca # initialize rs1
li x13, 0x6784a2e7ef9fbe26 # initialize rs2
mul x14, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0x646fa8686a7d9b59 # initialize rs1
li x17, 0x4cfd41850fd2c27f # initialize rs2
mul x15, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0x5510c86c3936e96b # initialize rs1
li x6, 0x7659281110ad703c # initialize rs2
mul x16, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x6, 0x94314339486d91a7 # initialize rs1
li x8, 0xff86d6a1f60eb933 # initialize rs2
mul x17, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0xfa3f55ff12b18cab # initialize rs1
li x19, 0x0893e62be72b6fa5 # initialize rs2
mul x18, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x5, 0x86e10d320ffc3446 # initialize rs1
li x10, 0x19a2037f212f6a52 # initialize rs2
mul x19, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x29, 0xfe63338d76f79742 # initialize rs1
li x14, 0xbd432a420da88ca7 # initialize rs2
mul x20, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0xe524a8d5a2546005 # initialize rs1
li x12, 0x73825cb0c1a6de2f # initialize rs2
mul x21, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x5218a17a8694b695 # initialize rs1
li x7, 0x72e44d30d4a3ad1b # initialize rs2
mul x22, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x25, 0x50ad7947dd28ba9d # initialize rs1
li x1, 0x3f316f06d10940f6 # initialize rs2
mul x23, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x21, 0x44f33079b3acac51 # initialize rs1
li x17, 0x52cf85fddbd41d4a # initialize rs2
mul x24, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0x9a0a7d25b773e0a7 # initialize rs1
li x27, 0x77bf9f3f983baca5 # initialize rs2
mul x25, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x22, 0x688f534ec5783d50 # initialize rs1
li x9, 0x28b95ad3f343e2f7 # initialize rs2
mul x26, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x9, 0x84bd288729f31678 # initialize rs1
li x11, 0xf7212102484884f2 # initialize rs2
mul x27, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x19, 0xb4afba5fb7e1abfc # initialize rs1
li x24, 0x99b7fb3961fcdc8a # initialize rs2
mul x28, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xcb8db8f5f625704f # initialize rs1
li x12, 0xa515ec9f70e3721f # initialize rs2
mul x29, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x24, 0x301f2bf55445dc43 # initialize rs1
li x26, 0x71cdb32b053aad1f # initialize rs2
mul x30, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x15, 0xabd45995c19adce2 # initialize rs1
li x12, 0x9d8b6ced047bee9f # initialize rs2
mul x31, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x0000000000000000 # initialize rs1
li x11, 0x636e13eb8a1a35aa # initialize rs2
mul x23, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0x0000000000000001 # initialize rs1
li x13, 0xc85a0de04947d5be # initialize rs2
mul x7, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x0000000000000002 # initialize rs1
li x17, 0x1ab660ca5cb20262 # initialize rs2
mul x19, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x25, 0x8000000000000000 # initialize rs1
li x8, 0x7a03b0730925d273 # initialize rs2
mul x23, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x17, 0x8000000000000001 # initialize rs1
li x13, 0x3ba073095ffbff0a # initialize rs2
mul x15, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x23, 0xb06557b2666cd0b2 # initialize rs2
mul x15, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x3, 0x59d6e7fc53f5c40a # initialize rs2
mul x15, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x16, 0x87b52091d9fe26c0 # initialize rs2
mul x15, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
li x19, 0xdaaf1f51a89e4462 # initialize rs2
mul x24, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0xd2a7c299deca27f8 # initialize rs2
mul x19, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x9a6546b494fc18f9 # initialize rs2
mul x29, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x16, 0x5555555555555555 # initialize rs1
li x23, 0xe901a1c3fd8f7ab4 # initialize rs2
mul x8, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x16, 0x00000000ffffffff # initialize rs1
li x11, 0x77fab77f46d729d5 # initialize rs2
mul x2, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x28, 0xa251133a5ae77eba # initialize rs2
mul x7, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x16, 0x0000000100000000 # initialize rs1
li x8, 0x87b0569b5e034429 # initialize rs2
mul x21, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x26, 0x0000000100000001 # initialize rs1
li x20, 0xd561149eccf728b2 # initialize rs2
mul x31, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x8f796404d0ecc232 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
mul x25, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0x27081f41b5767c49 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
mul x5, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x1, 0xfdcad3fadb6afc83 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
mul x8, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x1, 0xf761d4fc11ba8c44 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
mul x20, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x31, 0x04387ea37b22f740 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
mul x9, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x5, 0x6643fd1fb0866ff3 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
mul x7, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x7, 0xc2e7bfea0474cf64 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
mul x17, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x3, 0x4f81f5aa3bcba8ac # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
mul x25, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x1, 0xce13b2f6653c3ff4 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
mul x7, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x20, 0xef21fe322f7bc4b2 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
mul x3, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0xa6e8b27b6a8af6c9 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x2, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x28, 0xbc0dba46b47358da # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
mul x25, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x5, 0x791bf0ca6ad5f641 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
mul x11, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x10, 0x6deb463e1530ce18 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
mul x1, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x5, 0x0db66d86bcb08da5 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
mul x23, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x18, 0xe9300a829b98237e # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
mul x1, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x5, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
mul x17, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x27, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
mul x15, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x28, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
mul x8, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x31, 0x0000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
mul x17, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x23, 0x0000000000000000 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
mul x10, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000000 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
mul x23, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000000000000 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
mul x14, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
mul x28, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000000 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
mul x12, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x11, 0x0000000000000000 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
mul x10, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x0000000000000000 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x10, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x16, 0x0000000000000000 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
mul x30, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x19, 0x0000000000000000 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
mul x1, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
mul x14, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x6, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mul x22, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x24, 0x0000000000000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
mul x15, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x11, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
mul x30, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x21, 0x0000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
mul x15, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x9, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
mul x14, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x14, 0x0000000000000001 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
mul x8, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x6, 0x0000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
mul x10, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x16, 0x0000000000000001 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
mul x15, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000000000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
mul x6, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x17, 0x0000000000000001 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
mul x9, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000000000001 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
mul x11, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x28, 0x0000000000000001 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
mul x14, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000000000001 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x21, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x29, 0x0000000000000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
mul x28, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x5, 0x0000000000000001 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
mul x26, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x19, 0x0000000000000001 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
mul x24, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x11, 0x0000000000000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
mul x21, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x3, 0x0000000000000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
mul x14, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x14, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
mul x13, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x11, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
mul x22, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x18, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
mul x30, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x22, 0x0000000000000002 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
mul x25, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x17, 0x0000000000000002 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
mul x2, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000000000002 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
mul x31, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000000000002 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
mul x31, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x24, 0x0000000000000002 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
mul x25, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
mul x6, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000000000002 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
mul x10, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000000000002 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x2, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x7, 0x0000000000000002 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
mul x18, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
mul x14, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x19, 0x0000000000000002 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
mul x16, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x29, 0x0000000000000002 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
mul x2, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x31, 0x0000000000000002 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
mul x11, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x21, 0x8000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
mul x1, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x14, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
mul x10, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x29, 0x8000000000000000 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
mul x2, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x5, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
mul x27, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x17, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
mul x27, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x12, 0x8000000000000000 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
mul x21, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x20, 0x8000000000000000 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
mul x14, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x17, 0x8000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
mul x30, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x19, 0x8000000000000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
mul x13, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x25, 0x8000000000000000 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
mul x22, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x8000000000000000 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x27, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x28, 0x8000000000000000 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
mul x17, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x27, 0x8000000000000000 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
mul x9, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x5, 0x8000000000000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mul x25, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x1, 0x8000000000000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
mul x23, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x1, 0x8000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
mul x22, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x15, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
mul x10, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x29, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
mul x9, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x13, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
mul x3, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x25, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
mul x13, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
mul x27, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x12, 0x8000000000000001 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
mul x13, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x3, 0x8000000000000001 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
mul x30, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x22, 0x8000000000000001 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
mul x18, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x14, 0x8000000000000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
mul x23, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x18, 0x8000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
mul x25, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x8000000000000001 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x29, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x14, 0x8000000000000001 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
mul x11, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x5, 0x8000000000000001 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
mul x9, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x17, 0x8000000000000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mul x19, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x1, 0x8000000000000001 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
mul x13, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x27, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
mul x23, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x9, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
mul x15, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x12, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
mul x24, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x22, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
mul x29, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x10, 0x7fffffffffffffff # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
mul x24, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x7, 0x7fffffffffffffff # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
mul x5, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x9, 0x7fffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
mul x25, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0x7fffffffffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
mul x30, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
mul x11, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x9, 0x7fffffffffffffff # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
mul x27, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x12, 0x7fffffffffffffff # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
mul x22, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x7fffffffffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x13, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x27, 0x7fffffffffffffff # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
mul x23, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x1, 0x7fffffffffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
mul x12, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x1, 0x7fffffffffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
mul x6, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x26, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
mul x3, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x5, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
mul x23, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x28, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
mul x24, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x14, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
mul x2, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x27, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
mul x17, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x27, 0x7ffffffffffffffe # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
mul x3, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x12, 0x7ffffffffffffffe # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
mul x31, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x27, 0x7ffffffffffffffe # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mul x26, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
mul x27, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
mul x29, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x5, 0x7ffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
mul x17, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x3, 0x7ffffffffffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
mul x1, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x7ffffffffffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x19, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x17, 0x7ffffffffffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
mul x12, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x31, 0x7ffffffffffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
mul x28, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
mul x15, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x27, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
mul x29, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x2, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
mul x14, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x23, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
mul x16, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x21, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
mul x28, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x23, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
mul x17, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x30, 0xffffffffffffffff # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mul x26, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x27, 0xffffffffffffffff # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
mul x31, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
mul x11, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x25, 0xffffffffffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
mul x12, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
mul x25, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x14, 0xffffffffffffffff # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
mul x8, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x7, 0xffffffffffffffff # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
mul x2, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0xffffffffffffffff # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x28, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x19, 0xffffffffffffffff # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
mul x20, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x14, 0xffffffffffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
mul x19, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x18, 0xffffffffffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
mul x6, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x10, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mul x30, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x19, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
mul x26, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x20, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
mul x9, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x11, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
mul x2, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x26, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
mul x21, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x2, 0xfffffffffffffffe # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
mul x9, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x2, 0xfffffffffffffffe # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
mul x31, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x16, 0xfffffffffffffffe # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
mul x30, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
mul x10, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
mul x13, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
mul x26, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x15, 0xfffffffffffffffe # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
mul x3, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xfffffffffffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x28, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x10, 0xfffffffffffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
mul x5, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
mul x29, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x22, 0xfffffffffffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
mul x26, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x31, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mul x11, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x1, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
mul x6, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
mul x6, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
mul x26, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
mul x18, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
mul x21, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
mul x21, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
mul x7, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
mul x21, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mul x7, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
mul x13, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
mul x24, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x27, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
mul x11, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
mul x7, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
mul x28, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
mul x11, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
mul x15, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
mul x31, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
mul x24, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
mul x6, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
mul x3, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
mul x30, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mul x29, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
mul x18, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
mul x26, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
mul x20, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
mul x1, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x20, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
mul x19, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
mul x25, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
mul x22, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
mul x29, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
mul x30, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x18, 0x5555555555555555 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
mul x19, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x14, 0x5555555555555555 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
mul x5, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x9, 0x5555555555555555 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
mul x14, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x27, 0x5555555555555555 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
mul x20, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x31, 0x5555555555555555 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
mul x16, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x1, 0x5555555555555555 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
mul x24, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x25, 0x5555555555555555 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
mul x7, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x18, 0x5555555555555555 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
mul x22, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x28, 0x5555555555555555 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
mul x26, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x13, 0x5555555555555555 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
mul x22, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x5555555555555555 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x1, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x22, 0x5555555555555555 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
mul x26, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x26, 0x5555555555555555 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
mul x2, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x22, 0x5555555555555555 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mul x8, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x30, 0x5555555555555555 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mul x11, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x11, 0x5555555555555555 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
mul x2, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x12, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
mul x18, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x6, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
mul x18, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x5, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
mul x7, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x23, 0x00000000ffffffff # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
mul x27, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x5, 0x00000000ffffffff # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
mul x9, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x10, 0x00000000ffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
mul x31, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x00000000ffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
mul x30, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x21, 0x00000000ffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
mul x2, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x2, 0x00000000ffffffff # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
mul x9, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x5, 0x00000000ffffffff # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
mul x7, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x00000000ffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x20, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x12, 0x00000000ffffffff # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
mul x27, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x28, 0x00000000ffffffff # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
mul x5, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x29, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
mul x10, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x8, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
mul x18, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x1, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
mul x12, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x9, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
mul x5, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x16, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
mul x8, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x7, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
mul x6, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x30, 0x00000000fffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mul x10, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x10, 0x00000000fffffffe # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
mul x20, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
mul x12, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
mul x18, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x19, 0x00000000fffffffe # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
mul x1, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x5, 0x00000000fffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
mul x10, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x11, 0x00000000fffffffe # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
mul x3, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x00000000fffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x2, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x17, 0x00000000fffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mul x7, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x31, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
mul x1, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x19, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
mul x23, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x29, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
mul x6, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x10, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
mul x22, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x24, 0x0000000100000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
mul x19, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x18, 0x0000000100000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
mul x25, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x30, 0x0000000100000000 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
mul x27, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x22, 0x0000000100000000 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
mul x9, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x6, 0x0000000100000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
mul x26, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000100000000 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
mul x11, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000100000000 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
mul x19, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x7, 0x0000000100000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
mul x2, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000100000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
mul x3, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000100000000 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
mul x14, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000100000000 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x27, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x16, 0x0000000100000000 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
mul x10, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x19, 0x0000000100000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
mul x21, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x18, 0x0000000100000000 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
mul x30, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x16, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mul x22, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x18, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
mul x21, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x7, 0x0000000100000001 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
mul x11, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x24, 0x0000000100000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
mul x25, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x5, 0x0000000100000001 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
mul x27, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x18, 0x0000000100000001 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
mul x26, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x14, 0x0000000100000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
mul x26, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000001 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
mul x2, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x19, 0x0000000100000001 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
mul x1, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
mul x16, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000100000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
mul x11, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000100000001 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
mul x6, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x0000000100000001 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x20, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x9, 0x0000000100000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
mul x1, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
mul x17, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x18, 0x0000000100000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
mul x13, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x15, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
mul x19, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x16, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
mul x30, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xc7578ba2eb9fb59d # initialize rs1
li x0, 0x9e44a46795802ebe # initialize rs2
mul x2, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xbd28a121fb371cd8 # initialize rs1
li x1, 0x619169d8a474a6d8 # initialize rs2
mul x30, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x2bda2365ed12cc6c # initialize rs1
li x2, 0x983ecea2142d7671 # initialize rs2
mul x24, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x78aad300f60e6b14 # initialize rs1
li x3, 0xd1cb9cd6ae9b78e4 # initialize rs2
mul x6, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9ec828f11a8d3fbb # initialize rs1
li x4, 0x83d9247dac617459 # initialize rs2
mul x17, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb32d89f78543eedb # initialize rs1
li x5, 0xc3a50a2eb5170e22 # initialize rs2
mul x30, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8dcaa4245708086d # initialize rs1
li x6, 0xc5ea2cfab9fa4f40 # initialize rs2
mul x13, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbfc7772e2a1c8f60 # initialize rs1
li x7, 0x674b2f421c93862f # initialize rs2
mul x17, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x3d654e537eb8eda7 # initialize rs1
li x8, 0x4091a4933a6875b6 # initialize rs2
mul x26, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa55421f8211bc68a # initialize rs1
li x9, 0x3e66a2671b30fc34 # initialize rs2
mul x20, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xc056c9c35146909c # initialize rs1
li x10, 0xa0bcba407c794da1 # initialize rs2
mul x18, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x4bd304e4d778c4d8 # initialize rs1
li x11, 0x204f6174b25d1e94 # initialize rs2
mul x6, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x5665bdcfa9d095cb # initialize rs1
li x12, 0xca622eecf4abfbe6 # initialize rs2
mul x18, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xafef1d645e02debf # initialize rs1
li x13, 0xed443b5c3861a0f1 # initialize rs2
mul x29, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xa6814f5918f02df4 # initialize rs1
li x14, 0x4d6efabecb6f3370 # initialize rs2
mul x20, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x395ebd2c1ed38118 # initialize rs1
li x15, 0x636379cb845002fa # initialize rs2
mul x20, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x78b255d0563d8319 # initialize rs1
li x16, 0xf915f51120c7c944 # initialize rs2
mul x26, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x96922924eaabc586 # initialize rs1
li x17, 0x2deb7a93fc2d8288 # initialize rs2
mul x29, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xa3d768ab4f839fa6 # initialize rs1
li x18, 0xa1f2674bec7fcb21 # initialize rs2
mul x27, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xc2eb43ee76abbe6a # initialize rs1
li x19, 0xf079faf0382a80f6 # initialize rs2
mul x20, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x027f0adb2208b351 # initialize rs1
li x20, 0x0fc29554fbb06141 # initialize rs2
mul x14, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x96236735b3440d2f # initialize rs1
li x21, 0x0e4221ade4e0b047 # initialize rs2
mul x22, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x334c4c4ad0c0fd11 # initialize rs1
li x22, 0xa1aec849bc60b96a # initialize rs2
mul x8, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x66a751e10c6c9404 # initialize rs1
li x23, 0x42aefd111b549140 # initialize rs2
mul x22, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x7b013bebde022a6a # initialize rs1
li x24, 0x526797bae6423138 # initialize rs2
mul x22, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x0daeb1b7bbf4c4fe # initialize rs1
li x25, 0xfb93a67f2cf9ddf5 # initialize rs2
mul x23, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xeeb37dc8108db715 # initialize rs1
li x26, 0x74cfcff761daad63 # initialize rs2
mul x21, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x788357ab3a70d8f2 # initialize rs1
li x27, 0x94d8e642c5b3186c # initialize rs2
mul x7, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xdbdf0c0a8f480faf # initialize rs1
li x28, 0xff52e37570d89339 # initialize rs2
mul x30, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xdde4f0fdeceb2087 # initialize rs1
li x29, 0xf322d5b711b89e78 # initialize rs2
mul x23, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x79cf4e2c5a73dd5b # initialize rs1
li x30, 0xaa8866dfa421441b # initialize rs2
mul x28, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xbe28e2e8c7ea1278 # initialize rs1
li x31, 0x62569986a8154fcc # initialize rs2
mul x5, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf2055550b0bcdac4 # initialize rs1
li x15, 0xd7c63137052a07b2 # initialize rs2
mul x0, x0, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x34abc82e7db2ade0 # initialize rs1
li x8, 0x3f7189535b394e2f # initialize rs2
mul x1, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8fe49f31ad6f25db # initialize rs1
li x20, 0xd813f4fef35949c2 # initialize rs2
mul x2, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x4764802b2c5d3ed6 # initialize rs1
li x2, 0xeba5951f085e4cea # initialize rs2
mul x3, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x93bc6d575ce27b7b # initialize rs1
li x28, 0x5e297094e0d6a677 # initialize rs2
mul x4, x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8148e3d50098dea0 # initialize rs1
li x6, 0x24ac2f502e0469ef # initialize rs2
mul x5, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xdab4d41f75d92e53 # initialize rs1
li x18, 0xa00df124f64472ad # initialize rs2
mul x6, x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbc9bf9ae7ba17b65 # initialize rs1
li x11, 0xa9f755fa64fe05e9 # initialize rs2
mul x7, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xc65cf21d96fa1508 # initialize rs1
li x14, 0x9b28982ed9fed59a # initialize rs2
mul x8, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x2b2177ca5fe22c9d # initialize rs1
li x11, 0xd2de0ed4bd5fe764 # initialize rs2
mul x9, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xfb984017e0fbbbec # initialize rs1
li x23, 0x0b330fea945673a5 # initialize rs2
mul x10, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x4afcf1f85188b848 # initialize rs1
li x13, 0x7af49cac3c895e12 # initialize rs2
mul x11, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf4d50f5e527f5757 # initialize rs1
li x18, 0x4a839f3c0d152b91 # initialize rs2
mul x12, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd15483e4d1ab925d # initialize rs1
li x15, 0x9dc7983e588e50fc # initialize rs2
mul x13, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x905ca0805dde3006 # initialize rs1
li x10, 0xdbcef929c068d54b # initialize rs2
mul x14, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd368c5a5c02b0854 # initialize rs1
li x12, 0x9e51d0505c4304d1 # initialize rs2
mul x15, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xf86b0bdffddbdf45 # initialize rs1
li x14, 0xdd2dcb9c4e8d8a8e # initialize rs2
mul x16, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xaca1dd9d5ef4d76c # initialize rs1
li x7, 0x00e841e13f8b1c7d # initialize rs2
mul x17, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x7fbcec078a565ebb # initialize rs1
li x10, 0x053d1f8748d45719 # initialize rs2
mul x18, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xd5f6a34faf858cb0 # initialize rs1
li x25, 0xf97d3613a2b46089 # initialize rs2
mul x19, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa136fade5c52f76e # initialize rs1
li x21, 0xcb29e2ea6b6d73c9 # initialize rs2
mul x20, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x9a0049c6278c1ad4 # initialize rs1
li x26, 0xca0f6ab320b5a5a2 # initialize rs2
mul x21, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x61a5b1092b302791 # initialize rs1
li x30, 0xafdc76fa11bc6f70 # initialize rs2
mul x22, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xcbee2de98b4f81cf # initialize rs1
li x13, 0x950601d77aa0cce6 # initialize rs2
mul x23, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x79c0656a8e3c2ead # initialize rs1
li x20, 0x9be4e334dbe2a375 # initialize rs2
mul x24, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xda7c1d1cec04d958 # initialize rs1
li x29, 0x9960199f03bc53ec # initialize rs2
mul x25, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2181df928ea7bed1 # initialize rs1
li x21, 0x21365c02f120dd4f # initialize rs2
mul x26, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xef04271e907d174f # initialize rs1
li x19, 0x019e7ffd5a4c255f # initialize rs2
mul x27, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x87d9b5f339b8febb # initialize rs1
li x21, 0x056092c8b23fda1e # initialize rs2
mul x28, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xaf06ce27c9f6320d # initialize rs1
li x24, 0x5336719456f5b85b # initialize rs2
mul x29, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x3fc0bb73d2899603 # initialize rs1
li x8, 0x72a8c24447917ab6 # initialize rs2
mul x30, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe05f318339683fd6 # initialize rs1
li x22, 0xfcfbf7cf19c851aa # initialize rs2
mul x31, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x28, 0xea95840f28a81a24 # initialize rs1
li x0, 0x55fb782d3b3e1177 # initialize rs2
mul x0, x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0x10b8f5a98f66a8ae # initialize rs1
li x1, 0x587ebc3020915ec1 # initialize rs2
mul x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x24, 0x46ce1c8a8af6f483 # initialize rs1
li x2, 0x9056b1ad197e8b68 # initialize rs2
mul x2, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x7, 0xfecd2f96945f25b5 # initialize rs1
li x3, 0xe5be32d602cfc302 # initialize rs2
mul x3, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x1f5b7b49b4d4fefe # initialize rs1
li x4, 0x93e1bc7953a4945d # initialize rs2
mul x4, x17, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0x37b0c1f45936e8f1 # initialize rs1
li x5, 0xd1129137a213c5d4 # initialize rs2
mul x5, x28, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x6310a8012459f5c1 # initialize rs1
li x6, 0x687bda4c4cfabace # initialize rs2
mul x6, x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x9b85132946007b72 # initialize rs1
li x7, 0x3963d7fa4b0c1d40 # initialize rs2
mul x7, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x19, 0x771e5127c75f69a6 # initialize rs1
li x8, 0x2960da03ed0d0526 # initialize rs2
mul x8, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x30, 0x90576e12c54baca3 # initialize rs1
li x9, 0xc1fa3a1635228600 # initialize rs2
mul x9, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x19, 0x6cf40bd7dd067f50 # initialize rs1
li x10, 0x912da9986dd76d01 # initialize rs2
mul x10, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x22, 0xb3e34e7205ac4a70 # initialize rs1
li x11, 0xd2b1864090ec4da9 # initialize rs2
mul x11, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x7, 0x714c8225d30989b5 # initialize rs1
li x12, 0xb45984bb49f416ae # initialize rs2
mul x12, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x11, 0x865a59cec87710f7 # initialize rs1
li x13, 0xa0065536bc8ce515 # initialize rs2
mul x13, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x21, 0xec70f15aae23b2e5 # initialize rs1
li x14, 0x043713e96deb2c06 # initialize rs2
mul x14, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x10, 0x8732e8f07d7cbcbd # initialize rs1
li x15, 0x65b30d61b11ba027 # initialize rs2
mul x15, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x18, 0x34e63cb09bd1d11a # initialize rs1
li x16, 0x3b09cdb0ab73dc68 # initialize rs2
mul x16, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x24, 0x5f41a1c240fc9f3a # initialize rs1
li x17, 0x71410dac9913b217 # initialize rs2
mul x17, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x8, 0x91c3ef9e38cd61c0 # initialize rs1
li x18, 0x5620f0db5ae02247 # initialize rs2
mul x18, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x15, 0xa66c2f190cc2b8a5 # initialize rs1
li x19, 0x6fb4504035707eb2 # initialize rs2
mul x19, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x21, 0x9c3f87df9aa9d8b0 # initialize rs1
li x20, 0xab15f72b7e7c3fbb # initialize rs2
mul x20, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x733b4cb32d610df1 # initialize rs1
li x21, 0xedc5ff6760884282 # initialize rs2
mul x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x28, 0x8eb26c79f5fb64c9 # initialize rs1
li x22, 0x729dbcc2f57ef0e3 # initialize rs2
mul x22, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x26, 0x514dc58143ea5832 # initialize rs1
li x23, 0x401dd294c6525dcd # initialize rs2
mul x23, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x2bc4a0ece342cae4 # initialize rs1
li x24, 0x8296b7318fd9a6ac # initialize rs2
mul x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x1, 0x3d3061c1894eb32e # initialize rs1
li x25, 0xc829a8f50863ff06 # initialize rs2
mul x25, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x13, 0xa4255d88e243dcf9 # initialize rs1
li x26, 0xee79de95f770cb8b # initialize rs2
mul x26, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x26, 0x4823910695f6afa9 # initialize rs1
li x27, 0x4d633794971a0512 # initialize rs2
mul x27, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x23, 0xff5a7903132b3d34 # initialize rs1
li x28, 0xf0c24d94ee9cdb5a # initialize rs2
mul x28, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x20, 0xa26dee6995d3acf4 # initialize rs1
li x29, 0x518e16dd0b17b440 # initialize rs2
mul x29, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x10, 0x9b66cab85b893847 # initialize rs1
li x30, 0xd1e9536cb52e39ba # initialize rs2
mul x30, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x29, 0xaf0719c1f8e19b66 # initialize rs1
li x31, 0xc838b736699e76ee # initialize rs2
mul x31, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x08b1eaf51da0b2b3 # initialize rs1
li x0, 0xd7eca822dfae6fdc # initialize rs2
mul x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x4cfa66f1f1696b7b # initialize rs1
li x1, 0xadaa7e7c5084f583 # initialize rs2
mul x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x88e3aa086a582da8 # initialize rs1
li x2, 0x80445eef7eacd149 # initialize rs2
mul x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x1a1819d88bda0724 # initialize rs1
li x3, 0x697645dc565cb5dc # initialize rs2
mul x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x394fcd70b6759ea6 # initialize rs1
li x4, 0x1e6a62305c8685b7 # initialize rs2
mul x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xae383bc262b78838 # initialize rs1
li x5, 0xf46f1b454c2bcb47 # initialize rs2
mul x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x137ee89bc6b042d2 # initialize rs1
li x6, 0xd02419044bb2fd95 # initialize rs2
mul x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb37f742cfbe3c5fa # initialize rs1
li x7, 0x591d39bc853f8204 # initialize rs2
mul x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x7c9022273634d611 # initialize rs1
li x8, 0x2cbf1728c3c9f74d # initialize rs2
mul x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x127aea31ad4c2ee4 # initialize rs1
li x9, 0x6c0d1c89b6c3ce07 # initialize rs2
mul x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xae1a30ac7d920185 # initialize rs1
li x10, 0x2223b212cd213b76 # initialize rs2
mul x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xc30fb8dfe9b5f573 # initialize rs1
li x11, 0xf0a1ecf1f517effd # initialize rs2
mul x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x7be19b6dfd16b80d # initialize rs1
li x12, 0x72216eb25b0eafb0 # initialize rs2
mul x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x9e00ac487c713942 # initialize rs1
li x13, 0x0280d86eb657e9e3 # initialize rs2
mul x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd73fbb925bec829e # initialize rs1
li x14, 0x392b7c070871dcdb # initialize rs2
mul x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xc87e5393672e558e # initialize rs1
li x15, 0x4fe4f8159a766b43 # initialize rs2
mul x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x936b95495989754e # initialize rs1
li x16, 0xbd170cafffc9281e # initialize rs2
mul x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe764aeddb7e86dee # initialize rs1
li x17, 0x81a4c1f538677f68 # initialize rs2
mul x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x1304991ce640134a # initialize rs1
li x18, 0x65e1bab87175a1ab # initialize rs2
mul x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x766efa65c446bdd9 # initialize rs1
li x19, 0x71d958546288cfe5 # initialize rs2
mul x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x5817e01c49b44da3 # initialize rs1
li x20, 0xb8bb3be6a7d53ad6 # initialize rs2
mul x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xbccb2c920ff2ed19 # initialize rs1
li x21, 0xfe4e094a007f8b98 # initialize rs2
mul x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x96ee095ef0c0fb28 # initialize rs1
li x22, 0x8b677c5988914e30 # initialize rs2
mul x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xb5bef4ee31661aa6 # initialize rs1
li x23, 0x44add840d0451398 # initialize rs2
mul x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xbc3dc37f8514c008 # initialize rs1
li x24, 0x8646f8f4baa3d450 # initialize rs2
mul x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x4a7ae247289027ce # initialize rs1
li x25, 0x6ddb2c75f2feade2 # initialize rs2
mul x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x19a5b2608a1cff40 # initialize rs1
li x26, 0x0195fc96cc96fe56 # initialize rs2
mul x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xca9b7cdc225999dd # initialize rs1
li x27, 0x776abede07205a29 # initialize rs2
mul x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x1203d2ea910cb368 # initialize rs1
li x28, 0xfdd6546e727b6105 # initialize rs2
mul x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x7d0e50df9c5c2373 # initialize rs1
li x29, 0x11dc86b56ad189b4 # initialize rs2
mul x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x44d15660c1e10ccd # initialize rs1
li x30, 0x5fad2b23e28f3329 # initialize rs2
mul x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x591fc01d59bd20f3 # initialize rs1
li x31, 0x006fca5e40960cbd # initialize rs2
mul x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x10, x21 # perform first operation
mul x18, x22, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x13, x17 # perform first operation
mul x29, x18, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x15, x10 # perform first operation
mul x20, x12, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x12, x25 # perform first operation
mul x19, x8, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x28, x22 # perform first operation
mul x1, x19, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x28, x22 # perform first operation
mul x28, x9, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x30, x18 # perform first operation
mul x26, x7, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x29, x11 # perform first operation
mul x25, x10, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x12, x16 # perform first operation
mul x29, x22, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x10, x26 # perform first operation
mul x10, x15, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x17, x19 # perform first operation
mul x19, x11, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x2, x16 # perform first operation
mul x18, x9, x8 # perform second (triggering) operation

#.EQU SIGSIZE,4096
.EQU SIGSIZE,20480 #combined


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
