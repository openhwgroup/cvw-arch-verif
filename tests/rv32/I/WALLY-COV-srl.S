///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-srl.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.999738
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xb83c0691 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0b941cd4 # initialize rs1
li x21, 0x0e58c3e2 # initialize rs2
srl x0, x23, x21 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xec2cd697 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd9701dc3 # initialize rs1
li x21, 0x4f985ebb # initialize rs2
srl x1, x13, x21 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xddacfda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x472024d0 # initialize rs1
li x21, 0xcc771400 # initialize rs2
srl x2, x25, x21 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xb96668bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6bc0ce40 # initialize rs1
li x28, 0xfb39b425 # initialize rs2
srl x3, x8, x28 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x568b8b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1a56ae65 # initialize rs1
li x21, 0x1b69a538 # initialize rs2
srl x4, x1, x21 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x3df29f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1acec0ad # initialize rs1
li x19, 0x57662d8a # initialize rs2
srl x5, x27, x19 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x01c84832 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd3f13256 # initialize rs1
li x28, 0x47099396 # initialize rs2
srl x6, x15, x28 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xd804517a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x024e2945 # initialize rs1
li x26, 0xba4f20eb # initialize rs2
srl x7, x12, x26 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf300e443 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x90d14eef # initialize rs1
li x15, 0x89e0470f # initialize rs2
srl x8, x6, x15 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x33b315ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaec0c217 # initialize rs1
li x17, 0x1bfd928d # initialize rs2
srl x9, x9, x17 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xabe6b80a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf81a510a # initialize rs1
li x21, 0x4bb72783 # initialize rs2
srl x10, x28, x21 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xcbe73c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb33ff0ff # initialize rs1
li x4, 0xd59250cf # initialize rs2
srl x11, x24, x4 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x2f17b491 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb54ce01d # initialize rs1
li x1, 0x3ae82c64 # initialize rs2
srl x12, x11, x1 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x32fa8268 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x409af8d2 # initialize rs1
li x6, 0xe60fae21 # initialize rs2
srl x13, x12, x6 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x2e4bf992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x9286ac64 # initialize rs1
li x18, 0x04308315 # initialize rs2
srl x14, x21, x18 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xcef106ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x863f8ce9 # initialize rs1
li x30, 0x1f6f6181 # initialize rs2
srl x15, x18, x30 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x13569d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc654aae0 # initialize rs1
li x30, 0x3f1c8de7 # initialize rs2
srl x16, x2, x30 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x702ce848 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb4e5f7d8 # initialize rs1
li x2, 0x07d1bd67 # initialize rs2
srl x17, x20, x2 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x565ad6c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5e79e5fb # initialize rs1
li x30, 0x436ee707 # initialize rs2
srl x18, x10, x30 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x051d3d6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x528faf9f # initialize rs1
li x22, 0xbb85b7e4 # initialize rs2
srl x19, x5, x22 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xef32b079 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfb26cc8f # initialize rs1
li x11, 0xfb0897c2 # initialize rs2
srl x20, x5, x11 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x192abb6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9a4cf0ea # initialize rs1
li x13, 0x3e7da849 # initialize rs2
srl x21, x15, x13 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x7589f338 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5deac554 # initialize rs1
li x28, 0x2e15a5bf # initialize rs2
srl x22, x26, x28 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x586c583d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x39dd4ac7 # initialize rs1
li x27, 0x4584b419 # initialize rs2
srl x23, x5, x27 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x0fd5b8cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xde0e9285 # initialize rs1
li x14, 0x926dd93b # initialize rs2
srl x24, x27, x14 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x6682c640 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4d95a28a # initialize rs1
li x17, 0x3d3cbfc2 # initialize rs2
srl x25, x7, x17 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x50b534d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x347bc42a # initialize rs1
li x22, 0x1833d126 # initialize rs2
srl x26, x7, x22 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xa49245f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf887de43 # initialize rs1
li x29, 0xf8406c8a # initialize rs2
srl x27, x4, x29 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x1a361922 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1b647a89 # initialize rs1
li x14, 0xcbf4323c # initialize rs2
srl x28, x20, x14 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xfff6e73a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x77278dc8 # initialize rs1
li x26, 0xe4f9d908 # initialize rs2
srl x29, x18, x26 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x3efff5f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfd49bbf6 # initialize rs1
li x29, 0x790034c4 # initialize rs2
srl x30, x13, x29 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xb4ffdd6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3425c826 # initialize rs1
li x6, 0x47f343f6 # initialize rs2
srl x31, x14, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x21, 0x99da307f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xdd779415 # initialize rs1
li x17, 0xeda50b03 # initialize rs2
srl x21, x0, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x28, 0xe3e1f12b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8198c5a3 # initialize rs1
li x5, 0xbde77167 # initialize rs2
srl x28, x1, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x15, 0xdded0a2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf36a6692 # initialize rs1
li x24, 0x4e1b5633 # initialize rs2
srl x15, x2, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x18, 0x2ba3e102 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x04b8c078 # initialize rs1
li x11, 0x6101ff71 # initialize rs2
srl x18, x3, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x24, 0x236ae781 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf0dddb41 # initialize rs1
li x22, 0x8bd1c48b # initialize rs2
srl x24, x4, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x26, 0xf77747f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x46bd1c24 # initialize rs1
li x28, 0xefdada15 # initialize rs2
srl x26, x5, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x30, 0x90869d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x50ebbb05 # initialize rs1
li x16, 0x4186d50b # initialize rs2
srl x30, x6, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x15, 0xbb4ac636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x285e6eda # initialize rs1
li x12, 0x222746ce # initialize rs2
srl x15, x7, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x7, 0x9c103381 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7c6bcefc # initialize rs1
li x11, 0x10926b52 # initialize rs2
srl x7, x8, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0x0843fe47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x75c43d1c # initialize rs1
li x19, 0x7b359c3d # initialize rs2
srl x11, x9, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0x8deb7f28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x06f15afb # initialize rs1
li x18, 0xb84d6fb2 # initialize rs2
srl x9, x10, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x6, 0xcd7e2399 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa5fb497a # initialize rs1
li x22, 0xd57c0fba # initialize rs2
srl x6, x11, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x4, 0x8faf20ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x50e4f704 # initialize rs1
li x9, 0xde20f157 # initialize rs2
srl x4, x12, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x23, 0x82ae7a43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd0f38a80 # initialize rs1
li x6, 0x648b9747 # initialize rs2
srl x23, x13, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x3, 0xd63ccb7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7d705f2b # initialize rs1
li x10, 0x27763469 # initialize rs2
srl x3, x14, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x8, 0x82aabb4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xacb82beb # initialize rs1
li x21, 0x32ad711e # initialize rs2
srl x8, x15, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x2, 0xf922779d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7080f542 # initialize rs1
li x11, 0xe9440c8a # initialize rs2
srl x2, x16, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x18, 0xd1171282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x70d36cc4 # initialize rs1
li x25, 0xe7027f45 # initialize rs2
srl x18, x17, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x30, 0x304667a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6b638e40 # initialize rs1
li x15, 0x249f6fa6 # initialize rs2
srl x30, x18, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x13, 0x790abc5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa91713c7 # initialize rs1
li x1, 0xce511372 # initialize rs2
srl x13, x19, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x22, 0x8c29c5b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x69f4d6a7 # initialize rs1
li x2, 0x890a58b4 # initialize rs2
srl x22, x20, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x4, 0x89766f0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc1c76c84 # initialize rs1
li x14, 0xa81f8cee # initialize rs2
srl x4, x21, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x8, 0xffbbe900 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf2447629 # initialize rs1
li x24, 0x88f0157f # initialize rs2
srl x8, x22, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x13, 0x7ee08672 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xcd059bf9 # initialize rs1
li x3, 0xc9b8c873 # initialize rs2
srl x13, x23, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x11, 0x46506928 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xea0fa64a # initialize rs1
li x9, 0xc32bace6 # initialize rs2
srl x11, x24, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x13, 0x230de75e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf9fe4213 # initialize rs1
li x12, 0xa8e18faa # initialize rs2
srl x13, x25, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x27, 0x759fbec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x09267d37 # initialize rs1
li x2, 0xf6f56a05 # initialize rs2
srl x27, x26, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x28, 0x948b976a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xba2ce45e # initialize rs1
li x13, 0xa1ba55ff # initialize rs2
srl x28, x27, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x31, 0x352fc3fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x56be9098 # initialize rs1
li x2, 0x8c8b4a1c # initialize rs2
srl x31, x28, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x2, 0xd7f38395 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x838ac429 # initialize rs1
li x18, 0x29d84c75 # initialize rs2
srl x2, x29, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x8, 0x1c8234e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1d5fd481 # initialize rs1
li x19, 0xd4c5274a # initialize rs2
srl x8, x30, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x28, 0xaf74d257 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x20b6aba9 # initialize rs1
li x24, 0xa1b38042 # initialize rs2
srl x28, x31, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x6, 0x851f4a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x774dcf06 # initialize rs1
li x0, 0xcb9c60c3 # initialize rs2
srl x6, x8, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x7, 0xfaffb6b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6e5fa454 # initialize rs1
li x1, 0x81cd3ad9 # initialize rs2
srl x7, x21, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x8, 0x9d9385db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0df93704 # initialize rs1
li x2, 0xb6fa567d # initialize rs2
srl x8, x30, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x8, 0x60ab531c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xad457717 # initialize rs1
li x3, 0xc8d0b2d5 # initialize rs2
srl x8, x5, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x25, 0xc1356b8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd750bc64 # initialize rs1
li x4, 0xdebb0523 # initialize rs2
srl x25, x10, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x29, 0x9b7024f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x84ec8f36 # initialize rs1
li x5, 0xcf5ffcc7 # initialize rs2
srl x29, x2, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x9, 0x5c7b4686 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd563db37 # initialize rs1
li x6, 0xae77c5bc # initialize rs2
srl x9, x25, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x15, 0x621f3ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9d0da0ba # initialize rs1
li x7, 0x3dfb474e # initialize rs2
srl x15, x13, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x4, 0xc91455ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa90072d2 # initialize rs1
li x8, 0x925844af # initialize rs2
srl x4, x10, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x27, 0xbf5e8ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x1a0a1eb0 # initialize rs1
li x9, 0x47e1158d # initialize rs2
srl x27, x29, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x9, 0xe682c5fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdc9dfcaa # initialize rs1
li x10, 0x8e39941b # initialize rs2
srl x9, x22, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x27, 0x3b195b2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1b86bdee # initialize rs1
li x11, 0xc2ea7710 # initialize rs2
srl x27, x10, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x6, 0xa61edeee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8fcbf391 # initialize rs1
li x12, 0x9f1ac379 # initialize rs2
srl x6, x18, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x2, 0x8fa7292e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6e88f835 # initialize rs1
li x13, 0x2a040227 # initialize rs2
srl x2, x5, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x23, 0x617d24ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaab79386 # initialize rs1
li x14, 0xf971b33c # initialize rs2
srl x23, x1, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x12, 0x88acf9a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdf52d27a # initialize rs1
li x15, 0xc83ce3a6 # initialize rs2
srl x12, x14, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0x78dfe4a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xec0f434c # initialize rs1
li x16, 0xd0cad900 # initialize rs2
srl x6, x14, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x24, 0x0f98fa6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x49051b93 # initialize rs1
li x17, 0xbeefc311 # initialize rs2
srl x24, x15, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x15, 0x394c57b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe274e758 # initialize rs1
li x18, 0xa079ccd5 # initialize rs2
srl x15, x20, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x16, 0xcc03ff1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x58c4f3b1 # initialize rs1
li x19, 0x630e8f10 # initialize rs2
srl x16, x25, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x2, 0x6a825133 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5e9f98e5 # initialize rs1
li x20, 0x64719e97 # initialize rs2
srl x2, x5, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x22, 0x98aa1e95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xcf4dd9da # initialize rs1
li x21, 0xa2783660 # initialize rs2
srl x22, x23, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x27, 0x253a378b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa71e1aba # initialize rs1
li x22, 0xef39f480 # initialize rs2
srl x27, x16, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x10, 0xe6dd8794 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x36b863e3 # initialize rs1
li x23, 0x94550f98 # initialize rs2
srl x10, x3, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x17, 0x9a60596c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3e18e19a # initialize rs1
li x24, 0xbc030370 # initialize rs2
srl x17, x19, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x9, 0x3d5ea9f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x957efffa # initialize rs1
li x25, 0x57ad95ac # initialize rs2
srl x9, x7, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x13, 0x2ec55cbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x28fc6388 # initialize rs1
li x26, 0x22d5e680 # initialize rs2
srl x13, x24, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0x5d23135b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8e530b8a # initialize rs1
li x27, 0x11875c60 # initialize rs2
srl x25, x21, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x9, 0x553ec9a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x34125726 # initialize rs1
li x28, 0x9c9fd776 # initialize rs2
srl x9, x17, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x22, 0x4dcef85b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1cd94ace # initialize rs1
li x29, 0x3ffb7f4d # initialize rs2
srl x22, x15, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x21, 0x782e4661 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x4b1fa489 # initialize rs1
li x30, 0x6ce31c37 # initialize rs2
srl x21, x4, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x11, 0x7e8ab57e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x42d9c7c1 # initialize rs1
li x31, 0x5215aeec # initialize rs2
srl x11, x29, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xa33a94cb)
li x3, 0xc8af84c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc8af84c2 # initialize rs1
li x0, 0x4eb8e12c # initialize rs2
srl x3, x26, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x163ab0e2)
li x6, 0x163ab0e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x163ab0e2 # initialize rs1
li x28, 0x163ab0e2 # initialize rs2
srl x6, x0, x28 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x3d98896c)
li x24, 0x5c291467 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3d98896c # initialize rs1
li x7, 0x3d98896c # initialize rs2
srl x24, x3, x7 # perform operation

# Testcase cmp_gpr_hazard raw test
srl x17, x23, x15 # perform first operation
srl x17, x17, x7 # perform second operation

# Testcase cmp_gpr_hazard raw test
srl x10, x21, x5 # perform first operation
srl x24, x23, x10 # perform second operation

# Testcase cmp_gpr_hazard waw test
srl x9, x23, x20 # perform first operation
srl x9, x9, x5 # perform second operation

# Testcase cmp_gpr_hazard waw test
srl x13, x17, x11 # perform first operation
srl x13, x19, x2 # perform second operation

# Testcase cmp_gpr_hazard war test
srl x6, x16, x30 # perform first operation
srl x16, x16, x31 # perform second operation

# Testcase cmp_gpr_hazard war test
srl x26, x13, x6 # perform first operation
srl x6, x2, x7 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x23, 0x12fc0c5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x0, 0xd7c60242 # initialize rs2
srl x23, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x25, 0x5adb1447 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
li x4, 0x00000000 # initialize rs2
srl x25, x31, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0x82112c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x15, 0x00000000 # initialize rs2
srl x10, x8, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x15, 0xa97cffec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs1
li x0, 0x908bb8c3 # initialize rs2
srl x15, x7, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x13, 0xc85d3ea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
srl x13, x3, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0x53ce2aec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x17, 0x00000001 # initialize rs2
srl x6, x21, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0xc5d408a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x0, 0x1214f2ff # initialize rs2
srl x10, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x9, 0xbac63d7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000002 # initialize rs1
li x4, 0x00000002 # initialize rs2
srl x9, x25, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0x967b71b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x28, 0x00000002 # initialize rs2
srl x10, x25, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x12, 0x4c083a36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x0, 0xaa80a114 # initialize rs2
srl x12, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x9, 0xeb8362ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
srl x9, x19, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x22, 0xb8812147 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x27, 0x80000000 # initialize rs2
srl x22, x8, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x12, 0x17669df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rs1
li x0, 0x22912378 # initialize rs2
srl x12, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x21, 0x888fe378 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
li x16, 0x80000001 # initialize rs2
srl x21, x12, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x10, 0xdead633f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x16, 0x80000001 # initialize rs2
srl x10, x8, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x30, 0x755066f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffff # initialize rs1
li x0, 0xf35f7f91 # initialize rs2
srl x30, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x12, 0x9839837d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x11, 0x7fffffff # initialize rs2
srl x12, x27, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x11, 0xf808a949 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
srl x11, x6, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x1, 0xe2aa0773 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
li x0, 0x7dabfee6 # initialize rs2
srl x1, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x13, 0x65b9ba4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffe # initialize rs1
li x4, 0x7ffffffe # initialize rs2
srl x13, x2, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x1, 0x15e1ee1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
li x11, 0x7ffffffe # initialize rs2
srl x1, x15, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x29, 0x80f842be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x0, 0xe2da8076 # initialize rs2
srl x29, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x29, 0x99ee2065 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
srl x29, x6, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x29, 0x9b804e92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
li x12, 0xffffffff # initialize rs2
srl x29, x20, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x7, 0x583be7de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffe # initialize rs1
li x0, 0x57d0f513 # initialize rs2
srl x7, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x3, 0xc08e81cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs1
li x25, 0xfffffffe # initialize rs2
srl x3, x13, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x31, 0xd90c4e38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x21, 0xfffffffe # initialize rs2
srl x31, x16, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x31, 0x6e1a4e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc8877 # initialize rs1
li x0, 0x261eac27 # initialize rs2
srl x31, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x8, 0xd742c84b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc8877 # initialize rs1
li x10, 0x5bbc8877 # initialize rs2
srl x8, x17, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x4, 0x7d8adf4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffff # initialize rs1
li x25, 0x5bbc8877 # initialize rs2
srl x4, x5, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x3, 0x016889a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaa # initialize rs1
li x0, 0x4191a9f0 # initialize rs2
srl x3, x24, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x16, 0x52505978 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
srl x16, x11, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x23, 0xc336982a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
srl x23, x14, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x29, 0x6a4a13b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x0, 0x35a60b55 # initialize rs2
srl x29, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x6, 0xbb713d4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
li x11, 0x55555555 # initialize rs2
srl x6, x27, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x29, 0x85f1db61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x7, 0x55555555 # initialize rs2
srl x29, x28, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x5a102d06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
li x17, 0xb7eb4469 # initialize rs2
srl x14, x31, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0xb7e76cec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000001 # initialize rs1
li x3, 0xd7930160 # initialize rs2
srl x22, x2, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0xe186bc1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
li x10, 0x1b56daa3 # initialize rs2
srl x11, x23, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x7, 0xd986ece6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # initialize rs1
li x12, 0xb860d5c0 # initialize rs2
srl x7, x5, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x30, 0xcff85c06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000001 # initialize rs1
li x10, 0x8bd5dcdb # initialize rs2
srl x30, x28, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x30, 0x0044f39e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
li x17, 0x8133d5ac # initialize rs2
srl x30, x4, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x17, 0x29ba25c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffe # initialize rs1
li x27, 0x4eea2924 # initialize rs2
srl x17, x24, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x1, 0x3a29261c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x8, 0x0a228a4e # initialize rs2
srl x1, x16, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0x88623846 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
li x13, 0x4d39cad3 # initialize rs2
srl x21, x4, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x9, 0xf290e656 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc8877 # initialize rs1
li x25, 0xd4d3b2ef # initialize rs2
srl x9, x18, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x8, 0x5d55735c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x13, 0xd05485f4 # initialize rs2
srl x8, x2, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x5, 0xb3903f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x55555555 # initialize rs1
li x14, 0xcecbf213 # initialize rs2
srl x5, x19, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x11, 0x7c8aec26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x96d75f6f # initialize rs1
li x17, 0x00000000 # initialize rs2
srl x11, x9, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0x63eb6e91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xded3fb29 # initialize rs1
li x20, 0x00000001 # initialize rs2
srl x13, x28, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x12, 0xb9349537 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7aee0fd2 # initialize rs1
li x15, 0x00000002 # initialize rs2
srl x12, x27, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x4, 0xdda2beca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x37f324c6 # initialize rs1
li x15, 0x80000000 # initialize rs2
srl x4, x16, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x27, 0xb1ec9048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4393135d # initialize rs1
li x2, 0x80000001 # initialize rs2
srl x27, x3, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x10, 0x478b4b3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe251e801 # initialize rs1
li x27, 0x7fffffff # initialize rs2
srl x10, x3, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x31, 0xa7265ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6863628d # initialize rs1
li x19, 0x7ffffffe # initialize rs2
srl x31, x3, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x29, 0x74a76efc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x118a98c5 # initialize rs1
li x4, 0xffffffff # initialize rs2
srl x29, x27, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x31, 0x9eae54b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0a9572a1 # initialize rs1
li x15, 0xfffffffe # initialize rs2
srl x31, x17, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x15, 0x630b2aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd679b9cb # initialize rs1
li x22, 0x5bbc8877 # initialize rs2
srl x15, x17, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x19, 0x4a343cab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa49eed17 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
srl x19, x21, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x27, 0x37261e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x2a1a0626 # initialize rs1
li x10, 0x55555555 # initialize rs2
srl x27, x6, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x20, 0xa0c3af28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
li x17, 0x00000000 # initialize rs2
srl x20, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x25, 0x7215e2ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000 # initialize rs1
li x20, 0x00000001 # initialize rs2
srl x25, x3, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x11, 0x2add9a13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000 # initialize rs1
li x17, 0x00000002 # initialize rs2
srl x11, x18, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x12, 0x0a7dfaa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000 # initialize rs1
li x30, 0x80000000 # initialize rs2
srl x12, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x28, 0xa7efae80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000 # initialize rs1
li x14, 0x80000001 # initialize rs2
srl x28, x22, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x4, 0x91a1cb79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x21, 0x7fffffff # initialize rs2
srl x4, x12, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x4, 0xeaf42584 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
srl x4, x31, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x20, 0x15d45e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x7, 0xffffffff # initialize rs2
srl x20, x28, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x22, 0x0466ec1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x24, 0xfffffffe # initialize rs2
srl x22, x12, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x4, 0x33665d6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000 # initialize rs1
li x12, 0x5bbc8877 # initialize rs2
srl x4, x5, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x19, 0x36ce8463 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
srl x19, x12, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x31, 0x28a32858 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000 # initialize rs1
li x5, 0x55555555 # initialize rs2
srl x31, x18, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x10, 0xbe7f7b88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
li x12, 0x00000000 # initialize rs2
srl x10, x27, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x23, 0xce4e90bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
srl x23, x13, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x7, 0x9cb42362 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
li x17, 0x00000002 # initialize rs2
srl x7, x11, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x27, 0x113e7ad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize rs1
li x25, 0x80000000 # initialize rs2
srl x27, x9, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x28, 0xeeacd3b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
li x2, 0x80000001 # initialize rs2
srl x28, x27, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x29, 0x148f8553 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
li x5, 0x7fffffff # initialize rs2
srl x29, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x27, 0x4e376a71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000001 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
srl x27, x5, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x4, 0x30e3f384 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
li x8, 0xffffffff # initialize rs2
srl x4, x23, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x21, 0x90239620 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs1
li x23, 0xfffffffe # initialize rs2
srl x21, x14, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x18, 0x9b05e24e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000001 # initialize rs1
li x23, 0x5bbc8877 # initialize rs2
srl x18, x17, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x26, 0xc19bcbfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
srl x26, x30, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x8, 0x86700d9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs1
li x25, 0x55555555 # initialize rs2
srl x8, x14, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x19, 0x0e93cd11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002 # initialize rs1
li x6, 0x00000000 # initialize rs2
srl x19, x13, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x17, 0xed655db3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000002 # initialize rs1
li x24, 0x00000001 # initialize rs2
srl x17, x25, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x22, 0x7fae6b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000002 # initialize rs1
li x1, 0x00000002 # initialize rs2
srl x22, x14, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x2, 0x32965edc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x21, 0x80000000 # initialize rs2
srl x2, x6, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x15, 0x3f2479cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000002 # initialize rs1
li x24, 0x80000001 # initialize rs2
srl x15, x1, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x26, 0x4fc66d7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000002 # initialize rs1
li x7, 0x7fffffff # initialize rs2
srl x26, x5, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x8, 0xcbad5cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
srl x8, x27, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x31, 0xe36ba801 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000002 # initialize rs1
li x6, 0xffffffff # initialize rs2
srl x31, x18, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x12, 0x53bc3a05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # initialize rs1
li x23, 0xfffffffe # initialize rs2
srl x12, x28, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x22, 0x7db42e83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000002 # initialize rs1
li x24, 0x5bbc8877 # initialize rs2
srl x22, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x13, 0x5727e1d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
srl x13, x8, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x21, 0x57cd1c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs1
li x30, 0x55555555 # initialize rs2
srl x21, x12, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x14, 0xf1564214 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
srl x14, x24, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x17, 0x0b697047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x4, 0x00000001 # initialize rs2
srl x17, x13, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x30, 0x7e578c17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs1
li x2, 0x00000002 # initialize rs2
srl x30, x24, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x16, 0x88bbc64e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
srl x16, x22, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x12, 0x1b7c9922 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
li x5, 0x80000001 # initialize rs2
srl x12, x27, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x21, 0xa3308a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000000 # initialize rs1
li x12, 0x7fffffff # initialize rs2
srl x21, x2, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x14, 0x498000e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
srl x14, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x26, 0x092fca72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x12, 0xffffffff # initialize rs2
srl x26, x1, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x26, 0x416abe49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000000 # initialize rs1
li x5, 0xfffffffe # initialize rs2
srl x26, x3, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x4, 0x5e6b0dc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
li x8, 0x5bbc8877 # initialize rs2
srl x4, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x17, 0xd6f2cecf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
srl x17, x24, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x8, 0x7919f5b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x2, 0x55555555 # initialize rs2
srl x8, x1, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x18, 0xf491ac12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x80000001 # initialize rs1
li x19, 0x00000000 # initialize rs2
srl x18, x25, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x31, 0xf20de0d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000001 # initialize rs1
li x21, 0x00000001 # initialize rs2
srl x31, x6, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x1, 0x814b0fe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rs1
li x22, 0x00000002 # initialize rs2
srl x1, x9, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x23, 0xa47a1573 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000001 # initialize rs1
li x6, 0x80000000 # initialize rs2
srl x23, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x2, 0xab377586 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
srl x2, x8, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x18, 0x92d81771 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
li x14, 0x7fffffff # initialize rs2
srl x18, x21, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x22, 0xc8d57e6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000001 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
srl x22, x5, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x12, 0x07f68f16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000001 # initialize rs1
li x8, 0xffffffff # initialize rs2
srl x12, x22, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x21, 0x21f6599f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000001 # initialize rs1
li x18, 0xfffffffe # initialize rs2
srl x21, x5, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x14, 0x5f068e7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
srl x14, x12, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x15, 0x24e8af43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000001 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
srl x15, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x8, 0xea187a05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000001 # initialize rs1
li x1, 0x55555555 # initialize rs2
srl x8, x24, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x29, 0xae52e8f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffff # initialize rs1
li x28, 0x00000000 # initialize rs2
srl x29, x25, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x20, 0xfb9556aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x21, 0x00000001 # initialize rs2
srl x20, x16, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x6, 0x67d73369 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x29, 0x00000002 # initialize rs2
srl x6, x5, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x3, 0xa46349fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffff # initialize rs1
li x10, 0x80000000 # initialize rs2
srl x3, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x10, 0xc5ec7bd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x8, 0x80000001 # initialize rs2
srl x10, x27, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x3, 0xb440f34e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rs1
li x25, 0x7fffffff # initialize rs2
srl x3, x13, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x24, 0x0b4c542a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x10, 0x7ffffffe # initialize rs2
srl x24, x5, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x9, 0x016a4c76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
srl x9, x29, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x12, 0x76c71040 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffff # initialize rs1
li x26, 0xfffffffe # initialize rs2
srl x12, x7, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x12, 0x31a233db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffff # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
srl x12, x9, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x14, 0xe0298b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffff # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
srl x14, x18, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x8, 0xf60f5b3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
li x31, 0x55555555 # initialize rs2
srl x8, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x13, 0x799ab196 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffe # initialize rs1
li x7, 0x00000000 # initialize rs2
srl x13, x29, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x25, 0x7f5cc442 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x31, 0x00000001 # initialize rs2
srl x25, x20, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x28, 0xa075531c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffe # initialize rs1
li x26, 0x00000002 # initialize rs2
srl x28, x10, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x16, 0xf75c7f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
li x12, 0x80000000 # initialize rs2
srl x16, x31, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x28, 0x5fec03ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs1
li x13, 0x80000001 # initialize rs2
srl x28, x12, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x5, 0xef06ee4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs1
li x24, 0x7fffffff # initialize rs2
srl x5, x12, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x4, 0x5417e983 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
srl x4, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x31, 0x2713fc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffe # initialize rs1
li x23, 0xffffffff # initialize rs2
srl x31, x3, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x5, 0x459cae2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffe # initialize rs1
li x22, 0xfffffffe # initialize rs2
srl x5, x26, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x25, 0x906458f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffe # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
srl x25, x18, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x31, 0x84e268b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
srl x31, x23, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x14, 0xe512a8b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffe # initialize rs1
li x17, 0x55555555 # initialize rs2
srl x14, x16, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x14, 0x19b8e5d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x15, 0x00000000 # initialize rs2
srl x14, x9, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x26, 0xf59216ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x24, 0x00000001 # initialize rs2
srl x26, x4, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x12, 0x49c84cde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x1, 0x00000002 # initialize rs2
srl x12, x22, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x21, 0x52e79354 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x20, 0x80000000 # initialize rs2
srl x21, x27, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x1, 0x27cdd9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
li x20, 0x80000001 # initialize rs2
srl x1, x19, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x21, 0x84a772dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
srl x21, x23, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x17, 0x568f37cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x21, 0x7ffffffe # initialize rs2
srl x17, x14, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0xea46a725 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
li x4, 0xffffffff # initialize rs2
srl x18, x29, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0x8208a7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x24, 0xfffffffe # initialize rs2
srl x28, x4, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x21, 0xf3c7a24c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
srl x21, x16, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x30, 0x3eeff913 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
srl x30, x8, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x8, 0x97dae7df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
li x27, 0x55555555 # initialize rs2
srl x8, x12, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x20, 0xb8fbe7f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffe # initialize rs1
li x6, 0x00000000 # initialize rs2
srl x20, x30, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x17, 0x4125c238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs1
li x1, 0x00000001 # initialize rs2
srl x17, x13, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x15, 0x1e58ff6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffe # initialize rs1
li x6, 0x00000002 # initialize rs2
srl x15, x7, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x28, 0x6387e8b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
li x1, 0x80000000 # initialize rs2
srl x28, x23, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x17, 0x64637429 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
li x3, 0x80000001 # initialize rs2
srl x17, x31, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x9, 0x42648610 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x25, 0x7fffffff # initialize rs2
srl x9, x5, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x26, 0xd0683dab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffe # initialize rs1
li x9, 0x7ffffffe # initialize rs2
srl x26, x17, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x8, 0xc6a149f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffe # initialize rs1
li x20, 0xffffffff # initialize rs2
srl x8, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x24, 0xa65cf94a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
li x25, 0xfffffffe # initialize rs2
srl x24, x23, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x22, 0x5556bb7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffe # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
srl x22, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x18, 0x68f98c42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
srl x18, x23, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x30, 0x825c9c05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x2, 0x55555555 # initialize rs2
srl x30, x21, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x8, 0x0393bcc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
li x15, 0x00000000 # initialize rs2
srl x8, x23, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x20, 0x1d6f2338 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
li x7, 0x00000001 # initialize rs2
srl x20, x4, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x14, 0x445151f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
li x10, 0x00000002 # initialize rs2
srl x14, x21, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x20, 0x3fa61f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc8877 # initialize rs1
li x28, 0x80000000 # initialize rs2
srl x20, x25, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x18, 0x00ca311e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x12, 0x80000001 # initialize rs2
srl x18, x31, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x8, 0xa2d17d2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc8877 # initialize rs1
li x26, 0x7fffffff # initialize rs2
srl x8, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x3, 0x439ccea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc8877 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
srl x3, x29, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x31, 0xca3d019f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc8877 # initialize rs1
li x20, 0xffffffff # initialize rs2
srl x31, x17, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x22, 0x29cce002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc8877 # initialize rs1
li x19, 0xfffffffe # initialize rs2
srl x22, x18, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x24, 0xa2c45f65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
srl x24, x11, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x25, 0xe64935a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc8877 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
srl x25, x19, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x9, 0xd97d674c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x12, 0x55555555 # initialize rs2
srl x9, x30, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x16, 0x31538f6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaa # initialize rs1
li x27, 0x00000000 # initialize rs2
srl x16, x3, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x6, 0xe8b75fa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
li x10, 0x00000001 # initialize rs2
srl x6, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x5, 0xdc12e3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x18, 0x00000002 # initialize rs2
srl x5, x14, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x8, 0x7f29da42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaa # initialize rs1
li x12, 0x80000000 # initialize rs2
srl x8, x24, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x2, 0xc31a8a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaa # initialize rs1
li x5, 0x80000001 # initialize rs2
srl x2, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x6, 0xb8ac82f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x12, 0x7fffffff # initialize rs2
srl x6, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x29, 0xec472d40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x16, 0x7ffffffe # initialize rs2
srl x29, x8, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x7, 0xff3a70ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x27, 0xffffffff # initialize rs2
srl x7, x26, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x13, 0x72b6e056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaa # initialize rs1
li x1, 0xfffffffe # initialize rs2
srl x13, x22, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x30, 0x2c2885ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
srl x30, x21, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x27, 0xabb67b95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
srl x27, x20, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x2, 0x4ab5bc0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
li x18, 0x55555555 # initialize rs2
srl x2, x21, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x3, 0x466104c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
li x1, 0x00000000 # initialize rs2
srl x3, x4, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x31, 0x667e4b00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555 # initialize rs1
li x9, 0x00000001 # initialize rs2
srl x31, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x8, 0x767e7f98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x29, 0x00000002 # initialize rs2
srl x8, x16, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x15, 0xdcb863dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x6, 0x80000000 # initialize rs2
srl x15, x16, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x15, 0x007e6fb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x55555555 # initialize rs1
li x8, 0x80000001 # initialize rs2
srl x15, x19, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x16, 0x704c9a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555 # initialize rs1
li x29, 0x7fffffff # initialize rs2
srl x16, x13, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x9, 0x1b7a36fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
srl x9, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x8, 0x807ab98e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
li x5, 0xffffffff # initialize rs2
srl x8, x23, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x18, 0x2fb25c8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x26, 0xfffffffe # initialize rs2
srl x18, x11, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x29, 0x23c78360 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
srl x29, x17, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x11, 0xe2819978 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x55555555 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
srl x11, x3, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x9, 0x87b5023c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x11, 0x55555555 # initialize rs2
srl x9, x25, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xbd1c1a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3fb53c46 # initialize rs1
li x12, 0x81553cc3 # initialize rs2
srl x0, x0, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x6bfa8811 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa66d3e28 # initialize rs1
li x17, 0x973606ec # initialize rs2
srl x1, x1, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xcc7f4deb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3c8a3a90 # initialize rs1
li x25, 0x33911ac9 # initialize rs2
srl x2, x2, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xadf7d118 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6c0389b7 # initialize rs1
li x28, 0x7d3f41e2 # initialize rs2
srl x3, x3, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xc66f5e90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x002e5261 # initialize rs1
li x24, 0x322a1301 # initialize rs2
srl x4, x4, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x04e15f2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x447adf15 # initialize rs1
li x10, 0x25570d5f # initialize rs2
srl x5, x5, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x29d2f407 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x91d44618 # initialize rs1
li x2, 0xd4914713 # initialize rs2
srl x6, x6, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x2f65bcb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb7f11aa6 # initialize rs1
li x25, 0xc1c4cb4f # initialize rs2
srl x7, x7, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xdb8f0a99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfcef3c78 # initialize rs1
li x28, 0xf9ab9483 # initialize rs2
srl x8, x8, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x3ba91d3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x08601e82 # initialize rs1
li x5, 0xf8862eea # initialize rs2
srl x9, x9, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x29c508d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4b99c9b7 # initialize rs1
li x13, 0xcbd9f855 # initialize rs2
srl x10, x10, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xd4ac82a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfeecdf06 # initialize rs1
li x6, 0xddc4a580 # initialize rs2
srl x11, x11, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x2ac15225 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1df4e863 # initialize rs1
li x28, 0x7b094c2b # initialize rs2
srl x12, x12, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xcbe7ce43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x92159ef1 # initialize rs1
li x2, 0x1205974e # initialize rs2
srl x13, x13, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xffd9c66e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xab4dcf51 # initialize rs1
li x12, 0x3dc07d16 # initialize rs2
srl x14, x14, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x1307a9e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaf6a056a # initialize rs1
li x24, 0xb5988fb1 # initialize rs2
srl x15, x15, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xb93d6915 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x1956da9c # initialize rs1
li x20, 0xec3b049f # initialize rs2
srl x16, x16, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x7e5debf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x414dc998 # initialize rs1
li x24, 0x03fbe7bd # initialize rs2
srl x17, x17, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xba6efd58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7cf24399 # initialize rs1
li x2, 0x2e1667ea # initialize rs2
srl x18, x18, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x43d0a997 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaa8ba520 # initialize rs1
li x26, 0x6b56eaf7 # initialize rs2
srl x19, x19, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xeda0e92b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xee250a34 # initialize rs1
li x9, 0x22825927 # initialize rs2
srl x20, x20, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x1a38f5d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd4ac709f # initialize rs1
li x26, 0x3b6d27e8 # initialize rs2
srl x21, x21, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x4c3e1442 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe1baeebf # initialize rs1
li x10, 0x91eed371 # initialize rs2
srl x22, x22, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x9dd36dbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xee931648 # initialize rs1
li x27, 0x27fa081d # initialize rs2
srl x23, x23, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xcf0c7f11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x3cbd7916 # initialize rs1
li x9, 0x0b0975ea # initialize rs2
srl x24, x24, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x7d06213d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x97aefe02 # initialize rs1
li x4, 0x32628592 # initialize rs2
srl x25, x25, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x73fb8272 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf225aa93 # initialize rs1
li x26, 0x49990c94 # initialize rs2
srl x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1d082748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x03972fbe # initialize rs1
li x19, 0x12fd147d # initialize rs2
srl x27, x27, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xf0802d7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8a84232e # initialize rs1
li x1, 0x932657a8 # initialize rs2
srl x28, x28, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x3ae75637 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9529b15b # initialize rs1
li x25, 0x7fd36c6e # initialize rs2
srl x29, x29, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xceea9194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb7b10075 # initialize rs1
li x1, 0x6d9bb763 # initialize rs2
srl x30, x30, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x920a7d1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x30d5f230 # initialize rs1
li x24, 0x3337b7f8 # initialize rs2
srl x31, x31, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xfcd5209d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe40be558 # initialize rs1
li x0, 0x3eb3c53e # initialize rs2
srl x0, x16, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x2e39b4db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf2da3c3f # initialize rs1
li x1, 0x2aed02e1 # initialize rs2
srl x1, x30, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x21717535 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x26838b62 # initialize rs1
li x2, 0x586df135 # initialize rs2
srl x2, x14, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x4ee85fac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc2443ed9 # initialize rs1
li x3, 0x3fd2d676 # initialize rs2
srl x3, x22, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x6e1846de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd9c6db04 # initialize rs1
li x4, 0x68b0ec6f # initialize rs2
srl x4, x29, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xe5bb918a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe530b5d4 # initialize rs1
li x5, 0x030620da # initialize rs2
srl x5, x5, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xef9244bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x46e6e09b # initialize rs1
li x6, 0xaa11440e # initialize rs2
srl x6, x16, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xd01224c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcabad759 # initialize rs1
li x7, 0xb4d4f80d # initialize rs2
srl x7, x18, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x77a2d773 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb7cfa8fd # initialize rs1
li x8, 0x92ee19a7 # initialize rs2
srl x8, x24, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xfebbc82d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1e530e30 # initialize rs1
li x9, 0x1c08db5e # initialize rs2
srl x9, x1, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x90caa2fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdf92a586 # initialize rs1
li x10, 0x78c686d8 # initialize rs2
srl x10, x14, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xf482670e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb78e0a3a # initialize rs1
li x11, 0x712ffc77 # initialize rs2
srl x11, x17, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xed412d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x2f09a2ab # initialize rs1
li x12, 0x02684694 # initialize rs2
srl x12, x24, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xaeadbe91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf294d4fc # initialize rs1
li x13, 0xbe1bbee2 # initialize rs2
srl x13, x30, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x857b8964 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x45f60f8b # initialize rs1
li x14, 0x2517c8ff # initialize rs2
srl x14, x9, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x4d978d76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xafc45323 # initialize rs1
li x15, 0xee97eac9 # initialize rs2
srl x15, x25, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x12942c98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2bc8e428 # initialize rs1
li x16, 0x7bc5cb82 # initialize rs2
srl x16, x31, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xe014518a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x96834e5e # initialize rs1
li x17, 0xd4d0b9e2 # initialize rs2
srl x17, x8, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x0393863f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb892fb13 # initialize rs1
li x18, 0xa0c8379e # initialize rs2
srl x18, x20, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xc88b7240 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x02994d65 # initialize rs1
li x19, 0xe6d43945 # initialize rs2
srl x19, x10, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xa2e04eac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x89a86604 # initialize rs1
li x20, 0x5cc2f3f6 # initialize rs2
srl x20, x29, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xa1c182cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1f2a2f57 # initialize rs1
li x21, 0xb59903d0 # initialize rs2
srl x21, x7, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xaea63e43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf07dbfb4 # initialize rs1
li x22, 0xee9df840 # initialize rs2
srl x22, x5, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xbdf9b320 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2e238574 # initialize rs1
li x23, 0x66eb4266 # initialize rs2
srl x23, x19, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x553ec98e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6fb725e8 # initialize rs1
li x24, 0xc5960224 # initialize rs2
srl x24, x17, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xca226a51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf74ab1d3 # initialize rs1
li x25, 0x72dcee84 # initialize rs2
srl x25, x11, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xfb9e8b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x2cd4bf8e # initialize rs1
li x26, 0xd53286e8 # initialize rs2
srl x26, x17, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x2a2213d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9ae8f695 # initialize rs1
li x27, 0x6269f46b # initialize rs2
srl x27, x7, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x53fdc479 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb7498e9a # initialize rs1
li x28, 0x3a8f5348 # initialize rs2
srl x28, x21, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x64cc1c04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4a49298c # initialize rs1
li x29, 0x13ad0408 # initialize rs2
srl x29, x3, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x8dd0d526 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xcbded3b3 # initialize rs1
li x30, 0x9c840fb9 # initialize rs2
srl x30, x3, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xb7ecc33b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x865fe9c0 # initialize rs1
li x31, 0xf1e2968b # initialize rs2
srl x31, x1, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xdff90887 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x403a5848 # initialize rs1
li x0, 0x3e22d689 # initialize rs2
srl x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xbffd3fbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x58e1831a # initialize rs1
li x1, 0xcf023b27 # initialize rs2
srl x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x1ec0603d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x67d9bbcd # initialize rs1
li x2, 0x5c824ac0 # initialize rs2
srl x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xfd890708 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x37a47527 # initialize rs1
li x3, 0x8195cfa8 # initialize rs2
srl x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xa31bb9c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2e858731 # initialize rs1
li x4, 0x1319c3ad # initialize rs2
srl x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x95fc0be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x01418cdc # initialize rs1
li x5, 0x81517d82 # initialize rs2
srl x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x01d2fbba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfd164732 # initialize rs1
li x6, 0xc93db9db # initialize rs2
srl x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x44a438fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa6d4f2ab # initialize rs1
li x7, 0x91d3757a # initialize rs2
srl x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x14d426bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4dd7c69c # initialize rs1
li x8, 0x7a3ede76 # initialize rs2
srl x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x26d223d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc3ed0c36 # initialize rs1
li x9, 0x05efc176 # initialize rs2
srl x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xc2b00ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4981e393 # initialize rs1
li x10, 0xfd0191c4 # initialize rs2
srl x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x05a6d9c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2d3ee61b # initialize rs1
li x11, 0xc36a04d6 # initialize rs2
srl x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x640c8e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3ed78d6f # initialize rs1
li x12, 0x8f3092ef # initialize rs2
srl x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x9dfeeed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6ef00ed8 # initialize rs1
li x13, 0x3e2f6be1 # initialize rs2
srl x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x02ecc878 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc136febd # initialize rs1
li x14, 0x15806137 # initialize rs2
srl x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x0fc812bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xedf5613a # initialize rs1
li x15, 0xac5d2229 # initialize rs2
srl x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x2f64214b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7d2d9133 # initialize rs1
li x16, 0x8715be2d # initialize rs2
srl x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xa744a372 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x748f8a67 # initialize rs1
li x17, 0xa2b09da2 # initialize rs2
srl x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x5ebacb4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x260e2a98 # initialize rs1
li x18, 0xde89a61b # initialize rs2
srl x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x43aa7b9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xdfcbfb7f # initialize rs1
li x19, 0xd6e23974 # initialize rs2
srl x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xce2dce94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x220a0b22 # initialize rs1
li x20, 0x5af8fe59 # initialize rs2
srl x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xf53f0409 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xce76809a # initialize rs1
li x21, 0x456cd797 # initialize rs2
srl x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x831fe7ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbd7594e1 # initialize rs1
li x22, 0x4a2d4ed3 # initialize rs2
srl x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x85798c2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe28ae602 # initialize rs1
li x23, 0x425b91b3 # initialize rs2
srl x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x4e861d26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xdd745d1a # initialize rs1
li x24, 0x0555da1a # initialize rs2
srl x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x2523660b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0fac48ca # initialize rs1
li x25, 0x3970946b # initialize rs2
srl x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x87ba3b02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9f936881 # initialize rs1
li x26, 0x9124e43c # initialize rs2
srl x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x9b1341d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xbca02396 # initialize rs1
li x27, 0x8b234196 # initialize rs2
srl x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xec1ebeb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf32e4b45 # initialize rs1
li x28, 0x68de4e14 # initialize rs2
srl x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xd9e41407 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7e0b7536 # initialize rs1
li x29, 0x0f81c7ad # initialize rs2
srl x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x7927ead3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fea605c # initialize rs1
li x30, 0x12066b0d # initialize rs2
srl x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x35d33bab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb89d6523 # initialize rs1
li x31, 0x03caf6a0 # initialize rs2
srl x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x15, 0x654658b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2842b59a # initialize rs1
li x0, 0x82655875 # initialize rs2
srl x15, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x21, 0xdb75d17d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfe83453b # initialize rs1
li x1, 0xc7fbe53e # initialize rs2
srl x21, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x15, 0x944b9168 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x34a282b6 # initialize rs1
li x2, 0x64f23b13 # initialize rs2
srl x15, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x8, 0x94ef7c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd0fad33f # initialize rs1
li x3, 0x5acebeff # initialize rs2
srl x8, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x24, 0xb991c030 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x4afbf4b5 # initialize rs1
li x4, 0x416224b0 # initialize rs2
srl x24, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x28, 0xe59b0d96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x71f9532d # initialize rs1
li x5, 0xebf2cfb3 # initialize rs2
srl x28, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x24, 0x700faa66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x59563a80 # initialize rs1
li x6, 0xc75f0f9f # initialize rs2
srl x24, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x1, 0xe9e989e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc5ba05fa # initialize rs1
li x7, 0x474cf563 # initialize rs2
srl x1, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x6, 0xf2d0dd73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x348f6fcc # initialize rs1
li x8, 0x411b797d # initialize rs2
srl x6, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x655e4d00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8c567e08 # initialize rs1
li x9, 0xca9fbae5 # initialize rs2
srl x9, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x2, 0xfab33c02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbbf0332f # initialize rs1
li x10, 0xdd351c2a # initialize rs2
srl x2, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x27, 0x87186403 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x39522c4b # initialize rs1
li x11, 0xa544b68a # initialize rs2
srl x27, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x14, 0x9750561c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7d56d70e # initialize rs1
li x12, 0xe26370d9 # initialize rs2
srl x14, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x18, 0x3d454b37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0c005bb8 # initialize rs1
li x13, 0xf9e33f87 # initialize rs2
srl x18, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x13, 0x881c60f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8ce6ebb8 # initialize rs1
li x14, 0x07d64662 # initialize rs2
srl x13, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x23, 0xf1002034 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x20668018 # initialize rs1
li x15, 0x891ecac0 # initialize rs2
srl x23, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x12, 0xc1154e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x587594cc # initialize rs1
li x16, 0x60341d8c # initialize rs2
srl x12, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x1, 0x0b59e726 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x81f161b2 # initialize rs1
li x17, 0xd1f70ed0 # initialize rs2
srl x1, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x30, 0xdee66d43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x40a92ba5 # initialize rs1
li x18, 0x7002df3e # initialize rs2
srl x30, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x18, 0x1aad0f91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc64307bd # initialize rs1
li x19, 0x34e292cd # initialize rs2
srl x18, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x15, 0x52447dbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa3f0ac81 # initialize rs1
li x20, 0xd42e8539 # initialize rs2
srl x15, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x12, 0x343b363f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xbbc88fc6 # initialize rs1
li x21, 0xcd8ef0d6 # initialize rs2
srl x12, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x29, 0x10d12e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf5523340 # initialize rs1
li x22, 0x410ce563 # initialize rs2
srl x29, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x24, 0xaf7d88c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdecee549 # initialize rs1
li x23, 0xf5617822 # initialize rs2
srl x24, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x18, 0x1fe19f68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc4a53b37 # initialize rs1
li x24, 0x25cc5896 # initialize rs2
srl x18, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x17, 0x9c460db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ac6692f # initialize rs1
li x25, 0xbc70d4e7 # initialize rs2
srl x17, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x22, 0x16690334 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb0d8d0f1 # initialize rs1
li x26, 0x92b6e6b8 # initialize rs2
srl x22, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x5, 0xc7b01e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0540a957 # initialize rs1
li x27, 0x41cc66ac # initialize rs2
srl x5, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x3, 0xf267ae48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xbfb5c95c # initialize rs1
li x28, 0x64e7ef7a # initialize rs2
srl x3, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x20, 0xb4b3db91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x544ce220 # initialize rs1
li x29, 0x773ae97b # initialize rs2
srl x20, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x20, 0xa8c261e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf9b2f77d # initialize rs1
li x30, 0x54854231 # initialize rs2
srl x20, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x15, 0x7fc3a1f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4770e3e4 # initialize rs1
li x31, 0x3be028e7 # initialize rs2
srl x15, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x6c9a62a)
li x25, 0xa9e991f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x06c9a62a # initialize rs1
li x19, 0xf222e9a3 # initialize rs2
srl x25, x21, x19 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0xc05c9d4)
li x29, 0xd9b279d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf3fa362c # initialize rs1
li x9, 0xb66036ec # initialize rs2
srl x29, x6, x9 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x5872f885)
li x16, 0xe8615907 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0785dd72 # initialize rs1
li x20, 0x5872f885 # initialize rs2
srl x16, x3, x20 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0xb96134b)
li x29, 0xd0e92b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x88716a7b # initialize rs1
li x7, 0xf469ecb5 # initialize rs2
srl x29, x1, x7 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
