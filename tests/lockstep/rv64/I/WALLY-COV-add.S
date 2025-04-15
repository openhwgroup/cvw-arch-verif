///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-add.S
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
li x0, 0xeaa512b33f4a8abd # initialize rs1
li x24, 0xa673bdbd2995452a # initialize rs2
add x25, x0, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xf175f3dfb907ad96 # initialize rs1
li x30, 0xb2605c395c4b7ea1 # initialize rs2
add x16, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x7103a60caefe3c9c # initialize rs1
li x19, 0x99201c67cc5ce5dc # initialize rs2
add x17, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x06587591f533cf5a # initialize rs1
li x15, 0x0ddcce40076240f5 # initialize rs2
add x31, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xabc0f8991478ddcf # initialize rs1
li x26, 0xa8c9c0060c2d9615 # initialize rs2
add x22, x4, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x29463b9a8f865f5c # initialize rs1
li x4, 0x3e498d4923a2996d # initialize rs2
add x23, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb8679e11c53bfcaf # initialize rs1
li x2, 0x9f2f62e9df4a5f55 # initialize rs2
add x29, x6, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x6, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa60bef0cc4ff89ba # initialize rs1
li x4, 0xf6c6e227c7a9137e # initialize rs2
add x5, x7, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf65de99814a84cc0 # initialize rs1
li x24, 0x66aa280a22773413 # initialize rs2
add x26, x8, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xdd26fc4c41b2ac37 # initialize rs1
li x20, 0x08c2eb61b72635c8 # initialize rs2
add x7, x9, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x5b6f1137dbc60702 # initialize rs1
li x5, 0x429ebecd8541527b # initialize rs2
add x15, x10, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa7bb3ee598fea259 # initialize rs1
li x8, 0xaabf7cf743c647b1 # initialize rs2
add x16, x11, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x471a0e78e81fbae6 # initialize rs1
li x21, 0xedccfc10ce0520a3 # initialize rs2
add x13, x12, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xbaf03ed8cf1bfa5e # initialize rs1
li x19, 0x0286770119108578 # initialize rs2
add x28, x13, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x7dfb2019dee8e75a # initialize rs1
li x22, 0xab3413c6d452b1aa # initialize rs2
add x20, x14, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x560b0a31f80c75e2 # initialize rs1
li x13, 0xae0a69d1aa6da444 # initialize rs2
add x21, x15, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x5c60e245657a553d # initialize rs1
li x5, 0xd37f503768c62473 # initialize rs2
add x8, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x765d24bd2f125793 # initialize rs1
li x9, 0x7dfa8c7996cabe72 # initialize rs2
add x25, x17, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x65e9b870d899aed3 # initialize rs1
li x1, 0x81687b82c1f1ce78 # initialize rs2
add x20, x18, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x0a2c1f61d8ef9e09 # initialize rs1
li x23, 0x345ae9f21903fcbe # initialize rs2
add x1, x19, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x44a57e924c360efc # initialize rs1
li x23, 0xb2f85aaef8134c69 # initialize rs2
add x1, x20, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xd7456f173a304e92 # initialize rs1
li x13, 0xc31c0d20da414075 # initialize rs2
add x25, x21, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xc87725fcd02f01be # initialize rs1
li x2, 0x7341bdb0c4e3f776 # initialize rs2
add x4, x22, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x004484779c6fb66b # initialize rs1
li x24, 0x04fb36ba72b94eec # initialize rs2
add x10, x23, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xde892c29be5741ca # initialize rs1
li x31, 0x8bf87680ed7c42dc # initialize rs2
add x22, x24, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xe899a96ddb9bf83a # initialize rs1
li x5, 0x72f41290d9bc2508 # initialize rs2
add x31, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x30cad8b46bd7b3b0 # initialize rs1
li x24, 0x81aa00e9a5706d6a # initialize rs2
add x13, x26, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x3865952aa7c19a55 # initialize rs1
li x30, 0xfb6974b7f78c152d # initialize rs2
add x19, x27, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xac34d45377509398 # initialize rs1
li x27, 0x055a779be94276b6 # initialize rs2
add x13, x28, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xa0fd16fa86947a2a # initialize rs1
li x2, 0xaa5cbe6d7fb25c07 # initialize rs2
add x26, x29, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xa8cbca7480abaaa7 # initialize rs1
li x22, 0x896c11dd4964c761 # initialize rs2
add x13, x30, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x17dc6ab01191d3eb # initialize rs1
li x23, 0x160a3d17cd6d87ab # initialize rs2
add x28, x31, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x31, 0x2c23a096867ee1d1 # initialize rs1
li x0, 0xcf650437b4737f6b # initialize rs2
add x12, x31, x0 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0xabde2caee8510754 # initialize rs1
li x1, 0xa019fd5d7c812696 # initialize rs2
add x26, x21, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x10, 0x2587e0d95926fe45 # initialize rs1
li x2, 0x7c20a9df8818ebd1 # initialize rs2
add x1, x10, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x24, 0x4d3e36f534a1a140 # initialize rs1
li x3, 0x049c24625e44271a # initialize rs2
add x10, x24, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
li x18, 0x128e3c158c2ab9e7 # initialize rs1
li x4, 0x545959064579f763 # initialize rs2
add x28, x18, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
li x15, 0xa6dd3cfeb61f3383 # initialize rs1
li x5, 0xc21eccb01e3e9d5a # initialize rs2
add x9, x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0xbd346c593e80450b # initialize rs1
li x6, 0xcd3a3208b1b60c2e # initialize rs2
add x19, x12, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x3ce3e7fbc824ee49 # initialize rs1
li x7, 0x79a28c996eda0414 # initialize rs2
add x9, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x25, 0x5639a8adad8552a1 # initialize rs1
li x8, 0x8a1af462bb5a1302 # initialize rs2
add x7, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x29, 0xdfcf6182bba0120a # initialize rs1
li x9, 0x5a7f969fc6e566bb # initialize rs2
add x18, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x8, 0x503cec9762485bb0 # initialize rs1
li x10, 0x5a9b914e171ed8e8 # initialize rs2
add x5, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0xe2a240ed0e1adf3e # initialize rs1
li x11, 0xfeef4a1cd6c2de04 # initialize rs2
add x3, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x8, 0x31d15543d6e80caa # initialize rs1
li x12, 0x687221de13d924e0 # initialize rs2
add x24, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x19, 0x74155d487161c407 # initialize rs1
li x13, 0x47b499c1ec37b3f6 # initialize rs2
add x15, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x19, 0xa6208c266f1a1418 # initialize rs1
li x14, 0x0fa2713a54b0bd90 # initialize rs2
add x7, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0x02605100e2b2a528 # initialize rs1
li x15, 0xb8a64ff01df6fd75 # initialize rs2
add x24, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x30, 0x317ae68aa7004992 # initialize rs1
li x16, 0x9377e1183677f399 # initialize rs2
add x10, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x20, 0x7edce4c7b143e934 # initialize rs1
li x17, 0x08eead03273d99b3 # initialize rs2
add x7, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x19, 0xe13083195a84c4f4 # initialize rs1
li x18, 0x1e8ad341d48f5523 # initialize rs2
add x10, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x7, 0x4a385905b80b00de # initialize rs1
li x19, 0xbde101c76669f293 # initialize rs2
add x29, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x31, 0xe1b6486a141a09bf # initialize rs1
li x20, 0xa0814c17705da2d4 # initialize rs2
add x11, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x17, 0x9bef3fbc1feba290 # initialize rs1
li x21, 0xabf5a09289ac71db # initialize rs2
add x10, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x7, 0x9984d1c0c9590a2d # initialize rs1
li x22, 0xcf1404cacfb2f30a # initialize rs2
add x5, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x21, 0x16cc5de529f67b34 # initialize rs1
li x23, 0x09d1c824a253b61f # initialize rs2
add x15, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x8, 0x3e1680a702676369 # initialize rs1
li x24, 0xb42a704ddce80b85 # initialize rs2
add x10, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x1, 0xb04855fbcf4f8157 # initialize rs1
li x25, 0xf0d1b0e9dbecc3d2 # initialize rs2
add x5, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x6, 0x94da01aa879e3f90 # initialize rs1
li x26, 0x9505e95da1415090 # initialize rs2
add x7, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x10, 0xb5ca9efb254adbca # initialize rs1
li x27, 0x0f29792414af9af3 # initialize rs2
add x6, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x21, 0xb5482e706f3156e1 # initialize rs1
li x28, 0x20936e61c1f4a91f # initialize rs2
add x13, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x3, 0x78e7918264267188 # initialize rs1
li x29, 0x0ba58d2e55ebfa2b # initialize rs2
add x12, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x9, 0x05d85cafce07bac4 # initialize rs1
li x30, 0x59e97a817f4311ca # initialize rs2
add x24, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x11, 0x3c76bbff4a0d9d8f # initialize rs1
li x31, 0x2f712b875e6822b7 # initialize rs2
add x25, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 504)

# Testcase cp_rd (Test destination rd = x0)
li x19, 0x67ceb07b1d01c852 # initialize rs1
li x9, 0x1bfbf146c5c29b42 # initialize rs2
add x0, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0x2df19c49bf9d2b53 # initialize rs1
li x3, 0xe21482b7cfc50d6b # initialize rs2
add x1, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x24, 0x214606929e470dd7 # initialize rs1
li x23, 0x2391fecd330ad053 # initialize rs2
add x2, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x12, 0xbd1b0cc22724b344 # initialize rs1
li x16, 0xbde6e2cfb5ee26ae # initialize rs2
add x3, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0x730d76e6351f8a76 # initialize rs1
li x15, 0x96b85b2a7e777eb0 # initialize rs2
add x4, x9, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0x61e6daa3ef638255 # initialize rs1
li x11, 0x335c35761f43cfe6 # initialize rs2
add x5, x15, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x92258f546dddc320 # initialize rs1
li x3, 0x3f25b0d1832b3566 # initialize rs2
add x6, x17, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x9c30788bde7f0f95 # initialize rs1
li x22, 0xd6fa2832e1029c63 # initialize rs2
add x7, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x14, 0xd6f2fa5e299ca5b0 # initialize rs1
li x6, 0x3babc7ce48e256d5 # initialize rs2
add x8, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x24, 0x722fc529abd547b5 # initialize rs1
li x27, 0x58a41f69761853a8 # initialize rs2
add x9, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x28, 0xd234b0b9a96acb3a # initialize rs1
li x23, 0x4d82a97af9420d89 # initialize rs2
add x10, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x29, 0xe52f458c447b4913 # initialize rs1
li x25, 0x506e0cb7a1ccba0d # initialize rs2
add x11, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0x2ff6fb2739fa9f15 # initialize rs1
li x21, 0x99b96e125d502fef # initialize rs2
add x12, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x27, 0xb5393de234878449 # initialize rs1
li x2, 0x274043893150eca1 # initialize rs2
add x13, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0x752b6ef56b1a4a24 # initialize rs1
li x18, 0x4caf5728ae5c5fb6 # initialize rs2
add x14, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x8, 0x91ca2a0cad7173f3 # initialize rs1
li x10, 0x0a5fae4910ea9c6e # initialize rs2
add x15, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x29, 0x911cc2cb7ee64a02 # initialize rs1
li x27, 0xbe0e448a7c1d290e # initialize rs2
add x16, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x41e50737bb9593ce # initialize rs1
li x14, 0xf3fbf58a770e9e1a # initialize rs2
add x17, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x23, 0xb3639c2a73db3138 # initialize rs1
li x29, 0xcdcad8c4574b4d2c # initialize rs2
add x18, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xea5bdc986d7cad3a # initialize rs1
li x22, 0x359dfb35c4a12a8b # initialize rs2
add x19, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x18, 0x1b45516e307ebfa4 # initialize rs1
li x3, 0xa733fd8ce26a1786 # initialize rs2
add x20, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x9, 0x13cf4051bcf0ced0 # initialize rs1
li x31, 0x856251ed590c2b80 # initialize rs2
add x21, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x13, 0x6ab7cc247f505c5e # initialize rs1
li x17, 0x7b9d3be5894c4cb1 # initialize rs2
add x22, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x24, 0xa0a71cbcae4fca60 # initialize rs1
li x23, 0xd329eb7cd3cf7515 # initialize rs2
add x23, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x6, 0x3ded8f179b1fe1ca # initialize rs1
li x22, 0xa9ca19e367e311c8 # initialize rs2
add x24, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x27, 0xb36926e47f327ad1 # initialize rs1
li x26, 0x4788209b8360ea47 # initialize rs2
add x25, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x31, 0x57837cf5b3c19898 # initialize rs1
li x14, 0x86090df0a0fcec24 # initialize rs2
add x26, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x8, 0x2f519a268cccb7f7 # initialize rs1
li x12, 0x840d2ad75b8a58d2 # initialize rs2
add x27, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x2, 0x0e15cae41f49ec4e # initialize rs1
li x19, 0x6e907cd7ff2a7212 # initialize rs2
add x28, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x19, 0xea92d50933697752 # initialize rs1
li x22, 0x1d3e035ce1739ac5 # initialize rs2
add x29, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x2, 0x73aa482737fc10a9 # initialize rs1
li x25, 0xebef50b12aeaaa07 # initialize rs2
add x30, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x19, 0x5ce1541309990c1e # initialize rs1
li x5, 0xc734fef144475eb2 # initialize rs2
add x31, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x17, 0x0000000000000000 # initialize rs1
li x11, 0xcfc4fdfe6e4d0687 # initialize rs2
add x26, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x0000000000000001 # initialize rs1
li x21, 0xef0d27eb02325f87 # initialize rs2
add x19, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x2, 0x0000000000000002 # initialize rs1
li x24, 0xcaa2220af78bf6da # initialize rs2
add x6, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x14, 0x8000000000000000 # initialize rs1
li x5, 0x4c22332fc4834979 # initialize rs2
add x2, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x28, 0x8000000000000001 # initialize rs1
li x16, 0xadb72cf6e7a4e4c5 # initialize rs2
add x22, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x2, 0x7fffffffffffffff # initialize rs1
li x15, 0x8fcfbc84c29020cf # initialize rs2
add x21, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x15, 0x0b23e84db5a24c56 # initialize rs2
add x12, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x26, 0xffffffffffffffff # initialize rs1
li x13, 0xc2d1833850ffa733 # initialize rs2
add x18, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
li x3, 0x4202068717b42fab # initialize rs2
add x31, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0xc0eb017752ad2539 # initialize rs2
add x29, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x6581e48afb5f28f6 # initialize rs2
add x1, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x21, 0x5555555555555555 # initialize rs1
li x14, 0xc41a85c4a8d1af22 # initialize rs2
add x17, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0x00000000ffffffff # initialize rs1
li x17, 0x0ea4468a0deef137 # initialize rs2
add x13, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x30, 0x00000000fffffffe # initialize rs1
li x3, 0x408a36ce2ee71b0b # initialize rs2
add x16, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x22, 0x0000000100000000 # initialize rs1
li x6, 0xc3a185e8cf4fa685 # initialize rs2
add x9, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0x0000000100000001 # initialize rs1
li x14, 0xc64b1afbdd071d14 # initialize rs2
add x2, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0x31ef3545a80726a0 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
add x12, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x11, 0xcf49d1d56496ce3a # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
add x18, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x13, 0xf1b25527047af290 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
add x2, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x6, 0x6df08a6a6069de81 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
add x18, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x17, 0x0e515d398ada5aed # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
add x7, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x7, 0x709fbba360a566cb # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
add x13, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x20, 0xb857032db8112c60 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
add x19, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x16, 0x368456dadbf2e0f3 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
add x6, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x17, 0xacf61cbaaf3b0a2c # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
add x21, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x14, 0xf7db6d543caa25f5 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
add x7, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0xc44f987d0f3a9189 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x9, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x17, 0x917734dad46f6b2d # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
add x10, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x30, 0xa9fe8cc3d51dde13 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
add x12, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x3, 0x4b48f90f76fb913d # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
add x24, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x1, 0xa705c37aaf3809ea # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
add x16, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x21, 0xa74b14bd36ca14d2 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
add x8, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x15, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
add x11, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x2, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
add x21, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x29, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
add x16, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x2, 0x0000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
add x19, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x13, 0x0000000000000000 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
add x8, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000000000000 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
add x8, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x7, 0x0000000000000000 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
add x9, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x1, 0x0000000000000000 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
add x21, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x26, 0x0000000000000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
add x23, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000000000000 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
add x18, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x23, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x16, 0x0000000000000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
add x23, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x17, 0x0000000000000000 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
add x3, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x23, 0x0000000000000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
add x13, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x18, 0x0000000000000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
add x30, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x27, 0x0000000000000000 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
add x20, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x12, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
add x17, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x25, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
add x26, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x31, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
add x24, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x31, 0x0000000000000001 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
add x19, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x7, 0x0000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
add x30, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000000000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
add x17, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000000000001 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
add x18, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
add x29, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000000000001 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
add x21, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000000000001 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
add x24, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x0000000000000001 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x17, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x7, 0x0000000000000001 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
add x25, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x7, 0x0000000000000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
add x1, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x11, 0x0000000000000001 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
add x19, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x30, 0x0000000000000001 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
add x12, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x16, 0x0000000000000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
add x14, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x19, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
add x12, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x29, 0x0000000000000002 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
add x3, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x7, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
add x27, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x31, 0x0000000000000002 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
add x26, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x12, 0x0000000000000002 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
add x20, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
add x1, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x1, 0x0000000000000002 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
add x3, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x20, 0x0000000000000002 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
add x2, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000002 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
add x7, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x17, 0x0000000000000002 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
add x14, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000002 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x29, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x23, 0x0000000000000002 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
add x20, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x15, 0x0000000000000002 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
add x23, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x9, 0x0000000000000002 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
add x30, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x1, 0x0000000000000002 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
add x29, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x28, 0x0000000000000002 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
add x27, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x1, 0x8000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
add x13, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x7, 0x8000000000000000 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
add x21, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x31, 0x8000000000000000 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
add x10, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x21, 0x8000000000000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
add x6, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x26, 0x8000000000000000 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
add x2, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x21, 0x8000000000000000 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
add x16, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x10, 0x8000000000000000 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
add x29, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x23, 0x8000000000000000 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
add x25, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x5, 0x8000000000000000 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
add x3, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x24, 0x8000000000000000 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
add x8, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x8000000000000000 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x19, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x10, 0x8000000000000000 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
add x6, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x16, 0x8000000000000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
add x17, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x2, 0x8000000000000000 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
add x25, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x26, 0x8000000000000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
add x8, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x9, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
add x18, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x23, 0x8000000000000001 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
add x28, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x23, 0x8000000000000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
add x15, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x30, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
add x17, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x11, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
add x23, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x31, 0x8000000000000001 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
add x1, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x19, 0x8000000000000001 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
add x3, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x13, 0x8000000000000001 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
add x6, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x1, 0x8000000000000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
add x13, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x6, 0x8000000000000001 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
add x10, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x13, 0x8000000000000001 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
add x23, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x8000000000000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x12, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x2, 0x8000000000000001 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
add x19, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x8, 0x8000000000000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
add x13, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x3, 0x8000000000000001 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
add x14, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x10, 0x8000000000000001 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
add x17, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x5, 0x8000000000000001 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
add x13, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x31, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
add x14, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x25, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
add x22, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x31, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
add x2, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x24, 0x7fffffffffffffff # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
add x16, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x14, 0x7fffffffffffffff # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
add x9, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
add x22, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x19, 0x7fffffffffffffff # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
add x15, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
add x14, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
add x29, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x2, 0x7fffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
add x11, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x7fffffffffffffff # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x18, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x13, 0x7fffffffffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
add x8, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x22, 0x7fffffffffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
add x9, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x7, 0x7fffffffffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
add x24, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x8, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
add x31, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x9, 0x7fffffffffffffff # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
add x10, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x29, 0x7ffffffffffffffe # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
add x23, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x24, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
add x20, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x31, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
add x13, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x5, 0x7ffffffffffffffe # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
add x20, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x16, 0x7ffffffffffffffe # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
add x29, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x19, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
add x30, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
add x13, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x18, 0x7ffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
add x9, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x14, 0x7ffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
add x29, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x26, 0x7ffffffffffffffe # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
add x1, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x7ffffffffffffffe # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x16, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x9, 0x7ffffffffffffffe # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
add x15, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x16, 0x7ffffffffffffffe # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
add x8, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
add x8, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x27, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
add x29, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x21, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
add x22, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x31, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
add x12, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x22, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
add x28, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x15, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
add x7, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x19, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
add x16, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x23, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
add x21, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
add x28, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x25, 0xffffffffffffffff # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
add x9, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x7, 0xffffffffffffffff # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
add x12, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x13, 0xffffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
add x22, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x9, 0xffffffffffffffff # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
add x12, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xffffffffffffffff # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x14, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x22, 0xffffffffffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
add x28, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x7, 0xffffffffffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
add x10, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x14, 0xffffffffffffffff # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
add x30, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x23, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
add x19, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x21, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
add x3, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x15, 0xfffffffffffffffe # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
add x1, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x28, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
add x27, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x30, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
add x5, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x17, 0xfffffffffffffffe # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
add x7, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x7, 0xfffffffffffffffe # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
add x22, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x17, 0xfffffffffffffffe # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
add x2, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
add x14, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x3, 0xfffffffffffffffe # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
add x6, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x2, 0xfffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
add x18, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x2, 0xfffffffffffffffe # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
add x20, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0xfffffffffffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x23, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x31, 0xfffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
add x2, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x20, 0xfffffffffffffffe # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
add x9, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
add x16, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x30, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
add x24, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x29, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
add x17, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
add x3, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
add x31, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
add x29, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
add x29, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
add x21, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
add x26, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
add x29, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
add x21, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
add x9, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
add x8, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x6, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
add x8, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
add x7, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
add x31, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
add x19, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
add x11, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
add x26, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
add x24, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
add x9, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
add x22, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
add x22, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
add x14, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
add x10, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
add x10, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
add x21, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
add x13, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x25, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
add x21, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
add x6, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
add x13, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
add x22, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
add x24, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x24, 0x5555555555555555 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
add x20, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x13, 0x5555555555555555 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
add x14, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x11, 0x5555555555555555 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
add x2, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x3, 0x5555555555555555 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
add x28, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x15, 0x5555555555555555 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
add x21, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x31, 0x5555555555555555 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
add x1, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x12, 0x5555555555555555 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
add x5, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x15, 0x5555555555555555 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
add x24, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x12, 0x5555555555555555 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
add x31, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x12, 0x5555555555555555 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
add x8, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x5555555555555555 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x24, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x29, 0x5555555555555555 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
add x10, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x30, 0x5555555555555555 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
add x11, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x29, 0x5555555555555555 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
add x24, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x20, 0x5555555555555555 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
add x18, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x5, 0x5555555555555555 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
add x2, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x12, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
add x27, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x7, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
add x11, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x15, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
add x9, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x5, 0x00000000ffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
add x31, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x20, 0x00000000ffffffff # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
add x29, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x21, 0x00000000ffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
add x26, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x00000000ffffffff # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
add x23, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
add x1, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x15, 0x00000000ffffffff # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
add x3, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x31, 0x00000000ffffffff # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
add x22, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x00000000ffffffff # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x29, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x11, 0x00000000ffffffff # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
add x13, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x13, 0x00000000ffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
add x24, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x18, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
add x25, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x19, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
add x22, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x13, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
add x31, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x8, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
add x23, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x22, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
add x3, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x18, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
add x25, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x21, 0x00000000fffffffe # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
add x2, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x1, 0x00000000fffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
add x28, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x15, 0x00000000fffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
add x9, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x10, 0x00000000fffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
add x14, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x22, 0x00000000fffffffe # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
add x25, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
add x24, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x14, 0x00000000fffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
add x2, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x00000000fffffffe # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x21, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x13, 0x00000000fffffffe # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
add x12, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x19, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
add x28, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
add x20, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x10, 0x00000000fffffffe # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
add x11, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x9, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
add x12, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x13, 0x0000000100000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
add x28, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x29, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
add x1, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x17, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
add x31, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x16, 0x0000000100000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
add x14, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x16, 0x0000000100000000 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
add x14, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000100000000 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
add x21, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x7, 0x0000000100000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
add x23, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x22, 0x0000000100000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
add x30, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x12, 0x0000000100000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
add x16, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x11, 0x0000000100000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
add x29, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000100000000 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x7, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x2, 0x0000000100000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
add x11, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x20, 0x0000000100000000 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
add x18, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x29, 0x0000000100000000 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
add x13, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x28, 0x0000000100000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
add x11, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x6, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
add x18, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x29, 0x0000000100000001 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
add x9, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x30, 0x0000000100000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
add x26, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x16, 0x0000000100000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
add x28, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x12, 0x0000000100000001 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
add x25, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x31, 0x0000000100000001 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
add x29, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x16, 0x0000000100000001 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
add x2, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
add x6, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x22, 0x0000000100000001 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
add x26, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000100000001 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
add x30, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000100000001 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
add x27, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000100000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x3, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x22, 0x0000000100000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
add x3, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x27, 0x0000000100000001 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
add x19, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x27, 0x0000000100000001 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
add x6, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x15, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
add x23, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x12, 0x0000000100000001 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
add x14, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xbb0abf30ab8a4c83 # initialize rs1
li x0, 0x1c1927b0e39c4a01 # initialize rs2
add x25, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x6f1df1ea6ab15f50 # initialize rs1
li x1, 0x9e88736ef6868040 # initialize rs2
add x6, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x35a0f3d4057fbb8c # initialize rs1
li x2, 0x03b438971f2dfcf9 # initialize rs2
add x17, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x4a9527e8bc52b5ec # initialize rs1
li x3, 0x221abb0acd4932f5 # initialize rs2
add x1, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9eb33c93d388a6de # initialize rs1
li x4, 0xe96434837d13e222 # initialize rs2
add x1, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x10b1f43070c129c5 # initialize rs1
li x5, 0xaf9dd50a98056ecc # initialize rs2
add x25, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xfeeb3eacede37412 # initialize rs1
li x6, 0x64982b4e73c34b2a # initialize rs2
add x12, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc71d5c136ab0ca9e # initialize rs1
li x7, 0xe3492b235b6d61e1 # initialize rs2
add x5, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x36f26b28afbd03aa # initialize rs1
li x8, 0x0566132fc1cbc846 # initialize rs2
add x13, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x799de966c3e58899 # initialize rs1
li x9, 0x784bc8cbde40e8a5 # initialize rs2
add x3, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x87a15622e86fd29e # initialize rs1
li x10, 0x71d56b92e4566dca # initialize rs2
add x3, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xa93c5fbd7a2697e8 # initialize rs1
li x11, 0xb76690173b4fd285 # initialize rs2
add x12, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xf5899ae5cc908ff1 # initialize rs1
li x12, 0x063984b8c88c34b8 # initialize rs2
add x22, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x7e1818ccefadd6ae # initialize rs1
li x13, 0xb357845555544459 # initialize rs2
add x2, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xeb318db695d91da0 # initialize rs1
li x14, 0x39dca97ad8ee2a9c # initialize rs2
add x22, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x26f5124dbe5871d9 # initialize rs1
li x15, 0x795b6a3fdff8a390 # initialize rs2
add x24, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xa2bfb9a7dd738a73 # initialize rs1
li x16, 0x5accf8923b615351 # initialize rs2
add x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xfcf350c0c4e7755d # initialize rs1
li x17, 0x9e369427f3346dc7 # initialize rs2
add x27, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x60ad7fcfb1487535 # initialize rs1
li x18, 0x65b1f8a38582c8a2 # initialize rs2
add x15, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x72a047df089eb8ba # initialize rs1
li x19, 0x3173bc29cc608d12 # initialize rs2
add x11, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xb72e5af62d682909 # initialize rs1
li x20, 0x1cc523aa8522df0e # initialize rs2
add x11, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x1fb9d294a12f587a # initialize rs1
li x21, 0xf2121294b86db77f # initialize rs2
add x8, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x6b85a99c293cc29d # initialize rs1
li x22, 0x81cd4699d2b25c78 # initialize rs2
add x28, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xdf7754fb7176a71e # initialize rs1
li x23, 0x3260876df9cbc80d # initialize rs2
add x12, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xee77630760d85fb5 # initialize rs1
li x24, 0x81a08aeab6987156 # initialize rs2
add x26, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x63d1466be7977f87 # initialize rs1
li x25, 0x0781ba0842535c0b # initialize rs2
add x6, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x8de3ebba7fc1d18e # initialize rs1
li x26, 0x2aae439959033bb0 # initialize rs2
add x25, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x3dec5320e9111ec3 # initialize rs1
li x27, 0xd3e1f54476c1ccb6 # initialize rs2
add x14, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xefa2217cadabf80f # initialize rs1
li x28, 0x07d9152dfb9b90aa # initialize rs2
add x15, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x87d084d78bfede87 # initialize rs1
li x29, 0x6c02e5d9a3ff58d4 # initialize rs2
add x21, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x827da8d2cb8c313d # initialize rs1
li x30, 0x9659a55b7f24495a # initialize rs2
add x2, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xc3f1a35090af55fb # initialize rs1
li x31, 0xb90ca147faa7d7b5 # initialize rs2
add x28, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xb014774c7193a356 # initialize rs1
li x7, 0xe475c77fe9673fe7 # initialize rs2
add x0, x0, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x26532c1b2d93a27c # initialize rs1
li x8, 0xf9e0fa72540da988 # initialize rs2
add x1, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xeae48a3327056621 # initialize rs1
li x8, 0x9011eede5268918c # initialize rs2
add x2, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xbe298aae5e2c0a26 # initialize rs1
li x31, 0xf592da6e54995033 # initialize rs2
add x3, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc5603e7aa216b8a0 # initialize rs1
li x20, 0x87bb2a70eb959a32 # initialize rs2
add x4, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbbbb2c2be65c8f24 # initialize rs1
li x3, 0x6499acff544a85e2 # initialize rs2
add x5, x5, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbb8495856dce1668 # initialize rs1
li x23, 0xa5c0fe146c2a2fe7 # initialize rs2
add x6, x6, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf370dd1abd79ed3c # initialize rs1
li x17, 0x7eeb6e440cf3785a # initialize rs2
add x7, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x5692000bff6630a3 # initialize rs1
li x19, 0xc4922a7a8470503b # initialize rs2
add x8, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x26b63fea1e380349 # initialize rs1
li x12, 0x73844b43d57e4f28 # initialize rs2
add x9, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x35d9501e7b8cea49 # initialize rs1
li x28, 0xc1f68b9d62ecfb6e # initialize rs2
add x10, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2b9b523d0d627eb9 # initialize rs1
li x23, 0x799ab627b66c58ef # initialize rs2
add x11, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x89973cb593b07bdf # initialize rs1
li x31, 0x8462a9a7d37c0913 # initialize rs2
add x12, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x7b75b2d68eae3d1b # initialize rs1
li x21, 0x0fb82384f5e63969 # initialize rs2
add x13, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x8c5aaf42feb7691a # initialize rs1
li x26, 0x9db2546166d8a180 # initialize rs2
add x14, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x46e00a54dd8a2dae # initialize rs1
li x17, 0xc10acfc6a91e824e # initialize rs2
add x15, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x23fdf8bcb33c8a49 # initialize rs1
li x15, 0xc991428836b7c1de # initialize rs2
add x16, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x310f39890d82a1c4 # initialize rs1
li x13, 0xfb7a807e2575b3e3 # initialize rs2
add x17, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x28628236010e9fb1 # initialize rs1
li x3, 0x87c6633ccf86ab0f # initialize rs2
add x18, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x1e5ab3debbdf6ad0 # initialize rs1
li x24, 0x78515ff1cdf0b96d # initialize rs2
add x19, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x69e2bb4f9a6bc81a # initialize rs1
li x30, 0x93773eef4a6436ec # initialize rs2
add x20, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x41e4faa861b52c91 # initialize rs1
li x16, 0xb78b62ad4d0b0148 # initialize rs2
add x21, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb682b91b3b4ed6b5 # initialize rs1
li x26, 0x4e96e708f230817d # initialize rs2
add x22, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x11d8355c519ff3d1 # initialize rs1
li x28, 0x3cfe83891f8e5feb # initialize rs2
add x23, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0882f659b7eef007 # initialize rs1
li x30, 0x159470e732316209 # initialize rs2
add x24, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x92fce1fc830d95ad # initialize rs1
li x16, 0x0686cdc02937e6db # initialize rs2
add x25, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x8e86755993a7870f # initialize rs1
li x7, 0x09f2996a56aa956c # initialize rs2
add x26, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xbbb5955fb251041a # initialize rs1
li x6, 0x528f13df9792ca07 # initialize rs2
add x27, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x6a7fa25838434174 # initialize rs1
li x20, 0xfc3df00e66ac35bc # initialize rs2
add x28, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x05f5beb2e73baa9a # initialize rs1
li x9, 0x484911c3c99a1442 # initialize rs2
add x29, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x90a6c4b366545958 # initialize rs1
li x1, 0xf3bd88e4ab3fdb9b # initialize rs2
add x30, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x4a7c1693abc83bda # initialize rs1
li x22, 0x7970df0996102f05 # initialize rs2
add x31, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x12, 0xe96a18e6483031a4 # initialize rs1
li x0, 0xc2a3edbed201ef21 # initialize rs2
add x0, x12, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x13, 0xf4d90a8734fb8990 # initialize rs1
li x1, 0x46abedb9419c6366 # initialize rs2
add x1, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x30, 0x88fd4b09265fb67d # initialize rs1
li x2, 0xf185dde139fae5ae # initialize rs2
add x2, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x20, 0x220cbdac5d91a4d6 # initialize rs1
li x3, 0x8f653fb9e4e0e371 # initialize rs2
add x3, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x4b1b613c794bb74f # initialize rs1
li x4, 0x14d4cecd30f8f568 # initialize rs2
add x4, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0xfdae30f7d5398b30 # initialize rs1
li x5, 0xacb3eb5adc5e11ad # initialize rs2
add x5, x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x60d24e928d12258a # initialize rs1
li x6, 0xb204c113bcb00518 # initialize rs2
add x6, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x610d781d682b472d # initialize rs1
li x7, 0xe7058c6516403c37 # initialize rs2
add x7, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x23, 0x124c60ff58d021ba # initialize rs1
li x8, 0x83f9b4524d21c9ad # initialize rs2
add x8, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x24, 0xb361858835214a24 # initialize rs1
li x9, 0xb34502075d531310 # initialize rs2
add x9, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x16, 0x400b31ef062215f9 # initialize rs1
li x10, 0xee8e28f64429fc53 # initialize rs2
add x10, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x18, 0xb090e7e2665523c4 # initialize rs1
li x11, 0xd9f5ec0278dcdd9a # initialize rs2
add x11, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x23, 0xb10c89de3e882afa # initialize rs1
li x12, 0x3158ff0e04237203 # initialize rs2
add x12, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x17, 0xdd014cb0403abc0d # initialize rs1
li x13, 0x69a740c9b0d91b48 # initialize rs2
add x13, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x10, 0xd7ad0f272e81facd # initialize rs1
li x14, 0x091f7cc83cdc101c # initialize rs2
add x14, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x9, 0xa2f2227086327b8f # initialize rs1
li x15, 0x27ff0588fc9fe035 # initialize rs2
add x15, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x27, 0x59739e6678f3de1f # initialize rs1
li x16, 0x496e4797bac5c89c # initialize rs2
add x16, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x18, 0xb4befc8565a27cd7 # initialize rs1
li x17, 0x523b860f26cf2eb9 # initialize rs2
add x17, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x9, 0x2c37afc409da142f # initialize rs1
li x18, 0xc7c3b4db1afbcfce # initialize rs2
add x18, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x14, 0x4c0be216a9b87c6f # initialize rs1
li x19, 0x0969d034558dada5 # initialize rs2
add x19, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x7, 0x8fb8f04feb20c9f0 # initialize rs1
li x20, 0x4cde8a13cc8b29cc # initialize rs2
add x20, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x29, 0x38615150cb5958af # initialize rs1
li x21, 0x3ab2c8390fcb6646 # initialize rs2
add x21, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x19, 0x4fc4215edfa7916a # initialize rs1
li x22, 0x5152c6d7b391eb8d # initialize rs2
add x22, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x1, 0x79541c3b9ee617e7 # initialize rs1
li x23, 0x467dd52374dd94c6 # initialize rs2
add x23, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x26, 0xea4c32920ae9c170 # initialize rs1
li x24, 0xdc7dd9732a75cdc6 # initialize rs2
add x24, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x23, 0xf90e11386fb2752d # initialize rs1
li x25, 0xae6be018b49aaeff # initialize rs2
add x25, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x1, 0xb9201e8e2b43640c # initialize rs1
li x26, 0x0e464373fecf96fe # initialize rs2
add x26, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x2, 0x1f699c19644451b7 # initialize rs1
li x27, 0xa6166b58ce208563 # initialize rs2
add x27, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x20, 0xfb584a6437e3d0aa # initialize rs1
li x28, 0x269863e6807cba4a # initialize rs2
add x28, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x16, 0xfde4cce916424c4b # initialize rs1
li x29, 0x48b7b4ec0682f8ca # initialize rs2
add x29, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x23, 0x04b2ae7596334430 # initialize rs1
li x30, 0x65c3f567cfa97f53 # initialize rs2
add x30, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x20, 0x80eedea4cb8ef29c # initialize rs1
li x31, 0xafdd5d15d490398f # initialize rs2
add x31, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xca584c85f71bdcf0 # initialize rs1
li x0, 0x31ae1e78afa9008d # initialize rs2
add x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x00e0bc7aa423cc60 # initialize rs1
li x1, 0xea410cde30ddd4bc # initialize rs2
add x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xccb1b75d2d0f1396 # initialize rs1
li x2, 0x7021ba8d692e1dcb # initialize rs2
add x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xb529aa8d32a76650 # initialize rs1
li x3, 0x26adb99d3673eaa6 # initialize rs2
add x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x82ad0ee540fe381e # initialize rs1
li x4, 0x3ae3c17dd439a97f # initialize rs2
add x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x639482dfd17c4547 # initialize rs1
li x5, 0x08bd603e487316b1 # initialize rs2
add x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x49761a4808a67c4e # initialize rs1
li x6, 0x104a0434ce54e998 # initialize rs2
add x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd4308b8f02f162c4 # initialize rs1
li x7, 0xa7b7876b4cc7a58e # initialize rs2
add x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x8458d60e4fc32b62 # initialize rs1
li x8, 0x27e3513313a7cd5e # initialize rs2
add x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x7566eddfb40b7e63 # initialize rs1
li x9, 0x9839989f8bdd4401 # initialize rs2
add x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x03b17c966f16cfaa # initialize rs1
li x10, 0x085990fecb60baab # initialize rs2
add x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe9e581f76f05f793 # initialize rs1
li x11, 0x73719c1a84ec3cd5 # initialize rs2
add x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x4a39d3ad27c40e79 # initialize rs1
li x12, 0x6c69a05d5b1b0245 # initialize rs2
add x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xe8925767f2d473d7 # initialize rs1
li x13, 0xeb295e18cc7aca8d # initialize rs2
add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x20822a2970a6d495 # initialize rs1
li x14, 0x5e6494f9fe49cdc5 # initialize rs2
add x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x284a53535e3a8e8b # initialize rs1
li x15, 0xae98f640f3e01c31 # initialize rs2
add x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x6242bd04a2a3973b # initialize rs1
li x16, 0x06d64aaaaab18166 # initialize rs2
add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x16daf3a244f97af4 # initialize rs1
li x17, 0x1209d01900b91ba9 # initialize rs2
add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xd1a3dccd7ad2de3e # initialize rs1
li x18, 0xe43fd02783b60119 # initialize rs2
add x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x21a5ae2e8c66e754 # initialize rs1
li x19, 0x31d7c12cf894191a # initialize rs2
add x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x17ddb1a59e9f08ca # initialize rs1
li x20, 0x20014dec0b71bc5f # initialize rs2
add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x53dc16426d6764cc # initialize rs1
li x21, 0x817141a8788512e8 # initialize rs2
add x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x684be5d1b62bc475 # initialize rs1
li x22, 0x8149f295edf247d3 # initialize rs2
add x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xe93358ada35c3d94 # initialize rs1
li x23, 0x0c804ab7e7b1df81 # initialize rs2
add x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x82e68a41bcd1ecb6 # initialize rs1
li x24, 0xf750f134f5b389ec # initialize rs2
add x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xaf6b68b3cab98c25 # initialize rs1
li x25, 0xda4cfe0fabd7de23 # initialize rs2
add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x22a2c09c286d4d7d # initialize rs1
li x26, 0x29853d084f191aa3 # initialize rs2
add x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xb942c51453603c25 # initialize rs1
li x27, 0xd50726e5f0061082 # initialize rs2
add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xe9c6adcec524076e # initialize rs1
li x28, 0xb623b1836b3def19 # initialize rs2
add x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xf23f7d5b2060ea4f # initialize rs1
li x29, 0xc1e208c30b295ac9 # initialize rs2
add x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x1693751d3a7af28b # initialize rs1
li x30, 0xa6e2054e7a1e7408 # initialize rs2
add x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xbc1b5318e564970f # initialize rs1
li x31, 0x97c65040f34c2398 # initialize rs2
add x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x3, x26 # perform first operation
add x27, x14, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x31, x15 # perform first operation
add x19, x21, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x8, x31 # perform first operation
add x25, x9, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x13, x10 # perform first operation
add x13, x2, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x31, x16 # perform first operation
add x8, x17, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x21, x12 # perform first operation
add x12, x30, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x11, x2 # perform first operation
add x16, x30, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x10, x2 # perform first operation
add x30, x7, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x20, x15 # perform first operation
add x12, x8, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x13, x15 # perform first operation
add x13, x25, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x19, x26 # perform first operation
add x26, x10, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x7, x2 # perform first operation
add x27, x16, x28 # perform second (triggering) operation

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
