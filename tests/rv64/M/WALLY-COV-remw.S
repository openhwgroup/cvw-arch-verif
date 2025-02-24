///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/M//WALLY-COV-remw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.678501
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x403131fba12edc11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf46836f8590d0a9c # initialize rs1
li x22, 0xa253afba3ee46329 # initialize rs2
remw x0, x31, x22 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xaca68eb2d1985e48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb332d246239ab09e # initialize rs1
li x6, 0x7b7dd7c19879764d # initialize rs2
remw x1, x24, x6 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x1c0efecf3d4c80e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc7fd19ccc7bbd147 # initialize rs1
li x13, 0xd579d06c0db70bb5 # initialize rs2
remw x2, x24, x13 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xd2bf0b3ee6a5b3bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3f25c41228be4670 # initialize rs1
li x2, 0x20036dbdf3ac7025 # initialize rs2
remw x3, x22, x2 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x6b518f0daaed488b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xed47f5a1daa76c07 # initialize rs1
li x11, 0x9b5d257ec0e887b4 # initialize rs2
remw x4, x26, x11 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xf619455025844f6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7bf5ba632ab65a06 # initialize rs1
li x24, 0x1fd506006ff5ad42 # initialize rs2
remw x5, x25, x24 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x50eee6ee74188636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x93b2a0a71270d75e # initialize rs1
li x14, 0xf20640765d7aa2d7 # initialize rs2
remw x6, x8, x14 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xf0b9e9c1787c948c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2cb3a93e17a15ac6 # initialize rs1
li x2, 0x23cf6dd7d559c449 # initialize rs2
remw x7, x1, x2 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2a17474a6c670a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd645f96e4ab0baeb # initialize rs1
li x26, 0xab2335548c32d0e1 # initialize rs2
remw x8, x6, x26 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x80d5a19a42735f2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa3c87ba294c80269 # initialize rs1
li x29, 0x0115553fed93eece # initialize rs2
remw x9, x30, x29 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd7ada32f2b69c486 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd58701b1bda7fcc6 # initialize rs1
li x1, 0x3b8c36e5c665e962 # initialize rs2
remw x10, x18, x1 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xee79aba1fd09e5f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5b5164bf31e1b9d0 # initialize rs1
li x11, 0x4c03d50540965af2 # initialize rs2
remw x11, x14, x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x015187e6552fb8b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x392ad1f7bd2b62d8 # initialize rs1
li x10, 0x31c2a91e8c642193 # initialize rs2
remw x12, x5, x10 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa4dba9c7f32670d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2ee87c00186dac70 # initialize rs1
li x24, 0xfd4df2bb2c1b0985 # initialize rs2
remw x13, x16, x24 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x80b5ccac65c6e644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x45e842cd707c9d83 # initialize rs1
li x14, 0x0e1feb3fe27c1de2 # initialize rs2
remw x14, x19, x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xd7cb4f0213e60a86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ee3031fbe852dd8 # initialize rs1
li x29, 0xaa97d375e5b8af0e # initialize rs2
remw x15, x26, x29 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xa40d4847cd892825 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x028e98822f6989fa # initialize rs1
li x3, 0x76575782d3a659f9 # initialize rs2
remw x16, x9, x3 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x5ee4876399f73b23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x03004c9de64b1d23 # initialize rs1
li x15, 0xfa2949024af611a8 # initialize rs2
remw x17, x19, x15 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xde2f4c3bb6064fb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf6e683f7cf81aea8 # initialize rs1
li x7, 0x0632d16e45243b1a # initialize rs2
remw x18, x9, x7 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x735764934e14c927 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf118901683a9c34c # initialize rs1
li x7, 0xcce8dd2c8135c7ad # initialize rs2
remw x19, x4, x7 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xd4b7e30c426ad08a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcfc3a0925c8e5bcc # initialize rs1
li x19, 0x9438936849374cbe # initialize rs2
remw x20, x11, x19 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x1432f794397f2b58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe78b5c7e98c4779d # initialize rs1
li x5, 0xe871250591a085da # initialize rs2
remw x21, x16, x5 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x5d7581e6e8f13ce3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x11c0b695d208fcfc # initialize rs1
li x9, 0xd6ea6a6231a6299c # initialize rs2
remw x22, x8, x9 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x2129eab12a33db10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfb6ef6382bab38ed # initialize rs1
li x11, 0x905902527334e526 # initialize rs2
remw x23, x28, x11 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x53f275d46eb57ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x32d0d63a3a89af26 # initialize rs1
li x22, 0x4fbf447b3f0bf578 # initialize rs2
remw x24, x17, x22 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x8804f3c31f47d2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8af989a0ef3721e9 # initialize rs1
li x23, 0xaa04cb7e41bd6e86 # initialize rs2
remw x25, x28, x23 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xf0ebf5e8d8d06b29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x71a238a2dde016f3 # initialize rs1
li x13, 0x9ded1a16cb2504ef # initialize rs2
remw x26, x15, x13 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x9c880e547b1ab2b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8b8b8dba94395a20 # initialize rs1
li x15, 0xf4b80912c48b5451 # initialize rs2
remw x27, x9, x15 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x77a288cefa93fe55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x654d594149c1054e # initialize rs1
li x4, 0xcaa54da5171c5468 # initialize rs2
remw x28, x16, x4 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xb9d720a84a783712 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9392e9282d12e2af # initialize rs1
li x25, 0x55962a69113da37d # initialize rs2
remw x29, x18, x25 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x344803c347182753 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9a87feb1e0e8802e # initialize rs1
li x25, 0xad50b793e63b809f # initialize rs2
remw x30, x13, x25 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x8cb90a8fd0a6d76f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x30098b54d7a7f795 # initialize rs1
li x20, 0x03f47bd8a7274822 # initialize rs2
remw x31, x17, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x19, 0xbd6db49887f14d36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd39f6fc4f6a08fb0 # initialize rs1
li x17, 0xc501c1c4b1f387db # initialize rs2
remw x19, x0, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x22, 0xd8e7f1fe94b361d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x89b54a2ea30dd42b # initialize rs1
li x19, 0xb6015739c8d00a4e # initialize rs2
remw x22, x1, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x31, 0xb4417b6126a339d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xcf30b676678818b4 # initialize rs1
li x18, 0xab2b7139c1f2fd5a # initialize rs2
remw x31, x2, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x6, 0x5387751b8b3a4230 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x438160d65eae1cd2 # initialize rs1
li x7, 0xe56f0dc74a2e46b2 # initialize rs2
remw x6, x3, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x9, 0x08b1e51b939cad9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0473d2b0898b5de3 # initialize rs1
li x15, 0xd174b0215e42565e # initialize rs2
remw x9, x4, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x19, 0x3823e0e9e0090d2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc94f3adf20390416 # initialize rs1
li x20, 0xf36ac691a6576cb1 # initialize rs2
remw x19, x5, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x17, 0xe588ae2a05962df3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7a51324e40941a58 # initialize rs1
li x30, 0x77a36319b0a7a4c6 # initialize rs2
remw x17, x6, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x23, 0xc0cce44111669119 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbe5449a445cb6d8d # initialize rs1
li x28, 0xedb99a7944df22eb # initialize rs2
remw x23, x7, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0xa9d13c1284c50f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3dc48b17e1221828 # initialize rs1
li x27, 0x915f9cbcc6ed226b # initialize rs2
remw x12, x8, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x4, 0xd09ab1524441331d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x721f4bf32ad1acdd # initialize rs1
li x23, 0x27a744c8d988156c # initialize rs2
remw x4, x9, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0xae9e172f2eca6324 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaf81c1e4bcb1d085 # initialize rs1
li x25, 0x70f4343cf2a032e1 # initialize rs2
remw x8, x10, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x23, 0xbdec1e54192c2266 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe56cd04a48eb13e9 # initialize rs1
li x2, 0x6da6bd271ed55914 # initialize rs2
remw x23, x11, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x21, 0xfcac9417f0a6da7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2730d9538fd32d2f # initialize rs1
li x20, 0xb69e941099d59ccd # initialize rs2
remw x21, x12, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x1, 0x6a7ee79ed163c804 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xddb64413dd909e17 # initialize rs1
li x3, 0x4630ef13fde709d8 # initialize rs2
remw x1, x13, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x17, 0x8fbc7fa55a85b47b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x988ba7f6277bbe05 # initialize rs1
li x29, 0x6dd1fe81715de8e1 # initialize rs2
remw x17, x14, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x23, 0xd4b28c4a2bbdb19d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xeababc4127b70bef # initialize rs1
li x27, 0x604e0ef0c45c9c22 # initialize rs2
remw x23, x15, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x12, 0x65f3dcd37d5e8e9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7a2c31218ca9e431 # initialize rs1
li x5, 0xe465a87d3c673c88 # initialize rs2
remw x12, x16, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x3, 0xe5de1b3e6eaf6413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bc3e7fc0b374893 # initialize rs1
li x15, 0x839d35a8dfb6a37a # initialize rs2
remw x3, x17, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x9, 0x05239d67c59c231e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x749fec81df4320da # initialize rs1
li x17, 0x5e29c44aade753db # initialize rs2
remw x9, x18, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x10, 0xad02fa55d15a479b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa352fb0745bd2c57 # initialize rs1
li x2, 0x1f48b3eadc2625b8 # initialize rs2
remw x10, x19, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x16, 0xd366b5ad3f9f46a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4ce68091a362f450 # initialize rs1
li x9, 0x158f1bd2ce1979e8 # initialize rs2
remw x16, x20, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x3, 0x63e26c83cdba806e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x04f7557878a44e38 # initialize rs1
li x10, 0xd616fabebd42038c # initialize rs2
remw x3, x21, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x29, 0x985b497a2ee34efe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7adc508832c3fcc9 # initialize rs1
li x4, 0x1bf1b32be400a4d1 # initialize rs2
remw x29, x22, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x17, 0x8bf43d5dabbdd72d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4cd1d0dedb0bdc2f # initialize rs1
li x22, 0xc4704c3d0defcb94 # initialize rs2
remw x17, x23, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x31, 0xb9508507b034a082 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf986ec0bd68e2979 # initialize rs1
li x15, 0x0d0f0256c236e8b4 # initialize rs2
remw x31, x24, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x2, 0x7b887968d40402be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x266156914732046f # initialize rs1
li x21, 0x970db46dc93a60ad # initialize rs2
remw x2, x25, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x11, 0x23b851e60f0fdff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4ccdd3451da1e0e2 # initialize rs1
li x20, 0x64742bf3ef0019ae # initialize rs2
remw x11, x26, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x11, 0x0950184143d32e3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb85a3347d9e395f6 # initialize rs1
li x28, 0xe064cc7bfbedf7fa # initialize rs2
remw x11, x27, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x15, 0x9725706ad22eb391 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x60294c4016c21779 # initialize rs1
li x16, 0x1537e0efa5249bf3 # initialize rs2
remw x15, x28, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x10, 0x3d7bba0836cc03c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8b61d6b411b49e5c # initialize rs1
li x17, 0xb5b25af0c1eab557 # initialize rs2
remw x10, x29, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x11, 0x3d566045cb378b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd51d9e2c455447a4 # initialize rs1
li x14, 0xe59d77e70c9f81b2 # initialize rs2
remw x11, x30, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x30, 0x28c50ae36d4f6b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9f4a60c0a963151c # initialize rs1
li x7, 0x3449820ce7ed0f6c # initialize rs2
remw x30, x31, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x11e06fa6a5ad615e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8b29d84bb140cb7d # initialize rs1
li x0, 0xb8e7cc29fb847131 # initialize rs2
remw x20, x26, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x20, 0xcaebbc6adbf6f2aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xad02c0796535c9e6 # initialize rs1
li x1, 0x7258992c8a4b7123 # initialize rs2
remw x20, x24, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x21, 0x52cf950b463fe446 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc79cf352c5ed9278 # initialize rs1
li x2, 0xcff091feb6ec010f # initialize rs2
remw x21, x12, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x9, 0x2a318fda083cc354 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x052e6c0ac7286906 # initialize rs1
li x3, 0xa18df3fba3d6fb82 # initialize rs2
remw x9, x11, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x1, 0x2201bb3d5975a7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf04dc48c6d0f5496 # initialize rs1
li x4, 0xd014472f772f6ada # initialize rs2
remw x1, x8, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x13, 0x34ab7ec986376e27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa998c811300481f4 # initialize rs1
li x5, 0x65cf6ffbd103ad28 # initialize rs2
remw x13, x3, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x26, 0x8c408bd2856c7e3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb41db1c98d861825 # initialize rs1
li x6, 0xc5c7d0c0a54f944e # initialize rs2
remw x26, x2, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x1, 0x3ad4b7de1bd6ae3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc6896887a06e6e52 # initialize rs1
li x7, 0xa699a74f00e7aa66 # initialize rs2
remw x1, x9, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0xa8013b01aee12f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x231e0f9ac955115c # initialize rs1
li x8, 0x439fc6f55204fd3e # initialize rs2
remw x23, x12, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x10, 0x8669d4d7f36c342c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xdd849dc07d744862 # initialize rs1
li x9, 0x6da798a9bc3379a4 # initialize rs2
remw x10, x29, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x25, 0xda3238c6f54c0104 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x794d99d380700a43 # initialize rs1
li x10, 0x61d823d7b7c0c921 # initialize rs2
remw x25, x3, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x7, 0x4cc21e9e3be6463a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6036f37325540c50 # initialize rs1
li x11, 0xff03ec9cf5539312 # initialize rs2
remw x7, x21, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x2, 0x2acf2ba0da96fc90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0f4d1f2152f3f3a5 # initialize rs1
li x12, 0xa6840eb9cebb312f # initialize rs2
remw x2, x17, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x27, 0xf06147b058a86a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7f6850fadb7ad84a # initialize rs1
li x13, 0xc25e8931fc41c42e # initialize rs2
remw x27, x16, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x30, 0x794dcf6b5d3d65c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x53fd58a684ca8fa1 # initialize rs1
li x14, 0xfd2676d024f17313 # initialize rs2
remw x30, x16, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x29, 0xb259fd3d1f075c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa08a3d6aeea56f12 # initialize rs1
li x15, 0x26c7b553ce096769 # initialize rs2
remw x29, x10, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x12, 0x237411995ee163b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x630b29b4b85b8fbc # initialize rs1
li x16, 0x691d98758f38390d # initialize rs2
remw x12, x11, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0x1165b79efde6fd87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc0c35458fc7b3d6e # initialize rs1
li x17, 0xa756af4783eceed5 # initialize rs2
remw x18, x13, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x28, 0x3445070ae770889c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa745fb7ad0c96a38 # initialize rs1
li x18, 0x859456134a00cc98 # initialize rs2
remw x28, x31, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x11, 0x180080f296973568 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf24badd62b2a30ae # initialize rs1
li x19, 0x18d785e9e48c21a8 # initialize rs2
remw x11, x20, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x16, 0x50c18f3119cd98cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xac0e6dd68fe6346d # initialize rs1
li x20, 0x79ab184d3246475f # initialize rs2
remw x16, x28, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x30, 0x94e63551c160e1b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbcb80aef4124422c # initialize rs1
li x21, 0x6017c86a81583c5f # initialize rs2
remw x30, x7, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x19, 0xcc120a59cbec2e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x44e679b9318c4a03 # initialize rs1
li x22, 0x2a7a47ebe2339d87 # initialize rs2
remw x19, x14, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x12, 0x29a09951035a5eb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2f3eb518a9515498 # initialize rs1
li x23, 0x35943b4cfc486443 # initialize rs2
remw x12, x14, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x27, 0xe3a379d3689d6492 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x91ed9ddcc8597395 # initialize rs1
li x24, 0x27f7ccab5de5cbee # initialize rs2
remw x27, x10, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x4, 0x986f92355214051c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x627da4cc7fa0499a # initialize rs1
li x25, 0x1dff31afa3762b72 # initialize rs2
remw x4, x10, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0xf281a52da02ddf81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3e983340e0facfec # initialize rs1
li x26, 0xf6fe0679efa21fde # initialize rs2
remw x28, x18, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x21, 0xc45090ee0c01e833 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xde6812b27c1118db # initialize rs1
li x27, 0xa7ffad2625afefea # initialize rs2
remw x21, x2, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x30, 0x62a2bee6423971be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5cc1dab4ecdd6461 # initialize rs1
li x28, 0x3f15aefc8d191533 # initialize rs2
remw x30, x16, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x11, 0x91eb661362a5f34b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb0e8acf50b8d283f # initialize rs1
li x29, 0x175e14917b4ed7ee # initialize rs2
remw x11, x1, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x26, 0x81f64c1c21f9c983 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9ca9c5b5d0013a02 # initialize rs1
li x30, 0x51327c874b8d0f64 # initialize rs2
remw x26, x13, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x4, 0xbe58f78bf52958e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9d25f625fba71fd8 # initialize rs1
li x31, 0x33a6c98e2bba63de # initialize rs2
remw x4, x17, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xc17deb2dfadd6a67)
li x15, 0xe6ea7ab9c23d1e86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe6ea7ab9c23d1e86 # initialize rs1
li x0, 0xefba651e1a915637 # initialize rs2
remw x15, x8, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x9414436969945c1f)
li x3, 0x9414436969945c1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9414436969945c1f # initialize rs1
li x15, 0x9414436969945c1f # initialize rs2
remw x3, x0, x15 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x953e90189d94919)
li x7, 0x214a7c77087ea924 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0953e90189d94919 # initialize rs1
li x26, 0x0953e90189d94919 # initialize rs2
remw x7, x23, x26 # perform operation

# Testcase cmp_gpr_hazard raw test
remw x25, x19, x1 # perform first operation
remw x6, x25, x29 # perform second operation

# Testcase cmp_gpr_hazard raw test
remw x30, x8, x22 # perform first operation
remw x24, x9, x30 # perform second operation

# Testcase cmp_gpr_hazard waw test
remw x7, x24, x22 # perform first operation
remw x7, x16, x27 # perform second operation

# Testcase cmp_gpr_hazard waw test
remw x19, x31, x16 # perform first operation
remw x19, x13, x22 # perform second operation

# Testcase cmp_gpr_hazard war test
remw x6, x11, x21 # perform first operation
remw x11, x21, x14 # perform second operation

# Testcase cmp_gpr_hazard war test
remw x25, x2, x11 # perform first operation
remw x11, x24, x25 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x18, 0x8a2502ffd79966b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x0, 0x32b04f48035b38ae # initialize rs2
remw x18, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x25, 0x4130da6e9ffda68b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
remw x25, x21, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x5, 0x52cd0d055b9d8ded # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
remw x5, x16, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0x6726e486bb8bf33e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x0, 0x742b80346795b23c # initialize rs2
remw x2, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x11, 0x81df4eb087268c48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
remw x11, x17, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0xcc2957b9695e40e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
remw x26, x24, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x12, 0xac0c5af06c3caf22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x0, 0x423addeefb9f103d # initialize rs2
remw x12, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x12, 0x1f63582e61605afe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
remw x12, x23, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x9, 0x5ef1911cdad969c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
remw x9, x3, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x18, 0xf45704ee671975f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000080000000 # initialize rs1
li x0, 0x104454263b3f4584 # initialize rs2
remw x18, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x6, 0x19ebbe6e4786c42e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000080000000 # initialize rs1
li x21, 0x0000000080000000 # initialize rs2
remw x6, x2, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x19, 0x22a5bd17130277dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000080000000 # initialize rs2
remw x19, x1, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x6, 0x39ef3a479216bdab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000080000001 # initialize rs1
li x0, 0x2ff2e911464c0ece # initialize rs2
remw x6, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x31, 0x4565c28025e087b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000080000001 # initialize rs1
li x21, 0x0000000080000001 # initialize rs2
remw x31, x30, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x30, 0x2c5ff0d18259c66a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000080000001 # initialize rs2
remw x30, x14, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x29, 0xdba3b8359d60d391 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000007fffffff # initialize rs1
li x0, 0xf66e152797d13d45 # initialize rs2
remw x29, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x15, 0xd6d6dba12464d5d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x000000007fffffff # initialize rs1
li x19, 0x000000007fffffff # initialize rs2
remw x15, x26, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x9, 0x2aed2d2ec0d76d8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x23, 0x000000007fffffff # initialize rs2
remw x9, x28, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x14, 0xc1d484fab88d9a4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x000000007ffffffe # initialize rs1
li x0, 0x07c737ce22acdaba # initialize rs2
remw x14, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x22, 0x251cac54d351c12c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x000000007ffffffe # initialize rs1
li x16, 0x000000007ffffffe # initialize rs2
remw x22, x5, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x6, 0xe0b2dd8ed620f14c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x16, 0x000000007ffffffe # initialize rs2
remw x6, x1, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x28, 0xc6620f26d10cae99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000ffffffff # initialize rs1
li x0, 0x75bf5f2036041cfe # initialize rs2
remw x28, x17, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x29, 0x3f2495c8509df713 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
remw x29, x25, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x3, 0x5a439a870a76b4c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
remw x3, x28, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x13, 0x2455c1ef8a9f20fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x0, 0x28b1e618e6e3689a # initialize rs2
remw x13, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x30, 0x5ed4a6b4bc7ac446 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
remw x30, x8, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x28, 0x42d87af96fa61293 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
remw x28, x19, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x7, 0x8f22c142367ec5f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000aaaaaaaa # initialize rs1
li x0, 0x81982d5b942302c4 # initialize rs2
remw x7, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x5, 0xecce14493269037f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000aaaaaaaa # initialize rs1
li x15, 0x00000000aaaaaaaa # initialize rs2
remw x5, x10, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x20, 0x826905065f2065bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x3, 0x00000000aaaaaaaa # initialize rs2
remw x20, x29, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x12, 0x8c5135db07c8c836 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000055555555 # initialize rs1
li x0, 0x8d044b910e1b27e3 # initialize rs2
remw x12, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x27, 0x6e647586db6b2f84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000055555555 # initialize rs1
li x29, 0x0000000055555555 # initialize rs2
remw x27, x24, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x8, 0xafb7d50f3a10b089 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000055555555 # initialize rs2
remw x8, x7, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x27, 0xcde5d435f8471273 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000063ae86f7 # initialize rs1
li x0, 0xbeece9ab211af9a7 # initialize rs2
remw x27, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x25, 0x2f106b4337d2a23d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000063ae86f7 # initialize rs1
li x31, 0x0000000063ae86f7 # initialize rs2
remw x25, x11, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x17, 0x3ba2f748457bc3c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000063ae86f7 # initialize rs2
remw x17, x7, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x28, 0x7779275e136b0e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000e3ae86f7 # initialize rs1
li x0, 0xd1b7210beadc887d # initialize rs2
remw x28, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x22, 0x47516da4f4e29cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000e3ae86f7 # initialize rs1
li x12, 0x00000000e3ae86f7 # initialize rs2
remw x22, x25, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x18, 0xb589376edf9d1c7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x11, 0x00000000e3ae86f7 # initialize rs2
remw x18, x5, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x9e255bfab2453d4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x26, 0x6d8e172888a4022c # initialize rs2
remw x8, x20, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x481c80aca2148551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x12, 0x16ad456ff59b6ab9 # initialize rs2
remw x1, x19, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x0c5d1cb46469d243 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000002 # initialize rs1
li x9, 0x3f096ab0962ece2e # initialize rs2
remw x12, x31, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x3, 0x4d0bc31f31e90f4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x26, 0x09b6fa81b6d9be70 # initialize rs2
remw x3, x13, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x8, 0x49c9e0e2f475fd32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000001 # initialize rs1
li x26, 0xa5c6a391ec3d3ce5 # initialize rs2
remw x8, x30, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x7, 0x3b8140c9fbd5552c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x14, 0x2e389fc6d2bbd647 # initialize rs2
remw x7, x23, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x7, 0x1435ed0959c5f4e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x25, 0xa805867b3aff5b43 # initialize rs2
remw x7, x10, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0x38220876f2f1c84f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x9, 0xe47d1cccd023c9cf # initialize rs2
remw x13, x6, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x6, 0xb5f1cc8518c36096 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
li x10, 0xc6b0b9466d0864a6 # initialize rs2
remw x6, x15, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x19, 0x73d66a035c01ba67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x1599df4f1ff84c5a # initialize rs2
remw x19, x8, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x28, 0x0f7f28c583a28a8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xdf3dfe9e3cfa0b93 # initialize rs2
remw x28, x17, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x4, 0x9d455cec42101292 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
li x15, 0x1271224796060855 # initialize rs2
remw x4, x31, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x21, 0x38d948c136b96784 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
li x28, 0x024882ac1daa22d1 # initialize rs2
remw x21, x6, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x7, 0x6da73380f49b3682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
li x31, 0xd5e3e4a97046aa6d # initialize rs2
remw x7, x3, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x26, 0xb97c2507e372d8d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x24, 0xc465f45f764ae428 # initialize rs2
remw x26, x15, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0x226f0e074a84ccb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000001 # initialize rs1
li x3, 0xba6791bfa685d9ab # initialize rs2
remw x15, x9, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x2, 0xabebed63f32712b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb9f26bed52efdde3 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
remw x2, x21, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x27, 0x707f8b38c9dccc33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xcbb60a44a6868ba8 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
remw x27, x6, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x23, 0x3b9dde247d6c1f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x82b1387e62fc6de1 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
remw x23, x24, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x27, 0x49999b7637cfa848 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x74dc7e080eb9e53d # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
remw x27, x15, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x30, 0xe9a1bf0f943817da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe2a8214b108c2019 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
remw x30, x4, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x22, 0x8a9ab43197848410 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa6594f4f587ed29d # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
remw x22, x28, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x11, 0x40ce79232f78f1f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb3bbb1a6a7fe3a8d # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
remw x11, x23, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x22, 0x92089a0b0ae7fa5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x15f0225b6c14b2fb # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
remw x22, x1, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x6, 0xd7f9aadd6b3071b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x92162d7dd858ebd3 # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
remw x6, x16, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x11, 0xe8602c6e1568b484 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1e62c96dda4c5faa # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
remw x11, x7, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x15, 0x15b4533e04c43435 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb31362453302ef01 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x15, x6, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x14, 0xec559b978dbe02bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x70b0ee8252a8b7bb # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
remw x14, x15, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x31, 0xfc52a6c196fed292 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe849504a6b9613eb # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
remw x31, x27, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x3, 0x6c6a005e9af34d43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x25011c448ed4354d # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
remw x3, x12, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x2, 0xc4c52fd52dd7f253 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x857beceb0009d4c1 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
remw x2, x4, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x29, 0xeea8568e270c2cc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9ab12211ae647885 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
remw x29, x19, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x17, 0xd67c7b538193b888 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
remw x17, x28, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x18, 0x2c238cbf2fd87bae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000000 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
remw x18, x7, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x1, 0x26223622a50102d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
remw x1, x29, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x29, 0x2f2687bbababab46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
remw x29, x25, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x7, 0x3764f7da6779de09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
remw x7, x28, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x26, 0x5e5dfd754b3bbb60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
remw x26, x29, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x26, 0xf29090e821de4e96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000000 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
remw x26, x7, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x15, 0x09664b32b9423dce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
remw x15, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x23, 0x4ec00cc459965359 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
remw x23, x2, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x27, 0xe2acd95c530619d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000000 # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
remw x27, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xc5eb8e162bf20fee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x12, x9, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x24, 0x9e2ff8f576b1c808 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
remw x24, x14, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x21, 0x4a60ff5f8cd03849 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
remw x21, x17, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x19, 0xcf44e5b7a09e6596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
remw x19, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x17, 0x78c41efa6e29abeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
remw x17, x24, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x20, 0x498bfcb35ce7545a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
remw x20, x10, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x31, 0x325e1a04fdbcc11c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
remw x31, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x30, 0x0196ca354683203f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
remw x30, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x7, 0xee3b0c32d3a07b31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
remw x7, x9, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x17, 0xa8caa09a2f0fab97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
remw x17, x13, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x26, 0xe944f2f777d617e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
remw x26, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x5, 0x62c5bade76b503fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
remw x5, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x26, 0xd161de1cdfbf480b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
remw x26, x5, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x4, 0x123de74acacb4706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
remw x4, x10, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x20, 0xba1517167bc0760d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
remw x20, x2, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x13, 0x2353ea69e755d80c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001 # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
remw x13, x23, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0xbd36262554779f11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x28, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x23, 0x8ac370d2c2cf3c83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
remw x23, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x26, 0x2b7288e868641dad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
remw x26, x19, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x29, 0xd5ded20bc820af31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
remw x29, x9, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x29, 0x45b4b489d8c4732e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
remw x29, x17, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x4, 0x2d617e44a5c621bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
remw x4, x16, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x5, 0x61f9ec689e5aea4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
remw x5, x8, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x27, 0x445ec1ad6b12f84b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
remw x27, x17, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x12, 0xddeea6ed69fc7dcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
remw x12, x27, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x1, 0x0c416c05b6608e51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
remw x1, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x22, 0x145f2c3f799a743c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
remw x22, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x3, 0x0ba24217fd2a6cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000002 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
remw x3, x10, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x27, 0x2afdec0d1b691fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
remw x27, x26, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x2, 0xa4782a4c2640aed0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
remw x2, x25, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x23, 0xf17e2782a7c3bab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
remw x23, x19, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x25, 0x18cd6f7bd0147117 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000002 # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
remw x25, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x5f76d35199c7555a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000002 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x11, x17, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x2, 0x604a7ef190dc7a0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
remw x2, x12, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x24, 0x0b77c057ce1506f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
remw x24, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x5, 0x4f3a3d75d15559a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
remw x5, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x24, 0x6f89ac366ea1d1d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
remw x24, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x10, 0x4b76dfb3f9fdaa3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
remw x10, x21, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x10, 0x4d4e585bbba2a375 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
remw x10, x14, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x28, 0x6293329462bdfb02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000000 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
remw x28, x3, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x11, 0x1e57f07fd77e88b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
remw x11, x27, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x30, 0x00088816d891c389 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
remw x30, x23, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x27, 0x02bd5c2a713da624 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
remw x27, x26, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x26, 0xe473010e5a1629d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
remw x26, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x17, 0x45e508a1c79b4e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
remw x17, x13, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x29, 0x40324a6c0656f0ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
remw x29, x19, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x16, 0x290bfd2ebbfd2295 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000000 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
remw x16, x17, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x5, 0xed93ff304ada56f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
remw x5, x28, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x089f7ea5d6715e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x16, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x14, 0xd745ff6e4f872d43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
remw x14, x13, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x30, 0xed9eaf504fc0f2c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000000 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
remw x30, x10, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x13, 0x58479af1d3727856 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
remw x13, x6, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x21, 0x037f5630ea939058 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
remw x21, x29, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x14, 0xe331da353cec38d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
remw x14, x26, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x24, 0x503a45325a5dba0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
remw x24, x27, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x2, 0xdcd98775ba547703 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
remw x2, x5, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x9, 0x2dee843273907e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
remw x9, x6, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x14, 0x98f79655a3e906ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
remw x14, x3, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x16, 0x29a51f5777d873e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
remw x16, x24, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x17, 0x2c056252fd16d971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
remw x17, x3, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x14, 0x67c6b91ef7ea7dc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
remw x14, x19, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x19, 0x279d28d760e51914 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
remw x19, x25, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x3, 0xf8f0c3a610cf9147 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000001 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
remw x3, x5, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x21, 0x5066e2c5e65be95b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
remw x21, x6, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x6a515c202b83caf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x21, x6, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x15, 0x552beae22eb2dad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
remw x15, x3, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x12, 0x4762124f96b0e45a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000001 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
remw x12, x7, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x7, 0xc8246ead1a9e4655 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000001 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
remw x7, x22, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x21, 0x3b20ea26207f754c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
remw x21, x29, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x9, 0x83332b67ad79b289 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
remw x9, x11, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x16, 0x7f4636ec9dfe452d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
remw x16, x29, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x28, 0x2b0ca4e8ec9054ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
remw x28, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x9, 0x3f5c6ac558a3ebf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
remw x9, x12, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x25, 0xb2aea73b630ad4a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
remw x25, x16, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x5, 0x4aee5121983c6ac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
remw x5, x22, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x16, 0x84a353605c4b8a76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
remw x16, x25, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x26, 0x6354a97c8b589cc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
remw x26, x4, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x3, 0x5e1d170c2fb7a39b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
remw x3, x19, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x3, 0x727f71a48246ac15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
remw x3, x18, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x18, 0x81e2f8431428d37b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffffffffffff # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
remw x18, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x89572988e104a7ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x26, x27, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x21, 0xf4ff03d2fa2be752 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
remw x21, x13, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x27, 0x15b9880c44e66e38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
remw x27, x11, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x16, 0xd012ef82e5e9e143 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffffffffffff # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
remw x16, x9, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x28, 0x9195e86e30d243e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
remw x28, x14, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x21, 0x7783f71b754cbc77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
remw x21, x9, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x6, 0x43ab76af34a58eba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
remw x6, x13, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x25, 0x1a461727dc273441 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
remw x25, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x28, 0xc8cae4902a30601b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
remw x28, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x27, 0x2e1d8aaab07eaf7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
remw x27, x24, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x7, 0xb6b5eebda74c1190 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
remw x7, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x27, 0x4ce9cecfe614ba62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
remw x27, x13, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x29, 0xdae81c49758f4b75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
remw x29, x25, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x12, 0x7efeca03847c9246 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
remw x12, x3, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x29, 0x6ac330c8db9414ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
remw x29, x10, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x16, 0x7f49f40ce3718234 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
remw x16, x6, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x04ed3e3c32d13378 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x13, x24, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x22, 0xc528a31f0f2a64b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
remw x22, x9, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x19, 0x906e2ca2cca41ff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
remw x19, x31, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x25, 0xc95b1e832db18430 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
remw x25, x18, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x6, 0x582c5cef6211c865 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
remw x6, x27, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x6, 0xe94313d0606b1422 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
remw x6, x19, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x31, 0x261caff11c58faeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
remw x31, x28, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x25, 0xfef5f69381dbc309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
remw x25, x21, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x24, 0x5053ffd4dbcf75d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
remw x24, x21, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x20, 0xf60a4781766f2065 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
remw x20, x2, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x9, 0x92117169b785a086 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
remw x9, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x8, 0xf6c12464eb5adff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
remw x8, x9, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x12, 0xc1b3348652fc620e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
remw x12, x24, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x14, 0xdb0e2abecff84e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
remw x14, x10, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x3, 0xaf9ab8b49e3a56a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
remw x3, x16, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x14, 0xb2d00e3d841be87f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
remw x14, x16, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xf2dca5c09c1861ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x10, x21, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x5, 0xd8529fd4aee52b0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
remw x5, x24, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x21, 0x725cb0c68ed4ccf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
remw x21, x1, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x7, 0xf588a3bcf9f70914 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
remw x7, x29, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x3, 0xdd598a4245770ab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
remw x3, x2, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x4, 0xf49df3f34a6c12f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
remw x4, x8, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x23, 0xdfd9464fe8c962f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
remw x23, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x22, 0xfc002d51446475ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
remw x22, x17, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x28, 0x9df483b2c8b316ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
remw x28, x7, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x24, 0x4bc182f2c92642ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
remw x24, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x18, 0x6014f7326a773831 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
remw x18, x20, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x30, 0x19516809b7f41b16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
remw x30, x27, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x15, 0x183f5d0e8b9b28e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
remw x15, x4, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0x2eabf7fd1b5ca3bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
remw x19, x23, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x7, 0xab73b92a1297a8fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
remw x7, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x24, 0x4e30e773068b2624 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
remw x24, x12, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xd75a65b12a070222 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x5, x23, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x3, 0xd98ba3a5fa80ce92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
remw x3, x11, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x29, 0x6e5b2257e3ad784f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffffffffffe # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
remw x29, x28, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x22, 0x1bd36444e61ebb72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
remw x22, x30, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x8, 0xcf015d4029be8a65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
remw x8, x3, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x20, 0xd3f3271959f2dcbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
remw x20, x10, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x22, 0x54811c261fd19365 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
remw x22, x18, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x24, 0xeacd808e34908383 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
remw x24, x15, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x25, 0xef083779298ccf9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
remw x25, x10, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x19, 0x087fa611f95dde50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
remw x19, x17, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x21, 0xee14da1f4dbdf672 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
remw x21, x27, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x25, 0x132d3099aaab06dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
remw x25, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x24, 0xb897acb1885c9db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
remw x24, x1, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x16, 0x3b2b303ea9015847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
remw x16, x11, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x21, 0xfbfedf26ead1e373 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
remw x21, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x29, 0x03fa21134824f604 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
remw x29, x28, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x127e742d8f09c9a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x7, x28, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x14, 0x6e946594851115f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
remw x14, x27, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x5, 0x58c3fefe67f57b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
remw x5, x6, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x31, 0xf09271f28a6527d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
remw x31, x22, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x20, 0xd304683e235b1f12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
remw x20, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x19, 0x78f7c4125fd7f94a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
remw x19, x23, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x4, 0xb50f6ec21b98899e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
remw x4, x21, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x11, 0x5eecaa62f18b479a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
remw x11, x13, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x21, 0xb6904bc33c472d8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
remw x21, x29, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x30, 0xda1f8dc3fc095a65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
remw x30, x9, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x17, 0xce878e6b904ca2fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
remw x17, x12, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x1, 0x5370de059a993257 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
remw x1, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x26, 0xe64cceec4f6b16a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
remw x26, x7, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x7, 0xfccb03774ec39e3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
remw x7, x10, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x30, 0x62137e497b4020b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
remw x30, x21, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x10, 0x11723e9dbcbc7f4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
remw x10, x17, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x31e74ddf41205568 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x25, x10, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x15, 0xa796e6e7fb140793 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
remw x15, x25, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x16, 0x90359a840a280ca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
remw x16, x31, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x1, 0x618f9c16ba7ef41f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
remw x1, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x17, 0x9420f77720d5c2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
remw x17, x7, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x9, 0xef57a6580cc7113d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
remw x9, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x24, 0xd3eeeb7ca753779c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5555555555555555 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
remw x24, x9, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x21, 0x3805008f0350549f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5555555555555555 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
remw x21, x29, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x18, 0x64635f1d2fe72774 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
remw x18, x25, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x15, 0xf2e03fe8a06bb17a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5555555555555555 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
remw x15, x28, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x6, 0xb7779f40b2cc5706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
remw x6, x8, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x30, 0x058231b05754eece # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
remw x30, x1, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x28, 0xe8e65a0332ae0d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
remw x28, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x22, 0xf5a3c4f1261265ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
remw x22, x31, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x18, 0x4965d31e4b092a55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5555555555555555 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
remw x18, x9, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x16, 0x116c5fd3fd86e836 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
remw x16, x14, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0xb4a897b6f67e7992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x13, x14, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x2, 0x577a939488369540 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
remw x2, x6, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x16, 0x05f48d9f236ae4f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
remw x16, x27, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x25, 0xfedcb96a1927557c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
remw x25, x10, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x27, 0x87c1954b3f3aba12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
remw x27, x22, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x28, 0xeb8b939940164ee0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5555555555555555 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
remw x28, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x15, 0xa8ae7bf0a989e258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
remw x15, x5, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x12, 0xdd3d04c12cfaba46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
remw x12, x8, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x2, 0xe5361c848cdae4ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
remw x2, x28, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x21, 0xc9a7af27d71607fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
remw x21, x15, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x26, 0xad6843d113efbe30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
remw x26, x29, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x24, 0xed8638b27bba22d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
remw x24, x16, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x19, 0xa531a3ce01927e46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
remw x19, x25, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x21, 0xc2ac9e8db5c7d0a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
remw x21, x6, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x30, 0xc388f36ee581fd24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
remw x30, x10, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x31, 0xe4a70a733d83b057 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
remw x31, x3, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0xabf4c843f683f416 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x23, x12, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x3, 0xc963504fd9a0b058 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
remw x3, x29, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x6, 0xdf44578b79f94485 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
remw x6, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x1, 0x3fe2e8d790adc6de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
remw x1, x14, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x10, 0x795f26321be949ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
remw x10, x17, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x3, 0x4f4ac5183d2f0d05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
remw x3, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x17, 0xfa986c2c09168051 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
remw x17, x19, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x3, 0x49b8f6e2a3c5b4fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
remw x3, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x1, 0xc2b0f62d500ab839 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
remw x1, x28, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x29, 0xd63954d360fe1bda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
remw x29, x4, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x14, 0x75ee4f5d9f82661d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
remw x14, x5, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x11, 0x07813488fbf9f964 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
remw x11, x21, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0x875c30e4674e07c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
remw x3, x19, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x4, 0x252f12c17aa3bca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
remw x4, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x30, 0xbfcac9b7b5b4842f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
remw x30, x19, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x4, 0xae5a80cd3cc79cb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
remw x4, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x6eca9a584bb94ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x24, x27, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x30, 0x1c0451e4552492ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
remw x30, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x29, 0x7a3d8f5a7e1736cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
remw x29, x9, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x17, 0x5927f70590b80fd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
remw x17, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x10, 0xd3ab2dbd4320adfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
remw x10, x3, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x7, 0x5400247e3c405a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
remw x7, x9, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x1, 0x1502473685b8768c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
remw x1, x20, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x6, 0x44be040ee7452a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
remw x6, x10, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x8, 0x260c2f568f2c75a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
remw x8, x7, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x13, 0x4a2cde7bda6aea23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
remw x13, x22, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x31, 0x85ba5ff31eee5378 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
remw x31, x1, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x18, 0xec583a6ac7800ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
remw x18, x30, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x9, 0x24d8d272ba93ab7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
remw x9, x29, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x4, 0x8eba40f3c8915f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
remw x4, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x28, 0x084f1c9366225289 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000000 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
remw x28, x7, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x5, 0xd1a4f5ac2cd2c008 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000000 # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
remw x5, x26, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0xa233be0a33b97852 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x11, x16, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x6, 0x314117210c44e153 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
remw x6, x28, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x18, 0x30e709ab3377a704 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000000 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
remw x18, x5, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x3, 0x952b0b1c8137835c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
remw x3, x27, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x10, 0xbbe0ea34468a9c23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
remw x10, x3, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x26, 0xe3f28e0404d43fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
remw x26, x19, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x22, 0x67fbb2e015f7d0c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
remw x22, x8, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x3, 0x6f0894242f1020fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
remw x3, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x26, 0x8a03a107688fdc76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000001 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
remw x26, x10, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x18, 0x812d485e34d2d68c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
remw x18, x24, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x20, 0xc2535e74c10a463d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
remw x20, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x14, 0xb6d44e5462c7b16c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000001 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
remw x14, x20, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x30, 0xe16f698c13058da3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
remw x30, x8, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x20, 0x2c8e416d44f22eae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
remw x20, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x14, 0xd594d23e8751577a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
remw x14, x28, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x24, 0x769961a16938b62f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000001 # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
remw x24, x28, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x68ea4fa751a694a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x6, x18, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x4, 0x4c06a1f3993d1d0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
remw x4, x27, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x17, 0x60e7c10c2460c274 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
remw x17, x1, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x9, 0x66f0a97a8f23a7cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000001 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
remw x9, x2, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x24, 0x3a346be592a24dee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000001 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
remw x24, x29, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x31, 0x1c027167a0fc3fb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
remw x31, x2, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x0fd2769edbb51267 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xf936272c55c5f944 # initialize rs1
li x8, 0x65107f05979687c5 # initialize rs2
remw x0, x0, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x430115e3fd06bac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x20bae881c23856b2 # initialize rs1
li x21, 0x1b73f16a6392d430 # initialize rs2
remw x1, x1, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xbd26e04d22f5b9d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x551d2c4a355622f6 # initialize rs1
li x19, 0x8360dc91cfe97bf2 # initialize rs2
remw x2, x2, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xe8cf69509075a921 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0bed1989e9975f18 # initialize rs1
li x22, 0xb0b19bbab5f91f89 # initialize rs2
remw x3, x3, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x5852bcf847f37b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x9a87ab6b431198ec # initialize rs1
li x7, 0x123d9b65c997c746 # initialize rs2
remw x4, x4, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x2bdf7b669115b0b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8ecd58720eb59d03 # initialize rs1
li x27, 0xf6db9cb27d8b9f25 # initialize rs2
remw x5, x5, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xd47e14f8cff423d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfcf6e935161be96e # initialize rs1
li x20, 0x57ccfd23f4038d59 # initialize rs2
remw x6, x6, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x153b9c533b608f84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2a86f0a325e8bab9 # initialize rs1
li x4, 0x6928eaaedd347a9c # initialize rs2
remw x7, x7, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x01405a3a829c0b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc03e3738bcf8173a # initialize rs1
li x20, 0xf5af23c8b27457a5 # initialize rs2
remw x8, x8, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x04d76e149f12f582 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3d8e3b4c6e568731 # initialize rs1
li x26, 0xdb9293407d57733a # initialize rs2
remw x9, x9, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x8a3e3b28e3d03935 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xda05b67392d1666a # initialize rs1
li x25, 0x2bee5f8332a86920 # initialize rs2
remw x10, x10, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x031b46cf25671cff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc4af91fc9b578c07 # initialize rs1
li x31, 0xdea41dac7e3bccce # initialize rs2
remw x11, x11, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa62b1005ffc38c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0462de9eeb2cdded # initialize rs1
li x12, 0x5895ce0a70cc9d19 # initialize rs2
remw x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xf28ef19cdf602305 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x27c09d0c5b173aa5 # initialize rs1
li x13, 0x5825c6fcdffb4a24 # initialize rs2
remw x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x4408f4a5ee68242b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x344c574a9f2cb0be # initialize rs1
li x17, 0x8c124069a9f280c1 # initialize rs2
remw x14, x14, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x1e634ee4afc140f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x022c7a389ed3f45a # initialize rs1
li x19, 0x41d0d2a20c1928ad # initialize rs2
remw x15, x15, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x383c8e2c5d0d45a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x58d2407766522223 # initialize rs1
li x3, 0xd844c2b41df8564c # initialize rs2
remw x16, x16, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x907f84770f1f0546 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7204b838587ea2ac # initialize rs1
li x29, 0xe73c794fd2c8395f # initialize rs2
remw x17, x17, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xd9be68ca9fa737ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7313a5610d2d44b3 # initialize rs1
li x20, 0x55b79ed4a88cab0e # initialize rs2
remw x18, x18, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x0ba0d98213f48812 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x39bd963424998a40 # initialize rs1
li x7, 0xcd6a635289775969 # initialize rs2
remw x19, x19, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3d85a6c18ee5be3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9557975ac74330d0 # initialize rs1
li x25, 0xfdb58044a38df9db # initialize rs2
remw x20, x20, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2b686fb656abcbc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4715b87f156ef6e6 # initialize rs1
li x4, 0xdd5abc3ab299c9d5 # initialize rs2
remw x21, x21, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x0ec3ed0721d1f6fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6efd1f5868a26477 # initialize rs1
li x5, 0xfcd7448b43119473 # initialize rs2
remw x22, x22, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x9e854360b3305028 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9393e2e105b9ff40 # initialize rs1
li x8, 0x05874bc1547c0d26 # initialize rs2
remw x23, x23, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xdc913ff861e9bd62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xec82dba857b6e4d4 # initialize rs1
li x6, 0x4cb135e3b9f72cd8 # initialize rs2
remw x24, x24, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x2df269ef632bf325 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x000ee96d9568465f # initialize rs1
li x11, 0xfd8982250bbe4b5c # initialize rs2
remw x25, x25, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x344b6a6bb00da269 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaf8e256b84a95118 # initialize rs1
li x24, 0xaef0db68ede9246d # initialize rs2
remw x26, x26, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xefad534f7b65df5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4b08fea593fc6d10 # initialize rs1
li x6, 0x841d7e88f9dd7aed # initialize rs2
remw x27, x27, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x0f97329c9997f12b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0986ad4ab02dd519 # initialize rs1
li x27, 0x6c19dc5ca145a641 # initialize rs2
remw x28, x28, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x650b2b9d72beff43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x707171c1a96c5621 # initialize rs1
li x6, 0x81c7e40fd83bcc96 # initialize rs2
remw x29, x29, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x0c55abe55990e34f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3f32662a250c3504 # initialize rs1
li x26, 0x3abc9516b1e15807 # initialize rs2
remw x30, x30, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x16a6a3dbdfa0abb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x3b2c131404088438 # initialize rs1
li x6, 0x8643cec749d1fc5a # initialize rs2
remw x31, x31, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x5a10cbee249b8627 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x23ed597297fd1018 # initialize rs1
li x0, 0xcebc0b5acef749f7 # initialize rs2
remw x0, x2, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x183394301cc623ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x49504ff180314be6 # initialize rs1
li x1, 0xd34e1fb82e6fd898 # initialize rs2
remw x1, x28, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x2a59daa7d9de6834 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd94ab35443e083bf # initialize rs1
li x2, 0x047795ee8c08894f # initialize rs2
remw x2, x21, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xd66b88c7f481d226 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1997975cae89f065 # initialize rs1
li x3, 0x32a50f4f5e168150 # initialize rs2
remw x3, x25, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xa1b26b340a3da128 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x18e3fcb583b13243 # initialize rs1
li x4, 0x2d38e2944afdee03 # initialize rs2
remw x4, x13, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xa8611bb176b97550 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa3861f57765bd172 # initialize rs1
li x5, 0xdf2a9ed198745ee3 # initialize rs2
remw x5, x7, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xf9134dbbc5d6d92a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xac6772b1f680aab9 # initialize rs1
li x6, 0x02cf2656c0ae4ab7 # initialize rs2
remw x6, x31, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xcb0ea5364d2564ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5d7114b28fd9ea0b # initialize rs1
li x7, 0xb83db9be257ca122 # initialize rs2
remw x7, x27, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xc487c8d4e7a87b9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x99510449b9a5f7a9 # initialize rs1
li x8, 0xa874496321ddd824 # initialize rs2
remw x8, x6, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x455ff63f040a0ead # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb4ac08504b609560 # initialize rs1
li x9, 0xaba0a022e96ac54d # initialize rs2
remw x9, x21, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xc67758d4a9c939e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8ec7117dffbf2f2a # initialize rs1
li x10, 0x5f6c5759034875b6 # initialize rs2
remw x10, x20, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xd0f40ff5690dd0a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5d71f5f2871f3e8a # initialize rs1
li x11, 0x778377f30ee53bd7 # initialize rs2
remw x11, x17, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xc2d93d9b32778844 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xdf518fc927c8da49 # initialize rs1
li x12, 0xfff2eb3ecb6324e1 # initialize rs2
remw x12, x10, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x87a9e53fb56bdab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8bbdf793f9d8f2a1 # initialize rs1
li x13, 0x817c3279a0faa7a2 # initialize rs2
remw x13, x16, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x6398ef5caf868650 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xade8a23b8a11d893 # initialize rs1
li x14, 0x183fd3812bd4f4a1 # initialize rs2
remw x14, x25, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x2e692794013623ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf299973cdfaa1aae # initialize rs1
li x15, 0xbc9340b232208b70 # initialize rs2
remw x15, x17, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xc327c7295cb5346e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xbe0968d80f7999c3 # initialize rs1
li x16, 0x84770ad1c202910d # initialize rs2
remw x16, x19, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x98f544d2b627f05f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9ef8e6c6cb0c03d9 # initialize rs1
li x17, 0xd0eb5c8b98cc9b91 # initialize rs2
remw x17, x26, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xf40fa97fa60da267 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x02f6724453cd38d0 # initialize rs1
li x18, 0xb1dbbf9f08170919 # initialize rs2
remw x18, x6, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xc60d086152744861 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x127dd94ac4090135 # initialize rs1
li x19, 0xd79cdc345696ed2a # initialize rs2
remw x19, x27, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x2e9ecedf6b13baf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa52dc4b7faa355fd # initialize rs1
li x20, 0xeecb34f51775bd06 # initialize rs2
remw x20, x5, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xb199973cfc2cb7be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe89f9171c6954c63 # initialize rs1
li x21, 0xffd8c3ba60c0aedd # initialize rs2
remw x21, x16, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xab17926f3ccd51b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3fcc000a3dc66b5a # initialize rs1
li x22, 0x2ad20130fe614c30 # initialize rs2
remw x22, x7, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xf1aedf9709ce401a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7de4ede80206f721 # initialize rs1
li x23, 0x164e137842e2974d # initialize rs2
remw x23, x24, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xb61cf0b54a368752 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6b61bbc6a9bd8caa # initialize rs1
li x24, 0x10249e2186e143ca # initialize rs2
remw x24, x18, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x8eb466e493ca9f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x53940b804383f754 # initialize rs1
li x25, 0x700951b8830497c1 # initialize rs2
remw x25, x27, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x3dbeed9f0bf0f445 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa7e50645f73301f0 # initialize rs1
li x26, 0xb574a1a84a9e3bd9 # initialize rs2
remw x26, x28, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x87bf9e60372721a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4848ae4a7b863491 # initialize rs1
li x27, 0x7b0e9a292751c47f # initialize rs2
remw x27, x15, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xe8d85c41171482d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7df0f65b13b306c8 # initialize rs1
li x28, 0xd5020dd79c164306 # initialize rs2
remw x28, x27, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xf9bb33c6901d60fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8355ad787103161d # initialize rs1
li x29, 0xf5fc4434ddefee66 # initialize rs2
remw x29, x20, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0xaf4784a4a4b6234e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xeed4b60eae26a1e8 # initialize rs1
li x30, 0x43be131cf8184270 # initialize rs2
remw x30, x6, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xfe1717687bef97f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9812c0654e0d5cb5 # initialize rs1
li x31, 0x811c3d1a00c34aad # initialize rs2
remw x31, x22, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xa3f93cc6c7be93a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x02524f24e05c066c # initialize rs1
li x0, 0x1c3c7e75827270aa # initialize rs2
remw x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x6168fb84b3af442a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xee65cb192798bfd0 # initialize rs1
li x1, 0x6a5ab9819d9a98fa # initialize rs2
remw x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xde4f8adf4a1264c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3392f702d82f6035 # initialize rs1
li x2, 0x5892123bfd5982f0 # initialize rs2
remw x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xca5c8c4ae4846095 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7112d0d49643d40d # initialize rs1
li x3, 0xe57bd6952fe422aa # initialize rs2
remw x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xc0e2d3b5ffaae558 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5c9d6bad13c3d9e3 # initialize rs1
li x4, 0x19c3a04800944866 # initialize rs2
remw x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0xbb5d4c495dce706b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xac92dfa5675f7bc9 # initialize rs1
li x5, 0xfa3b1389e17124bb # initialize rs2
remw x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xc0ac74caf67903e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x46dcf04240e5ddc2 # initialize rs1
li x6, 0xdf94fc1e25009103 # initialize rs2
remw x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0xbf33f85c683a3e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd4e083191e76cc06 # initialize rs1
li x7, 0x96cd6590d708359b # initialize rs2
remw x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x18f002ae02853a15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4652715f512cd232 # initialize rs1
li x8, 0xc9deca744d573317 # initialize rs2
remw x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x19da7fd9f44e039b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe78fb80f5eec3ed5 # initialize rs1
li x9, 0x874e6ed8505d7b6b # initialize rs2
remw x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xa7645aeb7e048bac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc8c1fd4ee3106b23 # initialize rs1
li x10, 0x2f3b8e5e850eafb3 # initialize rs2
remw x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x1f0e77bd9bec4d66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x78fcbb6a0c8e8e5c # initialize rs1
li x11, 0x369fe3f4256d2efd # initialize rs2
remw x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x734ba1e07b9e894d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1537a216af72075e # initialize rs1
li x12, 0x011b8fb7aa737171 # initialize rs2
remw x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x469ebb5c174f3b6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfcfdad74d7b7f07a # initialize rs1
li x13, 0x3f59639e624f993f # initialize rs2
remw x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xa4dc8ac6e5dc212f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf7e164fba9362350 # initialize rs1
li x14, 0x5a6bf39078a1d286 # initialize rs2
remw x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xcaf2047b3049d65a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5e22d26705ad6a87 # initialize rs1
li x15, 0x192fb0a1a8e881e3 # initialize rs2
remw x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x1979303d9f5534cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb879c84fb6d286ad # initialize rs1
li x16, 0x5b77eadcf0b6533d # initialize rs2
remw x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x2cedb9cb1eb60154 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3034d1ccd40c653f # initialize rs1
li x17, 0xee32b02ec07eeda8 # initialize rs2
remw x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xb8e11398239b104f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x210e3a0e86fab752 # initialize rs1
li x18, 0x78879cf97790ca54 # initialize rs2
remw x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xe7dc1cd4d7b03eee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1a73499682325f99 # initialize rs1
li x19, 0x266dfce47b0dea77 # initialize rs2
remw x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xaaf8ccead0705983 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe8f40c08fe67c4e0 # initialize rs1
li x20, 0xd2b00d20bbab5ccc # initialize rs2
remw x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xa804604da985251e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc3c6866186e31650 # initialize rs1
li x21, 0x6978fa55ac5a4a4e # initialize rs2
remw x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x863c13d0dafb8836 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc6792e0be46d44de # initialize rs1
li x22, 0x723119e4bd4d6146 # initialize rs2
remw x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xc39ff66027915f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd54166c9e744a621 # initialize rs1
li x23, 0x4b82f2a25684a86d # initialize rs2
remw x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x66dce2a7a6ec1a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x75ac3fc1f82120c6 # initialize rs1
li x24, 0x4078e2d92433a6cf # initialize rs2
remw x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x280effad30a4e636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb42c601418a12413 # initialize rs1
li x25, 0x4f3eca3639975c1c # initialize rs2
remw x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x006919baab43acdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8b3af904efc950d4 # initialize rs1
li x26, 0xdfa8eb4b592e00ae # initialize rs2
remw x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xba7bb65a5d97c53e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x56124c0ee06a5e20 # initialize rs1
li x27, 0xc889276900b1c9ee # initialize rs2
remw x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x262ac71fc73c7b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc6a5d6212628880c # initialize rs1
li x28, 0xcce0280dde9d0240 # initialize rs2
remw x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x0521aa6990adddcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6707e3206b7da933 # initialize rs1
li x29, 0x11425ce375e51c41 # initialize rs2
remw x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xe4a05f35eb3a0629 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe2a5fd5bdfb66c4e # initialize rs1
li x30, 0x5f1e7e305e4a701d # initialize rs2
remw x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x0c18eb89da7f47a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x93481163bc4e2c8f # initialize rs1
li x31, 0x553b81ee404f8cdc # initialize rs2
remw x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x25, 0x4ba7743187f6af97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb43653bf14110e12 # initialize rs1
li x0, 0x032842c1919edf92 # initialize rs2
remw x25, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x29, 0xfaede4d1cb175e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1bbb55ea675da607 # initialize rs1
li x1, 0x2f044569dfe6d8dc # initialize rs2
remw x29, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x4, 0x1a168414234f8eaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd4ab5094cfa33b21 # initialize rs1
li x2, 0x69fea49463aef7d1 # initialize rs2
remw x4, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x13, 0x0d82012677a8aa5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x69171e35ad992eb8 # initialize rs1
li x3, 0x6cdd00274504c279 # initialize rs2
remw x13, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x17, 0xa836377fa3d14ce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd36c3420ed61bbc0 # initialize rs1
li x4, 0x3bddc01bd3b43427 # initialize rs2
remw x17, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x30, 0x9218e94840684e44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x32899435851382d8 # initialize rs1
li x5, 0xe6c76b1add09b60b # initialize rs2
remw x30, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x15, 0xfc09b2e7f0ac9ab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7da7d39904f7f6a9 # initialize rs1
li x6, 0xc257570efb80344d # initialize rs2
remw x15, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x30, 0x15be669fca312b4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4375299c5824a89e # initialize rs1
li x7, 0xae0b0fa0b38acccf # initialize rs2
remw x30, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x25, 0x8dd6f8a556f0659a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8915b60a9eb306b2 # initialize rs1
li x8, 0x57301d1976a99f67 # initialize rs2
remw x25, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x23, 0x2df9089f2266e49c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa78615ee9ef2776b # initialize rs1
li x9, 0x77c882c77137c704 # initialize rs2
remw x23, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x1, 0xccb846dd6eb7288e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5c013bffd82ac609 # initialize rs1
li x10, 0xe68fdbb08a6efdc6 # initialize rs2
remw x1, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x26, 0x504fa681dfd7ff0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5c1afc2add960b1d # initialize rs1
li x11, 0x711f00efdc07feab # initialize rs2
remw x26, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x31, 0xcb0c56f77c533085 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb8ad3ddb5eb8b4da # initialize rs1
li x12, 0xace55109e7dd5ee6 # initialize rs2
remw x31, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x3, 0xf4fe77f46a214214 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xed92ff3863862397 # initialize rs1
li x13, 0x4c6b419addb21eaa # initialize rs2
remw x3, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x3, 0x4294fe5e3f1282ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6a0511a5f6fd2b4b # initialize rs1
li x14, 0x8a0549c428b28f2c # initialize rs2
remw x3, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x4, 0x715a12c234f41907 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf60bd8bf9e585be2 # initialize rs1
li x15, 0xc9257f1e4782ea55 # initialize rs2
remw x4, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x13, 0xff2490baf45ae745 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x75ca12f88be0bbd2 # initialize rs1
li x16, 0x60aa1a7c8edcf2ac # initialize rs2
remw x13, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x4, 0x2d9dbab57638097f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fa75d3c3582dd17 # initialize rs1
li x17, 0x63b1060a50936df5 # initialize rs2
remw x4, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x15, 0x55e9ae68d4121bf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6c9d081799cc6735 # initialize rs1
li x18, 0xc0fe0b1573e73ad7 # initialize rs2
remw x15, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x1, 0xcda511ae9824bfd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf2c2fef8336c4118 # initialize rs1
li x19, 0xe438c7e0737e7516 # initialize rs2
remw x1, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x7, 0xa0d250fa40bcfd3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4404fb050360873f # initialize rs1
li x20, 0xab4c56874a2b9d6f # initialize rs2
remw x7, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x25, 0xb96e99cc05f7de81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xed214df6e57ba9a7 # initialize rs1
li x21, 0x2d592cbbe027a368 # initialize rs2
remw x25, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x8, 0x1c359636cb0b6aba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xced5fbb79c56adc3 # initialize rs1
li x22, 0x8188437aeed0b650 # initialize rs2
remw x8, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x25, 0xbd265e489aca8d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2ef7500cc4bbf352 # initialize rs1
li x23, 0xf1c1e7a7e03b5caf # initialize rs2
remw x25, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x5, 0xa2e2bf1042985ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x150fd19b80dcf68a # initialize rs1
li x24, 0x263484de11046670 # initialize rs2
remw x5, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x31, 0x0116c1efd4daa3a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x51e15759be0fd2cf # initialize rs1
li x25, 0x35d853ee27ef0dbc # initialize rs2
remw x31, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x7, 0x000246136244ced4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x84d512c9b4b8b538 # initialize rs1
li x26, 0x2934f3039e20ca58 # initialize rs2
remw x7, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x4, 0xe3dae20bcbf78929 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x648ec2fcf747bd4d # initialize rs1
li x27, 0x0eb3183c83882b22 # initialize rs2
remw x4, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x22, 0xd375016a1bc2af1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x02f428578c5814a0 # initialize rs1
li x28, 0x77ba9eb26cf1b639 # initialize rs2
remw x22, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x3, 0x861c236bd1185190 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3c97fec80a419f28 # initialize rs1
li x29, 0xc555bd875698184d # initialize rs2
remw x3, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x10, 0xda86eda3008e70c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3a30ab873752268f # initialize rs1
li x30, 0x247eac4af184ab70 # initialize rs2
remw x10, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x5, 0xe221a59ec5690ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0207d9763b45b91e # initialize rs1
li x31, 0xe7075178a0a73056 # initialize rs2
remw x5, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x5af124cf597558c3)
li x22, 0xaf0623fd3b241b15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5af124cf597558c3 # initialize rs1
li x25, 0x8f36c732c8f8397e # initialize rs2
remw x22, x12, x25 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x2f1632f51775c047)
li x20, 0xae3dc278e5ace32c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd0e9cd0ae88a3fb9 # initialize rs1
li x1, 0xb60dbe4ccd8deee3 # initialize rs2
remw x20, x16, x1 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x4d2e2522510ea4a8)
li x25, 0x611dbb7e0c2c6719 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5cfd90d31b47244c # initialize rs1
li x8, 0x4d2e2522510ea4a8 # initialize rs2
remw x25, x23, x8 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x78fb617100431821)
li x14, 0xe81bd5343787bb52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x82f4dfeb3424c817 # initialize rs1
li x2, 0x87049e8effbce7df # initialize rs2
remw x14, x7, x2 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
