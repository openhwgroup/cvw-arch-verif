///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-subw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.518048
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x73a9ff5d101d0fba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x71d620ef92bd8d5f # initialize rs1
li x7, 0x3268dd1262b851a1 # initialize rs2
subw x0, x16, x7 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x66fa0a1ef2f6485e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xafdede694acbe764 # initialize rs1
li x1, 0x8fadf1514ea8c51e # initialize rs2
subw x1, x15, x1 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x872d81735b293825 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x505d536ee2e9c506 # initialize rs1
li x24, 0xbfa55b2983580a69 # initialize rs2
subw x2, x18, x24 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x73ab00e65f8e12a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0e0e96ce1e9639e9 # initialize rs1
li x24, 0x5e98415aca9fc07a # initialize rs2
subw x3, x15, x24 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x311cc12d7e43de61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe90c23719bf05071 # initialize rs1
li x28, 0xec8c09ca65a0da85 # initialize rs2
subw x4, x17, x28 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x48286a4ea14be7d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xede8202752d97277 # initialize rs1
li x22, 0xc4e42f98fe6d14cb # initialize rs2
subw x5, x9, x22 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x117805be7a2b25fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xad3802145141ba86 # initialize rs1
li x18, 0x684dcdf919547c99 # initialize rs2
subw x6, x31, x18 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x37102c60009d525b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc827f443094cb493 # initialize rs1
li x18, 0xacbfc30b562cc077 # initialize rs2
subw x7, x7, x18 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xbcacb544948783dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8e963bcdfcc69aee # initialize rs1
li x27, 0x3c62f10257ec9ca5 # initialize rs2
subw x8, x15, x27 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xbcf762832eed65c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc87ce5a3d65ed7c2 # initialize rs1
li x30, 0x89d47f429d3b04dd # initialize rs2
subw x9, x16, x30 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xf01b2ba86412b18f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6999f7e36e9a4627 # initialize rs1
li x11, 0xfc47faf352404373 # initialize rs2
subw x10, x8, x11 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x82f08778d235dc77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x74666cd4c00098b7 # initialize rs1
li x5, 0x1ff13b7fa960d9b5 # initialize rs2
subw x11, x9, x5 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xabba89896f260e3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdb9f19b6712658f5 # initialize rs1
li x11, 0x1e2d1e1e64e88bfb # initialize rs2
subw x12, x14, x11 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xe673cbb873446656 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x321b846b81205bd0 # initialize rs1
li x16, 0xe9cb67876a4f86d0 # initialize rs2
subw x13, x14, x16 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x74392707ef8aa7c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd7fa50527fd11b25 # initialize rs1
li x29, 0x766aff29a6302b80 # initialize rs2
subw x14, x11, x29 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x265ad2cc2f94bac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf3392691d65c25a4 # initialize rs1
li x27, 0xae1957eb9871e77e # initialize rs2
subw x15, x21, x27 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xc9f871cda8741174 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8a7358105bfddec9 # initialize rs1
li x5, 0x96e523c651f77efa # initialize rs2
subw x16, x19, x5 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xbb2e0482d26de728 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6cd31313bfbfeb18 # initialize rs1
li x19, 0x2ac5c299a066b2b9 # initialize rs2
subw x17, x22, x19 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xcefd49a984b2d617 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaa77187cf99a72d2 # initialize rs1
li x28, 0xa77e9bd19d121025 # initialize rs2
subw x18, x7, x28 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xe817aec5b3f44cec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8147c9b81e449248 # initialize rs1
li x24, 0x22bc3ec3f90ea95e # initialize rs2
subw x19, x5, x24 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x4746d5c2a94929ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x1e5b34a20ab68849 # initialize rs1
li x20, 0x35f2b0bddf869829 # initialize rs2
subw x20, x31, x20 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xe26fbf383524bf6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x483e6c92fc410a08 # initialize rs1
li x5, 0xf14c6684b63dbe95 # initialize rs2
subw x21, x29, x5 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x082e5cfcc1be4d18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1a74481f376a0f0e # initialize rs1
li x9, 0x3211f56ad127bddf # initialize rs2
subw x22, x18, x9 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x1b4096f4d742fef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8bef92894fc3c107 # initialize rs1
li x15, 0x857a151909143c37 # initialize rs2
subw x23, x24, x15 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x64d55167a81fcf00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb2693ff17c4dca28 # initialize rs1
li x14, 0x8c37c63ba5e5891d # initialize rs2
subw x24, x10, x14 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xd591eddf9e3c8b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf2ec70a7446e93aa # initialize rs1
li x11, 0x16322dcedb6e20fc # initialize rs2
subw x25, x9, x11 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x58f022973f3a5bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc2690ee9a91bd427 # initialize rs1
li x20, 0x0dc86fba6264902a # initialize rs2
subw x26, x27, x20 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xb26b36aedfab12ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00faf9419322fddb # initialize rs1
li x6, 0x5a755dbb6b10475a # initialize rs2
subw x27, x23, x6 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x1b6fbafdb6a72932 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x61518ece72439b05 # initialize rs1
li x30, 0x01d6d8db429474bf # initialize rs2
subw x28, x3, x30 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x718437e67f69f0c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf8b64702dd10e0d7 # initialize rs1
li x26, 0x2638881b94ba4944 # initialize rs2
subw x29, x19, x26 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xb2cd69f39877634b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7d2ab04f96b4010d # initialize rs1
li x19, 0x666ac446d339622e # initialize rs2
subw x30, x31, x19 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xe73d80d77812e62f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x70bc65ae1d52b0c9 # initialize rs1
li x15, 0x675dbd6fcd39f69f # initialize rs2
subw x31, x9, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x30, 0x908bb478f999f984 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb6d8741928aa2c2d # initialize rs1
li x27, 0x059c68eae0b751a2 # initialize rs2
subw x30, x0, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x16, 0xa4a641cf6edcdfa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8271535c0c814f74 # initialize rs1
li x25, 0x7b4b95e821f05b8d # initialize rs2
subw x16, x1, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x5, 0x870728bbfabb09be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x566376c5042d559e # initialize rs1
li x25, 0x629e788c98672547 # initialize rs2
subw x5, x2, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x12, 0xe5d1c1aaa889a1aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf155fc718d814b2b # initialize rs1
li x11, 0x2a81fef371de4a33 # initialize rs2
subw x12, x3, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x6, 0x28e6e86cc519a3da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xed78abbf8503701d # initialize rs1
li x28, 0x425795cbdbec70cd # initialize rs2
subw x6, x4, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x17, 0x1f56c0ad2c6c0c08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc6ec92583212f939 # initialize rs1
li x23, 0xe64187e68b02ebc7 # initialize rs2
subw x17, x5, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x31, 0x5d83176960806d84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe9f0f6a5bc213856 # initialize rs1
li x17, 0x57f38312ee07856d # initialize rs2
subw x31, x6, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x18, 0x19b6def34dff48c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x38aa3e3f70220ba0 # initialize rs1
li x24, 0x0c3548ab83efab9e # initialize rs2
subw x18, x7, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x24, 0x2a62976afe89129c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb8fac11952abd391 # initialize rs1
li x14, 0x07d89d26b083f149 # initialize rs2
subw x24, x8, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x15, 0x95bb83109192e325 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd31799d1f3f9f56e # initialize rs1
li x30, 0x389436b3dab127bb # initialize rs2
subw x15, x9, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0x3cc6ce1da9f3c8bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x851a2a06ab74317c # initialize rs1
li x18, 0xa0f207459b516a71 # initialize rs2
subw x14, x10, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x24, 0x177ebb856526e901 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8293be776fa2ca66 # initialize rs1
li x25, 0x5a66575d54fa392e # initialize rs2
subw x24, x11, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x4, 0xdb8c0683d3f44194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8845b3ea39700a6b # initialize rs1
li x2, 0x6a228dfb2775324a # initialize rs2
subw x4, x12, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x27, 0x88bf821d49704833 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x22b4a842acec4c01 # initialize rs1
li x21, 0x3d89cd66b0a70869 # initialize rs2
subw x27, x13, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x27, 0x93e677e29f355801 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x63936663bea9a39c # initialize rs1
li x10, 0xcafe27becaf1e519 # initialize rs2
subw x27, x14, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x20, 0xc08aa76f429a149c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4e91137264398f92 # initialize rs1
li x24, 0xe548b8e67ae70cbe # initialize rs2
subw x20, x15, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x18, 0x4bca2f2344ccb246 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb72eb9d50dc5ce2c # initialize rs1
li x3, 0xb9845d0fe9bb9c12 # initialize rs2
subw x18, x16, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x6, 0x979280d8daabfc3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1d72f0bc40e50cd0 # initialize rs1
li x25, 0x4b6570abf1be71d7 # initialize rs2
subw x6, x17, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x9, 0x18df6d3c417b1ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x91aa0905c3a8d7de # initialize rs1
li x15, 0xdc37726d7177a5a2 # initialize rs2
subw x9, x18, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x5, 0xb305f2564a2379da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc9ab4ec68f854b23 # initialize rs1
li x17, 0x5ad79d721b9bc6e5 # initialize rs2
subw x5, x19, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x4, 0x6846eb75ffbf0721 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaa5616d8e4083c55 # initialize rs1
li x16, 0xd6c7a118642b6cc3 # initialize rs2
subw x4, x20, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x13, 0xbc98efdd5a93a351 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x338d1cd583ef4f50 # initialize rs1
li x12, 0xdd54795171bb22a1 # initialize rs2
subw x13, x21, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x26, 0xf9120c4d326fc0c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd2d3420d68dfa9ad # initialize rs1
li x2, 0xc366fe89435d0a32 # initialize rs2
subw x26, x22, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x22, 0xa9239f77d1cafd1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe5a5f8d602b05a4b # initialize rs1
li x27, 0x1a9b2b2f2dc906d9 # initialize rs2
subw x22, x23, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x8, 0x5a4fa37de9228774 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xae39009e3ffbc758 # initialize rs1
li x12, 0x7e2db048c7a0d9ac # initialize rs2
subw x8, x24, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x17, 0x461c242f46a1b98f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xdc727204ef4b6525 # initialize rs1
li x10, 0xa3cfcbba7d0c91e0 # initialize rs2
subw x17, x25, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x25, 0xdf3af2241005d2ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9399435f4b0c293c # initialize rs1
li x22, 0xab577947293e4d94 # initialize rs2
subw x25, x26, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x2, 0xfc3a55f7acd3a881 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xff3f74fd9b06ee35 # initialize rs1
li x25, 0x4fadb0defbb1e124 # initialize rs2
subw x2, x27, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x24, 0x6d77f51f6d2425fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1ca4896394ce6259 # initialize rs1
li x13, 0xde831a55ceb345b9 # initialize rs2
subw x24, x28, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x27, 0x13d068ce1ac18164 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0f742bb1cc6c5bb2 # initialize rs1
li x13, 0xf83af41cb4632a72 # initialize rs2
subw x27, x29, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x15, 0x69261010317a85b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x235848733431bb91 # initialize rs1
li x19, 0x8dd6d41060c92749 # initialize rs2
subw x15, x30, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x27, 0x4c2332c231196e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x378f4a1e3cdbff2a # initialize rs1
li x15, 0x15d23e9fb49c3c6d # initialize rs2
subw x27, x31, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x21, 0xaf3082d1e8d20ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc5f243c70fce750a # initialize rs1
li x0, 0x0752a57daf3212b3 # initialize rs2
subw x21, x6, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x25, 0x9f5e4f74cd2fbd14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2f4181552d0e8185 # initialize rs1
li x1, 0x239fd0223e6295a6 # initialize rs2
subw x25, x4, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x25, 0xd65783bf9d71f0fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa1a21a8e4ab7ae2f # initialize rs1
li x2, 0xe74f378c06e9ebb0 # initialize rs2
subw x25, x17, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x5, 0x5efa6fb6c94c870c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x371953a087f38296 # initialize rs1
li x3, 0x6295b06d91c42e6c # initialize rs2
subw x5, x11, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x11, 0x705f000c0a274095 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x01abbfce90c32ce8 # initialize rs1
li x4, 0x2fbae3214529112c # initialize rs2
subw x11, x9, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x2, 0x228ac3570a206992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd2bdbe8bdf6f216c # initialize rs1
li x5, 0xae919b5f31e89d09 # initialize rs2
subw x2, x18, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x21, 0x8a802bf0a2cb62e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x214063c533903b26 # initialize rs1
li x6, 0xe1fc9e2ef90e30f6 # initialize rs2
subw x21, x18, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x17, 0x6b1a7d3cf2438ec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6ca501f6d87d6e09 # initialize rs1
li x7, 0x2a014b4b6285e0c7 # initialize rs2
subw x17, x26, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x14, 0xa5e1cf55ce0eda96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x56319f6b956cd1cb # initialize rs1
li x8, 0x5f23f22466839e7a # initialize rs2
subw x14, x1, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x17, 0x093804ce55458195 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xee7fa0bedb9ab0cb # initialize rs1
li x9, 0xbee6c4eb70d5a015 # initialize rs2
subw x17, x31, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x2, 0x797f835b65975f08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0ee415a130bc1049 # initialize rs1
li x10, 0x1f5d501b7ff0fc54 # initialize rs2
subw x2, x6, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x24, 0xa8104f6f1f0c2af7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xff5d17b584b83c6e # initialize rs1
li x11, 0xa4e45ecdf762fa51 # initialize rs2
subw x24, x17, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x18, 0xa7f054f093328a48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5f2391cf2cac6746 # initialize rs1
li x12, 0x8f17ce5a5399e102 # initialize rs2
subw x18, x10, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x25, 0xa6c9f081d7fea67d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x539a6f22fdc0a535 # initialize rs1
li x13, 0x6fe66835936b527a # initialize rs2
subw x25, x10, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x10, 0x56db4e5c3df5a8bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf2b1af3c8a6582e8 # initialize rs1
li x14, 0xa74837c7a435dc87 # initialize rs2
subw x10, x3, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x1, 0xc48caa2f815570f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x66039ae03ba66f30 # initialize rs1
li x15, 0x87a91733fca91f5a # initialize rs2
subw x1, x16, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x15, 0x5baee0759ce8f646 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2beaa0afa3ba9f24 # initialize rs1
li x16, 0xdd704a7a1518a97c # initialize rs2
subw x15, x5, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x3, 0x70ff06f867408b11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe041782da86a6091 # initialize rs1
li x17, 0xb7d6e7a9f6df8586 # initialize rs2
subw x3, x4, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x3, 0x6c069dc1ff1610e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xcda3958d9505ecc5 # initialize rs1
li x18, 0xefa12cb33027c2d9 # initialize rs2
subw x3, x27, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x13, 0x85e054fcf8b73bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x14f2c8ed25b943e1 # initialize rs1
li x19, 0x3688edb1c7e11da4 # initialize rs2
subw x13, x4, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x31, 0x27d3020364900b95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x36882fe63261c5d1 # initialize rs1
li x20, 0x9f7c1a0b39b78de3 # initialize rs2
subw x31, x21, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0xc32756289433c87c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb5dd7ba1f5695e61 # initialize rs1
li x21, 0xf812c45508f55766 # initialize rs2
subw x2, x3, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x24, 0x834c620d42a70656 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1bf4e0076a6d1352 # initialize rs1
li x22, 0x0311e699fe36c7b3 # initialize rs2
subw x24, x26, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x12, 0x395fe29b08675633 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa6dde0cd18610958 # initialize rs1
li x23, 0x12a4c0c971171575 # initialize rs2
subw x12, x19, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0xbb7f5ad76a1ffa8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x693c14941517cac5 # initialize rs1
li x24, 0xc4943de757187ca9 # initialize rs2
subw x18, x3, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x9, 0x7d4d9a8e92a1587f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7088cc2e6c63cabf # initialize rs1
li x25, 0x44631f3b87fd26b5 # initialize rs2
subw x9, x7, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x27, 0x9fceb2f774a032b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x993c93710ef0bdcf # initialize rs1
li x26, 0xee82e0f534b78659 # initialize rs2
subw x27, x16, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x15, 0x46ad7595038c5472 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x90cf76c220a2e513 # initialize rs1
li x27, 0x961a0f14a02e477c # initialize rs2
subw x15, x1, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x15, 0x9fa4d1e3c36ea1af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4673b26b702207ef # initialize rs1
li x28, 0x28e5b85fb63335af # initialize rs2
subw x15, x19, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x30, 0x9a5fc6985e5d998d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x650ca85824c8fa38 # initialize rs1
li x29, 0x2d59661c5a910682 # initialize rs2
subw x30, x1, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x31, 0x8934dd6fb185f813 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xff5ea2b5bd809d3b # initialize rs1
li x30, 0x8b4d17956632a944 # initialize rs2
subw x31, x24, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x17, 0xced54506ffe9b4de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x83b34c93364dbdfc # initialize rs1
li x31, 0x6c7065f08e52ddcf # initialize rs2
subw x17, x12, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xac85f42fe5a19fb4)
li x20, 0xea299124d251e2f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xea299124d251e2f4 # initialize rs1
li x0, 0x0fa81520be75948c # initialize rs2
subw x20, x16, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xb0260ce1f12c6f05)
li x5, 0xb0260ce1f12c6f05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb0260ce1f12c6f05 # initialize rs1
li x10, 0xb0260ce1f12c6f05 # initialize rs2
subw x5, x0, x10 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x168a304c249213c5)
li x25, 0x0cfbc5989347b46f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x168a304c249213c5 # initialize rs1
li x6, 0x168a304c249213c5 # initialize rs2
subw x25, x23, x6 # perform operation

# Testcase cmp_gpr_hazard raw test
subw x29, x22, x30 # perform first operation
subw x6, x29, x25 # perform second operation

# Testcase cmp_gpr_hazard raw test
subw x26, x1, x24 # perform first operation
subw x10, x3, x26 # perform second operation

# Testcase cmp_gpr_hazard waw test
subw x21, x6, x20 # perform first operation
subw x21, x2, x6 # perform second operation

# Testcase cmp_gpr_hazard waw test
subw x10, x26, x8 # perform first operation
subw x10, x20, x25 # perform second operation

# Testcase cmp_gpr_hazard war test
subw x8, x27, x25 # perform first operation
subw x27, x4, x9 # perform second operation

# Testcase cmp_gpr_hazard war test
subw x27, x24, x10 # perform first operation
subw x10, x6, x22 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x13, 0x3b1ea2029db617f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x0, 0xe5ebe8306306a2fd # initialize rs2
subw x13, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x23, 0x03f5af01a0190582 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
subw x23, x25, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x15, 0xf24199743b6f6501 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
subw x15, x29, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x17, 0x7820db19a07ec386 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x0, 0x293c5f435a24c16d # initialize rs2
subw x17, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x12, 0xf256a36fb3bc5353 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
subw x12, x22, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x21, 0xf9269b786c65b614 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
subw x21, x11, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x9, 0x3879c57234d5db03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000002 # initialize rs1
li x0, 0xd6c76efd7bd8eda1 # initialize rs2
subw x9, x5, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x5, 0xbb57907feb6bdf06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
subw x5, x14, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0xce583d4db028a3b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
subw x13, x28, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x27, 0x6e98b8dc52dae5e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000080000000 # initialize rs1
li x0, 0xa9b14beebd57f5dd # initialize rs2
subw x27, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x16, 0x2941284a4c3c50cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000080000000 # initialize rs1
li x15, 0x0000000080000000 # initialize rs2
subw x16, x26, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x24, 0x3c31f9f2e67bb435 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000080000000 # initialize rs2
subw x24, x16, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x27, 0x2cd9200fd8950985 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000080000001 # initialize rs1
li x0, 0x4c5f5a8b377dcfa3 # initialize rs2
subw x27, x17, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x8, 0x263b40751f99a4b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000080000001 # initialize rs1
li x28, 0x0000000080000001 # initialize rs2
subw x8, x13, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x7, 0x440df000e0706215 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x11, 0x0000000080000001 # initialize rs2
subw x7, x22, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x17, 0xfdb52a81912b4d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x000000007fffffff # initialize rs1
li x0, 0x21469528c46cb6ad # initialize rs2
subw x17, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x19, 0x60da47369b774a4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x000000007fffffff # initialize rs1
li x26, 0x000000007fffffff # initialize rs2
subw x19, x25, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x11, 0x634d759cc245d88b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x14, 0x000000007fffffff # initialize rs2
subw x11, x7, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x19, 0x07e7b86dfc45f176 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x000000007ffffffe # initialize rs1
li x0, 0x4cbb2618583619bd # initialize rs2
subw x19, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x10, 0x1ccc6801865eee8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x000000007ffffffe # initialize rs1
li x7, 0x000000007ffffffe # initialize rs2
subw x10, x18, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x6, 0x254c41d65d233c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x21, 0x000000007ffffffe # initialize rs2
subw x6, x3, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x28, 0x62dd73931d1401df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x0, 0x43842407ec1e3527 # initialize rs2
subw x28, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x10, 0x740159e82ccedfb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
subw x10, x12, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x13, 0x2a7d0d698b3173d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
subw x13, x7, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x31, 0x817d49307960e714 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
li x0, 0xf1b296f64128faf2 # initialize rs2
subw x31, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x22, 0x793c2e7421fa702e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
subw x22, x23, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x27, 0xbc4cb1608c072afe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
subw x27, x16, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x27, 0xac6a4c5006d9d4df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000aaaaaaaa # initialize rs1
li x0, 0x80c27215484534b4 # initialize rs2
subw x27, x26, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x3, 0x6d8ea9f86aa1d00c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000aaaaaaaa # initialize rs1
li x20, 0x00000000aaaaaaaa # initialize rs2
subw x3, x14, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x26, 0x82f76f6aff01923b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x23, 0x00000000aaaaaaaa # initialize rs2
subw x26, x5, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x1, 0xa290b3e09c29c2b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000055555555 # initialize rs1
li x0, 0x5d18c4d2bd9f20d4 # initialize rs2
subw x1, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x5, 0x61b0e731b0533cdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000055555555 # initialize rs1
li x16, 0x0000000055555555 # initialize rs2
subw x5, x19, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x2, 0x45c1934d0fe969a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000055555555 # initialize rs2
subw x2, x18, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x27, 0x9b8bad0e5032722f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000063ae86f7 # initialize rs1
li x0, 0x845d1b102ed322ca # initialize rs2
subw x27, x17, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x7, 0xe89819cc6156772a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000063ae86f7 # initialize rs1
li x15, 0x0000000063ae86f7 # initialize rs2
subw x7, x16, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x27, 0x6505086d0735551a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000063ae86f7 # initialize rs2
subw x27, x12, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x29, 0x1381653fa94a0ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000e3ae86f7 # initialize rs1
li x0, 0x1388808e8dfc4ab2 # initialize rs2
subw x29, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x4, 0x1b275ab3eaa9367f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000e3ae86f7 # initialize rs1
li x3, 0x00000000e3ae86f7 # initialize rs2
subw x4, x7, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x19, 0xf5ecb394b886998f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x10, 0x00000000e3ae86f7 # initialize rs2
subw x19, x3, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x25dd568603735b38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x7, 0xbe2cd7792272b299 # initialize rs2
subw x14, x17, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x15, 0x7b25bf75267267e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x2, 0x2c3c2493043ee865 # initialize rs2
subw x15, x21, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x405f8b2ac1e425a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
li x5, 0x5dcc51234ecc82fb # initialize rs2
subw x23, x26, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x26, 0xca11f88415e9f27d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000000 # initialize rs1
li x29, 0xe04bc67765414e92 # initialize rs2
subw x26, x20, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x19, 0x0d58e4eb7b6b41f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x24, 0xd451756baa3e5374 # initialize rs2
subw x19, x10, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x12, 0x1b2bb064c05a7aa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
li x6, 0xd8ca578203c8e1a2 # initialize rs2
subw x12, x20, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x22, 0x74cf86f48b8d3674 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
li x13, 0x6991b3916187b7ef # initialize rs2
subw x22, x27, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x21, 0x9f4e1d9669281433 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x29, 0xaf3d9cd5a7cf809f # initialize rs2
subw x21, x1, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x1, 0x824d1d497fe2f424 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffffffffffe # initialize rs1
li x11, 0xed698c893b0e92c3 # initialize rs2
subw x1, x10, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x30, 0xbbd7c4942bc5c202 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x44b433d91d159f10 # initialize rs2
subw x30, x9, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x15, 0x6c0d4f57ea84fcab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xcc14ffff1d04332f # initialize rs2
subw x15, x30, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x14, 0x138fc25cee20a716 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
li x28, 0x79e2abcad7204356 # initialize rs2
subw x14, x27, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0xd7823d57cbf91ea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000ffffffff # initialize rs1
li x5, 0x1e2ddad0bdd16bb7 # initialize rs2
subw x13, x22, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x11, 0x04af47ea21259e3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs1
li x22, 0xbd14b1a1a5a3c814 # initialize rs2
subw x11, x29, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x7, 0x8c4f4707b4b50673 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
li x19, 0xf21f7737ff38b941 # initialize rs2
subw x7, x22, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x6, 0xcff8a4133b22b8e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs1
li x7, 0x497f34cf1ea1ecca # initialize rs2
subw x6, x11, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0x634e84eb66321ddd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x87a919b90205baa0 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
subw x19, x24, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0xb8d60a55dcb247b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6439ef0ba2a326e0 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
subw x6, x26, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x14, 0xc88581b99faddc5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xedd77082c4370079 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
subw x14, x11, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x20, 0x0bb2de5b8e432ca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaf591aface7af664 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
subw x20, x23, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0x80ad51715f9ca3a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x35fea8e3ef46b6cd # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
subw x13, x16, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x17, 0x5e274d55a223b20c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8a434c4509d6b11a # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
subw x17, x26, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x8, 0x1707dbbcfa52a8ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x617c48482e293235 # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
subw x8, x26, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x5, 0x4660efe47fb2ca72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3e5092ac3c69a0b9 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
subw x5, x12, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x28, 0xd23674a3aae13ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1b250f440f195df8 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
subw x28, x20, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x14, 0x0cbbaa99c8f82aa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8477467120ab1abb # initialize rs1
li x26, 0x5bbc887763ae86f7 # initialize rs2
subw x14, x8, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xc64b2bdd2f07c5bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb3d78cd9c499d5a6 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
subw x14, x2, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x4, 0x3289c5a71bd35279 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x42c275ed1567ad33 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
subw x4, x21, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0x62173e2104ceee32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x791652b1bbf229db # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
subw x17, x7, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x4, 0x9cfd2150106516a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x41051df2fe51082a # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
subw x4, x17, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x5, 0x146202f8d1f3d441 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd07a3012177a3738 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
subw x5, x17, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x18, 0x27921c05197970c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5b1d749ca1ad07a3 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
subw x18, x20, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xe3a623635b08931d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc73e86ec4c5ad460 # initialize rs1
li x3, 0x656afed9be0dca0a # initialize rs2
subw x0, x0, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xc54719e3fd52522d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdd8211c61a76ac06 # initialize rs1
li x4, 0x63ed37fa0a70ac09 # initialize rs2
subw x1, x1, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x3d617fdb9545367c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8c7ace4b32af8027 # initialize rs1
li x20, 0xf69232f58d48d8cb # initialize rs2
subw x2, x2, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd14da7288e31c309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc8f37d2f78e3f205 # initialize rs1
li x20, 0x9624a0b71ca5965a # initialize rs2
subw x3, x3, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x56b5612f4aa862ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x455291435f7780cf # initialize rs1
li x31, 0xbfa6042590417356 # initialize rs2
subw x4, x4, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x64756ca3305ac82e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x9e70a8b35744cd55 # initialize rs1
li x9, 0x29b2f2b9c90efc11 # initialize rs2
subw x5, x5, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x7ac5fef0f1fe8d58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x749a7ae2320440aa # initialize rs1
li x17, 0x5a778ff5e937707e # initialize rs2
subw x6, x6, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xac5b41c8f46b78e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x375042f8b5bf6e18 # initialize rs1
li x23, 0x1936fdcd90ba0d3d # initialize rs2
subw x7, x7, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xb34a78dc1fcb373c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xda8d219491d1f570 # initialize rs1
li x20, 0x00749fd7cafe7c2c # initialize rs2
subw x8, x8, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x26d1af93d6c39048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x980e9895e87244ec # initialize rs1
li x18, 0x204567847e849e77 # initialize rs2
subw x9, x9, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x7a152dfa55762596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb2da91b4ccbeacf6 # initialize rs1
li x19, 0x270911b2562b968b # initialize rs2
subw x10, x10, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2f1c45fae6e9891c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x40a570883b3fd94f # initialize rs1
li x19, 0x202bd1e54d80dcd5 # initialize rs2
subw x11, x11, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xca459efaee2928fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd46325283fb8ca77 # initialize rs1
li x19, 0xd834681d2d76b2b1 # initialize rs2
subw x12, x12, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x0e81d5b8ca88bf1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xcfe21a1f32c611de # initialize rs1
li x18, 0xa37ff610363197a1 # initialize rs2
subw x13, x13, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x91cfbfcb72fc652e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3a5999deb262bc31 # initialize rs1
li x1, 0x2f936936c5e7f7b8 # initialize rs2
subw x14, x14, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xcfc8ad12bc418adb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xebda929ccf4cded9 # initialize rs1
li x12, 0x27639072c4973451 # initialize rs2
subw x15, x15, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xff94a4d5b6e36cde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5e31c1dd44423798 # initialize rs1
li x9, 0xb2aa1003d3e6aeef # initialize rs2
subw x16, x16, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x298d5c0379e416bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x4589340ac17f7863 # initialize rs1
li x26, 0xd3048f9ed6ad7b95 # initialize rs2
subw x17, x17, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbbd5b7c7eb5d29c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd7250ed1102eef70 # initialize rs1
li x27, 0xa7e626718e06ec1d # initialize rs2
subw x18, x18, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xbda42eeb33c28dfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8b330b24b3ae3e64 # initialize rs1
li x2, 0x9abd683f57ef3e98 # initialize rs2
subw x19, x19, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x7dc23cf906cdaeb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x12995a82b80669f2 # initialize rs1
li x23, 0x8701805f759e89bb # initialize rs2
subw x20, x20, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x021a8c65dd69d3f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1295f41c2288d0d8 # initialize rs1
li x17, 0x68deb6bbddad3a16 # initialize rs2
subw x21, x21, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x361e26810b47fa8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x709d7527ddc7bb21 # initialize rs1
li x13, 0x613aa336debf11d2 # initialize rs2
subw x22, x22, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xe7f318270e07196c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe59e6ea6a33a9de9 # initialize rs1
li x10, 0x3646e375cefd8152 # initialize rs2
subw x23, x23, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc2a18bf3ed235699 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x75a1345d4caa6a2b # initialize rs1
li x10, 0xff834dbed4669c56 # initialize rs2
subw x24, x24, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x5e066f453b7a250e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf1061a2d3408e2e2 # initialize rs1
li x1, 0x50c6590d274aa392 # initialize rs2
subw x25, x25, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x20a0c5974f4bc936 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x46aee220bd61979f # initialize rs1
li x10, 0x4fe4ee2ea8f2d9bb # initialize rs2
subw x26, x26, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf8bd3fc4f027b530 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xce7dbd4a8de1df58 # initialize rs1
li x22, 0xc5ad0d442f0efd03 # initialize rs2
subw x27, x27, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x184cc4ddce207fd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe049f439f48e2de9 # initialize rs1
li x7, 0x53c4434122da343b # initialize rs2
subw x28, x28, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x32e39dc9f8fa1480 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa39835ef7a19145b # initialize rs1
li x30, 0x48ccb5fbfd45a1e2 # initialize rs2
subw x29, x29, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4294d1bad34f3c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x04900af0d8579abe # initialize rs1
li x4, 0x3b0fe3a113c93ccf # initialize rs2
subw x30, x30, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xce51f19611b6d5b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5f3f91d4f4f7f3ea # initialize rs1
li x28, 0x789cd392a5c766e2 # initialize rs2
subw x31, x31, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x1f2ab0b6bf04d27f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd1adfe8f7603870f # initialize rs1
li x0, 0xa410d675c6dbbcd9 # initialize rs2
subw x0, x30, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x604bdf7409340cb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb8f068388c6d2b16 # initialize rs1
li x1, 0x280b7d77194515ed # initialize rs2
subw x1, x12, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x284c7aad6645bda8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x40e560a72d4f0c44 # initialize rs1
li x2, 0x6503e8476d01fdf4 # initialize rs2
subw x2, x4, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x57a220901bc642cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x503666e2b454d747 # initialize rs1
li x3, 0xb7e9c55027fd4b2c # initialize rs2
subw x3, x3, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x2d9c310649057848 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa96fdfc3abc5afa7 # initialize rs1
li x4, 0x68170f8c6fb5187d # initialize rs2
subw x4, x28, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x618b4ded4b5640ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa772174c899198b2 # initialize rs1
li x5, 0xddd97d4c661dcb89 # initialize rs2
subw x5, x30, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x6e938cc17cdfc0f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xea272c73da47f6c0 # initialize rs1
li x6, 0x84f66bd0ee8b7c83 # initialize rs2
subw x6, x29, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xa4aca1bdc806a858 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf7bb41ccaf429660 # initialize rs1
li x7, 0xf33475ae6964cc3a # initialize rs2
subw x7, x28, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xd15075df20214199 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x689f9c67823edcfd # initialize rs1
li x8, 0xc396ee982fddfece # initialize rs2
subw x8, x12, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xf80183c3724d5d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55e666e973dbb3e3 # initialize rs1
li x9, 0x9af79a73e309ba17 # initialize rs2
subw x9, x13, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x34f57829f396758e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd809d3aa5593b455 # initialize rs1
li x10, 0x1e4f39f542bd3e33 # initialize rs2
subw x10, x28, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x06bf0437c4add565 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x67d688f4379f8b2b # initialize rs1
li x11, 0xf8e856d8d0cb9efe # initialize rs2
subw x11, x30, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x0a7c8107df139cf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x65c914a42b35794e # initialize rs1
li x12, 0xa92468c43f94dad9 # initialize rs2
subw x12, x15, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x738ccb7e2336a7ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x40c49396906698e5 # initialize rs1
li x13, 0x5e2d19336726ee43 # initialize rs2
subw x13, x23, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x95f7c2ebc3a32198 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x85b3ce7c2d9fdbca # initialize rs1
li x14, 0x63baa1bbaaadc197 # initialize rs2
subw x14, x22, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xaa93750a9dcf2946 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb42d299136246a87 # initialize rs1
li x15, 0xa927b006490f1da8 # initialize rs2
subw x15, x25, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x52ca7e725a6c3157 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6419e840ecf05223 # initialize rs1
li x16, 0x375ee0e5beddff04 # initialize rs2
subw x16, x18, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x57bd4c079cb0b2a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb413498f4bc2851c # initialize rs1
li x17, 0xb7bc71cd631bf97c # initialize rs2
subw x17, x6, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xf9f513fbbf049e16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x881d9c347775bb42 # initialize rs1
li x18, 0x49a47f51013e5bad # initialize rs2
subw x18, x26, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x50e15d933f11d614 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc49a907b11506274 # initialize rs1
li x19, 0xa20c6f9a0d191e01 # initialize rs2
subw x19, x27, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x31d7cb64cd6453ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5a32b39d7211e65b # initialize rs1
li x20, 0xb59f2604c7ea7d1d # initialize rs2
subw x20, x4, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x3dd7039829996f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x18c2677bb69e9517 # initialize rs1
li x21, 0x67ef206b9532c8a2 # initialize rs2
subw x21, x15, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x0c9e0664b6d60da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x01b65825119a47bf # initialize rs1
li x22, 0xda9c7f943afc1e3c # initialize rs2
subw x22, x21, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xd8df66bce3c72b40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2bfb3289e03b2578 # initialize rs1
li x23, 0x83cca481c3ca3d4f # initialize rs2
subw x23, x12, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x13167e60c346ef67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe017a2c83cf99a68 # initialize rs1
li x24, 0x1c3d7d4f69cb8cec # initialize rs2
subw x24, x9, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x4b082e0b98cae009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xeafa7e64e02d50a5 # initialize rs1
li x25, 0xc535eae1689c4e0b # initialize rs2
subw x25, x21, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xfe8bcddc4dbb1fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb2c4dba6e26517d3 # initialize rs1
li x26, 0xab4c5c98d7dc95b7 # initialize rs2
subw x26, x29, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x22c0c220cbe8638a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa406faee1172aae0 # initialize rs1
li x27, 0xcc262506cf7b66c7 # initialize rs2
subw x27, x2, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xf990e457be405e65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x547b9e0674920b2d # initialize rs1
li x28, 0xea1394a2f095ddbc # initialize rs2
subw x28, x26, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xf86b615b25996841 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x53736b2fe77cfc10 # initialize rs1
li x29, 0xcb138b1fb614641b # initialize rs2
subw x29, x25, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x5017ec96e80ffbd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xcf5f0279ad2b0e82 # initialize rs1
li x30, 0x4dea42bef9060629 # initialize rs2
subw x30, x31, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xe6151f7d3d390816 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf295cdf2fa771b32 # initialize rs1
li x31, 0x2bae65be1aa37fd8 # initialize rs2
subw x31, x31, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x44decbc254b7c244 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9053fa7da29685d9 # initialize rs1
li x0, 0xc399b94e4779e1bc # initialize rs2
subw x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xb17f629ff7e15dd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7e96bfda7e3e2db8 # initialize rs1
li x1, 0x20040384c3cef8b2 # initialize rs2
subw x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xa2c9aa6d26de655b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x753189fef5ad9a70 # initialize rs1
li x2, 0xc6adc8230a9957a6 # initialize rs2
subw x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xb6f4ec3bb9ab7a28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8e0499db3b9710a8 # initialize rs1
li x3, 0x494125930938676a # initialize rs2
subw x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x2343cc369cefe823 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x708e166c61e15203 # initialize rs1
li x4, 0x3314857b7af1f898 # initialize rs2
subw x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0xad3ed44d18f62e90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2947bac821ce8309 # initialize rs1
li x5, 0x68a315be80977a94 # initialize rs2
subw x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x0d4acea6c3cb85b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd5b51306c275af83 # initialize rs1
li x6, 0xb33f185420a84399 # initialize rs2
subw x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x5fe699fece068c3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x49f99a6371f54834 # initialize rs1
li x7, 0x092415a2f78f6a3b # initialize rs2
subw x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x2c14d03e5567ee72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf26576f93ba3733e # initialize rs1
li x8, 0x65c4a4ccb21ebdf3 # initialize rs2
subw x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xfe54068bfde79fab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdb3baf17b43b2196 # initialize rs1
li x9, 0xf6e1991d84b583d3 # initialize rs2
subw x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x92aa524675e6e4ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x213915353a33c96c # initialize rs1
li x10, 0xa4ef97d5701e2a08 # initialize rs2
subw x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xbad11f2ec85cffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4198ea35ff6fa321 # initialize rs1
li x11, 0x11b2fae4f92bc731 # initialize rs2
subw x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x5b5fd652f136ee0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x34c610781a07ae98 # initialize rs1
li x12, 0x1d030dcc55d9cba4 # initialize rs2
subw x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x8c80acc95a27869b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2d896c21080adf7f # initialize rs1
li x13, 0x52700db0f7f0bbc4 # initialize rs2
subw x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x1adc01829d338d51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2c1b876630593f36 # initialize rs1
li x14, 0xa0b1d121dfa4b1db # initialize rs2
subw x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x4538d2b971ebc405 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x46cce57b367129dc # initialize rs1
li x15, 0xcb1654e18ccddd91 # initialize rs2
subw x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x602ec29c380e76c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x15109fc81d6d1e1c # initialize rs1
li x16, 0x230102c4f5415c98 # initialize rs2
subw x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xc25963906dd0e69d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdef214eae1054be7 # initialize rs1
li x17, 0xd2a2e5a5738d1897 # initialize rs2
subw x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xefd851045e4ee3a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa766533bdafb21c8 # initialize rs1
li x18, 0xd5a978f12f863ff2 # initialize rs2
subw x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xc64d7dd54f3900bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x02b670f2a1a54ba3 # initialize rs1
li x19, 0x2a115102dd6e2eaa # initialize rs2
subw x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x7477590e4ad2ea17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x134e215a1c44bf67 # initialize rs1
li x20, 0xbec9a44fca4aa931 # initialize rs2
subw x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc068433159c8b2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd69969572d29f939 # initialize rs1
li x21, 0xddc809cb5608539c # initialize rs2
subw x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xac29d5214f5528e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8ac64039a0c71a04 # initialize rs1
li x22, 0x9855a9fbcfd6d436 # initialize rs2
subw x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x08fdc62da1bd98d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xbba826a2ba8b1c69 # initialize rs1
li x23, 0x33b90bda98bbd222 # initialize rs2
subw x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x9b1b91f083dfc93c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc9bded88072f1b6c # initialize rs1
li x24, 0x27bd9d39480c8420 # initialize rs2
subw x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x3b56321508f7ace7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x06fed8baa5ee26b0 # initialize rs1
li x25, 0x5b729dc72796a2b9 # initialize rs2
subw x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x784088e3503c5fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb65ac995b91f4e02 # initialize rs1
li x26, 0xd7b844d8970d35b1 # initialize rs2
subw x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x193e81282584ada6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x65eee62c4f7e8b4f # initialize rs1
li x27, 0x97d5637287ebfec5 # initialize rs2
subw x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xbe81fc78f5bfe325 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x63740bb066613cb7 # initialize rs1
li x28, 0x2dcb9f653c81df30 # initialize rs2
subw x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x4aa4f3769ae5c180 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb74a678b2d811157 # initialize rs1
li x29, 0x9a8177bd17c31292 # initialize rs2
subw x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x36ed03249c620036 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x4a6c80b1336fc291 # initialize rs1
li x30, 0xd0347270fddb274d # initialize rs2
subw x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x7fc0a5bd2bdabf1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc18ca290166eeebf # initialize rs1
li x31, 0x544a529ce6ead18c # initialize rs2
subw x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x9, 0x7c51f4218bff97fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x38daffbe02b3043f # initialize rs1
li x0, 0x4f199bf92e4cd54b # initialize rs2
subw x9, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x29, 0xcaf470b1a5b2f0aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa73ab9a94dea0f89 # initialize rs1
li x1, 0x873214884412bbea # initialize rs2
subw x29, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x4, 0xc9f23863cd3704c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7e397f67d3909524 # initialize rs1
li x2, 0x2e7cb9d628790afe # initialize rs2
subw x4, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x8, 0x571990999fea976c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x900626913509475a # initialize rs1
li x3, 0x23276805430f5264 # initialize rs2
subw x8, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x16, 0x3d226d0ccb21ab5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd446914e90c16b32 # initialize rs1
li x4, 0x6053883478698b9f # initialize rs2
subw x16, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x22, 0x477a7137fb7c9433 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc80c7a8711bf1127 # initialize rs1
li x5, 0x5729cbb1c36e1c8a # initialize rs2
subw x22, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x14, 0xf0e3f934f701bbb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xeade3ce33f6a10c4 # initialize rs1
li x6, 0xa5790ea3813fdfd3 # initialize rs2
subw x14, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x23, 0xf101dfdae22ef835 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd841a5d030cb6169 # initialize rs1
li x7, 0x280fca99d01c1a57 # initialize rs2
subw x23, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x18, 0x6cc9c6e39090a663 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x99b0acda549c8d4e # initialize rs1
li x8, 0x8d85d008f3a30fb3 # initialize rs2
subw x18, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x12, 0x3c405b515a2c43ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbc56a599887dc088 # initialize rs1
li x9, 0x643d3e39181188c7 # initialize rs2
subw x12, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x17, 0x73c483e524c516dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfcf7b68e26bf2faa # initialize rs1
li x10, 0x88617598962ceff1 # initialize rs2
subw x17, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x4, 0x0b5314cd946e093a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8dd07cf150f0b05c # initialize rs1
li x11, 0x0aaf0473c4b430b6 # initialize rs2
subw x4, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x1, 0x85a20fccd69c8050 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5d984b6c9bf85c18 # initialize rs1
li x12, 0xc7ceb2aa9b7ce8da # initialize rs2
subw x1, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x28, 0x4c2e1bb322ac85e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x15ffc7246c49352d # initialize rs1
li x13, 0xe436984fa42105d6 # initialize rs2
subw x28, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x3, 0x34e0b462f336bf71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcfd5d403b6cf36dc # initialize rs1
li x14, 0x839fe7de73c78a4a # initialize rs2
subw x3, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x13, 0x607dcefc6cabf067 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x90e933161e17f19b # initialize rs1
li x15, 0x2f6d0d31416534cb # initialize rs2
subw x13, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x12, 0xd5e40ca1ba914255 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x399cf8a6f6cc16c1 # initialize rs1
li x16, 0x5a3a7231c31191aa # initialize rs2
subw x12, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x29, 0x42a991c4fd896991 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbb525c01d7436a81 # initialize rs1
li x17, 0x79d67078a56fe2c6 # initialize rs2
subw x29, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x11, 0x4db2a167521549d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc74f81da19f4aa5a # initialize rs1
li x18, 0x002c8ee4882b152b # initialize rs2
subw x11, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x13, 0x5d482017eb8af3bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x823dba642439bdcd # initialize rs1
li x19, 0x9f8ff82299a20251 # initialize rs2
subw x13, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x25, 0x54c45a8e7826bd1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x44bbb26386835e7d # initialize rs1
li x20, 0x68391174ad6ceafe # initialize rs2
subw x25, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x29, 0xcc2333ea18a33d1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1e4819188976a847 # initialize rs1
li x21, 0xd3da05c1090c098b # initialize rs2
subw x29, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x15, 0xfc9fd2ec324eba0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf4e43b3855a6c1b3 # initialize rs1
li x22, 0x68fcdc6389c40cfa # initialize rs2
subw x15, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x7, 0xba91a839d7b5f40a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd9907b65f673a38a # initialize rs1
li x23, 0x369abfc93c660fda # initialize rs2
subw x7, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x21, 0x07bb24cd873f6524 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6b25760a57bc8909 # initialize rs1
li x24, 0x1fef5064aefe7545 # initialize rs2
subw x21, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x23, 0x70cf6ce126cc4046 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xe9f663b867be70d1 # initialize rs1
li x25, 0xb751f4b30a6e29d9 # initialize rs2
subw x23, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x7, 0x3ce8c172c86696a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xdf1f973336a539e3 # initialize rs1
li x26, 0xc07ce8a9c917547e # initialize rs2
subw x7, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x1, 0xddff0934d76ff551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x74533b9ba1982265 # initialize rs1
li x27, 0x3e38f01b3fcc2027 # initialize rs2
subw x1, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x15, 0x4adcbe0715f7ee13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x502219e7fbf39f64 # initialize rs1
li x28, 0xd11c61beceda10c7 # initialize rs2
subw x15, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x2, 0xe5db39cabe11d344 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x868196c734ebde67 # initialize rs1
li x29, 0x290dc14f1fe2d1fc # initialize rs2
subw x2, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x31, 0xf414329a78094d84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9acf501525db79c2 # initialize rs1
li x30, 0x804c79d1cf2836d9 # initialize rs2
subw x31, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x10, 0x43652a1dc43be0d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x03e5cc847598d527 # initialize rs1
li x31, 0xa872326fd924919f # initialize rs2
subw x10, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x34d97b0cf6e906e5)
li x16, 0xb26bf169f51f7543 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x34d97b0cf6e906e5 # initialize rs1
li x4, 0x7805dc339a067ca9 # initialize rs2
subw x16, x10, x4 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x62ea341de4dc05a9)
li x18, 0x52af5864b300ac35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9d15cbe21b23fa57 # initialize rs1
li x30, 0x38cc4be7b4bbfd10 # initialize rs2
subw x18, x12, x30 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x38c6aa740e521074)
li x20, 0x4b2cbe8f0d15924e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x90336abb9b420c7e # initialize rs1
li x13, 0x38c6aa740e521074 # initialize rs2
subw x20, x19, x13 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x1540fb1509b9d052)
li x4, 0x157a606a60657a9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xeaa616b161f267d6 # initialize rs1
li x14, 0xeabf04eaf6462fae # initialize rs2
subw x4, x6, x14 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
