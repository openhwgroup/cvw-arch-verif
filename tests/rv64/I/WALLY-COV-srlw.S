///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-srlw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.513889
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x2663f4cca5b683f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa33e7373f1f96774 # initialize rs1
li x30, 0x8c5f8109e0954a8d # initialize rs2
srlw x0, x10, x30 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x5b742e3ec631c88e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0ebee92095e46cee # initialize rs1
li x3, 0x87f9eeb587400d4c # initialize rs2
srlw x1, x16, x3 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x32170773558df37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x83fa2dd1a08b3d17 # initialize rs1
li x3, 0xeca88baec9613ab2 # initialize rs2
srlw x2, x12, x3 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x2182f7189b3b93ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x02db90e51150326d # initialize rs1
li x15, 0x2aad19635f5a45bc # initialize rs2
srlw x3, x8, x15 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x0880da5cf909f2da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfd572b77c43e99ee # initialize rs1
li x29, 0x84d41a10b3571372 # initialize rs2
srlw x4, x30, x29 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x8375e3c37016f5d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfd0e1d33a37d1a9d # initialize rs1
li x15, 0xde760e96a3babd20 # initialize rs2
srlw x5, x11, x15 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xae52e564dddc9bb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x47e7f2dffbaa12f9 # initialize rs1
li x12, 0x36b7f152fbf08ab4 # initialize rs2
srlw x6, x10, x12 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x5c83f0555902e126 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xccf6ccc306ded864 # initialize rs1
li x12, 0x80e04de4f3eefcc8 # initialize rs2
srlw x7, x17, x12 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x40357a0c2fb6b5d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0bea0596593db637 # initialize rs1
li x28, 0x27d409ba4b891e02 # initialize rs2
srlw x8, x29, x28 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xbec79b509eac83dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc3c26487d37eef31 # initialize rs1
li x26, 0xddf73183499db079 # initialize rs2
srlw x9, x29, x26 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x36b9679fbfab994d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x680bc29d36fcfc08 # initialize rs1
li x30, 0x78eaff2f3150c834 # initialize rs2
srlw x10, x3, x30 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xfee30f4c57cec6e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x305a68d9c929e488 # initialize rs1
li x15, 0x581d63ad5dfb48d1 # initialize rs2
srlw x11, x20, x15 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb0b686a0622e5a3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb362fdd22b277996 # initialize rs1
li x4, 0xdaffee269e42fd51 # initialize rs2
srlw x12, x5, x4 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xf44b810c4dd333da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x35826382c1419d65 # initialize rs1
li x4, 0x53c4ba7dc3638191 # initialize rs2
srlw x13, x1, x4 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xbc8b16dd6d0dc4f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x085f4bbd94acfec4 # initialize rs1
li x6, 0x3b1af28139098bc1 # initialize rs2
srlw x14, x27, x6 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x86488c1fbefb7fb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x59687b3e340d0869 # initialize rs1
li x7, 0x2c6a8c3ab3f15f0d # initialize rs2
srlw x15, x2, x7 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xb0f0523e4289880f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0dc27eb0b6e4c158 # initialize rs1
li x13, 0x59996de41df4e261 # initialize rs2
srlw x16, x1, x13 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x24ed2be1af60ec9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x850ce18ed5d87c85 # initialize rs1
li x21, 0xb64482bc6a5f116b # initialize rs2
srlw x17, x17, x21 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xa5c9616f0134d309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc5a62c32d97066e9 # initialize rs1
li x7, 0x72e3d8976d35f043 # initialize rs2
srlw x18, x11, x7 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xaf2cb1362b8da39f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb70de004be209bec # initialize rs1
li x8, 0xdb29a6fe731b3011 # initialize rs2
srlw x19, x12, x8 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xc1272a0171f1d74c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0945c88a2ba6a9f8 # initialize rs1
li x5, 0xc7dee563f7e2de8b # initialize rs2
srlw x20, x31, x5 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x31c44e1fd53c140c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4d9903e0fb64947f # initialize rs1
li x1, 0x03177861515f4716 # initialize rs2
srlw x21, x31, x1 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xc63baf0a69461070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6f797bf17c8e473e # initialize rs1
li x18, 0x6284c870b6a2ba10 # initialize rs2
srlw x22, x14, x18 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x12b412674475200c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x935bfcc7da73fdd2 # initialize rs1
li x1, 0x235c9c2988fc84fc # initialize rs2
srlw x23, x19, x1 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x96405396db2b63dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x42bf0e6509264b5e # initialize rs1
li x26, 0xe22f7090415ebded # initialize rs2
srlw x24, x21, x26 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xa5903a1523ad1bb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb2cd1f6c85124318 # initialize rs1
li x8, 0x913d0b54557bb9fe # initialize rs2
srlw x25, x20, x8 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xd8e78e840ffc8227 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0518f6840618aa13 # initialize rs1
li x25, 0xad2c64c006e9bd47 # initialize rs2
srlw x26, x23, x25 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xeb25328ae7bb477d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x956487dbe7a0f6bc # initialize rs1
li x23, 0xd6eae01e3776a820 # initialize rs2
srlw x27, x1, x23 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xa4c124fd764fdf26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80a67dcb47059e1b # initialize rs1
li x14, 0x63e02f3800fd9921 # initialize rs2
srlw x28, x16, x14 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x991bedde1bf4976a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x692c38b2d48c0f14 # initialize rs1
li x10, 0x70955b63b30fdb19 # initialize rs2
srlw x29, x1, x10 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x89816bf83fc369d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa16422cbc0dab78d # initialize rs1
li x28, 0xa9bb8c7265d13e4c # initialize rs2
srlw x30, x17, x28 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x2629df47fe79ac15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x203fb512740adf2e # initialize rs1
li x2, 0x1b0aa88061d215e2 # initialize rs2
srlw x31, x10, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x26, 0x15bc17dbc5a7e435 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8e8c72d2c8540c06 # initialize rs1
li x19, 0x025169ac4b685128 # initialize rs2
srlw x26, x0, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x4, 0xb07ae26146bb78d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6886c91bab07f6b9 # initialize rs1
li x23, 0x59f6af790a663556 # initialize rs2
srlw x4, x1, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x13, 0x280f06fb1663cb5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x9e6abc7a7cd038cd # initialize rs1
li x5, 0xf26b244cf99f4677 # initialize rs2
srlw x13, x2, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x9, 0x811c779a4c76bf5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xde06723981de2c0d # initialize rs1
li x29, 0x705212cdcc58aafe # initialize rs2
srlw x9, x3, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x14, 0x988a1b8d8a71f771 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x9db57890953c6f4b # initialize rs1
li x28, 0x46e9a0d36c276e03 # initialize rs2
srlw x14, x4, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x8, 0x2bab44e02e4753e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x37d0011e012dd7e9 # initialize rs1
li x22, 0x6979a9b9d0fbbec8 # initialize rs2
srlw x8, x5, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x28, 0x1b9e3520ee81779e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x065ca068bd7fdb80 # initialize rs1
li x27, 0x4ce0d4becb3719a6 # initialize rs2
srlw x28, x6, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x19, 0x0a97659be48a7fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x87e09843655ea415 # initialize rs1
li x28, 0x992d304b61137155 # initialize rs2
srlw x19, x7, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x26, 0x8b1a429a7f5426ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x18d5e55fc5a8348f # initialize rs1
li x31, 0x1824ba7994bb40c2 # initialize rs2
srlw x26, x8, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x24, 0xcb09c9d9b2459da4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x67de413818d00d99 # initialize rs1
li x11, 0xf2f0945f704e4ef2 # initialize rs2
srlw x24, x9, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0x89881b880a0630bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbe2b0f5dd2d192d5 # initialize rs1
li x2, 0x6be10882b2ccd977 # initialize rs2
srlw x9, x10, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x28, 0xadc2c9d8a0dc854e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xff8336ae2973be47 # initialize rs1
li x1, 0x7f330885a39d2b0f # initialize rs2
srlw x28, x11, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x27, 0xfc3e06d06d80b09d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x01f4fd866ed77634 # initialize rs1
li x6, 0xdf1b631f50200372 # initialize rs2
srlw x27, x12, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x16, 0x78a1eb8a5d2c2928 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbf291712a1a9e39c # initialize rs1
li x19, 0x9e51120411304021 # initialize rs2
srlw x16, x13, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x15, 0xe2c4b59a668e7bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcd00cc542727dab2 # initialize rs1
li x20, 0x1fd7ea9b2fcfd9fb # initialize rs2
srlw x15, x14, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x4, 0xe5fc79b5f68e6601 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa6659b2f5d865773 # initialize rs1
li x12, 0xdb4d3f26ae873dda # initialize rs2
srlw x4, x15, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x3, 0x0c5d1f222f10ff24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x032df4e7eacceb8d # initialize rs1
li x8, 0x06912c3d9f44e18c # initialize rs2
srlw x3, x16, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x22, 0x4af44b55c91b8305 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xef003d43501822f0 # initialize rs1
li x12, 0x4f6dc7168fd0d663 # initialize rs2
srlw x22, x17, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x7, 0xdcc0deb5ddf299c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3cb310c138e03921 # initialize rs1
li x22, 0x4510915bf4975182 # initialize rs2
srlw x7, x18, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x10, 0xca2ce5869088018f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf8b6b55d17a1a1b7 # initialize rs1
li x1, 0xff39659bfc99064c # initialize rs2
srlw x10, x19, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x4, 0x9b3741d594aac826 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x25db7458d4562907 # initialize rs1
li x19, 0x6b37aeccdbb233a7 # initialize rs2
srlw x4, x20, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x4, 0x1b3aa60f47c5c83f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6890de28b30a4704 # initialize rs1
li x7, 0x9370b4846806dc02 # initialize rs2
srlw x4, x21, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x19, 0x08c6cfb155850d1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbfa074d31a43eefe # initialize rs1
li x6, 0x90a21bbf683de322 # initialize rs2
srlw x19, x22, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x12, 0x412ce7ec1b3f29c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x72f11a5b3a6ceabb # initialize rs1
li x1, 0x3df555face562066 # initialize rs2
srlw x12, x23, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x22, 0x3f5f79fdd9421c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x856b259522dc6dc4 # initialize rs1
li x18, 0x2cf541fa8fbb9fcb # initialize rs2
srlw x22, x24, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x19, 0x3a98af06acb17a68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa74f75cd04715151 # initialize rs1
li x10, 0x1feee11290aeef71 # initialize rs2
srlw x19, x25, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x4, 0xefc47ad62f6e7cca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1bcc5bd324520d05 # initialize rs1
li x6, 0x0f373b2938417abf # initialize rs2
srlw x4, x26, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x21, 0x3848b783df26a7df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x42dcaed81d667816 # initialize rs1
li x15, 0xf8a4a04013d1af67 # initialize rs2
srlw x21, x27, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x7, 0x9f9c72866e97d46b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb098faec098417f0 # initialize rs1
li x27, 0x3ca0588103106ec0 # initialize rs2
srlw x7, x28, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x24, 0x25b2575bd13d5f4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe9fd54165d65e85c # initialize rs1
li x26, 0xe965ac2d96433152 # initialize rs2
srlw x24, x29, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x25, 0xba77c5fc56120734 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6e9a0f29ad6c996e # initialize rs1
li x10, 0x2ece963a4d20f38e # initialize rs2
srlw x25, x30, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x27, 0xea467c0e9f4935d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xbcc67f12f2d68864 # initialize rs1
li x8, 0x8917977403fd7016 # initialize rs2
srlw x27, x31, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x2, 0x1cfbc95add93acb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf72443f493717c6b # initialize rs1
li x0, 0x7691e18fb77e8d45 # initialize rs2
srlw x2, x18, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x2, 0x0672f06b798341dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xce833d423edeb52b # initialize rs1
li x1, 0xdc4a2724ec902495 # initialize rs2
srlw x2, x30, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x7, 0xd86a25249c68a7ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x03dbd6e5bc590910 # initialize rs1
li x2, 0x03c763565f36d794 # initialize rs2
srlw x7, x23, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x7, 0x815eb7f40c81753e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x095b63efea322657 # initialize rs1
li x3, 0xa5d4832d8da60c4a # initialize rs2
srlw x7, x14, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x1, 0xe6e4e9bb83fa7b84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xef3e05fb84c79c7e # initialize rs1
li x4, 0x3ed8b93c185ff3fe # initialize rs2
srlw x1, x28, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x16, 0x2b58c77856a52a9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x198859b0e7b901c6 # initialize rs1
li x5, 0xbfb8b71c44a921c0 # initialize rs2
srlw x16, x19, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x28, 0x275c86cc13f7b3c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfee867240334f43a # initialize rs1
li x6, 0x70918d95838b28ba # initialize rs2
srlw x28, x9, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x18, 0x864fdd256c6502d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xbc8f8f6e9ea9c7d7 # initialize rs1
li x7, 0x89e93f7357ac3f4c # initialize rs2
srlw x18, x30, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x30, 0x64db6ebe5ecd98e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x942c3982de19d1b8 # initialize rs1
li x8, 0xa180a51fdbcc9792 # initialize rs2
srlw x30, x24, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x26, 0xb1f0915e45855769 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0494a4c0a4fccd7b # initialize rs1
li x9, 0x053ec65bf9d4025f # initialize rs2
srlw x26, x25, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x22, 0x388d65e067f988b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x35dd21985f5ddbfd # initialize rs1
li x10, 0x575a3e1f5b1b87b7 # initialize rs2
srlw x22, x18, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x7, 0x818d4ed16d27881b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x918e815bb22a274f # initialize rs1
li x11, 0xa1886feb7dc7b7a2 # initialize rs2
srlw x7, x17, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x28, 0x211afa38a2699370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3d26cf98d799a35d # initialize rs1
li x12, 0x047bbdda72a66da4 # initialize rs2
srlw x28, x21, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x27, 0x3a0e710c5a52cfcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x69194a8daae19229 # initialize rs1
li x13, 0x03f245e2315384e1 # initialize rs2
srlw x27, x12, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0xbc8b2380b70704a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x1ac159bedbf128fe # initialize rs1
li x14, 0xd82b28d4254e4e2f # initialize rs2
srlw x3, x16, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x26, 0xa079bcee09b91fee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x67ebdf74cecafdf4 # initialize rs1
li x15, 0x93296cabc7adabdd # initialize rs2
srlw x26, x10, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x18, 0x2b116e84f2447725 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4f49ecd59576d269 # initialize rs1
li x16, 0x9b7195abb6cbfb79 # initialize rs2
srlw x18, x12, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x4, 0x5f936ec6d79ef204 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfbfa052ce3c9a8f2 # initialize rs1
li x17, 0xc3b780fd55eb1bdb # initialize rs2
srlw x4, x10, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x22, 0xb3636b0a5edbbebe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x58415a18add9bb82 # initialize rs1
li x18, 0x7179214feab7b7b9 # initialize rs2
srlw x22, x5, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x26, 0xdda15a1dbd651f77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x451ff252c33cdcfc # initialize rs1
li x19, 0x2a0d8e00a6aef052 # initialize rs2
srlw x26, x27, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0xd5be40ede1f1db21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbbe4da59f37f7bb7 # initialize rs1
li x20, 0xd82b1f07ac63b7c6 # initialize rs2
srlw x18, x22, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x11, 0xe8e0f45c1f301d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xee99bd825d9ed393 # initialize rs1
li x21, 0x379c51caaab3f9f6 # initialize rs2
srlw x11, x16, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x26, 0x5584f9cd37502efa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x03ea7cb8a6500912 # initialize rs1
li x22, 0x596f9b1c4f2b4c34 # initialize rs2
srlw x26, x3, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x16, 0x6dc2ab81140a3060 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf3ffcaf99fe95df1 # initialize rs1
li x23, 0xe8fc3bc33f3e14b7 # initialize rs2
srlw x16, x21, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x2, 0xaadc47e5a3a8ba17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x955435cf3956d380 # initialize rs1
li x24, 0xe296797e196a907f # initialize rs2
srlw x2, x13, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x7, 0x1685f87b62b9c5f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc101fa06e0f11641 # initialize rs1
li x25, 0xbf0cca074102673a # initialize rs2
srlw x7, x27, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x23, 0xfc0f98c5f49e4353 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffb0a08cafd3d0dc # initialize rs1
li x26, 0x524d1d08482fd8c1 # initialize rs2
srlw x23, x21, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x26, 0x91bb10063d191342 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf8ee215c0022adc2 # initialize rs1
li x27, 0xa813b7c89fde7ca4 # initialize rs2
srlw x26, x20, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x11, 0xc48c2fa7b5e47312 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd05ba583c79bd092 # initialize rs1
li x28, 0x7560cb6c1e9a9ef2 # initialize rs2
srlw x11, x6, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x22, 0xf8093ec4f71e1e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x75d15f4212a3f1de # initialize rs1
li x29, 0xfbf8114a3ce6da49 # initialize rs2
srlw x22, x14, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x25, 0x7a77092ca4198b9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x95a65c21e0b9539d # initialize rs1
li x30, 0x058a7b7c2d1eaa8a # initialize rs2
srlw x25, x28, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x16, 0x357b1fda42771844 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x03ada230de4c0c27 # initialize rs1
li x31, 0xada7b6910037516f # initialize rs2
srlw x16, x25, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xf5b0be1d4ebc7549)
li x9, 0xde7dc2088d374d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xde7dc2088d374d45 # initialize rs1
li x0, 0xf215e93a557739be # initialize rs2
srlw x9, x27, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x184c4e2491b47304)
li x16, 0x184c4e2491b47304 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x184c4e2491b47304 # initialize rs1
li x18, 0x184c4e2491b47304 # initialize rs2
srlw x16, x0, x18 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x10046ee9160b7931)
li x21, 0x34e62ccc4279a1e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x10046ee9160b7931 # initialize rs1
li x26, 0x10046ee9160b7931 # initialize rs2
srlw x21, x20, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x9, 0x0ba5f401bdbc00a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x0, 0x4af1271693ed92f6 # initialize rs2
srlw x9, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x6, 0xe9adb0af40d51ab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
srlw x6, x2, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0x2869942f093bc098 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
srlw x3, x21, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x15, 0x5d933db836b3fe25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000001 # initialize rs1
li x0, 0x8099ebee60f42f09 # initialize rs2
srlw x15, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x9c5dae912567fc7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
srlw x30, x18, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x31, 0x245ed8b278c67041 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
srlw x31, x29, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0x7b296a72184376be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x0, 0xdcfd60699a24d2d4 # initialize rs2
srlw x10, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x15, 0x2ea138ea7824c4a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
srlw x15, x9, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x22, 0x371ed928ebdcd9fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
srlw x22, x11, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x20, 0x4657ccc6e0d721ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000080000000 # initialize rs1
li x0, 0x3bf8ceafd8a0591b # initialize rs2
srlw x20, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x5, 0x69cb88a2e0feba73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000080000000 # initialize rs1
li x11, 0x0000000080000000 # initialize rs2
srlw x5, x23, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x10, 0x8afa1b1676cd09b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000080000000 # initialize rs2
srlw x10, x7, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x14, 0xe1626f57be42ec2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000080000001 # initialize rs1
li x0, 0x22b8ab92b775f5a5 # initialize rs2
srlw x14, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x19, 0x00c1573895c4b505 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000080000001 # initialize rs1
li x28, 0x0000000080000001 # initialize rs2
srlw x19, x11, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x19, 0xf66857adf3d15e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000080000001 # initialize rs2
srlw x19, x10, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x31, 0xfee51dd6744f9049 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x000000007fffffff # initialize rs1
li x0, 0x172596dc21b66cec # initialize rs2
srlw x31, x26, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x30, 0xa0faef1af7c4c4a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x000000007fffffff # initialize rs1
li x17, 0x000000007fffffff # initialize rs2
srlw x30, x8, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x22, 0x3ae2ff0fb14de001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x23, 0x000000007fffffff # initialize rs2
srlw x22, x14, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x3, 0x16f3a14da5bb673f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x000000007ffffffe # initialize rs1
li x0, 0x2beefdeedc829d96 # initialize rs2
srlw x3, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x26, 0x83afb2c97ea22bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000007ffffffe # initialize rs1
li x28, 0x000000007ffffffe # initialize rs2
srlw x26, x9, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x12, 0xb59182dff571fdaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x16, 0x000000007ffffffe # initialize rs2
srlw x12, x9, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x8, 0x454c7d7521b72360 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x0, 0x4c1340778df9b925 # initialize rs2
srlw x8, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x4, 0xdea9b516a6ba2a07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
srlw x4, x15, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x25, 0xfec05ddea8fa1f4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
srlw x25, x11, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x17, 0x793b765cb474bd2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x0, 0x793dadcf8f634821 # initialize rs2
srlw x17, x24, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x3, 0x545bd894fb93db16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
srlw x3, x2, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x14, 0x60a251dcaf6c005b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
srlw x14, x21, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x4, 0x5578ccb42b5169a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000aaaaaaaa # initialize rs1
li x0, 0x6132b0dde2a05e59 # initialize rs2
srlw x4, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x27, 0xf1642ebacb845d88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000aaaaaaaa # initialize rs1
li x15, 0x00000000aaaaaaaa # initialize rs2
srlw x27, x7, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x17, 0x48f21d0f9ee09b0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x31, 0x00000000aaaaaaaa # initialize rs2
srlw x17, x22, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x23, 0xff7304134f06addb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000055555555 # initialize rs1
li x0, 0x7f64c911efe4b104 # initialize rs2
srlw x23, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x3, 0xcfbc2b6dc93fb0bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000055555555 # initialize rs1
li x20, 0x0000000055555555 # initialize rs2
srlw x3, x31, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x28, 0x352ce4739518360a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000055555555 # initialize rs2
srlw x28, x31, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x15, 0xcd349dbb3f35e618 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000063ae86f7 # initialize rs1
li x0, 0xec52d14ef2404555 # initialize rs2
srlw x15, x24, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x19, 0x65a8ef2f3e7b4c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000063ae86f7 # initialize rs1
li x15, 0x0000000063ae86f7 # initialize rs2
srlw x19, x21, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x27, 0xf63c94307f04e4b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000063ae86f7 # initialize rs2
srlw x27, x13, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x23, 0xcc0b54bf728e9643 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000e3ae86f7 # initialize rs1
li x0, 0x91ac63f686113a43 # initialize rs2
srlw x23, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x18, 0xf1ff42128956b0a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000e3ae86f7 # initialize rs1
li x29, 0x00000000e3ae86f7 # initialize rs2
srlw x18, x5, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x24, 0x2ef3a34a92d99d23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x27, 0x00000000e3ae86f7 # initialize rs2
srlw x24, x19, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0x1019ebb8fd2de043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs1
li x27, 0xf027f49b26c94e54 # initialize rs2
srlw x25, x8, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x23, 0x9abafb186b296ea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x26, 0xa78258b5e081433a # initialize rs2
srlw x23, x8, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0x1e3d900536c58c56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x30, 0xdc86f48a18a556db # initialize rs2
srlw x21, x13, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x11, 0xdd2df7d1d9b880cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x12, 0x55935bd97817b1b4 # initialize rs2
srlw x11, x13, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x24, 0xdfd9ae6277976de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x1, 0xafb7aff9e3ac027c # initialize rs2
srlw x24, x20, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x23, 0x7180a034b3997dec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffffffffffff # initialize rs1
li x12, 0x2dd0d11fdf735910 # initialize rs2
srlw x23, x5, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x11, 0xe1972863c2a0da5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x5, 0xb074afac9e3f81f6 # initialize rs2
srlw x11, x13, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x9, 0x763914d323a69555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x7, 0xc10eb5a8f1afd1a5 # initialize rs2
srlw x9, x17, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x24, 0x95d74371996296d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffffffffffe # initialize rs1
li x8, 0xff4c99f4f0f28ae6 # initialize rs2
srlw x24, x17, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x7, 0x2e318d3c3f6199f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0xb161e6fbc8dcfb2a # initialize rs2
srlw x7, x12, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x25, 0xd2c3a9251dcaa310 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x3d7eec0071f7b97d # initialize rs2
srlw x25, x10, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x25, 0x5d1fceae107f4d2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x28, 0x820204ec59a118a2 # initialize rs2
srlw x25, x11, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x21, 0xc289220e723cf2b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # initialize rs1
li x22, 0xad0e35dbc9e992a1 # initialize rs2
srlw x21, x4, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xaf1443e656ba2dcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x29, 0x67efc984652bda52 # initialize rs2
srlw x8, x9, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x9, 0x9756ce0e34726969 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x16, 0x25bdaf948f6be22b # initialize rs2
srlw x9, x15, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x11, 0xb1f0ed4c26e4eeca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x22, 0x19a5a82e51243e74 # initialize rs2
srlw x11, x26, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0x5d492658499b91d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x549eb38dc78378a2 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
srlw x19, x29, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0xf9e6a84c2c702541 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5b0004e9e7b2a203 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
srlw x6, x22, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x09df93b54cac40a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x714df0da9f79bda1 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
srlw x10, x7, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x5, 0xcad167aac5d4a963 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc587db7f1b540cb5 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
srlw x5, x1, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x22, 0x704b819b7f2a0d6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaf96a455b871223a # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
srlw x22, x26, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x14, 0xa2e94c53c1e76d05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc986efc6dc34b945 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
srlw x14, x16, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x1, 0xbe3f51ee6ba24390 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd4535262d4222ec3 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
srlw x1, x2, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x8, 0xd04bba1bc5f61e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xab827a01375f072e # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
srlw x8, x31, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x16, 0x62ba4afbf738342e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x207687c06b60bfa9 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
srlw x16, x28, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x16, 0xeb8794b6d3319156 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x87b4acdfc94d18a8 # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
srlw x16, x24, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0x60ec20386c043aa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x988df2f8312382d5 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x16, x9, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x1, 0x32905f93bec03757 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5e4e2dbf4311168c # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
srlw x1, x5, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0x8e7a903caecac62d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf138f00703a56d31 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
srlw x25, x16, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0x974809b6c9f007f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x41c74cd54944eed6 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
srlw x19, x13, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x13, 0xbb50fa4aeb48b1e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x549715b6587f029b # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
srlw x13, x19, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x10, 0xd590a27eba9b7a85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1bfd10fb7d0bc4e9 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
srlw x10, x4, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xfdc34d2e7d70b43d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc68975da5b6dd110 # initialize rs1
li x26, 0x6f2fc77c23215d18 # initialize rs2
srlw x0, x0, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x909b1622d2ba08f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1341420ac8ebd294 # initialize rs1
li x20, 0x37fe967468f873c8 # initialize rs2
srlw x1, x1, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x319af8512d1695cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6f225ec408b6a0d9 # initialize rs1
li x24, 0xec75b5c6d813520a # initialize rs2
srlw x2, x2, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xa1075cff855a5e35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6d5c4a4c5dca82ec # initialize rs1
li x7, 0x67261afd5a0b125f # initialize rs2
srlw x3, x3, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xdc3620a1527a6a75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x41c20651c188fd02 # initialize rs1
li x7, 0xfe3a2e85048a0bfe # initialize rs2
srlw x4, x4, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x6e6e63e6502a201a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffb79a5449297fc6 # initialize rs1
li x4, 0x09694a454e5454b5 # initialize rs2
srlw x5, x5, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xa690266bc3e39e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbd147ca6985ed524 # initialize rs1
li x31, 0x5bfe16f8eef13e7d # initialize rs2
srlw x6, x6, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xf097ee3f5a6a4814 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf27fb61b82142296 # initialize rs1
li x19, 0xf05a316728687a72 # initialize rs2
srlw x7, x7, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x50ab928107e30abc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd3c2471a309f6fec # initialize rs1
li x11, 0x42d30177ef3a00f0 # initialize rs2
srlw x8, x8, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x527f03ae56af04c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf0a0d4a0226f5f80 # initialize rs1
li x25, 0x4336dc92e638a430 # initialize rs2
srlw x9, x9, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc8d6e1392486273b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x15782976ab8992e5 # initialize rs1
li x2, 0xe46d891873ba88f3 # initialize rs2
srlw x10, x10, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xc933665fe20cfafb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x91330767f5e6b09a # initialize rs1
li x25, 0xd024e5bb32697bd4 # initialize rs2
srlw x11, x11, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xae521f55484ab00b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x27b11d46b9b4f290 # initialize rs1
li x20, 0x7a1efb3735262ac1 # initialize rs2
srlw x12, x12, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xec2fb6564a220c58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x76b13db852f3b1b8 # initialize rs1
li x14, 0xd59bff179d7fc20d # initialize rs2
srlw x13, x13, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x5fb05ba2d2ddf9fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x21edb500ffe39f3a # initialize rs1
li x13, 0x97b9f97218067090 # initialize rs2
srlw x14, x14, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2dc3797c942e676e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdc87d51e168cc231 # initialize rs1
li x31, 0x69dc97c6642f2aa0 # initialize rs2
srlw x15, x15, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x9658eb5412c753e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa7305154f5bc5d47 # initialize rs1
li x7, 0xad20f4b9fd4d55ff # initialize rs2
srlw x16, x16, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x393a5fc1c28a7785 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6012b388922d09a4 # initialize rs1
li x19, 0x238495187decae8d # initialize rs2
srlw x17, x17, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xb760bcac3fa39288 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4caaaf3553b5b2b5 # initialize rs1
li x10, 0xe03afc4ceb3c7a08 # initialize rs2
srlw x18, x18, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x236bdfc93aa56bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc7b39e162ed691e5 # initialize rs1
li x11, 0x96feec0a152af726 # initialize rs2
srlw x19, x19, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa67b7870ef6f5797 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa2dd81ebe89ce57f # initialize rs1
li x12, 0x824b58332dcc89d8 # initialize rs2
srlw x20, x20, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x9a2b88bd421f76db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0d9c0c04d669a317 # initialize rs1
li x19, 0x681de2a7e3f19774 # initialize rs2
srlw x21, x21, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb5b048bb11eef191 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb018528540d9f778 # initialize rs1
li x26, 0xe795a9429b5bd796 # initialize rs2
srlw x22, x22, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x573bef2626f10786 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x091bec81c2e2e530 # initialize rs1
li x19, 0x3f9c0acfe181cf0d # initialize rs2
srlw x23, x23, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x9d68cbd998785157 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x929d1a8e98dc5d81 # initialize rs1
li x26, 0x521e06bd17cf3b9a # initialize rs2
srlw x24, x24, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x3edb37796aa2feeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1db83efd9224b99c # initialize rs1
li x31, 0x9a5eb6535591eb7a # initialize rs2
srlw x25, x25, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xc49ad1639a68aea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x21d113eec1972bd8 # initialize rs1
li x13, 0x0eb925b31fcfb53e # initialize rs2
srlw x26, x26, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x932f6955ddb5bb95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf7584cf51fd42e1a # initialize rs1
li x21, 0x2cd8e340f0edc9be # initialize rs2
srlw x27, x27, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xd971b51dbf509b30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3dff9a653bbc1650 # initialize rs1
li x15, 0x8070c8000f1bc0da # initialize rs2
srlw x28, x28, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x5bfdfcd79053c115 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9f44a3be4ed031e4 # initialize rs1
li x12, 0x73c756baa7cbf58e # initialize rs2
srlw x29, x29, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x0048a93960654127 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf07648863a5233eb # initialize rs1
li x13, 0xf451b546d966b621 # initialize rs2
srlw x30, x30, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xaa7e41ad9bb327fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x92a20bc006d1e844 # initialize rs1
li x16, 0x235b6223ce1d3311 # initialize rs2
srlw x31, x31, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x47965701cb4b20e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xff10f4f4be8bfdad # initialize rs1
li x0, 0xa4082af2f973b579 # initialize rs2
srlw x0, x15, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x7a45a8676df011e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa055eaa16fcadb73 # initialize rs1
li x1, 0x537271eebca28bcb # initialize rs2
srlw x1, x14, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xfe6764fbd444ea1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xec65ca61bcd24474 # initialize rs1
li x2, 0x54b293da8ee25aca # initialize rs2
srlw x2, x13, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x20ca883110847030 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb0cd9148797dcf66 # initialize rs1
li x3, 0x38615d9a88e5ec37 # initialize rs2
srlw x3, x11, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xabf4ad9f597f6fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8ea0765af422b099 # initialize rs1
li x4, 0x99ecc855c3d5a9a5 # initialize rs2
srlw x4, x14, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x95de8d104eb784a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6676256f01fb51d2 # initialize rs1
li x5, 0x75c1871ffb801c7f # initialize rs2
srlw x5, x21, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x3528648a1e4a2f78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7b1e72fbdc3898fd # initialize rs1
li x6, 0x60712e8275bcb1ea # initialize rs2
srlw x6, x12, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xc6733b703129a81d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3cc1158643bd83d4 # initialize rs1
li x7, 0x2f6e2030cba167e6 # initialize rs2
srlw x7, x30, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x1d9b0d6d67fcd70f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x930f2e5528c82ed7 # initialize rs1
li x8, 0x736db8350c7e08a6 # initialize rs2
srlw x8, x20, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x406ae14297fdbfe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x87e16495282312ea # initialize rs1
li x9, 0x669802cbf10b3ec4 # initialize rs2
srlw x9, x25, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xe4562af8c305312b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x059c97bc2e722320 # initialize rs1
li x10, 0x1ead04364c4eaca2 # initialize rs2
srlw x10, x22, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xee558fb70f485702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xac65aba3d5adccdf # initialize rs1
li x11, 0xabc937478881a592 # initialize rs2
srlw x11, x19, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x36b4b15fe54b1e6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x39b9c5ba3845a7a2 # initialize rs1
li x12, 0xd184bf00f643528a # initialize rs2
srlw x12, x14, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xe766ddf68d2392a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb65b8368833a1d6f # initialize rs1
li x13, 0xfc314ef3217d1f3a # initialize rs2
srlw x13, x17, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x52b61935c056e938 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8f287bf16046df8a # initialize rs1
li x14, 0xd15a3ac2394ac1b8 # initialize rs2
srlw x14, x9, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x4933095b9f337574 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb936a237b85a203f # initialize rs1
li x15, 0x6c9b01bd1057c9c0 # initialize rs2
srlw x15, x25, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x743e6c22c96e32ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2958180608e0e018 # initialize rs1
li x16, 0xde2921780b01b9cc # initialize rs2
srlw x16, x13, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xe96ef79f0beab352 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6dc13c088bc28f8f # initialize rs1
li x17, 0x6659f69bde6143b8 # initialize rs2
srlw x17, x4, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x97d351784052e574 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xcdb2b0f6e0aa55ed # initialize rs1
li x18, 0xdc9edb6a82c2e249 # initialize rs2
srlw x18, x10, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xf085bdf5dd9d9862 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x56236d1af0aa9d38 # initialize rs1
li x19, 0xc66b7ad9cfcc5b57 # initialize rs2
srlw x19, x13, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xd1e5895a83f5a8b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xac66288c75df5312 # initialize rs1
li x20, 0x9d1e3fae4349b6f4 # initialize rs2
srlw x20, x21, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xdbbcf2d9b8014c17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfcbb690d90d82a6e # initialize rs1
li x21, 0x1a79421749eedfc0 # initialize rs2
srlw x21, x10, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x0d62a92b32e523b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5e3b662485cc3f70 # initialize rs1
li x22, 0x60e1c24db88dc534 # initialize rs2
srlw x22, x16, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x98907b1b762dfc30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfb0eba6d04922ed3 # initialize rs1
li x23, 0xa1beaa8e9808ef33 # initialize rs2
srlw x23, x25, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x49833aa6086928df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3926b86c3a152747 # initialize rs1
li x24, 0x6388d92d6ac1a4f1 # initialize rs2
srlw x24, x29, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x1b5df4c8186b6f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xff7af4a029446226 # initialize rs1
li x25, 0x15b05df8dd5b2c5c # initialize rs2
srlw x25, x13, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xcea74c1810a5523a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd497a3ff0980266c # initialize rs1
li x26, 0x54443355c424af43 # initialize rs2
srlw x26, x17, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x8e49db59608e860e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfb3c4834ceeda730 # initialize rs1
li x27, 0xf7474523d4f0d6f3 # initialize rs2
srlw x27, x4, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xd728d1359d9931a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdaaa1ede7b158691 # initialize rs1
li x28, 0x0aa0c8bac034a65b # initialize rs2
srlw x28, x7, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x6cda4d92d5eeb89c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc4f761fb4dc32e34 # initialize rs1
li x29, 0x95b314f884f9ec78 # initialize rs2
srlw x29, x10, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x114ea2560236d6c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x30eb310d84f62cd1 # initialize rs1
li x30, 0x6e32a6a85cb862f5 # initialize rs2
srlw x30, x21, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x173ca5c6494eda41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5f561c1907fff6d8 # initialize rs1
li x31, 0x0b7b4019240561c5 # initialize rs2
srlw x31, x3, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xace9423857341b4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7ec9203d2be5fbdd # initialize rs1
li x0, 0x3ec3eea3ede656c5 # initialize rs2
srlw x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x45d99d802dcb94ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7c437097da80a1fe # initialize rs1
li x1, 0x6dff1be99b30ad6f # initialize rs2
srlw x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x602e7f6f62a768c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2a57788836aaebdc # initialize rs1
li x2, 0x689910266ef15f63 # initialize rs2
srlw x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x8bb186abcb5cb476 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x299a377a8d4452e3 # initialize rs1
li x3, 0xa349c6f3334fca4f # initialize rs2
srlw x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x175914ae4c5a93db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x38bf27cc786d018d # initialize rs1
li x4, 0xb9f784b1fbabec3e # initialize rs2
srlw x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x5a4e4f7fcf2cf930 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa67854f595a3f6f8 # initialize rs1
li x5, 0x754ced397df87a55 # initialize rs2
srlw x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x20cf2111b6d8a9f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x08eb77cbc2169bf8 # initialize rs1
li x6, 0x4f98fd4b3ccbaee3 # initialize rs2
srlw x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x66c7ad94a4360aff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0c7d34e1ce2aa903 # initialize rs1
li x7, 0x351f9e6f3f2dc177 # initialize rs2
srlw x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xb73ca2900faa068d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5d9eb7fb25daabab # initialize rs1
li x8, 0xd6a95cd696c39b58 # initialize rs2
srlw x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x83b7bd4faf3167cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x92ab4a0eb3f74d82 # initialize rs1
li x9, 0x2d7de5fd508e8818 # initialize rs2
srlw x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x18986c12a53ecf23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x241b8c6934ef8141 # initialize rs1
li x10, 0x69f33de25fdb3bfe # initialize rs2
srlw x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xbbc360c7e2e7a576 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x44fa3cc8ae8e3525 # initialize rs1
li x11, 0x8005746247fab4c4 # initialize rs2
srlw x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x70db7699b6c58486 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0fde1519f75bf98f # initialize rs1
li x12, 0xd3c0fddbb2c99eba # initialize rs2
srlw x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x1b8ef777b8ab5407 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9d17396919f5343e # initialize rs1
li x13, 0x95c187b79e6734bf # initialize rs2
srlw x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd96b243c0af4f52b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2a298294a0b17be8 # initialize rs1
li x14, 0x13d173f9c78a78ca # initialize rs2
srlw x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x13f953d42b64eee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x81b797837a2bc707 # initialize rs1
li x15, 0xe4467b81ac8bd257 # initialize rs2
srlw x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x14470df7d4b97de3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x687c2ca214972c13 # initialize rs1
li x16, 0x7eb032122dc13848 # initialize rs2
srlw x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x94bf7c04e3747c50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x900b43c1b175591d # initialize rs1
li x17, 0x7b004f30d4993a00 # initialize rs2
srlw x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x6771091057ff0a86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc3c43b4d9ae54ef3 # initialize rs1
li x18, 0xcb65120a0e6ae6ce # initialize rs2
srlw x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xb6175a5b796476d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x594b183aabf8d2bc # initialize rs1
li x19, 0x023ac54c29f66dc9 # initialize rs2
srlw x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x546c7de1a0a1bc0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc9b688f280c18b73 # initialize rs1
li x20, 0xb293e75057599d95 # initialize rs2
srlw x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x2e03b0973dff00b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x91ee42e8b92a75db # initialize rs1
li x21, 0xe67b1872fda04e56 # initialize rs2
srlw x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xacb4eb6fb548acb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x33f3162e2928d4b0 # initialize rs1
li x22, 0x7b0761ee903fd35c # initialize rs2
srlw x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x0b36ddd72f6c2630 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb7464b2678dd07ef # initialize rs1
li x23, 0x7054aebbc692bfb5 # initialize rs2
srlw x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x73e6f2bfe886fc8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0c4313c07bbc08c5 # initialize rs1
li x24, 0xcd9860d79144e5ca # initialize rs2
srlw x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xe9be930db7b2b8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4301985bcc59d4a5 # initialize rs1
li x25, 0x008592eacc8e7322 # initialize rs2
srlw x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xd4acd8eb221e00e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x27f70340850e7ae3 # initialize rs1
li x26, 0x0380faf51cfc65f5 # initialize rs2
srlw x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xec7d8da8d8e29253 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3fca9c918ae2fe45 # initialize rs1
li x27, 0xa4da928ab6e90346 # initialize rs2
srlw x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xd80e8b7bf940f3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8df8ce161dc1075d # initialize rs1
li x28, 0xcb2ed4b351fe1ca4 # initialize rs2
srlw x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xba581a67afd1e5b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x259ed7693dd625a6 # initialize rs1
li x29, 0x79144785c6f98a62 # initialize rs2
srlw x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xf9b49c736838f060 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe6a57bfe88b6519f # initialize rs1
li x30, 0xdf853ab201de3889 # initialize rs2
srlw x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xc54f4ab000565539 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x53fbb5335c3e498a # initialize rs1
li x31, 0xfaf33221d0f9cf2e # initialize rs2
srlw x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x10, 0x521bd34de1ec1c90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x87e498e36a6305d1 # initialize rs1
li x0, 0xeee5c7438e14b434 # initialize rs2
srlw x10, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x26, 0x30ec9f27eff2ede7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x05f3fadf21b5edcb # initialize rs1
li x1, 0x13f260703b381ef1 # initialize rs2
srlw x26, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x19, 0xb5952204b4bb35ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1e32090388469706 # initialize rs1
li x2, 0xabc00917dd6424a3 # initialize rs2
srlw x19, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x18, 0x7d451f89291b4bff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8c35e2d91288dc79 # initialize rs1
li x3, 0x10874be59632da19 # initialize rs2
srlw x18, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x18, 0x5716589e1d99cd6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x414b92d327db557b # initialize rs1
li x4, 0xd1fa27905c7dc5be # initialize rs2
srlw x18, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x5, 0xe9d4a2442e61d774 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa0b1ebfa032fbb30 # initialize rs1
li x5, 0x471491c3b83522b6 # initialize rs2
srlw x5, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x19, 0xfb0e2a9aa4421a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe156d4723603d7dd # initialize rs1
li x6, 0x4cf736c83860cd02 # initialize rs2
srlw x19, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x21, 0x55da4b72fe83fef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x207e47d551911cc3 # initialize rs1
li x7, 0x589f1f31def77020 # initialize rs2
srlw x21, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x13, 0xb42d0ca38def843a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7de90059169c28b9 # initialize rs1
li x8, 0xf7ed28df38d74479 # initialize rs2
srlw x13, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x7, 0x2affd19c519cee03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb6e82615774d81a6 # initialize rs1
li x9, 0x3702697e875d0986 # initialize rs2
srlw x7, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x11, 0x187bdd2a92576066 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x06fc68d0d3bd53aa # initialize rs1
li x10, 0x673e971b8cc2291c # initialize rs2
srlw x11, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x28, 0x22578bf02166246a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9d6b94b1e843782d # initialize rs1
li x11, 0x2637f8fe91e553b6 # initialize rs2
srlw x28, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x31, 0xed45048414e0e599 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x93eddd0979b60fb3 # initialize rs1
li x12, 0x8943127d155061c2 # initialize rs2
srlw x31, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x4, 0xd03e8430d2743f23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x77771f249aad8040 # initialize rs1
li x13, 0xb4e6ea0ff266c3e9 # initialize rs2
srlw x4, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x8, 0xb062db0620bf8233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xccc62d5e9c4b107b # initialize rs1
li x14, 0xc9f2619ef38319c6 # initialize rs2
srlw x8, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x30, 0x14109da559a8aa3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8df8f894e237db3c # initialize rs1
li x15, 0xc618cd82c864ad44 # initialize rs2
srlw x30, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x25, 0x57da0e81808afa86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd723ab79d9aea8dc # initialize rs1
li x16, 0x9a54fe13f339437a # initialize rs2
srlw x25, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x4, 0x379ffeeceaa8106c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x360e062203ac75d0 # initialize rs1
li x17, 0x1917ae68e671dcaf # initialize rs2
srlw x4, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xbe60df5bf2c8c11c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcf704d39e43cfb94 # initialize rs1
li x18, 0xbf7c8bcbade9df33 # initialize rs2
srlw x18, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x17, 0x2d9f6bb8f8c98fdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x304aa2fb30f97fbc # initialize rs1
li x19, 0x88f4a2ebf74ff4e8 # initialize rs2
srlw x17, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x15, 0x997178e9918d4cf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1bf756b72b905c08 # initialize rs1
li x20, 0x73b1aad969047290 # initialize rs2
srlw x15, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x26, 0xacd2b4b212efc67c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x54a38683c5c10271 # initialize rs1
li x21, 0x3520cc73cfd87063 # initialize rs2
srlw x26, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x17, 0x43ea113f356a56e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb32d1eaab29b2d3c # initialize rs1
li x22, 0x8e691d0820d9f7e6 # initialize rs2
srlw x17, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x28, 0xb1c27aa5e06262a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb3b104e4adfdef38 # initialize rs1
li x23, 0x479ab3dc55542bd1 # initialize rs2
srlw x28, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x8, 0xb85af55e60751fff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7cce5d1595a54742 # initialize rs1
li x24, 0xc871039be38e869c # initialize rs2
srlw x8, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x29, 0x666ee049665daf34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x3f7aaea84d673032 # initialize rs1
li x25, 0x71b2c982e64a53d9 # initialize rs2
srlw x29, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x25, 0xb5b1179ab78a184f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xeea2868c904a4a22 # initialize rs1
li x26, 0x69b11d8fe0bd4633 # initialize rs2
srlw x25, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x1, 0xeb36f1bf869f745b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xbd2927337f200884 # initialize rs1
li x27, 0xca58519a33477f78 # initialize rs2
srlw x1, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x19, 0xfb3ef0d089aceaa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x65ee8a11778323a8 # initialize rs1
li x28, 0x72cb5085f31f28d3 # initialize rs2
srlw x19, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x15, 0xa7b20b9a60346c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfbece9a9c61dcd86 # initialize rs1
li x29, 0x312d78ddbb97300e # initialize rs2
srlw x15, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x3, 0x032f72e2f6a626ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x79d3651e86db986c # initialize rs1
li x30, 0xf8f899cdae2050bc # initialize rs2
srlw x3, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x9, 0xf190e2f1ba8625d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf2f2ed055cfd6f0b # initialize rs1
li x31, 0xe1e837658e610325 # initialize rs2
srlw x9, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x764de253b062b547)
li x28, 0xfb4472a9f6b9ca2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x764de253b062b547 # initialize rs1
li x23, 0x33b8fba430e8411c # initialize rs2
srlw x28, x8, x23 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x1082acc5aa24bad2)
li x24, 0xc7b0a52575663741 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xef7d533a55db452e # initialize rs1
li x22, 0x548384685541cb89 # initialize rs2
srlw x24, x13, x22 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
