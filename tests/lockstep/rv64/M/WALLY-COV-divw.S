///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/M/WALLY-COV-divw.S
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
li x0, 0xb301bcf19508d005 # initialize rs1
li x29, 0x206c5db61adf9335 # initialize rs2
divw x9, x0, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xe006f5d4bbc326b2 # initialize rs1
li x21, 0x5db514af7eb2c2f3 # initialize rs2
divw x17, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb2b3571b58f878e8 # initialize rs1
li x24, 0xfe8f3b178602326f # initialize rs2
divw x19, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xe913410636729624 # initialize rs1
li x17, 0xd20f6bb29a36dfcf # initialize rs2
divw x20, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x949b853ea590581c # initialize rs1
li x25, 0xe7fbb329b205295e # initialize rs2
divw x20, x4, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xaa59375dbd865c30 # initialize rs1
li x12, 0x85f88a891e9a1692 # initialize rs2
divw x3, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4292aee6d32d9065 # initialize rs1
li x8, 0xaa7c50f3236df2f3 # initialize rs2
divw x4, x6, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe6e68c277193ff08 # initialize rs1
li x23, 0x5ec27e4a20a4805d # initialize rs2
divw x20, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x03a945599a4bebf8 # initialize rs1
li x2, 0x0ec54b206d230af8 # initialize rs2
divw x28, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xdb131604876a4b0f # initialize rs1
li x7, 0x3c217bec77415530 # initialize rs2
divw x5, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xfc6da81dc13fa11e # initialize rs1
li x20, 0xa02552c8f42ef0a9 # initialize rs2
divw x23, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x429f84ff6616dfa8 # initialize rs1
li x16, 0x99e46a8f6b991d14 # initialize rs2
divw x15, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x1e961c7c335a9838 # initialize rs1
li x3, 0xf1b3a7fcc184e4d2 # initialize rs2
divw x15, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xe86a4707b60a32bf # initialize rs1
li x25, 0x689243cc21be721a # initialize rs2
divw x17, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xb1f40fec62cf20f8 # initialize rs1
li x8, 0x2630d7dc3bd1142f # initialize rs2
divw x27, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xf75d0080c1a32ec2 # initialize rs1
li x11, 0xd9f5098e3ee2580f # initialize rs2
divw x20, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xf76dbb56872085a4 # initialize rs1
li x30, 0x8a62de925ca5a308 # initialize rs2
divw x2, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xd344db02f9e21c5a # initialize rs1
li x6, 0x690a027a621db092 # initialize rs2
divw x14, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xc2e44c3aa71354c8 # initialize rs1
li x7, 0x468bd408887251cd # initialize rs2
divw x2, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x749700e2963a1803 # initialize rs1
li x25, 0xf8a2880dba199335 # initialize rs2
divw x12, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xff78cab4effb508c # initialize rs1
li x22, 0x34e267154513ffb8 # initialize rs2
divw x26, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x16822a9cbbd1abda # initialize rs1
li x17, 0x87c815fb6f376e67 # initialize rs2
divw x20, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x14134c7d4d91dfe7 # initialize rs1
li x25, 0x7efabafbde066553 # initialize rs2
divw x3, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x1dd95468b74ef214 # initialize rs1
li x29, 0x5a550441d7f7c9ad # initialize rs2
divw x15, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x84c6418848eba78a # initialize rs1
li x28, 0xd26a549db5d2ab3a # initialize rs2
divw x17, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x870c55de2f50b597 # initialize rs1
li x19, 0xd63bb42cbc2fd759 # initialize rs2
divw x17, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x00a57b97d214da98 # initialize rs1
li x22, 0xacfce1e551129e14 # initialize rs2
divw x23, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xb6ba61b9e250c594 # initialize rs1
li x14, 0xff287b21642b9093 # initialize rs2
divw x23, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x736f848a81cb4159 # initialize rs1
li x9, 0x433c54366de7efd7 # initialize rs2
divw x1, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x02d37d3bdaca4c48 # initialize rs1
li x31, 0x24598fdae15d0fb3 # initialize rs2
divw x7, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xfcb89670626b4576 # initialize rs1
li x7, 0xf50dd6cd65a57c4b # initialize rs2
divw x6, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x3ebf069bbacbcaa6 # initialize rs1
li x30, 0x885b88ac396cae85 # initialize rs2
divw x10, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x22, 0x85011a418dd33a68 # initialize rs1
li x0, 0x69e5073100b417c5 # initialize rs2
divw x28, x22, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x9, 0x02e2ac5fc43c565d # initialize rs1
li x1, 0x1b5d78ef4f382889 # initialize rs2
divw x22, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x30, 0xb7f2f14da8f44d1d # initialize rs1
li x2, 0xf7b541127360e759 # initialize rs2
divw x28, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x18, 0x22d858ea2db6d81d # initialize rs1
li x3, 0xcb565842bbeb9708 # initialize rs2
divw x19, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x2d01709b42fc6a26 # initialize rs1
li x4, 0xa7e7344a8f317a69 # initialize rs2
divw x17, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x3c7d765577276b5f # initialize rs1
li x5, 0xeceae81617ee6572 # initialize rs2
divw x6, x23, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
li x11, 0xdc11574709857e43 # initialize rs1
li x6, 0x5c67f84147b862ef # initialize rs2
divw x23, x11, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0xa4351c6bb826082a # initialize rs1
li x7, 0x06da5a7ec014de7c # initialize rs2
divw x23, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0xff4324c4ff7e78ca # initialize rs1
li x8, 0x05f9e0e61f6b703b # initialize rs2
divw x31, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x16, 0x04d1280deaa7c06b # initialize rs1
li x9, 0x65e40fd1175aa2f5 # initialize rs2
divw x26, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x14, 0x7b50804a7cfe23dd # initialize rs1
li x10, 0x804e5bbf1da54266 # initialize rs2
divw x23, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x16, 0xc617884a8807ad8c # initialize rs1
li x11, 0x2d02f1f5d273f916 # initialize rs2
divw x21, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x18, 0x7292ad3a4671ba13 # initialize rs1
li x12, 0x3f17da41f5b0aa0c # initialize rs2
divw x2, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x21, 0xca2b54e44e1db398 # initialize rs1
li x13, 0x89098a10b06e3bd2 # initialize rs2
divw x3, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0xe9393aa124df4375 # initialize rs1
li x14, 0x899b60ca399c94af # initialize rs2
divw x12, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x7, 0x7072a77922411b56 # initialize rs1
li x15, 0x4be1f7e333faf486 # initialize rs2
divw x11, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x10, 0x6e6f20c4ab8338bc # initialize rs1
li x16, 0x673752bf2e831494 # initialize rs2
divw x17, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x31, 0xce4b883202bdda12 # initialize rs1
li x17, 0x8c09455fa0bc73b0 # initialize rs2
divw x27, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x7, 0xfb1338ba4134c646 # initialize rs1
li x18, 0x3e5f5d522489e969 # initialize rs2
divw x24, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x7, 0xbba027dcca816ee6 # initialize rs1
li x19, 0x1c1a2445a25304f3 # initialize rs2
divw x13, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x8, 0xf5863f51b0a804ad # initialize rs1
li x20, 0xa325f24e8a996989 # initialize rs2
divw x3, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x20, 0xff869bb348b34306 # initialize rs1
li x21, 0x39454ce279bb0f7d # initialize rs2
divw x2, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x30, 0xb2ec22b535b36496 # initialize rs1
li x22, 0xd26444f0dd260b21 # initialize rs2
divw x11, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x1, 0x2553b8e53a047568 # initialize rs1
li x23, 0xa0b8b77f07918fdd # initialize rs2
divw x5, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x23, 0xf16166df63611e38 # initialize rs1
li x24, 0x04e70b58c3e8f49f # initialize rs2
divw x2, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x19, 0x936a28e511be069e # initialize rs1
li x25, 0xc477db46c9d5affc # initialize rs2
divw x8, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x17, 0xda5e4f6047e07483 # initialize rs1
li x26, 0xf0da2c66dbc3b9d0 # initialize rs2
divw x18, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x14, 0x5235cbdc62f2390e # initialize rs1
li x27, 0x64eae1acc1719a4e # initialize rs2
divw x18, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x2, 0x82915544d02f4d33 # initialize rs1
li x28, 0xc584dc21c9cc9de6 # initialize rs2
divw x15, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x18, 0x5c8a6ba6f23c928d # initialize rs1
li x29, 0x15872b100ebb1c83 # initialize rs2
divw x24, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x3, 0x88924101154d7869 # initialize rs1
li x30, 0x9b03815980eb3c55 # initialize rs2
divw x31, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x7, 0x054d98ae9039fb7a # initialize rs1
li x31, 0xf39feadcb1917b47 # initialize rs2
divw x17, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 504)

# Testcase cp_rd (Test destination rd = x0)
li x1, 0xe218f6fa4a854d3c # initialize rs1
li x28, 0xcdfc596d4ba96a44 # initialize rs2
divw x0, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x20, 0x4c5f925bde573b75 # initialize rs1
li x14, 0x9c835bfd46a77de1 # initialize rs2
divw x1, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0x79d0ca66298e01f5 # initialize rs1
li x8, 0x931dc22f8c3ae4c9 # initialize rs2
divw x2, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x19, 0x3cdbbc81c2282471 # initialize rs1
li x7, 0x6a0d1d673063b564 # initialize rs2
divw x3, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0x0f62032eb2925574 # initialize rs1
li x7, 0xc194f575b1f6ddd6 # initialize rs2
divw x4, x16, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x7c4d8eef120412b2 # initialize rs1
li x12, 0x24c3a41405170d59 # initialize rs2
divw x5, x18, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0x57864b992c48ecec # initialize rs1
li x10, 0xea705e7118043642 # initialize rs2
divw x6, x12, x10 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0xa4fdae6c515c8f48 # initialize rs1
li x29, 0xa6c80cfebea5cfb7 # initialize rs2
divw x7, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0x6cd73985003d5a4c # initialize rs1
li x15, 0x0884f43482ba0a59 # initialize rs2
divw x8, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0x9b3fa30e2ee239bf # initialize rs1
li x21, 0x5d27bc1cc15f2aa4 # initialize rs2
divw x9, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x5, 0x9311de9a1c5bdb78 # initialize rs1
li x20, 0x556b36b31aba1dba # initialize rs2
divw x10, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x27, 0xa3b36c82ca7afdba # initialize rs1
li x11, 0xf6deded5afe9a729 # initialize rs2
divw x11, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x22, 0x10989e912ea8d60f # initialize rs1
li x29, 0x97cbaaefece03cf2 # initialize rs2
divw x12, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x19, 0x447aec180860ad8c # initialize rs1
li x12, 0x3abb9acbe4602563 # initialize rs2
divw x13, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0x15b8eccc63d62588 # initialize rs1
li x29, 0x8cde8975069f0d71 # initialize rs2
divw x14, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x30, 0x3c1b03f76e410b0e # initialize rs1
li x8, 0xb452a0bcbc2907a2 # initialize rs2
divw x15, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x14, 0x8d519e44cc8ce2ab # initialize rs1
li x9, 0x4a731eb153001c75 # initialize rs2
divw x16, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x27, 0x33569719d10f0089 # initialize rs1
li x6, 0x2b52aab86f8ff597 # initialize rs2
divw x17, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x2, 0x77af35d962d3ef06 # initialize rs1
li x13, 0x5a30d17866288719 # initialize rs2
divw x18, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x7, 0x78844daf7af5f2b4 # initialize rs1
li x24, 0x46fab683e95a64db # initialize rs2
divw x19, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x24, 0x0ec20f0f53998e31 # initialize rs1
li x11, 0xa560aeef37a154e4 # initialize rs2
divw x20, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x23, 0x6cac4b4835535dd3 # initialize rs1
li x25, 0x30bb318077e2e149 # initialize rs2
divw x21, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x29, 0x603b18ee33400d5e # initialize rs1
li x18, 0xfd5ef395d858f968 # initialize rs2
divw x22, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x21, 0x794446e75038b458 # initialize rs1
li x6, 0x9fb3020b81a6b2ae # initialize rs2
divw x23, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x25, 0x0080c818f892e3cc # initialize rs1
li x26, 0x49f5dcfefea72f43 # initialize rs2
divw x24, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x20, 0x7a3b20bc0f5c5705 # initialize rs1
li x15, 0x02e38994305d3d4d # initialize rs2
divw x25, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x14, 0x439594779b212310 # initialize rs1
li x31, 0xa255db74146d30cc # initialize rs2
divw x26, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x26, 0x8becbb7642bdbbdf # initialize rs1
li x30, 0x1d6bc216e54cf2dc # initialize rs2
divw x27, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x13, 0xbadf06c7aef2c8e2 # initialize rs1
li x3, 0xea6c49506e3c3345 # initialize rs2
divw x28, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x6, 0x563f1dc04d4794ad # initialize rs1
li x3, 0xd25c53da62de8866 # initialize rs2
divw x29, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x12, 0x9124cda4efe4af60 # initialize rs1
li x7, 0x50257897bb9a28b8 # initialize rs2
divw x30, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x11, 0xc563c55d179ed338 # initialize rs1
li x21, 0x7968729e7489ecb1 # initialize rs2
divw x31, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x0000000000000000 # initialize rs1
li x31, 0x54f6f165a6cb880e # initialize rs2
divw x22, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x0000000000000001 # initialize rs1
li x8, 0xf4857e94ca367a25 # initialize rs2
divw x12, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0x0000000000000002 # initialize rs1
li x30, 0xc0bcddf7ce182189 # initialize rs2
divw x20, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x9, 0x8000000000000000 # initialize rs1
li x25, 0xfba026dccf146fe3 # initialize rs2
divw x13, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
li x31, 0x923efb6f552e2457 # initialize rs2
divw x18, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x30, 0x2320fa3a7040aef5 # initialize rs2
divw x28, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x16, 0x7ffffffffffffffe # initialize rs1
li x15, 0x0555baa1bb951f00 # initialize rs2
divw x20, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x31, 0xffffffffffffffff # initialize rs1
li x2, 0x47c78671f111ed3b # initialize rs2
divw x15, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x25, 0xfffffffffffffffe # initialize rs1
li x7, 0x6c8f8d0e9a5258f9 # initialize rs2
divw x21, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x1b53637b40eb36d8 # initialize rs2
divw x27, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xb826b40628d2e214 # initialize rs2
divw x12, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x14, 0x5555555555555555 # initialize rs1
li x2, 0x581193eccc441e89 # initialize rs2
divw x17, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x31, 0x00000000ffffffff # initialize rs1
li x28, 0x886c4771f130a6e7 # initialize rs2
divw x10, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x16, 0x00000000fffffffe # initialize rs1
li x11, 0x0a4be265f33f413e # initialize rs2
divw x14, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x10, 0x0000000100000000 # initialize rs1
li x27, 0x340a1dfa29f0c25a # initialize rs2
divw x23, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x23, 0x0000000100000001 # initialize rs1
li x27, 0x00d9737a0a198ab0 # initialize rs2
divw x11, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0xb1d5e720c447ce86 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
divw x18, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0x2276ba4ff0aa6bb9 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
divw x21, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x7, 0x22c689b0f00dc653 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
divw x25, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x22, 0xeaa3f2a33b5b60a9 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
divw x21, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0x39e3a38bb7715cbe # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
divw x30, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x29, 0xe8e41648c368314b # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
divw x26, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x13, 0x0c9b7ba641137ec1 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
divw x23, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x17, 0x42908203d2944080 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
divw x16, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x8, 0xcdf8da6d9a7931de # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
divw x17, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x26, 0x4106d635bd46dbe8 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
divw x9, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x6, 0xd23692f113c173e5 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x26, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x27, 0x49cb04e59710a9da # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
divw x20, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x26, 0x7be4b9602605cd90 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
divw x6, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x22, 0x9729032b8f020ad0 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
divw x21, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x24, 0x101f22f1a0e21d41 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
divw x2, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x28, 0x548a46604ed2ac69 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
divw x21, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x21, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
divw x13, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x3, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
divw x30, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x14, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
divw x20, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x6, 0x0000000000000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
divw x8, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x20, 0x0000000000000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
divw x7, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000000000000 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
divw x10, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x20, 0x0000000000000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
divw x12, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x1, 0x0000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
divw x24, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x22, 0x0000000000000000 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
divw x18, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000000000000 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
divw x3, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x0000000000000000 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x17, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x18, 0x0000000000000000 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
divw x13, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x8, 0x0000000000000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
divw x30, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
divw x25, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x27, 0x0000000000000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
divw x26, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x30, 0x0000000000000000 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
divw x19, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x17, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
divw x21, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x8, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
divw x19, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x24, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
divw x3, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x6, 0x0000000000000001 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
divw x16, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x1, 0x0000000000000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
divw x27, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
divw x13, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000000000001 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
divw x27, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000001 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
divw x13, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x17, 0x0000000000000001 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
divw x10, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x5, 0x0000000000000001 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
divw x11, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x0000000000000001 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x2, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x14, 0x0000000000000001 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
divw x22, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x29, 0x0000000000000001 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
divw x20, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x25, 0x0000000000000001 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
divw x29, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x16, 0x0000000000000001 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
divw x13, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x12, 0x0000000000000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
divw x29, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x23, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
divw x25, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x30, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
divw x14, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x30, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
divw x9, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x16, 0x0000000000000002 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
divw x5, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x17, 0x0000000000000002 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
divw x8, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
divw x21, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000000000002 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
divw x26, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000002 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
divw x19, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000000000002 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
divw x30, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x5, 0x0000000000000002 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
divw x16, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0000000000000002 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x21, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x18, 0x0000000000000002 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
divw x2, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x26, 0x0000000000000002 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
divw x5, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x26, 0x0000000000000002 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
divw x23, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x21, 0x0000000000000002 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
divw x26, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x27, 0x0000000000000002 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
divw x21, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x17, 0x8000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
divw x9, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x11, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
divw x6, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x31, 0x8000000000000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
divw x30, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x10, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
divw x6, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x1, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
divw x22, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x1, 0x8000000000000000 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
divw x23, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x20, 0x8000000000000000 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
divw x24, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x1, 0x8000000000000000 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
divw x31, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x19, 0x8000000000000000 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
divw x15, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x13, 0x8000000000000000 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
divw x20, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x8000000000000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x26, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x17, 0x8000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
divw x1, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x6, 0x8000000000000000 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
divw x5, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x8, 0x8000000000000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
divw x9, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x2, 0x8000000000000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
divw x8, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x10, 0x8000000000000000 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
divw x23, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x30, 0x8000000000000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
divw x28, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x7, 0x8000000000000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
divw x21, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x5, 0x8000000000000001 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
divw x18, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x24, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
divw x7, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x20, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
divw x1, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x6, 0x8000000000000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
divw x5, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x29, 0x8000000000000001 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
divw x10, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x18, 0x8000000000000001 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
divw x5, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x10, 0x8000000000000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
divw x16, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x27, 0x8000000000000001 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
divw x29, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x8000000000000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x21, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x16, 0x8000000000000001 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
divw x1, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x30, 0x8000000000000001 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
divw x10, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x8, 0x8000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
divw x17, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x10, 0x8000000000000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
divw x28, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x2, 0x8000000000000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
divw x21, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x17, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
divw x6, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x6, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
divw x2, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x16, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
divw x23, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x22, 0x7fffffffffffffff # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
divw x26, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x18, 0x7fffffffffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
divw x5, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x5, 0x7fffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
divw x20, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x8, 0x7fffffffffffffff # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
divw x1, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x16, 0x7fffffffffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
divw x11, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x15, 0x7fffffffffffffff # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
divw x9, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x28, 0x7fffffffffffffff # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
divw x22, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x7fffffffffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x3, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x23, 0x7fffffffffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
divw x29, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x16, 0x7fffffffffffffff # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
divw x26, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x25, 0x7fffffffffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
divw x26, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x11, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
divw x27, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x30, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
divw x5, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x21, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
divw x6, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x29, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
divw x31, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x29, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
divw x30, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x9, 0x7ffffffffffffffe # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
divw x15, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x1, 0x7ffffffffffffffe # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
divw x23, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x10, 0x7ffffffffffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
divw x15, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
divw x23, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
divw x28, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x20, 0x7ffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
divw x30, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x25, 0x7ffffffffffffffe # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
divw x24, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x7ffffffffffffffe # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x29, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x2, 0x7ffffffffffffffe # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
divw x24, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x3, 0x7ffffffffffffffe # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
divw x29, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
divw x10, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x27, 0x7ffffffffffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
divw x22, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x26, 0x7ffffffffffffffe # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
divw x21, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x26, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
divw x25, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x13, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
divw x28, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x20, 0xffffffffffffffff # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
divw x30, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x2, 0xffffffffffffffff # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
divw x23, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x20, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
divw x3, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
divw x15, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
divw x20, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
divw x23, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x17, 0xffffffffffffffff # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
divw x1, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x25, 0xffffffffffffffff # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
divw x21, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xffffffffffffffff # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x17, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x5, 0xffffffffffffffff # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
divw x30, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x15, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
divw x7, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x19, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
divw x14, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x19, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
divw x31, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x22, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
divw x20, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x12, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
divw x5, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x7, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
divw x22, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x25, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
divw x12, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x7, 0xfffffffffffffffe # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
divw x12, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x13, 0xfffffffffffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
divw x1, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x10, 0xfffffffffffffffe # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
divw x7, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x25, 0xfffffffffffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
divw x31, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0xfffffffffffffffe # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
divw x24, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x2, 0xfffffffffffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
divw x6, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x22, 0xfffffffffffffffe # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
divw x2, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xfffffffffffffffe # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x19, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x15, 0xfffffffffffffffe # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
divw x10, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x29, 0xfffffffffffffffe # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
divw x26, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x25, 0xfffffffffffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
divw x5, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x31, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
divw x27, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x27, 0xfffffffffffffffe # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
divw x16, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
divw x11, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
divw x1, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
divw x16, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
divw x27, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
divw x17, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
divw x11, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
divw x25, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
divw x30, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
divw x31, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
divw x2, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x29, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
divw x10, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
divw x23, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
divw x29, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
divw x20, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
divw x26, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
divw x25, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
divw x1, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
divw x24, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
divw x3, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
divw x6, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
divw x17, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
divw x9, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
divw x25, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
divw x9, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
divw x18, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x9, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
divw x8, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
divw x19, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
divw x18, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
divw x9, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
divw x28, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x1, 0x5555555555555555 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
divw x6, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x27, 0x5555555555555555 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
divw x30, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x30, 0x5555555555555555 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
divw x2, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x12, 0x5555555555555555 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
divw x16, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x20, 0x5555555555555555 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
divw x31, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x29, 0x5555555555555555 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
divw x19, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x20, 0x5555555555555555 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
divw x23, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x30, 0x5555555555555555 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
divw x21, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x30, 0x5555555555555555 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
divw x8, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x15, 0x5555555555555555 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
divw x6, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x5555555555555555 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x23, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x15, 0x5555555555555555 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
divw x19, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x27, 0x5555555555555555 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
divw x9, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x22, 0x5555555555555555 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
divw x9, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x30, 0x5555555555555555 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
divw x20, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x11, 0x5555555555555555 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
divw x6, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x11, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
divw x24, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x11, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
divw x21, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x29, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
divw x8, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x3, 0x00000000ffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
divw x19, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x24, 0x00000000ffffffff # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
divw x3, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x26, 0x00000000ffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
divw x25, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x21, 0x00000000ffffffff # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
divw x17, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x26, 0x00000000ffffffff # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
divw x12, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x15, 0x00000000ffffffff # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
divw x6, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x23, 0x00000000ffffffff # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
divw x31, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x00000000ffffffff # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x12, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x16, 0x00000000ffffffff # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
divw x30, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x19, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
divw x13, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x22, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
divw x14, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x1, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
divw x9, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x1, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
divw x18, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x25, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
divw x31, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x30, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
divw x22, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x2, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
divw x11, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x10, 0x00000000fffffffe # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
divw x19, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x23, 0x00000000fffffffe # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
divw x2, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x24, 0x00000000fffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
divw x9, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x12, 0x00000000fffffffe # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
divw x13, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x5, 0x00000000fffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
divw x9, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
divw x21, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0x00000000fffffffe # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
divw x8, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x00000000fffffffe # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x29, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x26, 0x00000000fffffffe # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
divw x7, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x1, 0x00000000fffffffe # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
divw x30, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x31, 0x00000000fffffffe # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
divw x9, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x11, 0x00000000fffffffe # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
divw x22, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x24, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
divw x5, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x23, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
divw x21, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x16, 0x0000000100000000 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
divw x28, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x19, 0x0000000100000000 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
divw x11, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x31, 0x0000000100000000 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
divw x14, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x18, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
divw x5, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x20, 0x0000000100000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
divw x9, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000100000000 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
divw x3, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x13, 0x0000000100000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
divw x25, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x6, 0x0000000100000000 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
divw x18, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000100000000 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
divw x16, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000000 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x19, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x23, 0x0000000100000000 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
divw x6, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x10, 0x0000000100000000 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
divw x28, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x6, 0x0000000100000000 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
divw x1, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x3, 0x0000000100000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
divw x17, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x30, 0x0000000100000000 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
divw x26, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x19, 0x0000000100000001 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
divw x7, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x25, 0x0000000100000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
divw x10, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x30, 0x0000000100000001 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
divw x18, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x30, 0x0000000100000001 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
divw x23, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x10, 0x0000000100000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
divw x2, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x20, 0x0000000100000001 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
divw x29, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000100000001 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
divw x31, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x25, 0x0000000100000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
divw x30, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x8, 0x0000000100000001 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
divw x23, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000100000001 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
divw x21, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0000000100000001 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
divw x18, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x31, 0x0000000100000001 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
divw x7, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x3, 0x0000000100000001 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
divw x25, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x22, 0x0000000100000001 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
divw x14, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x2, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
divw x27, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x10, 0x0000000100000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
divw x29, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xc59e6e8631973acd # initialize rs1
li x0, 0xba61e9b2acdad3b0 # initialize rs2
divw x20, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x63eb18af7aaa6e20 # initialize rs1
li x1, 0x880ca1c9d2d179e8 # initialize rs2
divw x24, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xdbf70fb47795e3d9 # initialize rs1
li x2, 0x50b58f5646cfe039 # initialize rs2
divw x10, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x8b2c68176214c50f # initialize rs1
li x3, 0x9fc2040c680bc4bc # initialize rs2
divw x5, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xcced7d56e11be486 # initialize rs1
li x4, 0x7a0ee023f5f3bc0a # initialize rs2
divw x11, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdda004641a4ba3ed # initialize rs1
li x5, 0x9606255a3b970c9a # initialize rs2
divw x9, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3a0cdba649e35128 # initialize rs1
li x6, 0x0a89aeeb08bca8f6 # initialize rs2
divw x9, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe6df2d027207435b # initialize rs1
li x7, 0x7b6e6e455039c8f9 # initialize rs2
divw x25, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x4e81baf90cbb2017 # initialize rs1
li x8, 0xe7a08c2814973f9c # initialize rs2
divw x18, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xcc49f4f9face286f # initialize rs1
li x9, 0x8dbc892d6bbcd010 # initialize rs2
divw x23, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x48013bf5bec98165 # initialize rs1
li x10, 0x7b58feaec7292ad6 # initialize rs2
divw x8, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x252fdb6a58deb91d # initialize rs1
li x11, 0x56e67f8c729bdf1b # initialize rs2
divw x12, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x383c444a64f5b9e3 # initialize rs1
li x12, 0xb90db1578d11ff22 # initialize rs2
divw x1, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xe12af257ec3ed3f6 # initialize rs1
li x13, 0xb4de49abb2ea26a3 # initialize rs2
divw x14, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xdd5bd54ecde88ea3 # initialize rs1
li x14, 0x72fcf6f117986447 # initialize rs2
divw x5, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xe64473cd73009f8c # initialize rs1
li x15, 0xf791da27330e6c41 # initialize rs2
divw x20, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x028e2495bb4c6b57 # initialize rs1
li x16, 0x7f13efb2390378b6 # initialize rs2
divw x28, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x145d378803a5855f # initialize rs1
li x17, 0x1293f604db74c283 # initialize rs2
divw x10, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x191c9f167b7d1c54 # initialize rs1
li x18, 0xcbd21807f976e47a # initialize rs2
divw x17, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x4a0b6dd285ddf7ff # initialize rs1
li x19, 0xaf89eb8b6842f86e # initialize rs2
divw x28, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x41620482bbd35f9c # initialize rs1
li x20, 0xf17267073abb21ed # initialize rs2
divw x6, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x5950d7e6dac06449 # initialize rs1
li x21, 0x72897e02c780aa63 # initialize rs2
divw x1, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd828e9266c8cce60 # initialize rs1
li x22, 0xd476505eacf6cc6f # initialize rs2
divw x23, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x1214d75ee39f99e2 # initialize rs1
li x23, 0xc0558aa176ae2b7f # initialize rs2
divw x22, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x70d6e0ef5bfa7a86 # initialize rs1
li x24, 0x9a7149d74d3cdd58 # initialize rs2
divw x13, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xa4d07710841af4b8 # initialize rs1
li x25, 0xb099a9a0964190d3 # initialize rs2
divw x18, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xf0c22baab5a0f65f # initialize rs1
li x26, 0x23b376eb05c8f9ed # initialize rs2
divw x14, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xf03e989dcff8d762 # initialize rs1
li x27, 0x421db4bcd405c4d9 # initialize rs2
divw x30, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x78493051702bcee3 # initialize rs1
li x28, 0x08263e85b457c074 # initialize rs2
divw x24, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x4bb3dfe90389d8d9 # initialize rs1
li x29, 0xa61621ee9425e637 # initialize rs2
divw x2, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x1585266c714c155d # initialize rs1
li x30, 0x89361e4d55db3603 # initialize rs2
divw x29, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xb0c4a48943b23908 # initialize rs1
li x31, 0xbf4167f52ade4a04 # initialize rs2
divw x15, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x441ffcdc4a3023f5 # initialize rs1
li x5, 0x2238e2084f9386e6 # initialize rs2
divw x0, x0, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x2b90a1b6ac5ee6ad # initialize rs1
li x30, 0x0fa1fc2d7f1f64e7 # initialize rs2
divw x1, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x9f470947e63538ee # initialize rs1
li x1, 0xc7028847d52cfaa9 # initialize rs2
divw x2, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x49feebc6fcc9b7e9 # initialize rs1
li x7, 0xf3289afaa0b0efbf # initialize rs2
divw x3, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1b4db8ad9615890e # initialize rs1
li x13, 0x56923aa97f39a224 # initialize rs2
divw x4, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf72f43f451300821 # initialize rs1
li x19, 0x2050519ebaba0683 # initialize rs2
divw x5, x5, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x09b630dc6aaabb5f # initialize rs1
li x12, 0x065895eb3ec8fd3d # initialize rs2
divw x6, x6, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x054be0624bb38f06 # initialize rs1
li x3, 0x0f34dfa213a0675a # initialize rs2
divw x7, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x45bcef76d79df9dd # initialize rs1
li x10, 0xf97e37480df1119d # initialize rs2
divw x8, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa77d494ebfc04167 # initialize rs1
li x27, 0x5427d116b24a46d7 # initialize rs2
divw x9, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x231a39b0c14f0152 # initialize rs1
li x5, 0x172ee78b0f4993ec # initialize rs2
divw x10, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xece92aa8966e7dac # initialize rs1
li x14, 0x315dfac1118b777d # initialize rs2
divw x11, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xc7e9629964c9b0d5 # initialize rs1
li x8, 0xbe951795b2c5e069 # initialize rs2
divw x12, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x960a7cbf26925a51 # initialize rs1
li x22, 0x3010b346af604fb7 # initialize rs2
divw x13, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xb1e502248e36b183 # initialize rs1
li x31, 0xceb81200d6952fd5 # initialize rs2
divw x14, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x3855815f3b39179b # initialize rs1
li x6, 0xe8ef4c8a72ec9b05 # initialize rs2
divw x15, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x26b2a31a52692dc2 # initialize rs1
li x10, 0x34cdb695d8547130 # initialize rs2
divw x16, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x3ada12de892b8200 # initialize rs1
li x5, 0x41853015b7e7b5aa # initialize rs2
divw x17, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xefce05cdfe364aff # initialize rs1
li x30, 0x91376279c6855d9f # initialize rs2
divw x18, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xea09cf0dd94d2e35 # initialize rs1
li x19, 0x054c94cfb93c14d7 # initialize rs2
divw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x562894a9fac4a626 # initialize rs1
li x28, 0x64d1ebc33026dbd7 # initialize rs2
divw x20, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x7dd858740ac3c8be # initialize rs1
li x31, 0xa9603885391f617a # initialize rs2
divw x21, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6faa93fc2521b9e9 # initialize rs1
li x27, 0x11bf4e2d23e44841 # initialize rs2
divw x22, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xdc59e0834ed90c5b # initialize rs1
li x5, 0xfe5905a4825e2af3 # initialize rs2
divw x23, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x4abd68d410ec13f4 # initialize rs1
li x10, 0x3a4ed63bb46a3141 # initialize rs2
divw x24, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xc623db309d56cb64 # initialize rs1
li x17, 0x8a94a627c673642b # initialize rs2
divw x25, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x79ff7bdeff2e8ac0 # initialize rs1
li x22, 0x7c94ecdb8ac00031 # initialize rs2
divw x26, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x2f581b6f815163ca # initialize rs1
li x24, 0x5aa4bfd8d3182b59 # initialize rs2
divw x27, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xafc5d1f8efa1cb76 # initialize rs1
li x18, 0xb9d54f348837ee90 # initialize rs2
divw x28, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x35655214a7338f45 # initialize rs1
li x14, 0x15efa7406bad6c73 # initialize rs2
divw x29, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x63b52b4ed3a597f7 # initialize rs1
li x18, 0x6d112210f6344aea # initialize rs2
divw x30, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x1b4a5aa06e2aea9f # initialize rs1
li x8, 0x23cec373cd6ce4bf # initialize rs2
divw x31, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x7, 0xab5f4649790ab5f4 # initialize rs1
li x0, 0x968f239f6eb03fd5 # initialize rs2
divw x0, x7, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x6, 0xb8e3942e08f7b6e2 # initialize rs1
li x1, 0xeb582f61bc7c6aea # initialize rs2
divw x1, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x22, 0xb588a3d857009abe # initialize rs1
li x2, 0xadd35529726d1097 # initialize rs2
divw x2, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x1, 0x6b5566ca6ca65446 # initialize rs1
li x3, 0x60c0850a223ccacc # initialize rs2
divw x3, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0xe58603689bfed9bb # initialize rs1
li x4, 0xa3121e92b7a88323 # initialize rs2
divw x4, x3, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x6dc975eb2fa01cbb # initialize rs1
li x5, 0x48ea45c8579f79e7 # initialize rs2
divw x5, x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x260d7d0fb8cebb97 # initialize rs1
li x6, 0xc078a2c212c491ca # initialize rs2
divw x6, x1, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0xc4ce665c2a309e40 # initialize rs1
li x7, 0x753332cd52d708c5 # initialize rs2
divw x7, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x25, 0x1877d9f83b602a7b # initialize rs1
li x8, 0x9e159c602278ec16 # initialize rs2
divw x8, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x19, 0xd1f7fc60b1c8aadb # initialize rs1
li x9, 0xfa0616bfb9a20a97 # initialize rs2
divw x9, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x9, 0xe5584b1cd5c59890 # initialize rs1
li x10, 0xfdf65a3c66ea4a2d # initialize rs2
divw x10, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x6, 0x5778d4b225fd297e # initialize rs1
li x11, 0x3eaa4d04f1036416 # initialize rs2
divw x11, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x3, 0x593a888a4b3fef19 # initialize rs1
li x12, 0x5f808b66c6fa4d65 # initialize rs2
divw x12, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x26, 0x99f623ceeeb3f4c5 # initialize rs1
li x13, 0x77e1db4bde9fe4ac # initialize rs2
divw x13, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x19, 0xd9757c0ac40c2632 # initialize rs1
li x14, 0x265fe4e4c82efd2b # initialize rs2
divw x14, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x26, 0x6140bb08c595e4f6 # initialize rs1
li x15, 0x5a550d3a9a32966c # initialize rs2
divw x15, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x9, 0x2725f0cac4cbc017 # initialize rs1
li x16, 0x9d403bf79db629d4 # initialize rs2
divw x16, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x29, 0x0e6cbd7562ee1d16 # initialize rs1
li x17, 0x525a3f013e854275 # initialize rs2
divw x17, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x30, 0x0d2af57ff6787158 # initialize rs1
li x18, 0x5906df976c9bd239 # initialize rs2
divw x18, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x31, 0xa242e3ce48a51d5d # initialize rs1
li x19, 0xa3a51afa777cc7f0 # initialize rs2
divw x19, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x19, 0xd4d2a8c06cac36fc # initialize rs1
li x20, 0x7050edd97539f048 # initialize rs2
divw x20, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x26, 0x8c48ab19e8cd8ddd # initialize rs1
li x21, 0xbd9a59540712a86c # initialize rs2
divw x21, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x31, 0x6c9eab946f68048e # initialize rs1
li x22, 0xceb29ca5c820ed6b # initialize rs2
divw x22, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x25, 0x5ef91181002d4a3d # initialize rs1
li x23, 0x334b1a8df7625de0 # initialize rs2
divw x23, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x13, 0xeb266c2642469f00 # initialize rs1
li x24, 0x382aabfad37b4456 # initialize rs2
divw x24, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x18, 0x20905d8f308476fc # initialize rs1
li x25, 0x8ca7746715c6d1ec # initialize rs2
divw x25, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x24, 0x67674bab89cf35d0 # initialize rs1
li x26, 0xb495ff90f7a8ea7a # initialize rs2
divw x26, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x9, 0x70ed230f11fd9b3c # initialize rs1
li x27, 0x3adb6b797db3f359 # initialize rs2
divw x27, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x31, 0x227efb62cb70ec68 # initialize rs1
li x28, 0xd92f99a6d098aab9 # initialize rs2
divw x28, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x6, 0x673fc1a043f88204 # initialize rs1
li x29, 0xa97a6e5c6a8af673 # initialize rs2
divw x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x29, 0x3690b1991abc5076 # initialize rs1
li x30, 0x571970284c521bf6 # initialize rs2
divw x30, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x2, 0x6120f3a80cd62f06 # initialize rs1
li x31, 0x7ec41f2bba044d70 # initialize rs2
divw x31, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xf8477c5276957dac # initialize rs1
li x0, 0x781e635fece4ee93 # initialize rs2
divw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x9dddbe93a956c351 # initialize rs1
li x1, 0xfe94ed3fafff9d01 # initialize rs2
divw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x5a63c54662145839 # initialize rs1
li x2, 0x5b20cead8d0fcd3c # initialize rs2
divw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x9c6e7ce8040491b3 # initialize rs1
li x3, 0xe8df4a0515ed30aa # initialize rs2
divw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x726675f59ab8d70b # initialize rs1
li x4, 0x538c99d6089aa353 # initialize rs2
divw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0bd2896c522aa652 # initialize rs1
li x5, 0x9700ecc1b037d1af # initialize rs2
divw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xff929ba822c4312f # initialize rs1
li x6, 0xc1237418937dfa3b # initialize rs2
divw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x90f332e6519e9030 # initialize rs1
li x7, 0xcf97af8a043cf011 # initialize rs2
divw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x29bcd341ff5cdb94 # initialize rs1
li x8, 0x0526ef5a597a1db5 # initialize rs2
divw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x9d08cb6f85bdda1c # initialize rs1
li x9, 0x43036e431f96c56c # initialize rs2
divw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xabeb883aab56548b # initialize rs1
li x10, 0xd0530bad0a89f434 # initialize rs2
divw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x7901c78f2b87bee2 # initialize rs1
li x11, 0xcc0f0c6ceb816206 # initialize rs2
divw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x85c30a5a1eb4ad22 # initialize rs1
li x12, 0x817b2b2cdd75ede1 # initialize rs2
divw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xea716af944cd087f # initialize rs1
li x13, 0x2767dda0d66974cc # initialize rs2
divw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x534ed44438a4db4d # initialize rs1
li x14, 0x4ccdf4cf65c3f67e # initialize rs2
divw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x79b1247692b31dcd # initialize rs1
li x15, 0xa2be5af29cf098bc # initialize rs2
divw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x493c5c57ec22b3f8 # initialize rs1
li x16, 0x21a2b4a883de8c91 # initialize rs2
divw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xca39f962959597f0 # initialize rs1
li x17, 0x191845af26503779 # initialize rs2
divw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xf5b65027e511fb87 # initialize rs1
li x18, 0x296ee65a7001fef2 # initialize rs2
divw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xa6b2029ca439213d # initialize rs1
li x19, 0x404ed83f6e5c48d7 # initialize rs2
divw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x655c6aadb69c3342 # initialize rs1
li x20, 0x90592e5a30bab88d # initialize rs2
divw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xe85d6bc1739d29ca # initialize rs1
li x21, 0x28868cba55b326b6 # initialize rs2
divw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x94b00ed109b9cd19 # initialize rs1
li x22, 0x89e7c0c82a8ed97a # initialize rs2
divw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x577c2bcb2749f70d # initialize rs1
li x23, 0x7ecab303fcc36a37 # initialize rs2
divw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xd940075e3c11c8e6 # initialize rs1
li x24, 0x2144830ccde65876 # initialize rs2
divw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xe36dbf617d870118 # initialize rs1
li x25, 0x0e555b9da224a67e # initialize rs2
divw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xa42ecf40559f26b2 # initialize rs1
li x26, 0xbce37ab2e31a411d # initialize rs2
divw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x341161c61c02d1b2 # initialize rs1
li x27, 0x2334d4fd55bcff59 # initialize rs2
divw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xeb27c19895de966b # initialize rs1
li x28, 0x535aeb72539ea015 # initialize rs2
divw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x16a2b9b61327faf4 # initialize rs1
li x29, 0xc3ff1e8ceb29800a # initialize rs2
divw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xd0fcc2f1add0476f # initialize rs1
li x30, 0xa660c01a94a35c83 # initialize rs2
divw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x235cad44cd0f3f90 # initialize rs1
li x31, 0x1ae4ec96e917770c # initialize rs2
divw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x26, x18 # perform first operation
divw x28, x1, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x24, x31 # perform first operation
divw x10, x1, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x3, x17 # perform first operation
divw x6, x15, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x8, x10 # perform first operation
divw x23, x23, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x9, x15 # perform first operation
divw x15, x21, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x19, x3 # perform first operation
divw x3, x14, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x14, x20 # perform first operation
divw x30, x6, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x5, x2 # perform first operation
divw x9, x15, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x25, x19 # perform first operation
divw x11, x1, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x16, x25 # perform first operation
divw x16, x5, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x25, x15 # perform first operation
divw x15, x1, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x17, x6 # perform first operation
divw x5, x16, x2 # perform second (triggering) operation

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
