///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-sllw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.495294
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x790df979b8b5019a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1b4745399dcc3211 # initialize rs1
li x3, 0x5d11f3589bbe660f # initialize rs2
sllw x0, x10, x3 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x77f008eff70851ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd5fc779da197b305 # initialize rs1
li x20, 0xf51e7150d2b25520 # initialize rs2
sllw x1, x12, x20 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x806960ca88a9ed93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8cb872f27e0f204a # initialize rs1
li x4, 0x8c1068469efd2eb1 # initialize rs2
sllw x2, x11, x4 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x06f10a43ce47ab12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa95ea25366e10f72 # initialize rs1
li x21, 0xf63d609abab72304 # initialize rs2
sllw x3, x19, x21 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x8daeb4284496023f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7e0b90e16ed14ebb # initialize rs1
li x15, 0x56fcc93cc967cb82 # initialize rs2
sllw x4, x21, x15 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x88e9e7fb67f0fa99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc13e089cc8800e64 # initialize rs1
li x17, 0xbb25f633101419d1 # initialize rs2
sllw x5, x2, x17 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x6ebd9cdc02e42850 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x70495dc740e59bd7 # initialize rs1
li x5, 0xba1556c7d8887ee0 # initialize rs2
sllw x6, x23, x5 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xb955e61af39973ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdce98a7a028c2bbe # initialize rs1
li x2, 0xd96b4ce8a85c002e # initialize rs2
sllw x7, x22, x2 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9854a6ff884057d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xae57e6bd472ef7c1 # initialize rs1
li x30, 0xd0568c4dfd116068 # initialize rs2
sllw x8, x11, x30 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x67f8d54917522948 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7985d60133d9a51a # initialize rs1
li x20, 0x3d34623083d7ea39 # initialize rs2
sllw x9, x5, x20 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x85e49b4c16b7fef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb3e5b2cb7e5d46e3 # initialize rs1
li x7, 0xc2e91ce00c72bdf4 # initialize rs2
sllw x10, x27, x7 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x5235f48ff794be11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe4dbffbf2815e9b5 # initialize rs1
li x13, 0x9e5641755168e2d9 # initialize rs2
sllw x11, x27, x13 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x575a3a2080ac2dcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2913e0c0c3cd4718 # initialize rs1
li x1, 0x9ee135a355c9e9e6 # initialize rs2
sllw x12, x14, x1 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x54404543c8624bea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x4b506d8e01865fd4 # initialize rs1
li x22, 0xd143bd0a68443525 # initialize rs2
sllw x13, x4, x22 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xb9c175d5725d7ec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd1162e9bca81f136 # initialize rs1
li x31, 0x26adcb979fae1e50 # initialize rs2
sllw x14, x5, x31 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf6f5eb48fc033549 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfd1e504058f9e17b # initialize rs1
li x17, 0x277e00bd0a50e513 # initialize rs2
sllw x15, x3, x17 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x7ed275adc21f5742 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7a5c6d10b9b9a3a5 # initialize rs1
li x3, 0xbb25929855803b4b # initialize rs2
sllw x16, x1, x3 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x62ab0b0387f374a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x004de02068fcd682 # initialize rs1
li x3, 0x09152c0c5d38cd60 # initialize rs2
sllw x17, x11, x3 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0c6a523ad37dce30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf8ee701948a400bf # initialize rs1
li x23, 0x2a98d9a300972a00 # initialize rs2
sllw x18, x25, x23 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x30fc07d88988d8d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1578016de0eb00d9 # initialize rs1
li x15, 0x558ac97fd88c47f0 # initialize rs2
sllw x19, x22, x15 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x10927d307abd6474 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x55c35049ffc1679b # initialize rs1
li x5, 0x6de4b50a33a71478 # initialize rs2
sllw x20, x24, x5 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x652f4aece180c5f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe6124b8d9dfc268c # initialize rs1
li x21, 0xfcd295017bc81cab # initialize rs2
sllw x21, x15, x21 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x279862c810232fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x937b54b8ba6cad76 # initialize rs1
li x18, 0xc3ba22fff201a2f8 # initialize rs2
sllw x22, x6, x18 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xf4e67a204b9a6e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0de52f7c62bccb98 # initialize rs1
li x13, 0x3e44cf4806823833 # initialize rs2
sllw x23, x18, x13 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x7a6ae3f0aa861772 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xcf9f0f6c0eeb00d3 # initialize rs1
li x21, 0xcc0ba343db63b35c # initialize rs2
sllw x24, x30, x21 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x3cba3ba11e2a8052 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x846e559ad255db14 # initialize rs1
li x22, 0x9c7bda75ceb4a1f8 # initialize rs2
sllw x25, x18, x22 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xbcefe45de386e5f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8b1ab08e5433cb2a # initialize rs1
li x28, 0x5adc98890e15ac0b # initialize rs2
sllw x26, x5, x28 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xa8a6a2897428405c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2ec71b7afe20d1a9 # initialize rs1
li x2, 0x1fb035559e95e747 # initialize rs2
sllw x27, x9, x2 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x36cc5244bf851fbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbc0f1a8f4cdadfb3 # initialize rs1
li x22, 0x4dac43b3843a133b # initialize rs2
sllw x28, x4, x22 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x2411e3aea9446da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf496152d16fefd1e # initialize rs1
li x5, 0x47c8217b4773a1f7 # initialize rs2
sllw x29, x8, x5 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xfeaf40e30bfc9fa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x65424e44f0f33b50 # initialize rs1
li x17, 0x4836f9588f44ab53 # initialize rs2
sllw x30, x11, x17 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x92c7905d51a29dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x18378e9e81252157 # initialize rs1
li x4, 0x7bb23cb2fa41262c # initialize rs2
sllw x31, x6, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x12, 0xfa707f8ffab7fea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7140e9e38c0c958f # initialize rs1
li x29, 0xc9c9cbd50be85d51 # initialize rs2
sllw x12, x0, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x12, 0x30cf79da1482e523 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4e1d6fa973414522 # initialize rs1
li x4, 0xaa880a87e9f01490 # initialize rs2
sllw x12, x1, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x4, 0x38438cebddae13c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x480ef656039679fc # initialize rs1
li x1, 0x1e2cd9efb1523736 # initialize rs2
sllw x4, x2, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x15, 0x0895b7fd3a529c50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x68a760b6b4f16076 # initialize rs1
li x31, 0x036eeb339135ba75 # initialize rs2
sllw x15, x3, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x19, 0x9978ad7df8544664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x60f56cc061544da8 # initialize rs1
li x30, 0xfb8dcdbd0ec05d84 # initialize rs2
sllw x19, x4, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x11, 0xacd10678f7fe4ab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd9a0f0331d016499 # initialize rs1
li x27, 0x67ce0404b9c68e28 # initialize rs2
sllw x11, x5, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x3, 0x5f5897c7cb2d8c46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc0641478b0fd2dd4 # initialize rs1
li x14, 0x88da775a9659b34c # initialize rs2
sllw x3, x6, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x31, 0x0eb5c791ca79e2d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6f62d111eb84f428 # initialize rs1
li x21, 0x625619df10726052 # initialize rs2
sllw x31, x7, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x15, 0x855fe23116c1ec3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x23fadbc776b4159d # initialize rs1
li x23, 0x473d3f85fe67ab51 # initialize rs2
sllw x15, x8, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x23, 0x4e2ce7999612cb8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8e5e64f6bf2d07df # initialize rs1
li x31, 0x9569fdf2ae15ad67 # initialize rs2
sllw x23, x9, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x1, 0x4da79e4aeff479cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe13c364aff329b6c # initialize rs1
li x14, 0x10dc1719a9ca76dc # initialize rs2
sllw x1, x10, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x31, 0x1f82adeefc2623b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8b13c380424a9f8c # initialize rs1
li x23, 0x25fc70e0cfdfaa13 # initialize rs2
sllw x31, x11, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x26, 0xacab31d11841eb6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6f80f574003f360f # initialize rs1
li x9, 0x8acf9ac1a72fd65b # initialize rs2
sllw x26, x12, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0x31d9c059c6cdc16f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd60600d5671d9833 # initialize rs1
li x12, 0x8688ed1cb224262b # initialize rs2
sllw x15, x13, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x31, 0xef7ee5948aab69b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xba33666e8173303c # initialize rs1
li x2, 0xfc8e9a015b6f5926 # initialize rs2
sllw x31, x14, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x21, 0x32dfe8345bc27f76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbefaedd2c5c6e377 # initialize rs1
li x25, 0xb07f22a2417c416c # initialize rs2
sllw x21, x15, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x15, 0x01deaa175dddcd3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf6d3ec79c985e98f # initialize rs1
li x23, 0xf8b5b46dd9d04d34 # initialize rs2
sllw x15, x16, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x9, 0xf3f2a7e785e6c00b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe08daa937f4c06d8 # initialize rs1
li x13, 0xee251a23e1cd081b # initialize rs2
sllw x9, x17, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x8, 0xa6106249f235a2cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2e68d896d3857bb3 # initialize rs1
li x6, 0xe9ec702e1958188c # initialize rs2
sllw x8, x18, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x10, 0x951e98b302464194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xcc51921dd95afc22 # initialize rs1
li x9, 0x44231816b61878c2 # initialize rs2
sllw x10, x19, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x14, 0x553ee0ed77a9ddf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7a17cf95392cd0f9 # initialize rs1
li x16, 0x58373adfe15efaa5 # initialize rs2
sllw x14, x20, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x2, 0xf5539087313d8d8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf507e133a53d96ca # initialize rs1
li x8, 0x79c84cca1907c873 # initialize rs2
sllw x2, x21, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x15, 0xf41328424c28ec6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe4fa470c1da41983 # initialize rs1
li x27, 0xd921adc66ff85242 # initialize rs2
sllw x15, x22, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x6, 0xde153e7321b4fad1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x512ab88f4a03f3a2 # initialize rs1
li x31, 0x87ce683b7e430675 # initialize rs2
sllw x6, x23, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x4, 0x12bc36adbf942ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x57dbd33cbd5dc7c6 # initialize rs1
li x26, 0x0d4dfaa13affa532 # initialize rs2
sllw x4, x24, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x27, 0x37e7f78324810fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6fc81a6728633cfe # initialize rs1
li x16, 0xf52d83f6d1307846 # initialize rs2
sllw x27, x25, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x25, 0x78ece1e3e5700811 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2f538318c97979ae # initialize rs1
li x19, 0x9c6019da9025ac3d # initialize rs2
sllw x25, x26, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x16, 0x480501802f701fac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xef8980b065e3e0ea # initialize rs1
li x14, 0xbb4e6f1f892088f2 # initialize rs2
sllw x16, x27, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0x5ccad104870591b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x577b15ab0daf6e54 # initialize rs1
li x29, 0xcf7f2474ff6d1010 # initialize rs2
sllw x17, x28, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x17, 0x44cb52c02963b2f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x631334f065265c86 # initialize rs1
li x7, 0xb87c4eb93c3b9ce7 # initialize rs2
sllw x17, x29, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x29, 0x815fa1d66cd3f0c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa2483de3eaac6089 # initialize rs1
li x19, 0x0f131d8bb6d428d9 # initialize rs2
sllw x29, x30, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x16, 0x8539881749b0b9e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x127df7b30dc37e9b # initialize rs1
li x29, 0x84d119e3f97f543b # initialize rs2
sllw x16, x31, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x18, 0xd2fe2964646fc95b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6b866d7ab06ef003 # initialize rs1
li x0, 0xbffd09bae6561826 # initialize rs2
sllw x18, x31, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x3, 0x23864c759bec7f5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf3305e4398899af0 # initialize rs1
li x1, 0x19010e6a4c9f6d44 # initialize rs2
sllw x3, x26, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x29, 0x6b84214d9ace4b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc25454ca90040264 # initialize rs1
li x2, 0xf061af7c0ef1b229 # initialize rs2
sllw x29, x6, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x27, 0x7a7db67d28523f49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x928e44dd8bcb559a # initialize rs1
li x3, 0xf4eb7f5d5f4ade9e # initialize rs2
sllw x27, x9, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x15, 0xe4ef7603855e5ebd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x64e905f75474a4f1 # initialize rs1
li x4, 0xf3be2797780eb971 # initialize rs2
sllw x15, x25, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x16, 0x9fcfb0bf392b60e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7a2eaf6a55c0f624 # initialize rs1
li x5, 0x366071e1bc532ba1 # initialize rs2
sllw x16, x19, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x3, 0x21800ae92a09d781 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xace89130f7a76132 # initialize rs1
li x6, 0x9c5625917be4c2ea # initialize rs2
sllw x3, x23, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x8, 0x20cad2a557e072b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4b5bd6bd78873e60 # initialize rs1
li x7, 0xf9758702ee7c5668 # initialize rs2
sllw x8, x11, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0x1e022f0a2ebceab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8e1952cc70f0156c # initialize rs1
li x8, 0xdde8400418111bb6 # initialize rs2
sllw x24, x18, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x1, 0x86ed1581eccab423 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfb5cb54673a3d9e4 # initialize rs1
li x9, 0xa87f09f656948945 # initialize rs2
sllw x1, x6, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x8e57f832363f5048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfc28191d80f3ce48 # initialize rs1
li x10, 0x99cf76a138f12c3f # initialize rs2
sllw x5, x11, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x2, 0xc4ef576ebafaa40c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8b1d4495c311ca29 # initialize rs1
li x11, 0x68b1ca91499a241b # initialize rs2
sllw x2, x16, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x27, 0xd03dada57f8968e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd4a7efb1d0275ab9 # initialize rs1
li x12, 0xddd8daabdda89bb4 # initialize rs2
sllw x27, x13, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x16, 0x61ad6e346cbbcff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x51afde5fdf540e8a # initialize rs1
li x13, 0x2c9e58827c41034a # initialize rs2
sllw x16, x22, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x9, 0x2307a67ccca89ebe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2626b10e79ea86c4 # initialize rs1
li x14, 0x5173330658c32070 # initialize rs2
sllw x9, x25, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x24, 0x7a13e72f33017c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x473347de3f35afe0 # initialize rs1
li x15, 0x4e14c15e25b16af5 # initialize rs2
sllw x24, x21, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x24, 0x76f253bfaefa6291 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xceebb1303e87302f # initialize rs1
li x16, 0x3f0e8b11b789b5b7 # initialize rs2
sllw x24, x14, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0xe939b89a991f0679 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf7ebeb084d74beea # initialize rs1
li x17, 0xa2dc6eeef01615f7 # initialize rs2
sllw x22, x27, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x7, 0xc7bced1660c2b899 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0dccdd624f0415f2 # initialize rs1
li x18, 0xa3d081735f289283 # initialize rs2
sllw x7, x10, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x14, 0x1a5b2a5e4f6315a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd054e204ee155e74 # initialize rs1
li x19, 0xf8dba2f4f1772d93 # initialize rs2
sllw x14, x4, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x3, 0xe976f8743b61d107 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x457bc06a953a0d19 # initialize rs1
li x20, 0xc4ddecec0cd2644e # initialize rs2
sllw x3, x24, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x11, 0xeef7cd19efc33018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb577d20c11391674 # initialize rs1
li x21, 0xe1846da98a1fc097 # initialize rs2
sllw x11, x4, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x6, 0x23accac5de78f6dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x030f825b645a370a # initialize rs1
li x22, 0xcdcaa72394fb2bee # initialize rs2
sllw x6, x5, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x13, 0x0ca053cb10755d10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa640282f872392e4 # initialize rs1
li x23, 0x099fe42194b70237 # initialize rs2
sllw x13, x17, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x14, 0xbe2e54602fff7110 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfd6714996d3cdf28 # initialize rs1
li x24, 0x9450658cb14bcb3e # initialize rs2
sllw x14, x18, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x16, 0x6ffcfff87363249d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xdd0df0563c3b54e5 # initialize rs1
li x25, 0xb8ef8ee26cf057d9 # initialize rs2
sllw x16, x2, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x8, 0x03646ad836e8ad0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x99ffa8fc607ea113 # initialize rs1
li x26, 0xdd35928bcd03f145 # initialize rs2
sllw x8, x29, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x14, 0x8bfff7c6acd8905b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x75f0a94d53f3b3d6 # initialize rs1
li x27, 0xfcbaa4dd3bc3bf7f # initialize rs2
sllw x14, x1, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x31, 0x43b417dd99bfe395 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x84d688ccb79df394 # initialize rs1
li x28, 0xe008f7fb886bd169 # initialize rs2
sllw x31, x5, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x18, 0x4077b0bcc2e6a37c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaa8a157a46a646b4 # initialize rs1
li x29, 0xa225f5c1061e3a97 # initialize rs2
sllw x18, x5, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x3, 0xb834652667496ade # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1121d14b1818cc80 # initialize rs1
li x30, 0xac952a0b78df0480 # initialize rs2
sllw x3, x25, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x10, 0x52f802d4b4adea8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7de6ec6578f05a80 # initialize rs1
li x31, 0xa89b2f2075fe0038 # initialize rs2
sllw x10, x24, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x5452eff7c872b3d0)
li x23, 0x2a093e07e479047e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2a093e07e479047e # initialize rs1
li x0, 0xddc914e85b370291 # initialize rs2
sllw x23, x27, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x1aec2836eb759b46)
li x2, 0x1aec2836eb759b46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1aec2836eb759b46 # initialize rs1
li x13, 0x1aec2836eb759b46 # initialize rs2
sllw x2, x0, x13 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xe2de922230314f57)
li x25, 0x003bcfab713e665f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe2de922230314f57 # initialize rs1
li x28, 0xe2de922230314f57 # initialize rs2
sllw x25, x8, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x18, 0x83e02d4c4b59ee5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x0, 0x45d4c72d9ef21bff # initialize rs2
sllw x18, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0x28951d7134d14368 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sllw x29, x28, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x11, 0x000b2601e19113d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
sllw x11, x30, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x1, 0xcc756c0ea0fe0905 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000001 # initialize rs1
li x0, 0x6dacffe5ea14c4db # initialize rs2
sllw x1, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x29, 0x92fe9bf30b9a5901 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
sllw x29, x16, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x21, 0xb719a0d09f292a10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sllw x21, x17, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0xd914ae5ffba3ae17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs1
li x0, 0xc97c8e2044e07546 # initialize rs2
sllw x18, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x2, 0x31aff4ff9a96c222 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sllw x2, x20, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x5, 0x925bb9ec26e3e37c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
sllw x5, x29, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x18, 0x8c642827f4d03d15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000080000000 # initialize rs1
li x0, 0x8671f54c553da507 # initialize rs2
sllw x18, x26, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x29, 0xa47d115df1df0655 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000080000000 # initialize rs1
li x5, 0x0000000080000000 # initialize rs2
sllw x29, x16, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x9, 0xaa1b3754d805b9cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000080000000 # initialize rs2
sllw x9, x3, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x11, 0x24bba0684478dd41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000080000001 # initialize rs1
li x0, 0x3203fe57213edbd3 # initialize rs2
sllw x11, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x18, 0x52fdce8e65c3c258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000080000001 # initialize rs1
li x6, 0x0000000080000001 # initialize rs2
sllw x18, x12, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x21, 0x05ed8ff0f766c559 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000080000001 # initialize rs2
sllw x21, x27, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x8, 0x5b6878e75f0d09d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x000000007fffffff # initialize rs1
li x0, 0x6c8bd550607d2497 # initialize rs2
sllw x8, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x18, 0xef9a29f70f0e865e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x000000007fffffff # initialize rs1
li x16, 0x000000007fffffff # initialize rs2
sllw x18, x3, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x1, 0xe61a8052635b1897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x8, 0x000000007fffffff # initialize rs2
sllw x1, x4, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x27, 0x86ccec94f2d52d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x000000007ffffffe # initialize rs1
li x0, 0x8a586f7b9eee09a1 # initialize rs2
sllw x27, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x7, 0xfbdbd46dc727de9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x000000007ffffffe # initialize rs1
li x1, 0x000000007ffffffe # initialize rs2
sllw x7, x23, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x3, 0x8bd733f06468e682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x10, 0x000000007ffffffe # initialize rs2
sllw x3, x31, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x11, 0x914956f406b471f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
li x0, 0x6bf1bf8c08b22f99 # initialize rs2
sllw x11, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x29, 0x1f2c31ad50d48c97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
sllw x29, x18, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0x4c2dd5d0259a592b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
sllw x1, x13, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x9, 0x02b858aff3c11409 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
li x0, 0x6d01c43ddcfe3b8c # initialize rs2
sllw x9, x30, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x15, 0xd12245c9a8b7d5d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sllw x15, x25, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x4, 0x0dabb53199bc823d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
sllw x4, x15, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x31, 0x56b9309418fd141b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000aaaaaaaa # initialize rs1
li x0, 0x2567eb8da59bf2f0 # initialize rs2
sllw x31, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x11, 0xf31b5e9a702e0e17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000aaaaaaaa # initialize rs1
li x29, 0x00000000aaaaaaaa # initialize rs2
sllw x11, x25, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x28, 0xaf189a2aa23f7548 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x2, 0x00000000aaaaaaaa # initialize rs2
sllw x28, x7, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x8, 0x5e26d66730e89028 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000055555555 # initialize rs1
li x0, 0x117d50eef1ff1fba # initialize rs2
sllw x8, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x13, 0xeecb09ea20fdd685 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000055555555 # initialize rs1
li x4, 0x0000000055555555 # initialize rs2
sllw x13, x23, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x14, 0x7c1740e0a6860d81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000055555555 # initialize rs2
sllw x14, x8, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x2, 0x251ff107ce3fc849 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000063ae86f7 # initialize rs1
li x0, 0xf2b453005ed50872 # initialize rs2
sllw x2, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x13, 0x9e9eb36d553fc8dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000063ae86f7 # initialize rs1
li x28, 0x0000000063ae86f7 # initialize rs2
sllw x13, x19, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x10, 0x59099e928f4e6c57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000063ae86f7 # initialize rs2
sllw x10, x22, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x1, 0x96d30bf76a30213b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000e3ae86f7 # initialize rs1
li x0, 0x43c87aec7692e54b # initialize rs2
sllw x1, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x30, 0xdd572891a59406c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000e3ae86f7 # initialize rs1
li x8, 0x00000000e3ae86f7 # initialize rs2
sllw x30, x24, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x26, 0xc017ec6105cef563 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x14, 0x00000000e3ae86f7 # initialize rs2
sllw x26, x20, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0xe6a1beb86b371cbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x6, 0xfdc2a1b93229f9c1 # initialize rs2
sllw x20, x29, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x15688c6dfbeb4b41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000001 # initialize rs1
li x27, 0xc3126a0ec04d39db # initialize rs2
sllw x13, x3, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0x3d0f000950d7e099 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x13, 0x90f0926e569dcfb8 # initialize rs2
sllw x21, x22, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x26, 0x8d2200349f6ec0a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000000 # initialize rs1
li x15, 0xd5005b5f854cbd93 # initialize rs2
sllw x26, x3, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x28, 0xbd9eab0258fe19e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x23, 0x5a3198901ae1105b # initialize rs2
sllw x28, x18, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0x54ce87f23ade1efc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
li x26, 0xb825fc13c6ad6c36 # initialize rs2
sllw x15, x24, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x17, 0x42e8e8c9d44cf07e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x29, 0xf02db161e87dfdd1 # initialize rs2
sllw x17, x1, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x10, 0x3067a2a926feb33a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x8, 0x8f3aae7f906c8129 # initialize rs2
sllw x10, x25, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x16, 0x782a6571ba1c7029 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x30, 0xd9bcb8b5cd8dd390 # initialize rs2
sllw x16, x19, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x27, 0x71de0046aa5ad074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0xbabcafe9992b04ba # initialize rs2
sllw x27, x7, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x6, 0x7bc0f014e2bfd379 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x280e2a1e32b69826 # initialize rs2
sllw x6, x1, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x23, 0x3846c2d9b3c04a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x19, 0x78f3dbe5c64985e0 # initialize rs2
sllw x23, x6, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x2, 0x1338d25748a310d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x18, 0x06dd25143d2b0ba5 # initialize rs2
sllw x2, x15, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0x3592c2a03ea66fa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x26, 0x6fe51fe80ae027aa # initialize rs2
sllw x29, x12, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x29, 0x391f71e776e46e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000000 # initialize rs1
li x15, 0x9ca82d94da361279 # initialize rs2
sllw x29, x26, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x22, 0xa3e9769b47276d0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
li x31, 0xe338393652956f04 # initialize rs2
sllw x22, x30, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x11, 0xa2a5bf4a009bac1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1b009d42d8c925bf # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sllw x11, x14, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x30, 0xfe90605cf316e5f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf6ec038fc103b2ef # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
sllw x30, x22, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x21, 0x85cc6909637486ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x046ff0fe57272d30 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sllw x21, x17, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x13, 0x189c564bf65599b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd5cfed996639b871 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
sllw x13, x6, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x1, 0x8785cfa2d3c9562e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x41575e84c3bb55ee # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
sllw x1, x2, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x2, 0x5a90b5813b8a7aee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa011104519e5f6ed # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
sllw x2, x1, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x26, 0xa0dbdf1d01cc5110 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x20e2de39509418c4 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
sllw x26, x18, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x26, 0x209b9dd675b6956f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5afcd698194372bb # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
sllw x26, x17, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x18, 0xfcbd6812bc04e6b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80020d0f8d21eff4 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
sllw x18, x28, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x24, 0x668445522d21c0b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc2d48fbf2e3b06e6 # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
sllw x24, x20, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0x49183e6df5669db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbc082850924a3e6a # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x7, x17, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x13, 0x00404568099b6b77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2f8b5eb251e2170f # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
sllw x13, x5, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x31, 0xcce86ff278daa309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x46975f4a913dad02 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
sllw x31, x23, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0xa0fd91b5ee3576df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdc48fd7b7b00f6eb # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sllw x23, x11, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x29, 0xc02a55b6c7e910f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x312062b96b8a7552 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sllw x29, x23, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x17, 0x5fa02d646cf44034 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xefc3e7fda957e302 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
sllw x17, x21, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x21288e7628cbdb36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4e75872861c73953 # initialize rs1
li x9, 0x4def61152eb63d11 # initialize rs2
sllw x0, x0, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb9fd1a66e64c8198 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x409b7e43cf3b1053 # initialize rs1
li x3, 0xad49061b17ef1504 # initialize rs2
sllw x1, x1, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x63b551898f1c392e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x07cdcb01290e083f # initialize rs1
li x12, 0x4968e0c8eebf9914 # initialize rs2
sllw x2, x2, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xdfe3da8e4a8d79ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4e28e975f22d28d3 # initialize rs1
li x14, 0x460ab9d2e8fb2278 # initialize rs2
sllw x3, x3, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xd073a529115c7798 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe8e8c4a7c06fff7b # initialize rs1
li x23, 0x5a21885a4dba9684 # initialize rs2
sllw x4, x4, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xc83fd7f7db8c5870 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5d0a76664f472458 # initialize rs1
li x17, 0xffc19b29f7fa37e0 # initialize rs2
sllw x5, x5, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x59440f382d97ee65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x19fc46fa0b35ecef # initialize rs1
li x3, 0x4f25a3fd604445d5 # initialize rs2
sllw x6, x6, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x9b8bd2955b4b2168 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9b6114d52763e8d7 # initialize rs1
li x5, 0x9c0647d21f73300c # initialize rs2
sllw x7, x7, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xc2cf4e8b05fd0eb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4c2c6a7d6bb73301 # initialize rs1
li x25, 0x953a10695d3c696c # initialize rs2
sllw x8, x8, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xe3e494cbe5cbad51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0dd5677e82ab0f43 # initialize rs1
li x27, 0x9171767d3985e19a # initialize rs2
sllw x9, x9, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x8f518a4495d9e0cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9fd2c5735c09eac5 # initialize rs1
li x18, 0x52e929cab8fae649 # initialize rs2
sllw x10, x10, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x9b3d1f5b605dbb3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7441b961234f7a5a # initialize rs1
li x20, 0x054a2c88c949e99e # initialize rs2
sllw x11, x11, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x2833ae422db6f2f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x537a8f0ec0b1b5c7 # initialize rs1
li x22, 0xc42734ffc763b3da # initialize rs2
sllw x12, x12, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe6ebe231e4c81c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x86ae68a40183a92f # initialize rs1
li x30, 0x2a732d2279af08c4 # initialize rs2
sllw x13, x13, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xf14bc315f614754d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe47d98220f971a85 # initialize rs1
li x28, 0x6f9140c0cae207b2 # initialize rs2
sllw x14, x14, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8b505332f72a1737 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb86a283384368ab5 # initialize rs1
li x19, 0x266a4fee557ad6ce # initialize rs2
sllw x15, x15, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xb2387f8e4fa2cd42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x362be94e680f028a # initialize rs1
li x15, 0x4ce660fc84f0b443 # initialize rs2
sllw x16, x16, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xa7ad17e05afe9446 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x79bdb14a01d40288 # initialize rs1
li x9, 0xbafc1738041eddc1 # initialize rs2
sllw x17, x17, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x0d40a1859ef281aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9242c81dc587554c # initialize rs1
li x4, 0xfde9d7e76b0a9f68 # initialize rs2
sllw x18, x18, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf4a913665c922516 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x338f20e505e13932 # initialize rs1
li x2, 0xcb78070f234bcb94 # initialize rs2
sllw x19, x19, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xe4631d894918752b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xdd19ae923f5e9cd5 # initialize rs1
li x5, 0x80fc59957f127a69 # initialize rs2
sllw x20, x20, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xe23c90eff4ca6f72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf0c8d10726ae38af # initialize rs1
li x26, 0xec7195894d7b405e # initialize rs2
sllw x21, x21, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xd0c1871028441c65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdf405329e26a50e5 # initialize rs1
li x14, 0x2a4417434ade9e76 # initialize rs2
sllw x22, x22, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x3ab0a406e18b5526 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdc629652f797c660 # initialize rs1
li x12, 0xa40b5f93565960fe # initialize rs2
sllw x23, x23, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x6203d16a027c9ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x65bcf88089b9b8ff # initialize rs1
li x17, 0xfbe6bc8e5dd92214 # initialize rs2
sllw x24, x24, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xb4490ebb60f6b5f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x799fe1c1a1c1501e # initialize rs1
li x8, 0x4294f32fe01bc7d9 # initialize rs2
sllw x25, x25, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x615e1b6299f7c3ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xddf296c7a67ad2e0 # initialize rs1
li x25, 0xba542d6543538c94 # initialize rs2
sllw x26, x26, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x5e7ca46d7643a9d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x256af97523ca2b8b # initialize rs1
li x7, 0x1a0e61ca64fcb4df # initialize rs2
sllw x27, x27, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xb78fdc0806812c79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfc12381f9ae5c0a1 # initialize rs1
li x20, 0x17c5a952491380b6 # initialize rs2
sllw x28, x28, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xba988ed97d46b3fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x04509bb4d99f1af4 # initialize rs1
li x7, 0x42e2e51bca49ab0d # initialize rs2
sllw x29, x29, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4ed3fdec8fcbeccd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x909a8cb9e1ccc738 # initialize rs1
li x22, 0x0ad6cc2e6704e44c # initialize rs2
sllw x30, x30, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x312a9313870ffe79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7100b4684201a892 # initialize rs1
li x5, 0xe19d2da4842740af # initialize rs2
sllw x31, x31, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x5f4159d3da2d5d89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1364868138814166 # initialize rs1
li x0, 0xed4a12071882a22e # initialize rs2
sllw x0, x11, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x9efc98746aa5d346 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6c61450434fc9d71 # initialize rs1
li x1, 0xcb33ea20a2444383 # initialize rs2
sllw x1, x31, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x24497fa2d94ce0ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x85743aff9d150ec3 # initialize rs1
li x2, 0xfdff274c0377a375 # initialize rs2
sllw x2, x3, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x484f5c7980ea3d79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x504fc4561c9c7e33 # initialize rs1
li x3, 0xf64b8a428f7676bb # initialize rs2
sllw x3, x12, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x3a752d20b35458a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8f23f9023c7824d1 # initialize rs1
li x4, 0x5f1c9df1ee2eb237 # initialize rs2
sllw x4, x18, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x8ddba2a1f76fd20f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd8f6553368c6ee08 # initialize rs1
li x5, 0xb4efceca161005d3 # initialize rs2
sllw x5, x30, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xaa6c90f8441357de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xff3c05230db4a4b8 # initialize rs1
li x6, 0x13b623277001df70 # initialize rs2
sllw x6, x13, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xbb1184c21d43ee83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x72f56a2966c40546 # initialize rs1
li x7, 0x8ee37e1c99fb55e3 # initialize rs2
sllw x7, x21, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xd6d3a335746a306e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd48e45cea1121584 # initialize rs1
li x8, 0x2f98275bef8fafb0 # initialize rs2
sllw x8, x24, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xec973fb566aa8522 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfa20dcb1d880d860 # initialize rs1
li x9, 0x43c1b83f2029daf0 # initialize rs2
sllw x9, x6, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x56a1b82d49ae46f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x043841d084083947 # initialize rs1
li x10, 0x34e5555339d4bee9 # initialize rs2
sllw x10, x27, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x49b536dae54c3969 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdd9133293d1db42f # initialize rs1
li x11, 0x5b758b8bc8a7004b # initialize rs2
sllw x11, x1, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xb094605a3bf7803a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe1c880eab879dbe3 # initialize rs1
li x12, 0x9ec6bcbb99bfc8f5 # initialize rs2
sllw x12, x14, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x19fad478cbd03788 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x007ad6061c922491 # initialize rs1
li x13, 0x48dc811c9199ea71 # initialize rs2
sllw x13, x7, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xee977626634fb8fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xecdf1b4f2d008698 # initialize rs1
li x14, 0xfadaef755daefe09 # initialize rs2
sllw x14, x3, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x0948d4784965a9b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf65b7143daf39245 # initialize rs1
li x15, 0x5d0d01a01c58f9dd # initialize rs2
sllw x15, x10, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x9ec1b66a6eec3155 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x818f06078e549976 # initialize rs1
li x16, 0xaaaf766ecbadb58b # initialize rs2
sllw x16, x22, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x95826f5a5e60e6b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbd0093223384faad # initialize rs1
li x17, 0xdf4bd77424ff6df6 # initialize rs2
sllw x17, x29, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x0b474251b4ff0717 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd42a1ccac8a5c03b # initialize rs1
li x18, 0x216cd889c4b8e5be # initialize rs2
sllw x18, x26, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x2f51b04c712f575c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bb6cae3eae28918 # initialize rs1
li x19, 0x210ca7980a62c0c2 # initialize rs2
sllw x19, x31, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x8cde5e9ac253bfbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x90f161cbb0b29573 # initialize rs1
li x20, 0xf51ef017b9b058b0 # initialize rs2
sllw x20, x24, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xb9fa3c33299ab202 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x64e7ad74929371cd # initialize rs1
li x21, 0xb2db1014ec1c37fe # initialize rs2
sllw x21, x30, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x2b03e9c99c6053f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6d929afd356528a8 # initialize rs1
li x22, 0x8b5cf5b8b320711d # initialize rs2
sllw x22, x10, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x2937fcfeb23c2de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5a74673f746260f5 # initialize rs1
li x23, 0x71cf819995a25d62 # initialize rs2
sllw x23, x3, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xeaee7a028451a32e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x05b8fd7c426c21be # initialize rs1
li x24, 0x3d8670ab461fa152 # initialize rs2
sllw x24, x15, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xd55526d4a196c927 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc95a0e5982a51d15 # initialize rs1
li x25, 0x7888af87a63d5c72 # initialize rs2
sllw x25, x8, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x9eb0e20809c11443 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5998a28befac2947 # initialize rs1
li x26, 0x31d1d83b6fe648b1 # initialize rs2
sllw x26, x11, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x55fd95d1f3183861 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4621071cddc50c9a # initialize rs1
li x27, 0x12bdeeb3f7c524fd # initialize rs2
sllw x27, x9, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x253531160248ded1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x26bdb7d46f9344fb # initialize rs1
li x28, 0x97220d5dad625f22 # initialize rs2
sllw x28, x24, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xbeaf56fa436d171c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x752a3eaa67f1f006 # initialize rs1
li x29, 0x9b1b27b4a28f4596 # initialize rs2
sllw x29, x22, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x3ca63df4e1368e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x218c83cd46c10d46 # initialize rs1
li x30, 0x3e21fbdfab866737 # initialize rs2
sllw x30, x27, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x31a2d03af5f82efa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x308ac19d52fd0770 # initialize rs1
li x31, 0xd046db9659d9701d # initialize rs2
sllw x31, x16, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xdd3484ac3f6afd32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe4af1457ed361e07 # initialize rs1
li x0, 0xcd5142fb1b958f28 # initialize rs2
sllw x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x124f1601783fee0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbad3d1fa3bf04edc # initialize rs1
li x1, 0x51b658b07fbcd535 # initialize rs2
sllw x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x12324b8261624ba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xae5bb7915b9c08af # initialize rs1
li x2, 0xc92a2aec6fdcb23e # initialize rs2
sllw x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x84cd9ae901a42ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xcd45af2f95bf4d1f # initialize rs1
li x3, 0x7dfc663cab6a08a6 # initialize rs2
sllw x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x1706ada179fc1580 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2dff09fa43b1b226 # initialize rs1
li x4, 0xd9ace5dcba74d7c4 # initialize rs2
sllw x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x5bec9959de6e7e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x701396c5399f39c0 # initialize rs1
li x5, 0xf87c4e905bc8d775 # initialize rs2
sllw x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x2020fddadca56ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4aa4c1317323bfbc # initialize rs1
li x6, 0x6b2fddad450e8621 # initialize rs2
sllw x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0xbd01ebcc9dcb458f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6932a1824b8f5fb1 # initialize rs1
li x7, 0x97b96d6eb7ff51da # initialize rs2
sllw x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x18bf0af9e67a00ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2991ae0fae300b11 # initialize rs1
li x8, 0xb364a57bfcae72b0 # initialize rs2
sllw x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x3169dfe26204bb3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb27be1b71a887db9 # initialize rs1
li x9, 0xab133b0cc6348e20 # initialize rs2
sllw x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x408552696906437b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x213f37557e47c461 # initialize rs1
li x10, 0x146deb445ed6349b # initialize rs2
sllw x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x30e77747a20f4192 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x21eaa822d01e2c1f # initialize rs1
li x11, 0x2dc07ddbcbe0aa2b # initialize rs2
sllw x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x92ad9150f08e6e48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x55141bf83971ff29 # initialize rs1
li x12, 0x14cb03fbd31783eb # initialize rs2
sllw x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x4cdfa22b420cfeae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1c66cfc2f55eb31a # initialize rs1
li x13, 0x9c68492117bb6716 # initialize rs2
sllw x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x14a7da272a538b0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbe1db50073058166 # initialize rs1
li x14, 0xfb59ec5040e8511d # initialize rs2
sllw x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x71c8c2b27ba3daea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf9d31ae34870e166 # initialize rs1
li x15, 0xe1756fea74575aee # initialize rs2
sllw x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xee7ef5f46f1532f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe5223e247aaccc87 # initialize rs1
li x16, 0x8d8ab58d07d31b30 # initialize rs2
sllw x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xf59401d8fb645900 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf5a4db0f8e819ec6 # initialize rs1
li x17, 0x868c41f72682c8e1 # initialize rs2
sllw x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xca4ac10f5444161c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1da9ec1b4e42b294 # initialize rs1
li x18, 0x67fcb0a45430dc7c # initialize rs2
sllw x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x06ae3771b2a5c8bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x43fa1e5d4f325306 # initialize rs1
li x19, 0x294f67549a243098 # initialize rs2
sllw x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xb30f625b02ec3b22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x471f0a8fa94b2141 # initialize rs1
li x20, 0x26d1f72506c6ca9b # initialize rs2
sllw x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xcd5b7d84bb9e7145 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x14e6b7a01a69d7c9 # initialize rs1
li x21, 0xd0dc1ce0898e296d # initialize rs2
sllw x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x4d95dcc28ddd417b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x72e88a5733b7a334 # initialize rs1
li x22, 0x00319d5da8601a40 # initialize rs2
sllw x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x8cb048c719a78574 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6c77824464d27c8e # initialize rs1
li x23, 0xe5426e9c34f61ab3 # initialize rs2
sllw x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x0725a1ea2a8a2a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x18d935f5d2902be1 # initialize rs1
li x24, 0x75d9005fb45e8ac0 # initialize rs2
sllw x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x5eb4fe5f9ddbcd7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1d9579cad3d5b534 # initialize rs1
li x25, 0x134e340807a0964c # initialize rs2
sllw x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x32774ea3ebe901e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x905274c701ca3c8c # initialize rs1
li x26, 0x2482b717309e6f30 # initialize rs2
sllw x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x04d770da1771a7a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x46524c329fdefcb3 # initialize rs1
li x27, 0x44bd3e21c3f6c05a # initialize rs2
sllw x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xb217dd899f3fa62f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb0eb99fc55c8fb65 # initialize rs1
li x28, 0x1286e3a725e28089 # initialize rs2
sllw x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x49ade7f4b453e383 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf5da0faf639511e9 # initialize rs1
li x29, 0x65f47e37673a6150 # initialize rs2
sllw x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x7e0a6cbcc7a86f99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x48a330e1f0ce457e # initialize rs1
li x30, 0xcecff4d0bcd91334 # initialize rs2
sllw x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xbb5dd0c3cf5a8828 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaeab31751c68556a # initialize rs1
li x31, 0x4b96ad2b56f9feb4 # initialize rs2
sllw x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x28, 0x2cbf6d1e14451d95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7bba8fd9028184d9 # initialize rs1
li x0, 0x9d6762d95031f31d # initialize rs2
sllw x28, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x23, 0xdef7da737eebf0d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x71985450e3f98705 # initialize rs1
li x1, 0xa8878cd66731f9e9 # initialize rs2
sllw x23, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x31, 0x762d206989b8ed1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xbbf00fc74e5f34cb # initialize rs1
li x2, 0x62647a1f4dcfe206 # initialize rs2
sllw x31, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x4, 0x4ad432d828dfe3cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7b841d1e4c9a9f8c # initialize rs1
li x3, 0xdae68888dd953312 # initialize rs2
sllw x4, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x7, 0x83f1b75ec1100885 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x12f25002e1fd8578 # initialize rs1
li x4, 0x2adc1b2da4e9fc44 # initialize rs2
sllw x7, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x27, 0xc2b45cef200a5001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7bab45f99f85fbe3 # initialize rs1
li x5, 0x6924363a7ae62cd3 # initialize rs2
sllw x27, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x15, 0xd8b0eb8b9ca8712f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x1f2d2efc229a5eb1 # initialize rs1
li x6, 0x4444a26b37ce994e # initialize rs2
sllw x15, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x10, 0x48d52be3a5fa8d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x136c870e526e4225 # initialize rs1
li x7, 0xa76c840be0655661 # initialize rs2
sllw x10, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x23, 0xf312b5f01debfcfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd0e44da0a3e87115 # initialize rs1
li x8, 0xc3650073adb2bbcf # initialize rs2
sllw x23, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x6, 0x7db2f797741bb1d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfd4893158e0aa455 # initialize rs1
li x9, 0xc0d0f97fb46790f8 # initialize rs2
sllw x6, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x31, 0x3ab4411b3b30d5a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x395737ab878512d3 # initialize rs1
li x10, 0xead1ca912fcbce16 # initialize rs2
sllw x31, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x15, 0xef64a2cf2160c668 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x07b90b932626af84 # initialize rs1
li x11, 0x08b7e580b5e34828 # initialize rs2
sllw x15, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xf8ac5ffc5b0aaf02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe3ad6df9b1559d2b # initialize rs1
li x12, 0xcf7124d75a40eb78 # initialize rs2
sllw x12, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x18, 0xf603c1ebd4e605c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8674796ce616df56 # initialize rs1
li x13, 0xe2faf85f97fd72dc # initialize rs2
sllw x18, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x22, 0x4d1a130c3d5a38fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaa94071bc09ef457 # initialize rs1
li x14, 0x6106731d0cc8487d # initialize rs2
sllw x22, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x24, 0x5033afe6f9524aad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbff1ce7b8902da73 # initialize rs1
li x15, 0x672df48af7d7e18b # initialize rs2
sllw x24, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x11, 0x2a08d02610821fa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf5d6d931e9c3cdb1 # initialize rs1
li x16, 0x2a203e706a3f5e1d # initialize rs2
sllw x11, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x20, 0x564fc3a0322c4caa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xefa815e8d632b340 # initialize rs1
li x17, 0xe83c125b4dac78b8 # initialize rs2
sllw x20, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x4, 0xf217f491fa6591db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x49df36983a0cbcd4 # initialize rs1
li x18, 0xb40fdbf3c8b72a06 # initialize rs2
sllw x4, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x23, 0x7bef554e0c026e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9705ba06ce3164a3 # initialize rs1
li x19, 0x4105055213e23a9e # initialize rs2
sllw x23, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x8, 0xa7b1483a4624b10d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1ce229d91ac0eb8c # initialize rs1
li x20, 0x92145e85796f42a5 # initialize rs2
sllw x8, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x10, 0x03b7ec501f2b4c38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2d86e114b4568705 # initialize rs1
li x21, 0xe0bc065794496f2a # initialize rs2
sllw x10, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x7, 0x68895e49570cec84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x31fba668a87c9cf5 # initialize rs1
li x22, 0x3f6c620fa55bebc1 # initialize rs2
sllw x7, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x24, 0x1556e5a9593c8a4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaa545b93b03c56da # initialize rs1
li x23, 0x6e3489b9bcc1d6e6 # initialize rs2
sllw x24, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x14, 0x30206b2b3e5c4f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x676030c267e3dbd4 # initialize rs1
li x24, 0x2a9972fdd85aee5c # initialize rs2
sllw x14, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x4, 0x26f7f4a2253643f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xe243dc082571a6cd # initialize rs1
li x25, 0x13f9940c1f14a026 # initialize rs2
sllw x4, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x7, 0x5c56f45992e608be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1ad2003a7e2447d7 # initialize rs1
li x26, 0x01db7b25123b5529 # initialize rs2
sllw x7, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x13, 0xa0c7af1da3603db4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x67b71ee9fc8ab0f0 # initialize rs1
li x27, 0xf70974f1850b55ca # initialize rs2
sllw x13, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x24, 0x74155bbdfad8d547 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb9200046c7d41a20 # initialize rs1
li x28, 0x6732a8627868bdc5 # initialize rs2
sllw x24, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x5, 0x4d40115c69163028 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x48dbdc9eee3f70d6 # initialize rs1
li x29, 0xb3a9fed5090b7b02 # initialize rs2
sllw x5, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x31, 0x7a40256cc9a678f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa4792d9f44cf0594 # initialize rs1
li x30, 0xb15224dadc67c35a # initialize rs2
sllw x31, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x5, 0xe815f733ad6f8b63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x72e4db95d65442b7 # initialize rs1
li x31, 0xde4f949e51dec6b6 # initialize rs2
sllw x5, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x45160c3ee075982c)
li x31, 0x7ed7a7bcb02ce03d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x45160c3ee075982c # initialize rs1
li x3, 0xd73d96340dedf6db # initialize rs2
sllw x31, x30, x3 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x4f4e3aa0307bca43)
li x19, 0x8f05f69985e2c9fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb0b1c55fcf8435bd # initialize rs1
li x15, 0xf03b7f98c90db143 # initialize rs2
sllw x19, x20, x15 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
