///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/M//WALLY-COV-div.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.054951
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x59a99ec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xdc4f81d7 # initialize rs1
li x24, 0xc9d83226 # initialize rs2
div x0, x27, x24 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x0078c141 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x14828ffa # initialize rs1
li x22, 0x546a2027 # initialize rs2
div x1, x9, x22 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x3bd74531 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb22196fd # initialize rs1
li x23, 0x83026ab2 # initialize rs2
div x2, x29, x23 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xae671d00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6acad670 # initialize rs1
li x24, 0x623ac830 # initialize rs2
div x3, x9, x24 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x758bcd62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x530067c5 # initialize rs1
li x16, 0x1c7cd7e0 # initialize rs2
div x4, x2, x16 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xc33bd824 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x69316c0c # initialize rs1
li x13, 0x2a02f5aa # initialize rs2
div x5, x5, x13 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xa09e153b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7418e53b # initialize rs1
li x12, 0xd73ae682 # initialize rs2
div x6, x29, x12 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x8ba33fce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb9b30809 # initialize rs1
li x18, 0x04c7d6b3 # initialize rs2
div x7, x30, x18 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x5dce67ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6515b73c # initialize rs1
li x21, 0x92e790ba # initialize rs2
div x8, x24, x21 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xf7915aca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5a13cde1 # initialize rs1
li x28, 0xf9450433 # initialize rs2
div x9, x2, x28 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x321a447a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x55772f2b # initialize rs1
li x17, 0x69edfe82 # initialize rs2
div x10, x22, x17 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x5502d608 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc4081a8b # initialize rs1
li x27, 0xf52102e5 # initialize rs2
div x11, x8, x27 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x113f375a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9e737594 # initialize rs1
li x8, 0xbf7df7b3 # initialize rs2
div x12, x3, x8 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xfd450487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa2197cd1 # initialize rs1
li x18, 0x0d118546 # initialize rs2
div x13, x31, x18 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xefefcf1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0f039cf4 # initialize rs1
li x10, 0x6a4de7ce # initialize rs2
div x14, x4, x10 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xa3aea543 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xef1fcb6e # initialize rs1
li x26, 0x0a710487 # initialize rs2
div x15, x30, x26 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x3e81ef4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x29c151b6 # initialize rs1
li x9, 0x4aac869a # initialize rs2
div x16, x23, x9 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xae8f6d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe162a0b6 # initialize rs1
li x25, 0x0776a0a1 # initialize rs2
div x17, x15, x25 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x55038d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc33b353d # initialize rs1
li x29, 0xa65b026c # initialize rs2
div x18, x20, x29 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xc882892d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x39e5162b # initialize rs1
li x14, 0x4ba5e38e # initialize rs2
div x19, x1, x14 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xa5da8726 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa376ad56 # initialize rs1
li x6, 0xba69b40c # initialize rs2
div x20, x10, x6 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xd22a6e96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x92618c37 # initialize rs1
li x3, 0x951aaf0a # initialize rs2
div x21, x12, x3 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x63d756ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6bdc7077 # initialize rs1
li x21, 0xcde5f292 # initialize rs2
div x22, x11, x21 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x8eb0004b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xbffa4923 # initialize rs1
li x14, 0x87b44771 # initialize rs2
div x23, x30, x14 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x41b20b9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa79c9159 # initialize rs1
li x21, 0xba75b6d8 # initialize rs2
div x24, x15, x21 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x95f65f26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x930ca592 # initialize rs1
li x14, 0xbd82e7d7 # initialize rs2
div x25, x10, x14 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xb4f5fd79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x4a080e7f # initialize rs1
li x19, 0x0953e890 # initialize rs2
div x26, x2, x19 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xed3b8fef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf46bb227 # initialize rs1
li x19, 0x673aa009 # initialize rs2
div x27, x27, x19 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x8ebf3eac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7d28c1f9 # initialize rs1
li x31, 0x5dbc95fc # initialize rs2
div x28, x2, x31 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x888a407c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x86fe85a4 # initialize rs1
li x24, 0xd642afa1 # initialize rs2
div x29, x11, x24 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x3e6a5fd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf077b96c # initialize rs1
li x17, 0xe5659afe # initialize rs2
div x30, x28, x17 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x53d04aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb241c545 # initialize rs1
li x24, 0x744f76fc # initialize rs2
div x31, x15, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x1, 0xf7ddeea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9b9d2d9f # initialize rs1
li x2, 0x48b9b48f # initialize rs2
div x1, x0, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x5, 0xa7471b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc0ca2ffd # initialize rs1
li x19, 0x17dc04c7 # initialize rs2
div x5, x1, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x26, 0xb93aa285 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x073baedf # initialize rs1
li x7, 0xc30e99a1 # initialize rs2
div x26, x2, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x6, 0x5a433a9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa67d4c7d # initialize rs1
li x7, 0x070922b4 # initialize rs2
div x6, x3, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x16, 0x322f31a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe596566f # initialize rs1
li x14, 0x3e5a51a7 # initialize rs2
div x16, x4, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x6, 0x2be56a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xed4f574f # initialize rs1
li x7, 0xa5a1111a # initialize rs2
div x6, x5, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x12, 0x2c4045c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xcf4f2ab0 # initialize rs1
li x25, 0xb4cfcc45 # initialize rs2
div x12, x6, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x16, 0x30381112 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xda266a8e # initialize rs1
li x31, 0x0ed69200 # initialize rs2
div x16, x7, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x21, 0x093b547e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6ec4d423 # initialize rs1
li x24, 0x58bfe8e1 # initialize rs2
div x21, x8, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x31, 0xb9a5bb30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2fb765ff # initialize rs1
li x26, 0x58502345 # initialize rs2
div x31, x9, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x21, 0xa94acd40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xed5b5abd # initialize rs1
li x18, 0xcc0051bd # initialize rs2
div x21, x10, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x4, 0x012f1723 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x71af39b7 # initialize rs1
li x15, 0xd3c275e1 # initialize rs2
div x4, x11, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x19, 0xd08b5f4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5c366bdb # initialize rs1
li x10, 0x465cc32d # initialize rs2
div x19, x12, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0x4fce3c62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x13f12e83 # initialize rs1
li x26, 0x2f1d11e4 # initialize rs2
div x8, x13, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x20, 0x8ed76459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x98cf7a9b # initialize rs1
li x28, 0x1b819e38 # initialize rs2
div x20, x14, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x29, 0x741296d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2974fca0 # initialize rs1
li x14, 0xc4d9b6c9 # initialize rs2
div x29, x15, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x19, 0xf9c19231 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe560ff43 # initialize rs1
li x9, 0x970df637 # initialize rs2
div x19, x16, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x6, 0xc01bdd6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xce8d795d # initialize rs1
li x21, 0x7fffc6c7 # initialize rs2
div x6, x17, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x3, 0xb0338783 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x167c4f86 # initialize rs1
li x2, 0x5f5e45ec # initialize rs2
div x3, x18, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x28, 0xd3907d2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ed31610 # initialize rs1
li x29, 0x6ab406bf # initialize rs2
div x28, x19, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x2, 0x80cbbe75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa00f7213 # initialize rs1
li x24, 0x13c9be9a # initialize rs2
div x2, x20, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x20, 0x7848d623 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa499821e # initialize rs1
li x10, 0xfb009ad2 # initialize rs2
div x20, x21, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x15, 0x4a1fea2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xae9cd760 # initialize rs1
li x18, 0xb0e6d780 # initialize rs2
div x15, x22, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x31, 0x20234549 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe06726c0 # initialize rs1
li x21, 0x73687dde # initialize rs2
div x31, x23, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x3, 0x05dfa5f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf52a7cd5 # initialize rs1
li x27, 0x0ab61cb4 # initialize rs2
div x3, x24, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x10, 0x6c47526e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x50cdc409 # initialize rs1
li x13, 0x47d8c47b # initialize rs2
div x10, x25, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x22, 0x30bbb078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4ca4aa39 # initialize rs1
li x24, 0xd9c3f04c # initialize rs2
div x22, x26, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x26, 0x2df520f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x01cc5ea4 # initialize rs1
li x4, 0xaa2540ca # initialize rs2
div x26, x27, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x30, 0xd79d0bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x745b6784 # initialize rs1
li x13, 0x4ad0e57f # initialize rs2
div x30, x28, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x15, 0x8bb4b2e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc72d932a # initialize rs1
li x8, 0x70351e0e # initialize rs2
div x15, x29, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x22, 0xe3250f54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb9ec0cb3 # initialize rs1
li x19, 0x7d1ddc72 # initialize rs2
div x22, x30, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x19, 0x581fe333 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0071c26f # initialize rs1
li x1, 0xff0ad905 # initialize rs2
div x19, x31, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x22, 0x5bd478c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9c292006 # initialize rs1
li x0, 0x772a3ae6 # initialize rs2
div x22, x19, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x24, 0xc6843528 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe8ab49ae # initialize rs1
li x1, 0x9ea6b2c4 # initialize rs2
div x24, x13, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x20, 0x7543eb17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2773c1e5 # initialize rs1
li x2, 0x86cf2007 # initialize rs2
div x20, x1, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x25, 0xeeb2c844 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x97abb85c # initialize rs1
li x3, 0x2f962a50 # initialize rs2
div x25, x22, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x23, 0x20e79f8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc704d541 # initialize rs1
li x4, 0x5ae16fb5 # initialize rs2
div x23, x2, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x7, 0x2a4cb83b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2dd13895 # initialize rs1
li x5, 0xbb842e6f # initialize rs2
div x7, x30, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x18, 0xa0de8559 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8eb2f893 # initialize rs1
li x6, 0xa336aa25 # initialize rs2
div x18, x8, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x5, 0xca864d13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xbb1892d7 # initialize rs1
li x7, 0x3756d589 # initialize rs2
div x5, x30, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x9, 0xae7640cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa09074c4 # initialize rs1
li x8, 0x2dbc45cf # initialize rs2
div x9, x25, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0x9dfc8c79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb6b8f929 # initialize rs1
li x9, 0xd9f21c4b # initialize rs2
div x14, x18, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x5f981ea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x11ef826e # initialize rs1
li x10, 0x33e40d95 # initialize rs2
div x5, x9, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x3, 0xca3a484a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8492bf31 # initialize rs1
li x11, 0x359fa07d # initialize rs2
div x3, x23, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x22, 0x586f639a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1d49da00 # initialize rs1
li x12, 0xcaabf279 # initialize rs2
div x22, x28, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0x9657fec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x49b2b714 # initialize rs1
li x13, 0x9180d182 # initialize rs2
div x11, x12, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x15, 0xec2a9e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf307326f # initialize rs1
li x14, 0x361b2c77 # initialize rs2
div x15, x6, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0xd78e5320 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe213efc6 # initialize rs1
li x15, 0x6a65f16c # initialize rs2
div x30, x5, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x22, 0xe69cd59e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x31758c86 # initialize rs1
li x16, 0x8b184e6c # initialize rs2
div x22, x28, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x13, 0x12ba04a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4583e9ff # initialize rs1
li x17, 0xa1ff43ed # initialize rs2
div x13, x12, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x13, 0x59275146 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0090a0e3 # initialize rs1
li x18, 0xa2f20f5f # initialize rs2
div x13, x27, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x28, 0x4d5d74d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x71cb2f59 # initialize rs1
li x19, 0x27739185 # initialize rs2
div x28, x3, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x6, 0x6a69c855 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x72d78cf9 # initialize rs1
li x20, 0x2cb4b195 # initialize rs2
div x6, x8, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0x642d47bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x30e47907 # initialize rs1
li x21, 0x7a912a38 # initialize rs2
div x2, x7, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x20, 0x4e9bd6ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8ce5ae1b # initialize rs1
li x22, 0x6d3af4c0 # initialize rs2
div x20, x11, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x2, 0x0862716a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2cb3943c # initialize rs1
li x23, 0x0b30a8f7 # initialize rs2
div x2, x19, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x25, 0x4600eeb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8c3bfb02 # initialize rs1
li x24, 0xc29ca574 # initialize rs2
div x25, x22, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x6, 0xaadf21a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xff4cca6b # initialize rs1
li x25, 0xa83163fd # initialize rs2
div x6, x12, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x24, 0xfe81671d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb785f0c6 # initialize rs1
li x26, 0xaae8ee19 # initialize rs2
div x24, x6, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x1, 0x2b616c45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5040a528 # initialize rs1
li x27, 0xf7993c43 # initialize rs2
div x1, x17, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x24, 0xc1bf0e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbf2183fa # initialize rs1
li x28, 0x29201349 # initialize rs2
div x24, x4, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x9, 0x4d7311a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xcb89dda4 # initialize rs1
li x29, 0xdc149e6c # initialize rs2
div x9, x28, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x18, 0xac7b79d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x24998440 # initialize rs1
li x30, 0xd18c725e # initialize rs2
div x18, x6, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x28, 0xc0df3423 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x735c4446 # initialize rs1
li x31, 0x04e3bc46 # initialize rs2
div x28, x3, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xc7ff2429)
li x27, 0x48f00d7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x48f00d7f # initialize rs1
li x0, 0x52c0c799 # initialize rs2
div x27, x17, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x7cb8b7e9)
li x7, 0x7cb8b7e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7cb8b7e9 # initialize rs1
li x5, 0x7cb8b7e9 # initialize rs2
div x7, x0, x5 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x4899539b)
li x9, 0x3b80901a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x4899539b # initialize rs1
li x14, 0x4899539b # initialize rs2
div x9, x28, x14 # perform operation

# Testcase cmp_gpr_hazard raw test
div x31, x9, x12 # perform first operation
div x25, x31, x26 # perform second operation

# Testcase cmp_gpr_hazard raw test
div x12, x14, x25 # perform first operation
div x16, x27, x12 # perform second operation

# Testcase cmp_gpr_hazard waw test
div x2, x15, x9 # perform first operation
div x2, x6, x28 # perform second operation

# Testcase cmp_gpr_hazard waw test
div x16, x5, x17 # perform first operation
div x16, x23, x26 # perform second operation

# Testcase cmp_gpr_hazard war test
div x12, x16, x23 # perform first operation
div x16, x20, x23 # perform second operation

# Testcase cmp_gpr_hazard war test
div x14, x21, x16 # perform first operation
div x16, x24, x16 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x6, 0xd5b6e1b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x0, 0xd78b2342 # initialize rs2
div x6, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x13, 0xff55f633 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
div x13, x24, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x7, 0xa83a1fb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x5, 0x00000000 # initialize rs2
div x7, x28, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x3134d649 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs1
li x0, 0xdf13e76e # initialize rs2
div x30, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x23, 0x8938690d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
div x23, x26, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x8, 0x13d4a996 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x21, 0x00000001 # initialize rs2
div x8, x28, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0xf6a61f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002 # initialize rs1
li x0, 0x7cc339c4 # initialize rs2
div x16, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0xe18f19e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x7, 0x00000002 # initialize rs2
div x16, x24, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0xd48e1937 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x14, 0x00000002 # initialize rs2
div x31, x18, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x2, 0xc84a0b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000000 # initialize rs1
li x0, 0xeb5a33f5 # initialize rs2
div x2, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x14, 0x35e2443b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x80000000 # initialize rs1
li x28, 0x80000000 # initialize rs2
div x14, x25, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x21, 0xf4f2c427 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
div x21, x2, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x21, 0x91707f18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000001 # initialize rs1
li x0, 0xc07a94af # initialize rs2
div x21, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x9, 0xd8f1293e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
li x13, 0x80000001 # initialize rs2
div x9, x4, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x19, 0x7db15b4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
div x19, x30, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x7, 0x6d8a64a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffff # initialize rs1
li x0, 0xfac0d600 # initialize rs2
div x7, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x31, 0xd5ce5cb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
li x27, 0x7fffffff # initialize rs2
div x31, x21, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x1, 0x6c7898a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
div x1, x22, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x5, 0x796b65c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffe # initialize rs1
li x0, 0xe1de4bff # initialize rs2
div x5, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x19, 0x3a61e772 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x3, 0x7ffffffe # initialize rs2
div x19, x23, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x24, 0x96c92ed1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
li x9, 0x7ffffffe # initialize rs2
div x24, x10, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x16, 0xf6c8727f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x0, 0x60249f51 # initialize rs2
div x16, x7, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x12, 0xde526388 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
div x12, x28, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x22, 0x0fae4582 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
li x11, 0xffffffff # initialize rs2
div x22, x19, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x27, 0x5b874e1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffe # initialize rs1
li x0, 0xf57837d1 # initialize rs2
div x27, x17, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x26, 0x614e6770 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
div x26, x1, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x23, 0xfe14fec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x3, 0xfffffffe # initialize rs2
div x23, x8, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x21, 0x00d5e76a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x0, 0xc474ce69 # initialize rs2
div x21, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x11, 0x6980a747 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc8877 # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
div x11, x25, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x16, 0xa9c7eca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
div x16, x23, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x2, 0x356725aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x0, 0xd267a331 # initialize rs2
div x2, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x5, 0x2df7c155 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
div x5, x21, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x13, 0x1e3dd8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
div x13, x14, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x26, 0x16858ef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x0, 0xd73ab71a # initialize rs2
div x26, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x26, 0xc6d5c6be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x55555555 # initialize rs1
li x9, 0x55555555 # initialize rs2
div x26, x2, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x29, 0xd7cd8413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
li x20, 0x55555555 # initialize rs2
div x29, x24, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x2f232d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize rs1
li x17, 0x2947b57c # initialize rs2
div x14, x9, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0xeb281315 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001 # initialize rs1
li x6, 0x9494606f # initialize rs2
div x21, x1, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0xac5ac854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x21, 0x4348dd01 # initialize rs2
div x15, x24, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x25, 0xdf7b4553 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
li x13, 0xd0905866 # initialize rs2
div x25, x21, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0xf18bc72a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000001 # initialize rs1
li x20, 0x7158cdaf # initialize rs2
div x13, x29, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x1, 0x3dfd732f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffff # initialize rs1
li x20, 0xe3710ade # initialize rs2
div x1, x10, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x28, 0x1e04518b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x3, 0x3525545b # initialize rs2
div x28, x19, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x57f6c38a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x10, 0x6d96d58f # initialize rs2
div x7, x23, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x5, 0x1d9c4f74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffe # initialize rs1
li x1, 0x2c0d3490 # initialize rs2
div x5, x19, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x9, 0xfc1e4dc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x20, 0x559307ef # initialize rs2
div x9, x22, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x2, 0xcd70f336 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaa # initialize rs1
li x6, 0x36cf9739 # initialize rs2
div x2, x9, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x11, 0x4bca170e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x23, 0x7ccde768 # initialize rs2
div x11, x17, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x4, 0x17581e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8181f2a9 # initialize rs1
li x2, 0x00000000 # initialize rs2
div x4, x16, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x17, 0xf1938f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2d8f682f # initialize rs1
li x14, 0x00000001 # initialize rs2
div x17, x25, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x5, 0x92b45d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xda72135d # initialize rs1
li x4, 0x00000002 # initialize rs2
div x5, x19, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x2, 0x910c65c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3d6a089d # initialize rs1
li x20, 0x80000000 # initialize rs2
div x2, x17, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x7, 0xb9b43cf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8c0ff55a # initialize rs1
li x16, 0x80000001 # initialize rs2
div x7, x11, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x26, 0xe9e0549b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x79097a71 # initialize rs1
li x21, 0x7fffffff # initialize rs2
div x26, x19, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x17, 0x26248601 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfbee35c5 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
div x17, x31, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0xb872662a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x688ef01b # initialize rs1
li x1, 0xffffffff # initialize rs2
div x16, x25, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x13, 0x5f5d1cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x927a2201 # initialize rs1
li x10, 0xfffffffe # initialize rs2
div x13, x9, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x8, 0x5e488655 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5ffe0298 # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
div x8, x7, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x14, 0xedb8909f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x607439d2 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
div x14, x25, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x31, 0x71599eec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1d4d3538 # initialize rs1
li x2, 0x55555555 # initialize rs2
div x31, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x22, 0xf323cfdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000 # initialize rs1
li x5, 0x00000000 # initialize rs2
div x22, x18, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x13, 0xb80e7d6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x23, 0x00000001 # initialize rs2
div x13, x28, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x4, 0xa7c9532a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000 # initialize rs1
li x11, 0x00000002 # initialize rs2
div x4, x2, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x17, 0x8170a45c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000 # initialize rs1
li x26, 0x80000000 # initialize rs2
div x17, x3, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x3, 0x950c26bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x29, 0x80000001 # initialize rs2
div x3, x13, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x27, 0x8a8cf96e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
li x26, 0x7fffffff # initialize rs2
div x27, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x2, 0xb959e62e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000 # initialize rs1
li x4, 0x7ffffffe # initialize rs2
div x2, x22, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x20, 0xeac6c551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize rs1
li x6, 0xffffffff # initialize rs2
div x20, x8, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x29, 0x88ecce6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000 # initialize rs1
li x1, 0xfffffffe # initialize rs2
div x29, x18, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x2, 0xfdc1bc6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000 # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
div x2, x16, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x10, 0xaf1987e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
div x10, x12, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x9, 0xfd11caae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x12, 0x55555555 # initialize rs2
div x9, x28, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x16, 0x406e601b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rs1
li x22, 0x00000000 # initialize rs2
div x16, x15, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x30, 0x640ef1b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
div x30, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x2, 0x6998938e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rs1
li x13, 0x00000002 # initialize rs2
div x2, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x23, 0x8573fa18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x4, 0x80000000 # initialize rs2
div x23, x26, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x29, 0x7b6458bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x23, 0x80000001 # initialize rs2
div x29, x20, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x27, 0xea5172ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x19, 0x7fffffff # initialize rs2
div x27, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x11, 0x024bed62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
div x11, x30, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x7, 0x8b5fdc5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x29, 0xffffffff # initialize rs2
div x7, x30, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x17, 0x6e0e1cea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs1
li x7, 0xfffffffe # initialize rs2
div x17, x13, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x27, 0x8e744f1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000001 # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
div x27, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x23, 0x115777f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
div x23, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x12, 0x568fb389 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs1
li x16, 0x55555555 # initialize rs2
div x12, x28, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x18, 0x388367b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x15, 0x00000000 # initialize rs2
div x18, x19, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x12, 0x50b84533 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs1
li x14, 0x00000001 # initialize rs2
div x12, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0x8a2c94be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000002 # initialize rs1
li x26, 0x00000002 # initialize rs2
div x23, x22, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x11, 0xe18c0fab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x6, 0x80000000 # initialize rs2
div x11, x31, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x20, 0x86ffd423 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x22, 0x80000001 # initialize rs2
div x20, x31, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x12, 0x07ed66cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000002 # initialize rs1
li x19, 0x7fffffff # initialize rs2
div x12, x29, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x31, 0xa53bd2a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000002 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
div x31, x18, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x24, 0x9faf02c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs1
li x26, 0xffffffff # initialize rs2
div x24, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x5, 0x1f8ed3c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000002 # initialize rs1
li x1, 0xfffffffe # initialize rs2
div x5, x30, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x23, 0x72d624fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000002 # initialize rs1
li x8, 0x5bbc8877 # initialize rs2
div x23, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x19, 0x94afe7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
div x19, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x15, 0x0d67513b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x23, 0x55555555 # initialize rs2
div x15, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x21, 0x5ad6ea89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x7, 0x00000000 # initialize rs2
div x21, x4, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x8, 0xbb87a25d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
li x11, 0x00000001 # initialize rs2
div x8, x10, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x14, 0x8accac0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs1
li x27, 0x00000002 # initialize rs2
div x14, x24, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x6, 0xdc14ee7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x10, 0x80000000 # initialize rs2
div x6, x4, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x30, 0xed2b88c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000000 # initialize rs1
li x11, 0x80000001 # initialize rs2
div x30, x28, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x15, 0x7b885f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x24, 0x7fffffff # initialize rs2
div x15, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x4, 0x61dff236 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
div x4, x10, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x2, 0xa60c4356 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000000 # initialize rs1
li x20, 0xffffffff # initialize rs2
div x2, x18, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x4, 0x9a450fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
li x27, 0xfffffffe # initialize rs2
div x4, x21, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x11, 0xda8b1532 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
div x11, x1, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x11, 0x4a50858c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
div x11, x30, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x30, 0x0a97c5d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000000 # initialize rs1
li x13, 0x55555555 # initialize rs2
div x30, x18, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x9, 0xf4e6b89d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
li x2, 0x00000000 # initialize rs2
div x9, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x1, 0x5ca158fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
div x1, x20, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x31, 0x42fea32c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000001 # initialize rs1
li x24, 0x00000002 # initialize rs2
div x31, x2, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x5, 0x879a1410 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize rs1
li x26, 0x80000000 # initialize rs2
div x5, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x26, 0x938b5c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
div x26, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x17, 0x39df053f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x11, 0x7fffffff # initialize rs2
div x17, x15, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x1, 0x1a671640 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000001 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
div x1, x10, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x28, 0x3c2ddf7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
li x5, 0xffffffff # initialize rs2
div x28, x12, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x1, 0x0730ef4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000001 # initialize rs1
li x16, 0xfffffffe # initialize rs2
div x1, x7, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x29, 0x1646bdd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
div x29, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x30, 0xe27e796f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000001 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
div x30, x2, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x5, 0x74ff0c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000001 # initialize rs1
li x14, 0x55555555 # initialize rs2
div x5, x3, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x10, 0xbc04e078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffff # initialize rs1
li x24, 0x00000000 # initialize rs2
div x10, x25, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x9, 0x1923c162 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
li x23, 0x00000001 # initialize rs2
div x9, x1, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x7, 0xae752e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffff # initialize rs1
li x3, 0x00000002 # initialize rs2
div x7, x8, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x31, 0x5d92a2a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffff # initialize rs1
li x3, 0x80000000 # initialize rs2
div x31, x9, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x20, 0x0ce7e5a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x3, 0x80000001 # initialize rs2
div x20, x27, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x21, 0x5a76990e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
div x21, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x14, 0xa9fc0157 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
li x30, 0x7ffffffe # initialize rs2
div x14, x4, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x17, 0x60a250e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
li x30, 0xffffffff # initialize rs2
div x17, x31, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x26, 0xfa29de50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
li x1, 0xfffffffe # initialize rs2
div x26, x31, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x27, 0x34283c24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
div x27, x15, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x12, 0xb2d35c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffff # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
div x12, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x1, 0x59cf7bb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffff # initialize rs1
li x15, 0x55555555 # initialize rs2
div x1, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x21, 0x80df3a94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x27, 0x00000000 # initialize rs2
div x21, x19, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x15, 0xa3b90764 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffe # initialize rs1
li x19, 0x00000001 # initialize rs2
div x15, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x17, 0x29ce95a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x22, 0x00000002 # initialize rs2
div x17, x23, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x17, 0x836f4532 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
li x13, 0x80000000 # initialize rs2
div x17, x27, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x19, 0xd5dac690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
li x30, 0x80000001 # initialize rs2
div x19, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x15, 0x88f41aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffe # initialize rs1
li x30, 0x7fffffff # initialize rs2
div x15, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x24, 0xf61d3ce1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize rs1
li x17, 0x7ffffffe # initialize rs2
div x24, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x8, 0xd6724578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize rs1
li x17, 0xffffffff # initialize rs2
div x8, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x4, 0xde0b68d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
div x4, x14, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x1, 0x72bff429 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
div x1, x20, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x14, 0xf4150253 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffe # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
div x14, x30, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x17, 0x9d59d9bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x3, 0x55555555 # initialize rs2
div x17, x20, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x13, 0xf3d1ec6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
li x16, 0x00000000 # initialize rs2
div x13, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x29, 0x172ed6df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x12, 0x00000001 # initialize rs2
div x29, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x24, 0xd4f2ff62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x4, 0x00000002 # initialize rs2
div x24, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x12, 0x68b1604b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x4, 0x80000000 # initialize rs2
div x12, x9, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x26, 0xe80d8e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
div x26, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x13, 0xebb1cd36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x14, 0x7fffffff # initialize rs2
div x13, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x30, 0x1fab6443 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
div x30, x7, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x14, 0xdd132f43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
div x14, x9, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0x9b31031e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x1, 0xfffffffe # initialize rs2
div x28, x14, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x17, 0x70135435 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
div x17, x23, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x23, 0x945b9b3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
div x23, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x3, 0x469b2c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x8, 0x55555555 # initialize rs2
div x3, x23, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x4, 0xeeaa03e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x12, 0x00000000 # initialize rs2
div x4, x21, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x29, 0x4c6ae0ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs1
li x9, 0x00000001 # initialize rs2
div x29, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x10, 0xf1644195 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe # initialize rs1
li x18, 0x00000002 # initialize rs2
div x10, x25, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x28, 0x70b95c61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x12, 0x80000000 # initialize rs2
div x28, x6, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x2, 0xe4570e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x20, 0x80000001 # initialize rs2
div x2, x6, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x19, 0xfd23fb7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffe # initialize rs1
li x29, 0x7fffffff # initialize rs2
div x19, x30, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x19, 0x866752c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
div x19, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x22, 0x57931e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffe # initialize rs1
li x29, 0xffffffff # initialize rs2
div x22, x19, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x31, 0x352f5d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
div x31, x28, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x27, 0xa8f7b55e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
div x27, x21, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x18, 0x5a9dd756 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
div x18, x15, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x2, 0xd16e66d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffe # initialize rs1
li x13, 0x55555555 # initialize rs2
div x2, x7, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x5, 0xfb831f59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
li x4, 0x00000000 # initialize rs2
div x5, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x20, 0x39165075 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc8877 # initialize rs1
li x7, 0x00000001 # initialize rs2
div x20, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x31, 0x4ec7eec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc8877 # initialize rs1
li x3, 0x00000002 # initialize rs2
div x31, x28, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x16, 0xff75863f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x6, 0x80000000 # initialize rs2
div x16, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x31, 0x034db15e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc8877 # initialize rs1
li x4, 0x80000001 # initialize rs2
div x31, x6, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x8, 0x2dc87f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc8877 # initialize rs1
li x6, 0x7fffffff # initialize rs2
div x8, x5, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x21, 0xa76ed326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
div x21, x14, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x1, 0x283bdd87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x13, 0xffffffff # initialize rs2
div x1, x7, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x19, 0x15630ea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x23, 0xfffffffe # initialize rs2
div x19, x7, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x11, 0x4d02b37f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc8877 # initialize rs1
li x30, 0x5bbc8877 # initialize rs2
div x11, x16, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x8, 0x584063f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc8877 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
div x8, x10, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x14, 0x43e036be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
li x23, 0x55555555 # initialize rs2
div x14, x27, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x24, 0xa704a6a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaa # initialize rs1
li x8, 0x00000000 # initialize rs2
div x24, x25, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x14, 0x101cbc5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x18, 0x00000001 # initialize rs2
div x14, x26, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x31, 0x5f80e4e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
li x15, 0x00000002 # initialize rs2
div x31, x27, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x12, 0xa49bd321 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaa # initialize rs1
li x3, 0x80000000 # initialize rs2
div x12, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x16, 0x1f14d962 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
li x20, 0x80000001 # initialize rs2
div x16, x13, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x30, 0xc98c75ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaa # initialize rs1
li x19, 0x7fffffff # initialize rs2
div x30, x16, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x27, 0xa5e5878c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs1
li x29, 0x7ffffffe # initialize rs2
div x27, x12, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x24, 0x86cb9b41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaa # initialize rs1
li x21, 0xffffffff # initialize rs2
div x24, x28, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x27, 0xacabf4b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x2, 0xfffffffe # initialize rs2
div x27, x14, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x25, 0xbebf88c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
div x25, x26, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x5, 0x9120f13a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
div x5, x26, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x25, 0xcd26f704 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
li x9, 0x55555555 # initialize rs2
div x25, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x1, 0x1bb08e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x55555555 # initialize rs1
li x17, 0x00000000 # initialize rs2
div x1, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x24, 0x45ea097e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x55555555 # initialize rs1
li x22, 0x00000001 # initialize rs2
div x24, x5, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x27, 0xd5c73e03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x55555555 # initialize rs1
li x1, 0x00000002 # initialize rs2
div x27, x2, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x20, 0x7acfdcb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x55555555 # initialize rs1
li x14, 0x80000000 # initialize rs2
div x20, x12, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x9, 0xa47d2d59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x10, 0x80000001 # initialize rs2
div x9, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x6, 0xda97efa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x10, 0x7fffffff # initialize rs2
div x6, x28, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x12, 0x2f1ce62c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
div x12, x4, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x1, 0x70f40913 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x55555555 # initialize rs1
li x15, 0xffffffff # initialize rs2
div x1, x20, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x22, 0x25f740b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555 # initialize rs1
li x11, 0xfffffffe # initialize rs2
div x22, x13, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x27, 0xf391afde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
div x27, x9, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x27, 0xa5f937fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
div x27, x17, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x18, 0x2f0d157f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
div x18, x17, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xab4f3594 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x03a3c7fc # initialize rs1
li x8, 0x3ba0d06c # initialize rs2
div x0, x0, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xea5da52d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc6ac08da # initialize rs1
li x7, 0xed4f9bc4 # initialize rs2
div x1, x1, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x346b9c2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x52868605 # initialize rs1
li x15, 0xbb4e83f5 # initialize rs2
div x2, x2, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x7cacf05f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x382331be # initialize rs1
li x31, 0x3587bb07 # initialize rs2
div x3, x3, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x73044e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0bc95633 # initialize rs1
li x23, 0xcafdd250 # initialize rs2
div x4, x4, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x509932f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd443ad19 # initialize rs1
li x25, 0x9a8f091f # initialize rs2
div x5, x5, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xd5da5455 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xac7136da # initialize rs1
li x7, 0x023a72f8 # initialize rs2
div x6, x6, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xe454a67f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc12eaf2f # initialize rs1
li x10, 0x5bc67d71 # initialize rs2
div x7, x7, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x611cb3df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe099507f # initialize rs1
li x17, 0x2034079e # initialize rs2
div x8, x8, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xde9cec67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7f42c5c6 # initialize rs1
li x19, 0xed92a622 # initialize rs2
div x9, x9, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x75e8b30a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd68f4067 # initialize rs1
li x27, 0x7556f3c6 # initialize rs2
div x10, x10, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x93b35205 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xee9fc0b7 # initialize rs1
li x5, 0x7632914a # initialize rs2
div x11, x11, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x2b609f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe963be49 # initialize rs1
li x27, 0x61349cc3 # initialize rs2
div x12, x12, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1151c46e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x588ee796 # initialize rs1
li x2, 0x3953abe3 # initialize rs2
div x13, x13, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x48bae6cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa6b29297 # initialize rs1
li x2, 0xe4cbc9e9 # initialize rs2
div x14, x14, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd1ba3490 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2561fca6 # initialize rs1
li x24, 0x5c7c9498 # initialize rs2
div x15, x15, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xda7c477c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x359b9c2e # initialize rs1
li x23, 0xdeb84cd3 # initialize rs2
div x16, x16, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x00dd4585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xcb6dcd21 # initialize rs1
li x10, 0xb03d9a42 # initialize rs2
div x17, x17, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x4773bdf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x52e04084 # initialize rs1
li x23, 0x1f1809d3 # initialize rs2
div x18, x18, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xffca4626 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8b8c56f9 # initialize rs1
li x8, 0x53f9e272 # initialize rs2
div x19, x19, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x4ff1af7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb775124e # initialize rs1
li x23, 0x5878656e # initialize rs2
div x20, x20, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xa7d57684 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8b1c6c93 # initialize rs1
li x4, 0x36d749c5 # initialize rs2
div x21, x21, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x5e529e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x459951df # initialize rs1
li x16, 0x522c7867 # initialize rs2
div x22, x22, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd593bed0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x56b94ccb # initialize rs1
li x8, 0xaee15e1b # initialize rs2
div x23, x23, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x5fbe855b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8d93b52b # initialize rs1
li x10, 0x743748d8 # initialize rs2
div x24, x24, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x3ecf8346 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa64f8903 # initialize rs1
li x15, 0xd22acfdb # initialize rs2
div x25, x25, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x8779d30b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4de7c5e0 # initialize rs1
li x14, 0x3b8d1de6 # initialize rs2
div x26, x26, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x0bac6706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xee0b8e00 # initialize rs1
li x30, 0x36f49321 # initialize rs2
div x27, x27, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xe87d4765 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7343d8b1 # initialize rs1
li x12, 0xb001f965 # initialize rs2
div x28, x28, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1e53aafc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe15b2cc8 # initialize rs1
li x1, 0xf46e9056 # initialize rs2
div x29, x29, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x3589359c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x430cc918 # initialize rs1
li x6, 0xa76bc30c # initialize rs2
div x30, x30, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3f5d3f11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x31922ffc # initialize rs1
li x17, 0xf757b495 # initialize rs2
div x31, x31, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x4daba62f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa77223f1 # initialize rs1
li x0, 0x7298e7c0 # initialize rs2
div x0, x9, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xa8a7db74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xbfad0cb9 # initialize rs1
li x1, 0xe64b468e # initialize rs2
div x1, x11, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x6bfaf0cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5c31f7ec # initialize rs1
li x2, 0xa305e5fe # initialize rs2
div x2, x29, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x14134887 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x69cc19a6 # initialize rs1
li x3, 0x31a8eeca # initialize rs2
div x3, x15, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x8bd18d84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1c5ce384 # initialize rs1
li x4, 0xbe1f9937 # initialize rs2
div x4, x4, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x24b0c8fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x83e5a9e6 # initialize rs1
li x5, 0x915e8a39 # initialize rs2
div x5, x1, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x46bcae5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe7b74b9a # initialize rs1
li x6, 0x0cb25ac3 # initialize rs2
div x6, x1, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x36096a3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa4a17ff9 # initialize rs1
li x7, 0xbba26556 # initialize rs2
div x7, x16, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x553775df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x614e0108 # initialize rs1
li x8, 0xf123d102 # initialize rs2
div x8, x17, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xf37efea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1903ac83 # initialize rs1
li x9, 0x4e60b27a # initialize rs2
div x9, x1, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x32fbac2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9a9d8d8d # initialize rs1
li x10, 0xe53f149e # initialize rs2
div x10, x28, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x13f83b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x26ec377a # initialize rs1
li x11, 0x85435b92 # initialize rs2
div x11, x25, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x2863412c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa26b4075 # initialize rs1
li x12, 0x77d150c1 # initialize rs2
div x12, x25, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x8037c2b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x176ab2dd # initialize rs1
li x13, 0x2f29335d # initialize rs2
div x13, x7, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x3c9d5c1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe9560086 # initialize rs1
li x14, 0x22efb65a # initialize rs2
div x14, x22, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xba280738 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8291aa80 # initialize rs1
li x15, 0xf079ef03 # initialize rs2
div x15, x27, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xb5d0031d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf6bf1962 # initialize rs1
li x16, 0xcbe62786 # initialize rs2
div x16, x23, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xe7bc1ed8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x07f1966c # initialize rs1
li x17, 0xb6570223 # initialize rs2
div x17, x7, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xff6145ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5639274d # initialize rs1
li x18, 0xb4b99c24 # initialize rs2
div x18, x18, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x2e8b1588 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x1fe1da74 # initialize rs1
li x19, 0xceee0e3c # initialize rs2
div x19, x29, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x5070a682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x57b0d155 # initialize rs1
li x20, 0xa62d0c1b # initialize rs2
div x20, x12, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xdf49e8c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x625c18c2 # initialize rs1
li x21, 0x54eecf48 # initialize rs2
div x21, x19, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xfa109e8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x95a8da76 # initialize rs1
li x22, 0x5be9ab82 # initialize rs2
div x22, x4, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x5cc8486e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xba5efafd # initialize rs1
li x23, 0xfa860530 # initialize rs2
div x23, x27, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xc45ef159 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x59cfb408 # initialize rs1
li x24, 0xe694e87c # initialize rs2
div x24, x21, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x01666108 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x94b2c453 # initialize rs1
li x25, 0x691b387b # initialize rs2
div x25, x12, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x004ef8a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc3282ebe # initialize rs1
li x26, 0x2198f94d # initialize rs2
div x26, x23, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xf1a0e637 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x30b7248a # initialize rs1
li x27, 0x6327add4 # initialize rs2
div x27, x15, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xf54d011b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3869b7fb # initialize rs1
li x28, 0x13161e92 # initialize rs2
div x28, x26, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x214bea60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8b1a9386 # initialize rs1
li x29, 0xa3e3f494 # initialize rs2
div x29, x15, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x26362156 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xff0dcd76 # initialize rs1
li x30, 0xc1500fc5 # initialize rs2
div x30, x7, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xced7be5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x79b513eb # initialize rs1
li x31, 0x82801e06 # initialize rs2
div x31, x25, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x0447ab98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6f328a87 # initialize rs1
li x0, 0x876abf9c # initialize rs2
div x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xf48c9175 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x30010108 # initialize rs1
li x1, 0xc6c592cb # initialize rs2
div x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x6ffc3329 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaebab0 # initialize rs1
li x2, 0xf86fd569 # initialize rs2
div x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x41b20386 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xdee171d1 # initialize rs1
li x3, 0x6b5c5a81 # initialize rs2
div x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x8a17b773 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb381a14b # initialize rs1
li x4, 0x72217e57 # initialize rs2
div x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x834423d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6dee259d # initialize rs1
li x5, 0x616abced # initialize rs2
div x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x18f688bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xdc8d19f5 # initialize rs1
li x6, 0x36393c54 # initialize rs2
div x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0xc609c654 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2dbda869 # initialize rs1
li x7, 0xd64e5286 # initialize rs2
div x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xc70eb8db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcb1b185e # initialize rs1
li x8, 0xcce9712d # initialize rs2
div x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x00d2b20a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x32eeef90 # initialize rs1
li x9, 0x5ce833ef # initialize rs2
div x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x7307bbd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x27ce543c # initialize rs1
li x10, 0x8d6b8360 # initialize rs2
div x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xc94d2ad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3934e744 # initialize rs1
li x11, 0xd35370d3 # initialize rs2
div x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x37934cc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x87231dae # initialize rs1
li x12, 0xfee467bd # initialize rs2
div x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x60e54229 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf896f99a # initialize rs1
li x13, 0xb6890d95 # initialize rs2
div x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x6b38a35f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x668caca3 # initialize rs1
li x14, 0x23b56d82 # initialize rs2
div x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x59734b34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2357dc93 # initialize rs1
li x15, 0x5b7d1129 # initialize rs2
div x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x707e9677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe098e4f1 # initialize rs1
li x16, 0x87b6b92f # initialize rs2
div x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xbdadff87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd38152d1 # initialize rs1
li x17, 0x2753d7be # initialize rs2
div x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xc082c25a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa9c2b8c3 # initialize rs1
li x18, 0x61e4ccc3 # initialize rs2
div x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xe642b0bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ddbf1a0 # initialize rs1
li x19, 0x6b067a15 # initialize rs2
div x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x7bdd12eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xff504499 # initialize rs1
li x20, 0x45133915 # initialize rs2
div x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x429dd82b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6d6e3a7d # initialize rs1
li x21, 0x8350331a # initialize rs2
div x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xf5789deb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1ec7c01e # initialize rs1
li x22, 0x916efb85 # initialize rs2
div x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x5baafe32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x827a56c5 # initialize rs1
li x23, 0x01644ba8 # initialize rs2
div x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xfb48ce7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0bcd6c00 # initialize rs1
li x24, 0xdb73aeba # initialize rs2
div x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x1489d752 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2a2fb931 # initialize rs1
li x25, 0xc9f5b10f # initialize rs2
div x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xe83da211 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf6efdd6d # initialize rs1
li x26, 0x57692ebc # initialize rs2
div x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x5b7c79be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4d3a8833 # initialize rs1
li x27, 0x1b36ad18 # initialize rs2
div x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xb74417b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6873e0c5 # initialize rs1
li x28, 0xea072e2f # initialize rs2
div x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xb3acdb09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x679a864d # initialize rs1
li x29, 0x7530b27c # initialize rs2
div x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xe1a78dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8ca7e44c # initialize rs1
li x30, 0xc66b4a3f # initialize rs2
div x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x67d18e20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x13c302d3 # initialize rs1
li x31, 0xa5e1d57e # initialize rs2
div x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x22, 0xb5dd17fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2d96ab1a # initialize rs1
li x0, 0x7c444bac # initialize rs2
div x22, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x13, 0x13070630 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x564c41fb # initialize rs1
li x1, 0x20969975 # initialize rs2
div x13, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x26, 0xcc3c1cfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5d24c238 # initialize rs1
li x2, 0x4958bbca # initialize rs2
div x26, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x2, 0xe5ddf69e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1eea78c5 # initialize rs1
li x3, 0x349a9a6b # initialize rs2
div x2, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x8, 0x8a4f855f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe8d74316 # initialize rs1
li x4, 0x760669fe # initialize rs2
div x8, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x17, 0x6c7b9f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x827a0688 # initialize rs1
li x5, 0xb04d9a0f # initialize rs2
div x17, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x18, 0xec63fb5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa307c286 # initialize rs1
li x6, 0xa8098490 # initialize rs2
div x18, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x7, 0xa31aee58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x85c84e5c # initialize rs1
li x7, 0x53d8726c # initialize rs2
div x7, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x5, 0x2fa9e64f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xae86b7f0 # initialize rs1
li x8, 0xb64cc6af # initialize rs2
div x5, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xbd6fb826 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x14911af0 # initialize rs1
li x9, 0xf90ffc3e # initialize rs2
div x9, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x26, 0x294fc3a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0a8219ce # initialize rs1
li x10, 0x83aa16d5 # initialize rs2
div x26, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x24, 0xfdf1fe87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5d6ef242 # initialize rs1
li x11, 0xafc123ef # initialize rs2
div x24, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x19, 0xb99b3ae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0d1a2ab5 # initialize rs1
li x12, 0x4d86eaec # initialize rs2
div x19, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x4, 0x7b49a244 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc8d01f7a # initialize rs1
li x13, 0x4bcbe9e9 # initialize rs2
div x4, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x11, 0xf1c00fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x29f5e806 # initialize rs1
li x14, 0x5336a7d1 # initialize rs2
div x11, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x16, 0x94155f04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6c45adb7 # initialize rs1
li x15, 0x9bddd15c # initialize rs2
div x16, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x28, 0xd1b1ce3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x705b7a66 # initialize rs1
li x16, 0x33216be3 # initialize rs2
div x28, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x7, 0xc2774680 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe3daef4d # initialize rs1
li x17, 0x3959c183 # initialize rs2
div x7, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x19, 0x4c6c0300 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x54e8cf48 # initialize rs1
li x18, 0x9e0546f0 # initialize rs2
div x19, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x23, 0x3b285fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf5b992eb # initialize rs1
li x19, 0x332fac1a # initialize rs2
div x23, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x31, 0xd9cd0fbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd2103446 # initialize rs1
li x20, 0x80584046 # initialize rs2
div x31, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x13, 0x9e646761 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc2c6703b # initialize rs1
li x21, 0xd68f3492 # initialize rs2
div x13, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x13, 0x0407ab03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0eb35ca8 # initialize rs1
li x22, 0x349eb097 # initialize rs2
div x13, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x13, 0x2f67f991 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x891f35bc # initialize rs1
li x23, 0xb45875ca # initialize rs2
div x13, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x28, 0xf6f5c133 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb5a8fc5a # initialize rs1
li x24, 0x9957d75a # initialize rs2
div x28, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x12, 0xa1b0afd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xed3e985b # initialize rs1
li x25, 0x6278aa22 # initialize rs2
div x12, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x18, 0x87ed2291 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x759b7e69 # initialize rs1
li x26, 0xb9031058 # initialize rs2
div x18, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x13, 0x37b2eb34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffa279a8 # initialize rs1
li x27, 0xa9be2bf6 # initialize rs2
div x13, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x17, 0x0d0b9ada # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6dbf2cb8 # initialize rs1
li x28, 0xc14c077d # initialize rs2
div x17, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x16, 0x87bcf715 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x460e331a # initialize rs1
li x29, 0x9b2bbf3c # initialize rs2
div x16, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x20, 0x32009ec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x296e2fe4 # initialize rs1
li x30, 0x85e6bf7e # initialize rs2
div x20, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x14, 0xad9a5b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x749aabab # initialize rs1
li x31, 0xc1d345e1 # initialize rs2
div x14, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x1c5f7269)
li x10, 0xb179f1d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1c5f7269 # initialize rs1
li x24, 0xf2bf76e7 # initialize rs2
div x10, x28, x24 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x1c1f728f)
li x31, 0xb9063a45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe3e08d71 # initialize rs1
li x22, 0xc3ee870a # initialize rs2
div x31, x12, x22 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x6c63a343)
li x6, 0xbbef0981 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd483b866 # initialize rs1
li x29, 0x6c63a343 # initialize rs2
div x6, x9, x29 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x7fd8bdec)
li x2, 0x6fb5534e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaa126941 # initialize rs1
li x6, 0x80274214 # initialize rs2
div x2, x19, x6 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
