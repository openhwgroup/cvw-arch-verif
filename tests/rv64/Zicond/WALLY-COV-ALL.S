//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    

// ******************
// Tests from: WALLY-COV-czero.nez.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x2efd51c5cb8d7772 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x02e0d8f2a155c94c # initialize rs1
li x7, 0x0e1ea4310ca435b1 # initialize rs2
czero.nez x0, x22, x7 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xfa70de0dca3cc524 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3e85cea21760e2e4 # initialize rs1
li x15, 0xe168a2d3b3ad4e9c # initialize rs2
czero.nez x1, x21, x15 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xf768543107ed5d50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc319e0cd3486cab4 # initialize rs1
li x11, 0xa08bc0526ad5f1a5 # initialize rs2
czero.nez x2, x23, x11 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xe5a0640cf2d4e032 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x09a9a5b673b8afe7 # initialize rs1
li x16, 0xab38af40a33eda9e # initialize rs2
czero.nez x3, x6, x16 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xf12f913eb281f2a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x99bddf6abd740a47 # initialize rs1
li x5, 0x635d511b376d4864 # initialize rs2
czero.nez x4, x18, x5 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xc1f73c592475a3f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x299e9286617dd110 # initialize rs1
li x12, 0xf0faa61ab6df0b0f # initialize rs2
czero.nez x5, x31, x12 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x514ce4bf6aa4de3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xea6245f3f888043a # initialize rs1
li x22, 0x385150ba0e65b62a # initialize rs2
czero.nez x6, x29, x22 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x7d9141c633ec5caa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa647bec06bf4a4ca # initialize rs1
li x5, 0xb949db79e044a84b # initialize rs2
czero.nez x7, x22, x5 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xadbf9ea7f609262c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0ebc1b5eeefe08b3 # initialize rs1
li x1, 0xdc8ec8d3511526b1 # initialize rs2
czero.nez x8, x24, x1 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x0ef897864558d047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd73a07796afc6341 # initialize rs1
li x21, 0x4600ea2b31ecb64d # initialize rs2
czero.nez x9, x14, x21 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xc7e3beacba01882c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4cbedb61c0c05266 # initialize rs1
li x31, 0x3f45f5b8d2e62899 # initialize rs2
czero.nez x10, x7, x31 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x7428f36caabdd750 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdd97bab45b935a4c # initialize rs1
li x15, 0x94d17a4a8edb7aea # initialize rs2
czero.nez x11, x23, x15 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x50f1e9335dc3d533 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa4ed607689aec1ea # initialize rs1
li x24, 0xbc94d8c3ccdea74b # initialize rs2
czero.nez x12, x11, x24 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb764668005a17687 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcdd324badec6c8fa # initialize rs1
li x22, 0xa4668775a3cfa47c # initialize rs2
czero.nez x13, x12, x22 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x3d6b44513c456099 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb1a6d39ae0c2ddc2 # initialize rs1
li x13, 0xc0d015fc48a8c391 # initialize rs2
czero.nez x14, x11, x13 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xdad6fe5372ba15ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5abd7c87a8a6aedf # initialize rs1
li x7, 0x1236f521149e5ee5 # initialize rs2
czero.nez x15, x1, x7 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xeb9a1b45ce458575 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf124d3f56929aa9f # initialize rs1
li x10, 0x61dd0cfb9b7fdcef # initialize rs2
czero.nez x16, x23, x10 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x54e546f5b0a74864 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x145098bc7a9e089f # initialize rs1
li x10, 0x9ff7ef49997083b3 # initialize rs2
czero.nez x17, x13, x10 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x989deabc7314024e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaf14f322b9facdaf # initialize rs1
li x2, 0xd26286f0ed6e017b # initialize rs2
czero.nez x18, x17, x2 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x80a41fe46b6cdf7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe9654df7f7626e4c # initialize rs1
li x21, 0x8a04d5c5d6be78d6 # initialize rs2
czero.nez x19, x8, x21 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xce369e7d4fc7a079 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3f1f487048faee83 # initialize rs1
li x21, 0x99fa06fe0a8890b6 # initialize rs2
czero.nez x20, x6, x21 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x73ba0f7309b4bbaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdc1bde720b7c0d60 # initialize rs1
li x6, 0x753acf0e7dc3b581 # initialize rs2
czero.nez x21, x8, x6 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x5cc171c81e9dffea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb5ec03acebdbca47 # initialize rs1
li x11, 0x6ee19886e4db38c1 # initialize rs2
czero.nez x22, x2, x11 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xc92d4209ed26b96f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf7fff688ddbc8679 # initialize rs1
li x4, 0xa228dd23c76a7c61 # initialize rs2
czero.nez x23, x17, x4 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x2edcd5112a47e4d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x886ac2c35ac40cf9 # initialize rs1
li x20, 0x729354b089465a89 # initialize rs2
czero.nez x24, x6, x20 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xdbe4e97f9f0d3e78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdd337b72638d50e4 # initialize rs1
li x3, 0x808c06a79dfed394 # initialize rs2
czero.nez x25, x18, x3 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x6c87d71520402ccd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb817e3583fa7abab # initialize rs1
li x19, 0x86805f465ec7e8b5 # initialize rs2
czero.nez x26, x15, x19 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xa92d748d20a4b890 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x49048525bd1b28ba # initialize rs1
li x7, 0x626e6f71fdd4c288 # initialize rs2
czero.nez x27, x3, x7 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xb63ec7f9bd389a2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0c9138089d466288 # initialize rs1
li x21, 0x8967eafc6704dcc2 # initialize rs2
czero.nez x28, x30, x21 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x3a41e7424791844b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x253b5cef17301f94 # initialize rs1
li x24, 0xcea294e8b47e6cd6 # initialize rs2
czero.nez x29, x28, x24 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xd24322ec0d37024b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1a7ff73549ceeee2 # initialize rs1
li x26, 0xe4c8d19415da6621 # initialize rs2
czero.nez x30, x15, x26 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xa39e93854a5cfe02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x57bfeeab8aea4eb1 # initialize rs1
li x13, 0x6abe80141704145e # initialize rs2
czero.nez x31, x21, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x19, 0x1df0395f327784b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x83fdc83815bfb097 # initialize rs1
li x12, 0x7b5f0c7a5157215b # initialize rs2
czero.nez x19, x0, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x13, 0x4a0171b227c9c255 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa74aacd069e14f93 # initialize rs1
li x24, 0x2367bd851aba8c3d # initialize rs2
czero.nez x13, x1, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x15, 0xfe7a67e21add8f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8a2e2e479659ed25 # initialize rs1
li x18, 0xe35ebce46af22eec # initialize rs2
czero.nez x15, x2, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x24, 0x70a0ffd383916824 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5277fc0c2016970c # initialize rs1
li x16, 0xcdde5bfcc7c664c0 # initialize rs2
czero.nez x24, x3, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x8, 0x75b26d5b787994d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe134c6c20e78aecf # initialize rs1
li x22, 0x7da25c78f9bc168f # initialize rs2
czero.nez x8, x4, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x23, 0x5813d249047a05cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x1a878e9435ce3c75 # initialize rs1
li x28, 0x2736551f0566b176 # initialize rs2
czero.nez x23, x5, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x16, 0xffe1b0047e94d20a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4b24ae2444f16517 # initialize rs1
li x4, 0x4f3acd72d768993f # initialize rs2
czero.nez x16, x6, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x19, 0x187a50716f3e5a05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x11e4fcf801ac61cd # initialize rs1
li x6, 0x02883948f12fb51b # initialize rs2
czero.nez x19, x7, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x24, 0xba64eebb89fd5d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2954e249a0f551c1 # initialize rs1
li x5, 0x8b541e2aa835ba3d # initialize rs2
czero.nez x24, x8, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x18, 0xa2063d04226de28f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa1c3bc0fea799044 # initialize rs1
li x25, 0x87f454f10a6a2a31 # initialize rs2
czero.nez x18, x9, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x23, 0x3166d21e0cfca2ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6fbe45e51f562894 # initialize rs1
li x13, 0x696c33d4993e52a5 # initialize rs2
czero.nez x23, x10, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x24, 0xab4863a0cf99d1ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8c3e84c12e38f254 # initialize rs1
li x27, 0x5565540b1abf5547 # initialize rs2
czero.nez x24, x11, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x2, 0x713fc0c50a9f2ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5f7e0ebe91586a3a # initialize rs1
li x28, 0x64b196a2a6dc9463 # initialize rs2
czero.nez x2, x12, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x2, 0xe281e87707a0c969 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaeec4358778d0027 # initialize rs1
li x7, 0xe7a6b86027ee5a78 # initialize rs2
czero.nez x2, x13, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x31, 0x1278d30af89c8a2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6c069e78ff5196df # initialize rs1
li x3, 0x8c3c6f6b0209796e # initialize rs2
czero.nez x31, x14, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x25, 0xaf3fa7bf63718539 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaf2d28c877911337 # initialize rs1
li x14, 0x3fb6264d1b23b737 # initialize rs2
czero.nez x25, x15, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x7, 0x3d8437caae568bc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb809601a25834743 # initialize rs1
li x18, 0xcd7d1b8ae8db4a8d # initialize rs2
czero.nez x7, x16, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x27, 0x2f394996945c0d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x2cde0661793141eb # initialize rs1
li x20, 0x728a63e2a389507f # initialize rs2
czero.nez x27, x17, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x31, 0xade7d0a16cf8ddca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x418a59b4ea478b08 # initialize rs1
li x13, 0xb193ceea9e018f79 # initialize rs2
czero.nez x31, x18, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x21, 0x472631b92f5fd0ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x828645830b25b8ef # initialize rs1
li x18, 0xca133aaca86f5b3d # initialize rs2
czero.nez x21, x19, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x26, 0xab3a45348315f30e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc1fa6de8d373a8bc # initialize rs1
li x1, 0xe3eb03c333273c43 # initialize rs2
czero.nez x26, x20, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x26, 0x4e89180d277699fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7d1e8457fb13712f # initialize rs1
li x16, 0xb4885679bc15ab41 # initialize rs2
czero.nez x26, x21, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x2, 0x77ca726557536f71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xccaaa89d9ac73cca # initialize rs1
li x24, 0x9e6fcc3b52db3cd8 # initialize rs2
czero.nez x2, x22, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x31, 0x6e9ef067dbfd02e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x143d4205942a9d03 # initialize rs1
li x24, 0x9dd11d3c24a8e618 # initialize rs2
czero.nez x31, x23, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x21, 0x4917d5ccdd8e4070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bf9b2cbdf88e068 # initialize rs1
li x12, 0x843b1ee39e565df6 # initialize rs2
czero.nez x21, x24, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x9, 0xc5bcaf1eb5380522 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8cebfcda50dac827 # initialize rs1
li x21, 0x6f4f13fb33ff3156 # initialize rs2
czero.nez x9, x25, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x25, 0x7f4b4040e526d43e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x06aadd13ddac23be # initialize rs1
li x20, 0x3f92e1cd84528700 # initialize rs2
czero.nez x25, x26, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x3, 0x11bf67df933ba3ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x699c6d6832f7de6a # initialize rs1
li x30, 0x364452e538a79107 # initialize rs2
czero.nez x3, x27, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0x21b7716f4191cc5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x883a47e95e1623c5 # initialize rs1
li x26, 0xbea158af97e357d0 # initialize rs2
czero.nez x17, x28, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x20, 0xacace569d58dd186 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3a97553bcf4989f6 # initialize rs1
li x22, 0x9808f4fbf10cf0ed # initialize rs2
czero.nez x20, x29, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x27, 0x2cc04120eff90645 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x15557437dac64725 # initialize rs1
li x16, 0x8b81caa98aa78473 # initialize rs2
czero.nez x27, x30, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x2, 0x2c9f72a8314c30f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x203d534db9ca1935 # initialize rs1
li x20, 0xa85469a60230b3fb # initialize rs2
czero.nez x2, x31, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x30, 0x9b7dae869c48db5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6447fe7dff7d3a87 # initialize rs1
li x0, 0xd65d6f84f1075069 # initialize rs2
czero.nez x30, x31, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x15, 0x5232276442f04483 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xda74701f6b43fb8b # initialize rs1
li x1, 0x5631f46fef67bdfe # initialize rs2
czero.nez x15, x21, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0x264abb0c17a21ef6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x3915a1b588f0a6e9 # initialize rs1
li x2, 0x66e2416ef0c3a9ea # initialize rs2
czero.nez x6, x24, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x13, 0xfa6a3e9800b4ddb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x81a95d4616b66cdb # initialize rs1
li x3, 0xd35bebf70c7e3b09 # initialize rs2
czero.nez x13, x20, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x10, 0x70bfad6ca5992830 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfebef6a897d14c1c # initialize rs1
li x4, 0x281fb6c36a9c753b # initialize rs2
czero.nez x10, x3, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x4, 0x7f16b549ae591325 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf241bf635f84ab23 # initialize rs1
li x5, 0xfe73f8133f1e5095 # initialize rs2
czero.nez x4, x26, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x22, 0xb600f21395298dea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9ceba91254b71047 # initialize rs1
li x6, 0xb7a763b74bd1fbb4 # initialize rs2
czero.nez x22, x10, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x31, 0xed09e31fd15857ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf50b288e3789d604 # initialize rs1
li x7, 0x0b23c01be6f3cef8 # initialize rs2
czero.nez x31, x13, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x19, 0xee7b0415c9b9bfb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x4313d13dbf4a8b6c # initialize rs1
li x8, 0xcacef5a3026681f6 # initialize rs2
czero.nez x19, x24, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x23, 0x38e5712b0b127838 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1698c16394dd0a89 # initialize rs1
li x9, 0xcaf8895fd9a43588 # initialize rs2
czero.nez x23, x25, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x7, 0xa654effa995bfa46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa7f6bae317c855bd # initialize rs1
li x10, 0x5edcfe8dc1993a43 # initialize rs2
czero.nez x7, x13, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x17, 0x83fd14212fa63d29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3876b6a1143408af # initialize rs1
li x11, 0xcae172ce8f32e015 # initialize rs2
czero.nez x17, x13, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x16, 0x5eb99ee6ea8796c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3803decd3d93fa9c # initialize rs1
li x12, 0x55f57c8da10f4d74 # initialize rs2
czero.nez x16, x13, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x30, 0x34b248eb009aafd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0631fb9087e7c61c # initialize rs1
li x13, 0xf3f74134ec445adf # initialize rs2
czero.nez x30, x8, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x2, 0x03f673d3712acdba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7b34127078ffa8d3 # initialize rs1
li x14, 0x46793c7d744099eb # initialize rs2
czero.nez x2, x23, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x11, 0x574275bb59c8edb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7e36cfff267ecccb # initialize rs1
li x15, 0xf38996f76c2b1cba # initialize rs2
czero.nez x11, x24, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x3, 0x2e6678f99ba89f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x642ca0138e4228e3 # initialize rs1
li x16, 0xbf36f958a1536fab # initialize rs2
czero.nez x3, x1, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0xa4c11aca51ba198f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xba7e5322aa078c1e # initialize rs1
li x17, 0x87eaec91b6f7a396 # initialize rs2
czero.nez x6, x5, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x24, 0xe0ffac1a1c5105dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf93833720f916060 # initialize rs1
li x18, 0xcdc19847bd638e7e # initialize rs2
czero.nez x24, x7, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x11, 0x59986c9f1c20e9b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x312afc96e9d094e5 # initialize rs1
li x19, 0xdfcf6f682f5b9765 # initialize rs2
czero.nez x11, x18, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x8, 0x0d79282b48fe0f83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdd0be8f2b16ed8ef # initialize rs1
li x20, 0x3e25e5653befe132 # initialize rs2
czero.nez x8, x4, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x26, 0x730bdb37b16afa8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaa3fa84c4652dcff # initialize rs1
li x21, 0x2a49be677be094e1 # initialize rs2
czero.nez x26, x15, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x27, 0xbe86c926ef3656a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x40ddfcaf9e45de45 # initialize rs1
li x22, 0x7165ede0b753e08d # initialize rs2
czero.nez x27, x29, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x25, 0x75fc9cc0de8d9c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa48e8808189b300a # initialize rs1
li x23, 0x4e4ec7a7a9f4c71c # initialize rs2
czero.nez x25, x7, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x3, 0x36b5816744732556 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ddc480050021da0 # initialize rs1
li x24, 0x174e8146c29e7de2 # initialize rs2
czero.nez x3, x31, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x31, 0x12ef10e7bbbf6e64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x69ed622949163afa # initialize rs1
li x25, 0xb5b7bfaeefd01690 # initialize rs2
czero.nez x31, x27, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x30, 0x8c5b975cb60ff9dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6114615279cb993f # initialize rs1
li x26, 0xec7d6dbd2d297e12 # initialize rs2
czero.nez x30, x14, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x23, 0xcdbe6117bfa36b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xbb314916ca425651 # initialize rs1
li x27, 0x8094ac045afb6801 # initialize rs2
czero.nez x23, x11, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x27, 0x73013faca6217b0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2b510559c6e89bb2 # initialize rs1
li x28, 0xf7f083f1d7e50511 # initialize rs2
czero.nez x27, x9, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x12, 0xace38c6e3ee22997 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3676f03beda85776 # initialize rs1
li x29, 0xa07233b4d3787795 # initialize rs2
czero.nez x12, x13, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x2, 0xdae1eb472c2c16e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8c8aed9695d708db # initialize rs1
li x30, 0x51f5afc96a12eb8c # initialize rs2
czero.nez x2, x5, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x26, 0x91d8ffa995e4c270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x79b21114f72e3eed # initialize rs1
li x31, 0xc8db0ccf3f11e460 # initialize rs2
czero.nez x26, x9, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0x576ca5ebfbf5ce3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x0, 0x2f87d21bb70a45be # initialize rs2
czero.nez x28, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x19, 0x952462c39f9463d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
czero.nez x19, x13, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0x282672eb638c49b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
czero.nez x10, x23, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x10, 0x59aea176a9413ea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x0, 0x7c6d0c25ebdf99bb # initialize rs2
czero.nez x10, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x31, 0x557501c59bfd1598 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
czero.nez x31, x26, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0xd4d56228593b8c14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
czero.nez x5, x27, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x19, 0x2febd98e7bc478b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
li x0, 0x76b60b10c662b968 # initialize rs2
czero.nez x19, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x29, 0x51dd4daf46d7f9b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
czero.nez x29, x4, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x2, 0xbba242ab207a97de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
czero.nez x2, x29, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x1, 0x5a605cb38337f26f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x0, 0x535c8d628130a5d0 # initialize rs2
czero.nez x1, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x3, 0xcf1983ab3086cb05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
czero.nez x3, x21, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x15, 0xbb491dea2c5c9c4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
czero.nez x15, x30, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x10, 0x9530518b28500954 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs1
li x0, 0xfe86f47a780ab9e3 # initialize rs2
czero.nez x10, x17, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x31, 0x971a156743df6ce3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
czero.nez x31, x29, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x2, 0x6f43450416a669bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
czero.nez x2, x7, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x27, 0x9b1293958eedce3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x0, 0x2e08946a241fc369 # initialize rs2
czero.nez x27, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x16, 0x415ad8b9fe0b6a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
czero.nez x16, x13, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x23, 0x1304a25196f112a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
czero.nez x23, x14, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x7, 0x5ea758a49025c20d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x0, 0xbf565b3debfef10a # initialize rs2
czero.nez x7, x5, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x27, 0x92cf8b7ac4898e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
czero.nez x27, x24, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x25, 0x1c76bd8e2787fd32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
czero.nez x25, x24, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x3, 0xbd7ced61c7f27257 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x0, 0x039866eb9a2d3b7e # initialize rs2
czero.nez x3, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x28, 0x4d47700e9e76ca63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
czero.nez x28, x6, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x14, 0x12d6f44215a6c228 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
czero.nez x14, x23, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x3, 0x6dbb21dcfa4251d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffffffffffe # initialize rs1
li x0, 0x29ce55e684d95d8a # initialize rs2
czero.nez x3, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x19, 0x123d8c3286a34113 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
czero.nez x19, x30, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x10, 0xd7a46a36c2f63077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
czero.nez x10, x18, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x25, 0x31752e482dcd2886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x0, 0xa59862cca6ec1f08 # initialize rs2
czero.nez x25, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x1, 0xc06af24b2b175f59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x1, x28, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x13, 0x566a67f4477d7b12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x13, x26, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x23, 0xf4a1d9526e5e7a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x0, 0xf46db1960c606a6b # initialize rs2
czero.nez x23, x5, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x30, 0x4c74445d68ee2ba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x30, x11, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x7, 0xcc54a99c08496f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x7, x16, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x12, 0x056bd92098f2d2f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
li x0, 0xbe726b18c7ef0a37 # initialize rs2
czero.nez x12, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x1, 0xf5618e3b83397676 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
czero.nez x1, x8, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x25, 0x070652ddcc9ba28e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
czero.nez x25, x1, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x29, 0x9d8b3dc03280f437 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x0, 0x72d21e2318dd6c7d # initialize rs2
czero.nez x29, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x12, 0xc98f9b2dcc8221de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
czero.nez x12, x21, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x22, 0x958dea1698702936 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
czero.nez x22, x25, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x23, 0xabe7ce9cb6c334db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe # initialize rs1
li x0, 0x633f421f60b4e38f # initialize rs2
czero.nez x23, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x4, 0x2b6113f3b8318df4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
czero.nez x4, x30, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x24, 0xac2a32fdf3b87a8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
czero.nez x24, x21, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x21, 0x8b3168541d09ed10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x0, 0x1e0a06cd45a7d8fa # initialize rs2
czero.nez x21, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x24, 0x3380c15118b1461e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
czero.nez x24, x30, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x27, 0xc9ae937cc33ab5f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
czero.nez x27, x14, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x8, 0x73f869c549cfde03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000001 # initialize rs1
li x0, 0xdb8ffa50d871d681 # initialize rs2
czero.nez x8, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x1, 0x446094c790244fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
czero.nez x1, x9, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x13, 0xdbf33ad2d04a3e7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
czero.nez x13, x8, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x12, 0xb8843aabb677da90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x2, 0x31a5a37da5a4c12d # initialize rs2
czero.nez x12, x11, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x5, 0xd67d37dec1da3e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x15, 0xda1676ea040f2bd2 # initialize rs2
czero.nez x5, x13, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x6, 0xb219e8a7475be800 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x24, 0xdb76f2ba8f288593 # initialize rs2
czero.nez x6, x9, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x21, 0x7d1ec24396f26280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000000 # initialize rs1
li x27, 0xa464690e56e57b52 # initialize rs2
czero.nez x21, x10, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x30, 0xd5a51a642fbf40b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # initialize rs1
li x1, 0x116de1d01f4212a7 # initialize rs2
czero.nez x30, x26, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x16, 0x5a655feb45378f84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x8, 0xc2c8d5c8c9189426 # initialize rs2
czero.nez x16, x12, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x26, 0xcba001d52c9a3d13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs1
li x17, 0x371c630638e86152 # initialize rs2
czero.nez x26, x23, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x16, 0xa876e1c648b043c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x13, 0x396368aed81bd759 # initialize rs2
czero.nez x16, x5, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x26, 0x944b747a9b82090e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
li x8, 0xe543ac3d28a367aa # initialize rs2
czero.nez x26, x27, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x6, 0x789aeb3ddade0eab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x181164de80122f4f # initialize rs2
czero.nez x6, x30, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x23, 0x82cba536bf65dc92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xf6bac06f6ce75c40 # initialize rs2
czero.nez x23, x16, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x21, 0x6025a989e9cf20f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
li x14, 0xae6c36f15399d311 # initialize rs2
czero.nez x21, x15, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x30, 0x021a27ddf3beea43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x5, 0xaea2d8932df5ea87 # initialize rs2
czero.nez x30, x15, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0xa0e85faeb74745fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs1
li x24, 0xc05d266e4f4869de # initialize rs2
czero.nez x25, x11, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x28, 0x7c8e12ea7f40e4a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
li x2, 0x5c2bddf161aad063 # initialize rs2
czero.nez x28, x22, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0x93505cf62e005c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x30, 0x91570442a9e76c9b # initialize rs2
czero.nez x15, x21, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x27, 0xdc508f7cf1102894 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6d49fdc3b8184518 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
czero.nez x27, x8, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x19, 0xf3eec1cc74217d8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x93d6057ac81c8b47 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
czero.nez x19, x27, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0xd2b6e44055d3a9c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3312d091375ec292 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
czero.nez x9, x13, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x12, 0xba3b079b896f4454 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb3861c28e2eb9083 # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
czero.nez x12, x21, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x10, 0xfab91ddf26584a52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xdf14eaec3740ac3e # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
czero.nez x10, x16, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0xf704b88ea75e7be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x20396521a9dfc9e5 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
czero.nez x10, x28, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x16, 0xc71d57a58c879789 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3673be6f174f605c # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
czero.nez x16, x23, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x9, 0x9a8a47142c21df1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x669bc405ee3d007a # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
czero.nez x9, x11, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x4, 0xeca72ed465e44fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8cfec32dc75f0f5a # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
czero.nez x4, x28, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x20, 0xaa16c2f412603d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2dae6ed81734f14e # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x20, x3, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x22, 0xd6eb9880fe9a7a77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8e6564555d249474 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x22, x15, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x24, 0x2a5f5b4fe47dfcda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1021dcc437623e86 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
czero.nez x24, x27, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x6, 0xe60431aea9ec358b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x14aeafac31c50f65 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
czero.nez x6, x3, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x7, 0x8eb10bb816458c02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd579f16effd02e25 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
czero.nez x7, x25, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x8, 0x36ae081021cc596d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x359ec9f1584ad709 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
czero.nez x8, x9, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x26, 0xb38e2aa33141bcc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xabab4e6a0d126fc3 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
czero.nez x26, x22, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x3, 0x18f7a9234f8151f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
czero.nez x3, x2, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x6, 0xc801844a46dbb5e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
czero.nez x6, x4, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x9, 0x8793b72dbaf0c78a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000000 # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
czero.nez x9, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x1, 0xd97287fc37a3f5c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
czero.nez x1, x14, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x1, 0xbe67c357b2208fd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
czero.nez x1, x17, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x9, 0xae2853003472f96c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
czero.nez x9, x14, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x21, 0x537c6398490b4d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
czero.nez x21, x5, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x24, 0xce3234ea82bc8ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
czero.nez x24, x14, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x18, 0xee4a8f2f9b604125 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
czero.nez x18, x8, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x1, 0xc4caa2f32a36f327 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x1, x6, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x32832248607098b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x21, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x23, 0x3263d2367fdbcb6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
czero.nez x23, x22, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x28, 0x62595ef88cd66002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
czero.nez x28, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x25, 0x2d36762a2b186229 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
czero.nez x25, x1, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x20, 0x3be34a7a23e424a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
czero.nez x20, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x15, 0x35e8efbef2e875e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
czero.nez x15, x8, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x25, 0x38be8f969bab9f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
czero.nez x25, x31, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x14, 0x4ecf7b0bae231f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
czero.nez x14, x4, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x14, 0x4bb1dc90fe88eb85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
czero.nez x14, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x28, 0xd41ecac1317ce997 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
czero.nez x28, x25, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x1, 0x96c8f81ac27da8a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
czero.nez x1, x2, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x24, 0x7151096ebe9fe528 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
czero.nez x24, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x9, 0x8ad12dc8209f4382 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
czero.nez x9, x17, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x24, 0xa19c9dd2ee50d63f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
czero.nez x24, x31, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x2, 0xa5b3322432be7572 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
czero.nez x2, x17, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x18, 0x8e1d346e174cf944 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x18, x19, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x233d6338dafc3431 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x5, x30, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x9, 0x3d1b83bdd38fc102 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
czero.nez x9, x26, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x30, 0x21af7c88bff991aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
czero.nez x30, x14, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0xf55f6ed50d00598d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
czero.nez x20, x1, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x9, 0x4168e57bbbb1b253 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
czero.nez x9, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x29, 0xb5c555d0e6245f9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
czero.nez x29, x25, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x14, 0xf0b8617da9c7082e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
czero.nez x14, x4, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x28, 0x354d3f69bf803394 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
czero.nez x28, x24, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x22, 0x7d6952e5d563aca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
czero.nez x22, x27, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x18, 0x389038dccfd820e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
czero.nez x18, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x3, 0xa79d0ebd36d7b856 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
czero.nez x3, x24, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x7, 0x94082e3bad83e08e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
czero.nez x7, x2, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x5, 0x7b79538ad5297992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
czero.nez x5, x11, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x19, 0x867c278f07c86896 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000002 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
czero.nez x19, x17, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x18, 0xfff9f1220e3d40d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
czero.nez x18, x27, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x13, 0x993ea048902e8339 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x13, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xcd8f9b35b5b0142f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000002 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x19, x5, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x29, 0xb805ed4e92762e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
czero.nez x29, x25, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x12, 0x8c682ac4dabca928 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
czero.nez x12, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x14, 0x76f5d341e90b7975 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
czero.nez x14, x25, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x17, 0x185ccaeff64f2f3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
czero.nez x17, x29, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x25, 0x5a5888b1c5e2152d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
czero.nez x25, x11, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x11, 0x374e90c2f0c7af2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
czero.nez x11, x4, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x10, 0x6e00aed7bc8ffa5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
czero.nez x10, x22, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x7, 0x4835e50411c94e5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
czero.nez x7, x11, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x7, 0x1d462bbea8c06e16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
czero.nez x7, x9, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x26, 0x35aa723ca0b5e6f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
czero.nez x26, x24, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x9, 0x1aecd093e4ad79ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
czero.nez x9, x26, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x5, 0xaaaad4fd1e34cf06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
czero.nez x5, x7, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x1, 0x612c6eceac2f752b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
czero.nez x1, x21, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x4, 0xa2b18ea40c8eece0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
czero.nez x4, x19, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x12, 0xb75d5eda031a90fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x12, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x27abc14f3e4aa13e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x7, x9, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x26, 0x3fd25bed7c26053c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000000 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
czero.nez x26, x5, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x12, 0x6b7c520567760219 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
czero.nez x12, x31, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x4, 0x651d373a51111a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
czero.nez x4, x14, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x31, 0x0e9001a5c72049fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
czero.nez x31, x19, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x27, 0x0d51d33df13bf6c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
czero.nez x27, x14, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x3, 0x03f4a8643050ee3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
czero.nez x3, x17, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x31, 0x0e5962592cac5b16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
czero.nez x31, x14, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x20, 0x3283f2340c6f96ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000001 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
czero.nez x20, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x30, 0xadb9e37a35c1d91e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
czero.nez x30, x10, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x20, 0xf7a269a63694c81a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
czero.nez x20, x31, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x3, 0x63d8b5c1cab0b778 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000001 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
czero.nez x3, x30, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x30, 0x48fa659003450513 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
czero.nez x30, x14, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x31, 0xbdb5f54cc899e422 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
czero.nez x31, x13, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x14, 0xb4990cbc180d99a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
czero.nez x14, x15, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x13, 0x2894434d69b1a4e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x13, x11, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x3305d3cf02409645 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x26, x7, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x16, 0x59c975ab5af36c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
czero.nez x16, x26, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x3, 0xe248158794ba8a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000001 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
czero.nez x3, x5, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x12, 0x2eb5d6d98c1d0009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
czero.nez x12, x19, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x29, 0xd3bbde56baed6189 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000001 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
czero.nez x29, x7, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x1, 0xffba7389c8f1564a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
czero.nez x1, x17, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x29, 0x1a59ce7fee1c4cb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
czero.nez x29, x6, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x23, 0x391aba7fbe16cce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
czero.nez x23, x29, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x1, 0xf458c45ef635de8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
czero.nez x1, x31, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x5, 0x1650637897ef43dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
czero.nez x5, x24, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x2, 0x8b83008ac74dc6d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
czero.nez x2, x14, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x14, 0xf726f5db94993f98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
czero.nez x14, x8, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x7, 0xe6e7a275e043d31f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
czero.nez x7, x26, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x13, 0x7a0988ebc5f49f9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
czero.nez x13, x27, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x21, 0x1a378fe81edb30db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffffffffffff # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
czero.nez x21, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x16, 0x8e2c621bc13ed344 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffffffffffff # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x16, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xe9d6a453d917415e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x5, x25, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x1, 0xc2750e4da2aea540 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
czero.nez x1, x19, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x3, 0xe53ace6b5e879ff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
czero.nez x3, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x15, 0xf6cf9244a7afa877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
czero.nez x15, x11, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x18, 0x0de72967ea59fa5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
czero.nez x18, x13, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x3, 0xd09f1154309c0028 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
czero.nez x3, x25, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x12, 0x3d4b0059b50b1400 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
czero.nez x12, x16, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x6, 0x200435dbcb6fb613 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
czero.nez x6, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x11, 0x0bc2f0ccf62e5814 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
czero.nez x11, x29, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x10, 0x9aaa77f2a9e73214 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
czero.nez x10, x22, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x9, 0xf3efd7e44b887c04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
czero.nez x9, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x15, 0xf066fa57b159c8b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
czero.nez x15, x31, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x5, 0x685e02d4f2dc6cdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
czero.nez x5, x18, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x10, 0xa756d3eaad647a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
czero.nez x10, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x28, 0x15b51a2494188f9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
czero.nez x28, x13, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x27, 0x4bd5d4a0b804314d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x27, x1, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x4592e576ba19f76d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x14, x24, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x30, 0xfb8a8140aaab8c6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
czero.nez x30, x12, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x10, 0x660a446060c0ef54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
czero.nez x10, x18, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x11, 0x00d2f04f70ff7ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
czero.nez x11, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x1, 0xb370cbc9792f0fa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
czero.nez x1, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x10, 0x8bee6aa3873fd9f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
czero.nez x10, x13, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x4, 0x74df6a3e3c52ce84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
czero.nez x4, x2, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x7, 0x2cb3f2876dbd8d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
czero.nez x7, x19, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x30, 0xc44ad20e2bb542b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
czero.nez x30, x27, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x1, 0xec7156dbb488e248 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
czero.nez x1, x9, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x1, 0xef5d7d6dab8232db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
czero.nez x1, x22, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x17, 0x76a517229fc28dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
czero.nez x17, x11, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x19, 0x2c8ea2f822eb0fa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
czero.nez x19, x6, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x10, 0x2852ff02b32e0588 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
czero.nez x10, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x1, 0xb4c09a9046387e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
czero.nez x1, x16, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x1, 0x0bb3f48fa6eeb006 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x1, x5, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xbc74573daefc7bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x29, x4, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x1, 0x4447f27f0569dc01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
czero.nez x1, x25, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x6, 0x072296078b591ee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
czero.nez x6, x28, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x15, 0x160de9954f0ac7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
czero.nez x15, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x10, 0x897b6eef4535ede4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
czero.nez x10, x24, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x3, 0x1dd746400fc7e9f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
czero.nez x3, x29, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x1, 0x1c3259b73d0c0c3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
czero.nez x1, x23, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x10, 0x31ecb3e1498a5ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
czero.nez x10, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x6, 0x089423b1d47958a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
czero.nez x6, x3, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x7, 0xe4374bf33c33e756 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
czero.nez x7, x19, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x22, 0x3eec3e3f89fd5751 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
czero.nez x22, x23, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x28, 0xcbe01cbbba2eebaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffffffffffe # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
czero.nez x28, x5, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0x4b935516cc732b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
czero.nez x13, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x9, 0x119702c1379eaf96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
czero.nez x9, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x9, 0x2063c4b3a08f84f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
czero.nez x9, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x17, 0x8b4a0f01eda22e0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x17, x22, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0xbc96b7a7f4394108 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x30, x6, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x11, 0x5d50054efa5d4036 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
czero.nez x11, x9, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x14, 0x180f100547a438b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
czero.nez x14, x24, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x19, 0xb232043c51357340 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
czero.nez x19, x30, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x16, 0x4f97b2fd1bd7148f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
czero.nez x16, x23, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x31, 0xee8a76d45ab3d7c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
czero.nez x31, x17, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x22, 0xfe322f3196d01a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
czero.nez x22, x1, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x16, 0xfe7d5ab5ec857216 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
czero.nez x16, x6, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x7, 0x300735068440915c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
czero.nez x7, x9, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x1, 0x265d86aa88fe6cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
czero.nez x1, x30, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x8, 0x01843e513dcd338f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
czero.nez x8, x31, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x7, 0xab47e3a042b2956f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
czero.nez x7, x30, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x1, 0x155c50df9f8241e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
czero.nez x1, x11, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x16, 0xd2bca056907f8350 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
czero.nez x16, x2, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x11, 0x8361af96650e4e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
czero.nez x11, x31, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x13, 0xf329f08ae63eb604 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x13, x22, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x7065a86e8a9716b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x14, x18, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x7, 0x0e847a89c3139919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
czero.nez x7, x23, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x27, 0x4205924b64eed403 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
czero.nez x27, x8, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x23, 0xc6d1d8861a7b8c89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
czero.nez x23, x3, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x20, 0xddd07ec7f1f68ad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
czero.nez x20, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x27, 0x1e34f94f26dda662 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
czero.nez x27, x16, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x21, 0x97d69acd13e5c16b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
czero.nez x21, x5, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x20, 0xde07bf7acd22cadc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
czero.nez x20, x1, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x29, 0xf61330d954cb12f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
czero.nez x29, x2, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x5, 0x0913258e17dcb887 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
czero.nez x5, x18, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x7, 0xdd9502f967cf54d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
czero.nez x7, x22, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x14, 0x96171b1376c89aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
czero.nez x14, x24, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x5, 0xbc89d52bba5dcdae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
czero.nez x5, x2, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x3, 0xeb54488688201bb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
czero.nez x3, x20, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x12, 0xae126ae4fde94a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
czero.nez x12, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x8, 0xf287c28971f9f5f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x8, x17, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x292793e843372dc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x14, x24, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x30, 0xdbfd4a8d33173724 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
czero.nez x30, x3, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x7, 0x65b8ae2a0d06f937 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
czero.nez x7, x14, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x21, 0xb241bda4519d439c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
czero.nez x21, x1, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x30, 0x837993a92388de40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
czero.nez x30, x23, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x11, 0xaa11118881863eba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
czero.nez x11, x27, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x29, 0x8f61946926d133bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
czero.nez x29, x17, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x1, 0x4279fc4c4d2ce7ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
czero.nez x1, x19, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x20, 0xb6d13c2cfd9d4a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
czero.nez x20, x4, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x4, 0xff665e014ad99dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
czero.nez x4, x30, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x22, 0xfd4e0f9d509d6c03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
czero.nez x22, x6, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x29, 0x95d5336febc3cb59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
czero.nez x29, x13, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x31, 0x17de91bfb3f82622 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
czero.nez x31, x25, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x31, 0x071186e1dccdfaf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
czero.nez x31, x16, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x5, 0xe40af661053e1eaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
czero.nez x5, x23, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x2, 0x9520eaa9dfdaadd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5555555555555555 # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x2, x21, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x871c0c7a61696581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x24, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x29, 0x238766cfcb1f5903 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
czero.nez x29, x11, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x12, 0x096fc836a4909e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
czero.nez x12, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x8, 0x8cb93c0fae955075 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
czero.nez x8, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x8, 0x49dda4ef11a0c9b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
czero.nez x8, x30, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x27, 0xa882e9faa2bf0530 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
czero.nez x27, x30, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x28, 0x99eb8c5b62b4fb5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
czero.nez x28, x17, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x27, 0x74630270648c4abe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
czero.nez x27, x2, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x15, 0x301345174e099f6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
czero.nez x15, x9, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x2, 0xccae27bec2125704 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
czero.nez x2, x20, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x18, 0xceef330df8a81d17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
czero.nez x18, x15, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x20, 0x54b2b49a9d80bc29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
czero.nez x20, x23, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x2, 0x622548e077b5459b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
czero.nez x2, x19, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x10, 0xf652cf86caa26f7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
czero.nez x10, x7, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x4, 0xc33ab055a22e2e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
czero.nez x4, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x8, 0x09b7f3a905c9f34a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000ffffffff # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x8, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x73a88ea355b6da24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x21, x30, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x2, 0x2f90e118c2a30db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
czero.nez x2, x29, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x7, 0xe691f3a620685c92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
czero.nez x7, x10, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x1, 0xb3c0c851324df1c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
czero.nez x1, x12, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x18, 0x19e19ce71fb1f7c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
czero.nez x18, x26, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x16, 0x915d9ca26dbb3818 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
czero.nez x16, x13, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x17, 0x6feb19975b1b4e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
czero.nez x17, x16, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x21, 0xe63e853b44614a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
czero.nez x21, x2, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x25, 0x192c664a42b88eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
czero.nez x25, x6, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x7, 0x959eaf6271d6bfed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
czero.nez x7, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x2, 0xd2c6bd70a1163150 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
czero.nez x2, x30, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x28, 0x1e6b027d1312141c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
czero.nez x28, x20, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x4, 0xef22d1e2401de641 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
czero.nez x4, x18, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x25, 0x6b06d38449bbcc07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
czero.nez x25, x30, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x31, 0xfae7e759d287428a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
czero.nez x31, x9, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x3, 0x504b8870f6008680 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x3, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x44738a072fca50b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x7, x24, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x12, 0xa93df1df61e5defd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
czero.nez x12, x26, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x5, 0x5e4f7f45237dc4bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
czero.nez x5, x25, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x11, 0x9a258de255f86588 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
czero.nez x11, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x19, 0x8e7ff9b47470aa5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
czero.nez x19, x8, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x3, 0xe17c34c8814179d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
czero.nez x3, x11, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x2, 0x15b19675c94041ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
czero.nez x2, x17, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x7, 0x9f7f19b5ffe556b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
czero.nez x7, x6, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x13, 0x554897902437fdf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
czero.nez x13, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x27, 0xaf2f6b12a9f23a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
czero.nez x27, x28, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x2, 0x715e7ea9a15913db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
czero.nez x2, x22, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x14, 0x04498c9d107c6f76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
czero.nez x14, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x10, 0x553e6cfc77b1b387 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
czero.nez x10, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x10, 0x69c83c495540a2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
czero.nez x10, x31, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x10, 0x31601a441be41546 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
czero.nez x10, x17, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x9, 0x99106e166551900b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x9, x22, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x1851644dce2f8166 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000000 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x3, x7, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x27, 0xfe09726206e33f50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
czero.nez x27, x18, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x23, 0xfffca15fe900785c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
czero.nez x23, x20, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x15, 0x745f9060ce126363 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
czero.nez x15, x12, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x7, 0xc2100d208d73354b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
czero.nez x7, x19, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x14, 0x477b972aefe2420a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000000 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
czero.nez x14, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x3, 0xd75f2e025ba639bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
czero.nez x3, x17, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x13, 0x424c15ead25931c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
czero.nez x13, x27, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x30, 0x030490b18805091e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
czero.nez x30, x24, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x24, 0x7f3c107ed24dabdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
czero.nez x24, x14, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x1, 0x02472f07dda262c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
czero.nez x1, x30, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x5, 0x2894e8068e9e3f9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
czero.nez x5, x6, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x2, 0x9a8542a0581cbd2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
czero.nez x2, x8, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x2, 0x1d339bf2885c2758 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000001 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
czero.nez x2, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x18, 0xb6eb30123ff782cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
czero.nez x18, x12, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x15, 0xedb7eb606140a6b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
czero.nez x15, x19, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x917be309159e4069 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x10, x16, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x10, 0xf0bfe567abb3e314 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
czero.nez x10, x22, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x29, 0x8c61a2de87fed368 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
czero.nez x29, x11, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x23, 0xde0139bc1fe31fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000001 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
czero.nez x23, x3, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x12, 0xe4898bfcaf71e8c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
czero.nez x12, x7, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x14, 0x3d7dae13c94f3782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
czero.nez x14, x17, x31 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-czero.eqz.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x5bb87beb55834a85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5884fda7d170adf7 # initialize rs1
li x1, 0xfdd785d075e74a76 # initialize rs2
czero.eqz x0, x26, x1 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xeb379497e84f0113 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaa49e5935c19d632 # initialize rs1
li x3, 0xec58fb6bcc5800b8 # initialize rs2
czero.eqz x1, x12, x3 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xa9266afc5fee88c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x519744bfcfa9f0b9 # initialize rs1
li x23, 0xdeab106f1a61deae # initialize rs2
czero.eqz x2, x10, x23 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xa75f8e5b7fc11f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1ae2ecd6dec071ee # initialize rs1
li x10, 0x9d89d84315590049 # initialize rs2
czero.eqz x3, x2, x10 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xaf17323bbd453a4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcc06668944c73ce8 # initialize rs1
li x21, 0x81386a3ef03fcc86 # initialize rs2
czero.eqz x4, x4, x21 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xc7282a93331f4953 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa6bb1c1450a430d5 # initialize rs1
li x14, 0x807ce6e947e33d14 # initialize rs2
czero.eqz x5, x10, x14 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xb1e8450f12a1b5b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x31c3955d41c93034 # initialize rs1
li x2, 0xad6e5369156929b7 # initialize rs2
czero.eqz x6, x19, x2 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x66d58bf1d0c92045 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3dae7b27b779eff1 # initialize rs1
li x10, 0x408d039b49b11c04 # initialize rs2
czero.eqz x7, x18, x10 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x5bb1b03396a04c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x05cfca5073c83173 # initialize rs1
li x21, 0x34c4e97d56585ae9 # initialize rs2
czero.eqz x8, x29, x21 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x10fda1af3361e622 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbd3fb4f9ec787ff8 # initialize rs1
li x15, 0x45dbeb7fefb6e5ee # initialize rs2
czero.eqz x9, x1, x15 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x124ba8d077743395 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7c1a9e4b02028bb2 # initialize rs1
li x27, 0xfd1d3397634c7ff2 # initialize rs2
czero.eqz x10, x26, x27 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd7f3dbf02311532c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc465f4947991c164 # initialize rs1
li x13, 0x8c18f3d95e9ebfa7 # initialize rs2
czero.eqz x11, x11, x13 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x31117b6129f61fca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7eb18352d115924c # initialize rs1
li x20, 0xf3139c5678ac0e08 # initialize rs2
czero.eqz x12, x7, x20 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xaa8e0fce6246444a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5750216a6a61b3db # initialize rs1
li x22, 0x2e1978db2cefd9c5 # initialize rs2
czero.eqz x13, x23, x22 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x21cc42cd5522d67d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xecaf7a49ae95739d # initialize rs1
li x8, 0x8f61d6e2408480ba # initialize rs2
czero.eqz x14, x19, x8 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x3aca9fadb9372348 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc80aa057bdf928d1 # initialize rs1
li x21, 0x2aa84c4d84cd4a5f # initialize rs2
czero.eqz x15, x11, x21 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x357c981cbfc1a2b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6eb66153cf21ad0f # initialize rs1
li x11, 0xf4076c72dcd31418 # initialize rs2
czero.eqz x16, x14, x11 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x08c781a88f23e81f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x605cf43611c1512b # initialize rs1
li x24, 0x19411a25df90fa04 # initialize rs2
czero.eqz x17, x1, x24 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xabe280612631f63e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb3345fc489dc53b3 # initialize rs1
li x8, 0x25d05e078f8c9eaa # initialize rs2
czero.eqz x18, x24, x8 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xfc1f632fc0bf062c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x662755c8f955f436 # initialize rs1
li x19, 0xcc98398201b056e7 # initialize rs2
czero.eqz x19, x9, x19 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xb62b50fecba6905c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x244f0115bf4d445a # initialize rs1
li x27, 0xfbebfe2461254d8a # initialize rs2
czero.eqz x20, x11, x27 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x7252ca7444453886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaf35300b5a709c7f # initialize rs1
li x28, 0x058219e3d7b51a49 # initialize rs2
czero.eqz x21, x23, x28 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x56604ae5f5b9a975 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xcbb075f294c140bb # initialize rs1
li x23, 0x5b5ed21486ba5d79 # initialize rs2
czero.eqz x22, x17, x23 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x1eafc04498cc9d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x09d9d34b9bf5be0e # initialize rs1
li x30, 0xd77d4054f0696360 # initialize rs2
czero.eqz x23, x26, x30 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xd88eebda216a8b68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2b4a9c97e13c9ab4 # initialize rs1
li x15, 0x6c56082d60ea9601 # initialize rs2
czero.eqz x24, x25, x15 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xfafd6d318335c558 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x36beb97090b9e3c7 # initialize rs1
li x16, 0x7120f6e4b5b54b6c # initialize rs2
czero.eqz x25, x29, x16 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xa0ad92d185ebb5b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xdf5d448fd36e3ef7 # initialize rs1
li x28, 0x512bbd969fe72111 # initialize rs2
czero.eqz x26, x27, x28 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xef7b734337d076a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaea8f2a1043cb0bb # initialize rs1
li x8, 0x81ea514e74f6d831 # initialize rs2
czero.eqz x27, x28, x8 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xb49e8998e6ec8565 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x409bedd2f3e0575c # initialize rs1
li x10, 0x7ffd7671749288ca # initialize rs2
czero.eqz x28, x19, x10 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x33d1c302dfeae892 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5dd2931382cfa4d2 # initialize rs1
li x16, 0x2eb11a2397309a9a # initialize rs2
czero.eqz x29, x13, x16 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x6ba3fc274d004d24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4d8431e1e308f05a # initialize rs1
li x21, 0x4f2d749b17eea63a # initialize rs2
czero.eqz x30, x16, x21 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x47e0be65ae2540f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x90f91308a539bf3d # initialize rs1
li x9, 0xd8372db042dbcace # initialize rs2
czero.eqz x31, x10, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x4, 0x55244e529d34c48a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4a5270f4ebf6862b # initialize rs1
li x19, 0xfc8d9e3a9c5219c7 # initialize rs2
czero.eqz x4, x0, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x4, 0x0ae5543b0114e83a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x447fcd8d4d65bc2f # initialize rs1
li x16, 0xf1856c85cb8c973c # initialize rs2
czero.eqz x4, x1, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x25, 0xde164a8fd505b641 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2a0c1d08f02ad251 # initialize rs1
li x30, 0x7b47bbeed444fa67 # initialize rs2
czero.eqz x25, x2, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x21, 0x171138bbeda91dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3f58cc8617b64648 # initialize rs1
li x8, 0x7842c2747f3a2ef9 # initialize rs2
czero.eqz x21, x3, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x11, 0x58c034657319d56a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x45abb75fb695d3f2 # initialize rs1
li x2, 0x8351082c709dad5e # initialize rs2
czero.eqz x11, x4, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x9, 0x3859dc54fbdddebf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe647959c86abc70d # initialize rs1
li x17, 0x1142ac8cdb6a8d8b # initialize rs2
czero.eqz x9, x5, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x11, 0x21f28ae0566bba69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x04777f53f3c13e94 # initialize rs1
li x21, 0x198ceeedd26a88b5 # initialize rs2
czero.eqz x11, x6, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x1, 0x3b5f369e75a21a8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2d0847a6f69aeb83 # initialize rs1
li x23, 0x1bea9f49048a866e # initialize rs2
czero.eqz x1, x7, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0x537ceb9507367166 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x43babe92724fcac2 # initialize rs1
li x20, 0xde558b480218d639 # initialize rs2
czero.eqz x10, x8, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x29, 0x9baacd97c2368e01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xce3ceb93fe59ec53 # initialize rs1
li x8, 0x12687c69abca00f9 # initialize rs2
czero.eqz x29, x9, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0x491129a19487f939 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xafcdd89586a48694 # initialize rs1
li x26, 0x82579de27ed930b7 # initialize rs2
czero.eqz x11, x10, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x17, 0x3892288a5102c236 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xde90ad294a51187f # initialize rs1
li x27, 0x907c0da979ae2455 # initialize rs2
czero.eqz x17, x11, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x21, 0x4c225a149aeea7d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb74e932bcad63d01 # initialize rs1
li x26, 0x69f09cc3a940d34a # initialize rs2
czero.eqz x21, x12, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x20, 0xc4a305b5019ce6fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x934e5d72c0b24c8c # initialize rs1
li x25, 0x08e2bb91b2b24569 # initialize rs2
czero.eqz x20, x13, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x27, 0x33de10947a4ff008 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9b22b77b0e0fb0d0 # initialize rs1
li x31, 0x519ef82e6555fb8a # initialize rs2
czero.eqz x27, x14, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x16, 0xeffb4cae763e98aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x95aa15d1a89f9814 # initialize rs1
li x29, 0x625161d1f5c6f74e # initialize rs2
czero.eqz x16, x15, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x18, 0x311c0e9c77d53e08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9dd47c0ad6af2c4b # initialize rs1
li x12, 0x158b61aa7718febc # initialize rs2
czero.eqz x18, x16, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x26, 0x7396e453733981fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb1a1e9c852ef1cc8 # initialize rs1
li x30, 0x92d4689440eda3f3 # initialize rs2
czero.eqz x26, x17, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x25, 0xd509302d795ba1f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3cc2cc1fcf726a19 # initialize rs1
li x9, 0xdc80a539e3782e6f # initialize rs2
czero.eqz x25, x18, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x18, 0x4f1a5c5a4ec7a066 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe905ce438884acfb # initialize rs1
li x15, 0x52cf361877412e90 # initialize rs2
czero.eqz x18, x19, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x29, 0x224297c789e1fd8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd63e2efd566352f6 # initialize rs1
li x27, 0x4344dc517645672c # initialize rs2
czero.eqz x29, x20, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x8, 0xcd8affb44e82e1f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc515e4f8c85a882f # initialize rs1
li x30, 0x376668d63e9ce2a3 # initialize rs2
czero.eqz x8, x21, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x11, 0xc9280ae50b9c41b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf373632cbb3ac630 # initialize rs1
li x10, 0x996c71b4248d95a1 # initialize rs2
czero.eqz x11, x22, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x27, 0xf9484b3285188939 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xde01d918d93e6e18 # initialize rs1
li x10, 0x3f242e1d4a0cf58f # initialize rs2
czero.eqz x27, x23, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x27, 0xcf25b46ef7e09c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa7cc1b736e53e1a8 # initialize rs1
li x14, 0x94eb5c92f1cd9edc # initialize rs2
czero.eqz x27, x24, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x7, 0xfa037aa0407d0166 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xe92a1b1afb639ce7 # initialize rs1
li x14, 0xee07e008361cb7ae # initialize rs2
czero.eqz x7, x25, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x25, 0xd1713d9386f918a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x29321996520d4887 # initialize rs1
li x22, 0x3a23f8dd57bb2778 # initialize rs2
czero.eqz x25, x26, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x21, 0x3957984eb09dddc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7d3c970b70a3dd84 # initialize rs1
li x9, 0x7c651ddbe6abf779 # initialize rs2
czero.eqz x21, x27, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x21, 0xb43bf9c28f6eecd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8bbadbf7d829fd3b # initialize rs1
li x12, 0xcddf887ecf2af827 # initialize rs2
czero.eqz x21, x28, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x1, 0xf799179454e480a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xecca3e11627313b6 # initialize rs1
li x4, 0x6f83705505d073b2 # initialize rs2
czero.eqz x1, x29, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x8, 0x83d3703d51676e17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x975990260f5d5863 # initialize rs1
li x28, 0xe7c5eb14b2544cb8 # initialize rs2
czero.eqz x8, x30, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x28, 0x6472cfc859c917cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xef136eecc53b5187 # initialize rs1
li x17, 0xdd399dd5f98da0e5 # initialize rs2
czero.eqz x28, x31, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x29, 0x9d136dc23bed307c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5dd2a40949229136 # initialize rs1
li x0, 0x344a1d3eab3763b5 # initialize rs2
czero.eqz x29, x11, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x11, 0x1a275f60ccebee77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0e3eccdc614d8bdd # initialize rs1
li x1, 0xb0143d0546431a67 # initialize rs2
czero.eqz x11, x7, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x13, 0x9f0de3cac74f4cf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x4d38be4655ac3805 # initialize rs1
li x2, 0x29457460b32f131f # initialize rs2
czero.eqz x13, x30, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x28, 0x6d8472a9c3c16a59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0e095f6048a85404 # initialize rs1
li x3, 0x285a910e18239f7b # initialize rs2
czero.eqz x28, x13, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x22, 0x69ecbf55d94eebba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x98108b819177f293 # initialize rs1
li x4, 0xc21515faa5882e47 # initialize rs2
czero.eqz x22, x26, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x21, 0xc2245e6f27c97d2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xba8ba1271714672b # initialize rs1
li x5, 0x88c461bb5026b921 # initialize rs2
czero.eqz x21, x10, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x27, 0xa173a7011715edba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd14f63a5765114d8 # initialize rs1
li x6, 0x7fd6d4fb65d18f02 # initialize rs2
czero.eqz x27, x15, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x23, 0x6cc582c72588c487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xbb81e2d393666a79 # initialize rs1
li x7, 0xaa52f0bbbbed7fc7 # initialize rs2
czero.eqz x23, x21, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0xc1642bb8bb19b157 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x560a61d6bfb91344 # initialize rs1
li x8, 0x555be9a408edbc22 # initialize rs2
czero.eqz x13, x9, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x1, 0x8d497ed37d8bde78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x752ff68f0eb6b7a7 # initialize rs1
li x9, 0x719e41e0252647f5 # initialize rs2
czero.eqz x1, x29, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x24, 0xd1d384ea73a9c6fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf606cec4b10df664 # initialize rs1
li x10, 0x22c7afbb860452e0 # initialize rs2
czero.eqz x24, x3, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x25, 0x87c6590bbd9b08fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa553da8de554fac5 # initialize rs1
li x11, 0x26789572fb337892 # initialize rs2
czero.eqz x25, x22, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x9, 0x5a206e2e79c913e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2ffb24dcf16ab5c5 # initialize rs1
li x12, 0x31482b1c7be738df # initialize rs2
czero.eqz x9, x14, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x7, 0xef6b46007143f870 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa7bc5aa401ea4a8a # initialize rs1
li x13, 0xecdd8655fe75373a # initialize rs2
czero.eqz x7, x1, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x28, 0xa348c6f234a57b9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x650fd637cf65d9e0 # initialize rs1
li x14, 0xeb02d44838e427e3 # initialize rs2
czero.eqz x28, x10, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0xd91e17af0236c633 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x976aae219a76880a # initialize rs1
li x15, 0xe20d0644ea456405 # initialize rs2
czero.eqz x30, x2, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x31, 0x73257c83fa7560f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x735d1250cefb1134 # initialize rs1
li x16, 0x84603ae80e74e970 # initialize rs2
czero.eqz x31, x4, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x19, 0xae5c188a7b0921e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x622a18c18f3e9da4 # initialize rs1
li x17, 0x62f58c9544e0ec31 # initialize rs2
czero.eqz x19, x12, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x28, 0x175739f18a49bb47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe913dfe81f6ce847 # initialize rs1
li x18, 0xc453f99f3395e6d7 # initialize rs2
czero.eqz x28, x27, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x29, 0xba9d9c6327acc904 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x891a8503a0086daf # initialize rs1
li x19, 0xe4ae2a3a86e8a48c # initialize rs2
czero.eqz x29, x22, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x7, 0x6b3bdaa60ac8f247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8b97b300d38d4781 # initialize rs1
li x20, 0xe569deb4d4762e00 # initialize rs2
czero.eqz x7, x16, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x11, 0xeabcbd4b3cc77135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x71a204138faa7bf1 # initialize rs1
li x21, 0xe33028c2e2741ce0 # initialize rs2
czero.eqz x11, x3, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x9, 0xf4dbe0e06eb126c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x4cf5826b0eb76a21 # initialize rs1
li x22, 0x03aa780c67a101cb # initialize rs2
czero.eqz x9, x5, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x18, 0x153352e8f4c59979 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x438e93ae5bc5cce3 # initialize rs1
li x23, 0xbf83901248631389 # initialize rs2
czero.eqz x18, x1, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x12, 0xf10be7e1f25b5fef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5f41a2a083700794 # initialize rs1
li x24, 0x206348cda17f1753 # initialize rs2
czero.eqz x12, x14, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x16, 0x3c38b155dd0cb002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xde30a40a2d29712f # initialize rs1
li x25, 0x82aff88683979b3a # initialize rs2
czero.eqz x16, x17, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x31, 0xf4968c28f3a2302f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4aceba55130846dd # initialize rs1
li x26, 0xf97864f3b7a4ba8f # initialize rs2
czero.eqz x31, x25, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x29, 0xad15bc7b6d7c0a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0f6e9bd095c7e4b6 # initialize rs1
li x27, 0x2cbd563c3fcf2031 # initialize rs2
czero.eqz x29, x14, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x26, 0x14feb34f13aa8355 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x059fdd19c06fad05 # initialize rs1
li x28, 0x4986440f2146faed # initialize rs2
czero.eqz x26, x24, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x13, 0x43dd349417aade7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbf29ea0644aada8c # initialize rs1
li x29, 0x0f71369d3ac03886 # initialize rs2
czero.eqz x13, x9, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x13, 0xc3837b8ae684c87a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6d1022b72530dec3 # initialize rs1
li x30, 0x73c30c9f860993bc # initialize rs2
czero.eqz x13, x16, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x27, 0x7eeeb67f8575ce80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x02ca92c52743bd63 # initialize rs1
li x31, 0x0922e7fbf63fdeff # initialize rs2
czero.eqz x27, x30, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0xedd02124b3d8ba6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
li x0, 0x206d160a77ee92b3 # initialize rs2
czero.eqz x21, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0x84f8a9e47ff8ed6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
czero.eqz x29, x22, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0xba42b40f00702517 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
czero.eqz x28, x26, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0xfbfcf4e2cb504943 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x0, 0x9c2e0d6bc35c4e0a # initialize rs2
czero.eqz x2, x30, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0xac4a0db9a4a26652 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
czero.eqz x6, x18, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x18, 0x1c8c5461be9d068b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
czero.eqz x18, x26, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x4, 0x24607d90204592ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000002 # initialize rs1
li x0, 0xce70da0061cd6288 # initialize rs2
czero.eqz x4, x16, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x21, 0x0cde4f152254cf29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
czero.eqz x21, x24, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x29, 0x72f20c7feef11907 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
czero.eqz x29, x11, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x21, 0x6edecbb64be81bb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x0, 0x0b31d6af87216b23 # initialize rs2
czero.eqz x21, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x2, 0xcb696e4f7a2fbf13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
czero.eqz x2, x20, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x10, 0xd439ece518ddabd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
czero.eqz x10, x13, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x14, 0x34f30760e9cfaa9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
li x0, 0x61d335a4891cdb83 # initialize rs2
czero.eqz x14, x24, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x15, 0x160eca9eb92b2307 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
czero.eqz x15, x16, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x16, 0xabc42df53b751c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
czero.eqz x16, x7, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x15, 0x08fa372ef9bfb61d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs1
li x0, 0xa8df34c5c822a78e # initialize rs2
czero.eqz x15, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x7, 0xde05ac5266a203da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
czero.eqz x7, x13, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x20, 0x9509f63acf2e24d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
czero.eqz x20, x15, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x4, 0xab054abb5095cb04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffffffffffe # initialize rs1
li x0, 0xb55c01c7c532bd47 # initialize rs2
czero.eqz x4, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x15, 0x5c1f9a7ba11793ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
czero.eqz x15, x4, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x31, 0x3f83c627bacf7338 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
czero.eqz x31, x25, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x23, 0x3257bd1d5237ab47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x0, 0xfcd62db7840a15e8 # initialize rs2
czero.eqz x23, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x30, 0xc2540b529b7a8b2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
czero.eqz x30, x10, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x7, 0x6ad84dc984233f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
czero.eqz x7, x11, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x22, 0x755168dff724330e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffffffffffe # initialize rs1
li x0, 0xd59388a69a8aa683 # initialize rs2
czero.eqz x22, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x18, 0x44900c1353f63f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
czero.eqz x18, x20, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x20, 0x3d9ae8f81c8225ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
czero.eqz x20, x2, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x10, 0xcd491148d2d88d7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x0, 0xd075f13ea1100c72 # initialize rs2
czero.eqz x10, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x31, 0xc5e851344fc567fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x31, x21, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x9, 0xdf679ce01979eda7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x9, x28, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x3, 0x97fd29936fb1b1ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x0, 0xbc0d058d5cc75763 # initialize rs2
czero.eqz x3, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x30, 0x4cf01b4bd55e1a3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x30, x7, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x26, 0x09964701f42762a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x26, x3, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x5, 0x1f9ca80971d535a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5555555555555555 # initialize rs1
li x0, 0x05f17c09b2139ab9 # initialize rs2
czero.eqz x5, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x19, 0x7d6468e95c7a30ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5555555555555555 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
czero.eqz x19, x9, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x19, 0xffbb42386b5f11d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
czero.eqz x19, x1, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x31, 0x77f378f531374297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
li x0, 0x45511305d12efce8 # initialize rs2
czero.eqz x31, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x22, 0x606056b5e6463d39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
czero.eqz x22, x28, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x22, 0x53ba62da47cd55e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
czero.eqz x22, x3, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x15, 0xaa4f76384af9abb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
li x0, 0x812b54c247be5ce8 # initialize rs2
czero.eqz x15, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x18, 0x38b5ec39486f34c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
czero.eqz x18, x19, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x5, 0xd36fc60146cae31a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
czero.eqz x5, x1, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x6, 0x11eece15fc46d56d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x0, 0x33b983c431471012 # initialize rs2
czero.eqz x6, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x14, 0x09cb4c882370c0c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
czero.eqz x14, x20, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x11, 0xb86b09e78704085e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
czero.eqz x11, x29, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x1, 0xae7947d8be733cfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
li x0, 0x71077271de747e76 # initialize rs2
czero.eqz x1, x7, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x2, 0xd01a069204804b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
czero.eqz x2, x3, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x1, 0x406f9dad602fe6e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
czero.eqz x1, x14, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x92c3621af93cebbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x24, 0x05d177cca7fed38e # initialize rs2
czero.eqz x30, x4, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0xeee281ef8d55a1e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x29, 0xccbba5db53fa9f6d # initialize rs2
czero.eqz x30, x17, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0xc30d2df73c239b88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000002 # initialize rs1
li x25, 0xc1d4dca423309dd0 # initialize rs2
czero.eqz x12, x5, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x22, 0xae7e3641e44e57ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x25, 0xa8182659769b32d1 # initialize rs2
czero.eqz x22, x9, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x31, 0x5ccfb6508ec42e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000001 # initialize rs1
li x26, 0x23266ef62432cb93 # initialize rs2
czero.eqz x31, x2, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x27, 0x8af3ae898a0bb527 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs1
li x19, 0x744c7ac81e7c7203 # initialize rs2
czero.eqz x27, x1, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x7d3c35a03fcef292 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x5, 0x118e14b98559a343 # initialize rs2
czero.eqz x12, x2, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x16, 0x5edfe505a1d52ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x12, 0xff2941421127ca70 # initialize rs2
czero.eqz x16, x26, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x21, 0xe613a4a4d62a32b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffffffffffe # initialize rs1
li x11, 0x20300068f96a4c80 # initialize rs2
czero.eqz x21, x28, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x23, 0x149857309a341e28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x89ff918add8627c2 # initialize rs2
czero.eqz x23, x16, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xb7d330b87c2d5258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xa1d2c63a31dc1e27 # initialize rs2
czero.eqz x8, x20, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x8, 0xbfa9b184fec060b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
li x30, 0xa50ed6456953e2f4 # initialize rs2
czero.eqz x8, x10, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x16, 0x032e65f0337fda8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000ffffffff # initialize rs1
li x24, 0x0c0ed412aab6c56a # initialize rs2
czero.eqz x16, x17, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0x883e917f99f0750e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x28, 0xd9b40c8ead2b086a # initialize rs2
czero.eqz x2, x24, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0x0f233b5630050e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000000 # initialize rs1
li x10, 0xe48b7a5041f63e7d # initialize rs2
czero.eqz x14, x19, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x16, 0xed6d0935edde01e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x22, 0x478fb4fe17472673 # initialize rs2
czero.eqz x16, x18, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x6, 0x1da840438ffc19b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xbc4466640311bf0d # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
czero.eqz x6, x23, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x29, 0xc68043b374b3c5c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc03f7001ada918a4 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
czero.eqz x29, x12, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x17, 0xa49b9a48e4788e24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb5e5fd8f64ce3c46 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
czero.eqz x17, x10, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x31, 0x3500d2925d529b40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xcd7eea2d85fb654e # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
czero.eqz x31, x16, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x17, 0x92d799147f4c0488 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xac38e2a4c990b605 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
czero.eqz x17, x18, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0xf349cdb2710e1645 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xcd6c4b40c4c0eac3 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
czero.eqz x10, x22, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x11, 0x1abf12526c7d803f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x391b533eaf4904d9 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
czero.eqz x11, x19, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x27, 0xcf993fbca9c1bc7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd0f7ed3ed407d4cb # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
czero.eqz x27, x29, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x29, 0xcfcca6456e9cdd78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x046c1bbd36f53084 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
czero.eqz x29, x22, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x14, 0xe7a259f7876e0e90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x071785eeef204328 # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x14, x8, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0x530d749aff25c048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbf03f54689fb4195 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x1, x24, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x9, 0x985cc6f924a6632a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xddd7679769ac5947 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
czero.eqz x9, x24, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x7, 0xa3838036b86f9508 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa008fe3992d2b6e2 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
czero.eqz x7, x15, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x11, 0x6220e14c5821e795 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd13d9c67cfc087a9 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
czero.eqz x11, x14, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x15, 0xc26e3f62c0c3611b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x44de55283f216d39 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
czero.eqz x15, x5, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x22, 0x3087fd26a14a6c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x743b720f7ef8134c # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
czero.eqz x22, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0x74cd395b5afa6129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
czero.eqz x27, x20, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x24, 0x0228a40bf4b0b170 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
czero.eqz x24, x6, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x30, 0x2403c3b192f4c975 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
czero.eqz x30, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x2, 0x8bcb533a11378e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
czero.eqz x2, x23, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x19, 0x0f99d891ede6efea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
czero.eqz x19, x31, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x13, 0xd5c964f351004eb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
czero.eqz x13, x29, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x13, 0xd617032e9c71e627 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
czero.eqz x13, x12, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x27, 0xfd986f7a14e32cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
czero.eqz x27, x11, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x18, 0xe279ce9ea1e8afef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
czero.eqz x18, x24, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x4, 0x5e04a64041b44793 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x4, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x985060ffe5a3aeaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x23, x27, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x4, 0xf2055570f991179d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
czero.eqz x4, x11, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x13, 0x739e057684054e24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
czero.eqz x13, x12, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x5, 0x9616324c8a2ecfac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
czero.eqz x5, x18, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x18, 0x260585e24aa9a1e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
czero.eqz x18, x24, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x2, 0xaba6336ae508ec77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000000 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
czero.eqz x2, x30, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x3, 0x026671c4b2d1e892 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
czero.eqz x3, x22, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x28, 0x694dfd34055e3e43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
czero.eqz x28, x5, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x22, 0x90e891b5c0fb892a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
czero.eqz x22, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x7, 0xb309343f744bdc18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
czero.eqz x7, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x23, 0x3bf0d80aeb5c6e65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
czero.eqz x23, x1, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x30, 0x516751b3cf86f6f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000001 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
czero.eqz x30, x25, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x17, 0x7dd77aa52042b7d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
czero.eqz x17, x22, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x9, 0xf5d32267dc496380 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
czero.eqz x9, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x5, 0x4de18a18ec60ec1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
czero.eqz x5, x17, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x31, 0x15d93b828ecb47a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000001 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x31, x3, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0a5c43f81cf576b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x8, x5, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x28, 0x4c5a827a86d67cd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
czero.eqz x28, x12, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x3, 0x6e0aa6f3cdeae252 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
czero.eqz x3, x10, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x11, 0x9fc3655fb21200b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
czero.eqz x11, x1, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x22, 0x53a69fd8fea0f883 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
czero.eqz x22, x24, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x2, 0xb57abb598351fa9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
czero.eqz x2, x7, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x16, 0xe5f23d6992aed65c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
czero.eqz x16, x1, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x11, 0xf62185126c18524a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
czero.eqz x11, x29, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x22, 0xa52d5ba2bc4751b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
czero.eqz x22, x10, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x24, 0x8d39d0c186be2ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000002 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
czero.eqz x24, x5, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x25, 0x75aa5a26e6662ae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
czero.eqz x25, x11, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x27, 0xf2e2169ef2478453 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
czero.eqz x27, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x5, 0xff50a6099f843e64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
czero.eqz x5, x25, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x19, 0x2b09889d5a02b501 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
czero.eqz x19, x8, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x5, 0xe0159f469d173173 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
czero.eqz x5, x26, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x5, 0xf9ae1273c7e723b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x5, x12, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0xe8d3956b5c73ae65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x31, x14, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x25, 0xea3bd8d3dbf4c91a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
czero.eqz x25, x19, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x3, 0xefec248cc530b5a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
czero.eqz x3, x22, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x20, 0xb3bb652ea3e9b0f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
czero.eqz x20, x9, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x24, 0xe1d64a5e3f7f6efb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
czero.eqz x24, x22, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x15, 0x3ed051d8cfcf2b60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
czero.eqz x15, x4, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x28, 0xf5e2f9ebc8ac9dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
czero.eqz x28, x26, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x8, 0x47fe4e09be3f3897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
czero.eqz x8, x9, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x21, 0xc4215949ab8dd6d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
czero.eqz x21, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x24, 0x1aefdd8caea1c370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
czero.eqz x24, x17, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x10, 0x634213b6af731250 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
czero.eqz x10, x25, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x11, 0x5d7312dae3db4506 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
czero.eqz x11, x3, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x2, 0xf7c4dfa0856c8468 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
czero.eqz x2, x13, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x30, 0x22121d68235a07ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000000 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
czero.eqz x30, x5, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x10, 0xcfc8f036dd19394d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
czero.eqz x10, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x27, 0xe9206a5a53e200a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x27, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xc7e683a351edb504 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x22, x30, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x13, 0x6b58200d6075e1c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000000 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
czero.eqz x13, x5, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x6, 0xd821c81876db8946 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
czero.eqz x6, x31, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x8, 0x8312bf5e74d44254 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000000 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
czero.eqz x8, x25, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x27, 0xec602de975d50b81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
czero.eqz x27, x12, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x18, 0x4dc24991a474af91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
czero.eqz x18, x14, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x8, 0x4651bf1303d4b1a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
czero.eqz x8, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x17, 0x9c5016eb763390ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
czero.eqz x17, x15, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x17, 0xc33b461f6f71ab4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
czero.eqz x17, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x21, 0xecba4130522d747b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
czero.eqz x21, x29, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x28, 0xa5c334f91d03598c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
czero.eqz x28, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x16, 0xd7dd40a2cb80c674 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
czero.eqz x16, x23, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x20, 0x2ac502fc12963d0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
czero.eqz x20, x24, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x9, 0x29272209733e0468 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
czero.eqz x9, x11, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x23, 0x086b543e1d9697c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
czero.eqz x23, x14, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x14, 0x3d10746a737506ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000001 # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x14, x5, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xfe93e37430cbff75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000001 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x21, x22, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x1, 0x7edd72054d49c8db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
czero.eqz x1, x10, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x20, 0xcc7e47b28a863ed6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
czero.eqz x20, x3, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x28, 0xf777fbb1b69839ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
czero.eqz x28, x21, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x12, 0x1c4ccf3251e83731 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
czero.eqz x12, x24, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x30, 0x74b0bc03d3e9d74c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
czero.eqz x30, x6, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x12, 0x37789fed90bae1c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
czero.eqz x12, x2, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x30, 0x69963ee0ace01463 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
czero.eqz x30, x10, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x25, 0xa2a7e8df1cc83281 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
czero.eqz x25, x16, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x13, 0xf8c3f4dc5cf78aed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
czero.eqz x13, x2, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x12, 0x3ea196508bb44cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
czero.eqz x12, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x5, 0xc74533e72cac3b93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
czero.eqz x5, x31, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x31, 0xdcd12ee9d4915195 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffffffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
czero.eqz x31, x5, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x14, 0x20bcdffd761439ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
czero.eqz x14, x10, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x23, 0xe3a5664320aaeec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
czero.eqz x23, x24, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x7, 0x6a7d704dd22a5c41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x7, x4, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x034ab260d26cdad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x8, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x13, 0x6b7b7a471679f427 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
czero.eqz x13, x31, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x29, 0x6559d55a093cee34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
czero.eqz x29, x4, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x19, 0x18d168438f7d05cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
czero.eqz x19, x24, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x12, 0x60887dbe2a5a03be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
czero.eqz x12, x9, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x19, 0xe9a8602eaac04c04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
czero.eqz x19, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x29, 0x21292bac441b5e46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
czero.eqz x29, x30, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x1, 0x307dad3d93600a99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
czero.eqz x1, x28, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x19, 0x00c2011b15132730 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
czero.eqz x19, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x11, 0x9f5cacc5f2ddf7eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffffffffffe # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
czero.eqz x11, x19, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x9, 0x1c1b7c82686b76d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
czero.eqz x9, x16, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x23, 0xf1f9ca7e2c0bf4cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
czero.eqz x23, x31, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x12, 0x7a8bb5ef9b756c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
czero.eqz x12, x23, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x18, 0xab1ff3b3a6ecdfdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
czero.eqz x18, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x3, 0x768f090fa3fb47ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
czero.eqz x3, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x9, 0x1b90c9bc3d29240e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x9, x23, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x33e3a541ce70fc04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x31, x29, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x6, 0x6daaf4d4636dad99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
czero.eqz x6, x14, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x29, 0xb3f3cafb6999adff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
czero.eqz x29, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x31, 0x07fd4777647d7a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
czero.eqz x31, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x12, 0xcf0a3f71905b0fc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
czero.eqz x12, x5, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x6, 0x018e22cdae3febfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
czero.eqz x6, x9, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x12, 0x4b00af1a172c2353 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
czero.eqz x12, x25, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x14, 0x7f914f4ae5a69106 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
czero.eqz x14, x5, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x29, 0x6f1497c55651f3b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
czero.eqz x29, x3, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x19, 0xbb39506b88790ced # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
czero.eqz x19, x20, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x22, 0x9ac1e2fa35abb7d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
czero.eqz x22, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x11, 0x5a38ebcadff88b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
czero.eqz x11, x24, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x5, 0x397f1582d852d3cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
czero.eqz x5, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x17, 0x525568585d800b2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
czero.eqz x17, x9, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x24, 0xd714c9c6235af10e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
czero.eqz x24, x17, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x2, 0x9534ef0158800d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x2, x7, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0c0c0723074145f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x31, x5, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x14, 0x70fd2370a2e245e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
czero.eqz x14, x2, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x6, 0x5c367a90d2a0508c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
czero.eqz x6, x29, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x24, 0x779127e9f112518d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
czero.eqz x24, x12, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x25, 0xf2284e0b0724264c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
czero.eqz x25, x29, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x10, 0xf28a6e019826e812 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
czero.eqz x10, x9, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x20, 0x73abb548b5cf260e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
czero.eqz x20, x24, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x22, 0xfe6b679a9162f8ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
czero.eqz x22, x3, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x21, 0x984012b8d1fd112d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
czero.eqz x21, x14, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x22, 0xb574838eac120057 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffffffffffe # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
czero.eqz x22, x31, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x18, 0xd1e62678e50e3ccd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
czero.eqz x18, x6, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x29, 0xc9264c7acc52dafe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffffffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
czero.eqz x29, x17, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0xd984511beaddf246 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
czero.eqz x27, x24, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x9, 0xa5b2649be9e88401 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
czero.eqz x9, x29, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x15, 0xb0d8b9c179b500f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
czero.eqz x15, x8, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x10, 0xc82848a8fdc9281c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x10, x29, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0xe2e2783a5ff80ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x17, x14, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x25, 0x4c528ad66a87216e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffffffffffe # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
czero.eqz x25, x2, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x30, 0xebfd751334b734f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffffffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
czero.eqz x30, x26, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x10, 0x86485f380a162e33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
czero.eqz x10, x9, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x27, 0x009b1df93614fa1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
czero.eqz x27, x9, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x5, 0x7c82beb484c0e917 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
czero.eqz x5, x15, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x16, 0x674a9e214abeb326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
czero.eqz x16, x4, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x21, 0xe48028fc3135017b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
czero.eqz x21, x5, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x22, 0xd576e5f2b5ea3c7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc887763ae86f7 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
czero.eqz x22, x3, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x19, 0x1320a7dacfb6954a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
czero.eqz x19, x4, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x13, 0xe396a2d4353ef2aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
czero.eqz x13, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x26, 0x07aa5156d2aab869 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
czero.eqz x26, x11, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x21, 0x25c42e6cefb79d8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
czero.eqz x21, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x27, 0x30cc0bcd54e20e51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
czero.eqz x27, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x11, 0x9ed1c5ad0c5930ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
czero.eqz x11, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x25, 0xb6fda1a6150786c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x25, x22, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x84cbb4e91a6de9d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x22, x6, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x20, 0x47be2a29b1ec81a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
czero.eqz x20, x27, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x15, 0x70a7a01d2e744bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
czero.eqz x15, x12, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x20, 0xaa58d27ac8092824 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
czero.eqz x20, x12, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x25, 0x7ad7e9562e5d8ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
czero.eqz x25, x27, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x27, 0x3644f056954e8b52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
czero.eqz x27, x19, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x25, 0x1fc94ebed3b12299 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
czero.eqz x25, x31, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x23, 0xdc725b0ed18c3a4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
czero.eqz x23, x22, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x12, 0xf0c9537b36406d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
czero.eqz x12, x20, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x10, 0x04113926c5254dc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
czero.eqz x10, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x25, 0xd0dd4b8cf56e5224 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
czero.eqz x25, x31, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x24, 0x8a993671815bf17b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
czero.eqz x24, x25, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x20, 0x703dd108146cc2a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
czero.eqz x20, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x28, 0xb5af8b9cb103b77a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
czero.eqz x28, x30, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x30, 0x98eaa7495baaf488 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
czero.eqz x30, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x31, 0x6b54f9fbee4f2a56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x31, x16, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x064d5977b7af7c75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x31, x5, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x19, 0xa5771885b59f38fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
czero.eqz x19, x11, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x22, 0x1ce6c9b97f66775e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
czero.eqz x22, x2, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x14, 0x21d86d121ec8f466 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
czero.eqz x14, x2, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x15, 0xa536237460674d37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
czero.eqz x15, x17, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x8, 0x33092a8e3eb94ccd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
czero.eqz x8, x4, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x3, 0x0e223b761c976dbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
czero.eqz x3, x22, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x8, 0xf560311857986c1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
czero.eqz x8, x10, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x26, 0xa31b74d0746bc4c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
czero.eqz x26, x8, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x26, 0x0523712e6a27e455 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
czero.eqz x26, x15, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x22, 0xf2403eeaed6fc46a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
czero.eqz x22, x13, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x16, 0x84202be7d6374e52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
czero.eqz x16, x24, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x22, 0xbf26ec75418e1dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5555555555555555 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
czero.eqz x22, x9, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x6, 0x59cadac9a96a2c5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
czero.eqz x6, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x28, 0x01b8ce66170652c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5555555555555555 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
czero.eqz x28, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x2, 0x01ebab2a2b4712f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5555555555555555 # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x2, x29, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0xb2b6f04260577bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x4, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x6, 0x72b248aae1a1e7ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
czero.eqz x6, x16, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x22, 0x38d82e4a5e7f6ecb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
czero.eqz x22, x26, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x2, 0x416115890c1a29b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
czero.eqz x2, x18, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x5, 0x74e756ca20e843fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
czero.eqz x5, x24, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x11, 0x338c8c92bd73d4f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5555555555555555 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
czero.eqz x11, x29, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x2, 0x45a3c497bd7a82ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
czero.eqz x2, x7, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x10, 0x4fe2694a41cc986c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
czero.eqz x10, x7, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x9, 0x0295e335e0c53c8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
czero.eqz x9, x3, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x29, 0xc787f6427251e054 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
czero.eqz x29, x15, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x12, 0x4c2b57f9f317d733 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
czero.eqz x12, x20, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x20, 0x34728498062ad485 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
czero.eqz x20, x24, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x5, 0xaec4da769170f894 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000ffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
czero.eqz x5, x22, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x17, 0x7da7a4d609d48f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
czero.eqz x17, x3, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x22, 0x94db18942a9b1b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
czero.eqz x22, x29, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x19, 0x9974ddb09825af72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x19, x31, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x2ae7a16086da77af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000ffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x6, x2, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x7, 0x1a48fb5c7ac9585b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000ffffffff # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
czero.eqz x7, x28, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x2, 0xee62f6ee5d6679d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
czero.eqz x2, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0x66ba800beef15a20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
czero.eqz x20, x14, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x20, 0x830967e691a025b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
czero.eqz x20, x2, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x28, 0x5c81057aaac42cfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
czero.eqz x28, x1, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x13, 0xc88cabb59a7c8e5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
czero.eqz x13, x17, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x3, 0xa6e24fc8a29bb404 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
czero.eqz x3, x19, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x13, 0x0910368c42a11ec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
czero.eqz x13, x12, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x11, 0x512c3539427ee0bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
czero.eqz x11, x7, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x26, 0x5133671d49830b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
czero.eqz x26, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x13, 0x9db8b3fcc6d209ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
czero.eqz x13, x7, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0x582d342a1bdfd48e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
czero.eqz x19, x15, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x26, 0x6bb0e1387a50aed6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
czero.eqz x26, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x22, 0xf9977e3051deddee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
czero.eqz x22, x12, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x26, 0x0f51d2bd2777eab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000fffffffe # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x26, x22, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x6faa05b08778bae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x28, x1, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x21, 0xab99455ae9e38382 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
czero.eqz x21, x14, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x22, 0xffa001bd17c28204 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
czero.eqz x22, x21, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x11, 0x57caaf5aa7421b24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
czero.eqz x11, x14, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x19, 0xecb70b9bc32c593e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
czero.eqz x19, x1, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x26, 0x4921ca90ac8dacb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
czero.eqz x26, x25, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x28, 0xe990bb8d4e069214 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
czero.eqz x28, x19, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x21, 0x2dc5d325645b36aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000000 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
czero.eqz x21, x3, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x26, 0x7f8547b197cb8ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
czero.eqz x26, x22, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x3, 0x034aa3fbcaa0deeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
czero.eqz x3, x16, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x23, 0x3ef3e70c716ac83e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
czero.eqz x23, x22, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x6, 0x11b620b30f1e949f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
czero.eqz x6, x17, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x24, 0xc8bb63fc29457563 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
czero.eqz x24, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x29, 0xc61d1a3429964b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
czero.eqz x29, x10, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x16, 0x6a57897a1bf5fef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
czero.eqz x16, x17, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x15, 0x6993f200954d1665 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x15, x27, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x4ad1273412be1d8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x29, x10, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x5, 0xe42778e24eda16be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
czero.eqz x5, x18, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x12, 0x022917e690906f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
czero.eqz x12, x20, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x1, 0x7883c3af373431b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
czero.eqz x1, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x21, 0x1f147aa85b16d706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
czero.eqz x21, x6, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x31, 0x0501b6d95e029510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
czero.eqz x31, x30, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x28, 0x1cc720447c7e4974 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
czero.eqz x28, x22, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x26, 0xf895b71c18342135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
czero.eqz x26, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x25, 0x08921b6f36e5f40b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
czero.eqz x25, x26, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x9, 0xfa0e22a44c6aa72f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
czero.eqz x9, x23, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x14, 0x870b22e60eb99739 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
czero.eqz x14, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x28, 0x6ed9dfbc549a9eff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
czero.eqz x28, x26, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x6, 0xed99156e5b28c2da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000001 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
czero.eqz x6, x2, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x18, 0xa88a29fbf93a0a45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
czero.eqz x18, x14, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x2, 0x98a2aa4fa37bbee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
czero.eqz x2, x27, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x4, 0xf37983affc4a323a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
czero.eqz x4, x27, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x9d8db40ee9794750 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x6, x27, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x16, 0x38529127cd06eed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
czero.eqz x16, x24, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x23, 0x12294090c61eea86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
czero.eqz x23, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x17, 0x9056abb1e0521b04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
czero.eqz x17, x4, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x17, 0xa1ad17000e6576bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
czero.eqz x17, x15, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x19, 0xd951ec1d2b246e03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
czero.eqz x19, x16, x10 # perform operation

.EQU NUMTESTS,1



self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
