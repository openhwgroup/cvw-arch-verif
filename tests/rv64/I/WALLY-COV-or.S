///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-or.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.485177
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xa9f46d1e07c5226d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x78755ed46f0e548c # initialize rs1
li x18, 0x46cd90a120b2863f # initialize rs2
or x0, x20, x18 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x940332ba245ea0eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfbfd46db1b990ccf # initialize rs1
li x23, 0x46bba736840fc579 # initialize rs2
or x1, x4, x23 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x53b26a06543f0888 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xce30ec7479e585ec # initialize rs1
li x14, 0xd0a56fceb0bbf0e7 # initialize rs2
or x2, x24, x14 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x36ed8761a7d0ae14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2c734e096d204879 # initialize rs1
li x7, 0xe6be512e3498c600 # initialize rs2
or x3, x9, x7 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x29f2f35de032542b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa0b83854626b4215 # initialize rs1
li x5, 0x3b755da11589c354 # initialize rs2
or x4, x10, x5 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x595ffbcd1a937b8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x162a29ca3ca4022d # initialize rs1
li x19, 0x1fbd1ffd221eb6e6 # initialize rs2
or x5, x4, x19 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xc83f477352c7b7ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb91cec087680f8bc # initialize rs1
li x19, 0x12caa1c29fde23c6 # initialize rs2
or x6, x2, x19 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xc9d1f0aae265ea54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8296a6ee07e6a88f # initialize rs1
li x16, 0x781824d9b9c327da # initialize rs2
or x7, x18, x16 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2dfce2d33711d8e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x626661fd88cb3f3f # initialize rs1
li x16, 0xcb92fd80d99c16f1 # initialize rs2
or x8, x29, x16 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe72c4cf4aeedb38a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x68625f689ccb4583 # initialize rs1
li x2, 0x1d17e1406b32c70c # initialize rs2
or x9, x21, x2 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xa327f609f0e81f21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xdb95f002ac013cc8 # initialize rs1
li x20, 0x70d3e2343cb7aecf # initialize rs2
or x10, x5, x20 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xfe56c1120bc4d98e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x62a6576152596be0 # initialize rs1
li x25, 0x5c961da7665938d1 # initialize rs2
or x11, x28, x25 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x6600c144c1999928 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd50367228c4799a4 # initialize rs1
li x30, 0x2e8f34fe67ec6e38 # initialize rs2
or x12, x4, x30 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb1432e9633841a7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x75447faf1e41d6b5 # initialize rs1
li x30, 0x5711d6cc8359a284 # initialize rs2
or x13, x13, x30 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x900f0b54b4a4c126 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x99566d8bd6baaa2c # initialize rs1
li x25, 0x88ee5bf39036351f # initialize rs2
or x14, x11, x25 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x98fac6f66220826a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4e5c634963d0a073 # initialize rs1
li x24, 0x35fc6e13b99c8cd9 # initialize rs2
or x15, x22, x24 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xa948297608f7201f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x559aa053eb6df825 # initialize rs1
li x22, 0xe5265a0957741351 # initialize rs2
or x16, x30, x22 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xef57d8ada67b3b25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8c1388c4b030bbcf # initialize rs1
li x14, 0x06a68b9909fae8c6 # initialize rs2
or x17, x10, x14 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x3ee50f852877851d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xedf6a26e9ccffb8c # initialize rs1
li x5, 0x1d77f9b79d9770e6 # initialize rs2
or x18, x16, x5 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x65e7f845114dfbbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa88d26b6d5538646 # initialize rs1
li x15, 0x1057caf05aacdf7a # initialize rs2
or x19, x21, x15 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x89905a653fd320fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa24e605f6a0548e2 # initialize rs1
li x1, 0xb69af30a77af1cb6 # initialize rs2
or x20, x21, x1 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x718c03b3da989478 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5a4774b51e21e016 # initialize rs1
li x31, 0x20f41374bce73757 # initialize rs2
or x21, x5, x31 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x047ae02346efeeec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xe3bd6b1f7d678ebc # initialize rs1
li x2, 0xeb5aa613cc058cfb # initialize rs2
or x22, x25, x2 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x88f36a56785aa59a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x12e8a64fdb8cf7df # initialize rs1
li x31, 0xee887de073f74666 # initialize rs2
or x23, x4, x31 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xa36f90482d8eb05e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x019ef9163a8d0766 # initialize rs1
li x22, 0x733f2902af176877 # initialize rs2
or x24, x15, x22 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xc81eb11592c7981f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x81149f89fe26ac5a # initialize rs1
li x16, 0x8845c7fedaf83fd0 # initialize rs2
or x25, x29, x16 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x06c29f74f242f2a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x38d5ed84c2cb6209 # initialize rs1
li x24, 0x44be780db02944ba # initialize rs2
or x26, x27, x24 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x3dbbd177c5ac8dd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa05eafeebe996596 # initialize rs1
li x5, 0xd6530ca14d84d2af # initialize rs2
or x27, x21, x5 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xe60cb43f4b86c61f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb66279be32e2bc84 # initialize rs1
li x20, 0xd4d345b38e12e704 # initialize rs2
or x28, x10, x20 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x155d1378b0cd8548 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0ca9dd80877fbc04 # initialize rs1
li x16, 0xdf69182150f738e9 # initialize rs2
or x29, x5, x16 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x4593c5c99a3d9acd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2dccee1c5cc8dee3 # initialize rs1
li x1, 0x206a072202acd211 # initialize rs2
or x30, x14, x1 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x7d9ef1d9f387a01b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x43c876ed68da0306 # initialize rs1
li x21, 0xc142c4f497ae2f05 # initialize rs2
or x31, x8, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x6, 0x9014f63f15d2f403 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd12f128073fec834 # initialize rs1
li x26, 0x7d94ee21e3b9ffeb # initialize rs2
or x6, x0, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x4, 0x7aa288c141916f92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0c388644e9704496 # initialize rs1
li x18, 0x20c860911e165ef4 # initialize rs2
or x4, x1, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x19, 0xbc700dd32ad66845 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x048716a930a54cd8 # initialize rs1
li x3, 0x2b4ad110ef533ba3 # initialize rs2
or x19, x2, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x4, 0x14d499d039a58060 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x27ddd94c60aced41 # initialize rs1
li x17, 0x4efcbb46c448e6f8 # initialize rs2
or x4, x3, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x6, 0xaa19cd171fd1479f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x4e7f935a5b8ae535 # initialize rs1
li x25, 0xef4de896b862fa27 # initialize rs2
or x6, x4, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x6, 0x245d03191fc4c0e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x9f3969b4ddd89d68 # initialize rs1
li x9, 0x9a8ec11d1bf04ff6 # initialize rs2
or x6, x5, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x3, 0x6a56520e85769209 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x60ccf2cf2659d049 # initialize rs1
li x23, 0xb7d05f63379a9803 # initialize rs2
or x3, x6, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x19, 0x7976188c2566ac69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc7a8a6da98585e2a # initialize rs1
li x24, 0x35607e5a36c12202 # initialize rs2
or x19, x7, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x19, 0xca5e20a297b26e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5367ac35418a4a95 # initialize rs1
li x24, 0x8f3b70a6428fe604 # initialize rs2
or x19, x8, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x25, 0xeed7c53cb00ee1c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5cde3c59ecdde969 # initialize rs1
li x5, 0xbb92e064f2ffffe2 # initialize rs2
or x25, x9, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x18, 0x65d7db8a2d14c2d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf11a914b79e03820 # initialize rs1
li x6, 0x5054b146f3e35420 # initialize rs2
or x18, x10, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x2, 0xd83c13fa1e621056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2a1b03235fcf5307 # initialize rs1
li x5, 0x37eb5cc657ea3b1a # initialize rs2
or x2, x11, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x19, 0x4686652d46043b31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6544b6b4029501b4 # initialize rs1
li x31, 0x20931e8708a2c0a3 # initialize rs2
or x19, x12, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x26, 0x02147e08d5edc633 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa2aae895555ef080 # initialize rs1
li x24, 0x879db6911cbff1c8 # initialize rs2
or x26, x13, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x30, 0x2ae3ef6351db3162 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3dc0ab5a1e3a1d7c # initialize rs1
li x15, 0x7ef5a511df2f346b # initialize rs2
or x30, x14, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x31, 0xc5c100363fb44c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf736f3a09bfe4e9a # initialize rs1
li x20, 0x267306067801d8fc # initialize rs2
or x31, x15, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x21, 0xa751d20d5d18caf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8a9bb8519aaf7522 # initialize rs1
li x5, 0x19851c4b3fd3a578 # initialize rs2
or x21, x16, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x1, 0x1d8177dbf349342d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x73ba2f02a33ed22a # initialize rs1
li x28, 0x0dc42df169647d20 # initialize rs2
or x1, x17, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x15, 0xb81f102bd0e5566f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xbf28af13372524e0 # initialize rs1
li x11, 0xb1bb183df3460835 # initialize rs2
or x15, x18, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x29, 0x79b6ebb042830a2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe47003ff945a28ce # initialize rs1
li x5, 0x4af1c687c221470b # initialize rs2
or x29, x19, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x5, 0x90be964721a860cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xca8a0a12c0d3f937 # initialize rs1
li x13, 0x7bbe76d44dbc0564 # initialize rs2
or x5, x20, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x12, 0x70927fc025cefe69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1a4fe5706c684f4d # initialize rs1
li x19, 0x470c55cb5cec0808 # initialize rs2
or x12, x21, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x18, 0x55f1626074c28c6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1648c7852a014dc5 # initialize rs1
li x11, 0x7c3073aee0441361 # initialize rs2
or x18, x22, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x31, 0x7ca6945a174abc0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7500f0dfef7afc46 # initialize rs1
li x16, 0x6b306ddad202939b # initialize rs2
or x31, x23, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x16, 0xf362afb80a06ba46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x55c91156a956a087 # initialize rs1
li x1, 0xd3422f485e108a70 # initialize rs2
or x16, x24, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x11, 0x97ab1c37aebb25e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xafb612586505dbb9 # initialize rs1
li x24, 0xb53f8a3d67f28073 # initialize rs2
or x11, x25, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x3, 0xdb8bace62e1b08df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00dd9041e38a4bd2 # initialize rs1
li x25, 0x0639ac103afd40f1 # initialize rs2
or x3, x26, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x4, 0x9254af065640a9ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf4538f91a49806f0 # initialize rs1
li x20, 0x1095447e5a6e6d24 # initialize rs2
or x4, x27, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x30, 0xfb081aad6b1c90a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8ca22eb0845acbdc # initialize rs1
li x19, 0xbfb6403a2f9eab33 # initialize rs2
or x30, x28, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x17, 0x4cae04c2e282a6bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbbc8c794c8175c62 # initialize rs1
li x19, 0xce775c3f45624581 # initialize rs2
or x17, x29, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x29, 0xa2d5bf51ada39f42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xcc023fa4c56eb0fa # initialize rs1
li x26, 0x61ff462cb475cc69 # initialize rs2
or x29, x30, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x10, 0x53817802fd7ecf66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf40b93c815de7521 # initialize rs1
li x6, 0x2904fc03bd1f7005 # initialize rs2
or x10, x31, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x26, 0x2c7ada2279eda414 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xde7fa50ee99becc0 # initialize rs1
li x0, 0x694eb84521fcd3eb # initialize rs2
or x26, x29, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x13, 0xaa721f1d4c002b15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xccb61f99a2cc3e96 # initialize rs1
li x1, 0x5f323cc7326fe997 # initialize rs2
or x13, x29, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0xd981aca831372409 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa262006f5531d8ac # initialize rs1
li x2, 0xad9ae13bf8f8222d # initialize rs2
or x3, x1, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x8, 0x4e9cc2f40c339e44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8f22b77e36da3f6e # initialize rs1
li x3, 0x59b8bce01ce63321 # initialize rs2
or x8, x7, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x9, 0xc17150c91e26a7ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x294eb5379f51e0f4 # initialize rs1
li x4, 0x7d42a8cb4f261390 # initialize rs2
or x9, x23, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x27, 0x9c679d6924749003 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd9e75fc6b689a9a6 # initialize rs1
li x5, 0xeb22e1405cc2b6df # initialize rs2
or x27, x13, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x8, 0x1b7c6b19a842e842 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2d44010314f4467c # initialize rs1
li x6, 0x021383ac9a7b3ccb # initialize rs2
or x8, x15, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x13, 0x9dd1893c2b78d724 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9769573aba72d58b # initialize rs1
li x7, 0xb50ea1aba8ddc762 # initialize rs2
or x13, x11, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0x02a71a69c30f1383 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3cd6a0b9cda805a5 # initialize rs1
li x8, 0xe2f7da6e090457a6 # initialize rs2
or x23, x1, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0x655d2b2ad6e3a44c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7125e5cb43e21a06 # initialize rs1
li x9, 0x494f1a95833eac61 # initialize rs2
or x3, x24, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x30, 0x48b22e3021bbcc05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2651210c99765fa2 # initialize rs1
li x10, 0x436f0330c096ebeb # initialize rs2
or x30, x4, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x2, 0x9c5b27ba6277ad13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbfca340a7e831319 # initialize rs1
li x11, 0xd35005065620c6cd # initialize rs2
or x2, x1, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x10, 0x95f6996794b9c438 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xead13b30914c098e # initialize rs1
li x12, 0xd25c3d2e411b44bc # initialize rs2
or x10, x14, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x15, 0x28a88d07990b7a48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf70659d937af8212 # initialize rs1
li x13, 0x9a92ba9d26e7ac3a # initialize rs2
or x15, x19, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x26, 0x8948b56f47b4d568 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8accd9cac7e0fa5f # initialize rs1
li x14, 0x92e3f8d78669fce9 # initialize rs2
or x26, x22, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x14, 0xf46651e3489241de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7024941c95ae4707 # initialize rs1
li x15, 0x4f72351c746914b7 # initialize rs2
or x14, x28, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x5, 0xbe515452d678debe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1108872e78df3a0a # initialize rs1
li x16, 0x2645bd05430ea728 # initialize rs2
or x5, x11, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x2, 0x3e50ff097fd1bc7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc0be90b84266408f # initialize rs1
li x17, 0x26b43643762b975b # initialize rs2
or x2, x30, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x6, 0x172a34d66ecb83cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf42147331112b2ef # initialize rs1
li x18, 0xdce6722bcca84910 # initialize rs2
or x6, x9, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x14, 0xfc5fb7d8dc9f52d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xef60801a523a8ad3 # initialize rs1
li x19, 0x707be1679b7486ae # initialize rs2
or x14, x24, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x16, 0x35fe5c4cda7280d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x51c58001cd97a4c0 # initialize rs1
li x20, 0xf1095b31af0f2c77 # initialize rs2
or x16, x30, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x16, 0x73124e1fe89e7e40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x715f0fd27c852798 # initialize rs1
li x21, 0x79ead97bfa8cb3e6 # initialize rs2
or x16, x8, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x5, 0xf039a75e8e8d1154 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x46e6e0ff71dd96b7 # initialize rs1
li x22, 0x463fc2cb32a3a8c3 # initialize rs2
or x5, x24, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x1, 0xcafaf16a8f02e97a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x03ff3a313016a66e # initialize rs1
li x23, 0xbd2998c3c6d72b9d # initialize rs2
or x1, x27, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x10, 0x2c3f5d93a2c663e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf89176f66a131712 # initialize rs1
li x24, 0x90f2826869f3e380 # initialize rs2
or x10, x17, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x27, 0x4355bfb3b178b37e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0a74ea80f387efe6 # initialize rs1
li x25, 0x82dd3340d0c2f463 # initialize rs2
or x27, x21, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x7, 0xb40117403d911a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x832aaef0681e5ace # initialize rs1
li x26, 0xf99bc510cb46c77b # initialize rs2
or x7, x28, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x12, 0xae56f403f9b78a62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x90525dcf0a131542 # initialize rs1
li x27, 0x58ada6aa018b8672 # initialize rs2
or x12, x6, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x6, 0xeb3e24fe509e900f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9b44150053d5e102 # initialize rs1
li x28, 0x356d77005709b95b # initialize rs2
or x6, x25, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x21, 0xfe01af744504178b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x939fc47ce7f98b93 # initialize rs1
li x29, 0xd03b79318819e8a4 # initialize rs2
or x21, x27, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x4, 0x63223e28e29e0bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x9e4ccad4ac844c34 # initialize rs1
li x30, 0xa2b344e376bfa35d # initialize rs2
or x4, x5, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x8, 0xe80e82274ddf1e16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3ff4184dcf940b4e # initialize rs1
li x31, 0x5155ba203daab5cc # initialize rs2
or x8, x21, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xbe4114b9d9210001)
li x14, 0x8ae34bb2b18a4ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8ae34bb2b18a4ef3 # initialize rs1
li x0, 0x1f9e6de4812cda26 # initialize rs2
or x14, x26, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x24a9fc6767715580)
li x6, 0x24a9fc6767715580 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x24a9fc6767715580 # initialize rs1
li x26, 0x24a9fc6767715580 # initialize rs2
or x6, x0, x26 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x863fdb83c84a9ebd)
li x2, 0xaf8015bad005587b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x863fdb83c84a9ebd # initialize rs1
li x21, 0x863fdb83c84a9ebd # initialize rs2
or x2, x20, x21 # perform operation

# Testcase cmp_gpr_hazard raw test
or x6, x20, x11 # perform first operation
or x1, x6, x30 # perform second operation

# Testcase cmp_gpr_hazard raw test
or x18, x27, x15 # perform first operation
or x29, x14, x18 # perform second operation

# Testcase cmp_gpr_hazard waw test
or x27, x11, x18 # perform first operation
or x27, x19, x5 # perform second operation

# Testcase cmp_gpr_hazard waw test
or x13, x11, x25 # perform first operation
or x13, x30, x11 # perform second operation

# Testcase cmp_gpr_hazard war test
or x13, x18, x9 # perform first operation
or x18, x23, x25 # perform second operation

# Testcase cmp_gpr_hazard war test
or x13, x28, x17 # perform first operation
or x17, x24, x4 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0xd8f2480bfd9c0bae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x0, 0x56ab29247d311fbb # initialize rs2
or x10, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x20, 0x328c6ddfece739b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
or x20, x19, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x17, 0xf8a45699746c0b2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
or x17, x28, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x13, 0x4065344f4cb487d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # initialize rs1
li x0, 0x5679ad403baa1341 # initialize rs2
or x13, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x15, 0x70d389072a3e817c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
or x15, x11, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x10, 0x612241e0d71d99c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
or x10, x18, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x30, 0x3d99688a72e470fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
li x0, 0x32df3b36913ad2b8 # initialize rs2
or x30, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x2, 0x34e87671c8cfeb1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
or x2, x22, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0xc7a2c7c78ba9555c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
or x16, x23, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x6, 0x7ac3d3be1aede77e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x0, 0x5ae85a611d0ce8a4 # initialize rs2
or x6, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x10, 0x6bf47c228815d1cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
or x10, x1, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x4, 0x3bdbc7735d7c127f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
or x4, x21, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x26, 0x5619e7fe654e8606 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000001 # initialize rs1
li x0, 0xe2c37904bdacee84 # initialize rs2
or x26, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x5, 0x52d948b17462f30d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
or x5, x27, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x13, 0x71271a6ef5d5549c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
or x13, x17, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x13, 0x10986f5f59dc55b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x0, 0x8eba3b8e7d3afc8c # initialize rs2
or x13, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x27, 0xc1b03a61dbd8086d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
or x27, x25, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x10, 0x53524c3621d45334 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
or x10, x29, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x1, 0x64c12e534d30c93d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs1
li x0, 0x82808d636c5bd437 # initialize rs2
or x1, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x29, 0x9dcdef4a0266fbdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
or x29, x22, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x18, 0x5402a7d5a01e4ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
or x18, x27, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x17, 0xb1797a20dceb7555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x0, 0xbbe2230e0611a95a # initialize rs2
or x17, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x13, 0xea8bc63252f0a4e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
or x13, x12, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x12, 0x86db80910eaab99b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
or x12, x5, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x21, 0x0a694234a14edd0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x0, 0xb7ae597fd2bb7782 # initialize rs2
or x21, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x17, 0x971c376e306511e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
or x17, x3, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x21, 0xc0116bac67389dd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
or x21, x31, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x10, 0xbc2aa3a97168c29b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x0, 0x1cb143df4e27f40e # initialize rs2
or x10, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x1, 0x2d07d8257363fdb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
or x1, x10, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x18, 0xb2acde9eb23b2259 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
or x18, x17, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x16, 0x67e97adba3084d1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x0, 0x0655336f7f89119a # initialize rs2
or x16, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xc943672c2ecc3005 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x16, x6, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x3, 0x5edb177d51441920 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x3, x16, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x2, 0x5af322805478ea35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs1
li x0, 0x2b2245a5605b484e # initialize rs2
or x2, x17, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x14, 0x52e7630950fa46d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
or x14, x24, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x17, 0xcd76a8037d15e247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
or x17, x24, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x14, 0xc2f4a7d55935b2cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x0, 0x808768a139b31955 # initialize rs2
or x14, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x7, 0x91adc679a248e85d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
or x7, x30, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x16, 0xb6cbf8f879b4f31e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
or x16, x7, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x8, 0x62007126df9f31ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs1
li x0, 0x83efe85d8d8b30ec # initialize rs2
or x8, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x29, 0x07f798616b7a691d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
or x29, x5, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x12, 0x7e3f741811bea1ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
or x12, x10, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x9, 0xf5afd6eb98e5bc60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000000 # initialize rs1
li x0, 0x98af7a1e6a186f3f # initialize rs2
or x9, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x22, 0x027ec735cc854141 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
or x22, x28, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x13, 0x5eeb37b182428d67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
or x13, x27, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x13, 0xfe3bc85ad33c84aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x0, 0x1a585eec9b3063d3 # initialize rs2
or x13, x26, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x6, 0x6ec7fc628c9c4dfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
or x6, x4, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x11, 0x5a0e1e8271227213 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
or x11, x7, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x12, 0x4dd5816d4953c45f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x9, 0xe062b58a6f0f95a4 # initialize rs2
or x12, x4, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x15, 0x35c23278c2d7984b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
li x4, 0x76ad7524721fb65a # initialize rs2
or x15, x11, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0xe261b84a00380ebd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x29, 0x7e09fca46bcecb32 # initialize rs2
or x11, x8, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x4, 0x840e0572d9f76a62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x13, 0x775519ed1fdcf9ff # initialize rs2
or x4, x2, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x23, 0xb73203a98872d543 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x25, 0x0114b5fd9a341868 # initialize rs2
or x23, x18, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x7, 0x3668f29e51e83322 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
li x8, 0xc9911bd5877674d4 # initialize rs2
or x7, x20, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x25, 0x4fd02ed40a723643 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
li x29, 0x6f364afb2672cd01 # initialize rs2
or x25, x12, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x7, 0xd2a648d6b56d7cf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x25, 0x3cd115593ba6896f # initialize rs2
or x7, x17, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x2, 0x423ef3b6dce99f6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize rs1
li x18, 0xca21d073475cb2a5 # initialize rs2
or x2, x13, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x20, 0xe41728657e6b1c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x6b1b26695ba52fb6 # initialize rs2
or x20, x11, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xa9be6804fff5b7c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x4c8765b635d955e3 # initialize rs2
or x16, x26, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x15, 0x1e7d599501ba24e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
li x11, 0xdf1925fe44c105ff # initialize rs2
or x15, x14, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x2, 0xe3c3b846f439c9d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x8, 0x6b3f0f60feba03b4 # initialize rs2
or x2, x3, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0xd6d05dfa57b3daa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x23, 0x13b876092a1029b5 # initialize rs2
or x19, x20, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x22, 0x79cab59b83e5749e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000000 # initialize rs1
li x30, 0x7edad55fa2737cbf # initialize rs2
or x22, x21, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x23, 0x8b4ac5770a557366 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
li x26, 0x4ca5bef5b7e2d76e # initialize rs2
or x23, x7, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0x563778b1f3f4e903 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x29a8b844b62a3e25 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
or x25, x2, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x22, 0x1e7b9b0d31c28c7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x83f3d9667d75a7c9 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
or x22, x5, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x21, 0xb6c16fe3174ccacb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80e63609422115a4 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
or x21, x18, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x23, 0x903ebce41661b8be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9e46679d49911dd2 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
or x23, x22, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x1, 0xc934c549e87468d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa5030dd9c9ea2a6a # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
or x1, x20, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x18, 0x72dbaad1e1354599 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x131486fbf2211b94 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
or x18, x16, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x31, 0x3f6ebe406bf45e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x78b100dda0260582 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
or x31, x8, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x13, 0x32b55283f5adeae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xc8faac6c13949a4c # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
or x13, x4, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x3, 0xf9d5ca96ac2959cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x14a561a1cb7b0019 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
or x3, x14, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x21, 0x98eff5e2b1d66a66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc68d74d14b2ada72 # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
or x21, x30, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0xef8dea18ea7ef083 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe3bcd4433333841d # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x30, x7, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x5, 0x5d715ed418d24eaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8401951bc40ecab6 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
or x5, x15, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0xaec5a4b68ec2d77d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x219ff6af28e8f351 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
or x13, x25, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x31, 0x69edb7a50ff7c241 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd850416d8da7a4dd # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
or x31, x29, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x31, 0x8b891925ed28fff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf2423d1af9008fce # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
or x31, x27, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x23, 0xf2e73b7f8ff2cae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1babade0fa439e44 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
or x23, x15, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x31, 0x118a3ce1fa5230c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
or x31, x12, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x17, 0xec0304e7ab08b26e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
or x17, x7, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x7, 0x5b2ecbe3fbba95ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
or x7, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x17, 0x27497aebe8f43f86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
or x17, x8, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x31, 0x793d69e4680d9238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
or x31, x27, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x26, 0x6ff64c2a548feed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
or x26, x28, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x26, 0xe74055cc6490457d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
or x26, x15, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x6, 0xe037ac2ef68a1623 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
or x6, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x1, 0x9c151973d91c7be9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000000 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
or x1, x30, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x29, 0x83a3cd9d850306d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
or x29, x25, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x353a0eeb7665b366 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x10, x4, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x25, 0xd9e7a23c01ea9a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
or x25, x6, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x11, 0x72b3896ea47abbb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
or x11, x13, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x9, 0xd0d2a41fa107dd6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
or x9, x16, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x5, 0xdc13a20efe6b4105 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
or x5, x18, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x10, 0x836d450cb9cac8a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
or x10, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x8, 0x84ddf55d4ad5bba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
or x8, x25, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x5, 0x3ab9a8feee671a64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
or x5, x1, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x17, 0x12c45974c39a37fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
or x17, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x8, 0xbddaab56b063d811 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
or x8, x22, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x10, 0xfeba7d4617a63d79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
or x10, x21, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x20, 0x51ab1c2e2b16ca12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
or x20, x1, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x30, 0x4f51840941ac067d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
or x30, x5, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x2, 0x130b10231c997f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
or x2, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x6, 0x3fdffc09b73d952c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
or x6, x16, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x9, 0x9af35c4a5b83cc7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
or x9, x13, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x7a5003ccfbb973ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x3, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x18, 0x09d726c9b6d33ddc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
or x18, x8, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x14, 0x7b56ba29d2c0bcd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
or x14, x2, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x24, 0x02f11a3c98af4f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
or x24, x18, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x4, 0xa2bec108bb4d6471 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
or x4, x20, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x11, 0x8083f073c9f19fad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
or x11, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x10, 0x1e38fb08f5908d11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
or x10, x22, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x3, 0xffaa228d2318cc0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
or x3, x31, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x29, 0xff74abe688dc5cf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
or x29, x5, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x11, 0xc9e05fe41dc8fff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
or x11, x23, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x18, 0xe63749360f78da90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000002 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
or x18, x10, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x25, 0xf26358e4b13a6b20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
or x25, x30, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x1, 0x44306bd297acc166 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
or x1, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x30, 0x152f7e14ffe24aaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
or x30, x19, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x16, 0xa8626a86efa1caad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
or x16, x2, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x14, 0x9ab96b069be6970e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000002 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
or x14, x10, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x9c07d039b87e0cfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x7, x4, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x15, 0x35918304263a8704 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
or x15, x13, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x27, 0xa69e9bdb9b379338 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
or x27, x7, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x23, 0xe844fecd845b1188 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
or x23, x12, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x12, 0x549530ee70d83033 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
or x12, x19, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x19, 0xa8ef1e79fba066f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
or x19, x29, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x2, 0x430f44cdbd6ac01a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
or x2, x9, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x20, 0x402c735f35d5d96c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
or x20, x9, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x22, 0x7a8a0e6420c1e91c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
or x22, x30, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x16, 0x88ea8a0aa374e1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
or x16, x20, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x23, 0xd7f6a57da5bd55b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000000 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
or x23, x5, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x26, 0xf46fff7f7b4f4fb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
or x26, x2, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x1, 0x8c66e9c22c3e5915 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
or x1, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x29, 0xeb17971d35db717f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
or x29, x18, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x14, 0x2941eab11844421b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
or x14, x27, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x7, 0xc556443d4a25a1df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
or x7, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0xb563f5bf627d945c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000000 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x15, x7, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x27, 0xa9f9041a18009b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000000 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
or x27, x3, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x15, 0x6a4dc000dcabaedc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
or x15, x12, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x21, 0x3f566baba4707888 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
or x21, x31, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x6, 0x9efd0867ee3321bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
or x6, x26, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x13, 0xea470e3d4e30ab61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000000 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
or x13, x1, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x7, 0x6da2289479cb183b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
or x7, x17, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x6, 0xf9632f595680daed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
or x6, x10, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x26, 0x95fe1d6929c543f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000001 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
or x26, x28, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x10, 0x7fc3d65831102edc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000001 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
or x10, x30, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x22, 0xb3bf372310c10b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
or x22, x9, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x11, 0x115e43ebcc1c639f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
or x11, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x12, 0xb2906795b6628287 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000001 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
or x12, x2, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x19, 0xc3282db5b406b66a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
or x19, x31, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x30, 0xc7271b8ac28fc72d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
or x30, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x27, 0x1856afa2a224291b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
or x27, x26, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x861a4eeaa88c55b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x12, x3, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x26, 0x881eddee7c193638 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
or x26, x24, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x6, 0xc4baa73bc4e9d19f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000001 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
or x6, x30, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x26, 0x5217bef446d00e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
or x26, x17, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x24, 0x2a1efcb11aee52bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000001 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
or x24, x2, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x21, 0xd711967d56fb4f84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
or x21, x25, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x27, 0xe1737cb4937e8a94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
or x27, x7, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x3, 0x358a2814f2d5e633 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
or x3, x19, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x17, 0x82959dbffef96aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
or x17, x20, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x29, 0xf0b8e5ace30b4fae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffffffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
or x29, x9, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x24, 0xb49836d476429996 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
or x24, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x1, 0x0fb284843bbfa98a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
or x1, x23, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x26, 0xb98d82ba256a0847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
or x26, x11, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x20, 0x6662cc745856e47c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
or x20, x16, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x9, 0x90f4aaea37bb67ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
or x9, x19, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x21, 0x72850f235f2183ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
or x21, x26, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xcafc0e1433b8924e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x5, x27, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x5, 0x02dc17eee05ddc1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffffffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
or x5, x28, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x22, 0x2b40db95cde9a2bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
or x22, x26, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x22, 0x54f95f3533f9aff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffffffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
or x22, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x22, 0x9a27a031db9b3c22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
or x22, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x25, 0x361c755155f56657 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
or x25, x27, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x25, 0x9345fd93c854fc55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
or x25, x14, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x14, 0xfe74b43b4e3277cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
or x14, x29, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x21, 0xe503f5bd99bfad90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
or x21, x19, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x1, 0xf0a90b57bff0d8f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffffffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
or x1, x25, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x18, 0x8cdd82e11a764fdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
or x18, x10, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x16, 0xf83c4350f850992d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
or x16, x2, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x5, 0xe79854e1d158e159 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
or x5, x18, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x22, 0xec1cb2ceb1f7966e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
or x22, x27, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x15, 0xe8e9b4373a121156 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffffffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
or x15, x21, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x31, 0xcf77dd6dc13d75d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
or x31, x9, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x90ac0241fb9bad8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x31, x12, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x18, 0x06ddf81f70ed15c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
or x18, x20, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x14, 0x3a19fe10af7d0345 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffffffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
or x14, x17, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x9, 0xe9afc0c973eda090 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
or x9, x23, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x7, 0x70d5ca193a36b3bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
or x7, x20, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x12, 0x1d4473990cc9f7c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
or x12, x23, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x23, 0x2a61d8328731a60d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
or x23, x19, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x3, 0xa06afd6a7b1247d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
or x3, x29, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x14, 0x7be6c0d0cdb3a551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
or x14, x9, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x13, 0xe9b65e30d61794a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
or x13, x28, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x23, 0x648ac58720e834ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
or x23, x22, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x4, 0xa288b4822f17632c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
or x4, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0xc4a6537df2d448c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
or x20, x3, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x8, 0x9ebe6f0177da857a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
or x8, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x24, 0xa28effcc3823faf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
or x24, x14, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x11, 0x3145ba5fcbd2948f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
or x11, x31, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x72274a7355eaa840 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x21, x23, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x3, 0x75712d0074de61a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
or x3, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x22, 0xeb36bd0a0043aefd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
or x22, x12, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x27, 0xf99b82d176c293e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
or x27, x28, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x4, 0x02681e2002aae1c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
or x4, x28, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x21, 0xbddc5b33ff1c39a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
or x21, x29, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x31, 0x796f008c0c179aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffffffffffe # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
or x31, x21, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x28, 0xf3657fe750278ca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
or x28, x26, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x5, 0xc7f5194e066411d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
or x5, x8, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x20, 0x39641d8ecbb0bccf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
or x20, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x27, 0xd3e39db9cdb87566 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
or x27, x29, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x18, 0xf32390599c1270cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
or x18, x15, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x12, 0x598e561fa7fa0bef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
or x12, x9, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x18, 0x3c5b95a3fe26ad5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffffffffffe # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
or x18, x26, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x20, 0x8b3ce3a7c04548ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
or x20, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x29, 0xded61b29fbeec5dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
or x29, x3, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x4757f076e8de4186 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x16, x30, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x27, 0xe75257eafc0b0ad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
or x27, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x8, 0x252b7252617ff020 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
or x8, x22, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x21, 0xc43f5cc55a41bb8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffffffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
or x21, x17, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x9, 0x14ca35daf9824174 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
or x9, x11, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x17, 0x0573bdf9ab04961e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
or x17, x23, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x14, 0xb89d91590626a895 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
or x14, x17, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x6, 0x61109cb6396601b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
or x6, x19, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x19, 0xe6f2e36650122b2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
or x19, x20, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x25, 0xb9ded9717906942d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
or x25, x14, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x14, 0x2fa741a406e55ae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
or x14, x19, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x2, 0x15a1d40cfa268ac5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
or x2, x7, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x14, 0xb958948430e30993 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
or x14, x5, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x24, 0x473ca38b782be6ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
or x24, x4, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x13, 0xc334be1e1e87316b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
or x13, x18, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x14, 0x0d2fe0db7d510d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
or x14, x10, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x13ee9e4872031c1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x14, x30, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x24, 0x2b16aa35061e62f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
or x24, x23, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x21, 0xcdf4620ed065df5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
or x21, x30, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x13, 0x42cc12b8d3e10089 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
or x13, x18, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x6, 0xb213af2ee93e4a0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
or x6, x14, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x15, 0xc70dbc984833c318 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
or x15, x29, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x10, 0x734a445c367433fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
or x10, x9, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x19, 0x8fddce5bc2839d15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
or x19, x29, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x28, 0x2126ab8c644b360a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
or x28, x26, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x22, 0xa183fa67cd2c82d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
or x22, x29, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x29, 0x483b61d1e4242ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
or x29, x7, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x11, 0x28cb52ba3a42b267 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
or x11, x9, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x15, 0xf4860c3dccb10370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
or x15, x8, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x7, 0xf8b4b05dffa71dcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
or x7, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x22, 0x24db7af392ba939d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
or x22, x4, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x20, 0xa9b3e5ba432f2e84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
or x20, x5, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x49f40733ee6b6af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x8, x23, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x18, 0x2a1d6d9f47b81327 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
or x18, x7, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x4, 0xfa8849c9dd3f8a3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
or x4, x2, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x20, 0xc5d3742c4d33e04f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
or x20, x4, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x30, 0xf7e38d1442a6a2b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
or x30, x7, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x29, 0xe86c9585ede83ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
or x29, x26, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x25, 0x827aa67ed87852c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
or x25, x1, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x5, 0xa9d93fa9e1513649 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
or x5, x22, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x8, 0xe93d53fb77cb99a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
or x8, x31, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x27, 0x1f8b6aad1c26a0e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
or x27, x14, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x6, 0x29ac504f95ed8a3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5555555555555555 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
or x6, x7, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x26, 0x3cc2e926d26afc63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
or x26, x24, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x18, 0x1b46d2e559919121 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
or x18, x24, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x6, 0x42716a80cfdbadcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
or x6, x26, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x9, 0x02eea8be2e6d7ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
or x9, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x19, 0x2219420793bd0a4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
or x19, x6, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x7acc0fc3c3506618 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x1, x26, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x17, 0xa3cf04883b370a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
or x17, x16, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x7, 0x429306b9a2087a74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
or x7, x11, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x11, 0x4ffb15373c1b3f9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5555555555555555 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
or x11, x3, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x5, 0x9293d047f79fa481 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
or x5, x12, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x2, 0xee73c6c4657b5f28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5555555555555555 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
or x2, x9, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x2, 0x747e831fd69469bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
or x2, x19, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x2, 0x2cedd4e66a1f61c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
or x2, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x13, 0x5dfc745f31fd01eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
or x13, x24, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x8, 0xc4a4c12f9061db52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
or x8, x6, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x18, 0xc694e009026d51b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
or x18, x5, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x29, 0x5cc8f35d6f55d6ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
or x29, x3, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x1, 0xf0436a888702d40f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
or x1, x13, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x29, 0x2e1bb81f7db2d68e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
or x29, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x11, 0xaa8d626a20db55ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
or x11, x29, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x17, 0x2c830552e5904974 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000ffffffff # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
or x17, x22, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x361d6e78b8031882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000ffffffff # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x25, x21, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x28, 0xe3ab812e82394b23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
or x28, x26, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x11, 0x7f723e3e4725371c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
or x11, x3, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x27, 0x202a8dc387bceddc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
or x27, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x9, 0x63e0d34f9e338976 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
or x9, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x7, 0x4a2ce2b85a9377e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
or x7, x30, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x13, 0x885405ea1b911e9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
or x13, x21, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x4, 0xcc1a032e1fc73f8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
or x4, x25, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x1, 0xca97a6784bea391b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
or x1, x12, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x13, 0x57eb93980a6629e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
or x13, x5, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x6, 0xa3b77b47d5c2d30c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
or x6, x15, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x13, 0x93bacfed80a89d3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
or x13, x16, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0xedd9164a1e30f838 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
or x24, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x28, 0x1a28c1856929d42e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
or x28, x24, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x14, 0x55407e27a1be9f26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
or x14, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x14, 0x7cf1ccb5502b2d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
or x14, x9, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0xdfc50aeee88cdb8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x26, x24, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x8, 0xb523f6bd0fa25eb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
or x8, x12, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x9, 0x51ea86b378a7c685 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
or x9, x23, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x19, 0x830b5972f2b3d906 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
or x19, x9, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x22, 0x8f97a8744e6daf22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
or x22, x11, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x24, 0xcf72426487d9238c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
or x24, x28, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x10, 0x322f18cfd489f929 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000000 # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
or x10, x19, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x16, 0xf40284e92a2f15f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
or x16, x14, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x23, 0x07e7be40acf35df4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
or x23, x19, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x9, 0x353b6451502cac1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
or x9, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x17, 0x29bd74ff95bb8577 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
or x17, x18, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x8, 0xb519611dc0156434 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
or x8, x27, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x9, 0x2a1cf3ecd2f61e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000000 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
or x9, x23, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x20, 0xd48b76b179f3e516 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
or x20, x10, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x15, 0xf35d0f7b45de57e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
or x15, x30, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x16, 0xcc68df5e0c4f01bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000000 # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
or x16, x7, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x43040284c8ab91d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x26, x18, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x26, 0x4d5d0b9c6a2f6316 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
or x26, x10, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x18, 0xe5d4a968ad397260 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
or x18, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x27, 0x84b36237ab11d5b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000000 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
or x27, x29, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x29, 0xd1512d583eb8be12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
or x29, x31, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x7, 0x7c4df81e922f668d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
or x7, x4, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x16, 0x7610d5796e3354f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
or x16, x23, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x19, 0xdd565bf4600f7d71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
or x19, x5, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x29, 0xb261a9ef8b9fec98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
or x29, x12, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x21, 0x070884cac43a2ab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
or x21, x11, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x20, 0xab806f457c2db03e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
or x20, x25, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x20, 0xe4c7c4606e7ae720 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
or x20, x19, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x4, 0xe4498bf67408366d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
or x4, x8, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x10, 0x7a67e4e97e0b050c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
or x10, x22, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x1, 0x5f95adc567dac6d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000001 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
or x1, x25, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x12, 0xca92d5293571358b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000001 # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
or x12, x3, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x13dbe0c34ddedb07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000001 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x24, x13, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x29, 0x7c27a1f79136ca69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
or x29, x22, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x23, 0xb1b28d8a52ce7219 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000001 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
or x23, x13, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x29, 0x271b0de3902aa804 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
or x29, x17, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x19, 0x016fe94e136edac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000001 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
or x19, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x16, 0xae5bff454b2d6fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
or x16, x6, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf8a9a054d1f436c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3cae721b458e73c0 # initialize rs1
li x4, 0x2c7b49c8d2de68de # initialize rs2
or x0, x0, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x777e28dfc2e0f2bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3eba66f0e717a165 # initialize rs1
li x29, 0x1970b92f3583ea06 # initialize rs2
or x1, x1, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x5e5b7488605d292d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x707e44fbee5953a1 # initialize rs1
li x3, 0xaa28273c1d715e11 # initialize rs2
or x2, x2, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x9f12db8079806cd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x450296f34aa45e4f # initialize rs1
li x25, 0x36ccf8d6508d6c4b # initialize rs2
or x3, x3, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x22b01ac51de8e25d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x66e014ec91167a8d # initialize rs1
li x8, 0xc30273e8b87c1b26 # initialize rs2
or x4, x4, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x482a7aa1f791e6a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xda1011aad95f45d2 # initialize rs1
li x29, 0x9b3b8cbeafe53e08 # initialize rs2
or x5, x5, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x1c6076a8650adc68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4ff93e92e635de6b # initialize rs1
li x25, 0xd487f2f01f18b068 # initialize rs2
or x6, x6, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x5509d3345f22f800 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7d9a8eb6824ee054 # initialize rs1
li x21, 0x36378dfa36c9a650 # initialize rs2
or x7, x7, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x1a569034432b8853 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x64665db2f399d04f # initialize rs1
li x6, 0xd408e503ad34ebe8 # initialize rs2
or x8, x8, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x92c84b91cf0bafd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x44c47df9b0f91fc5 # initialize rs1
li x24, 0xe60d57ba7962ac69 # initialize rs2
or x9, x9, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xb8812aab3092f8d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x95876b3e4c527057 # initialize rs1
li x3, 0xa8dd8129358fc89c # initialize rs2
or x10, x10, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xdc140aa699d49e07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb3da8acda583bafb # initialize rs1
li x27, 0xc8ffe8137fecf213 # initialize rs2
or x11, x11, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x7ef50bf4a369b527 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x34a0b511d6ceb39e # initialize rs1
li x26, 0x2a23aade568a75b5 # initialize rs2
or x12, x12, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xf7327313c2e11a67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd00cdd1d564e381d # initialize rs1
li x22, 0xf4e72dd5c51111f2 # initialize rs2
or x13, x13, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xf5434d4e95ae6470 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe56c54be67e8998c # initialize rs1
li x5, 0x2baa2e54a0212d18 # initialize rs2
or x14, x14, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xfdcb1e8d1e9cabd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x509f55dd8e891e42 # initialize rs1
li x5, 0x3567d63a50943ae3 # initialize rs2
or x15, x15, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x898a56f2c6f18e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2a3fc719912b2d36 # initialize rs1
li x18, 0xa1e864fb7977b4cd # initialize rs2
or x16, x16, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xb62307f342f81935 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd907409b758862f9 # initialize rs1
li x1, 0x20088e350c16c16d # initialize rs2
or x17, x17, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xaf4376bd670fa0c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0374d441ecdb3c9d # initialize rs1
li x20, 0x8ea681aedc3ac0eb # initialize rs2
or x18, x18, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x5aa602e2af159582 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xebae98e95c5dbb98 # initialize rs1
li x22, 0x7e9f4845c2e5288f # initialize rs2
or x19, x19, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x2ca125a3fa640860 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8f40d7c81cd631e2 # initialize rs1
li x21, 0xe38d36508eb5e796 # initialize rs2
or x20, x20, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x6f45eab297f33067 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1aee925734c660b6 # initialize rs1
li x9, 0x44f2ec2b0ca5cb82 # initialize rs2
or x21, x21, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x0f831f924af4ae36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3b8d8fd090ccb933 # initialize rs1
li x6, 0xf1b261d411adc25a # initialize rs2
or x22, x22, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x1ecb9d3a9dc778d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb1cfae2137b68348 # initialize rs1
li x16, 0x6f279334e359f21b # initialize rs2
or x23, x23, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x13334b8b0a5a3cb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbc2918b9cf41ee8f # initialize rs1
li x1, 0x5e7383a41174bd15 # initialize rs2
or x24, x24, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xac0e876725a9d01b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd3761860cf610742 # initialize rs1
li x7, 0xad06a8e84518cf8e # initialize rs2
or x25, x25, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x8ac17295cb08252a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7f1bea1c5a261076 # initialize rs1
li x11, 0xe03357127183b4c8 # initialize rs2
or x26, x26, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x861bcb91ef0733f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5e9952d1fa951b5d # initialize rs1
li x12, 0x2d8087618f3da608 # initialize rs2
or x27, x27, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xe491c1476cc1f7c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1aa735828d491fb7 # initialize rs1
li x28, 0x53ea48843bd7251c # initialize rs2
or x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xb8197f4898a7b134 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x63901772d30304e3 # initialize rs1
li x20, 0x8d1692f1028d98f6 # initialize rs2
or x29, x29, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1961f4790b91d70f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x75c6925eff97346f # initialize rs1
li x8, 0x1538b6c6024f6322 # initialize rs2
or x30, x30, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x7cd5b022696adbf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9ff432de04d8e485 # initialize rs1
li x17, 0x0f3fbd15aba430bc # initialize rs2
or x31, x31, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xc413982b64cad241 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xefa2777f6832f77f # initialize rs1
li x0, 0xc6551cabefd7f424 # initialize rs2
or x0, x14, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x7f00ab7a8341d015 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc41beef069b9a2b5 # initialize rs1
li x1, 0x3c9859770d6f3c43 # initialize rs2
or x1, x7, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xeacb9df8448351b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf0ef4b7a68a6cd3e # initialize rs1
li x2, 0x16261fb359735c87 # initialize rs2
or x2, x15, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x7a4a1888b39afb93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x92aa81f74933d880 # initialize rs1
li x3, 0x4f65de3e06b1a67a # initialize rs2
or x3, x26, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xd14f80e0100c6e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3a9c0809ce59b20d # initialize rs1
li x4, 0x7d0a31c0630b7d0b # initialize rs2
or x4, x21, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x0564e13dff5a58f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3e17633cef2e9860 # initialize rs1
li x5, 0x97658071aafc8b59 # initialize rs2
or x5, x19, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xaf8595c0149f5c02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9619dcce41661dd4 # initialize rs1
li x6, 0x47b1346acaefd6ff # initialize rs2
or x6, x10, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x79b2d157434130d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdc5f692c4e672b7d # initialize rs1
li x7, 0x80bc1c02381512a6 # initialize rs2
or x7, x13, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x0ed449c0e2b53b81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9deb18822be51e6f # initialize rs1
li x8, 0xfcd451cc6072b462 # initialize rs2
or x8, x25, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x049b6c0ecfba1026 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe88335a6b9def8a1 # initialize rs1
li x9, 0xa3fdddbb6dc9e6ee # initialize rs2
or x9, x9, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x01459f3deff93812 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf5cfad110fa45bf2 # initialize rs1
li x10, 0x370b38a4023f3468 # initialize rs2
or x10, x10, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x7d0d78c2807a6e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8dced41cbffe2341 # initialize rs1
li x11, 0xe665feaee5b3c331 # initialize rs2
or x11, x10, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x208a46f222aa7ecd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6bae109ae374e6d5 # initialize rs1
li x12, 0xb2fac3f38897f9ba # initialize rs2
or x12, x29, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x4a26d451581182fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4aff54fd9e839331 # initialize rs1
li x13, 0x3933d7503c35f8c5 # initialize rs2
or x13, x26, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x1c8681aa64645798 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0eb828d1801b145a # initialize rs1
li x14, 0xcf67a7db9ab5ebc6 # initialize rs2
or x14, x13, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x19e73068fc5fda5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4475bc10c24fe975 # initialize rs1
li x15, 0x65e87705615742ef # initialize rs2
or x15, x8, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xb35f71ef18a20570 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdd3f2e2b949f6023 # initialize rs1
li x16, 0xfdc7f1b862358fc2 # initialize rs2
or x16, x17, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x099f671cb7a0a5eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xef8f5d7cfe0614f3 # initialize rs1
li x17, 0x0e44167e46a15dc3 # initialize rs2
or x17, x28, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x8f9a17fed2e74862 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xed0ecc4a74e29c19 # initialize rs1
li x18, 0x9e33f6d1361c296e # initialize rs2
or x18, x20, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x57e66225280466c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe101324502031d80 # initialize rs1
li x19, 0x0edac5280f461ffc # initialize rs2
or x19, x17, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xcab41c7356f870a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x87f37d6c39c3f2a5 # initialize rs1
li x20, 0xf25d32f901f136a7 # initialize rs2
or x20, x10, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x527a461a708ef04e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x343f0058fabd436a # initialize rs1
li x21, 0xda1a76e593c0ade0 # initialize rs2
or x21, x7, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x8f16623d31fb2e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7681f7c8b78a023c # initialize rs1
li x22, 0x1f6b7836fa240f48 # initialize rs2
or x22, x29, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x14a436c50e1d321b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x85f31869178f9b68 # initialize rs1
li x23, 0x3e9cbdabc422d2dc # initialize rs2
or x23, x26, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xa98c8ad290f2e685 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80bddcf7a624e124 # initialize rs1
li x24, 0x331add30ce3e95e9 # initialize rs2
or x24, x15, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xba6a51852b719af3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd0bca85850df8a98 # initialize rs1
li x25, 0x348cb207d9ea43e3 # initialize rs2
or x25, x26, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x4b1cabfc8d1d7182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x39a3770b46443faf # initialize rs1
li x26, 0x0822812da29fb9eb # initialize rs2
or x26, x4, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x5640dcf363d5d609 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb74d3907fe96a2df # initialize rs1
li x27, 0x7171b1ab4c70599c # initialize rs2
or x27, x9, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x18004fd72292b1bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x24a0bd752bcff0f4 # initialize rs1
li x28, 0xfb6bf0ee0b6c142c # initialize rs2
or x28, x25, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xabb1deed56bff6da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x1271c53cb1e85e8e # initialize rs1
li x29, 0xe2f009f42322c74e # initialize rs2
or x29, x24, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x87331f103d14aef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5cf24c8735fd67d2 # initialize rs1
li x30, 0xa15fc7dfe221c5fc # initialize rs2
or x30, x6, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xce041b4739f45d51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x493e3865bf2741d2 # initialize rs1
li x31, 0x13f6f0ed050c2260 # initialize rs2
or x31, x13, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x7a3004acc15c3b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc21ec687ac1c27c2 # initialize rs1
li x0, 0xa9407486f51b62d1 # initialize rs2
or x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x9505e922d6025af8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf64c1bc4524eb55e # initialize rs1
li x1, 0x037e5de06e0fe09f # initialize rs2
or x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x6088e12692430914 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x584d8e3e1287d4e0 # initialize rs1
li x2, 0x09839ad7a5f39de9 # initialize rs2
or x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xf6a075cbe402b37e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8e9b7b8d8024802d # initialize rs1
li x3, 0x0a114fa7385ecbd3 # initialize rs2
or x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x4d7b3e3452f2b9d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfe92d1bcaa368463 # initialize rs1
li x4, 0xf45d9597cc34d05a # initialize rs2
or x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0xcd5b6317e62291e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x59762b3a8ddc9971 # initialize rs1
li x5, 0x22e234cf631fa294 # initialize rs2
or x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x62b0d173453e2d36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6fb61f78f584067b # initialize rs1
li x6, 0xc906125237a246fb # initialize rs2
or x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x6527dc18486a4222 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x44f8579bc458cdb5 # initialize rs1
li x7, 0xee9508487e2dc1c3 # initialize rs2
or x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x05db90cba402e904 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x824e9518b46a9a84 # initialize rs1
li x8, 0x2da81e2702067bfd # initialize rs2
or x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x55ae658331fcfd45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc83fb156b11f4899 # initialize rs1
li x9, 0xb9d3e477128a99b6 # initialize rs2
or x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xaff7d82be5be7cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf050d253fb81040c # initialize rs1
li x10, 0xc8fbc961be6c3b7b # initialize rs2
or x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x7532259239b2b27f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x77639f9eb145975e # initialize rs1
li x11, 0x2fb259d7c1546cc2 # initialize rs2
or x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xf4871c3dbbbf2007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xbd9d5c96900f41e2 # initialize rs1
li x12, 0xf854fb26357cc735 # initialize rs2
or x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xa2b3babc8370f892 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbfc190c9a5326b50 # initialize rs1
li x13, 0x46c710e8b7f717d5 # initialize rs2
or x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd131a97cf3a7f6cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x65fb51d8b0d096af # initialize rs1
li x14, 0x0ce5a15fc75c5ff5 # initialize rs2
or x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x6a03695e7a67c05e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf4f5b6b1706438e8 # initialize rs1
li x15, 0xd86f3e816a3decd5 # initialize rs2
or x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xcab20cf3e684c918 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x1950fde9afc29dc9 # initialize rs1
li x16, 0x5aa94eccd457a95e # initialize rs2
or x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x1433402669c9f7d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb4c5e154e5a5e45a # initialize rs1
li x17, 0xc5a2e7c48ee979cc # initialize rs2
or x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x2edefe8d552d14f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x28b619b04e52abb8 # initialize rs1
li x18, 0xb961a05163ceb6be # initialize rs2
or x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x433b2f7406c5e4a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x020d497286256dac # initialize rs1
li x19, 0xd200b1f6bf5d185c # initialize rs2
or x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x6547f9260a779684 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf82a36174cb01965 # initialize rs1
li x20, 0x0589a45c8f6609a0 # initialize rs2
or x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x3f6b3db290b24e1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc13b7369ec0c80ca # initialize rs1
li x21, 0x6702d4d57a52df83 # initialize rs2
or x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x9a30ac4a2964010b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbd550c789fc49753 # initialize rs1
li x22, 0xafa7c7ff16d666a1 # initialize rs2
or x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x9f4d862e88cdb730 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xeb0570e8673e8675 # initialize rs1
li x23, 0xf8874bfc602cbf5a # initialize rs2
or x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xe8ffc063bbc1604e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x53afdebb227e8907 # initialize rs1
li x24, 0x8e6ac048fa9c72b3 # initialize rs2
or x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xf654573b8c163a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xde4511cfb97b10d8 # initialize rs1
li x25, 0x073f42a5be4c6cb7 # initialize rs2
or x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x5176398baaa7a13e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xeae6e72a0d638c3a # initialize rs1
li x26, 0xba21ac3a96ab01c1 # initialize rs2
or x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x073de0d07938bba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf6c7f1e47a452e33 # initialize rs1
li x27, 0x22ce3bc5f295e53c # initialize rs2
or x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x86f29a1b41356634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8bbb4f7b362f10d1 # initialize rs1
li x28, 0x19280c9bd40a65c5 # initialize rs2
or x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xffa381c7464e37ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x280d802d0daf3791 # initialize rs1
li x29, 0x82bd41718419fe50 # initialize rs2
or x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x5f95ed54bb09f8ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe118eee81cabdc86 # initialize rs1
li x30, 0x672de221a74ba5d1 # initialize rs2
or x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x093ce6dd81db2038 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xccb1f36ecb376651 # initialize rs1
li x31, 0x0bfec607c03dfa73 # initialize rs2
or x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x20, 0x819088839fdedbd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xaae9c821a5cc5473 # initialize rs1
li x0, 0x9451b403536e9200 # initialize rs2
or x20, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x12, 0xcb6ac6dd36ef9194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3fd8a5007b5edcdb # initialize rs1
li x1, 0x735b1ad98b2bbe18 # initialize rs2
or x12, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x5, 0x95e4400a922354ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1c983724c5ce055e # initialize rs1
li x2, 0x03e6b1f77992b390 # initialize rs2
or x5, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x29, 0x6fcc3c9419e23d58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ac13f9382b8bc92 # initialize rs1
li x3, 0x88e1f9ccfd919c6c # initialize rs2
or x29, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x15, 0x5da32b2dba19b7bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb3c9a8c695fe3636 # initialize rs1
li x4, 0x89cd775e56910cca # initialize rs2
or x15, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x3, 0x0b50a471a0025a1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa4e0b0ede99dac65 # initialize rs1
li x5, 0xae58acb08a352ccd # initialize rs2
or x3, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x4, 0x0ce7b6b126bc0377 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfc5143e4631756bd # initialize rs1
li x6, 0xc10569da4a9cd857 # initialize rs2
or x4, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x5, 0x718736a986cf8a04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5632a06f4b565f98 # initialize rs1
li x7, 0xb7ab32c39516a1c5 # initialize rs2
or x5, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x22, 0xef4dc69884ae1969 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0136c064de55afd4 # initialize rs1
li x8, 0xa0f62e1c66d0775d # initialize rs2
or x22, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x31, 0x73de57d1f7452462 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaf97ba2f4dd48f81 # initialize rs1
li x9, 0x55c0cba833a32413 # initialize rs2
or x31, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x4, 0xef5cb2914047235e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0146c5ca23d9c27b # initialize rs1
li x10, 0x2edd34e92efaaca2 # initialize rs2
or x4, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x17, 0x7205555c768efd0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0c780a1001f545c6 # initialize rs1
li x11, 0x82d9e16d273bf779 # initialize rs2
or x17, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x24, 0x966ce10906fe73af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x30a13582e307a239 # initialize rs1
li x12, 0x7b2872ea47b2137b # initialize rs2
or x24, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x8, 0xc6aed837ba766fa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1dd6ca8ed8ce297f # initialize rs1
li x13, 0x4b584c3996c5a407 # initialize rs2
or x8, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x18, 0x71893258f19745e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x16cbda008c8a4d5c # initialize rs1
li x14, 0xfd5a6307d9a35513 # initialize rs2
or x18, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x31, 0x34dc50d274de1f54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x42edb71e2d09ce86 # initialize rs1
li x15, 0xd4faca683df07ea9 # initialize rs2
or x31, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x10, 0xf5edc43a0db10fee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x504cf8cda2c155ec # initialize rs1
li x16, 0x159026e2e6a69955 # initialize rs2
or x10, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x20, 0x1c425d7e7e233c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb135c6ec384c9046 # initialize rs1
li x17, 0x039946fb204d20b3 # initialize rs2
or x20, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x14, 0x8647506472e2a509 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6684114b5c1fb73c # initialize rs1
li x18, 0x6b333a95db2a22e2 # initialize rs2
or x14, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x17, 0x76d66d5f3bff3e40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa016f698949c8d7f # initialize rs1
li x19, 0xa4a00f50ed938b17 # initialize rs2
or x17, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x30, 0x9524faf4b1f834e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fa35832dedecf0a # initialize rs1
li x20, 0x593dd5af2887d2bd # initialize rs2
or x30, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x7, 0x547cd4ba911300cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa346d18185994a39 # initialize rs1
li x21, 0x7363fafce92536c0 # initialize rs2
or x7, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x7, 0x36f14638d1ece162 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x81b0d1e2ff91b667 # initialize rs1
li x22, 0xe69575b7f6d149e7 # initialize rs2
or x7, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x7, 0x2df6870eed757282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x958c679a2d67659a # initialize rs1
li x23, 0x3927f0449bdb8765 # initialize rs2
or x7, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x17, 0x6d49a13a352ef015 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x4a6f31cea4a09897 # initialize rs1
li x24, 0x217704efb7a28f96 # initialize rs2
or x17, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x5, 0xff103614130d1b42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9dbdd0f650f6eb5d # initialize rs1
li x25, 0xe9b9728eb6c0302c # initialize rs2
or x5, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x19, 0xae2158576d42d476 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd053696c4758a719 # initialize rs1
li x26, 0xff083913de8886c4 # initialize rs2
or x19, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x12, 0x0bb4855c2ae225d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8585b7c37c6cf315 # initialize rs1
li x27, 0xa713c7470a7092c6 # initialize rs2
or x12, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x25, 0xc8a29c420fe9b0f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x4d32dc790babeb5c # initialize rs1
li x28, 0xf740e179fe06cd75 # initialize rs2
or x25, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x8, 0xd6c8f49b1a0d90c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc3921856fc3960b6 # initialize rs1
li x29, 0xf330af4fcd1680ac # initialize rs2
or x8, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x22, 0x0e8fb0cafdb496a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb8974c7efe57c904 # initialize rs1
li x30, 0x5524cc4125199cdb # initialize rs2
or x22, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x15, 0xf7bf1d5b2c3dbb0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2ea569a1acdf7c2d # initialize rs1
li x31, 0x914c2dde45cc2bf1 # initialize rs2
or x15, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x685f54468965407c)
li x17, 0x6b1395922ca0064b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x685f54468965407c # initialize rs1
li x19, 0x35b19098a76c99ca # initialize rs2
or x17, x20, x19 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x45ad3aa1673705c3)
li x18, 0xd608d8a82a8a6d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xba52c55e98c8fa3d # initialize rs1
li x12, 0x255a6bab7a63181c # initialize rs2
or x18, x13, x12 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x24733868560b8637)
li x4, 0xd400a5a31d6b430b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3b25b16e1b5e3a54 # initialize rs1
li x11, 0x24733868560b8637 # initialize rs2
or x4, x21, x11 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x215a1a39ef7cde70)
li x14, 0xeab7492d1382f813 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7c0448d6b8272dcb # initialize rs1
li x7, 0xdea5e5c610832190 # initialize rs2
or x14, x19, x7 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
