///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/M//WALLY-COV-mulw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.667726
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x14e83b76da4bb515 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2fae3744afa94ae4 # initialize rs1
li x27, 0xf19be5cdcffdec52 # initialize rs2
mulw x0, x28, x27 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xbbfa96a36bb01940 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1cdf0fa5f1c64023 # initialize rs1
li x14, 0x4863bd25e4aa5993 # initialize rs2
mulw x1, x30, x14 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xc446cfe04833dbc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xab76828be36d1acd # initialize rs1
li x22, 0x79c31824b7bebbbf # initialize rs2
mulw x2, x26, x22 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x99299689cef51ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x58b7b5fe95e403fc # initialize rs1
li x6, 0x3bc92a8f4fe54c84 # initialize rs2
mulw x3, x5, x6 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x27340137099274e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6f8d2188cd41f7d9 # initialize rs1
li x1, 0x0af65f580fd73e5b # initialize rs2
mulw x4, x4, x1 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x5efc00059b96a8d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x193509558feb03eb # initialize rs1
li x4, 0x97e64881bc6c79cb # initialize rs2
mulw x5, x19, x4 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xe3dd6427da1d0b1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfa341c5c4cb9dad5 # initialize rs1
li x16, 0x58e1cc2761c1ae5b # initialize rs2
mulw x6, x24, x16 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xa146770396b9c1f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb73ee624857c38eb # initialize rs1
li x28, 0x073cfe398b931828 # initialize rs2
mulw x7, x21, x28 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x6c7cc2c7172a0aea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3fdadc1c30f3748e # initialize rs1
li x15, 0x44608b744da505c1 # initialize rs2
mulw x8, x19, x15 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb3971111564afd22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x772192174465b206 # initialize rs1
li x7, 0x393ae34dd1e61a35 # initialize rs2
mulw x9, x17, x7 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x53028d7071e53b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x97ad62ebe6da011d # initialize rs1
li x9, 0x01c925388f31591c # initialize rs2
mulw x10, x2, x9 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xae8b98de26a5f789 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x225dd00e1f90eccb # initialize rs1
li x7, 0xf27d456929ef1537 # initialize rs2
mulw x11, x15, x7 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xdf7525b78f751461 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xeefb0d227453cad5 # initialize rs1
li x30, 0x07c59b0750d1284a # initialize rs2
mulw x12, x3, x30 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x3842162ca444aae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe0e1b189563baa8f # initialize rs1
li x28, 0x7790306fc2376aeb # initialize rs2
mulw x13, x2, x28 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xad5bb8b7fd309539 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6f17a5c315b28c63 # initialize rs1
li x1, 0xaec4b3a2ea2db23a # initialize rs2
mulw x14, x6, x1 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x1315c0a46b4cf182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5b426067ea7ea000 # initialize rs1
li x10, 0xd22703ac2c3d4474 # initialize rs2
mulw x15, x20, x10 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x538b1c1b59302a19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x85b6588dd8f6882f # initialize rs1
li x25, 0xaeb7e9b7792babb9 # initialize rs2
mulw x16, x28, x25 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x6519f6db871dd6b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xda84c16dc2d006fb # initialize rs1
li x25, 0xd1128b69d9a0c94f # initialize rs2
mulw x17, x19, x25 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x447d4eeb527606de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x70ffcb7e3a15edf9 # initialize rs1
li x19, 0xe21eb03f812dda7f # initialize rs2
mulw x18, x1, x19 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x9fa8e2e3b9e989de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x221053dbe842bd5d # initialize rs1
li x7, 0x54a45a5438d82936 # initialize rs2
mulw x19, x21, x7 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xb7ac0dce784d0c61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x233a7614c7474e50 # initialize rs1
li x13, 0x80993dbee1e4bfe0 # initialize rs2
mulw x20, x17, x13 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x1c17c0c409c3ce64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x56e07bcd577fbf1d # initialize rs1
li x4, 0xe67dd726aeaca3c7 # initialize rs2
mulw x21, x14, x4 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x16e946cfe68b2bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xdd03874e0cdec0a2 # initialize rs1
li x2, 0x8e2590909e5b0d03 # initialize rs2
mulw x22, x29, x2 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xf55084d671cb8a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x93a7d4222b2cb1bb # initialize rs1
li x9, 0x6bd4e3a4619a52c5 # initialize rs2
mulw x23, x23, x9 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xdf0b4cea0f987114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7489a198ed796ebd # initialize rs1
li x13, 0x42fb8b8ceabe035b # initialize rs2
mulw x24, x19, x13 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x5ebecbbb9ebad291 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xad157d0cca3781cb # initialize rs1
li x20, 0x062f70930274c6eb # initialize rs2
mulw x25, x10, x20 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x2144004e4cda73ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x15f4e72a278d749a # initialize rs1
li x23, 0x00441921be1a504a # initialize rs2
mulw x26, x11, x23 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xa9ea0c9b13f68039 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdd63842106140ba8 # initialize rs1
li x8, 0x9240c55f3fe35b5a # initialize rs2
mulw x27, x22, x8 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x5c25fc88af202fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x53d2ce439b52fcd4 # initialize rs1
li x5, 0x0b935e25c8e27f7a # initialize rs2
mulw x28, x9, x5 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xe759d53c539b6b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0df424932a41274f # initialize rs1
li x16, 0xfbd2d18f9a55c696 # initialize rs2
mulw x29, x30, x16 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xd095e59919f14612 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd13b2491245ddd1f # initialize rs1
li x21, 0x487773a13d48178a # initialize rs2
mulw x30, x24, x21 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x9fe0ef511315a459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbfc8bc8828030437 # initialize rs1
li x15, 0x09ef6c574c189703 # initialize rs2
mulw x31, x29, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x17, 0xca23654043f48eac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xde924ec5e998cd4f # initialize rs1
li x1, 0xe3f37817d2c6b92c # initialize rs2
mulw x17, x0, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x21, 0xb1d1f277c7c76de6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x14d057c4170ae337 # initialize rs1
li x29, 0x5e090d9a2233cc6e # initialize rs2
mulw x21, x1, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x23, 0xb61f6aefecb2e7de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb00757e18da2c1be # initialize rs1
li x26, 0x5ade8ef1676f3e6a # initialize rs2
mulw x23, x2, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x12, 0xc0280905c761dfba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xcf0031bc5feaca0c # initialize rs1
li x26, 0x89b9deedfc5d9df1 # initialize rs2
mulw x12, x3, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x21, 0x79e61f651df24eb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x658245c458bec228 # initialize rs1
li x16, 0xe70864610d9ba422 # initialize rs2
mulw x21, x4, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x17, 0x8393265630e2906f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf291ce605a2e1d64 # initialize rs1
li x24, 0x9f50779c435d9abe # initialize rs2
mulw x17, x5, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x12, 0x8db8ee4ad1bb3c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf40fa30133672445 # initialize rs1
li x26, 0xabb48cf32f98a395 # initialize rs2
mulw x12, x6, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x8, 0xff9e12064ab5df07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4de552344a39ae1b # initialize rs1
li x22, 0x1a495e6937f7e683 # initialize rs2
mulw x8, x7, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x23, 0x31ee47fd23c6a0aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe51f9e8954a7a1b9 # initialize rs1
li x14, 0xc48e32dd7aa67f49 # initialize rs2
mulw x23, x8, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x20, 0x1d7fa57c0fa1e847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0f7c98a9c8c04eaa # initialize rs1
li x17, 0x4eaad3569019db78 # initialize rs2
mulw x20, x9, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x18, 0x1b258ac50f6b790b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00c02c644f6d543c # initialize rs1
li x23, 0x6d282a26be9f938b # initialize rs2
mulw x18, x10, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x2, 0x63d1e428bd65e8c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaf8ccca45b59c570 # initialize rs1
li x21, 0xf46ef67895807538 # initialize rs2
mulw x2, x11, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x10, 0xad53b1005d9f5208 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6d839ee65871c646 # initialize rs1
li x9, 0x5187b0f459f5ba9d # initialize rs2
mulw x10, x12, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0xefe03ad1cc42d770 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb3578def90ee439b # initialize rs1
li x30, 0x584ef4b042df845e # initialize rs2
mulw x11, x13, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x31, 0x2f0daa9b241beae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3d4832dc6385c2a8 # initialize rs1
li x24, 0x307929d5ee2911bd # initialize rs2
mulw x31, x14, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x7, 0xda4443788edb78e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x601ef916ff132a03 # initialize rs1
li x23, 0x87d185b33e35ce5b # initialize rs2
mulw x7, x15, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x7, 0x844d3420d6446761 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf7193a86630c521c # initialize rs1
li x17, 0x95de49e2e06b6646 # initialize rs2
mulw x7, x16, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x26, 0x43f7988c56745df8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7104d35df249720c # initialize rs1
li x20, 0x5f4dcaf9be385397 # initialize rs2
mulw x26, x17, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x11, 0xda5ab4af64401f5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf3324b7b50ef93b3 # initialize rs1
li x26, 0x56b11b1e6df4e6ef # initialize rs2
mulw x11, x18, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x29, 0x5b197b2ed4ce36cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3b2ed4c3da31abb7 # initialize rs1
li x22, 0xdd6547f20fa8945c # initialize rs2
mulw x29, x19, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x11, 0x242f4fdcc368b498 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc8d0b5b950c0344c # initialize rs1
li x8, 0x29e9de06166b5932 # initialize rs2
mulw x11, x20, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x5, 0x8c9d89c7e967694f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb37a54c30d5c4d1f # initialize rs1
li x4, 0x5c68a64d0101d6ff # initialize rs2
mulw x5, x21, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x23, 0xc6bc07e146976d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdc60bf22d2429b32 # initialize rs1
li x4, 0x6b043566d37bfe1f # initialize rs2
mulw x23, x22, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x19, 0x74e5c0452f81c6d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x274d7179c35096db # initialize rs1
li x25, 0xd41b0592cdb678df # initialize rs2
mulw x19, x23, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x3, 0xd1de20a75e7582a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x58e5a9947465a19d # initialize rs1
li x22, 0x83df00e1264173f2 # initialize rs2
mulw x3, x24, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x1, 0xca25c15154606c85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x94f76ecbe1185e26 # initialize rs1
li x21, 0x977098b1ef739ada # initialize rs2
mulw x1, x25, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x20, 0x87faf37a53837dde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3dda5c9c47302a71 # initialize rs1
li x15, 0x69dd40afe2e0c1f9 # initialize rs2
mulw x20, x26, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x6, 0xcfc065bf3e2ccd2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2d453e989883edd3 # initialize rs1
li x26, 0x275fc6f27dfa5e33 # initialize rs2
mulw x6, x27, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x23, 0x42e02f4125eb87ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x416898a5844cd41b # initialize rs1
li x14, 0xf984cdd5b910c1ff # initialize rs2
mulw x23, x28, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x27, 0x8ecccd700bab14db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x49af5689954cfa24 # initialize rs1
li x18, 0x6c7bb6ab087a485c # initialize rs2
mulw x27, x29, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x25, 0x2c22ee39f198a05e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2218de834b5d6a47 # initialize rs1
li x10, 0xc28a19abfd6d0b8b # initialize rs2
mulw x25, x30, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x13, 0xe04d3e38d27f46af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe3b9fd726014d432 # initialize rs1
li x20, 0x2379c8b949eadbed # initialize rs2
mulw x13, x31, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x3, 0xecd78868549584ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9a4845535eb5983a # initialize rs1
li x0, 0x3dcbd1cfebff2ed6 # initialize rs2
mulw x3, x8, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x27, 0xc698b6f69465fcc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x388ed879f5f6ef6d # initialize rs1
li x1, 0x8a414cf6853c39c7 # initialize rs2
mulw x27, x23, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x29, 0x2c5927ed8929fa25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x73cd33a101bd1b6a # initialize rs1
li x2, 0xc9131ae73eefa1d7 # initialize rs2
mulw x29, x24, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x18, 0xb041fa0f85a2380f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x09e8d842d8555acb # initialize rs1
li x3, 0x90fa2859c0d1eba2 # initialize rs2
mulw x18, x2, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x5, 0x7b80e442390f2e0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x78fb03a4bad8b8db # initialize rs1
li x4, 0x786955a29a8259b4 # initialize rs2
mulw x5, x6, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x28, 0x3beac1e27f684ae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd6606b621230954d # initialize rs1
li x5, 0x402f260e4303b46e # initialize rs2
mulw x28, x25, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x24, 0x083696b1c8f6e476 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8755eeb6a76dabdf # initialize rs1
li x6, 0x88987509156dd6eb # initialize rs2
mulw x24, x4, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x24, 0x0be83adf6dff70e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdb7d5420f52a3e7c # initialize rs1
li x7, 0x5c2c0586568406f9 # initialize rs2
mulw x24, x1, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0x3e8247c6b299dbfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1e7bca7e4c130839 # initialize rs1
li x8, 0x1a30af6051fd373e # initialize rs2
mulw x2, x17, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x6, 0x10c0e2e52e7ca5db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc43ec7d7d46d1fbd # initialize rs1
li x9, 0x675d67c23745e17b # initialize rs2
mulw x6, x18, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0xcc8cdb8ef11f3fed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x110e0eb27cb880dc # initialize rs1
li x10, 0x04061cfc25b6fbb3 # initialize rs2
mulw x5, x28, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x20, 0x0da7380d7fb76a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x19e9282ef7c6e982 # initialize rs1
li x11, 0x6573def555f4893d # initialize rs2
mulw x20, x22, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x15, 0xb8cf6021a669daa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6df1eb73879b96c1 # initialize rs1
li x12, 0x546923ba83374e31 # initialize rs2
mulw x15, x1, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x21, 0x2781b0e923062e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1a82cde0f02fd245 # initialize rs1
li x13, 0x0ea3959af995020e # initialize rs2
mulw x21, x9, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x30, 0x07c882b70aa8d852 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x74cc378013759360 # initialize rs1
li x14, 0x0838712a3f0ce16d # initialize rs2
mulw x30, x29, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x29, 0x8284c00fd17996e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x4ac8877342272134 # initialize rs1
li x15, 0x600844aabbbae121 # initialize rs2
mulw x29, x4, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x18, 0x8a7d6809fda6f9ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6ae52146ae557ba2 # initialize rs1
li x16, 0xc08c011cbc751eff # initialize rs2
mulw x18, x26, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x1, 0xbd69649236455e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd57af20826ae52d6 # initialize rs1
li x17, 0x5db4c238c60e6359 # initialize rs2
mulw x1, x15, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x21, 0xb9620d26394898f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x138a01cc6dce076f # initialize rs1
li x18, 0xc91938caa05bee51 # initialize rs2
mulw x21, x15, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x4, 0x23a858eefdbee44c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8f1a5c05837f4648 # initialize rs1
li x19, 0xf8233cdb6b2a4110 # initialize rs2
mulw x4, x9, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x15, 0xc470c8e6488b4006 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1530123e523d8321 # initialize rs1
li x20, 0x64e976b072a6c1b8 # initialize rs2
mulw x15, x8, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x12, 0x708ca28ce60ab557 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x532ba5270b87d3e7 # initialize rs1
li x21, 0xd6a24fe6b39b8af3 # initialize rs2
mulw x12, x26, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x17, 0xbf613f7770a41206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaf00268c244dcc6d # initialize rs1
li x22, 0xf8b100235ad90764 # initialize rs2
mulw x17, x26, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x26, 0x7fbb0e1eb75c75c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x71384cc51629a1f8 # initialize rs1
li x23, 0x1dda040f66004dd5 # initialize rs2
mulw x26, x21, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x6, 0xc54dbd698e588e4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x42ec0ebad9073cde # initialize rs1
li x24, 0x506c7a534f3e8688 # initialize rs2
mulw x6, x5, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x18, 0xf04931b09d712c85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x240f1c96a2fa7ac9 # initialize rs1
li x25, 0x51e71e3dc506b508 # initialize rs2
mulw x18, x17, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x24, 0x1aa8ca8113dad286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7817e241194cb908 # initialize rs1
li x26, 0xd31b544da9c9cae2 # initialize rs2
mulw x24, x6, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x23, 0x115953045309f52d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3d3fd202a6e89050 # initialize rs1
li x27, 0xd8f3217d9e2276aa # initialize rs2
mulw x23, x17, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x14, 0x12aad01cb2decb1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x70c80a3f60163855 # initialize rs1
li x28, 0x1fbaeeaafd3cacb3 # initialize rs2
mulw x14, x7, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x11, 0x2ad3be31b9150fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa2ca02ae6275c610 # initialize rs1
li x29, 0x2cae80fd447d419f # initialize rs2
mulw x11, x13, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x3, 0x97170dd1d03fbb73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfd1616f49db02e61 # initialize rs1
li x30, 0xf5f6c8a78a1241fd # initialize rs2
mulw x3, x26, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x22, 0x0376cf7f511a17fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb416caff7b5301bf # initialize rs1
li x31, 0xe7e683ea954095c0 # initialize rs2
mulw x22, x14, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xd25f7abca130d8b7)
li x12, 0x52331c378a4cbc95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x52331c378a4cbc95 # initialize rs1
li x0, 0x025600611f6f3aef # initialize rs2
mulw x12, x3, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xc12c048cf4ff8b41)
li x27, 0xc12c048cf4ff8b41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc12c048cf4ff8b41 # initialize rs1
li x23, 0xc12c048cf4ff8b41 # initialize rs2
mulw x27, x0, x23 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x35e5a0290fc505d4)
li x20, 0x3ca8d5342e3257a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x35e5a0290fc505d4 # initialize rs1
li x7, 0x35e5a0290fc505d4 # initialize rs2
mulw x20, x9, x7 # perform operation

# Testcase cmp_gpr_hazard raw test
mulw x29, x18, x2 # perform first operation
mulw x24, x29, x2 # perform second operation

# Testcase cmp_gpr_hazard raw test
mulw x13, x5, x20 # perform first operation
mulw x15, x23, x13 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulw x20, x13, x6 # perform first operation
mulw x20, x23, x19 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulw x21, x23, x20 # perform first operation
mulw x21, x6, x23 # perform second operation

# Testcase cmp_gpr_hazard war test
mulw x8, x26, x16 # perform first operation
mulw x26, x6, x17 # perform second operation

# Testcase cmp_gpr_hazard war test
mulw x6, x5, x25 # perform first operation
mulw x25, x23, x30 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0x6826510ecee80b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x0, 0x63ba6df621c1b90b # initialize rs2
mulw x10, x17, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x24, 0xb17fcad24724917a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
mulw x24, x10, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x18, 0x09e13729efe969ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
mulw x18, x3, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x12, 0xd3bdbebdcca5b7e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
li x0, 0x86ddf20acf594495 # initialize rs2
mulw x12, x24, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0xe93d157924c69db4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
mulw x25, x10, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0x8281edd90d060ae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
mulw x19, x18, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0xff0ea95dac0712ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
li x0, 0xd785423868fb3929 # initialize rs2
mulw x10, x26, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x7, 0x6ca9d049d7b0a2b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
mulw x7, x18, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x5, 0xbb3dd2ed7a3e821a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
mulw x5, x12, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x13, 0x7f4cc8031beb5483 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000080000000 # initialize rs1
li x0, 0x9de27085282ce6b5 # initialize rs2
mulw x13, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x22, 0x770b57345dbfd8a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000080000000 # initialize rs1
li x9, 0x0000000080000000 # initialize rs2
mulw x22, x16, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x26, 0x0aa3a1bb1070365f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000080000000 # initialize rs2
mulw x26, x2, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x30, 0xeeea27eb61989af5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000080000001 # initialize rs1
li x0, 0x00037b6b2c17a405 # initialize rs2
mulw x30, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x17, 0xad822bcde07f8caa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000080000001 # initialize rs1
li x2, 0x0000000080000001 # initialize rs2
mulw x17, x10, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x12, 0xe2263872b9a7bd64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000080000001 # initialize rs2
mulw x12, x7, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x7, 0xcdde84b6b75e9a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x000000007fffffff # initialize rs1
li x0, 0x95987ff423a77870 # initialize rs2
mulw x7, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x14, 0x8b45edc86e3921b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x000000007fffffff # initialize rs1
li x28, 0x000000007fffffff # initialize rs2
mulw x14, x2, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x14, 0x7b43cac3f4b06640 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x13, 0x000000007fffffff # initialize rs2
mulw x14, x11, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x26, 0x6248c8bff58cd849 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x000000007ffffffe # initialize rs1
li x0, 0xa7259757bc7d166a # initialize rs2
mulw x26, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x8, 0xbff956ee69749227 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000007ffffffe # initialize rs1
li x24, 0x000000007ffffffe # initialize rs2
mulw x8, x12, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x16, 0x5d8be445dcd54ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x19, 0x000000007ffffffe # initialize rs2
mulw x16, x9, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x6, 0xb3382f83da9d31b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x0, 0x6321e67b7aa897eb # initialize rs2
mulw x6, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x22, 0x093478ee83fde91c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
mulw x22, x11, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x28, 0x9c30fb87720ce9b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
mulw x28, x23, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x12, 0xb849571a8c3ca693 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
li x0, 0x06465a3ce627aadc # initialize rs2
mulw x12, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x10, 0x6d2a800e072f3919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
mulw x10, x27, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x7, 0x519b33874c1a8897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
mulw x7, x22, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x11, 0xc0d3264d5d6f34ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000aaaaaaaa # initialize rs1
li x0, 0xc13995b6a1ca43a0 # initialize rs2
mulw x11, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x12, 0x71867c98672576ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000aaaaaaaa # initialize rs1
li x17, 0x00000000aaaaaaaa # initialize rs2
mulw x12, x9, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x8, 0x02efa4240b872ce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000aaaaaaaa # initialize rs2
mulw x8, x14, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x31, 0x465a86c59d7b6628 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000055555555 # initialize rs1
li x0, 0xcce96fa02176afb9 # initialize rs2
mulw x31, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x17, 0x4975845188dee797 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000055555555 # initialize rs1
li x26, 0x0000000055555555 # initialize rs2
mulw x17, x15, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x26, 0x15c8aff38de92b65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000055555555 # initialize rs2
mulw x26, x3, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x11, 0x7afd24ac45140464 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000063ae86f7 # initialize rs1
li x0, 0xc029cfe47c2fbbc5 # initialize rs2
mulw x11, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x10, 0x5dfd5c86b4e8d9e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000063ae86f7 # initialize rs1
li x9, 0x0000000063ae86f7 # initialize rs2
mulw x10, x11, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x18, 0xd951576d1e81016a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000063ae86f7 # initialize rs2
mulw x18, x31, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x9, 0x4258193ae05f2120 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000e3ae86f7 # initialize rs1
li x0, 0x27eb219dea6df733 # initialize rs2
mulw x9, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x23, 0x923154784c1bc6e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000e3ae86f7 # initialize rs1
li x14, 0x00000000e3ae86f7 # initialize rs2
mulw x23, x30, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x6, 0x67ddd3dd8c158dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x26, 0x00000000e3ae86f7 # initialize rs2
mulw x6, x2, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x19, 0xd24cc2b125834bc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x25, 0xb9c5a55abe0a1172 # initialize rs2
mulw x19, x28, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x8745771f40dd6f27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
li x9, 0x974a76df305008d0 # initialize rs2
mulw x21, x18, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x3f476ab9f1cf94a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x23, 0x178bbac0c79f411a # initialize rs2
mulw x30, x3, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x9, 0xd1b55ffc20d07881 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000 # initialize rs1
li x16, 0x22598b819525c6de # initialize rs2
mulw x9, x8, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x15, 0xca7590f93b8ee91e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000001 # initialize rs1
li x7, 0x127897bc57ca73ed # initialize rs2
mulw x15, x28, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x29, 0x71f3867c4cb092d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffffffffffff # initialize rs1
li x26, 0x0606a659b26f6d3f # initialize rs2
mulw x29, x5, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x16, 0x5f734adef89a84e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x11, 0x56f4c5a5d6fee866 # initialize rs2
mulw x16, x7, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x6, 0xa8dd1393e2afa425 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x2, 0x60a4bf6b5cbfa652 # initialize rs2
mulw x6, x5, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x13, 0xffb3321a9de8f0a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffffffffffe # initialize rs1
li x5, 0x740bb927f74a330c # initialize rs2
mulw x13, x25, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x21, 0xcbb99c57f463b16d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0xe43b4438bc0069d5 # initialize rs2
mulw x21, x2, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0x336fd4031da5a450 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x57c2700cc10b6f6c # initialize rs2
mulw x26, x14, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x2, 0xa0ae24ca1e0c38d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x29, 0x7a094e11e4dee4f9 # initialize rs2
mulw x2, x20, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x21, 0x9a7b7ff27bb7dd13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x29, 0x4a35c12cdfc16d9e # initialize rs2
mulw x21, x5, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x4, 0x41457b078832174f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x18, 0x95de12327f2efc88 # initialize rs2
mulw x4, x9, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x21, 0x75a71ee83f2ea6cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000000 # initialize rs1
li x28, 0x53ec7775edb320d4 # initialize rs2
mulw x21, x29, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0x7d161691f2bdc60d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x1, 0xad1e75686e52d189 # initialize rs2
mulw x12, x26, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x11, 0x985bc36b68bdae20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc252dda33da3ffc6 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
mulw x11, x21, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x30, 0x16ea6ce0b757444f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xdc2b324a0c04a231 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
mulw x30, x6, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x6, 0xff33e772d50779e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd31c9cc9a816e74c # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
mulw x6, x23, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x24, 0xb287b6061ca38014 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6d00dbb5c9660867 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
mulw x24, x5, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x27, 0x569b0afdae3b051b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6ac89ec90f75b165 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
mulw x27, x25, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x28, 0xd0f47f20fa1c79f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x74367d6dc750a1c5 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
mulw x28, x12, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x12, 0x793683c137ea0873 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xce65a7598a7fc8b4 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
mulw x12, x23, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x23, 0x124690cf4350de21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x2e8fa0bef2b1f313 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
mulw x23, x24, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x16, 0x9ce9d572d823aa9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x152c06852b996030 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
mulw x16, x29, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x17, 0xd66f37a5a852e7f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xda9280e8e4524448 # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
mulw x17, x31, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0x2ab0bc478786caa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x53106b5b8c35c23f # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x11, x27, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x20, 0xfd3336a34641877b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaca7b69de1d9a45a # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
mulw x20, x26, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x12, 0xa59503a87aa5d985 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x88748792b64069a7 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
mulw x12, x21, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0x59b208bb5b45ffdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x31dbcfbda0cb6325 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mulw x2, x20, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x9, 0x75ed97d776a48e77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xca30e014ae4ed5ec # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
mulw x9, x5, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x17, 0x6cc0a0b5da8c250b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x89e0ceb3fb1f5dd0 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
mulw x17, x16, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x25, 0x57c31815b0127a2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
mulw x25, x18, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x2, 0xfd24572d40d0380a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
mulw x2, x31, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x23, 0x401df897ee78832f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
mulw x23, x11, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x10, 0x10a9b4c2495fd42f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
mulw x10, x15, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x2, 0x41f39b2a9aba9693 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
mulw x2, x29, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x5, 0xc63979cb0bf0b4bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
mulw x5, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x5, 0xf103ac272f9978a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
mulw x5, x15, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x8, 0xb6fc474f03b031db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
mulw x8, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x21, 0xdba4b7bbbc95224c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
mulw x21, x25, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x22, 0x281260cdcbe035f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
mulw x22, x15, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xda08e03e94b42820 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x6, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x17, 0x20336a0c00f79b55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
mulw x17, x25, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x8, 0x3d3e04bcc3057ff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
mulw x8, x9, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x18, 0xb29ae80b4f0f2088 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
mulw x18, x9, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x9, 0x9221af9b8387e2f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
mulw x9, x28, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x3, 0x82a05f74320f4a28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
mulw x3, x29, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x23, 0x405bea9bdee7d673 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
mulw x23, x16, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x20, 0xa5b3d482b870eebf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
mulw x20, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x6, 0xd69950fea66be193 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
mulw x6, x24, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x14, 0x8ebd29e8af5baff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
mulw x14, x2, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x8, 0x6f97797d36f2ab6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
mulw x8, x23, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x18, 0x28852f9c5e126453 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
mulw x18, x12, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x20, 0x1135138694bea288 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
mulw x20, x31, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x8, 0xd7e936a96f184562 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
mulw x8, x19, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x14, 0x2c322f7e4f704520 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
mulw x14, x20, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x6, 0xfcfe189829ce5a77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
mulw x6, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xfbca2ed5fe95984f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x22, x4, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x1, 0x52316ed982141554 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulw x1, x27, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x19, 0x8bbbc08d86ccb753 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
mulw x19, x23, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x24, 0xfc1e8e05c5eb9c57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
mulw x24, x27, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x7, 0x55b7ad3b5dd4cfa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
mulw x7, x1, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x11, 0x02df20ab06cc523a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
mulw x11, x27, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x11, 0xd2e04b489af34af0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
mulw x11, x9, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x2, 0x7199c3feb0d43486 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
mulw x2, x18, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0x526f7828e2f0bff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
mulw x23, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x27, 0x3e8361c7df90d3e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
mulw x27, x8, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x22, 0x22e51994e6b78247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
mulw x22, x14, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x1, 0xeba386592eb66e37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
mulw x1, x27, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x20, 0x97a441b61c52a8d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
mulw x20, x2, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x28, 0x9dea22f097b5812c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
mulw x28, x19, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x9, 0x280468a682845762 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
mulw x9, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x6, 0x37ce855af2698f79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
mulw x6, x23, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x4bfa64a780f8ba12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x8, x22, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x12, 0x3231744d07fb8e1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulw x12, x25, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x23, 0x7482f16f286a317c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
mulw x23, x25, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x6, 0xf8ecda68c26b5928 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mulw x6, x1, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x13, 0x9fe19a3762547827 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000002 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
mulw x13, x10, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x5, 0xad5c9c8f5b36b25a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
mulw x5, x23, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x9, 0xd17968b4fa8786e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
mulw x9, x19, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x23, 0x331f006b8ef740bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
mulw x23, x31, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x2, 0x9d7b1be5bc3c64ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
mulw x2, x9, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x31, 0x547f058718617d47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
mulw x31, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x6, 0x00c8235cbe7e89a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
mulw x6, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x4, 0x52c918c5c87cd060 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
mulw x4, x20, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x11, 0x6a860ec2319a90c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
mulw x11, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x9, 0x48a2b45b9dd0b6d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
mulw x9, x30, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x21, 0xb3361f76e43754c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
mulw x21, x9, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x28, 0x8b2dad5ab3a28c66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
mulw x28, x9, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x5b15bffdeb3ebf53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x21, x27, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x18, 0x46726fb232c6c943 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
mulw x18, x13, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x28, 0xd7f0560267d39d63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
mulw x28, x15, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x11, 0xe32cacbe7e6b9a79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000000 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
mulw x11, x4, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x17, 0x5041eb82638aeb89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mulw x17, x28, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x9, 0x1466516871e9f24e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
mulw x9, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x28, 0x3b4c6a29593937f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000001 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
mulw x28, x7, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x7, 0xf999be5e71a38cea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
mulw x7, x12, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x30, 0xbc2143a7f2e3c29b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
mulw x30, x27, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x8, 0x1379cec79847fc78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
mulw x8, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x22, 0x4177ad1706c46f7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
mulw x22, x16, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x15, 0x8b30d4f53bdd8e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
mulw x15, x1, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x19, 0x5c78f3e2080b0c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
mulw x19, x4, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x24, 0x99563ead130f3ab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
mulw x24, x6, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x26, 0xe5cfe0794df27926 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
mulw x26, x11, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x27, 0x876087fb17580f2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
mulw x27, x21, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x61413cf836e5370e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x20, x23, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x4, 0x4074a7c6d885f487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
mulw x4, x22, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x11, 0x273e23c74f4f4422 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
mulw x11, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x18, 0x8d29f4e139b07754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
mulw x18, x10, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x27, 0x3fe7d444eb4dd6be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
mulw x27, x21, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x7, 0x2f15ed80b1618e12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
mulw x7, x25, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x30, 0x775dab633ab75bbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
mulw x30, x27, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x10, 0x13a8d88371ee360e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
mulw x10, x12, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x28, 0xfb4301c517c025b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
mulw x28, x12, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x20, 0x6315e3ce1451dd59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
mulw x20, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x6, 0xab068a10e088feb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
mulw x6, x27, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x11, 0x457f996c3f7eae8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
mulw x11, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0xdc42b3140ec291e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffffffffffff # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
mulw x9, x17, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x31, 0x73ad990c0bd2c862 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffffffffffff # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
mulw x31, x21, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x29, 0xff460e11e07ebac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffffffffffff # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
mulw x29, x28, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x30, 0x3d03d02e9c6c5df4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffffffffffff # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
mulw x30, x21, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x6d1a0def77b5f010 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x10, x13, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x18, 0x6447384824280504 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
mulw x18, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x18, 0xf4dd3d78b1c59d43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
mulw x18, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x26, 0x642c55275b930c91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mulw x26, x6, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x1, 0x65eaa2547029d6c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
mulw x1, x21, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x5, 0x834f50678ccb6d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
mulw x5, x30, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x17, 0x30f7a946ce00ceab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
mulw x17, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x10, 0xe1df1d18a4cb8b1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
mulw x10, x27, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x5, 0x74213d0779305aab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
mulw x5, x18, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x17, 0x336eaa2c0a7bc54f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
mulw x17, x14, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x11, 0x4fb9d13bc07dfa73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
mulw x11, x5, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x7, 0x969ad440c6f4be03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffffffffffe # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
mulw x7, x26, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x15, 0x6714107059adcc80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
mulw x15, x2, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x13, 0x4bd715e974c7294d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
mulw x13, x29, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x3, 0x7f9910edf7e40961 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
mulw x3, x10, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x10, 0xdd07ef994a2c4abb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
mulw x10, x24, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0xaa18bf73768eee9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x27, x31, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x14, 0x400b993421571b1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
mulw x14, x15, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x16, 0x757beb80f3d49bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
mulw x16, x2, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x21, 0x250f6edf089428a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
mulw x21, x29, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x15, 0x46ea299ad3bf4684 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
mulw x15, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x14, 0x9b0cfeec179284e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
mulw x14, x4, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x7, 0xb9db22c7da7295f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
mulw x7, x5, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x21, 0x0b5811fca9d68301 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
mulw x21, x22, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x5, 0x19fa8711abdad84d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
mulw x5, x16, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x24, 0x64e7797c8a327063 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
mulw x24, x28, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x8, 0x3b3de9416c29b188 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
mulw x8, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x4e39b15df022eafd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
mulw x18, x16, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x12, 0x68c6ec86a4586a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
mulw x12, x1, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x31, 0xfa606e51a8b1a8c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
mulw x31, x16, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x7, 0x4bd77ead21acf759 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
mulw x7, x25, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x23, 0x7b8856d7dcb0b28f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
mulw x23, x21, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xd5eb7734250830f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x8, x29, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x10, 0xa3c32916b7331d13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
mulw x10, x8, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x10, 0xb8e9b4cd79676918 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
mulw x10, x2, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x2, 0x4e46ec5098895eae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mulw x2, x9, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x31, 0x97f191645ccffec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
mulw x31, x8, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x13, 0x5e1802c210cebf4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
mulw x13, x30, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x4, 0x92f0010b8ea3359c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
mulw x4, x16, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x13, 0x2826e00339ef017f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
mulw x13, x11, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x5, 0x7a43708fd9b8c8bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
mulw x5, x14, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x2, 0xb6211398dce2c4d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
mulw x2, x3, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x8, 0x1c7f75a762159d67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffffffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
mulw x8, x16, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x31, 0xfe9d21b54fe9b948 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
mulw x31, x19, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x28, 0x24c3751e16c885d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
mulw x28, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x1, 0xd41582e942282d1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
mulw x1, x30, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x29, 0xb994c57ad8928c36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
mulw x29, x19, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x31, 0x0829ace6b75e03ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
mulw x31, x29, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xc5dbbc65e4da19d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x6, x29, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x20, 0xdad0b57523030750 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
mulw x20, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x23, 0x996d5d2874f2394f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
mulw x23, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x31, 0x12f016149af2c201 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffffffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
mulw x31, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x30, 0xab00e35edeb61f49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
mulw x30, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x11, 0x8b83f8cc590a14f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
mulw x11, x22, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x1, 0x621ba8cd7f10459f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
mulw x1, x16, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x4, 0x89ac3d942c74ac3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
mulw x4, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x24, 0x8bb300bc9a7916c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
mulw x24, x26, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x13, 0x4c029e99007976be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
mulw x13, x22, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x8, 0x99970bc680a34f1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
mulw x8, x27, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x12, 0x2e2499ada3d95d74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
mulw x12, x2, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x17, 0x66d06711fa754692 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
mulw x17, x27, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x9, 0x2147289cb4c5f692 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
mulw x9, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x24, 0x0f42f14d6f382c9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
mulw x24, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x2, 0xe9e6633e40a6fdb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
mulw x2, x22, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x24df7c3d9a4dad1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x17, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x27, 0x4783c3adb5acebf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
mulw x27, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x28, 0xa05fb96879c90b82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
mulw x28, x26, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x15, 0x85e60228ff68390c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
mulw x15, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x15, 0x5d5362e8eab4b90c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
mulw x15, x18, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x29, 0x27d5de9f35bb79b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
mulw x29, x25, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x13, 0xbef68b866cf62ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
mulw x13, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x16, 0x0a529537f7a08e59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
mulw x16, x9, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x29, 0xf07cd062038af9e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
mulw x29, x1, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x24, 0xc322de8876dabdf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
mulw x24, x6, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x13, 0xc98955e6d929043b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
mulw x13, x5, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x26, 0x714d1bb93d240345 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
mulw x26, x22, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x3, 0x6b19c76306164a69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
mulw x3, x12, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x18, 0xe7bfbf60d8df2324 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
mulw x18, x7, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x22, 0x3be361699ad5b5fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
mulw x22, x26, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x29, 0x99d711fb5edd508a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
mulw x29, x8, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xc55a3c79722a9b8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x9, x7, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x26, 0xb8db813950229856 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulw x26, x16, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x16, 0x3630f5ad65d9cfa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
mulw x16, x15, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x5, 0x1693f37c49f93523 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
mulw x5, x15, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x25, 0x1d2ea34138a8e15b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
mulw x25, x12, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x21, 0x8b7fa41009e2496d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
mulw x21, x26, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x5, 0xd53cac4fe0da5932 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5555555555555555 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
mulw x5, x2, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x18, 0xa8343cb2a67e6e52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
mulw x18, x17, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x13, 0x394edaed48fffcc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
mulw x13, x30, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x19, 0x9c6f920089120147 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
mulw x19, x17, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x6, 0x9e57670d1429c363 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
mulw x6, x26, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x7, 0xeffb4ec334a5f068 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5555555555555555 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
mulw x7, x19, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x17, 0xd28d98e4e4027b40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5555555555555555 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
mulw x17, x28, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x10, 0x0d4622db58947c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
mulw x10, x25, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x11, 0xfe4e64827e2e7d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
mulw x11, x1, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x23, 0xffa7042fd099ca22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
mulw x23, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x0d7a4deefb4269fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x24, x11, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x21, 0x0d812bc71c519b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulw x21, x31, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x18, 0xa3e03b881516734c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
mulw x18, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x28, 0x3565a5007f1a9c17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
mulw x28, x23, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x24, 0x9bfefc0e84fb0538 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
mulw x24, x30, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x2, 0xddd4fc281ab2acea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
mulw x2, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x4, 0x49fa8eebc063ed22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
mulw x4, x30, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x14, 0xbf57b58bbcefd5bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
mulw x14, x27, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x24, 0x64d2f5e1dbab4efb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
mulw x24, x26, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x23, 0x958dd364ed660b6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
mulw x23, x16, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x19, 0x00adf91714e93585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
mulw x19, x11, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x9, 0xdd2c1d555622a2d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
mulw x9, x8, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0x93ba2dbb40f780da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
mulw x20, x30, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x30, 0x9e44b6b1596dc99d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
mulw x30, x5, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x4, 0xb5280140e86e01aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
mulw x4, x13, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x8, 0x841262c3702c16fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
mulw x8, x16, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x31865190692a8e71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x30, x7, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x25, 0xc9c32d88b2e76e81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
mulw x25, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x10, 0x1c156f5ca21f9439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
mulw x10, x5, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x18, 0xec2fb97c3767d02c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
mulw x18, x6, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x28, 0x1d1197aebcad70a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mulw x28, x4, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x22, 0xc4de130c3a4d473a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
mulw x22, x12, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x14, 0x70dc133fd8a450dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
mulw x14, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x11, 0x91ae97ba7cfe3f8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
mulw x11, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x3, 0xe25244a2a7095510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
mulw x3, x31, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x26, 0x2643c432d306d4bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
mulw x26, x3, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x5, 0xdd0150f934b09934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
mulw x5, x6, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x6, 0x2542796081d34d94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
mulw x6, x13, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0xb5f1233d8c7656ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
mulw x19, x13, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x28, 0x462acd22e6eb88d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
mulw x28, x10, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x24, 0x9db5da03ba1b8ffb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
mulw x24, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x2, 0x79ee7ae0929f0be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
mulw x2, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xfc1209fb150e573c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x29, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x9, 0x82960554247acfa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
mulw x9, x23, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x29, 0x325cc58f9625ca34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
mulw x29, x3, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x3, 0x1b3e666d0aafa16b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
mulw x3, x5, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x5, 0x6127cf997cb1bd11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
mulw x5, x17, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x28, 0x2dcc04a229169165 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
mulw x28, x14, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x9, 0x63e4064af48ca45a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
mulw x9, x13, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x20, 0x6edbd7153339adff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000000 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
mulw x20, x19, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x1, 0x997fcf5a8fa30a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
mulw x1, x18, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x24, 0x63e5b2a9f13d772b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
mulw x24, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x7, 0x8c4a29bc1d8da67b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
mulw x7, x12, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x10, 0x4bf9cb66e0763129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
mulw x10, x31, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x3, 0x9d94cd6890ad6a82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000000 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
mulw x3, x19, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x16, 0xe6b8a5466acf137f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000000 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
mulw x16, x26, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x13, 0x3706999b233b2a03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000000 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
mulw x13, x26, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x2, 0x9fd13d5404fe60b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
mulw x2, x16, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x6d8cd9a8200e2fbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x2, x22, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x11, 0x62db245da5d07805 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
mulw x11, x27, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x2, 0x7b7e6735063124c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000000 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
mulw x2, x8, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x24, 0x8a0dce3a0948507d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
mulw x24, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x30, 0x6c3915693959c1ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000000 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
mulw x30, x2, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x18, 0x0f1f19ce8427fbb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000000 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
mulw x18, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x30, 0xc17ded2879e8dd47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
mulw x30, x26, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x29, 0x012f894ec035d7a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
mulw x29, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x12, 0xdcf548f27941c6b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
mulw x12, x1, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x10, 0x22940789df57c9d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
mulw x10, x26, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x11, 0x5c219eab7866f88e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
mulw x11, x27, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x7, 0xb9ecc50d39be3901 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
mulw x7, x16, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x24, 0x903bfb2e2dd8578d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000001 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
mulw x24, x9, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x25, 0x0971be23317e0c4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
mulw x25, x6, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x6, 0x41be6ebcf7c5bf5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000001 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
mulw x6, x29, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x20, 0x6ea734c240b0f378 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
mulw x20, x27, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xc5b5fc69528c771f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000001 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulw x21, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x11, 0x310a3cc16a384003 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
mulw x11, x24, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x9, 0xf30b9a63ab81c9e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
mulw x9, x12, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x18, 0x9e596c3ab0d23539 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
mulw x18, x29, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x5, 0xf91b00536349311f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
mulw x5, x6, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x27, 0xf6e2dce1d52c5fbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
mulw x27, x17, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x7cc3d3bece4168f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xec8252a3fa5d12ef # initialize rs1
li x3, 0x76137da04e7e7d01 # initialize rs2
mulw x0, x0, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x05d8f066b5b94cda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x05501f853a7d0903 # initialize rs1
li x10, 0x4fe853e9ef8b27f6 # initialize rs2
mulw x1, x1, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x5cfb5f77eafe0dcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80ed6128af420881 # initialize rs1
li x19, 0xf388aa9c8ce5fde4 # initialize rs2
mulw x2, x2, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x12e97104890a1fce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc3170b792231326d # initialize rs1
li x4, 0x3fcb758fe5f4ec80 # initialize rs2
mulw x3, x3, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x982395a1ee027dde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x57fb7b2a0ebadcef # initialize rs1
li x11, 0xf5b966b481055e0b # initialize rs2
mulw x4, x4, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x87609f5f808cde14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x168134344ee901e9 # initialize rs1
li x6, 0xf7c965e53e86ccc4 # initialize rs2
mulw x5, x5, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x0e397a609c20bc86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf9b3542126d27f4c # initialize rs1
li x12, 0x95a43a74945b8488 # initialize rs2
mulw x6, x6, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xce646c6a18009ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5ba789724b8899c1 # initialize rs1
li x1, 0x8e22d0c90a516fe3 # initialize rs2
mulw x7, x7, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf825b8384a6a8af7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6d69f119e1d34028 # initialize rs1
li x2, 0x50046b29af0c4899 # initialize rs2
mulw x8, x8, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x493ee8f28819a861 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x355a9d3b5222072b # initialize rs1
li x16, 0x80ef50c21d4f22a7 # initialize rs2
mulw x9, x9, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x2e7ebb98b39406b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe67805196bfac74e # initialize rs1
li x29, 0x81b9ced31418b5a8 # initialize rs2
mulw x10, x10, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xef09d586d4ceb9b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x903fc46e057a27b7 # initialize rs1
li x21, 0xa061d257ad0e0adf # initialize rs2
mulw x11, x11, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x7e92a3a476a61ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0cef182cd73d1f0b # initialize rs1
li x15, 0x98c2de4172184dc7 # initialize rs2
mulw x12, x12, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xc88cc4b54c6e7fa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb6dc139245dc4e8a # initialize rs1
li x1, 0xe52707f86de2c6ce # initialize rs2
mulw x13, x13, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbbad43b49c2d6dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe8b74886cac500f2 # initialize rs1
li x9, 0x159121d5305f8d7c # initialize rs2
mulw x14, x14, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x1d887c1292c696fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x401eb1546ab92b4a # initialize rs1
li x14, 0xa81437f722e5e656 # initialize rs2
mulw x15, x15, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x352ffbef679d9155 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8da2651483cf266d # initialize rs1
li x5, 0x55ff0391722a9f6c # initialize rs2
mulw x16, x16, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xac6ce70b852f5404 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdaf7cd70b0594d05 # initialize rs1
li x24, 0x979a2f774693be66 # initialize rs2
mulw x17, x17, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6ec6d4d473a170ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdc14712447391085 # initialize rs1
li x7, 0xfaf3f24a315ee08c # initialize rs2
mulw x18, x18, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x710dde1637f3df69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x25873acdc5ec28ae # initialize rs1
li x24, 0xba671a7aebc1c948 # initialize rs2
mulw x19, x19, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xcedc1cc689291a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb5a7b6e3e19880ea # initialize rs1
li x19, 0x6e35c2f21f9d1454 # initialize rs2
mulw x20, x20, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x1ca261b649f0d757 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7df1e33780f5f746 # initialize rs1
li x5, 0xfc9a5e6fa8a660a3 # initialize rs2
mulw x21, x21, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x78411f71f79fd482 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x44ad0a59691d91c2 # initialize rs1
li x6, 0xfb2fd5aed70eaa73 # initialize rs2
mulw x22, x22, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd94dca178ee18d2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x542b6ba8c97eb4e3 # initialize rs1
li x15, 0xe7d1e9189db89d6f # initialize rs2
mulw x23, x23, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xaaa0a8e225584e71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8067c7123d768ffa # initialize rs1
li x5, 0xa55cab18cdc0268c # initialize rs2
mulw x24, x24, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xd54a99884c2eb0b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0a9de43f8ddbec8b # initialize rs1
li x15, 0x95072c98e784b4b4 # initialize rs2
mulw x25, x25, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xe789a12c83e088b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3dfe409917f76f7b # initialize rs1
li x17, 0xd9e2e19741bd8d0f # initialize rs2
mulw x26, x26, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x5c558ca227222471 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb4cf970ad99510fa # initialize rs1
li x31, 0xcb5bcad88d0a65ce # initialize rs2
mulw x27, x27, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xfe912e814845cfcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x93daac4779d04fab # initialize rs1
li x7, 0xe084793e6660a147 # initialize rs2
mulw x28, x28, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xaf1fb0c60512ad5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x15af20f45e1f28e8 # initialize rs1
li x7, 0x9a0831d53d0a2143 # initialize rs2
mulw x29, x29, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xc0c13194524a2170 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe52fb9c31185393d # initialize rs1
li x6, 0xe8ebed65d288cab5 # initialize rs2
mulw x30, x30, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8532c04eac14f441 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x3b63617168a219d1 # initialize rs1
li x10, 0xbbd8950d82073be9 # initialize rs2
mulw x31, x31, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x03c766ccc2fa02ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x33c3af5b82dcb52c # initialize rs1
li x0, 0xd220e9a2170635fd # initialize rs2
mulw x0, x16, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x3bacc4f5d652a528 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8bbd80c204fcb3a3 # initialize rs1
li x1, 0x91c2e0cd312fd403 # initialize rs2
mulw x1, x28, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x04e3d8eceadbc3ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaf0f6f864af2da28 # initialize rs1
li x2, 0x2d6a33eb43ce40b7 # initialize rs2
mulw x2, x25, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xca73ae6b2787e7d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x9c7cbfb989486218 # initialize rs1
li x3, 0xd9cd6a6768d5d75e # initialize rs2
mulw x3, x5, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x9f2431907d930bdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd75b312390696b2f # initialize rs1
li x4, 0xb53b66840439aa38 # initialize rs2
mulw x4, x13, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x9d876016eb913204 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8393fc25c95117d5 # initialize rs1
li x5, 0x562451c80e825563 # initialize rs2
mulw x5, x31, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x17c54f171d9aeb0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbc0db0148504a69a # initialize rs1
li x6, 0xd3f606fff45f7e5a # initialize rs2
mulw x6, x9, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x7e7450aa3d48b375 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaa9f74a315ae0232 # initialize rs1
li x7, 0xca462897878d015f # initialize rs2
mulw x7, x13, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x692c14e12994dd88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe31ad99312932110 # initialize rs1
li x8, 0xad8637123e67a2e1 # initialize rs2
mulw x8, x17, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x641608c5687e6d76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8567cd0153cbbf3a # initialize rs1
li x9, 0x4e370b217b1c9ddb # initialize rs2
mulw x9, x22, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xa913c11ddf77d277 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3f641b8e8fab3400 # initialize rs1
li x10, 0xa75823b4bb1422c6 # initialize rs2
mulw x10, x5, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xad442c3243b0c7a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x36b691e3add81f78 # initialize rs1
li x11, 0x924b860e044c15f2 # initialize rs2
mulw x11, x7, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x92748e94e44fe784 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6a4cf5246951fb27 # initialize rs1
li x12, 0xaff4aa0c39f15b0f # initialize rs2
mulw x12, x30, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xd6633b922a48ae45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4a939960698551dd # initialize rs1
li x13, 0xee4015a48fad6c45 # initialize rs2
mulw x13, x19, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x8843698d48bfcc1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xeab7d31e395d9b20 # initialize rs1
li x14, 0x1162791d35077a4a # initialize rs2
mulw x14, x19, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x13509e1600c75a1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9d1154730bc55432 # initialize rs1
li x15, 0x53c91f2e62c1a304 # initialize rs2
mulw x15, x13, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x4d4923c9993d926c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x32810b055dac358a # initialize rs1
li x16, 0x3f2b71f8eca7d126 # initialize rs2
mulw x16, x10, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xa43450eb7e97574f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8c760245cb6086c9 # initialize rs1
li x17, 0xf7475386912d3b5c # initialize rs2
mulw x17, x18, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xc4254265abda74dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf14c2ff2693bfc4e # initialize rs1
li x18, 0xc2a925b47eadb290 # initialize rs2
mulw x18, x3, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xa710184a1591dbda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7accb38dcb2fdae7 # initialize rs1
li x19, 0x91499fa48c430b0e # initialize rs2
mulw x19, x9, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x0bbef25a8531ceb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb88e30ac22d018d0 # initialize rs1
li x20, 0x6fb1dea8957d05e4 # initialize rs2
mulw x20, x15, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x2c49d557f6cf275a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdc3e08b6700cc264 # initialize rs1
li x21, 0xa25bf3435fdf45d2 # initialize rs2
mulw x21, x14, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x3ed5872130aa01e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xddcda9b035d10f66 # initialize rs1
li x22, 0xd986cc3759565d85 # initialize rs2
mulw x22, x25, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x96867e2b5e72aaa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x10320882da77504b # initialize rs1
li x23, 0x7f799b2722e18632 # initialize rs2
mulw x23, x7, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x58ff724d8c564702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x46eb7d0af352b262 # initialize rs1
li x24, 0x30a54cfdedfdd0d7 # initialize rs2
mulw x24, x30, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xd68844b583d8375d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x07b156bc2a4593ad # initialize rs1
li x25, 0x47d73836a9dc68c8 # initialize rs2
mulw x25, x30, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xf7284b32dd1d6867 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x537fd320da5f7d3e # initialize rs1
li x26, 0x91a7e12bfb5d8d49 # initialize rs2
mulw x26, x5, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xb85625c4d4bcd494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa7a0f42d54541324 # initialize rs1
li x27, 0x845d674d4bd51ca5 # initialize rs2
mulw x27, x31, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xb25d49af17f1832d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4bcbc2c33750e515 # initialize rs1
li x28, 0x5f3a0641c32980e4 # initialize rs2
mulw x28, x23, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x5d574004f9e3736d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2cce0849a813e1cc # initialize rs1
li x29, 0xfc13423c183e6fbe # initialize rs2
mulw x29, x3, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x63dbc124f20be706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x629e69d8a7fa5799 # initialize rs1
li x30, 0x62a26d00a0fb868b # initialize rs2
mulw x30, x12, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xa4427bcfc7e4de21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x441d13fa88094c28 # initialize rs1
li x31, 0x6bd7b66efc6bbaed # initialize rs2
mulw x31, x14, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xa2d0bee12232ecf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4f8122a88073a7cb # initialize rs1
li x0, 0xab0e8be572a837d6 # initialize rs2
mulw x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x29b442a55cc618c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x44334764aa5cea5a # initialize rs1
li x1, 0x2a3a7ff7e1e784d8 # initialize rs2
mulw x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xa33dfee74ea17b52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaa267e1ff7118088 # initialize rs1
li x2, 0xa0c527ee51c5f5b2 # initialize rs2
mulw x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xe20221cb356f85cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x276a0c43a1aff54d # initialize rs1
li x3, 0x6641ceefe165d182 # initialize rs2
mulw x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x3a540569ec70a38c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x492dfc6db1956621 # initialize rs1
li x4, 0xe553b2801b2e31ec # initialize rs2
mulw x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x38a1f2b850f589a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x904647069fe2a929 # initialize rs1
li x5, 0xa247c7eb6ed7c625 # initialize rs2
mulw x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xec8a9a79dcc93f83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x72e44b76c50859d8 # initialize rs1
li x6, 0xf0d0eedb5a29a081 # initialize rs2
mulw x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0xff2accc1b9dc8a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x079a2da3f43d8d5f # initialize rs1
li x7, 0x32770a283782e665 # initialize rs2
mulw x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x14a147a9a1f6a0b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x08612ddf34584316 # initialize rs1
li x8, 0x35473ee2fcf69f51 # initialize rs2
mulw x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x61eeeaabd9e1ce75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x959709004848b916 # initialize rs1
li x9, 0xc8575f27bf8fdca1 # initialize rs2
mulw x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x453807edb100bae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1b0f338ef4827c21 # initialize rs1
li x10, 0x888cd874c207a627 # initialize rs2
mulw x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x922c54b74d3d18c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2c37932d7301685c # initialize rs1
li x11, 0x2eda4b1dd8aac277 # initialize rs2
mulw x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x1d72ea320ca0007a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5d2bdcaa806f7191 # initialize rs1
li x12, 0x70f29db6706764d4 # initialize rs2
mulw x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xddef70b127408698 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8a9921592c786abd # initialize rs1
li x13, 0xb60541d7c2e192a9 # initialize rs2
mulw x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xaf88c9b6a3ab33d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x86cbb07e973158b6 # initialize rs1
li x14, 0x9614e74bac8e0fd0 # initialize rs2
mulw x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x440e3cd331212cd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcc20ae3137e2a926 # initialize rs1
li x15, 0x62842f0865ca155e # initialize rs2
mulw x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xf3c5b5799b9c7928 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc5be6f51ec2762a0 # initialize rs1
li x16, 0x06ec583d068043d0 # initialize rs2
mulw x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x2836df10f1a633e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x149ac0e6cdf18388 # initialize rs1
li x17, 0x1b3fe20fbf1a4012 # initialize rs2
mulw x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xf5727ac8e92ea0c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc24318e6f77180ae # initialize rs1
li x18, 0x9f78a2141e484002 # initialize rs2
mulw x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x28cec4da4e2d1ffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9c9512a1eef4a502 # initialize rs1
li x19, 0x40af26a3135398f9 # initialize rs2
mulw x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x23952ff6da05190c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x24faed0a5cf491d8 # initialize rs1
li x20, 0x2817ea37f8891e22 # initialize rs2
mulw x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x45dcf9fb276baa29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x08a4b4e5e512f398 # initialize rs1
li x21, 0xf950ae6d3f9e294b # initialize rs2
mulw x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x9694594fad0c9387 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6c847614abf30a80 # initialize rs1
li x22, 0x5f8299cf354608b0 # initialize rs2
mulw x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xd15d0e9727a2cec0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0c9e6cb0fe53dc65 # initialize rs1
li x23, 0x97f6748fc45cd026 # initialize rs2
mulw x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xe1b9b0c6b751e8bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x85624d1d6f36a4f4 # initialize rs1
li x24, 0x58dd2a25705b074d # initialize rs2
mulw x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xb70888dc6bdcbe66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2c1fac4bbe526090 # initialize rs1
li x25, 0x1f11ece83424a281 # initialize rs2
mulw x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xa0aaa7f8fd6ca7e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfef7732b0ca23ee2 # initialize rs1
li x26, 0x049c3751e74cd2a1 # initialize rs2
mulw x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x351b8f8733b9aff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6a2b71187c7fdb9f # initialize rs1
li x27, 0x2c161900afe5e9e0 # initialize rs2
mulw x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xd2a64dca9979591b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd7590c0a8af6497b # initialize rs1
li x28, 0xc82faa463132540e # initialize rs2
mulw x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xeba459ad51174a11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xecd00d4f6c04b829 # initialize rs1
li x29, 0xb540ffe5f528777a # initialize rs2
mulw x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x9601f6685f5dc37f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1432eb2564f92a19 # initialize rs1
li x30, 0xb0b497f9db8a8cad # initialize rs2
mulw x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x18f1da10805dc986 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x45a97a10700c3a97 # initialize rs1
li x31, 0x83d023550d94811c # initialize rs2
mulw x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x9, 0xcb3ef9f6fd86871e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x221b79ff59c324e0 # initialize rs1
li x0, 0x97789ae29c65e7d0 # initialize rs2
mulw x9, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x16, 0xd22e282dae7c2623 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbe9057df6ead6bf6 # initialize rs1
li x1, 0x190593f3b8adfd81 # initialize rs2
mulw x16, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x15, 0xd9c059ff972d199b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfd009eee610a8d77 # initialize rs1
li x2, 0x1e39067367ed6159 # initialize rs2
mulw x15, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x2, 0x6ae302797ed78e3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0c57131be1b2e9ef # initialize rs1
li x3, 0x26228183041b1730 # initialize rs2
mulw x2, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x9, 0xc1b6063715dbee9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa72799108bbd82d5 # initialize rs1
li x4, 0x588f6c9e3ee5c48e # initialize rs2
mulw x9, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x3, 0x4787ab2f1cf5ca27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd167aa8333917bab # initialize rs1
li x5, 0xf1947ab8545797a1 # initialize rs2
mulw x3, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x1, 0x3898127d7f0b0fba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6c764779c4ad5504 # initialize rs1
li x6, 0x163b26054076dcb2 # initialize rs2
mulw x1, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x2, 0x033f23471cd47dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9b85345a7d4bfa66 # initialize rs1
li x7, 0xa5140c392eee7594 # initialize rs2
mulw x2, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x12, 0x96d81891a0780ad3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9c8f6f957b05fc34 # initialize rs1
li x8, 0x998aac6bc12918d5 # initialize rs2
mulw x12, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x21, 0x7a24c465dda7a7a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbbe47211dc3cb85d # initialize rs1
li x9, 0x517ee4795ce707dd # initialize rs2
mulw x21, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x23, 0xe76c7ff00e0360b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfb4f20a98736968e # initialize rs1
li x10, 0x9274b77e82572131 # initialize rs2
mulw x23, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x3, 0x86cc2f8ab42a802b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xca21fedc42d87d57 # initialize rs1
li x11, 0x81c344533bfc8146 # initialize rs2
mulw x3, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x28, 0x7cd0da76b426a2b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb4a898c2243768f7 # initialize rs1
li x12, 0x95a88f02a3b140c3 # initialize rs2
mulw x28, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x25, 0xb30303dfe518102d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xabd6ad335eab905e # initialize rs1
li x13, 0x5ffdcd2b8e31389b # initialize rs2
mulw x25, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x26, 0x3d3d09325c766f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x70ebc007f392cec9 # initialize rs1
li x14, 0x8ab159ff908a8c41 # initialize rs2
mulw x26, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x18, 0x5b075f6cd2069bc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc57a64f120768979 # initialize rs1
li x15, 0xe653588949f4ec59 # initialize rs2
mulw x18, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x11, 0x758981e1706bc238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x1a7c006a0dbc4937 # initialize rs1
li x16, 0xfe8f77b596193c26 # initialize rs2
mulw x11, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x24, 0x92f996d1776f3a2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdc830af208b4f190 # initialize rs1
li x17, 0x5b6cbc8a1d371ac0 # initialize rs2
mulw x24, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x16, 0x32942c1f3a59706e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8064bfe9c5f54985 # initialize rs1
li x18, 0x59fbde957e0b3c8b # initialize rs2
mulw x16, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x23, 0x181b90d77ec0b17a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6ab95e163d5797c3 # initialize rs1
li x19, 0x8e4a3f400539f5e3 # initialize rs2
mulw x23, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x22, 0x745e0eaecf234fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x82a97f90254a80f6 # initialize rs1
li x20, 0x04868026887832fb # initialize rs2
mulw x22, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x31, 0x136cda0d0d6c3d0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xeafecda30a96f853 # initialize rs1
li x21, 0x20fdf53999075f5f # initialize rs2
mulw x31, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x18, 0xc3f72eb0920fc5d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5c2931b86eecdbd5 # initialize rs1
li x22, 0x84995b97b495c0a6 # initialize rs2
mulw x18, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x1, 0xd53d0e0e8e735a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0a13606b98e1b65b # initialize rs1
li x23, 0x3404b076c46e1f5b # initialize rs2
mulw x1, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x6, 0x27ddbae7f0fd53b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfd65e1863178f92a # initialize rs1
li x24, 0x3053a76a2d43df7e # initialize rs2
mulw x6, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x11, 0xfa4690bbc0ed334e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8f32e05434ba0ad9 # initialize rs1
li x25, 0x4f932de6734d3f77 # initialize rs2
mulw x11, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x17, 0x9d8aeb694530f1a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x596434efebe07af6 # initialize rs1
li x26, 0xa94e4c9ba2425480 # initialize rs2
mulw x17, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x25, 0x1a8dfab1be425d0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9ec3fdb9cd015bc6 # initialize rs1
li x27, 0xdbea886c2fe19268 # initialize rs2
mulw x25, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x11, 0x807025a595c19a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x351b4b0cd780a3b3 # initialize rs1
li x28, 0xf79447fdf2e02de9 # initialize rs2
mulw x11, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x21, 0x74b12fd5ff66214c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x38c7295c4e3db4b6 # initialize rs1
li x29, 0x3c291e947e24c7c7 # initialize rs2
mulw x21, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x4, 0x2d87cdb3e912b4dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd500cb10268f225d # initialize rs1
li x30, 0xd1ab1f859f53d120 # initialize rs2
mulw x4, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x30, 0xf3ba9465a862ce05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x56931226d3f524e4 # initialize rs1
li x31, 0x2b6f3139cef91e08 # initialize rs2
mulw x30, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x2f51c0ca87ba51c8)
li x8, 0x6bbf0bd720996524 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2f51c0ca87ba51c8 # initialize rs1
li x5, 0x2e1b3f8593b61f1c # initialize rs2
mulw x8, x30, x5 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x4047936052f2ba4f)
li x17, 0x23cff6424ff733ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbfb86c9fad0d45b1 # initialize rs1
li x26, 0x08c7147f2339f2b3 # initialize rs2
mulw x17, x6, x26 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x65a2ecb5f0929256)
li x1, 0xaeb7e15b8060c43c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0a38787cf2634d69 # initialize rs1
li x18, 0x65a2ecb5f0929256 # initialize rs2
mulw x1, x31, x18 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x769eeb807ed010cd)
li x13, 0x4d3e446c0d4766d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x473a0f13708a6fe5 # initialize rs1
li x2, 0x8961147f812fef33 # initialize rs2
mulw x13, x29, x2 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
