///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/M//WALLY-COV-divw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.654904
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x549cc0a58dbff5d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3c24acd8be068cc3 # initialize rs1
li x4, 0x0d8489038c323c6e # initialize rs2
divw x0, x26, x4 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x99d5cb2fd7992e4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3b8ee7f0cf372905 # initialize rs1
li x24, 0x36197aca64f4729e # initialize rs2
divw x1, x18, x24 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x31346d864bb84f79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa199456a0c00108f # initialize rs1
li x14, 0xb495a5cc25d7ac80 # initialize rs2
divw x2, x25, x14 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x4f509b52287a744f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x9935f595f07efa96 # initialize rs1
li x29, 0xbbf586e11a01f4d0 # initialize rs2
divw x3, x21, x29 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x980f1b4b2c9cc9d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x09ed05f72263218a # initialize rs1
li x6, 0xc95286e985bd28a0 # initialize rs2
divw x4, x23, x6 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x923633dae6c79abb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x11009867ee8a239b # initialize rs1
li x30, 0xa9eb40722b8dd23c # initialize rs2
divw x5, x3, x30 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xcf06b3efaaf61a69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x823edb6f32d5cc90 # initialize rs1
li x28, 0x3f04e0820c9a6f5e # initialize rs2
divw x6, x4, x28 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x44dc735df6f5400d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0891d352a31ddbcd # initialize rs1
li x3, 0x736adfebcd8a4d90 # initialize rs2
divw x7, x13, x3 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x8901d5d438c46497 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2c24d9893d6e3c0d # initialize rs1
li x16, 0x172972729df8e27d # initialize rs2
divw x8, x18, x16 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb4c964229dc8158a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x102d812e47e94bc9 # initialize rs1
li x11, 0x6ee0d64c11b30e65 # initialize rs2
divw x9, x23, x11 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xa3178054a3c08d75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x728540d2400c9330 # initialize rs1
li x21, 0xf6f454f9e0316af9 # initialize rs2
divw x10, x16, x21 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xdfe65e720cd32850 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x45286682d189a97f # initialize rs1
li x6, 0xb9a27bc25f9cf3e7 # initialize rs2
divw x11, x12, x6 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x133a4ffd2e65099f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9637b8585d6d9218 # initialize rs1
li x13, 0x6d214c6669eea82d # initialize rs2
divw x12, x18, x13 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x1fe4cdaa8964c822 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd4b3bd22e2491239 # initialize rs1
li x5, 0x4d54b8699371d506 # initialize rs2
divw x13, x30, x5 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x0420ea500928157b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd3392b89a9951cc0 # initialize rs1
li x14, 0xd4f99d272e772cd7 # initialize rs2
divw x14, x17, x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf86cb7f3f00c8b0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xcb806d415602e9b7 # initialize rs1
li x2, 0x600aeaf24d098560 # initialize rs2
divw x15, x16, x2 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd9fcfd9303fb8386 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd64638265ec6f382 # initialize rs1
li x13, 0xc0b61b1cf30d0133 # initialize rs2
divw x16, x27, x13 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x3ddd1dddd3981b0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe516ee35d8ec883c # initialize rs1
li x24, 0x53f57277a74819f5 # initialize rs2
divw x17, x31, x24 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x54361443c5b57c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xac41bbd9116dac5c # initialize rs1
li x29, 0x3e8a5bd47e4aee06 # initialize rs2
divw x18, x9, x29 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xf3e81462b76a3a2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x06440ce6d58f6e9a # initialize rs1
li x30, 0x843b758ad59c2e75 # initialize rs2
divw x19, x24, x30 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xc58a0d35bbc3106c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x530da7b45dc45ebb # initialize rs1
li x20, 0xb0300318db200915 # initialize rs2
divw x20, x31, x20 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xd97a044a9e266e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd39e9cbb6843e0ca # initialize rs1
li x2, 0x193f56283b648a86 # initialize rs2
divw x21, x3, x2 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x17ce76e9f0416c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6c6bc29d5d4a869d # initialize rs1
li x22, 0x84a36176229c393c # initialize rs2
divw x22, x13, x22 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x09a7066d470ea509 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6c0611f0866c06f7 # initialize rs1
li x5, 0x9f5d4a22dd3eea4a # initialize rs2
divw x23, x2, x5 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xd32fe3bdab7b33c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xadf74ca693af5714 # initialize rs1
li x25, 0xd395c2960f7bb622 # initialize rs2
divw x24, x1, x25 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xfd6fc0b9f1c3bd1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0c788d3a816f004e # initialize rs1
li x9, 0xcdc6cfc98a5347d0 # initialize rs2
divw x25, x30, x9 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xdc6c96a8711a5f5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc6e8fcd1160fed2b # initialize rs1
li x1, 0xee1a41e3e8832d7e # initialize rs2
divw x26, x24, x1 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x3be6334c3ea72458 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe65c4232d30a03c6 # initialize rs1
li x13, 0x094605782be452fe # initialize rs2
divw x27, x30, x13 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x6623a026123f2e5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x75aafdb6a8c55737 # initialize rs1
li x5, 0x56886afebdd70fcf # initialize rs2
divw x28, x6, x5 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xa89a6e37f671bf62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x63ac22703f792352 # initialize rs1
li x14, 0x305da5acc3e012a7 # initialize rs2
divw x29, x19, x14 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x1083cc5034c24c6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xcae9dbb6f9581296 # initialize rs1
li x16, 0xb0594a80c021e855 # initialize rs2
divw x30, x28, x16 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xfe90e1d621c5f6a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x30696a950ab5ba6a # initialize rs1
li x9, 0x64449182808f7a6d # initialize rs2
divw x31, x2, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x26, 0x106338515843ea7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5eab653e0624a728 # initialize rs1
li x27, 0x036245d85b7155f5 # initialize rs2
divw x26, x0, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x5, 0x17df3eee28159174 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x76421d705edd60b4 # initialize rs1
li x24, 0xa6087b7562a90b96 # initialize rs2
divw x5, x1, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x11, 0xc12672d997704b44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xea714660cab808dd # initialize rs1
li x10, 0x130385cd0a1ead7d # initialize rs2
divw x11, x2, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x12, 0x0d06f93d21fbc793 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8099d4055a347be7 # initialize rs1
li x5, 0x157beaaca6754641 # initialize rs2
divw x12, x3, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x10, 0xae14ae134fd92838 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfc1132faedd6f026 # initialize rs1
li x21, 0x6825a0199632d6ca # initialize rs2
divw x10, x4, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x3, 0x0a268c3ec1b6d1ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xedaedbff059a5a5b # initialize rs1
li x29, 0x8c6caf48a622453d # initialize rs2
divw x3, x5, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x10, 0xe8a327848f7860f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x432fccf75b69e5c7 # initialize rs1
li x3, 0x5df80e6932aaa7ca # initialize rs2
divw x10, x6, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x8, 0xb88bfc39fbfadd4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x353e1ae6c1719dff # initialize rs1
li x22, 0x7f4445a4851cbcd4 # initialize rs2
divw x8, x7, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x27, 0x02892aff397f2783 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5cf24a4aff7ffba2 # initialize rs1
li x11, 0xbb410b9ac453862d # initialize rs2
divw x27, x8, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x23, 0xa493d5081a1826ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x99c1b6984749bec4 # initialize rs1
li x26, 0x08fd9fa3fb7258ca # initialize rs2
divw x23, x9, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x17, 0x1fa488d13b111841 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x52fac598ea354b34 # initialize rs1
li x15, 0xfec07bb8306aa69e # initialize rs2
divw x17, x10, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0x01f2672b1d29530d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd524722e66013ea7 # initialize rs1
li x25, 0x2af944040395a8a1 # initialize rs2
divw x14, x11, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x6, 0x8f68b9ce514bf15d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x522f222002112c2b # initialize rs1
li x23, 0xd0fc062e1597c648 # initialize rs2
divw x6, x12, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x3, 0x63133715d508f542 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc92c1bb42d4a6e2c # initialize rs1
li x18, 0xc5593f2e70823b26 # initialize rs2
divw x3, x13, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x19, 0x5bf7835fc0f88408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8bccfd02c544e5e5 # initialize rs1
li x3, 0x4e2d90afd524a11b # initialize rs2
divw x19, x14, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x3, 0x7318f4d343cf782b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd1181f1ecc2d221f # initialize rs1
li x24, 0x45098ff2b93cd86f # initialize rs2
divw x3, x15, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x5, 0x085886af1a827257 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9a1171497f784638 # initialize rs1
li x23, 0xf0b0a22c1ba1aed3 # initialize rs2
divw x5, x16, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x16, 0x917289c73e1a7b3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd1cc3fff9c205156 # initialize rs1
li x21, 0x23d957ace752d968 # initialize rs2
divw x16, x17, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x29, 0x7566c5ff6a76163a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x76e28fe9d8fdfb53 # initialize rs1
li x1, 0xc6b9f36c6fe394ec # initialize rs2
divw x29, x18, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x17, 0x70c455e50e7d0d03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb97c3fbcc4aa4a93 # initialize rs1
li x9, 0x79481dc2f34ba60d # initialize rs2
divw x17, x19, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x25, 0xd898234ea9a3aa6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x31960a56e75b8d3d # initialize rs1
li x24, 0x5e6125be1137905a # initialize rs2
divw x25, x20, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x22, 0xb57dcdd9c1e12d78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3e2d19d3903ca27d # initialize rs1
li x17, 0x4a93a98bd3ec471d # initialize rs2
divw x22, x21, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x17, 0xd8e5a7390b6ec858 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x06146629569cece2 # initialize rs1
li x23, 0x4aceb494040f22f1 # initialize rs2
divw x17, x22, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x10, 0x101468c60b921203 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x90019a9ea3fd729c # initialize rs1
li x8, 0xe89782d7e3039f04 # initialize rs2
divw x10, x23, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x7, 0xde2a683c81a8c74d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x4ee6581b9e1afff7 # initialize rs1
li x26, 0x8957a551bb4ee465 # initialize rs2
divw x7, x24, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x17, 0x00dc892b790018ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x001f1ff59376c8b1 # initialize rs1
li x4, 0xbead31d856031389 # initialize rs2
divw x17, x25, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x13, 0x5219e224de122794 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe02540b5c664babe # initialize rs1
li x27, 0xc8d1f2944a591697 # initialize rs2
divw x13, x26, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x4, 0xc49159c00728db3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0ff75b230ba40276 # initialize rs1
li x10, 0x13cce841c78af00f # initialize rs2
divw x4, x27, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x4, 0x6c02e7c50da623c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0a5581c987ea4740 # initialize rs1
li x17, 0x308660b35f6f4c2e # initialize rs2
divw x4, x28, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x4, 0x7841fea47f062ed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc65d75f47745db4c # initialize rs1
li x26, 0x5dd64ccaca140864 # initialize rs2
divw x4, x29, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x11, 0x7c6046d863cdf128 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8cf127492ba0bebb # initialize rs1
li x7, 0xed20450ce8abcd03 # initialize rs2
divw x11, x30, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x13, 0x0061701b87955a20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf90f38c86048554c # initialize rs1
li x18, 0x976de95066d99f5e # initialize rs2
divw x13, x31, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x28, 0x3f795629bff17352 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf037c0e612903e94 # initialize rs1
li x0, 0x1a903f0d64e09125 # initialize rs2
divw x28, x25, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x12, 0xdc0e62877a9ed2a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9b68b4cc7b26605b # initialize rs1
li x1, 0xba3f388f8ec0031f # initialize rs2
divw x12, x3, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x4, 0xfe6e15d79adea3b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x03af901ecc6dc519 # initialize rs1
li x2, 0xfd87eeb07952a1e4 # initialize rs2
divw x4, x20, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x24, 0xaf6597ff4159ddda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5c8f5f9252fde422 # initialize rs1
li x3, 0xb0256c951a2707b2 # initialize rs2
divw x24, x23, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x25, 0x947b898709061d94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbbc9cab8c2ec3f3c # initialize rs1
li x4, 0xbf95f14e78ef8571 # initialize rs2
divw x25, x14, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x6, 0x5ebe7463041ddcf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x002ab77607233eb9 # initialize rs1
li x5, 0xdfd44f1f7b06f811 # initialize rs2
divw x6, x13, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x27, 0x356465bc059b9625 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4e9bdf5ece3180d7 # initialize rs1
li x6, 0x56b3ce216a96ee9c # initialize rs2
divw x27, x22, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x5, 0x7c79856f7f22cd31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x24640747b05e55ff # initialize rs1
li x7, 0x39499f8716967aa2 # initialize rs2
divw x5, x4, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0xd9c9354e054f2190 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbf51124d9ace0fd5 # initialize rs1
li x8, 0x05c9ec5b2aa5d202 # initialize rs2
divw x23, x7, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x26, 0x56ad972ab1a5b866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf976c8e60347bb49 # initialize rs1
li x9, 0x6190ff1b9e9e6958 # initialize rs2
divw x26, x15, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x26, 0xef13218918e2d6c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc76a1f863fa6155e # initialize rs1
li x10, 0xd159c4d32e08006d # initialize rs2
divw x26, x9, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x29, 0x9ae52d2b44c1d590 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5b608d6a0757ef15 # initialize rs1
li x11, 0x579831b671db1bb9 # initialize rs2
divw x29, x6, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x2, 0x02001d27711acb67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x91480399dc440a8a # initialize rs1
li x12, 0xa47e043d8ef0fd03 # initialize rs2
divw x2, x3, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x23, 0xdb00e7754026783b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2c8f93ebcc2fcc2b # initialize rs1
li x13, 0x888ceb55a8fc09cf # initialize rs2
divw x23, x3, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0x3fb44eca8751c33c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x42684a7466b1d741 # initialize rs1
li x14, 0xfa26bca4d224e100 # initialize rs2
divw x24, x8, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x24, 0xeb3eb07cbfd08a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1beb8a16d3417f1c # initialize rs1
li x15, 0x8cdd752677af7292 # initialize rs2
divw x24, x9, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x8, 0x6f85beb8fdbc1227 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x804074714ae2590f # initialize rs1
li x16, 0xeac4e9a3aea96cb1 # initialize rs2
divw x8, x7, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x4, 0x451fe2cbbbb61eb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd687ba6acc33d48f # initialize rs1
li x17, 0x0fc6a08e7502271a # initialize rs2
divw x4, x2, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x25, 0x1fa57f3fe67159c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4c78c8abc0042520 # initialize rs1
li x18, 0x98cb28ebff457939 # initialize rs2
divw x25, x21, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x15, 0xe0367eb31c0ace38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x15515d4daa7f7bdd # initialize rs1
li x19, 0x49b575cf8838cace # initialize rs2
divw x15, x9, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x5, 0x51bf62624810d02b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0045baa493b12dc9 # initialize rs1
li x20, 0x3b58c96c1cca8985 # initialize rs2
divw x5, x1, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x25, 0x1c5666625cb777c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xafc26b06437f63f6 # initialize rs1
li x21, 0x29d6025c7301edfb # initialize rs2
divw x25, x15, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x14, 0xb721d57e64da96c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd08d5906a0336b0b # initialize rs1
li x22, 0xeed4546ce4b339b5 # initialize rs2
divw x14, x21, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x9, 0xa3428fc078cbe0bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xecaac48483d393c7 # initialize rs1
li x23, 0xe270eddbc17c1d0e # initialize rs2
divw x9, x28, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x26, 0xc1cc4b6eb3e9550c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1eb7559e3f0e9c7a # initialize rs1
li x24, 0x493ff06af6ef1cc3 # initialize rs2
divw x26, x28, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x2, 0xd51206f4fcb8fdde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb8d624e74658c094 # initialize rs1
li x25, 0xa22f21a034a361fe # initialize rs2
divw x2, x26, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x23, 0x99fe8b8ce6499b68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc3815d2e9306707b # initialize rs1
li x26, 0x60163cca60d065bf # initialize rs2
divw x23, x6, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x31, 0xa2ae5eb1308b80f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xcf9b2a6d56451817 # initialize rs1
li x27, 0xca838ea7a552790f # initialize rs2
divw x31, x23, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x6, 0xf2255e1a8761f91e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x703cf4cbf7cdf22d # initialize rs1
li x28, 0x806acaf9fbe4650e # initialize rs2
divw x6, x13, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x11, 0x04666fc5780baa66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9ac43d3b725a99f7 # initialize rs1
li x29, 0x54fcd36bc9d8a7bc # initialize rs2
divw x11, x25, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x22, 0xaa1cd20c82ef7d06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xba23643828c95c9a # initialize rs1
li x30, 0xd9d3750647285ba7 # initialize rs2
divw x22, x20, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x25, 0xc75c2c01d2b25703 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x407c9963b5834ae0 # initialize rs1
li x31, 0xbbff6324524aac35 # initialize rs2
divw x25, x19, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x618fbdc3f732c261)
li x11, 0x21286db45c84d368 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x21286db45c84d368 # initialize rs1
li x0, 0x88e4542c82693734 # initialize rs2
divw x11, x3, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xf0fdbb81b9e10653)
li x6, 0xf0fdbb81b9e10653 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xf0fdbb81b9e10653 # initialize rs1
li x2, 0xf0fdbb81b9e10653 # initialize rs2
divw x6, x0, x2 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x165d50412f612982)
li x8, 0x95888cb8e902ee05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x165d50412f612982 # initialize rs1
li x31, 0x165d50412f612982 # initialize rs2
divw x8, x5, x31 # perform operation

# Testcase cmp_gpr_hazard raw test
divw x10, x6, x25 # perform first operation
divw x5, x10, x27 # perform second operation

# Testcase cmp_gpr_hazard raw test
divw x31, x3, x11 # perform first operation
divw x1, x8, x31 # perform second operation

# Testcase cmp_gpr_hazard waw test
divw x5, x19, x1 # perform first operation
divw x5, x31, x28 # perform second operation

# Testcase cmp_gpr_hazard waw test
divw x6, x13, x25 # perform first operation
divw x6, x13, x1 # perform second operation

# Testcase cmp_gpr_hazard war test
divw x8, x22, x3 # perform first operation
divw x22, x18, x27 # perform second operation

# Testcase cmp_gpr_hazard war test
divw x18, x9, x7 # perform first operation
divw x7, x8, x25 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x23, 0x4d3b260fc485f92e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000000 # initialize rs1
li x0, 0x4dc524c020567d33 # initialize rs2
divw x23, x26, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0xd43be19d0d776b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
divw x10, x4, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x20, 0x96664e588d2a7d8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
divw x20, x6, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x11, 0xd52e5ca937a9b8e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
li x0, 0xca27191282486bd8 # initialize rs2
divw x11, x24, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0x972cc51b1f551b4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
divw x19, x4, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0x89861bb6f17135f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
divw x25, x28, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x14, 0x07383d912279676b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x0, 0xb31c5fc87f321a34 # initialize rs2
divw x14, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x5, 0x539aefb36b27a63e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
divw x5, x10, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x25, 0xed475c7872739301 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
divw x25, x11, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x2, 0x0cbc94a833955ed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000080000000 # initialize rs1
li x0, 0x771372be301f614b # initialize rs2
divw x2, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x8, 0x6572bd77a9a3c25c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000080000000 # initialize rs1
li x3, 0x0000000080000000 # initialize rs2
divw x8, x12, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x29, 0xd523936c3f93bd5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000080000000 # initialize rs2
divw x29, x4, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x22, 0x890786d48cecde3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000080000001 # initialize rs1
li x0, 0x88b9d55ec90a10e2 # initialize rs2
divw x22, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x28, 0xdbf303a0d854a0e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000080000001 # initialize rs1
li x4, 0x0000000080000001 # initialize rs2
divw x28, x18, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x5, 0x13d24b68ca6bbf75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000080000001 # initialize rs2
divw x5, x7, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x24, 0x791c63568a95485d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000007fffffff # initialize rs1
li x0, 0x61f02b9e22cd0bcc # initialize rs2
divw x24, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x4, 0x417de7a0af78d7b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x000000007fffffff # initialize rs1
li x19, 0x000000007fffffff # initialize rs2
divw x4, x18, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x8, 0x8370b7dec4be6617 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x19, 0x000000007fffffff # initialize rs2
divw x8, x11, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x6, 0xd92203534ef8fa7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000007ffffffe # initialize rs1
li x0, 0x92cb9484bbf4bc83 # initialize rs2
divw x6, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x2, 0x638d44c59839722f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x000000007ffffffe # initialize rs1
li x27, 0x000000007ffffffe # initialize rs2
divw x2, x17, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x17, 0x318223acf0e860a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x12, 0x000000007ffffffe # initialize rs2
divw x17, x26, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x3, 0x0878fb6f3fafc9ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x0, 0xa32ea45ab718347c # initialize rs2
divw x3, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x27, 0x46c01576ccd3c4d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
divw x27, x1, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x31, 0xd5e6d173de114b7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
divw x31, x22, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x10, 0xb372d0b1f481e9b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs1
li x0, 0xcdb386ab0549c531 # initialize rs2
divw x10, x16, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x19, 0x525b673632f2a7f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
divw x19, x28, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x22, 0xa30b8cb89a2cc635 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
divw x22, x8, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x26, 0x844ef35099d55d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000aaaaaaaa # initialize rs1
li x0, 0xf162881f494dcb97 # initialize rs2
divw x26, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x6, 0x1d008a28ef31815f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000aaaaaaaa # initialize rs1
li x29, 0x00000000aaaaaaaa # initialize rs2
divw x6, x28, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x15, 0xa4a6a0fa4430334a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x4, 0x00000000aaaaaaaa # initialize rs2
divw x15, x24, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x2, 0xfd607b93b2e67f21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000055555555 # initialize rs1
li x0, 0xeafafc96a05d8e46 # initialize rs2
divw x2, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x6, 0xae74bab18d878c28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000055555555 # initialize rs1
li x10, 0x0000000055555555 # initialize rs2
divw x6, x8, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x17, 0x57207a0a3a787ef6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000055555555 # initialize rs2
divw x17, x15, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x11, 0x0113115b7db0f779 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000063ae86f7 # initialize rs1
li x0, 0x8fbfb0990e888b37 # initialize rs2
divw x11, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x15, 0x9b76f4496ef1fcba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000063ae86f7 # initialize rs1
li x4, 0x0000000063ae86f7 # initialize rs2
divw x15, x2, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x23, 0xdcb27598387eb3eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000063ae86f7 # initialize rs2
divw x23, x5, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x12, 0x0bf3bacf8df8cc6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000e3ae86f7 # initialize rs1
li x0, 0x331ad9685cc898ea # initialize rs2
divw x12, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x12, 0x7673c6b96b1edfda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000e3ae86f7 # initialize rs1
li x26, 0x00000000e3ae86f7 # initialize rs2
divw x12, x24, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x21, 0xd4e95be275a729ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x7, 0x00000000e3ae86f7 # initialize rs2
divw x21, x23, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x4, 0x499826f17bbaf822 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x7, 0x11f9ccfe48fbf690 # initialize rs2
divw x4, x22, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x30ca95fd89b3ad84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs1
li x23, 0xb3afe74a5b86abd7 # initialize rs2
divw x18, x10, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x10, 0xf0bc30bcf5556a19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # initialize rs1
li x17, 0x2a1b049f643beb9b # initialize rs2
divw x10, x28, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x28, 0x4579e0c5b660ad74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x13, 0x559ead3e2119b6ca # initialize rs2
divw x28, x19, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x9, 0xebe95e08eac63696 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs1
li x18, 0xef7bd043f7417960 # initialize rs2
divw x9, x17, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x3, 0xe287f2e9c7293769 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x7, 0x9cb02c764cd66544 # initialize rs2
divw x3, x27, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x7, 0xb4671170bf3c8326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x1, 0x48739a21bb42cda4 # initialize rs2
divw x7, x2, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x6, 0x038af16d3e250463 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x11, 0xbeba2745397c1e2b # initialize rs2
divw x6, x29, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x12, 0xec4af940f0b1267f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffffffffffe # initialize rs1
li x21, 0xb2cfe7525c6af691 # initialize rs2
divw x12, x10, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x2, 0x49137f519fa30ebb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x1e9f7276561615ab # initialize rs2
divw x2, x16, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x24, 0xf2c8b4542ee87c44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x4a5d860c2de9652f # initialize rs2
divw x24, x4, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x30, 0xe318791afd28faa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x5, 0xbfbfbd2f84fe7a35 # initialize rs2
divw x30, x4, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x4, 0x242aa1802013adab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
li x30, 0xcbae9dd2b24a2fd2 # initialize rs2
divw x4, x27, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0x383c4bf6c734a1e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
li x24, 0x62b40c912b677eb7 # initialize rs2
divw x15, x26, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x30, 0xc011e4bac18e7b7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x28, 0xe10ebcbbccc64242 # initialize rs2
divw x30, x16, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x22, 0xf3a5b15cbefbe851 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
li x20, 0x3159126dd70e4815 # initialize rs2
divw x22, x15, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x16, 0x353568b604dcca24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7a6f427cd7b327f3 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
divw x16, x17, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0x2550c99f40ce497f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xbdc386b4fd12ae15 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
divw x18, x23, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x22, 0x731876e5e62733bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5b2b8777e32df823 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
divw x22, x28, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x9, 0x01dc54ecb158b7ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x70684e2f75f7cf9d # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
divw x9, x8, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x21, 0x0a9e9b3c0598246f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3977e50f7849311d # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
divw x21, x22, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x14, 0x4338064e729a75c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb5403fec352054b5 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
divw x14, x18, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x31, 0x44ad6d7c7e824a7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2b453d1e6e39a3ab # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
divw x31, x1, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x4, 0xb9964b99e96f0b6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x68ff4f41ec8bfdd2 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
divw x4, x24, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x12, 0xeff50f3f2966b4a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x811517fde916c53a # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
divw x12, x21, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x5, 0xa060e529736589a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x11418d286dc527ca # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
divw x5, x17, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0x27621a7e58dc24c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf4ff740d59e30153 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x1, x17, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x17, 0xcd2305a8e99cf86a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9ca8f5e0bbdbede7 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
divw x17, x30, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0x87edfc92e64d4ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0b9600b17f8be078 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
divw x25, x24, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0x12d963a0b96f43e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4d632e2647050026 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
divw x18, x23, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x2, 0x1ab05ef13eda10f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf33ea13e6c28a36a # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
divw x2, x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x26, 0xf86f98c01ab44f81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xddc108232dd2b3b5 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
divw x26, x16, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x3, 0x67149b4a7d098e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
divw x3, x21, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x2920145257d50291 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
divw x11, x26, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x16, 0x66a0ca2f022b4a80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
divw x16, x9, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x19, 0x0dfcae189b28cd88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
divw x19, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x16, 0xe00b49c0ccdc0bc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
divw x16, x10, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x12, 0xbb416d1264b649dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
divw x12, x22, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x10, 0xd7606326eb74516a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
divw x10, x6, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x24, 0x11b88b53b25922ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
divw x24, x9, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x29, 0xdec083fdcb2ea3fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
divw x29, x14, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x18, 0x43c78dbbbf875e8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
divw x18, x28, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0xd3cdf19ec07f1a74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x18, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x29, 0xb9770d610855854a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
divw x29, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x11, 0x19f25e0bfd276773 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
divw x11, x14, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x6, 0x259cff657ec29c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
divw x6, x20, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x7, 0x14045180ea7e8425 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
divw x7, x13, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x26, 0x53038c89f7dd60b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000000 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
divw x26, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x6, 0xc15551baa6b9c2bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
divw x6, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x27, 0x47293c6c3aa1c90a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
divw x27, x26, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x30, 0x973646863684bb26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
divw x30, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x15, 0xbcb72b822d99d685 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
divw x15, x28, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x9, 0x5bd17b68c203120a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
divw x9, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x11, 0x8a8600748dd43f0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
divw x11, x27, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x19, 0x0afa34b4f38469da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
divw x19, x26, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x26, 0xb8805aa309cc4245 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000001 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
divw x26, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x12, 0xf0183c5751264718 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000001 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
divw x12, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x13, 0x773d48a4846e97fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
divw x13, x16, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x4adfdadb46d041e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x13, x11, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x11, 0x0c8419ca13372648 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
divw x11, x14, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x2, 0xb9cc386b190ceffc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
divw x2, x6, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x7, 0xff9aff9a289bc2d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
divw x7, x9, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x19, 0xa0688e3cbbc7fbd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
divw x19, x9, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x18, 0x8a42690935489b21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
divw x18, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x31, 0x7f41d0b1e473b868 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
divw x31, x2, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x30, 0x8d1d5b90b21cf37e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
divw x30, x14, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x30, 0xac23f01e34492b6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
divw x30, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x9, 0xac727c679ee75b76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
divw x9, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x29, 0xc691fa5152a5f510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
divw x29, x22, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x7, 0xac452dca260337b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
divw x7, x22, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x5, 0x9412fb5c46b6023b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
divw x5, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x20, 0x1c8dcb17280e3481 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000002 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
divw x20, x5, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x15, 0x46cbc1b7b6388e73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
divw x15, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x18, 0x2b11cd97d5eb9210 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
divw x18, x12, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x4425ffa67ac54656 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x6, x2, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x26, 0x0677babb59e8d9a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
divw x26, x21, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x27, 0xed5943f87ed228cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
divw x27, x13, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x13, 0x89466859482ece6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
divw x13, x7, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x18, 0x848ce615af2ee09c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
divw x18, x25, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x7, 0xb9f5add033d19296 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
divw x7, x20, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x20, 0x674b6599d9d12857 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
divw x20, x23, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x2, 0xc25d4ebc45ab1440 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
divw x2, x14, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x16, 0xb68781d74f29d810 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
divw x16, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x20, 0x53ec17749a85dd76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
divw x20, x18, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x11, 0xd1c8129a1362bcec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
divw x11, x12, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x9, 0xb36b706b07576be6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
divw x9, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x10, 0x524b6c2ff48e8eb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
divw x10, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x25, 0x80ac93088b5bf36f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
divw x25, x12, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x10, 0xab4977724899711b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
divw x10, x31, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x8, 0x4b09a731ff700e44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
divw x8, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x3dde60b82f219283 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x12, x18, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x23, 0x6c43f141be987a86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
divw x23, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x27, 0xf2a80acef9ad2e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
divw x27, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x2, 0xf6eb4f0dd1302f2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
divw x2, x6, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x23, 0x0010760ee1337971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
divw x23, x8, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x26, 0xfc1f9872f37023c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
divw x26, x23, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x22, 0x04d0bc0554e942a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000001 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
divw x22, x28, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x6, 0x88ab09de94167a43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
divw x6, x2, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x27, 0xff59c748ca58da85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
divw x27, x9, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x19, 0x1e67899c48624ac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
divw x19, x17, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x6, 0xea2554b610ca8495 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
divw x6, x1, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x7, 0xb523ca4bdf622792 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000001 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
divw x7, x22, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x31, 0xe114e05d847a1886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
divw x31, x27, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x10, 0xa910fc62181e5f95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
divw x10, x6, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x12, 0xe34a66666688daad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
divw x12, x4, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x27, 0xf62c7fdc7821a7f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
divw x27, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x1047db3de00233e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000001 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x7, x5, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x31, 0xb869449bcdbfbcd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000001 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
divw x31, x2, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x21, 0xce4e613af091dc16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
divw x21, x18, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x23, 0x419f2c0615936a57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
divw x23, x29, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x28, 0x146b722df0cbf290 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
divw x28, x18, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x15, 0x892fdbfa265f671b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
divw x15, x7, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x9, 0xa0e69845c9f10796 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
divw x9, x15, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x15, 0xb9175fe316f96886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
divw x15, x22, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x29, 0x706d13372c20c85a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
divw x29, x20, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x20, 0x78795c353b708797 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
divw x20, x31, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x18, 0x819ac9fafa9d5384 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
divw x18, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x17, 0x61d082a38c12d7a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
divw x17, x29, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x6, 0x47ab665e6f55c50b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffffffffffff # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
divw x6, x9, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x7, 0x19510141d1757865 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
divw x7, x22, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x21, 0x8a3be5845963e0ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffffffffffff # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
divw x21, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x8, 0xcc499efe2ea0ab7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
divw x8, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x928ab74631e75ede # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x5, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x2, 0x0b58598d4fa699e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
divw x2, x1, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x1, 0xa5a92c66d6962df5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
divw x1, x3, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x19, 0x036f5f25de5fc13d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
divw x19, x22, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x7, 0x150ed8f0bb9dcf7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
divw x7, x26, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x31, 0x6356f445aacef014 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
divw x31, x14, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x4, 0x89ecfe3468110e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
divw x4, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x22, 0x540b4319f76fc6b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
divw x22, x15, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x19, 0x7f38035879c83cbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
divw x19, x23, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x24, 0xa83bf48a73f0b62e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
divw x24, x11, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x3, 0xeafea881e4205d2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffffffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
divw x3, x26, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x18, 0x926d5b99f87ce125 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
divw x18, x24, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0xdaf73b0e8e78b7a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
divw x19, x16, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x25, 0xe95eeb683122e63b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffffffffffe # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
divw x25, x21, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x15, 0x0e46f8841c054894 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
divw x15, x18, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x6, 0xdac59022464f2a8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffffffffffe # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
divw x6, x17, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0xfa8888b8268ab660 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x13, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x7, 0x976d5b3cb831d09d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
divw x7, x10, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x22, 0x0ebdbcb3365af71a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
divw x22, x5, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x1, 0x539d44522cc63ddc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
divw x1, x5, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x18, 0x30cdc645329d7352 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
divw x18, x29, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x26, 0x03e0ff274a9ca8c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
divw x26, x19, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x16, 0xbe0635544271e22a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
divw x16, x27, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x26, 0xd1ace862d3d80706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
divw x26, x19, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x7, 0x9cdfc9956a7a8723 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
divw x7, x12, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x25, 0xa5fea3d1636dcfcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
divw x25, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x25, 0x7065fab2423176bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
divw x25, x12, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x30, 0x78cdec5fec7cc18b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
divw x30, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x21, 0xf090832493863dc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
divw x21, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x14, 0x7f31483ed7365e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
divw x14, x4, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x28, 0x9d90d2b83d0419bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
divw x28, x27, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x29, 0xea6ebb13412501ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
divw x29, x8, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xc049c3e78c23ee87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x10, x22, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x10, 0x914baa69d2e76304 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
divw x10, x14, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x30, 0xdd72b9b98f4bcc60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
divw x30, x1, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x7, 0x8867ee377c99de25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
divw x7, x5, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x18, 0xf3e347ea1d52a518 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
divw x18, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x4, 0xdcd6984219da0c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
divw x4, x31, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x6, 0x8f865a3365605c24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
divw x6, x12, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x10, 0xf74f9eb6b2c4cfad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
divw x10, x24, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x3, 0x7e83fed344f362ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
divw x3, x19, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x14, 0xb045391c3ac696fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
divw x14, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x1, 0x501c72d529f56e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
divw x1, x19, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x31, 0xad9d6b8bfad62970 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffffffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
divw x31, x16, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x20, 0x9bd3ae5c4b770a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
divw x20, x11, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0xd58c0e659d336f6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffffffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
divw x23, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x10, 0xd30b287711675882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
divw x10, x26, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x10, 0x683b96daeec1ac6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
divw x10, x30, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x590758e90309aeb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffffffffffe # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x26, x16, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x28, 0x0d5c01546c5f62d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffffffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
divw x28, x16, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x23, 0xc7381648585e4cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffffffffffe # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
divw x23, x4, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x16, 0xfc68d8efb6ba72d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffffffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
divw x16, x10, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x30, 0xc13662ce2946a9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
divw x30, x17, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x14, 0x1a2bfad5027735aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffffffffffe # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
divw x14, x31, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x6, 0xe76192423694c018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
divw x6, x7, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x5, 0x5f2e623b8c9af64b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
divw x5, x17, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x13, 0xdf5241aa13807fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
divw x13, x11, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x15, 0xf7e71a38f3b7bac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
divw x15, x20, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x20, 0x962dea56679161e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
divw x20, x29, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x20, 0x56fccfd38f455c72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
divw x20, x27, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x18, 0xaa3e5d28126fa2af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
divw x18, x8, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x3, 0x7be875aa06793732 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
divw x3, x10, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x29, 0xe3e55a03c855d81d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
divw x29, x5, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x7, 0xf27855fd3c1489ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
divw x7, x11, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x7345bcdfa5064fe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x29, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x6, 0x4c4189cca61395a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
divw x6, x8, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x13, 0x0643a47cb0a0de87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
divw x13, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x1, 0xa521b4b7c2ac4bea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
divw x1, x16, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x30, 0x8fca1de04e920074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
divw x30, x23, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x29, 0xe6576c58c5a04d83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
divw x29, x14, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x15, 0xcc848b88835cf76a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
divw x15, x17, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x12, 0x0243450f0edbf2ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
divw x12, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x8, 0x9eff66a33bc29f37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
divw x8, x22, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x6, 0xdd71870492ad4a70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
divw x6, x27, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x15, 0xfd59803f08b90cef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
divw x15, x16, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x18, 0xe9a53b9f0d88b16d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
divw x18, x15, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x18, 0x9f5acd3998f71527 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
divw x18, x7, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x11, 0x2bee213d47807d05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
divw x11, x1, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x20, 0x6206276c8245d2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
divw x20, x31, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x7, 0x0396db72a9b0dbeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
divw x7, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0xfa9da0f52f75f358 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x15, x5, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x2, 0xea23a8232f5ceb87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
divw x2, x18, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x25, 0xc7a61aaa22d1101d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
divw x25, x28, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x15, 0x26bbcb1ec1ac4cc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
divw x15, x11, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x25, 0xfad51b9c68a1a7bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
divw x25, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x5, 0x7f0ffce9980c35c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
divw x5, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x11, 0x3b73bc90365b0ec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
divw x11, x20, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x7, 0xa08deb7a20e3374b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
divw x7, x11, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x5, 0x3c0369f72e02d73b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
divw x5, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x24, 0x3db87461e125b48b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
divw x24, x15, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x13, 0x21eb76c492d65577 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5555555555555555 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
divw x13, x29, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x14, 0xea9dbf42177bb2a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
divw x14, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x3, 0x9f45470466ad68cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
divw x3, x8, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x28, 0x5c2da9c4e79a046a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
divw x28, x14, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x7, 0xcf7aaf9b05929260 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
divw x7, x24, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x29, 0xf338fac84120e2a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
divw x29, x22, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xbb7c0c2bb360f9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x22, x30, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x18, 0x97e540d58d75a6f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5555555555555555 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
divw x18, x3, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x9, 0x21a55bb18512e569 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
divw x9, x27, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x13, 0x20765bb525019ada # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
divw x13, x20, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x27, 0x44fa0af1dfe43a1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
divw x27, x17, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x21, 0x05072e0399d7a2e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
divw x21, x17, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x1, 0x1ad97933266ec322 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
divw x1, x14, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x7, 0xbec0efca3c94b13b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
divw x7, x23, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x30, 0x9490a95afb39cdf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
divw x30, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x22, 0x907a1ac58f6e5747 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
divw x22, x14, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x28, 0x210c88d7d2e493c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
divw x28, x16, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x27, 0x4a579603a957c0f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
divw x27, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0x5b912dc4af63c53a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
divw x23, x14, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x25, 0xfa24979a54102130 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000ffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
divw x25, x2, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x28, 0xe23b1dc4e5fbb097 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
divw x28, x29, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x13, 0x4c7f60c8dd4f4eb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
divw x13, x24, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x9328151d96242b27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x8, x18, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x3, 0x2bdcaf6e51385d4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
divw x3, x26, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x8, 0x38cfa5c9287b505d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
divw x8, x26, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x17, 0x1e6990f12e63fbfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000ffffffff # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
divw x17, x21, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x11, 0x1adbb30ec670cc3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
divw x11, x1, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x26, 0x140cea933b31b549 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
divw x26, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x28, 0x646f64e645e5994a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
divw x28, x6, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x29, 0xb9c5e1e04927efa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
divw x29, x15, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x21, 0x4baf7db31bdf5783 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
divw x21, x28, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x3, 0x5bc6081b6b92e4f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000fffffffe # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
divw x3, x22, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x24, 0xf3dc3410a05dbd20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
divw x24, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x222755766f5284b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
divw x23, x20, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x30, 0xcd121b585f90e8da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
divw x30, x13, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x4, 0x48bdd8be37de7e2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
divw x4, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x30, 0x90fe2e9eb84c7c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
divw x30, x26, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x31, 0xe114c5c62fc27863 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
divw x31, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0xb08ef2c84ffe8cf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x31, x15, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x15, 0x20077a81dd2f91fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000fffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
divw x15, x22, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x2, 0xe1d0f500951e17e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
divw x2, x5, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x8, 0x4c4bafbdc0076a48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
divw x8, x7, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x7, 0x902d5eae0c706595 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
divw x7, x31, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x31, 0x79592164e09691d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
divw x31, x29, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x16, 0xcec7a6bf805af651 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
divw x16, x2, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x22, 0xa1831145c58ab3de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000000 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
divw x22, x29, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x31, 0xa7e4ec943cef6b6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
divw x31, x7, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x25, 0x566866c8832e95a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
divw x25, x4, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x4, 0x52f806db10b27a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000000 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
divw x4, x29, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x18, 0x5593cc768f048923 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000000 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
divw x18, x2, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x21, 0xa3aecc15b5a8d0d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
divw x21, x13, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x21, 0x336c4f318d6a39ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
divw x21, x16, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x2, 0x727240c4cd369977 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
divw x2, x20, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x21, 0x7f63b2fd68a04358 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000000 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
divw x21, x26, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x2f04664435b3d940 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x9, x24, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x21, 0xf4a0c5e8c1df1897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000000 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
divw x21, x23, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x30, 0xbe3394f6365dc45c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
divw x30, x22, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x22, 0x936a826874ce0de8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
divw x22, x4, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x29, 0xfe2d984c7a1f3e34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
divw x29, x21, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x9, 0xc082f8ea54fd9df9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000000 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
divw x9, x26, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x14, 0x7358229e269dd68b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
divw x14, x19, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x3, 0xf10507f9f3acd63d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
divw x3, x29, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x14, 0xfadfd12d7af9ca3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
divw x14, x24, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x4, 0xad6a6d513a17555d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
divw x4, x21, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x19, 0xc7d8cc1da30b56c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000001 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
divw x19, x25, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x5, 0x135c259879331ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000001 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
divw x5, x28, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x20, 0x2b1eece7898aed1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000001 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
divw x20, x29, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x1, 0xe49d972fa407a2d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
divw x1, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x11, 0x2999220727e3fb50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000001 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
divw x11, x29, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x8, 0x06c58f6e9ef1a0a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000001 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
divw x8, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x9fa15111f320b3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x5, x17, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x14, 0x7171bae1fc6e91a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
divw x14, x16, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x4, 0x0f392ed461a939a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
divw x4, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x16, 0xc8bda3dcf61f485e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
divw x16, x11, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x6, 0x5e009fe58b3ba953 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
divw x6, x30, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x22, 0xddcb4af1ecdcad04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
divw x22, x14, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x4f5c8bcccc555a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x05171a8a36704a83 # initialize rs1
li x3, 0x356111703e1ed15a # initialize rs2
divw x0, x0, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xeaaba45a03fbd208 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x210e7d4012677750 # initialize rs1
li x17, 0x7c5b21f136842f25 # initialize rs2
divw x1, x1, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xa938d07a1c953c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8eb3fe5dab4831e0 # initialize rs1
li x5, 0x312273e05b3a33e2 # initialize rs2
divw x2, x2, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xfe8622fb0051232d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x49248678fdb4d335 # initialize rs1
li x24, 0xf514173573202a49 # initialize rs2
divw x3, x3, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x9d3c085be815df4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd92e9990a8365c7f # initialize rs1
li x31, 0x7b1422a55daca937 # initialize rs2
divw x4, x4, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x0245dbea4da18bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6590c407260205cf # initialize rs1
li x4, 0x95fa845e29814502 # initialize rs2
divw x5, x5, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xe5060cbf84f5be9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x87152a342ccefa3a # initialize rs1
li x26, 0xf3a5697fee1de9ef # initialize rs2
divw x6, x6, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x6d849e0d847404f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb81ea15881586c59 # initialize rs1
li x8, 0x85fa5112b98bf802 # initialize rs2
divw x7, x7, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xe92daeaa040cf7fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5f8ae89202a43128 # initialize rs1
li x15, 0xf34851189ee25665 # initialize rs2
divw x8, x8, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xced3e27218909e9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6da6ae056bc004b7 # initialize rs1
li x19, 0xd8bd1bfaa84c5343 # initialize rs2
divw x9, x9, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x4e759a7d58d7b13c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf9179368faa6c00c # initialize rs1
li x16, 0x9c7f8133e6fb7727 # initialize rs2
divw x10, x10, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xc78b14190b475414 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x23fc14210df743b9 # initialize rs1
li x30, 0x0fcac830ae867b9f # initialize rs2
divw x11, x11, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x27c442410f9528a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb93f015e0f26b5a8 # initialize rs1
li x25, 0x4cfdb458bb1d32c8 # initialize rs2
divw x12, x12, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xc2b3854c9bf10dbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6aa49e81e11ec433 # initialize rs1
li x26, 0x5ca3790bd2140e62 # initialize rs2
divw x13, x13, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x247cae0263741cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7da0d695781cc3f6 # initialize rs1
li x30, 0x5bea2ead0d87d6b4 # initialize rs2
divw x14, x14, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x3ac7bbae0c580019 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc3e23d19f9e94d2d # initialize rs1
li x10, 0xf8e072afacb77c98 # initialize rs2
divw x15, x15, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x9c1c29f69faa14c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x1d80d7f20472abb8 # initialize rs1
li x11, 0xf1795cd815c07ffa # initialize rs2
divw x16, x16, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x409912093ae36e17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe383ae102318259f # initialize rs1
li x22, 0x511bbf1488f790d3 # initialize rs2
divw x17, x17, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x005a61c9d4b5bffa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x43b39ac96a396963 # initialize rs1
li x1, 0xb740f902b4e336fa # initialize rs2
divw x18, x18, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x5637371bc46d3650 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x05246d7afabe974e # initialize rs1
li x19, 0xe968c8a6f3a2da99 # initialize rs2
divw x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xe4269eaced4a0db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe74226dd0085383c # initialize rs1
li x5, 0x41c3eb3ae7496720 # initialize rs2
divw x20, x20, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xfc90b1738a0b825e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3739ed655fb2e898 # initialize rs1
li x24, 0xb423340e8bc00059 # initialize rs2
divw x21, x21, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x180a9fb20e0f6e5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2d5306df6b5ef574 # initialize rs1
li x7, 0x2143a11056896a38 # initialize rs2
divw x22, x22, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xeeded1626d0e4c8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe75a4cc6705d439b # initialize rs1
li x12, 0xc785a4d6a9cb1a2a # initialize rs2
divw x23, x23, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xcd982cef58f0e761 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x860d9465c6b9d924 # initialize rs1
li x12, 0x09766cbe4b39b563 # initialize rs2
divw x24, x24, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x97d746da47563443 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x768c535d136ccf69 # initialize rs1
li x24, 0xc42f1601f267ab25 # initialize rs2
divw x25, x25, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x7deb51ab328dadbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8960461ea9d4b09f # initialize rs1
li x5, 0x6cb1e47d170798ce # initialize rs2
divw x26, x26, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x5b0ee1e603320822 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x25de0bd9cca9f357 # initialize rs1
li x22, 0xffe4e13539790267 # initialize rs2
divw x27, x27, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xf5f68fe2a5fb8acd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x938710a0753d2508 # initialize rs1
li x20, 0x73d5b648f411b71d # initialize rs2
divw x28, x28, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x6724bf6c78fd186c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6e006c730d78c7ac # initialize rs1
li x17, 0xde228e1b0422fbe5 # initialize rs2
divw x29, x29, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xcdfac8ab2c35a418 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x93d56d139ff76f40 # initialize rs1
li x21, 0x76ed83e376e797dc # initialize rs2
divw x30, x30, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x9af7078c9002432a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd5d9b1db51e74019 # initialize rs1
li x8, 0x8e304985288d7f6d # initialize rs2
divw x31, x31, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x0945d71c877dded1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc24b7eae10034539 # initialize rs1
li x0, 0xe5173a121da6e900 # initialize rs2
divw x0, x8, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xb3ef5192d04d6070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb77d4c2f3c46bb16 # initialize rs1
li x1, 0xf0fcb6816c3a0749 # initialize rs2
divw x1, x23, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xfe1ed30fbb66fd15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe06514a3874474c4 # initialize rs1
li x2, 0xdc41851f822ce07d # initialize rs2
divw x2, x20, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xcd65e85587a0dc04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x16217148b45c1eaa # initialize rs1
li x3, 0x55530e8ec7b900c4 # initialize rs2
divw x3, x29, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x25ae994a728a6b6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x40d218023ac5f974 # initialize rs1
li x4, 0x7be0590b913febb1 # initialize rs2
divw x4, x13, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x5db460d44c573640 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb10f764fc0e74de9 # initialize rs1
li x5, 0xbe543f512c0fb46a # initialize rs2
divw x5, x10, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xae031c9a18e6fcb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x88d3eb04a659448e # initialize rs1
li x6, 0xe8f211f5e12451e3 # initialize rs2
divw x6, x5, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xb6d57af4c3736921 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe624d05564dfcfd3 # initialize rs1
li x7, 0x9faea11e9416e7ed # initialize rs2
divw x7, x23, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x2743adaf0612d0d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9f7e56906b4b0571 # initialize rs1
li x8, 0x9b3294d78549e010 # initialize rs2
divw x8, x3, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x5e1e7651663a290c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x31043a27f507343f # initialize rs1
li x9, 0x312eb6c5412f87eb # initialize rs2
divw x9, x22, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x3a27e01e0fd0941f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc31776ab00bee672 # initialize rs1
li x10, 0x08a569aa3b65c7cd # initialize rs2
divw x10, x3, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x33538f1a70233bec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6a1f0c5571a71a9a # initialize rs1
li x11, 0x55e61ac45110ad45 # initialize rs2
divw x11, x22, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x2ec5fbab3db0f7a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1adf91057f0d71f9 # initialize rs1
li x12, 0xa70a03114d3ccf4b # initialize rs2
divw x12, x8, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x62f5d131cf341332 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xac818c8c4d74aa75 # initialize rs1
li x13, 0xb8400a8c8869f95e # initialize rs2
divw x13, x10, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xa5cb0c878d83b146 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5e27768fb4300856 # initialize rs1
li x14, 0x1a447ffd6f4df02e # initialize rs2
divw x14, x14, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xb786b8d77af6439b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x916f3723a7b779f5 # initialize rs1
li x15, 0xa6ecd25a6e892b5f # initialize rs2
divw x15, x20, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xe8f17463522cff65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1f07f793554dc557 # initialize rs1
li x16, 0xefbf20b8d8a96e25 # initialize rs2
divw x16, x21, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x264649064e21223e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe3e2455b475296ce # initialize rs1
li x17, 0x808d2350be1752b1 # initialize rs2
divw x17, x12, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xd7c4fe0b7db19c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8d1158a58e695865 # initialize rs1
li x18, 0xe557e199891a9be7 # initialize rs2
divw x18, x14, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xe2eb18021ad29ce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x076efd009bc7a791 # initialize rs1
li x19, 0x55a7325493601b14 # initialize rs2
divw x19, x10, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xa40278b7a25bcb51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x37390837ff0bd036 # initialize rs1
li x20, 0xdc11cd60211e57e2 # initialize rs2
divw x20, x26, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xbcb5d58e329c3f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2af7cda1feee6657 # initialize rs1
li x21, 0xffd92e0fd3f14aaf # initialize rs2
divw x21, x12, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x5478889bf471f1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5741f5c4194cf16b # initialize rs1
li x22, 0x6a56d39c9d98c32f # initialize rs2
divw x22, x15, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x10cb42d039eb617d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x925308d6eaab41ca # initialize rs1
li x23, 0xfbddde61356c531d # initialize rs2
divw x23, x5, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x997a3ab9c0439854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4a91b025aec64562 # initialize rs1
li x24, 0x52f432adf4cf7831 # initialize rs2
divw x24, x9, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xc119cf9e47d4d5fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaa451fa180eb907e # initialize rs1
li x25, 0x5190e7ee34273d6d # initialize rs2
divw x25, x21, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x3e9096bc056f5da3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe9e9b11c8c3bd335 # initialize rs1
li x26, 0x1cc1ec4c17f45847 # initialize rs2
divw x26, x21, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x83ea0795f3d74e90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2f20a6371da10817 # initialize rs1
li x27, 0xf6b1ceeb3b2a8113 # initialize rs2
divw x27, x20, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x42ce168966d43cdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5fcd3060d1decfaf # initialize rs1
li x28, 0xcb15ddd9b8aae8aa # initialize rs2
divw x28, x7, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xd024b6805cc8898d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x027325b7ec7a8b56 # initialize rs1
li x29, 0x7da71aac3a6f4ac6 # initialize rs2
divw x29, x30, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x2d489ebc2fb8172d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf1a888cb277b3145 # initialize rs1
li x30, 0xf5b402b88581af1b # initialize rs2
divw x30, x6, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xc37e317f5f838a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9a0d8d56b5b917c8 # initialize rs1
li x31, 0x85af38732c3915ea # initialize rs2
divw x31, x16, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x8092bbcaf05184e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x71e185b96fb49214 # initialize rs1
li x0, 0xc398c40bc3290698 # initialize rs2
divw x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x786c83b5cda90cff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfad9438d645ebef9 # initialize rs1
li x1, 0x7b31c6a447bd14f0 # initialize rs2
divw x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x93e0543463891a0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x372741fa162ad7d7 # initialize rs1
li x2, 0x99c43848f95d4c94 # initialize rs2
divw x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x50b83605b85a9e35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3715735cdfe731c7 # initialize rs1
li x3, 0x2defb4542398997f # initialize rs2
divw x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xfc22529ca831ab93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb05a15cb4077c64a # initialize rs1
li x4, 0xd0330ababc402c0f # initialize rs2
divw x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x0d104f5c7ac12834 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffdec1ef4660e3d8 # initialize rs1
li x5, 0x9e4b78ae45e810a5 # initialize rs2
divw x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x3f10182ce131e126 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x803abddfe809e359 # initialize rs1
li x6, 0xcdd2706e352df452 # initialize rs2
divw x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0xddd7efe22fe4891d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x614df5ff35f65ba2 # initialize rs1
li x7, 0xe1ee76c0346d3dc7 # initialize rs2
divw x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x2ae47f4a540a6ecc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2b02033f920c2b11 # initialize rs1
li x8, 0x181595d871ba9980 # initialize rs2
divw x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x7abe0ea3404e613a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x66c3e98cc6c54089 # initialize rs1
li x9, 0xbf249a3d7b6c3053 # initialize rs2
divw x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xfaa44ac7e5516fe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x05b9544b66f019a7 # initialize rs1
li x10, 0xe9e2d5649de58b06 # initialize rs2
divw x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xcec609b654c102aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0568e24842ac2697 # initialize rs1
li x11, 0xc787c2e6e6043deb # initialize rs2
divw x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x403118f9bb8fad48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x624ae397a12e1c49 # initialize rs1
li x12, 0x6de00508a8caba2b # initialize rs2
divw x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xa9b66271e6d08a0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2fecc770c55c76f4 # initialize rs1
li x13, 0x68767fb920273f89 # initialize rs2
divw x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xc7443a8b87663b05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2c65b2b3bd68f57f # initialize rs1
li x14, 0xeb593bdcdd62e55b # initialize rs2
divw x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x8fb4c585e706a746 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x51449d00281a0362 # initialize rs1
li x15, 0x232d06c143aa117d # initialize rs2
divw x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xccf330eddd72fbca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5025ed89f0488f8c # initialize rs1
li x16, 0xb36ad7dd7108a703 # initialize rs2
divw x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x1dfcdd3f8047136a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x932aeb486bf5166b # initialize rs1
li x17, 0x7109554fc48a4bfc # initialize rs2
divw x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xdbc0e2650cc297f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd2caac77ef5457da # initialize rs1
li x18, 0x8f75a62ccf58626a # initialize rs2
divw x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x180168864dbcfaca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3e6608e4fffc70e8 # initialize rs1
li x19, 0xa2b7973e511f73c2 # initialize rs2
divw x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xa1a0091c158b53b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3eed3488e0acaf6e # initialize rs1
li x20, 0x1e494a79b453ba02 # initialize rs2
divw x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x36c5fec88231073b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x9a09ff548f24d797 # initialize rs1
li x21, 0xe9bb5fde34c0d433 # initialize rs2
divw x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x40425844ad20bc4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x24419f1ae98e7628 # initialize rs1
li x22, 0x77c1511adefcb24c # initialize rs2
divw x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x825822d6487c9a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x72e1a7d0556f6bb2 # initialize rs1
li x23, 0x6bccb29aeec063a0 # initialize rs2
divw x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xc23720223b4ee262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x639bd4bcf4a7baa3 # initialize rs1
li x24, 0x3157256a743a003d # initialize rs2
divw x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xe52b09ea574a7a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc73dcfcb1edd79d2 # initialize rs1
li x25, 0x332764ae55753587 # initialize rs2
divw x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xcc34028384ad322a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8996b2bffabf6ce1 # initialize rs1
li x26, 0x046710dddc25cc9a # initialize rs2
divw x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x00aee53025e6fa37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa3ba2753257b7ad9 # initialize rs1
li x27, 0x8f0804245d571d4a # initialize rs2
divw x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xaf58ff1262140c67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x43250311bc5ae5d4 # initialize rs1
li x28, 0xd7b10a19b37cb3b8 # initialize rs2
divw x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xdb903595a719e565 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x36ade5af1945aea8 # initialize rs1
li x29, 0xa420115ae58a130c # initialize rs2
divw x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x142c5550d3f912f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x96f36ea0dce70c4f # initialize rs1
li x30, 0xca89bf698914569e # initialize rs2
divw x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x72b60e6bb4d5d633 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe845177ba14637af # initialize rs1
li x31, 0xd89a27c380816404 # initialize rs2
divw x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x2, 0x262ae60ae52210c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe6ca2f7269e70c17 # initialize rs1
li x0, 0xf4485eebb792d239 # initialize rs2
divw x2, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x24, 0x7b0330be849b6dcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb11ddda93eb534d0 # initialize rs1
li x1, 0x8cc1c501129641a2 # initialize rs2
divw x24, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x20, 0xcbb2ec44b6791e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x87e54a8d17debba1 # initialize rs1
li x2, 0xadcf9fdf9d8c4127 # initialize rs2
divw x20, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x2, 0x8e74ca5bb6283ab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe53381d7ef2372a2 # initialize rs1
li x3, 0x86e357d79f7af3c6 # initialize rs2
divw x2, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x5, 0xab7c70c6b17e5a63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x068e475ea063437f # initialize rs1
li x4, 0x740e2aa124ecafe2 # initialize rs2
divw x5, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x5, 0x083b50dff94d3f21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd12ca1286e1c1428 # initialize rs1
li x5, 0x2f8d7bb69a0b2d6c # initialize rs2
divw x5, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x6, 0x392676becff3f86d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x439fa4a05c267c69 # initialize rs1
li x6, 0x83891c98d6e6d7d4 # initialize rs2
divw x6, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x17, 0x10e5e59732a14efd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x975e93548e741c1b # initialize rs1
li x7, 0x22d72970f1fb3cf4 # initialize rs2
divw x17, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x29, 0x8bfba3eec533d847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe65916186d22ad56 # initialize rs1
li x8, 0x6e2a1f1475e16763 # initialize rs2
divw x29, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x3, 0x33c26ca13a1f1130 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6441b310af64d3f8 # initialize rs1
li x9, 0x3dfddd56a2467700 # initialize rs2
divw x3, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x27, 0xad941357a49c2239 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0a45fc2d06c8aa1a # initialize rs1
li x10, 0x15529705b6ff6613 # initialize rs2
divw x27, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x30, 0x9ecc44a26484a317 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x47f93a6c2aa127cc # initialize rs1
li x11, 0x96729202f040b449 # initialize rs2
divw x30, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x21, 0x66bd3490057d2c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd66bf1e3b69440df # initialize rs1
li x12, 0x9e7480a3ac2c0126 # initialize rs2
divw x21, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x5, 0xa12ac202bb6e8f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x078495368eff283e # initialize rs1
li x13, 0xf76b54757404c794 # initialize rs2
divw x5, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x5, 0x9dd03f1635b9d182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa4143d965f42bd2e # initialize rs1
li x14, 0x7eec81b3e64870ee # initialize rs2
divw x5, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x19, 0xd31facc0e26e62d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x442ec6b381ce2090 # initialize rs1
li x15, 0xab51cdb0c4337ee3 # initialize rs2
divw x19, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x28, 0x86cc52443f591b92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xdb84289c0040aa63 # initialize rs1
li x16, 0x0aea423c01ea0395 # initialize rs2
divw x28, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x19, 0x0bc83d067a5920a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x14471bf06bf06627 # initialize rs1
li x17, 0xfcd838570a89b95e # initialize rs2
divw x19, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x29, 0xcd20ab90aa6ae187 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x95b34b7f0c12ccd6 # initialize rs1
li x18, 0xcde3abe1ff51ab86 # initialize rs2
divw x29, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x13, 0xe0dbb4f68c168fea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x90b40f1b2dabf146 # initialize rs1
li x19, 0x6c9e241899b5588d # initialize rs2
divw x13, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x8, 0x2ff8bd513c2cd64a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf49b77b7457e881a # initialize rs1
li x20, 0x244ab42fffa72e56 # initialize rs2
divw x8, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x19, 0xcec6dbb7bf68e2d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xbeb7f8e01ead8b10 # initialize rs1
li x21, 0xd327ccfe801320c7 # initialize rs2
divw x19, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x6, 0x754671f06a2366c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd13366476bf3c11c # initialize rs1
li x22, 0x4bed92e85b39db58 # initialize rs2
divw x6, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x21, 0x33a38bc7b350e1d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xbab63fb0c70764b6 # initialize rs1
li x23, 0xa4d4b5f7bfea0a01 # initialize rs2
divw x21, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x7, 0x6e0f8b38781a0765 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x93bddb1b1baaf046 # initialize rs1
li x24, 0x337c19b3eb8d7260 # initialize rs2
divw x7, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x10, 0xac372a3c96f39b9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55a2229810bc82fe # initialize rs1
li x25, 0x89059661a6f789ea # initialize rs2
divw x10, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x9, 0xb8d7488bb85b5ff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1cf149fd1624e363 # initialize rs1
li x26, 0x65bfc0abba01e6e1 # initialize rs2
divw x9, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x9, 0xdd01b5afdef31b41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1290c2524abb2029 # initialize rs1
li x27, 0xbb3a0308df0196f2 # initialize rs2
divw x9, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x21, 0x031ed546605c9918 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfba3b1523bd2c7d1 # initialize rs1
li x28, 0x8158ebb1d1ae71ec # initialize rs2
divw x21, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x24, 0xd92e3d7367f2b0bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8b15e5b61f9aed51 # initialize rs1
li x29, 0xfc050cbb5217e769 # initialize rs2
divw x24, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x13, 0xbdd3acbb1d6611d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdc488cdf7ec147a4 # initialize rs1
li x30, 0xe9198eb2722783d5 # initialize rs2
divw x13, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x7, 0xc4d41a8a656906eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8dbdaf1c5307cb41 # initialize rs1
li x31, 0xea09d382743ba627 # initialize rs2
divw x7, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x6ab996e0a7413ee9)
li x4, 0xb8febc72fe3ac700 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6ab996e0a7413ee9 # initialize rs1
li x22, 0x56170a83999fe4d9 # initialize rs2
divw x4, x5, x22 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x5c4c411956226897)
li x19, 0x375c5763de78b013 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa3b3bee6a9dd9769 # initialize rs1
li x20, 0xa26772c33644dead # initialize rs2
divw x19, x8, x20 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x18749146038c05b2)
li x13, 0xe8c09c88e3c94073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc193004350435c52 # initialize rs1
li x5, 0x18749146038c05b2 # initialize rs2
divw x13, x11, x5 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x2486035e2ca8dccb)
li x28, 0xb62e4ebe0b1b1744 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x1b8a1a6f0306a0ef # initialize rs1
li x16, 0xdb79fca1d3572335 # initialize rs2
divw x28, x24, x16 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
