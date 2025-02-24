///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.addi4spn.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.975748
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x8)
li x8, 0x4d4b42b44b26b0e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 600 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xafaced4a3b2ab86a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 932 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x7b02fda45bee3594 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 796 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xe40030b845297924 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 684 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x5e89be2c099c43a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 464 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x45966413ee4f2cf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 920 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xe940db8d4ffcefab # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 948 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe14e9ef369efe19a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 72 # perform operation

# Testcase cp_imm_mul
li x6, 0x163dbbf44a3975f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 4 # perform operation

# Testcase cp_imm_mul
li x10, 0x72903c54f23a179a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 8 # perform operation

# Testcase cp_imm_mul
li x23, 0x7056c13cf5c3ca3f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 12 # perform operation

# Testcase cp_imm_mul
li x5, 0x718fad7ceec1fcef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 16 # perform operation

# Testcase cp_imm_mul
li x11, 0x7ae514b5480a4614 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 20 # perform operation

# Testcase cp_imm_mul
li x16, 0x81ef36947f3755b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 24 # perform operation

# Testcase cp_imm_mul
li x29, 0xb22bed46cb52e534 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 28 # perform operation

# Testcase cp_imm_mul
li x15, 0xe7b3a567ad7b0af4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 32 # perform operation

# Testcase cp_imm_mul
li x25, 0xfa7071386ea9d1ff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 36 # perform operation

# Testcase cp_imm_mul
li x30, 0x153f911f55f88778 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 40 # perform operation

# Testcase cp_imm_mul
li x22, 0x70564433ef50b3b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 44 # perform operation

# Testcase cp_imm_mul
li x3, 0x83c066128057c4a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 48 # perform operation

# Testcase cp_imm_mul
li x15, 0xf525e661fae83a91 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 52 # perform operation

# Testcase cp_imm_mul
li x24, 0xd038da4e098b35fe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 56 # perform operation

# Testcase cp_imm_mul
li x23, 0xef65019e23fff749 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 60 # perform operation

# Testcase cp_imm_mul
li x8, 0x8c2c0dfe642ed891 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 64 # perform operation

# Testcase cp_imm_mul
li x28, 0x237c777ed229676f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 68 # perform operation

# Testcase cp_imm_mul
li x6, 0xdb63f3d7339f43f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 72 # perform operation

# Testcase cp_imm_mul
li x11, 0xccbe01e534002a96 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 76 # perform operation

# Testcase cp_imm_mul
li x15, 0x72ac8c84c260beb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 80 # perform operation

# Testcase cp_imm_mul
li x7, 0xb8e173cac210dc27 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 84 # perform operation

# Testcase cp_imm_mul
li x2, 0xfa00207e898d587d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 88 # perform operation

# Testcase cp_imm_mul
li x17, 0x015d94e1616810f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 92 # perform operation

# Testcase cp_imm_mul
li x31, 0xd4dbe1531a816b59 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 96 # perform operation

# Testcase cp_imm_mul
li x24, 0xb1c0037cb92f265e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 100 # perform operation

# Testcase cp_imm_mul
li x5, 0xce27a142fbf6a8c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 104 # perform operation

# Testcase cp_imm_mul
li x13, 0xc5e8626bf97e95e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 108 # perform operation

# Testcase cp_imm_mul
li x15, 0x9053852e531fe581 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 112 # perform operation

# Testcase cp_imm_mul
li x9, 0xbf4326024ff5a4c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 116 # perform operation

# Testcase cp_imm_mul
li x4, 0xfd649eee33d56c6f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 120 # perform operation

# Testcase cp_imm_mul
li x31, 0x7f3e80a1090456af # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 124 # perform operation

# Testcase cp_imm_mul
li x16, 0x0eed8127f98ed645 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 128 # perform operation

# Testcase cp_imm_mul
li x9, 0xae84cb67ec28cfcf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 132 # perform operation

# Testcase cp_imm_mul
li x9, 0x1e5c1ac8e72e48b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 136 # perform operation

# Testcase cp_imm_mul
li x8, 0x61e5ad33f6ff3b32 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 140 # perform operation

# Testcase cp_imm_mul
li x11, 0x0941e2dad5ee6eef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 144 # perform operation

# Testcase cp_imm_mul
li x20, 0xa416b97ea1d39f44 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 148 # perform operation

# Testcase cp_imm_mul
li x24, 0x9fae3e4af4fd9cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 152 # perform operation

# Testcase cp_imm_mul
li x22, 0x0df86bf9ab8db9ee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 156 # perform operation

# Testcase cp_imm_mul
li x24, 0x5112a8fa7f74aa0f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 160 # perform operation

# Testcase cp_imm_mul
li x25, 0xb6c35dc6bb810088 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 164 # perform operation

# Testcase cp_imm_mul
li x1, 0xd7e4b06595915035 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 168 # perform operation

# Testcase cp_imm_mul
li x27, 0x79252182fdf00ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 172 # perform operation

# Testcase cp_imm_mul
li x27, 0x6164d3f42fe16c56 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 176 # perform operation

# Testcase cp_imm_mul
li x9, 0xf2daa081f08264c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 180 # perform operation

# Testcase cp_imm_mul
li x5, 0xcc53fcb7e495b736 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 184 # perform operation

# Testcase cp_imm_mul
li x29, 0xd10723f1aa16991b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 188 # perform operation

# Testcase cp_imm_mul
li x22, 0xf4e4279ed5500e1d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 192 # perform operation

# Testcase cp_imm_mul
li x15, 0xf0a7bea1c1145391 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 196 # perform operation

# Testcase cp_imm_mul
li x8, 0xa96c757ca07bdfed # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 200 # perform operation

# Testcase cp_imm_mul
li x25, 0xcbe67a113d77ee60 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 204 # perform operation

# Testcase cp_imm_mul
li x8, 0x4e8bf22332e89881 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 208 # perform operation

# Testcase cp_imm_mul
li x23, 0x8623a24e487dfe21 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 212 # perform operation

# Testcase cp_imm_mul
li x24, 0x4f884566773d58e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 216 # perform operation

# Testcase cp_imm_mul
li x15, 0x3d640cb938994b0f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 220 # perform operation

# Testcase cp_imm_mul
li x29, 0x5d3adb95a67386be # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 224 # perform operation

# Testcase cp_imm_mul
li x24, 0xd375e39c22bdd9c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 228 # perform operation

# Testcase cp_imm_mul
li x9, 0xcebf53fe2e3ae012 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 232 # perform operation

# Testcase cp_imm_mul
li x12, 0x25a236eedaea6210 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 236 # perform operation

# Testcase cp_imm_mul
li x29, 0x071c30c82e96a0d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 240 # perform operation

# Testcase cp_imm_mul
li x1, 0x8671ea4e896d04bc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 244 # perform operation

# Testcase cp_imm_mul
li x22, 0x19edf42b42725d59 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 248 # perform operation

# Testcase cp_imm_mul
li x30, 0x5357ef2e13671297 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 252 # perform operation

# Testcase cp_imm_mul
li x18, 0x980d40075f7d7e67 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 256 # perform operation

# Testcase cp_imm_mul
li x24, 0xb5c407282618689f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 260 # perform operation

# Testcase cp_imm_mul
li x2, 0xa497cd359b6715dc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 264 # perform operation

# Testcase cp_imm_mul
li x30, 0x8a870368a7e679da # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 268 # perform operation

# Testcase cp_imm_mul
li x11, 0x09a74433a89f7b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 272 # perform operation

# Testcase cp_imm_mul
li x27, 0x3ca7e3fff6fed2e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 276 # perform operation

# Testcase cp_imm_mul
li x3, 0x34b2bafa33c89e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 280 # perform operation

# Testcase cp_imm_mul
li x1, 0x3333ab99e845eda4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 284 # perform operation

# Testcase cp_imm_mul
li x30, 0x81a93ebcca667165 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 288 # perform operation

# Testcase cp_imm_mul
li x28, 0x7bc334d095c98c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 292 # perform operation

# Testcase cp_imm_mul
li x12, 0xfcfdbf4783732a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 296 # perform operation

# Testcase cp_imm_mul
li x1, 0xf0071c20a304d70b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 300 # perform operation

# Testcase cp_imm_mul
li x24, 0xd36b8d573f6a54d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 304 # perform operation

# Testcase cp_imm_mul
li x16, 0x05c56fe3aaa29bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 308 # perform operation

# Testcase cp_imm_mul
li x16, 0xbb09c66a72e7250a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 312 # perform operation

# Testcase cp_imm_mul
li x18, 0xfc4b57121ce6bbbd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 316 # perform operation

# Testcase cp_imm_mul
li x19, 0x58e14288dc92ce48 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 320 # perform operation

# Testcase cp_imm_mul
li x28, 0x7f9d50db095b0e22 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 324 # perform operation

# Testcase cp_imm_mul
li x31, 0x60edd8c4ece14dee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 328 # perform operation

# Testcase cp_imm_mul
li x21, 0x5890105224fdadf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 332 # perform operation

# Testcase cp_imm_mul
li x25, 0xccadcc26eb1afcb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 336 # perform operation

# Testcase cp_imm_mul
li x28, 0xedbb977ef7d912d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 340 # perform operation

# Testcase cp_imm_mul
li x19, 0x6a39058b56e56856 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 344 # perform operation

# Testcase cp_imm_mul
li x12, 0xd826f5233e1e763c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 348 # perform operation

# Testcase cp_imm_mul
li x3, 0xac7eee9b4841e0bc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 352 # perform operation

# Testcase cp_imm_mul
li x24, 0x996c89c5b9086081 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 356 # perform operation

# Testcase cp_imm_mul
li x10, 0x6bd07c3fcd860228 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 360 # perform operation

# Testcase cp_imm_mul
li x22, 0x7abe82ae2241b62e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 364 # perform operation

# Testcase cp_imm_mul
li x10, 0x252a63c5b7a8dabe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 368 # perform operation

# Testcase cp_imm_mul
li x17, 0xcbf8815250ce86a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 372 # perform operation

# Testcase cp_imm_mul
li x22, 0xfc948f60da965bad # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 376 # perform operation

# Testcase cp_imm_mul
li x26, 0x4a2c130b4f995095 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 380 # perform operation

# Testcase cp_imm_mul
li x23, 0x76591d0293cc44fe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 384 # perform operation

# Testcase cp_imm_mul
li x10, 0x199c7ef44095de60 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 388 # perform operation

# Testcase cp_imm_mul
li x7, 0xa82f1842444f1535 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 392 # perform operation

# Testcase cp_imm_mul
li x5, 0x4824cf6e07b4bd6a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 396 # perform operation

# Testcase cp_imm_mul
li x30, 0xfb79f55b6b5925d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 400 # perform operation

# Testcase cp_imm_mul
li x1, 0x3e6ea9f417124232 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 404 # perform operation

# Testcase cp_imm_mul
li x11, 0x9c7845a9db4de424 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 408 # perform operation

# Testcase cp_imm_mul
li x9, 0x04665341b9fcd4e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 412 # perform operation

# Testcase cp_imm_mul
li x21, 0xf579b38d3412a534 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 416 # perform operation

# Testcase cp_imm_mul
li x13, 0x57e3ae2459f329e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 420 # perform operation

# Testcase cp_imm_mul
li x10, 0xf55a422dcb44f9e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 424 # perform operation

# Testcase cp_imm_mul
li x15, 0x001bd5d5cd5d05d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 428 # perform operation

# Testcase cp_imm_mul
li x11, 0xbf84fd1aab03b502 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 432 # perform operation

# Testcase cp_imm_mul
li x13, 0x85d6c8585eec0ab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 436 # perform operation

# Testcase cp_imm_mul
li x17, 0x034d5a167d58413d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 440 # perform operation

# Testcase cp_imm_mul
li x11, 0x7480b16d7e6cff5d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 444 # perform operation

# Testcase cp_imm_mul
li x14, 0xe3542732040c9bdc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 448 # perform operation

# Testcase cp_imm_mul
li x8, 0x0b3a3d4145dfcd2d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 452 # perform operation

# Testcase cp_imm_mul
li x27, 0xb99594273d2aae8e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 456 # perform operation

# Testcase cp_imm_mul
li x4, 0x8a2652d384a1d874 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 460 # perform operation

# Testcase cp_imm_mul
li x14, 0x267b1b4b0e652ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 464 # perform operation

# Testcase cp_imm_mul
li x11, 0xad540b6466da3cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 468 # perform operation

# Testcase cp_imm_mul
li x28, 0xf6e9c7f9a65e4388 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 472 # perform operation

# Testcase cp_imm_mul
li x25, 0x2e07c0e0dcf42ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 476 # perform operation

# Testcase cp_imm_mul
li x25, 0x52a12c8414455ead # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 480 # perform operation

# Testcase cp_imm_mul
li x3, 0xb604e0e99d4c93e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 484 # perform operation

# Testcase cp_imm_mul
li x3, 0x6f7eceb7b6adc470 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 488 # perform operation

# Testcase cp_imm_mul
li x18, 0x68b14cabe34f3170 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 492 # perform operation

# Testcase cp_imm_mul
li x14, 0x8c801893f3bdce80 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 496 # perform operation

# Testcase cp_imm_mul
li x5, 0x06b09c5a05456e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 500 # perform operation

# Testcase cp_imm_mul
li x11, 0x86f3280caf369bd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 504 # perform operation

# Testcase cp_imm_mul
li x3, 0x4653a0c8417f288c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 508 # perform operation

# Testcase cp_imm_mul
li x27, 0xfedfab4f4cd2a369 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 512 # perform operation

# Testcase cp_imm_mul
li x19, 0xbf1f18b4ee3ef18c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 516 # perform operation

# Testcase cp_imm_mul
li x30, 0x6973845fd477bb6c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 520 # perform operation

# Testcase cp_imm_mul
li x10, 0xe30692f5530c3e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 524 # perform operation

# Testcase cp_imm_mul
li x28, 0x430d66d655cc66c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 528 # perform operation

# Testcase cp_imm_mul
li x17, 0x31475aa54b333c0c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 532 # perform operation

# Testcase cp_imm_mul
li x5, 0x1288b506c7a39339 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 536 # perform operation

# Testcase cp_imm_mul
li x18, 0xab5c1f93a9c5ba5b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 540 # perform operation

# Testcase cp_imm_mul
li x11, 0xc49689a4959ce227 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 544 # perform operation

# Testcase cp_imm_mul
li x2, 0x539a45e9d1e0d942 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 548 # perform operation

# Testcase cp_imm_mul
li x3, 0x4f31a89cc194042c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 552 # perform operation

# Testcase cp_imm_mul
li x28, 0x68695fa06c351ddc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 556 # perform operation

# Testcase cp_imm_mul
li x30, 0xfe02206a8ae2efdf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 560 # perform operation

# Testcase cp_imm_mul
li x2, 0xb03bfdc7b49ad01c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 564 # perform operation

# Testcase cp_imm_mul
li x17, 0x1fa834cd8ca8b2c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 568 # perform operation

# Testcase cp_imm_mul
li x13, 0xd0d89f1fc49b1664 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 572 # perform operation

# Testcase cp_imm_mul
li x27, 0x3184b58fa343e7c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 576 # perform operation

# Testcase cp_imm_mul
li x10, 0x369df7a299675ef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 580 # perform operation

# Testcase cp_imm_mul
li x23, 0x5a1bbdc74225a090 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 584 # perform operation

# Testcase cp_imm_mul
li x26, 0x56e2a2f82d982d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 588 # perform operation

# Testcase cp_imm_mul
li x1, 0xc071237af249e248 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 592 # perform operation

# Testcase cp_imm_mul
li x27, 0x804fa40eca7b1f8b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 596 # perform operation

# Testcase cp_imm_mul
li x29, 0xda041c8a387f8c1e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 600 # perform operation

# Testcase cp_imm_mul
li x17, 0x7390a5952f1081d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 604 # perform operation

# Testcase cp_imm_mul
li x17, 0xa90986ee956a44f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 608 # perform operation

# Testcase cp_imm_mul
li x20, 0xa577acc2a677a18d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 612 # perform operation

# Testcase cp_imm_mul
li x1, 0x871c3a3532d0251a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 616 # perform operation

# Testcase cp_imm_mul
li x27, 0x91fec202cef10a4a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 620 # perform operation

# Testcase cp_imm_mul
li x8, 0x42d5906d6d770b94 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 624 # perform operation

# Testcase cp_imm_mul
li x4, 0xe2a963c04704d1ba # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 628 # perform operation

# Testcase cp_imm_mul
li x11, 0xb69b5e14e6ee1f62 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 632 # perform operation

# Testcase cp_imm_mul
li x28, 0xd0de4555ee600135 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 636 # perform operation

# Testcase cp_imm_mul
li x24, 0x3bd00ce7b95caece # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 640 # perform operation

# Testcase cp_imm_mul
li x16, 0x167e3fa8ff2cc998 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 644 # perform operation

# Testcase cp_imm_mul
li x27, 0xc75e775a46019bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 648 # perform operation

# Testcase cp_imm_mul
li x12, 0xb007db0cb28ff50c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 652 # perform operation

# Testcase cp_imm_mul
li x20, 0x86ac85aab987953a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 656 # perform operation

# Testcase cp_imm_mul
li x14, 0x02e6ca7caa91bee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 660 # perform operation

# Testcase cp_imm_mul
li x15, 0x33145851a8815dd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 664 # perform operation

# Testcase cp_imm_mul
li x21, 0x1d3c9bfb83c1b87b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 668 # perform operation

# Testcase cp_imm_mul
li x26, 0x0ef38948cd27dada # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 672 # perform operation

# Testcase cp_imm_mul
li x19, 0x32a1ded28bd40024 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 676 # perform operation

# Testcase cp_imm_mul
li x13, 0x2028c8f57e496496 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 680 # perform operation

# Testcase cp_imm_mul
li x8, 0x7deb13c0b1e09062 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 684 # perform operation

# Testcase cp_imm_mul
li x23, 0x4ad8eb4539a3e7f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 688 # perform operation

# Testcase cp_imm_mul
li x23, 0xf119d2f0161e0b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 692 # perform operation

# Testcase cp_imm_mul
li x6, 0x931be0bf3cf6b6be # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 696 # perform operation

# Testcase cp_imm_mul
li x7, 0xf655881c68d5436e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 700 # perform operation

# Testcase cp_imm_mul
li x25, 0xbc88afd9d81921bb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 704 # perform operation

# Testcase cp_imm_mul
li x8, 0xd2e24956db87573c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 708 # perform operation

# Testcase cp_imm_mul
li x19, 0x2ba8e884ca62fda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 712 # perform operation

# Testcase cp_imm_mul
li x9, 0x8c66a8298a50972d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 716 # perform operation

# Testcase cp_imm_mul
li x10, 0xe079ba3e9a0e4a2b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 720 # perform operation

# Testcase cp_imm_mul
li x3, 0xc79362e730bb0ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 724 # perform operation

# Testcase cp_imm_mul
li x23, 0x8c7329a5725a2f59 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 728 # perform operation

# Testcase cp_imm_mul
li x17, 0xfa580dd0dc3c6bc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 732 # perform operation

# Testcase cp_imm_mul
li x4, 0x314d1c0ae419a56f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 736 # perform operation

# Testcase cp_imm_mul
li x3, 0x265d696085634bc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 740 # perform operation

# Testcase cp_imm_mul
li x21, 0xb1034409c4382f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 744 # perform operation

# Testcase cp_imm_mul
li x27, 0x95611e75054f65fd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 748 # perform operation

# Testcase cp_imm_mul
li x6, 0xa09cb3207e3ac7ef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 752 # perform operation

# Testcase cp_imm_mul
li x19, 0xf3009a3ed524e3e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 756 # perform operation

# Testcase cp_imm_mul
li x30, 0x8713fbda8f9e6038 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 760 # perform operation

# Testcase cp_imm_mul
li x3, 0x9539708eb8d06add # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 764 # perform operation

# Testcase cp_imm_mul
li x3, 0xaf6d8b6e616ee7a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 768 # perform operation

# Testcase cp_imm_mul
li x13, 0xbff0516ac07260fe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 772 # perform operation

# Testcase cp_imm_mul
li x20, 0xbfb6fcde68b63afb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 776 # perform operation

# Testcase cp_imm_mul
li x16, 0xdf5542d2dcb06c1c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 780 # perform operation

# Testcase cp_imm_mul
li x27, 0xbc9264a453a51afc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 784 # perform operation

# Testcase cp_imm_mul
li x19, 0x13faab6c6f222017 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 788 # perform operation

# Testcase cp_imm_mul
li x22, 0x95b46784d74e794f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 792 # perform operation

# Testcase cp_imm_mul
li x17, 0xfa632b05ee3dd4f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 796 # perform operation

# Testcase cp_imm_mul
li x28, 0x7ccf5714fde67216 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 800 # perform operation

# Testcase cp_imm_mul
li x12, 0x711dee9d25ae88ea # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 804 # perform operation

# Testcase cp_imm_mul
li x22, 0x7c1866e8ce8a93ab # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 808 # perform operation

# Testcase cp_imm_mul
li x26, 0x998456052f379565 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 812 # perform operation

# Testcase cp_imm_mul
li x5, 0x4d75a6cde42ae437 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 816 # perform operation

# Testcase cp_imm_mul
li x20, 0x9209113b67f6fac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 820 # perform operation

# Testcase cp_imm_mul
li x20, 0xbc25c44a5f9ed60e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 824 # perform operation

# Testcase cp_imm_mul
li x3, 0xe6b38e68aee3a9b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 828 # perform operation

# Testcase cp_imm_mul
li x8, 0x66c27ab00b1f37b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 832 # perform operation

# Testcase cp_imm_mul
li x9, 0x404f958d409fb517 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 836 # perform operation

# Testcase cp_imm_mul
li x5, 0x893ecea716833921 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 840 # perform operation

# Testcase cp_imm_mul
li x17, 0x3d458572b36a2ec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 844 # perform operation

# Testcase cp_imm_mul
li x8, 0x517509441d048be2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 848 # perform operation

# Testcase cp_imm_mul
li x29, 0xb29d2226ef3db469 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 852 # perform operation

# Testcase cp_imm_mul
li x31, 0x7bebb061407c87f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 856 # perform operation

# Testcase cp_imm_mul
li x13, 0x1e9f83a120529b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 860 # perform operation

# Testcase cp_imm_mul
li x28, 0x107ff6a2352f7830 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 864 # perform operation

# Testcase cp_imm_mul
li x25, 0xcf4abcb311c35b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 868 # perform operation

# Testcase cp_imm_mul
li x3, 0x702b70000ca1dbc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 872 # perform operation

# Testcase cp_imm_mul
li x23, 0x7894c7d7d1e1a0e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 876 # perform operation

# Testcase cp_imm_mul
li x21, 0x2d2081beb74f45fc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 880 # perform operation

# Testcase cp_imm_mul
li x7, 0xafd721d4f6d9548b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 884 # perform operation

# Testcase cp_imm_mul
li x30, 0xdd2118ebd90df80f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 888 # perform operation

# Testcase cp_imm_mul
li x27, 0x8eed08281d502da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 892 # perform operation

# Testcase cp_imm_mul
li x11, 0xd16bbce1fd80d6bb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 896 # perform operation

# Testcase cp_imm_mul
li x30, 0x00ec8e33c49f579d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 900 # perform operation

# Testcase cp_imm_mul
li x7, 0xa9e0d9bf775dcd7c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 904 # perform operation

# Testcase cp_imm_mul
li x13, 0x0ab627759d9dbd04 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 908 # perform operation

# Testcase cp_imm_mul
li x8, 0xdaa4168f8eab6608 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 912 # perform operation

# Testcase cp_imm_mul
li x3, 0x4aec818943e7e8c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 916 # perform operation

# Testcase cp_imm_mul
li x18, 0x6164b448f74910a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 920 # perform operation

# Testcase cp_imm_mul
li x15, 0x65d99fda99a3722d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 924 # perform operation

# Testcase cp_imm_mul
li x12, 0xf6bcb3fbf33ef66b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 928 # perform operation

# Testcase cp_imm_mul
li x16, 0xa3bf6dd4f746ee55 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 932 # perform operation

# Testcase cp_imm_mul
li x31, 0x9335df939f3a3b76 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 936 # perform operation

# Testcase cp_imm_mul
li x26, 0xce895fbe346748cf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 940 # perform operation

# Testcase cp_imm_mul
li x13, 0x21d5b059b22a2b77 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 944 # perform operation

# Testcase cp_imm_mul
li x11, 0xb54c9c64291b0929 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 948 # perform operation

# Testcase cp_imm_mul
li x15, 0xf03881c2caa15b36 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 952 # perform operation

# Testcase cp_imm_mul
li x5, 0xae5be857a9c38e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 956 # perform operation

# Testcase cp_imm_mul
li x3, 0x5565ddc69eb421d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 960 # perform operation

# Testcase cp_imm_mul
li x15, 0x24a6b2ba4c98f864 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 964 # perform operation

# Testcase cp_imm_mul
li x11, 0x54a6dc0056e70779 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 968 # perform operation

# Testcase cp_imm_mul
li x15, 0x9408dc56593fb60d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 972 # perform operation

# Testcase cp_imm_mul
li x7, 0xe0ed91916c678770 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 976 # perform operation

# Testcase cp_imm_mul
li x24, 0x88ab1102801d8f3a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 980 # perform operation

# Testcase cp_imm_mul
li x26, 0x089acfb84087a53f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 984 # perform operation

# Testcase cp_imm_mul
li x20, 0x2e51012372611c37 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 988 # perform operation

# Testcase cp_imm_mul
li x11, 0xc1161c40d563c6a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 992 # perform operation

# Testcase cp_imm_mul
li x7, 0xd48b073b7ea65efb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 996 # perform operation

# Testcase cp_imm_mul
li x10, 0xde3869b49164b540 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 1000 # perform operation

# Testcase cp_imm_mul
li x1, 0xb74b59241219ff32 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 1004 # perform operation

# Testcase cp_imm_mul
li x23, 0x63f74a9359027823 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 1008 # perform operation

# Testcase cp_imm_mul
li x14, 0xb4f7534d03f1cab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 1012 # perform operation

# Testcase cp_imm_mul
li x13, 0x5f11dddd69363dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 1016 # perform operation

# Testcase cp_imm_mul
li x15, 0xd33ea8de4636458f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 1020 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
