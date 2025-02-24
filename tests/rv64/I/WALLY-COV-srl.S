///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-srl.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.509205
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x77b9b9de6b9e170c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe5ffea3f57697884 # initialize rs1
li x22, 0x51cf1a37d06ac779 # initialize rs2
srl x0, x31, x22 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x788df7aca4470a49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xba07bae255daa343 # initialize rs1
li x23, 0xebc71bf17358955f # initialize rs2
srl x1, x3, x23 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x4256096f99ab8854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x521e43f785e0465e # initialize rs1
li x18, 0xb8957e7e889b7751 # initialize rs2
srl x2, x14, x18 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x82e7c616a284df5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6eb69a539214d1d0 # initialize rs1
li x4, 0x797f627865c97581 # initialize rs2
srl x3, x2, x4 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x4bccbc069e864573 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x629d4457602f3d40 # initialize rs1
li x6, 0xd47272311bb30c64 # initialize rs2
srl x4, x12, x6 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x319b7e4087877197 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6db03dcebaed32df # initialize rs1
li x8, 0x040da2f60a8cc569 # initialize rs2
srl x5, x26, x8 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x8ebb3f80b227b847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe608e153a6369285 # initialize rs1
li x18, 0x26b149fc1d563ce2 # initialize rs2
srl x6, x24, x18 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x439501f61d0f5556 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe0a276235dbf1d17 # initialize rs1
li x21, 0x12ee84ee58ba371e # initialize rs2
srl x7, x23, x21 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x102e6882760ef7f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x14311c63e1a0e27b # initialize rs1
li x6, 0xe21621b252ee4bb8 # initialize rs2
srl x8, x23, x6 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x94c1f5a829ef7a89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2b472c762349c400 # initialize rs1
li x11, 0x123e11962fdc9050 # initialize rs2
srl x9, x5, x11 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x6b4f9796a7d57838 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf8226d7e0cb7bc91 # initialize rs1
li x22, 0x057598602515a071 # initialize rs2
srl x10, x25, x22 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x50a7c2d5d2464ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x20f945c1a555391f # initialize rs1
li x11, 0x3d2d32893a857f0c # initialize rs2
srl x11, x18, x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x6cb40957b490df5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xeb5ed9b750a771f2 # initialize rs1
li x16, 0x4c691f3347e06b2d # initialize rs2
srl x12, x23, x16 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x5f40a700c8e1ad3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe1ba4030c90e2f20 # initialize rs1
li x6, 0xb88b36ec5d595066 # initialize rs2
srl x13, x31, x6 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x7160d956938bf7a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x53ee3cf918a49589 # initialize rs1
li x19, 0x902ef287ec18242e # initialize rs2
srl x14, x25, x19 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x1888a07d17341c73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xefb3a3b0a45757f6 # initialize rs1
li x13, 0x384525ebb5df79b4 # initialize rs2
srl x15, x9, x13 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd56d8ddfb2701e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x71c42362604361cd # initialize rs1
li x19, 0x1ff9e5e906069901 # initialize rs2
srl x16, x12, x19 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x10c61e88bb4ea4f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xde0af38690686c85 # initialize rs1
li x6, 0x9d8326acd6449c60 # initialize rs2
srl x17, x11, x6 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x6b963a931249ac40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1a38211ff0834aaf # initialize rs1
li x19, 0x33a35f09023cd2cf # initialize rs2
srl x18, x14, x19 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xee75c9d3a610c808 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x12c8deaef290ea82 # initialize rs1
li x6, 0x546179632636f94e # initialize rs2
srl x19, x22, x6 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x461411c5350a9ace # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7a37dadd433eec07 # initialize rs1
li x4, 0x526c8f87867eba5f # initialize rs2
srl x20, x2, x4 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xd84f8341a146ffa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x029c6e5bd9402f96 # initialize rs1
li x20, 0x7f1e36a2225c9437 # initialize rs2
srl x21, x14, x20 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x1a6f66b5c5a7999e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0916f8a7c509ba08 # initialize rs1
li x7, 0x80faaff3d320df89 # initialize rs2
srl x22, x19, x7 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x21ef4d129c528d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x16ce4297623407eb # initialize rs1
li x8, 0x3765dd48e0b2ea22 # initialize rs2
srl x23, x15, x8 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x1dae92bee78bac4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb9020059e46ebf70 # initialize rs1
li x1, 0xbbce44a6666df48d # initialize rs2
srl x24, x24, x1 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xdd7d0bc3a71a5c35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7816b5a1ddf52b64 # initialize rs1
li x10, 0xfa762337ce2c2f80 # initialize rs2
srl x25, x9, x10 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x63cda06bfb7b7a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6927c4a0b1a34e2d # initialize rs1
li x10, 0x6d9a717582c2f275 # initialize rs2
srl x26, x15, x10 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xe93d1cff02b8efc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x22e8e686b26a17a7 # initialize rs1
li x14, 0x06c6787ccf1ad3df # initialize rs2
srl x27, x22, x14 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x29e828db344acea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5be42a2fc222d64e # initialize rs1
li x27, 0x4de4c8bda4b28237 # initialize rs2
srl x28, x9, x27 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xa85cd2455b98e9d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x820f720ca248ceaf # initialize rs1
li x21, 0x914668fa8031a6ac # initialize rs2
srl x29, x7, x21 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xb2e4d165bac4ee15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xff1947dedd6cd4c1 # initialize rs1
li x1, 0x3478aa7aef874fb6 # initialize rs2
srl x30, x26, x1 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x16ed20715d6931c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8d8055758e1f3bc2 # initialize rs1
li x17, 0x0f412c17e99b195c # initialize rs2
srl x31, x14, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x17, 0x02b78dadfe027b35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x36c6f35d3b873420 # initialize rs1
li x26, 0xde91b48b1c07462d # initialize rs2
srl x17, x0, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x13, 0x99a6049aa87f0a38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x124d1d0968f241cc # initialize rs1
li x2, 0x52716a744588598f # initialize rs2
srl x13, x1, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x21, 0xb86272142c0b2b55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x29cfdfbb46ae3bee # initialize rs1
li x20, 0xab0cb51afacd2ad5 # initialize rs2
srl x21, x2, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x18, 0x9d1861e9df9ae32b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x226f5d187fa99421 # initialize rs1
li x27, 0xbe7caa5615bf2d00 # initialize rs2
srl x18, x3, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x1, 0xaad8260539a64a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x078b581b6a4b7ed6 # initialize rs1
li x10, 0xc44530fd5c1e0bfa # initialize rs2
srl x1, x4, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x8, 0xe9fd389e7259cbd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc4c18f7dd8ac7998 # initialize rs1
li x4, 0x909adb0417f56ada # initialize rs2
srl x8, x5, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x13, 0x236b887fc6a3c114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe06258a05f483bc0 # initialize rs1
li x22, 0xd753a05e66ed676b # initialize rs2
srl x13, x6, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x28, 0xaf5636c551a51794 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa4c045226f2c0014 # initialize rs1
li x19, 0xa49fcc5fecfc4218 # initialize rs2
srl x28, x7, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x14, 0x01a6989b1f45dfa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9522aa0ca473c3ba # initialize rs1
li x1, 0x8461ee304fb47f73 # initialize rs2
srl x14, x8, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x23, 0xb3ae4e04a45285a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdc0db1322b4a7254 # initialize rs1
li x6, 0xffdd9ec10f2694cb # initialize rs2
srl x23, x9, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0x2c253c6fb2cfcce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x484e7952ebaa770b # initialize rs1
li x4, 0x23a1c9aab1bb4bf2 # initialize rs2
srl x15, x10, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x25, 0xaa95471a5450619f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf732624d14e95dce # initialize rs1
li x15, 0x9f02c1d5da0b3cfc # initialize rs2
srl x25, x11, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x6, 0xf40c455c71eb66de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4473b6aad34c8040 # initialize rs1
li x8, 0x129872f3bafdfff4 # initialize rs2
srl x6, x12, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x16, 0x9dedeee8c8297b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x499ca1ed5677285e # initialize rs1
li x22, 0x09ea910588f18489 # initialize rs2
srl x16, x13, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x28, 0x182bd44328937043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc2b462983571af28 # initialize rs1
li x29, 0x28f225c9bf661a16 # initialize rs2
srl x28, x14, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x25, 0x87d8ae4fea348f97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x22c111fb76bcac45 # initialize rs1
li x4, 0x0149b6045b8bb277 # initialize rs2
srl x25, x15, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x28, 0x01d36ba8039cf0f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc9f0111df12ebd3a # initialize rs1
li x5, 0x3777dd9f38fb5b0f # initialize rs2
srl x28, x16, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x26, 0x82491a6227937d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdb63b04ed158dce7 # initialize rs1
li x11, 0x4d32b82edb863302 # initialize rs2
srl x26, x17, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x8, 0x4dedeadd90bd2279 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcff9b7ad32cc02ca # initialize rs1
li x6, 0x85d52bb41d493bff # initialize rs2
srl x8, x18, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x25, 0x462f406156ead0da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf112815bb481d340 # initialize rs1
li x20, 0x9ca65e532bed740e # initialize rs2
srl x25, x19, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x18, 0x533622904d4ba6a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6c417d5c77ba990f # initialize rs1
li x21, 0xc5763ef4777edce1 # initialize rs2
srl x18, x20, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x7, 0x6a5a488c608f989c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xed07dd817949341e # initialize rs1
li x2, 0x333dedcaf6ee12bf # initialize rs2
srl x7, x21, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x6, 0x0411af1d261c0615 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2ebda15d6625479a # initialize rs1
li x3, 0x78a2325bb4a94652 # initialize rs2
srl x6, x22, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x28, 0x238b9148d9fecf37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x163b6def6aca1c21 # initialize rs1
li x5, 0xe892decfcd469a9a # initialize rs2
srl x28, x23, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x20, 0x1b38200121bf4437 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5cb6e4fea41588ab # initialize rs1
li x27, 0xea4f63c5dd2187bf # initialize rs2
srl x20, x24, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x3, 0x9526ea54c69c8bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8d97d3ab9f6dae2a # initialize rs1
li x2, 0xb070622dc56622c2 # initialize rs2
srl x3, x25, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x9, 0x7dcc25e0ae2b0fac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3ac411aafcfddf26 # initialize rs1
li x22, 0xaff48c0877291e6c # initialize rs2
srl x9, x26, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x20, 0xe267faeb5082a926 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x52c8a01e5b89602e # initialize rs1
li x22, 0x15f36a7cf2735b40 # initialize rs2
srl x20, x27, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x6, 0x58f3a44ceaee09f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc6f926b22d5be85f # initialize rs1
li x13, 0x62185c600e4eb2bb # initialize rs2
srl x6, x28, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x11, 0x3af7d3262f570003 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x24e0048600c2b75a # initialize rs1
li x25, 0xc1660acdbdf1f556 # initialize rs2
srl x11, x29, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x29, 0x0457b88589324007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdecc9e778079e477 # initialize rs1
li x5, 0x9dbc854dc976ac8d # initialize rs2
srl x29, x30, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x26, 0x52f9569871250214 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xde5febf4773c6076 # initialize rs1
li x25, 0x71f150be1d10b6d5 # initialize rs2
srl x26, x31, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x16, 0x9fc6c9d304de0bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x245703e9997bc896 # initialize rs1
li x0, 0x84df45e401a0c80a # initialize rs2
srl x16, x3, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x11, 0x30e0fd63dcb89502 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x568b7e9c64e6f166 # initialize rs1
li x1, 0xf2830fc0124e0d8e # initialize rs2
srl x11, x2, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x23, 0x0dbdf0f9f1cd82b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd626aad6433bd0b1 # initialize rs1
li x2, 0x3606a6ba7c26db60 # initialize rs2
srl x23, x30, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x25, 0x0e653c78b060b745 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x762995c2b50af139 # initialize rs1
li x3, 0x7d4bddd333ac2fea # initialize rs2
srl x25, x21, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x1, 0x5bfb0b50256694d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb6a0cd67a4f3eff8 # initialize rs1
li x4, 0x2fe36eb47de5dd5a # initialize rs2
srl x1, x16, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x13, 0x735d0b6c80f18878 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0b62d08f3e0b65ab # initialize rs1
li x5, 0xf332dc9b107cc8a7 # initialize rs2
srl x13, x22, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x25, 0x0e9dbeb3dfc4284e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xff0f8c72b651b0a7 # initialize rs1
li x6, 0x690e1b0777f4048b # initialize rs2
srl x25, x26, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x3, 0x20b7499eac6cdeeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa0f228f08f949457 # initialize rs1
li x7, 0x16af5b4a154442b2 # initialize rs2
srl x3, x16, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0x17304f09cea9bf9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x845aed809a365274 # initialize rs1
li x8, 0xee2d6c953078c359 # initialize rs2
srl x24, x3, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x15, 0xfec0a696be460577 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0d6477cd14cf10f2 # initialize rs1
li x9, 0x301b9f9f54b14875 # initialize rs2
srl x15, x19, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x2, 0x8fa4f1aca74a7011 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2724bd4256b8d751 # initialize rs1
li x10, 0x8d16ae9dc3453eea # initialize rs2
srl x2, x2, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x24, 0x8c74afc7a9384f9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfdc210272d6077a7 # initialize rs1
li x11, 0x848aa4e777915b94 # initialize rs2
srl x24, x28, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x28, 0xbe1767fbad97f4f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb5937e1c52d9be0c # initialize rs1
li x12, 0x0ccee11339a23775 # initialize rs2
srl x28, x22, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x14, 0x2a85bfe5db1269c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb0eee0719e4d3d7b # initialize rs1
li x13, 0xa33656ac440a4eee # initialize rs2
srl x14, x17, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x18, 0x7d41c11116bd1a4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5235d38763d3627f # initialize rs1
li x14, 0xa2818adb54018972 # initialize rs2
srl x18, x8, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x3, 0xc07b358fa83227de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xbd594204371ba9a6 # initialize rs1
li x15, 0x08db835413d3abef # initialize rs2
srl x3, x2, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x18, 0x35d1693ec7867e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x33653c4fece13942 # initialize rs1
li x16, 0x66bf3fee0a2934e7 # initialize rs2
srl x18, x6, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x20, 0x475a0dc9518dec16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3ca4bfeadcbf50c3 # initialize rs1
li x17, 0x2a5f0b53ae965128 # initialize rs2
srl x20, x19, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x31, 0x7cd13e827a095aeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf36004cb2f119b8f # initialize rs1
li x18, 0x8b5afcb202750b45 # initialize rs2
srl x31, x25, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x6, 0xb9e163f668968742 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb700986b6cae82b6 # initialize rs1
li x19, 0xcc58e1dae6cf9e34 # initialize rs2
srl x6, x8, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x3, 0x885656d8bb93c800 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd0ceeb2d72550fe4 # initialize rs1
li x20, 0xe8f2a43a90fd6e1c # initialize rs2
srl x3, x18, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x23, 0x20e0828c663f43ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xcb7f1fc026a8a0b9 # initialize rs1
li x21, 0xb387c8e15b261e26 # initialize rs2
srl x23, x10, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x27, 0xdb1bb294f36e251a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6c693e1deea39382 # initialize rs1
li x22, 0xd96589bdbaf0c971 # initialize rs2
srl x27, x14, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x13, 0x63746772965d5360 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6ae935ca0fba6d29 # initialize rs1
li x23, 0xa9fb3a0a8e7a46d0 # initialize rs2
srl x13, x15, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x17, 0xbffcbcffe662fb19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7dfb0cd8549a16e6 # initialize rs1
li x24, 0xd771386ff45548ca # initialize rs2
srl x17, x30, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x5, 0x44e4658e7763c260 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3ff7aee9505d0aa5 # initialize rs1
li x25, 0x94003e49d1d29eae # initialize rs2
srl x5, x14, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x11, 0xc59f9f2848c57a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x766c38e4861fbea2 # initialize rs1
li x26, 0x2e1579f118681bda # initialize rs2
srl x11, x22, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x2, 0x59afa287fbac1209 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x17c1d72dd34ae357 # initialize rs1
li x27, 0xd36e676d260b80b7 # initialize rs2
srl x2, x22, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x22, 0x83cb0b29544aefa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa4568f3fd467a12f # initialize rs1
li x28, 0x89e2bba30e7979e1 # initialize rs2
srl x22, x12, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x7, 0xfc6bca360b6c59a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9f097f9f17b7d6be # initialize rs1
li x29, 0xba5542a7c1843d87 # initialize rs2
srl x7, x12, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x4, 0x4d9ad8dc0e65233a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x64353e6982ad07de # initialize rs1
li x30, 0xc8a5a51ef004f776 # initialize rs2
srl x4, x7, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x8, 0xcfc7e294bd682227 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x35f3b59abe0b3ca7 # initialize rs1
li x31, 0x75bfea21420ecb78 # initialize rs2
srl x8, x20, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x5ac35e618465664e)
li x14, 0xb0bec2297ed877f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb0bec2297ed877f1 # initialize rs1
li x0, 0x486d903ddbd682f2 # initialize rs2
srl x14, x23, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x1b1df7692d6a2e8b)
li x24, 0x1b1df7692d6a2e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1b1df7692d6a2e8b # initialize rs1
li x31, 0x1b1df7692d6a2e8b # initialize rs2
srl x24, x0, x31 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xdc5cfe2ffc6a5433)
li x24, 0xfcecdc6b9e6100e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdc5cfe2ffc6a5433 # initialize rs1
li x9, 0xdc5cfe2ffc6a5433 # initialize rs2
srl x24, x13, x9 # perform operation

# Testcase cmp_gpr_hazard raw test
srl x3, x23, x16 # perform first operation
srl x19, x3, x8 # perform second operation

# Testcase cmp_gpr_hazard raw test
srl x12, x27, x24 # perform first operation
srl x12, x5, x12 # perform second operation

# Testcase cmp_gpr_hazard waw test
srl x25, x5, x9 # perform first operation
srl x25, x7, x1 # perform second operation

# Testcase cmp_gpr_hazard waw test
srl x27, x21, x30 # perform first operation
srl x27, x23, x2 # perform second operation

# Testcase cmp_gpr_hazard war test
srl x10, x6, x25 # perform first operation
srl x6, x15, x8 # perform second operation

# Testcase cmp_gpr_hazard war test
srl x7, x28, x5 # perform first operation
srl x5, x30, x22 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x23, 0x85f31cb2d4ef465c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x0, 0xa2f548af24672976 # initialize rs2
srl x23, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x2, 0xdfa80fea9f6ec808 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
srl x2, x3, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0x1db2a04e18c5a3b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
srl x10, x12, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0x7e9114136ceacce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x0, 0xefed7ba5e9bff69b # initialize rs2
srl x26, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x10, 0x3f40987addca0258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
srl x10, x19, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0x2f7cb97200faf265 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
srl x6, x3, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0x7e33fb890c817027 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x0, 0x39922f4604393df7 # initialize rs2
srl x10, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x15, 0xd5a50f99e13deaaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
srl x15, x17, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x7, 0x57001e0746791c09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
srl x7, x27, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x23, 0xe13978c79bd4bc59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x0, 0xdfbe87ce0cbdfdaa # initialize rs2
srl x23, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x6, 0x5c598bb8b1ab4ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
srl x6, x24, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x29, 0x4bac0f01562a67b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
srl x29, x28, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x30, 0x174069a29c994ed1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x0, 0xa185fc9458db1cc4 # initialize rs2
srl x30, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x15, 0x1ce9b13ef78820a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
srl x15, x4, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x25, 0x87196623aa367881 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
srl x25, x24, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x16, 0x8099a89d87ee60da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x0, 0x80ee19ff3a6dddda # initialize rs2
srl x16, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x13, 0xd7da501ff20fb001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffffffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
srl x13, x5, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x14, 0x01828f425755d4bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
srl x14, x5, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x27, 0x3de3f432656623a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffffffffffe # initialize rs1
li x0, 0x7ba5c3534f142327 # initialize rs2
srl x27, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x11, 0x85264dca16aab054 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
srl x11, x4, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x12, 0x41eab822ee386f9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
srl x12, x18, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x3, 0xd5e63d6ef330a71a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x0, 0x32f1ee5267c6060a # initialize rs2
srl x3, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x17, 0x5c68d0a95823be0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
srl x17, x26, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x14, 0x55fcdee6ea941916 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
srl x14, x5, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x26, 0x952bd4ca3f5aa7e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffffffffffe # initialize rs1
li x0, 0xbb8af1af965245cf # initialize rs2
srl x26, x16, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x11, 0xaa0e2da6bdc51d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
srl x11, x20, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x15, 0x9cd27a017c57a149 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
srl x15, x3, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x24, 0xedb88234f850a01f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x0, 0x4df3fa71ee86a04f # initialize rs2
srl x24, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x26, 0xa706914145f388fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
srl x26, x28, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x10, 0x659e95706c27351c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
srl x10, x21, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x14, 0x820ba28c298e8e85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x0, 0x27240ebfffae3b07 # initialize rs2
srl x14, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x31, 0xe2d2ebaee8e449a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x31, x27, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0b8bf4e7fc5c57a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x11, x9, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x5, 0xdc48d8a4e0d0f77f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5555555555555555 # initialize rs1
li x0, 0x055987519da71ffa # initialize rs2
srl x5, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x22, 0x514e22d9f832a8b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5555555555555555 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
srl x22, x5, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x26, 0x91284736dc811a68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
srl x26, x1, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x6, 0xdfd213036fb774cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x0, 0xe13fd0e82284674b # initialize rs2
srl x6, x26, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x17, 0x9df63a11dc9be79d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
srl x17, x9, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x9, 0xe1e91680feb4fcc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
srl x9, x28, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x25, 0xe7b1b52fc617adef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
li x0, 0x839dd70488e50330 # initialize rs2
srl x25, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x15, 0x8e18dac2cb814636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
srl x15, x5, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x19, 0xa855bfcd7e5133a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
srl x19, x28, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x31, 0xef3281285b26c621 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x0, 0x403d4a718984efcf # initialize rs2
srl x31, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x22, 0xf18c74c31323f4bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
srl x22, x14, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x6, 0x380c31a86094df0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
srl x6, x3, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x18, 0x1f26a1a5a3533365 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
li x0, 0xf9cef857b6742494 # initialize rs2
srl x18, x30, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x30, 0x5e9464e47373b5da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
srl x30, x8, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x18, 0x5df1caf36b2443aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
srl x18, x22, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x22, 0xac80e2591c9418ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x27, 0x132d246d548349da # initialize rs2
srl x22, x20, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x19, 0x295caab36c44fe20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x17, 0x4b747cb764180d39 # initialize rs2
srl x19, x12, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0x4db821dd8506aa72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs1
li x7, 0x4cc683189f961986 # initialize rs2
srl x14, x23, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x29, 0x477a2e886f9c0538 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000000 # initialize rs1
li x12, 0x6d81990b9b7f72d0 # initialize rs2
srl x29, x20, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0x19eec91dc946373c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
li x8, 0x8cc9133c31a8dc49 # initialize rs2
srl x10, x12, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x23, 0x07176162e325aff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x26, 0x63582e4c84d1e6dd # initialize rs2
srl x23, x2, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x14, 0x859863dce95c1ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x19, 0x58abef1e0eae0863 # initialize rs2
srl x14, x20, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x29, 0xdab2bdb63247d11c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x8, 0x738b33fba1ec04d0 # initialize rs2
srl x29, x27, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x6, 0x6cfc6c218c31729e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffffffffffe # initialize rs1
li x23, 0x59f7d0cc372b4cad # initialize rs2
srl x6, x10, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x12, 0x91dd97219e266ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x6, 0xde332bbcfb62e42f # initialize rs2
srl x12, x22, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x3, 0x967d6ff922c4b488 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xe923e89feba7ba3d # initialize rs2
srl x3, x30, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x5, 0x067300bb913ae7ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
li x15, 0x9b2605573983d839 # initialize rs2
srl x5, x18, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x6, 0x2db6e56c35652abd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x30, 0x567300cbfdec351c # initialize rs2
srl x6, x18, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0xef52cde08a755de4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x24, 0xfa7aa2d13faef3ea # initialize rs2
srl x14, x20, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0xa697e1e7e645b409 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000000 # initialize rs1
li x1, 0xd91d85a3d0329834 # initialize rs2
srl x14, x23, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x24, 0xdfa2c6e8ad258517 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x1, 0xfff7b35477ceea7d # initialize rs2
srl x24, x21, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0xc8351d8d4eb3163e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf95baecd882e703a # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
srl x13, x31, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x8, 0xb64de5d132034a69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe538277e5bb509cb # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
srl x8, x27, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x1, 0x03cffa60bee5d682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x59baa715e70401fa # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
srl x1, x7, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x4, 0x39de6714e03e53f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe14bb2722d607c33 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
srl x4, x24, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x25, 0x4c5f4ce52accbc0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x08665b15d79d0d96 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
srl x25, x12, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x29, 0xa274dd6731150802 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x21da191792b8f952 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
srl x29, x26, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x21, 0x567fea6dde348aae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb559fc896d43a454 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
srl x21, x19, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x12, 0x15263c7ffd50f4f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8ab211b78c0b8914 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
srl x12, x29, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x18, 0x8b13b42401af5c1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8212cedd64138bab # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
srl x18, x23, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x24, 0xcb4aa5f0ae7ba963 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd7a951ef3d3e4c24 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
srl x24, x10, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0x2ca39c166280a626 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6f8580a9aa8cf7a1 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x26, x12, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x8, 0x8d78034f47b01d9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x59512e777a8c8449 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
srl x8, x27, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x29, 0x1bb202b66504d397 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xcfae78e1b26a33c2 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
srl x29, x9, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x5, 0xa3856904b3e3e0da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0373997ddfe75dcb # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
srl x5, x2, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x4, 0x837ec69ea2b13ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x641fcc19e5fcafb5 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
srl x4, x6, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x19, 0xcd8176ede2d26d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x894432ae8f5832e5 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
srl x19, x4, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x5, 0xbb13cb617af1cf95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
srl x5, x28, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x6, 0xff39b1eac1680cc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
srl x6, x31, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x19, 0x35ca81e847ab0ba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000000 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
srl x19, x7, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x10, 0x441878c93c1a63a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
srl x10, x30, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x27, 0x122f73073ba8dfca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000000 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
srl x27, x23, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x13, 0x5b35f5b84b1d8d1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
srl x13, x9, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x9, 0xf969515176768347 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000000 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
srl x9, x26, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x9, 0x24bd6834ef3e66ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
srl x9, x12, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x29, 0x43c47415b1777db0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
srl x29, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x24, 0xd8bbaada5b5a7971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000000 # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
srl x24, x7, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x4519e1b7f80badca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x8, x11, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x9, 0x9cffd812a87b29a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
srl x9, x14, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x13, 0xf122b4e687e6be13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
srl x13, x20, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x24, 0x3c529556dacf08bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
srl x24, x16, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x25, 0x3a20ee4c9d2ec573 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
srl x25, x13, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x3, 0x1055bad017b5c693 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
srl x3, x4, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x13, 0x59b63dc6e7064c11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
srl x13, x27, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x26, 0x662a41bcea58b921 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
srl x26, x29, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x21, 0x3627e8d9aed6d945 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
srl x21, x20, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x29, 0xeb5aea49b473bd72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
srl x29, x2, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x14, 0xfb23f3cca5fd75c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
srl x14, x9, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x4, 0x11ec180066881d47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
srl x4, x13, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x30, 0x35c445c622d42159 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
srl x30, x6, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x31, 0x153cc5171c90cd7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
srl x31, x15, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x22, 0xb6afcb9a75faf242 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
srl x22, x18, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x21, 0x7b330ce069334dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
srl x21, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xd5f63841070081d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x10, x26, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x18, 0xb6859188ef51fbba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
srl x18, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x17, 0x3c8497622674a166 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000001 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
srl x17, x3, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x21, 0xdeffcd1f2fd37215 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
srl x21, x19, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x8, 0x491562d183785fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
srl x8, x13, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x2, 0xe4fd16e2a0f7d79a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
srl x2, x13, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x31, 0xe57c5508f6b8c241 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
srl x31, x19, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x9, 0x95b321806bc0d08a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
srl x9, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x16, 0xb71d7d5dc6534cdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
srl x16, x8, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x6, 0x0d6cbbb0bc4e6eb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
srl x6, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x17, 0xd251da1d07e63bc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
srl x17, x3, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x18, 0x315d717a6b5e61c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
srl x18, x23, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x9, 0x533e9641f874be25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
srl x9, x20, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x12, 0x887a704e61225329 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
srl x12, x1, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x23, 0x4f5e39a8d8a9a13a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
srl x23, x21, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x8, 0x47a51857811c238b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
srl x8, x20, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x318d653f5df8db3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x13, x8, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x9, 0x29383e1a0baae3a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
srl x9, x25, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x12, 0xa981687a066700d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
srl x12, x21, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x3, 0xd3c1e800aa7ed495 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
srl x3, x13, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x17, 0xb56f8d81c88d4335 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
srl x17, x13, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x2, 0xa0e9726b17b3281e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
srl x2, x14, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x4, 0x02b784c46e834719 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
srl x4, x28, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x12, 0x5d5c250abd499296 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
srl x12, x4, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x28, 0x4a52776b2109e06a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
srl x28, x21, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x15, 0x8e7bc187a06ce211 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
srl x15, x6, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x19, 0x22bc49a4594e5d2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000000 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
srl x19, x1, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x6, 0xff38df8718834f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
srl x6, x14, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x14, 0x85a5a9bf9f1e908b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
srl x14, x9, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x4, 0x0bc56b68be69bbb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
srl x4, x20, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x20, 0x3e78e2adacaf8939 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
srl x20, x18, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x3, 0x7acceeabf120e746 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
srl x3, x2, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xdbd863be9e10c405 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x20, x23, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x2, 0xf373de68540a2322 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000000 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
srl x2, x20, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x11, 0x05a296ef9ebc5ec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
srl x11, x23, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x7, 0x4e5cfba6babfe8bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
srl x7, x11, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x19, 0x2e8f17332074e326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
srl x19, x8, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x16, 0x976af253e4e5e2b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
srl x16, x31, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x30, 0x5defdc50e34169c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
srl x30, x15, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x15, 0xf8054337fe26bec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
srl x15, x14, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x25, 0x9718db019ffddfdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
srl x25, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x29, 0xdde70c074871adb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
srl x29, x6, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x15, 0x2efcd8cdefabc363 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
srl x15, x28, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x2, 0xdb2a69ba01091ae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
srl x2, x29, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x3, 0x59073f38216192c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
srl x3, x26, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x8, 0xd06cf0cdae889427 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000001 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
srl x8, x22, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x10, 0x4be2fd2d81adec06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
srl x10, x18, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x11, 0xc0111a749e62574c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
srl x11, x19, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x6962916075ba4b8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x16, x12, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x19, 0x75e08922ff76cf3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
srl x19, x16, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x11, 0x97922eebe799ca57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
srl x11, x19, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x1, 0x257e4228a1825eb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
srl x1, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x16, 0x51f3f62f0e9e050d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
srl x16, x20, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x19, 0x51e22c12fb3d2f12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
srl x19, x7, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x18, 0xc7494a2643c97257 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
srl x18, x24, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x9, 0xd3ca93f5420541a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
srl x9, x31, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x17, 0x6da04f8d0cfd997b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
srl x17, x13, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x19, 0x780a7fcb1ebaf393 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
srl x19, x14, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x27, 0x6972da0f3f6ed7e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
srl x27, x3, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x5, 0xc2c7bb5e3d339be3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
srl x5, x9, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x17, 0x91475446f8423252 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
srl x17, x23, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x31, 0x4acaaffcfd0645c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
srl x31, x14, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x8, 0x575869f0e9ea3d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
srl x8, x18, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x10, 0x5d1ee56fa1365100 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffffffffffff # initialize rs1
li x22, 0x5bbc887763ae86f7 # initialize rs2
srl x10, x9, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x6918d1ad40c77bc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x23, x8, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x10, 0x670ce63c47e38717 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
srl x10, x19, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x27, 0x8837e5c0363056fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
srl x27, x2, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x6, 0x69a7153e7c9b0205 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
srl x6, x10, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x27, 0xdb523dd23374df3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
srl x27, x18, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x19, 0xadddf2c4210e6489 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
srl x19, x27, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x19, 0x7c1835bd4d71989d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
srl x19, x9, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x12, 0x12c1858d861074a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
srl x12, x3, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x12, 0x46359934ebf93d5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
srl x12, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x7, 0xb365d865fee11aad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
srl x7, x10, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x10, 0x785be2c45cc2e402 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
srl x10, x6, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x4, 0xe5bf736d9929104c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
srl x4, x5, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0x4e0bb62f459b8dc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
srl x17, x1, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x3, 0xdee2dc3971656a0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
srl x3, x7, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x29, 0x34ac2808a880ebbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
srl x29, x6, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x11, 0x95614ab288dd2295 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
srl x11, x7, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x4772497a5fb17620 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x19, x16, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x24, 0xd21de93220f8b99a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffffffffffe # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
srl x24, x4, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x22, 0x9caf15698986985b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
srl x22, x31, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x11, 0xcd357e992c321c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
srl x11, x14, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x16, 0x503968fea7e030bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
srl x16, x11, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x12, 0x619e5883d31967f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
srl x12, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x12, 0x5a9a01bc2e57a864 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
srl x12, x31, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x19, 0xb1848d43db325c17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
srl x19, x24, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x26, 0x19c9065ee5c3e755 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
srl x26, x7, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x23, 0xe79282b90aea4d17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
srl x23, x12, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x15, 0xe6f8960028ebd65b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
srl x15, x24, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x23, 0x47b8599c85d3c470 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
srl x23, x3, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0x5c4a56f237b06ae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
srl x27, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x18, 0xdf5eee9a7585b62a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
srl x18, x13, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x18, 0xacf03bb30949515d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
srl x18, x8, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x13, 0xf63b8ca74e502f8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
srl x13, x7, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xcea37e0ba43abf42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x14, x29, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x29, 0x24b88eecf28d66cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
srl x29, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x11, 0x4cae2debbc373741 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
srl x11, x10, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x2, 0x759bc91668606d35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
srl x2, x3, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x4, 0x8f745f48c794c068 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
srl x4, x10, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x28, 0xc9d408339fc8a674 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
srl x28, x5, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x13, 0x0356bc6a2c889a84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
srl x13, x15, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x24, 0xb0dc0de39c18acd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
srl x24, x27, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x8, 0x2fb6f9e872d95063 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
srl x8, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x31, 0xaf101b117e5e41b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
srl x31, x9, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x26, 0xdf5d84cb1e9ee8b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
srl x26, x7, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x8, 0xe5489243994a8bef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffffffffffe # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
srl x8, x17, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0x78428ec4fcc6ee08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
srl x11, x7, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x12, 0x4eeec4ab78f0cf0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
srl x12, x3, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x12, 0x243be69e41ef354b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
srl x12, x2, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x13, 0xf15e0f358f2cd904 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
srl x13, x6, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0xce245043acaaaa54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x24, x26, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x12, 0x9be5ea9b0a78b6e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
srl x12, x1, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x30, 0xb38a63787fd5d4a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffffffffffe # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
srl x30, x4, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x16, 0x3c5364734135f402 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffffffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
srl x16, x10, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x1, 0xf951e85b45dcbd62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
srl x1, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x16, 0xe94fa51ccf977120 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
srl x16, x13, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x8, 0x4e57269323190ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
srl x8, x28, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x24, 0x9d07eb939a22965b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
srl x24, x12, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x12, 0xa2eecc8fcdd76ae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
srl x12, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x25, 0x2af13e98f85f216b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
srl x25, x30, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x31, 0xcbed3bb4cc201cde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
srl x31, x10, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x1, 0xc8eb52681b0e334e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
srl x1, x7, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x20, 0x6395031b885d5b93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
srl x20, x21, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x4, 0x5fe1ac90f5e1f27b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
srl x4, x15, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x28, 0xa70506a518edaeae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
srl x28, x4, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x20, 0x737be786a440df74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
srl x20, x18, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xa3a0b92dc7cfa4a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x10, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x14, 0xdbf19661b39d9be2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
srl x14, x17, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x9, 0x2b8089ce39219439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
srl x9, x18, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x13, 0x1d1371443c18f7a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
srl x13, x8, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x24, 0xbcb43063a506c99c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
srl x24, x27, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x20, 0x84b581c44e36b57a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
srl x20, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x8, 0x1dce83c84c5918af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
srl x8, x5, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x18, 0x95fb2447da1431a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
srl x18, x28, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x5, 0x38f76d055f7338b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
srl x5, x28, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x19, 0x61149d3462faea2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
srl x19, x29, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x10, 0xa968575a8589edd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
srl x10, x7, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x18, 0x4e05c8d21002f463 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
srl x18, x19, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x10, 0xb6bb184965d5ad7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
srl x10, x8, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x4, 0x0eb59f545e29784c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
srl x4, x28, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x15, 0x0512053256589229 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
srl x15, x17, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x12, 0x8ab1e2152b7d658e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
srl x12, x27, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x4868f10ad58cef5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x10, x24, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x22, 0xa3ee02162970f24c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
srl x22, x31, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x30, 0x809e5caf4ffb01cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
srl x30, x27, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x16, 0x2ed9e8168d153c92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
srl x16, x4, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x25, 0x976b9277cd4bbb60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
srl x25, x4, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x21, 0xd86b1429c58b6849 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
srl x21, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x21, 0x2266f0db7d0fd374 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5555555555555555 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
srl x21, x5, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x7, 0x4bfe8c7cce10d830 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
srl x7, x4, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x22, 0x92e5291647847429 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
srl x22, x2, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x26, 0xcde1575bdba4d6e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5555555555555555 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
srl x26, x3, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x25, 0x9f988849d3769995 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
srl x25, x6, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x3, 0xe6e679f97b26c782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
srl x3, x30, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x31, 0x936973a50e26bfa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
srl x31, x18, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x27, 0x869de42117edaca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
srl x27, x22, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x16, 0xacb327a26a878c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5555555555555555 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
srl x16, x21, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x10, 0xaf2b2062d890b75e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
srl x10, x15, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xa08d2d8ee1f6dd33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5555555555555555 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x29, x28, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x27, 0xd55121d6f7caa3ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
srl x27, x6, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x31, 0x60ac5ecc80e211f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5555555555555555 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
srl x31, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x24, 0x80295d5c2de76dd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
srl x24, x12, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x28, 0xe8d93f12bd877dd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
srl x28, x20, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x12, 0xbe6c6e33298ca7a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5555555555555555 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
srl x12, x19, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x30, 0x9c41a1317c1b2bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
srl x30, x4, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x30, 0x0beb46e2b8127137 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
srl x30, x12, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x28, 0xc78ff4173a5f3d38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
srl x28, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x31, 0x2391019a67cbc3a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
srl x31, x26, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x24, 0xa9e50aa49f73b96d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
srl x24, x27, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x14, 0x0670c6511be0476b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
srl x14, x18, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0x88db52172b43f2f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
srl x23, x10, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x10, 0xaee9cfaa8283d4e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
srl x10, x18, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x28, 0xc78041f5099899c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
srl x28, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x16, 0x16ee8f445791c11c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000ffffffff # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
srl x16, x22, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xe6049f7986b7eb47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x14, x30, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x5, 0x450df9775b49b3b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
srl x5, x29, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0xd21d3788f160d3bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
srl x18, x1, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x7, 0x55633710c3ce953a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
srl x7, x24, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x24, 0x4ef2947e67750e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000ffffffff # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
srl x24, x21, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x13, 0x822302fbb38ebcfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
srl x13, x26, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x21, 0xdc0fbf7d63553131 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
srl x21, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x11, 0x7d7d1f7278df94aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
srl x11, x4, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x13, 0x10f160ed24eb181a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
srl x13, x1, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x11, 0x483aafa0e99dea8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
srl x11, x31, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x6, 0xb28f4fe71bd7105e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
srl x6, x23, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x10, 0x4fad2d028aaaaa24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
srl x10, x2, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x29, 0x4a3b535cdf03889b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
srl x29, x5, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x2, 0x5bbe592b5eb3211d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
srl x2, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x20, 0xc2df1ddf9d216438 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
srl x20, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x17, 0xc84fe37278839058 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
srl x17, x31, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0xbe150a2b4a8502c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x17, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x31, 0x2805961495d30dea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
srl x31, x12, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x14, 0xe2c7cd45e4913fde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
srl x14, x16, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x12, 0x93a08ffbdc6829e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
srl x12, x30, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x29, 0xd9add093a06591a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
srl x29, x23, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x3, 0xbcaefa8e1bf4fdd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
srl x3, x6, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x27, 0xe381b34f049cf0fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
srl x27, x16, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x7, 0xa53048aa0a4bcf83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
srl x7, x31, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x13, 0x8f3f7341bfce6d40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
srl x13, x16, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x10, 0x56a0488bf43b473c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
srl x10, x23, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x23, 0x0a36cb4cc64c95e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
srl x23, x6, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x14, 0x08f5ba03b07ce032 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000000 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
srl x14, x2, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x26, 0x027c4430b6f3f047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
srl x26, x30, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x28, 0x9e0f45c3328a6c0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
srl x28, x4, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x17, 0x0ca0b20eeb8ed9fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000000 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
srl x17, x21, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x3, 0x85a6684cc4a5c0f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
srl x3, x20, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x9c5acd35613810c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000000 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x16, x29, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x25, 0xe1cd9e48d74ea65b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000000 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
srl x25, x2, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x16, 0x4ef27d3cc04c8285 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
srl x16, x13, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x17, 0x0d91f0293c7f7307 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
srl x17, x27, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x3, 0xebe2e874c0142ea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
srl x3, x1, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x25, 0xe8192438c4327b69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
srl x25, x16, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x24, 0x65965ef8e8709f2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
srl x24, x1, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x6, 0xf792d4e5c26cf2d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
srl x6, x2, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x16, 0xe1b17a14812cf23d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
srl x16, x8, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x16, 0x5aa040d5cf63c129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
srl x16, x30, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x8, 0x05cc3ec5c2408fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
srl x8, x12, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x28, 0xe10849466b1b2a52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
srl x28, x6, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x10, 0xa3beb8885d072cda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000001 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
srl x10, x13, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x2, 0xc2bfb347f7fbb0c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
srl x2, x18, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x30, 0x18f20c3257af9f3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000001 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
srl x30, x3, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x16, 0xc4465b09e98bb57c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
srl x16, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x8077cd98d4d0741a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x5, x8, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x16, 0x58a4321c776c553f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000001 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
srl x16, x10, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x3, 0x86c5aa9b2a8ca0d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
srl x3, x4, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x5, 0xc9e431f0f1f1aa36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
srl x5, x14, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x4, 0xadeef7b0dc6a2c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
srl x4, x16, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x30, 0x3fc0f3b2dfb8d643 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
srl x30, x6, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xee1efeb3f49e1f77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1feb1b9ebbdeef6e # initialize rs1
li x12, 0x6b02c2f0ccc54373 # initialize rs2
srl x0, x0, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xc5a37d3f41f82af1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb5e6d1302a409a9d # initialize rs1
li x28, 0x10ce00a6e5443dc9 # initialize rs2
srl x1, x1, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xe91aebe7b1e97b11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc6b40f8d7078bda4 # initialize rs1
li x28, 0x4e5640ba6c42c231 # initialize rs2
srl x2, x2, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x78fac54fb2c83d8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x10df4e7b281eb2c8 # initialize rs1
li x7, 0x7579d5768e04b62e # initialize rs2
srl x3, x3, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xe57c56c72ced18bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3ec16e1022e296ec # initialize rs1
li x19, 0xe1ad9e9adc8a6c56 # initialize rs2
srl x4, x4, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x9acb964ea9723c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa3a606f0b4e2f7ef # initialize rs1
li x15, 0xfb4c6cb84bd55e89 # initialize rs2
srl x5, x5, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x271bdf8a0c283258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe65f90024c27ae53 # initialize rs1
li x23, 0xb845bf85fa87f544 # initialize rs2
srl x6, x6, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x0258454f854af0f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb8aeda9a0cb80d68 # initialize rs1
li x26, 0x6e128eed4239d5e1 # initialize rs2
srl x7, x7, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8e76d136b0497343 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc2e5e8e7d343ff7d # initialize rs1
li x15, 0x17909ce3ac1f8eae # initialize rs2
srl x8, x8, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x4397c2c5f1f250a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xcf51ee3064f181ac # initialize rs1
li x3, 0x1459e8a431b0aba2 # initialize rs2
srl x9, x9, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x54954e8d34f19a88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2a023b4786049d54 # initialize rs1
li x2, 0x38f46d6a7c7cc890 # initialize rs2
srl x10, x10, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa22c4204a0283e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2be62bd5f1f8148c # initialize rs1
li x31, 0xccdc5607160c65e8 # initialize rs2
srl x11, x11, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xda8aa8dd41fef0c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x811d9465e5d1c32b # initialize rs1
li x17, 0x908752e66381d427 # initialize rs2
srl x12, x12, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xfd2132bfe0e8fea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4db2932b76b37ad0 # initialize rs1
li x8, 0x43bf372139137091 # initialize rs2
srl x13, x13, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x16350f8c130ebef8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6101c4ffd283f6a4 # initialize rs1
li x28, 0x812082b1a9fcc638 # initialize rs2
srl x14, x14, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2f6495da2e5369b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x69e95d7845f913ae # initialize rs1
li x10, 0xd558d80213e5a669 # initialize rs2
srl x15, x15, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x864f93afe9a25a0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x81aef78c685e5153 # initialize rs1
li x15, 0x2aef9a0bb57018fe # initialize rs2
srl x16, x16, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xfea8767a25070a10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9a506ce05f0b1b54 # initialize rs1
li x7, 0x376b46e1e02c2e6c # initialize rs2
srl x17, x17, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xc6c9576a666618f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1d8496af90e1d0e9 # initialize rs1
li x1, 0xe9c5b28f5dc8d395 # initialize rs2
srl x18, x18, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x09ed275e62b62756 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xcb69fb7ec18092e9 # initialize rs1
li x1, 0x17b1e12f4ff72af0 # initialize rs2
srl x19, x19, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x4a76e3808e38e41c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x414d2b7001804e4a # initialize rs1
li x6, 0xbdbf936ed37f1860 # initialize rs2
srl x20, x20, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x3e81128e203f1210 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x050caf9dcab94833 # initialize rs1
li x24, 0x093f88bc5def1126 # initialize rs2
srl x21, x21, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x2483a5b6a0ef55d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x56e4d609e6fc7646 # initialize rs1
li x16, 0xdc047984d7d00da8 # initialize rs2
srl x22, x22, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xc7b20d659493b6cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa8938a0385a3efe5 # initialize rs1
li x13, 0xd37069f0bcd25d49 # initialize rs2
srl x23, x23, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7390b8e6fe6e0052 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x668699717c450b8d # initialize rs1
li x27, 0x14b6919b57fee3f9 # initialize rs2
srl x24, x24, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x84a7c9f9213d3fe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa6895385f1657556 # initialize rs1
li x28, 0xd60f42138088e2ca # initialize rs2
srl x25, x25, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xb2bc0d473fec35ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6c9b928acf7df8c2 # initialize rs1
li x24, 0x8830f1d94d32fb45 # initialize rs2
srl x26, x26, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xcb3f540d83db5657 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6d080e58404497b6 # initialize rs1
li x11, 0x1d4ef9462b4ca985 # initialize rs2
srl x27, x27, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x4629bdbe77ead743 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8e4a73197c69a2b0 # initialize rs1
li x21, 0x165951c8f7e5e116 # initialize rs2
srl x28, x28, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x586f686c582a670b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe6e553c4da04b045 # initialize rs1
li x8, 0x087a4cb38d54b752 # initialize rs2
srl x29, x29, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x037075f2c409a564 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x08bd5215268d87cd # initialize rs1
li x18, 0xc5f149e357547213 # initialize rs2
srl x30, x30, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x572daece5b06c302 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x878d1ff2b7f6f21c # initialize rs1
li x22, 0xe339cdf6a00180ea # initialize rs2
srl x31, x31, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x4434b94173b40ce3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4012b73e9f67b1dc # initialize rs1
li x0, 0x6fa97b82e7bf0eb0 # initialize rs2
srl x0, x7, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x94be6202318e7cab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa2f3f76bb205f609 # initialize rs1
li x1, 0x5ecfd8c93e6b93c5 # initialize rs2
srl x1, x14, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x478d9c6a5d663bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x30ed02d3c834938a # initialize rs1
li x2, 0xc26392ac6de2a2ad # initialize rs2
srl x2, x12, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x61526fdd51f03ca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x08eb2d9c367986c6 # initialize rs1
li x3, 0x8ad79d0630ece415 # initialize rs2
srl x3, x27, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xf33c1096cff8742c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6dc9a935c474e8f0 # initialize rs1
li x4, 0xf49dec113e686ddf # initialize rs2
srl x4, x20, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x8a718999625eb3a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbf0312f2cb4db6e7 # initialize rs1
li x5, 0x6ce15629ec6630b0 # initialize rs2
srl x5, x6, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xf75cf92d6bc9ccb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc1cebce706ef884f # initialize rs1
li x6, 0x261225b786942127 # initialize rs2
srl x6, x19, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xd5bed1329f611ff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x405e3e489a61dcf3 # initialize rs1
li x7, 0x672d8348df4a80f0 # initialize rs2
srl x7, x10, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x8f89758ad9b618f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xbaa6f33b434688f3 # initialize rs1
li x8, 0x64ec13cdea1fc63d # initialize rs2
srl x8, x3, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x6b8ec8e712f72444 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc822080337562ed6 # initialize rs1
li x9, 0xc32399e6e49956c1 # initialize rs2
srl x9, x10, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x08bc31b0a892c942 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb29075b42254c785 # initialize rs1
li x10, 0xacdbbe3b3dfcf637 # initialize rs2
srl x10, x12, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xca1ba2c1c0a1ce8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4fee881944cf4bb0 # initialize rs1
li x11, 0x061609afee3f1e69 # initialize rs2
srl x11, x6, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xd47433d78c3a00ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf14a03c2979eb4f6 # initialize rs1
li x12, 0x62a486c830eccd46 # initialize rs2
srl x12, x10, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x52d2a3414b22d732 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9fb4c86f2576bfc9 # initialize rs1
li x13, 0xba59ec3e92dd36dc # initialize rs2
srl x13, x9, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x1fe820e5fa83bd59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x325647ee02ffc25d # initialize rs1
li x14, 0xec5916c30e0d61ff # initialize rs2
srl x14, x7, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x13618e67c534ebd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8fb066a82a0cdd0f # initialize rs1
li x15, 0x9c71ac86743ad4ae # initialize rs2
srl x15, x31, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x69674d3dbb3bee97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x11893042181b8b3a # initialize rs1
li x16, 0xeaa7e84a4f784e58 # initialize rs2
srl x16, x14, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xbf0ba078184ff036 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8b459a5c7455183d # initialize rs1
li x17, 0xe923b7d9e9909707 # initialize rs2
srl x17, x5, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xa043ead96c7b481d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xca84b4842ab4a1da # initialize rs1
li x18, 0x1cbaa2d85c531726 # initialize rs2
srl x18, x31, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xd55d536c8037a34a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9b927d1057dc325b # initialize rs1
li x19, 0x784bf8f35cafa161 # initialize rs2
srl x19, x16, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x7d57758e67fc042b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd82e74188f9a142f # initialize rs1
li x20, 0xa0f5094989d7ab02 # initialize rs2
srl x20, x20, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x9b2e23509a0f6c90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc10f6175c03231e2 # initialize rs1
li x21, 0x89cca401c450f645 # initialize rs2
srl x21, x3, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xb3e9c5c91f6acfe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x62ddc55ef1dbfd48 # initialize rs1
li x22, 0x3546a958d5056a34 # initialize rs2
srl x22, x27, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x4b7ba13ea12f8f8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x682ea4170cedb6ad # initialize rs1
li x23, 0x356893cbfefc9f84 # initialize rs2
srl x23, x24, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x7844c4c27a1ef3f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf128a1f52db7b3f4 # initialize rs1
li x24, 0x7c4b0e83bfb38f66 # initialize rs2
srl x24, x21, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x901bd9ba0bd40145 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf11464f5339e8785 # initialize rs1
li x25, 0xb7e6f5b44c343c3c # initialize rs2
srl x25, x27, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x6c53d02240a8a0f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc6d7d79e99132879 # initialize rs1
li x26, 0x971e220deed64818 # initialize rs2
srl x26, x30, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xd180e6b297568489 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9d0aa4671db8daed # initialize rs1
li x27, 0xaca2098450cfdef7 # initialize rs2
srl x27, x9, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xea4b83d2f5f03ec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7e5b74534224a54e # initialize rs1
li x28, 0x8fee9930c5358008 # initialize rs2
srl x28, x30, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xc21f80c606f5a3e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xeb550b29753f7520 # initialize rs1
li x29, 0xef093557200afbe4 # initialize rs2
srl x29, x12, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x6b52fe6406193ddd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5178891106b89284 # initialize rs1
li x30, 0x2dff4e3f9f76f3b0 # initialize rs2
srl x30, x3, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x52b18c8b202cd761 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb8cc18197c263917 # initialize rs1
li x31, 0x3e78e55c07be1838 # initialize rs2
srl x31, x9, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xb42b16b0ada874a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5dc717bcfff04b23 # initialize rs1
li x0, 0x22593b5d5040a91c # initialize rs2
srl x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd87175d18f43e24e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x61c6c0b4341a56a4 # initialize rs1
li x1, 0x5143dba1f6ccc7fd # initialize rs2
srl x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x7035348a88146332 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1fed390eaeacd3be # initialize rs1
li x2, 0xe4d8d68f0a83515d # initialize rs2
srl x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x73fb97d04b592138 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6f706db6168e602c # initialize rs1
li x3, 0xd97064595889c5d1 # initialize rs2
srl x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x345c53bc52240026 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x9e159bf070a96c54 # initialize rs1
li x4, 0x3d304c5684e4be04 # initialize rs2
srl x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x7812702c729e7992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x48b12561fd608a2d # initialize rs1
li x5, 0x1a97fe0aff55afaa # initialize rs2
srl x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x09872ec04d944334 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x690febfcd2da9473 # initialize rs1
li x6, 0x3dffdd68b2bbec48 # initialize rs2
srl x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0xb05fa4a964644f12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xba52bfa7e22bb49b # initialize rs1
li x7, 0x5132f74590f714f0 # initialize rs2
srl x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x8bb563875b3227b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd6c92ff2a5133246 # initialize rs1
li x8, 0xcb21354567521e9d # initialize rs2
srl x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xb76600b104d64bc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6645a8b4a32c4737 # initialize rs1
li x9, 0xe3813fa4cb5a0105 # initialize rs2
srl x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x6202c3f2c129edf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbb0b5a7e93dfc098 # initialize rs1
li x10, 0x65022da74c8da0cc # initialize rs2
srl x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xfbed57af92e9b57b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x57e4fd05148afe22 # initialize rs1
li x11, 0xc50fdf9a03f4abdc # initialize rs2
srl x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x8c63958f862e4a99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe7be8944e8f4f967 # initialize rs1
li x12, 0xd7bff16b312e6f23 # initialize rs2
srl x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x3f04795c3c5541e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8eea8924747416f9 # initialize rs1
li x13, 0x222972ad8e5cfc76 # initialize rs2
srl x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd7b54c3095046169 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x31151cab718e4e83 # initialize rs1
li x14, 0xf060ed669040abdb # initialize rs2
srl x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x786bbb585747a767 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4f60754e2581cdf3 # initialize rs1
li x15, 0xb74cde191f558dbe # initialize rs2
srl x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x0a08ee5f3a582b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6cd5815fe6856ea5 # initialize rs1
li x16, 0x1ce0447d4d336172 # initialize rs2
srl x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x75ad05aa9e388f7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe8fbba08abdd01fe # initialize rs1
li x17, 0xfe115eba97a8f01e # initialize rs2
srl x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xb3eea01d296af747 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xed6f95c075d21113 # initialize rs1
li x18, 0x14d2b6cbb2c024c5 # initialize rs2
srl x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xac49f7823b2fbfa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x520ad4bca24c944f # initialize rs1
li x19, 0x178124efe349a3ab # initialize rs2
srl x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x6016dff2a9caec49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xbacd9ffe0cf4e7f1 # initialize rs1
li x20, 0x35662b294a9de4ef # initialize rs2
srl x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x70e83d49a4a04020 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5e0b9ae10a78c887 # initialize rs1
li x21, 0x1640ba5aa9013839 # initialize rs2
srl x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x5e75fa395a3ac685 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x117bb700a86fedbb # initialize rs1
li x22, 0x750f065c65cfe780 # initialize rs2
srl x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xad533ddb4417cdb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x821916fd837008e9 # initialize rs1
li x23, 0x38cf41f07a7f0cab # initialize rs2
srl x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x30703a140b19e284 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x671f2fa7506209c0 # initialize rs1
li x24, 0xde9a80b95ba3b7de # initialize rs2
srl x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x5c375d7525e4ead3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x142da39db3652d28 # initialize rs1
li x25, 0xf15217afbdda010b # initialize rs2
srl x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x30e001b96ce5d070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x55ce1504e0b2010d # initialize rs1
li x26, 0x30d03be10491be1c # initialize rs2
srl x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x63934b4ce07f617d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8e1caf310681a5f1 # initialize rs1
li x27, 0xdbd2397867c21be7 # initialize rs2
srl x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x618c2ce35364be9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x37206bb33cd062cc # initialize rs1
li x28, 0x4e6afb50e3771d70 # initialize rs2
srl x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x6e0271ad7c749d6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x82a1877af831c39f # initialize rs1
li x29, 0x311f4a9dcf183470 # initialize rs2
srl x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x77f78884cbbbb2b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8ae2da942dee1c89 # initialize rs1
li x30, 0x9b535acec652455e # initialize rs2
srl x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x167978f1c82e62dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xec21dfbf3601dc50 # initialize rs1
li x31, 0x701a323a5ed5e911 # initialize rs2
srl x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x22, 0xeeceeb01437c45c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe52732dde834bfa2 # initialize rs1
li x0, 0xf5bc56f2f4a131d0 # initialize rs2
srl x22, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x27, 0xcd8350264973e645 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55ad2c11a849adaf # initialize rs1
li x1, 0x02b12e740bfbaea8 # initialize rs2
srl x27, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x1, 0x60a3d6894f8f7c45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf14b1f0e06456283 # initialize rs1
li x2, 0xe8a8cba6ba505d31 # initialize rs2
srl x1, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x1, 0x8af84d6fb4ecfc54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb05234dc7b2631c9 # initialize rs1
li x3, 0x89c8de38845f7899 # initialize rs2
srl x1, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x3, 0x7f55383366ce87e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x26d49c98be6541c0 # initialize rs1
li x4, 0xdc3349e6d08dd244 # initialize rs2
srl x3, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x29, 0x2a74f4f1b6395286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x705475e946b2492b # initialize rs1
li x5, 0x64ff74f113c4f1a2 # initialize rs2
srl x29, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x4, 0xe6db3fc07afc7851 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x418c7b64c0d42efe # initialize rs1
li x6, 0x4e178643144d14b4 # initialize rs2
srl x4, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x5, 0x7c9e8c79d14a702b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9ef1fa6acaa3cd35 # initialize rs1
li x7, 0x46a67ff555295328 # initialize rs2
srl x5, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x17, 0x577acaf28d84aaa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x643ffc75a08217bd # initialize rs1
li x8, 0xef37ba667867f66a # initialize rs2
srl x17, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x12, 0xda337336c1c39b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x253edfb5489c8a9a # initialize rs1
li x9, 0x63b911c39b29a626 # initialize rs2
srl x12, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x25, 0x2577bc9ed605f840 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe332d4687c9b2f43 # initialize rs1
li x10, 0xe271dc83f0eb5e52 # initialize rs2
srl x25, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x17, 0x0464e003f0c78a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0e11d6e193da9799 # initialize rs1
li x11, 0xbed7c771d67ade5a # initialize rs2
srl x17, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x28, 0xdd01a8cc66e7bc14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd02c02f4d9d6e9ab # initialize rs1
li x12, 0x0080f712a5f88ff7 # initialize rs2
srl x28, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x18, 0x521c7db7b8102310 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4b3210c1dbd81632 # initialize rs1
li x13, 0x76d5c9f56646504e # initialize rs2
srl x18, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x27, 0xb7125bdd1d407f75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf65687124eeeb658 # initialize rs1
li x14, 0xe5241baf2f04b964 # initialize rs2
srl x27, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x21, 0x34c4b14cbb994d5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6527a696de3db03c # initialize rs1
li x15, 0x852a8679fe5e1b52 # initialize rs2
srl x21, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x1, 0x5a480571085a2ca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf048b98a9d9b30a6 # initialize rs1
li x16, 0x70ed26cc79106dcf # initialize rs2
srl x1, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x13, 0xbb652a6ee654bb5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbc70835b9667e533 # initialize rs1
li x17, 0x00bdda6efb4358f2 # initialize rs2
srl x13, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x21, 0x5d9e9c257915a97a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa2a58242766bab1c # initialize rs1
li x18, 0x6f5b88a6109a7d4e # initialize rs2
srl x21, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x23, 0x18196a08672a696b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x639c2a9793896a4e # initialize rs1
li x19, 0xe9cdb6fb74a2abdc # initialize rs2
srl x23, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x18, 0xbd9d30108e49808b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x91b7690fed4445b5 # initialize rs1
li x20, 0x341d43870b7a0fb3 # initialize rs2
srl x18, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x5, 0x6c94df84bd4c114a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x087b50ad7c758e88 # initialize rs1
li x21, 0x8465e9f566ff0106 # initialize rs2
srl x5, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x3, 0x0453c752f82308dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x348951524609aa12 # initialize rs1
li x22, 0x0b29a4b89688973f # initialize rs2
srl x3, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x28, 0x2b105252b21d2ece # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe8382a54e9960d11 # initialize rs1
li x23, 0x7778a2fa2d0897ef # initialize rs2
srl x28, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x30, 0x12e54ed94d1f8c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf951ff768d22bf46 # initialize rs1
li x24, 0x27b930128ecf1fe7 # initialize rs2
srl x30, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x4, 0xd284154471351dee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x51ea91736d9cdb24 # initialize rs1
li x25, 0x92049c73ec29d60e # initialize rs2
srl x4, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x15, 0x13b0f93192263eca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x82bbab0722c10bde # initialize rs1
li x26, 0x6b99480e0b608062 # initialize rs2
srl x15, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x24, 0xbfb350b849d3e0d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfbbeea15f84a4b16 # initialize rs1
li x27, 0x38efa3d1ca48b34c # initialize rs2
srl x24, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x29, 0x577b963fc7852191 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x26bb5804d0aa1478 # initialize rs1
li x28, 0x674d8968abe3e88d # initialize rs2
srl x29, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x6, 0x6ef365d0f75497a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe63d304f39dc350d # initialize rs1
li x29, 0x260136988afa7702 # initialize rs2
srl x6, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x10, 0x1227df33657248be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x992343b1dabfdafa # initialize rs1
li x30, 0x1c7fc1a44690da8c # initialize rs2
srl x10, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x14, 0xaf15c7fe2f893a4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0b859b7d2871934f # initialize rs1
li x31, 0x2b1d9ab9fa9f81fb # initialize rs2
srl x14, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x361eb6b95d6aeb85)
li x29, 0xf6b40505cf3b4517 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x361eb6b95d6aeb85 # initialize rs1
li x26, 0x501481f7d88171a0 # initialize rs2
srl x29, x12, x26 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x43fc11f2dbb83eeb)
li x21, 0x65584302f05b15d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbc03ee0d2447c115 # initialize rs1
li x3, 0x34487d0888050657 # initialize rs2
srl x21, x1, x3 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x129b474afea7f8a8)
li x3, 0x29318d2bceed7f7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc3f71190ea39b5f7 # initialize rs1
li x23, 0x129b474afea7f8a8 # initialize rs2
srl x3, x6, x23 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x26f73f4eee77f39e)
li x10, 0x49b34540d3b7948c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x31bce60719ff7f1d # initialize rs1
li x6, 0xd908c0b111880c62 # initialize rs2
srl x10, x17, x6 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
