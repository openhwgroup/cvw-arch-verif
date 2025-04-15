///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zmmul/WALLY-COV-mulw.S
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
