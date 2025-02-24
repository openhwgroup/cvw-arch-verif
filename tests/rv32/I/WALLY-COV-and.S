///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-and.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.927763
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x3c5a74fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x62523708 # initialize rs1
li x10, 0xd58cf189 # initialize rs2
and x0, x22, x10 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xea78c8ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5394eee9 # initialize rs1
li x11, 0x150e1840 # initialize rs2
and x1, x23, x11 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x9dd3d38a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xd57ece99 # initialize rs1
li x25, 0xcca61e34 # initialize rs2
and x2, x19, x25 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x6f3742ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb5e4a3c8 # initialize rs1
li x13, 0x14accba7 # initialize rs2
and x3, x29, x13 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x21c70fd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xdb03dadf # initialize rs1
li x31, 0xa59a476c # initialize rs2
and x4, x29, x31 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xe675e7e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0bd89c73 # initialize rs1
li x5, 0x634fd76b # initialize rs2
and x5, x17, x5 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x24fd235e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf9405ecf # initialize rs1
li x14, 0x8e7a372b # initialize rs2
and x6, x21, x14 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xaaad4b0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9eabc602 # initialize rs1
li x21, 0xc2907413 # initialize rs2
and x7, x8, x21 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x379e84d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x96033638 # initialize rs1
li x8, 0x0a964cb9 # initialize rs2
and x8, x24, x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x82c7ce62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6888ddde # initialize rs1
li x17, 0x168d8bf9 # initialize rs2
and x9, x14, x17 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x48d79878 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe244aca8 # initialize rs1
li x3, 0x1b8c28f4 # initialize rs2
and x10, x2, x3 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x6a48e5b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc11bd09f # initialize rs1
li x22, 0xbc97d93a # initialize rs2
and x11, x15, x22 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x1803b6e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x842aab1f # initialize rs1
li x19, 0xe8aa5c6c # initialize rs2
and x12, x16, x19 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xcdc16eaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe17425e7 # initialize rs1
li x5, 0x921a3d1c # initialize rs2
and x13, x16, x5 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x4cb0ffb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdedea220 # initialize rs1
li x11, 0xb1de9771 # initialize rs2
and x14, x9, x11 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x20b293a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb46898d3 # initialize rs1
li x11, 0xf9a847f5 # initialize rs2
and x15, x20, x11 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd7f1bfc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x400a67fc # initialize rs1
li x2, 0x84d7b1e2 # initialize rs2
and x16, x22, x2 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xbdc51062 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe469f108 # initialize rs1
li x24, 0x36b7e56b # initialize rs2
and x17, x29, x24 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0f23d695 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x56d8e9f3 # initialize rs1
li x26, 0x210d8698 # initialize rs2
and x18, x10, x26 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x2598ed48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa76d4b32 # initialize rs1
li x2, 0x87e8b9a7 # initialize rs2
and x19, x30, x2 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x70069215 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x4e1939b8 # initialize rs1
li x31, 0x70eca293 # initialize rs2
and x20, x28, x31 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x251a54b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9938b9e7 # initialize rs1
li x10, 0xe7326e1f # initialize rs2
and x21, x28, x10 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x732eba92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x08a987b7 # initialize rs1
li x1, 0x379e1ff8 # initialize rs2
and x22, x5, x1 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x8b132540 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x38f7d4e3 # initialize rs1
li x26, 0x74c6ff01 # initialize rs2
and x23, x29, x26 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xaddb5678 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x335a1b7b # initialize rs1
li x14, 0xbde2ae27 # initialize rs2
and x24, x4, x14 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x1be62446 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5b608086 # initialize rs1
li x23, 0xb7f852c5 # initialize rs2
and x25, x1, x23 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xf6863ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7dcc900a # initialize rs1
li x24, 0xdf6a1985 # initialize rs2
and x26, x28, x24 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x9b91cfb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa0d83360 # initialize rs1
li x19, 0x04408df3 # initialize rs2
and x27, x13, x19 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xa2d6d8c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xcd4aa89a # initialize rs1
li x15, 0x66ae31bd # initialize rs2
and x28, x17, x15 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x6f651019 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x679b205f # initialize rs1
li x6, 0x933cc2c7 # initialize rs2
and x29, x10, x6 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x83db829b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00b35a92 # initialize rs1
li x14, 0xda9f4546 # initialize rs2
and x30, x25, x14 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x35d1f3f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xc06045b5 # initialize rs1
li x14, 0xbb714437 # initialize rs2
and x31, x4, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x29, 0x3839db4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x020d8a8f # initialize rs1
li x31, 0xa64f5e71 # initialize rs2
and x29, x0, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x31, 0x15863778 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb56acae6 # initialize rs1
li x11, 0x5e94d303 # initialize rs2
and x31, x1, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x26, 0x44e3a656 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x26e0e537 # initialize rs1
li x11, 0x95b30690 # initialize rs2
and x26, x2, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x29, 0xa03cf061 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x46ab92d9 # initialize rs1
li x21, 0x0268416a # initialize rs2
and x29, x3, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x23, 0x177677c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0f3d16e0 # initialize rs1
li x31, 0x7cb9ca3e # initialize rs2
and x23, x4, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x16, 0x1e0e2ffd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x77dcf7b2 # initialize rs1
li x9, 0xbfdee880 # initialize rs2
and x16, x5, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x9, 0xeb0c1582 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xeded413b # initialize rs1
li x13, 0xe15e787a # initialize rs2
and x9, x6, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x27, 0xc78ad66d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x544f06dd # initialize rs1
li x29, 0x425fea71 # initialize rs2
and x27, x7, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0xf48697b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8f040c54 # initialize rs1
li x13, 0x2a4e9db9 # initialize rs2
and x11, x8, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x06b1b0ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x90c86387 # initialize rs1
li x15, 0x543b723c # initialize rs2
and x10, x9, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x29, 0xb7dedde9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xdb627a3d # initialize rs1
li x15, 0xe4a7c828 # initialize rs2
and x29, x10, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x8a4d266f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfc14e5c1 # initialize rs1
li x8, 0x72461d4b # initialize rs2
and x9, x11, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0x97342123 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xed39abe0 # initialize rs1
li x16, 0x1540e2f1 # initialize rs2
and x15, x12, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x21, 0xb0364ad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8a8ed273 # initialize rs1
li x27, 0xa82c84ab # initialize rs2
and x21, x13, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x8, 0x74a2daf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7b19062c # initialize rs1
li x6, 0x2b5deb8a # initialize rs2
and x8, x14, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x23, 0x35152cba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x26fd5a53 # initialize rs1
li x31, 0xc6d875de # initialize rs2
and x23, x15, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x18, 0x4c08c6ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0517f618 # initialize rs1
li x23, 0xf7f1fe71 # initialize rs2
and x18, x16, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x13, 0x4a1393ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x49e19b4d # initialize rs1
li x18, 0x146672ad # initialize rs2
and x13, x17, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x8, 0x2490a429 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xceb4d20e # initialize rs1
li x1, 0x1c16dc39 # initialize rs2
and x8, x18, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x4, 0x6db16e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4ee5ddf0 # initialize rs1
li x2, 0xd2865c01 # initialize rs2
and x4, x19, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x12, 0x74655798 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x426a50b8 # initialize rs1
li x25, 0xcdc8fd4e # initialize rs2
and x12, x20, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x4, 0x46e98b75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x903e36cf # initialize rs1
li x5, 0x211312e1 # initialize rs2
and x4, x21, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x4, 0xa6d15070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0118d4e3 # initialize rs1
li x11, 0xfed68dc1 # initialize rs2
and x4, x22, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x29, 0xafe6f875 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x1ec18b76 # initialize rs1
li x14, 0xb4901da8 # initialize rs2
and x29, x23, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x30, 0xa1b73801 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ec29b33 # initialize rs1
li x29, 0x4e7aef59 # initialize rs2
and x30, x24, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x28, 0x9e63256a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc5dc925a # initialize rs1
li x6, 0x2a83c504 # initialize rs2
and x28, x25, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x23, 0x9dcc668f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x266993e9 # initialize rs1
li x19, 0xaf3cd650 # initialize rs2
and x23, x26, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x14, 0xf01688e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4a51de41 # initialize rs1
li x22, 0x67b41f78 # initialize rs2
and x14, x27, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x15, 0x531e9571 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x15f66e23 # initialize rs1
li x24, 0x97a03443 # initialize rs2
and x15, x28, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x30, 0x87b8a1f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffb2e1c5 # initialize rs1
li x25, 0xfbbbb0c9 # initialize rs2
and x30, x29, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x27, 0x4191ef71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x166da609 # initialize rs1
li x2, 0x30a407e9 # initialize rs2
and x27, x30, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x20, 0xdb81f356 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf19d09dd # initialize rs1
li x17, 0x3bdcd5c1 # initialize rs2
and x20, x31, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x7, 0x823c694c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3a9f74ef # initialize rs1
li x0, 0xefc6e435 # initialize rs2
and x7, x3, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x6, 0x6721f589 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5fe5162e # initialize rs1
li x1, 0x23a59293 # initialize rs2
and x6, x29, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x27, 0xc92f4d5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe9b95826 # initialize rs1
li x2, 0x966d66ed # initialize rs2
and x27, x14, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x8, 0xf66ae1d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5dab06c4 # initialize rs1
li x3, 0xc6f2aace # initialize rs2
and x8, x17, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x12, 0x6919102b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x34e6a530 # initialize rs1
li x4, 0xc30b2808 # initialize rs2
and x12, x13, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x6, 0x32f33d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb8b69abe # initialize rs1
li x5, 0xe15100df # initialize rs2
and x6, x12, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x21, 0xaa2505aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xeaa42fb7 # initialize rs1
li x6, 0xe60d2ada # initialize rs2
and x21, x22, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x22, 0x5e96c772 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x08e58a37 # initialize rs1
li x7, 0x7cbb8f4d # initialize rs2
and x22, x29, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x14, 0xdcb1c60b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xacbb98ae # initialize rs1
li x8, 0x0a3db26e # initialize rs2
and x14, x30, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x19, 0x1fc5554c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x61e09678 # initialize rs1
li x9, 0x7a3e128f # initialize rs2
and x19, x22, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x2, 0x5a4c1ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x50962d28 # initialize rs1
li x10, 0xdab95791 # initialize rs2
and x2, x15, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x2, 0x1d8a5b3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x156e00c4 # initialize rs1
li x11, 0xe5ccaf94 # initialize rs2
and x2, x8, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x26, 0x327bf1b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x31389027 # initialize rs1
li x12, 0x12240705 # initialize rs2
and x26, x11, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0x2c737464 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x84264520 # initialize rs1
li x13, 0x1770a506 # initialize rs2
and x8, x7, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x2, 0x647611e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x194a5bfd # initialize rs1
li x14, 0x98ed2175 # initialize rs2
and x2, x30, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x2, 0x4268e2b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xadc8b698 # initialize rs1
li x15, 0xad7b70fa # initialize rs2
and x2, x9, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x2, 0xec1f7385 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x089ffc1b # initialize rs1
li x16, 0x59404fbf # initialize rs2
and x2, x9, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x20, 0xd4d28851 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x9d734dcb # initialize rs1
li x17, 0xd11b3ec4 # initialize rs2
and x20, x5, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x9, 0x23bb5a0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd18de3c5 # initialize rs1
li x18, 0xb340a334 # initialize rs2
and x9, x7, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x15, 0x3f2630e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x786c2462 # initialize rs1
li x19, 0xa667e116 # initialize rs2
and x15, x9, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x1, 0x6028562f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x93019feb # initialize rs1
li x20, 0x703fe591 # initialize rs2
and x1, x30, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x13, 0xdf19f370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x574b411a # initialize rs1
li x21, 0x513b7956 # initialize rs2
and x13, x11, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x9, 0xe84f540f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xdf99baf1 # initialize rs1
li x22, 0x950489bd # initialize rs2
and x9, x2, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x5, 0x58ddd411 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8cea5c8b # initialize rs1
li x23, 0xd925f560 # initialize rs2
and x5, x26, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x12, 0x83448662 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaf22cc7a # initialize rs1
li x24, 0x81d1596a # initialize rs2
and x12, x19, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x23, 0xaa02f76e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x43b0a542 # initialize rs1
li x25, 0x643b9776 # initialize rs2
and x23, x11, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x10, 0xd84d858b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd196e439 # initialize rs1
li x26, 0xb326ca45 # initialize rs2
and x10, x13, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x15, 0x44baf427 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd856bbb0 # initialize rs1
li x27, 0x418b6d33 # initialize rs2
and x15, x11, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x1, 0x9907e4c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf10f835c # initialize rs1
li x28, 0x2751d213 # initialize rs2
and x1, x18, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x22, 0xddf443de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3b19e603 # initialize rs1
li x29, 0x0d08fd13 # initialize rs2
and x22, x13, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x31, 0xe0738191 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x93d87e8e # initialize rs1
li x30, 0x3d867dc8 # initialize rs2
and x31, x13, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x7, 0x6de5e027 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3a49cb04 # initialize rs1
li x31, 0x4f926225 # initialize rs2
and x7, x1, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xc87e7309)
li x6, 0xb6e3e228 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb6e3e228 # initialize rs1
li x0, 0xf1e80db5 # initialize rs2
and x6, x4, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x35ede251)
li x9, 0x35ede251 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x35ede251 # initialize rs1
li x7, 0x35ede251 # initialize rs2
and x9, x0, x7 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x39fe4810)
li x23, 0x2901cb3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x39fe4810 # initialize rs1
li x21, 0x39fe4810 # initialize rs2
and x23, x18, x21 # perform operation

# Testcase cmp_gpr_hazard raw test
and x24, x3, x7 # perform first operation
and x25, x24, x21 # perform second operation

# Testcase cmp_gpr_hazard raw test
and x9, x5, x4 # perform first operation
and x26, x3, x9 # perform second operation

# Testcase cmp_gpr_hazard waw test
and x16, x7, x6 # perform first operation
and x16, x19, x6 # perform second operation

# Testcase cmp_gpr_hazard waw test
and x4, x19, x17 # perform first operation
and x4, x28, x31 # perform second operation

# Testcase cmp_gpr_hazard war test
and x9, x17, x4 # perform first operation
and x17, x19, x17 # perform second operation

# Testcase cmp_gpr_hazard war test
and x18, x7, x9 # perform first operation
and x9, x10, x13 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x19, 0xbe10dce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000 # initialize rs1
li x0, 0xfc2e6c12 # initialize rs2
and x19, x24, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0x4dcc5dcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
li x26, 0x00000000 # initialize rs2
and x28, x11, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x31, 0xd00d16ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x1, 0x00000000 # initialize rs2
and x31, x7, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x20, 0x22dddf28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs1
li x0, 0x83c8fd27 # initialize rs2
and x20, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x31, 0xf4c0153a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x3, 0x00000001 # initialize rs2
and x31, x26, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x21, 0xbf0f959f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
li x26, 0x00000001 # initialize rs2
and x21, x12, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x15, 0xadc7bc54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000002 # initialize rs1
li x0, 0x86d34bfe # initialize rs2
and x15, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0xea76264d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs1
li x3, 0x00000002 # initialize rs2
and x16, x12, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x2, 0x9da63119 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
li x31, 0x00000002 # initialize rs2
and x2, x12, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x11, 0x6e8181f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
li x0, 0xa71619e6 # initialize rs2
and x11, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x1, 0xd92266b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs1
li x7, 0x80000000 # initialize rs2
and x1, x12, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x14, 0x5000f27b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
li x1, 0x80000000 # initialize rs2
and x14, x6, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x26, 0xc6f4d4ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000001 # initialize rs1
li x0, 0xef773245 # initialize rs2
and x26, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x18, 0xc838435a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80000001 # initialize rs1
li x8, 0x80000001 # initialize rs2
and x18, x17, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x27, 0x41c2a02f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffff # initialize rs1
li x25, 0x80000001 # initialize rs2
and x27, x5, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x10, 0x3f9d7cf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffff # initialize rs1
li x0, 0x6b6e3034 # initialize rs2
and x10, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x20, 0x938d4510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
and x20, x14, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x29, 0x1dd9c6e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffff # initialize rs1
li x17, 0x7fffffff # initialize rs2
and x29, x5, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x17, 0xa22a45f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs1
li x0, 0x9981fd1d # initialize rs2
and x17, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x29, 0x61e5d439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # initialize rs1
li x1, 0x7ffffffe # initialize rs2
and x29, x9, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x23, 0xd58bac20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x13, 0x7ffffffe # initialize rs2
and x23, x31, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x24, 0xd82d87e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x0, 0xa229d3df # initialize rs2
and x24, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x10, 0x9ea4246f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
and x10, x1, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0x2ded524b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
and x1, x7, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x8, 0x61c02f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffe # initialize rs1
li x0, 0x9a4eb610 # initialize rs2
and x8, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x1, 0x5f26595e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
and x1, x4, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x12, 0x14ab54b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x8, 0xfffffffe # initialize rs2
and x12, x4, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x30, 0x57a798d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
li x0, 0x7ff6815e # initialize rs2
and x30, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x25, 0x0800f129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
and x25, x21, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x14, 0x3d49659f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
and x14, x30, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x31, 0xfbf2a7a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaa # initialize rs1
li x0, 0x137b7532 # initialize rs2
and x31, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x25, 0xb57302b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
and x25, x8, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x14, 0xf57bbe58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
and x14, x5, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x1, 0xc8466f9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x55555555 # initialize rs1
li x0, 0xbb7b2188 # initialize rs2
and x1, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x15, 0x07d8ab49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
and x15, x25, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x29, 0x4fc69972 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x27, 0x55555555 # initialize rs2
and x29, x26, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0xa3246a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
li x30, 0xc980a520 # initialize rs2
and x14, x31, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x16, 0xd20a3b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # initialize rs1
li x18, 0x815db01a # initialize rs2
and x16, x25, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x064c0fef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs1
li x31, 0x6fe63236 # initialize rs2
and x29, x10, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x16, 0x3dd2071a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # initialize rs1
li x20, 0x0b5be161 # initialize rs2
and x16, x5, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x22, 0x47ce727b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
li x19, 0xa7b3cfe3 # initialize rs2
and x22, x14, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x8, 0x133df6e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x9, 0xad79e4d6 # initialize rs2
and x8, x22, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x7, 0x42ac906f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # initialize rs1
li x18, 0x60fb32f8 # initialize rs2
and x7, x9, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0x1fdbdbfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x10, 0x93bd051c # initialize rs2
and x28, x18, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0x27f20af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
li x12, 0xc874d5df # initialize rs2
and x29, x27, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x19, 0x4218e573 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc8877 # initialize rs1
li x13, 0x3367a0a4 # initialize rs2
and x19, x1, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x17, 0xa212045e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs1
li x2, 0xfb8fae5d # initialize rs2
and x17, x10, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x31, 0xcfbec2e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs1
li x7, 0x6f3f49f4 # initialize rs2
and x31, x9, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x11, 0xada8291c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf9f06012 # initialize rs1
li x22, 0x00000000 # initialize rs2
and x11, x21, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x2, 0x10c2d392 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x216c9bc3 # initialize rs1
li x17, 0x00000001 # initialize rs2
and x2, x31, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x16, 0x4eed0d91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8c5574cc # initialize rs1
li x7, 0x00000002 # initialize rs2
and x16, x2, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x30, 0xf9cdc964 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xeef72d97 # initialize rs1
li x31, 0x80000000 # initialize rs2
and x30, x8, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x28, 0x124f4f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa5fbb346 # initialize rs1
li x27, 0x80000001 # initialize rs2
and x28, x2, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x26, 0xc04db309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3d2c1636 # initialize rs1
li x22, 0x7fffffff # initialize rs2
and x26, x16, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x15, 0x91e75aca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe3fb2022 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
and x15, x29, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x9, 0xb55cece1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbbf6da7c # initialize rs1
li x3, 0xffffffff # initialize rs2
and x9, x8, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x20, 0x01c3ba8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x430851aa # initialize rs1
li x30, 0xfffffffe # initialize rs2
and x20, x28, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x11, 0x7ec94efc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe4a85e2b # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
and x11, x27, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x22, 0xfdeeb32f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x45871674 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
and x22, x9, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x17, 0x7225b32c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf62cdc39 # initialize rs1
li x13, 0x55555555 # initialize rs2
and x17, x31, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x9, 0x4cde0dae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize rs1
li x23, 0x00000000 # initialize rs2
and x9, x14, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x25, 0x130da9ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
li x27, 0x00000001 # initialize rs2
and x25, x23, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x7, 0xb045ca2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x2, 0x00000002 # initialize rs2
and x7, x28, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x20, 0x555c7e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000 # initialize rs1
li x14, 0x80000000 # initialize rs2
and x20, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x7, 0x8bd97d52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000 # initialize rs1
li x9, 0x80000001 # initialize rs2
and x7, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x30, 0xa47bc229 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
li x10, 0x7fffffff # initialize rs2
and x30, x17, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x23, 0x892b9dc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
and x23, x7, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x20, 0xd77cf2ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
li x19, 0xffffffff # initialize rs2
and x20, x21, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x28, 0x3ad0c585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000 # initialize rs1
li x1, 0xfffffffe # initialize rs2
and x28, x29, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x14, 0x17f76b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000 # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
and x14, x16, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x26, 0x316e3285 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
and x26, x28, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x19, 0x58523bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
li x22, 0x55555555 # initialize rs2
and x19, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x29, 0x068ca194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000001 # initialize rs1
li x27, 0x00000000 # initialize rs2
and x29, x24, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x21, 0xc3834e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000001 # initialize rs1
li x27, 0x00000001 # initialize rs2
and x21, x3, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x13, 0x8a36d030 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
li x19, 0x00000002 # initialize rs2
and x13, x23, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x4, 0xbce4588e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000001 # initialize rs1
li x26, 0x80000000 # initialize rs2
and x4, x24, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x23, 0x8fe286b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x1, 0x80000001 # initialize rs2
and x23, x20, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x16, 0xdec34099 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs1
li x26, 0x7fffffff # initialize rs2
and x16, x28, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x19, 0x1dbcc13a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
and x19, x7, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x8, 0x13638d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x17, 0xffffffff # initialize rs2
and x8, x26, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x7, 0x3d6073b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000001 # initialize rs1
li x12, 0xfffffffe # initialize rs2
and x7, x29, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x14, 0x68ec9e22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
and x14, x30, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x2, 0x9044d06c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
and x2, x26, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x1, 0x92a5b895 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x2, 0x55555555 # initialize rs2
and x1, x10, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x7, 0xea805229 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x14, 0x00000000 # initialize rs2
and x7, x31, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x23, 0xefb1fa07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x22, 0x00000001 # initialize rs2
and x23, x24, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x1, 0xc419f2b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
li x5, 0x00000002 # initialize rs2
and x1, x27, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x21, 0x6a2ca004 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000002 # initialize rs1
li x30, 0x80000000 # initialize rs2
and x21, x22, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x21, 0xc0de4b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x4, 0x80000001 # initialize rs2
and x21, x6, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x6, 0xe9052731 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000002 # initialize rs1
li x26, 0x7fffffff # initialize rs2
and x6, x1, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x12, 0x181da1f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
and x12, x31, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x19, 0xd7bec639 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # initialize rs1
li x9, 0xffffffff # initialize rs2
and x19, x28, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x20, 0x987de8f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000002 # initialize rs1
li x3, 0xfffffffe # initialize rs2
and x20, x18, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x29, 0x872fe361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000002 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
and x29, x5, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x9, 0x61f53510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
and x9, x21, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x31, 0x23f2da2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
li x9, 0x55555555 # initialize rs2
and x31, x11, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x18, 0x290819c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
li x5, 0x00000000 # initialize rs2
and x18, x11, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x27, 0xa4508eb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # initialize rs1
li x1, 0x00000001 # initialize rs2
and x27, x9, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x14, 0xda5460b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000000 # initialize rs1
li x27, 0x00000002 # initialize rs2
and x14, x20, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x14, 0x9a62513f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x4, 0x80000000 # initialize rs2
and x14, x29, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x7, 0x75b8b565 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000000 # initialize rs1
li x14, 0x80000001 # initialize rs2
and x7, x19, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x20, 0x96447c04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
li x17, 0x7fffffff # initialize rs2
and x20, x30, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x1, 0xf3692b22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
and x1, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x4, 0xce89ce20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # initialize rs1
li x22, 0xffffffff # initialize rs2
and x4, x9, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x8, 0x7f4ad1b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs1
li x16, 0xfffffffe # initialize rs2
and x8, x12, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x6, 0xa15b79b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000000 # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
and x6, x16, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x8, 0x1b20bbf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80000000 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
and x8, x17, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x3, 0x07fe7ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # initialize rs1
li x19, 0x55555555 # initialize rs2
and x3, x9, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x19, 0xfeb6a282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
li x11, 0x00000000 # initialize rs2
and x19, x4, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x31, 0x2534d858 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80000001 # initialize rs1
li x29, 0x00000001 # initialize rs2
and x31, x17, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x25, 0x84e2ca17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
li x10, 0x00000002 # initialize rs2
and x25, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x4, 0x0641ff10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000001 # initialize rs1
li x25, 0x80000000 # initialize rs2
and x4, x18, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x13, 0xa38685f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
and x13, x15, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x21, 0x6aa0cb4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x80000001 # initialize rs1
li x24, 0x7fffffff # initialize rs2
and x21, x25, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x31, 0xda006805 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
and x31, x11, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x11, 0x52c28839 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000001 # initialize rs1
li x9, 0xffffffff # initialize rs2
and x11, x18, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x25, 0xd5a7161c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000001 # initialize rs1
li x28, 0xfffffffe # initialize rs2
and x25, x1, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x22, 0x0170b948 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
and x22, x15, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x22, 0xf9b46573 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000001 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
and x22, x19, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x1, 0xf8a22794 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000001 # initialize rs1
li x6, 0x55555555 # initialize rs2
and x1, x30, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x1, 0x873e40dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffff # initialize rs1
li x3, 0x00000000 # initialize rs2
and x1, x7, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x11, 0x768ea5ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffff # initialize rs1
li x18, 0x00000001 # initialize rs2
and x11, x30, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x26, 0x062fce1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffff # initialize rs1
li x19, 0x00000002 # initialize rs2
and x26, x25, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x22, 0x9e689188 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
li x14, 0x80000000 # initialize rs2
and x22, x1, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x10, 0xab3a1d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x23, 0x80000001 # initialize rs2
and x10, x5, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x31, 0x0f6000f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rs1
li x30, 0x7fffffff # initialize rs2
and x31, x13, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x13, 0x3cc17dde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffff # initialize rs1
li x5, 0x7ffffffe # initialize rs2
and x13, x8, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x6, 0xe9e0cd8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffff # initialize rs1
li x22, 0xffffffff # initialize rs2
and x6, x12, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x16, 0xd96bad90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffff # initialize rs1
li x23, 0xfffffffe # initialize rs2
and x16, x7, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x13, 0x8718685c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffff # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
and x13, x3, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x15, 0x3a23e0d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffff # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
and x15, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x5, 0x980b5c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffff # initialize rs1
li x26, 0x55555555 # initialize rs2
and x5, x3, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x18, 0x675a4db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x17, 0x00000000 # initialize rs2
and x18, x13, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x13, 0x4be622a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x23, 0x00000001 # initialize rs2
and x13, x19, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x22, 0xc9b94707 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffe # initialize rs1
li x6, 0x00000002 # initialize rs2
and x22, x8, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x27, 0x4d9f0dfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x18, 0x80000000 # initialize rs2
and x27, x13, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x2, 0xece5c7b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffe # initialize rs1
li x20, 0x80000001 # initialize rs2
and x2, x25, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x9, 0x790eefa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x23, 0x7fffffff # initialize rs2
and x9, x13, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x12, 0xaaf50770 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
and x12, x5, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x7, 0xbf74c160 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffe # initialize rs1
li x23, 0xffffffff # initialize rs2
and x7, x30, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x9, 0x55966408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x20, 0xfffffffe # initialize rs2
and x9, x23, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x21, 0x75fc3303 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffe # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
and x21, x3, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x26, 0x8ed9acf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffe # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
and x26, x25, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x22, 0x06378948 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffe # initialize rs1
li x24, 0x55555555 # initialize rs2
and x22, x28, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x14, 0x44e829e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x27, 0x00000000 # initialize rs2
and x14, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x16, 0x3b6803ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x21, 0x00000001 # initialize rs2
and x16, x27, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x23, 0x5feff9a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x19, 0x00000002 # initialize rs2
and x23, x8, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x13, 0xdfe68c51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
and x13, x6, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x15, 0xbd6b774d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x4, 0x80000001 # initialize rs2
and x15, x7, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x3, 0x1d494ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x6, 0x7fffffff # initialize rs2
and x3, x8, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x30, 0x4561c0e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
and x30, x14, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0x8df45822 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
and x18, x22, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x13, 0xdde94e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x27, 0xfffffffe # initialize rs2
and x13, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x1, 0x915c4259 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
and x1, x27, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x14, 0x1a34e471 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
and x14, x4, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x28, 0x8a60b6d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x4, 0x55555555 # initialize rs2
and x28, x7, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x1, 0x98d61ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffe # initialize rs1
li x21, 0x00000000 # initialize rs2
and x1, x20, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x27, 0xf154bf5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
li x22, 0x00000001 # initialize rs2
and x27, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x11, 0x968d1581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffe # initialize rs1
li x4, 0x00000002 # initialize rs2
and x11, x12, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x5, 0x4757ee6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
li x16, 0x80000000 # initialize rs2
and x5, x27, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x29, 0xae3fa2e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
li x28, 0x80000001 # initialize rs2
and x29, x31, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x1, 0x19b0cf26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffe # initialize rs1
li x28, 0x7fffffff # initialize rs2
and x1, x7, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x8, 0x1980da38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
and x8, x24, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x28, 0xce68a5d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
and x28, x6, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x29, 0x6720fb7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
and x29, x24, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x2, 0x9329393d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs1
li x8, 0x5bbc8877 # initialize rs2
and x2, x13, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x20, 0x3b14236a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
and x20, x27, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x13, 0x05f4f847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
li x24, 0x55555555 # initialize rs2
and x13, x4, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x17, 0x3ce40468 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
li x23, 0x00000000 # initialize rs2
and x17, x27, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x28, 0xc1a616c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc8877 # initialize rs1
li x3, 0x00000001 # initialize rs2
and x28, x25, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x28, 0x76ebbb2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc8877 # initialize rs1
li x12, 0x00000002 # initialize rs2
and x28, x25, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x1, 0x3ff6c764 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x21, 0x80000000 # initialize rs2
and x1, x20, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x2, 0xebd69b41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc8877 # initialize rs1
li x14, 0x80000001 # initialize rs2
and x2, x26, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x14, 0xf7e9981d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize rs1
li x6, 0x7fffffff # initialize rs2
and x14, x8, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x14, 0x15e65881 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc8877 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
and x14, x16, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x21, 0x62f8237a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc8877 # initialize rs1
li x26, 0xffffffff # initialize rs2
and x21, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x4, 0x9fd6d95b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize rs1
li x23, 0xfffffffe # initialize rs2
and x4, x8, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x23, 0x16b8260c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc8877 # initialize rs1
li x25, 0x5bbc8877 # initialize rs2
and x23, x1, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x26, 0xc16bde7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc8877 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
and x26, x12, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x3, 0x82c0777e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x21, 0x55555555 # initialize rs2
and x3, x20, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x4, 0x702e935a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x27, 0x00000000 # initialize rs2
and x4, x14, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x16, 0xf767cead # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaa # initialize rs1
li x13, 0x00000001 # initialize rs2
and x16, x6, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x18, 0xca32c081 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
li x30, 0x00000002 # initialize rs2
and x18, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x26, 0x325ac15c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaa # initialize rs1
li x29, 0x80000000 # initialize rs2
and x26, x15, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x18, 0x7c926c46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x9, 0x80000001 # initialize rs2
and x18, x14, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x11, 0x08bee994 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaa # initialize rs1
li x21, 0x7fffffff # initialize rs2
and x11, x1, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x28, 0xd3a9fcd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x8, 0x7ffffffe # initialize rs2
and x28, x23, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x16, 0x2098054e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x26, 0xffffffff # initialize rs2
and x16, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x19, 0x82ac0ab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaa # initialize rs1
li x4, 0xfffffffe # initialize rs2
and x19, x22, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x17, 0x8327f24c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaa # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
and x17, x25, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x7, 0xf819468f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
and x7, x17, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x12, 0x53f23d68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaa # initialize rs1
li x21, 0x55555555 # initialize rs2
and x12, x5, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x8, 0x59e0cba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x20, 0x00000000 # initialize rs2
and x8, x29, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x7, 0xdfea9ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555 # initialize rs1
li x24, 0x00000001 # initialize rs2
and x7, x6, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x24, 0xf167e8d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x55555555 # initialize rs1
li x29, 0x00000002 # initialize rs2
and x24, x22, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x8, 0x3adf6a11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x26, 0x80000000 # initialize rs2
and x8, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x25, 0x277b75fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs1
li x10, 0x80000001 # initialize rs2
and x25, x9, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x2, 0x49633a4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55555555 # initialize rs1
li x13, 0x7fffffff # initialize rs2
and x2, x14, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x27, 0x04496aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
and x27, x29, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x19, 0x65fbd916 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x55555555 # initialize rs1
li x10, 0xffffffff # initialize rs2
and x19, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x19, 0xeb7c6a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x9, 0xfffffffe # initialize rs2
and x19, x29, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x21, 0x1fa62862 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x12, 0x5bbc8877 # initialize rs2
and x21, x17, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x12, 0x5f5a2540 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x55555555 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
and x12, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x10, 0x4127ce5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x55555555 # initialize rs1
li x23, 0x55555555 # initialize rs2
and x10, x15, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x020636cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xea4e5a2c # initialize rs1
li x30, 0x9afb681d # initialize rs2
and x0, x0, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xfa5e999e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6ff7faf0 # initialize rs1
li x14, 0x227cbc27 # initialize rs2
and x1, x1, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x5304ca7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x94be8ec0 # initialize rs1
li x17, 0xb0081c18 # initialize rs2
and x2, x2, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x29a6bc74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x88edd6d3 # initialize rs1
li x14, 0xa4a13198 # initialize rs2
and x3, x3, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xc988e413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3b816204 # initialize rs1
li x6, 0xf799e296 # initialize rs2
and x4, x4, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x6c1f2da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x890cc685 # initialize rs1
li x4, 0x387f8996 # initialize rs2
and x5, x5, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x1da17e1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfc2960d6 # initialize rs1
li x26, 0x7ca0d4f3 # initialize rs2
and x6, x6, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xd1655070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x48d988a1 # initialize rs1
li x23, 0x40bbb5f2 # initialize rs2
and x7, x7, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xae26a22c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa6c44ed2 # initialize rs1
li x29, 0x051d3668 # initialize rs2
and x8, x8, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x29a60326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x470df9e6 # initialize rs1
li x11, 0xbd7d8e3e # initialize rs2
and x9, x9, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x6dcaf7bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x88ffdf97 # initialize rs1
li x5, 0x2033a95a # initialize rs2
and x10, x10, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xdad39cfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8b51f270 # initialize rs1
li x2, 0x815aea9d # initialize rs2
and x11, x11, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x4cafb15e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe77b4418 # initialize rs1
li x5, 0x72ce4878 # initialize rs2
and x12, x12, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x3220a4a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2c587b17 # initialize rs1
li x4, 0x3fab8471 # initialize rs2
and x13, x13, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xeb687a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbc004167 # initialize rs1
li x7, 0xfba4dc0f # initialize rs2
and x14, x14, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x887956f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x692e0c14 # initialize rs1
li x19, 0x0b31389b # initialize rs2
and x15, x15, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x5ad854ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x56d7027b # initialize rs1
li x5, 0x35ea89b3 # initialize rs2
and x16, x16, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x249984fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x143688d7 # initialize rs1
li x27, 0x45f7ea98 # initialize rs2
and x17, x17, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x24742ec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x83f18b76 # initialize rs1
li x31, 0xa2d9b706 # initialize rs2
and x18, x18, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x381768ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9d7a774c # initialize rs1
li x31, 0x2c650537 # initialize rs2
and x19, x19, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x0b3fa8b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaebb8b34 # initialize rs1
li x29, 0xd7f0495a # initialize rs2
and x20, x20, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x8c16567f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1f156eb8 # initialize rs1
li x31, 0x8ed2bb3d # initialize rs2
and x21, x21, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x30347c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd3fd1719 # initialize rs1
li x24, 0x54c57344 # initialize rs2
and x22, x22, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x656ab5b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7920a9cb # initialize rs1
li x18, 0x664ef107 # initialize rs2
and x23, x23, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xbb3dffe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xca5e1f3c # initialize rs1
li x7, 0x0f69a7fa # initialize rs2
and x24, x24, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x0f29ad2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x35c44ff7 # initialize rs1
li x2, 0xd8d0b8c8 # initialize rs2
and x25, x25, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xcb8c2c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb6d06615 # initialize rs1
li x13, 0x6ec1b7b0 # initialize rs2
and x26, x26, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x8c126005 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc40031e4 # initialize rs1
li x21, 0x2fcaabb7 # initialize rs2
and x27, x27, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x413eab41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x54135521 # initialize rs1
li x1, 0x5fee0d78 # initialize rs2
and x28, x28, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xbcd4823a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x02299f58 # initialize rs1
li x13, 0xdb5bd443 # initialize rs2
and x29, x29, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x8bb0155e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5fd65f49 # initialize rs1
li x19, 0x4afe17f8 # initialize rs2
and x30, x30, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xce5000d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x25128961 # initialize rs1
li x20, 0x566d8cf0 # initialize rs2
and x31, x31, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xcb346925 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd929dfa0 # initialize rs1
li x0, 0x29b75064 # initialize rs2
and x0, x21, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x7b192256 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x065963f2 # initialize rs1
li x1, 0x820297b1 # initialize rs2
and x1, x2, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xd71a78e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x06499c09 # initialize rs1
li x2, 0x9b9f56b8 # initialize rs2
and x2, x21, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xac769bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8545671f # initialize rs1
li x3, 0x5b9cf89f # initialize rs2
and x3, x20, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x7332c4ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa946a3a2 # initialize rs1
li x4, 0x32586da3 # initialize rs2
and x4, x2, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xcea9f931 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8b3941d5 # initialize rs1
li x5, 0xc893885b # initialize rs2
and x5, x25, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xd10a3909 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80f62b31 # initialize rs1
li x6, 0xf89d4123 # initialize rs2
and x6, x3, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xabe520ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbae842c8 # initialize rs1
li x7, 0x15325a14 # initialize rs2
and x7, x9, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xc07b109a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x27642695 # initialize rs1
li x8, 0x2728806c # initialize rs2
and x8, x19, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xab79bf06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe8e94603 # initialize rs1
li x9, 0x914caa43 # initialize rs2
and x9, x20, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x4e5afa7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc246065a # initialize rs1
li x10, 0xa30c344f # initialize rs2
and x10, x29, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x2eaff555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x023df4a2 # initialize rs1
li x11, 0xa5b3e5fe # initialize rs2
and x11, x2, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x370b8e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x97c2ab1d # initialize rs1
li x12, 0x18baf495 # initialize rs2
and x12, x3, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x98aa1f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaf12495 # initialize rs1
li x13, 0xba0e272b # initialize rs2
and x13, x8, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xf4bfa0fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x777964a0 # initialize rs1
li x14, 0x13d77fa7 # initialize rs2
and x14, x19, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x33130c57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc693135a # initialize rs1
li x15, 0xc3908adf # initialize rs2
and x15, x5, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x77bb1ab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3f255a1b # initialize rs1
li x16, 0x356fbfc5 # initialize rs2
and x16, x8, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xcac57b0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xcad0e800 # initialize rs1
li x17, 0x75ced87e # initialize rs2
and x17, x22, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xf1e0d225 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x9efa5314 # initialize rs1
li x18, 0x8b6653de # initialize rs2
and x18, x6, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x6fddc66b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x73b470e9 # initialize rs1
li x19, 0x206bce67 # initialize rs2
and x19, x6, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xfe963e96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc8fb4d3a # initialize rs1
li x20, 0x125a7593 # initialize rs2
and x20, x3, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x279b25b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xed59751a # initialize rs1
li x21, 0xad145b77 # initialize rs2
and x21, x12, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x7e88a8b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x733a839a # initialize rs1
li x22, 0xd7d2b534 # initialize rs2
and x22, x26, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x6e448971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x3a858175 # initialize rs1
li x23, 0xe5e5ffbb # initialize rs2
and x23, x24, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x2ae4f71b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd6036419 # initialize rs1
li x24, 0xa3769512 # initialize rs2
and x24, x27, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x86c30047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3bec0480 # initialize rs1
li x25, 0x9b7a43bd # initialize rs2
and x25, x9, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x98dd12df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9c0130a7 # initialize rs1
li x26, 0xcd58c31f # initialize rs2
and x26, x10, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xafe03071 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0502629d # initialize rs1
li x27, 0x6de8e22d # initialize rs2
and x27, x31, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xc2f99167 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x669a0321 # initialize rs1
li x28, 0x9c41905a # initialize rs2
and x28, x31, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xcd9f753a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd91ceddb # initialize rs1
li x29, 0xaf079b76 # initialize rs2
and x29, x12, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x01e32354 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf78ef166 # initialize rs1
li x30, 0x3d17bfd0 # initialize rs2
and x30, x13, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xc4c2d4c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa16b347d # initialize rs1
li x31, 0x188f4a1c # initialize rs2
and x31, x17, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x15261ab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x821593c8 # initialize rs1
li x0, 0x3612461f # initialize rs2
and x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xb99e73e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8520b295 # initialize rs1
li x1, 0x0ed58159 # initialize rs2
and x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xc8480078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x28e52c6a # initialize rs1
li x2, 0x0b1f4488 # initialize rs2
and x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xbf7b6b3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfd72919c # initialize rs1
li x3, 0x29672134 # initialize rs2
and x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x356b26ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8057b537 # initialize rs1
li x4, 0x31692d4e # initialize rs2
and x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0xcdc86a96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8bd1d055 # initialize rs1
li x5, 0x4299f3aa # initialize rs2
and x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xc322b4ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x42ead84c # initialize rs1
li x6, 0x1b94f93a # initialize rs2
and x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x6dda6925 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3f4255c3 # initialize rs1
li x7, 0x27a60355 # initialize rs2
and x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x64864cee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x48cf1902 # initialize rs1
li x8, 0x5f1e2cb7 # initialize rs2
and x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x3ebd35fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1ef0e207 # initialize rs1
li x9, 0x5d9b354a # initialize rs2
and x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xad2a5d17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0eb7e062 # initialize rs1
li x10, 0xf7b9819d # initialize rs2
and x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xc1611767 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd7cff1ba # initialize rs1
li x11, 0xb563146c # initialize rs2
and x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x379187f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x61b90490 # initialize rs1
li x12, 0x1d936af5 # initialize rs2
and x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x1195f1f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x23371a3f # initialize rs1
li x13, 0x097b2105 # initialize rs2
and x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x761211c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x71d7ec55 # initialize rs1
li x14, 0x61718776 # initialize rs2
and x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x0286a463 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x61d00b6b # initialize rs1
li x15, 0x08c70e51 # initialize rs2
and x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x8ff74652 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x045a1c04 # initialize rs1
li x16, 0x3911f9d7 # initialize rs2
and x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x72034e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x07296678 # initialize rs1
li x17, 0x485ef7bb # initialize rs2
and x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x549cab97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x43a0944a # initialize rs1
li x18, 0xb7fec468 # initialize rs2
and x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x7ba55437 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaf88cf09 # initialize rs1
li x19, 0x58f8dcec # initialize rs2
and x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x9aa9e11e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa5800fe0 # initialize rs1
li x20, 0x790a3b6c # initialize rs2
and x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x15dde31a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5c47ac00 # initialize rs1
li x21, 0x548fe2b7 # initialize rs2
and x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x17485c67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa0ea9d77 # initialize rs1
li x22, 0x0b0a13d7 # initialize rs2
and x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x25903f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6cffc744 # initialize rs1
li x23, 0x2f564b52 # initialize rs2
and x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x609693ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6717d0f2 # initialize rs1
li x24, 0xd550f277 # initialize rs2
and x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xbd054094 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x828b66a3 # initialize rs1
li x25, 0x6f44b80e # initialize rs2
and x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xef73ba0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2d2ad083 # initialize rs1
li x26, 0x61ff5114 # initialize rs2
and x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x4b6d6ec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x27536fb5 # initialize rs1
li x27, 0x0c703c63 # initialize rs2
and x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xe6667051 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x14afbd77 # initialize rs1
li x28, 0x92c2674a # initialize rs2
and x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x6fdb2d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9d11dfa0 # initialize rs1
li x29, 0x1ad02fba # initialize rs2
and x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x8919bf68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2d42ec4e # initialize rs1
li x30, 0xac48ca59 # initialize rs2
and x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x8bef7bf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8442437c # initialize rs1
li x31, 0x82dade1d # initialize rs2
and x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x2, 0x42748af0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x932714e0 # initialize rs1
li x0, 0xe288137e # initialize rs2
and x2, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x30, 0x12b53dba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4f2cfbfa # initialize rs1
li x1, 0x51a437a8 # initialize rs2
and x30, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x23, 0x797c676f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xbe8b9fbe # initialize rs1
li x2, 0x8804c0cf # initialize rs2
and x23, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x14, 0x88277859 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe46d4b78 # initialize rs1
li x3, 0x00c5e049 # initialize rs2
and x14, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x24, 0xfcb6865b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xc964323d # initialize rs1
li x4, 0x7a1960df # initialize rs2
and x24, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x2, 0x76cad79f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa7f1866f # initialize rs1
li x5, 0x94c4a878 # initialize rs2
and x2, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x13, 0x8c95b40f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x25b7d199 # initialize rs1
li x6, 0xfa588902 # initialize rs2
and x13, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x4, 0xd8bacbcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x38e4b0ca # initialize rs1
li x7, 0x5f7dc765 # initialize rs2
and x4, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x20, 0xae121069 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9bbb54f7 # initialize rs1
li x8, 0x6b135b25 # initialize rs2
and x20, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x10, 0x3aaadbe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe8f46e01 # initialize rs1
li x9, 0xd5ccb9f6 # initialize rs2
and x10, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x17, 0xe5a60ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb0284df2 # initialize rs1
li x10, 0xaf13126b # initialize rs2
and x17, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x28, 0x8e8f1cd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3ac78d4d # initialize rs1
li x11, 0x594285f4 # initialize rs2
and x28, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x1, 0x39739c23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x03f90723 # initialize rs1
li x12, 0x7c7b1161 # initialize rs2
and x1, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x12, 0xcdc3e904 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x98237a21 # initialize rs1
li x13, 0x0f2cd3b3 # initialize rs2
and x12, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x21, 0xdac23eae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xea7b6bf7 # initialize rs1
li x14, 0x430cd8bc # initialize rs2
and x21, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x27, 0x186d2d98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf0c872db # initialize rs1
li x15, 0x8fe5be89 # initialize rs2
and x27, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x14, 0xb9bdf50e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9b4d45c9 # initialize rs1
li x16, 0x5afc9598 # initialize rs2
and x14, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x1, 0x271f08e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x535b25ef # initialize rs1
li x17, 0xaba7c29a # initialize rs2
and x1, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x5, 0x1b69222e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x232cef27 # initialize rs1
li x18, 0xd71a0279 # initialize rs2
and x5, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x21, 0x5fcf06c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x49b0ef3a # initialize rs1
li x19, 0x28eac906 # initialize rs2
and x21, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x27, 0xaf6d44d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x10ab5ce4 # initialize rs1
li x20, 0x5052d8e4 # initialize rs2
and x27, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x5, 0xc465780b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x391ea5c0 # initialize rs1
li x21, 0xe9709808 # initialize rs2
and x5, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x7, 0xaf9d872a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2b530a15 # initialize rs1
li x22, 0x00650544 # initialize rs2
and x7, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x21199b37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb747d230 # initialize rs1
li x23, 0x30873846 # initialize rs2
and x23, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x19, 0x69005272 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x67e08976 # initialize rs1
li x24, 0x766c5c91 # initialize rs2
and x19, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x13, 0xc7aadf03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x3668ca12 # initialize rs1
li x25, 0xfd210213 # initialize rs2
and x13, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x12, 0x3d8fd773 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf19e4888 # initialize rs1
li x26, 0x2f33c837 # initialize rs2
and x12, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x11, 0x645a5ab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfa4d8743 # initialize rs1
li x27, 0x7f296803 # initialize rs2
and x11, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x17, 0xf9de2a76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2f03a58d # initialize rs1
li x28, 0x791bcee8 # initialize rs2
and x17, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x31, 0x406e0a06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9c8ea77f # initialize rs1
li x29, 0xc54a1e23 # initialize rs2
and x31, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x10, 0x8a8c150c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2c0bf54f # initialize rs1
li x30, 0x09efcedc # initialize rs2
and x10, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x5, 0x924de011 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf2d11495 # initialize rs1
li x31, 0xf0c6319c # initialize rs2
and x5, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x4e09c955)
li x18, 0x790404d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x4e09c955 # initialize rs1
li x27, 0xbdc50359 # initialize rs2
and x18, x4, x27 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0xb4cb911)
li x29, 0x151d756e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf4b346ef # initialize rs1
li x2, 0xbadac4a8 # initialize rs2
and x29, x25, x2 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x51dfd5ed)
li x16, 0xf3aed477 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe98992c9 # initialize rs1
li x7, 0x51dfd5ed # initialize rs2
and x16, x17, x7 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x3ce3c4b2)
li x5, 0xd11dfdcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4fa51a73 # initialize rs1
li x19, 0xc31c3b4e # initialize rs2
and x5, x1, x19 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
