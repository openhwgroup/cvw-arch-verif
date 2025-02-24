///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-beq.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.460779
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x2, 0x809970f6c6a6e02f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x98b8d0885c6f7d05 # initialize rs1
li x8, 0x170ff3908667566f # initialize rs2
beq x0, x8, some_label_for_btype_66099015705473803830 # perform operation 
addi x0, x1, 1
some_label_for_btype_66099015705473803830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0x170ff3908667566f # initialize rs1
li x8, 0x170ff3908667566f # initialize rs2
beq x0, x8, some_label_for_btype_66099015705473803831 # perform operation 
addi x0, x1, 1
some_label_for_btype_66099015705473803831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x1)
li x21, 0xb53a5d626c31e32b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x3da227d5b22de2a0 # initialize rs1
li x14, 0x166115c840546c6e # initialize rs2
beq x1, x14, some_label_for_btype_74198815339817680630 # perform operation 
addi x0, x1, 1
some_label_for_btype_74198815339817680630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x166115c840546c6e # initialize rs1
li x14, 0x166115c840546c6e # initialize rs2
beq x1, x14, some_label_for_btype_74198815339817680631 # perform operation 
addi x0, x1, 1
some_label_for_btype_74198815339817680631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x2)
li x23, 0x188fea01bd654c89 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x39908f595bdd3f0b # initialize rs1
li x12, 0xdaf0279aee162306 # initialize rs2
beq x2, x12, some_label_for_btype_30220692171160132970 # perform operation 
addi x0, x1, 1
some_label_for_btype_30220692171160132970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xdaf0279aee162306 # initialize rs1
li x12, 0xdaf0279aee162306 # initialize rs2
beq x2, x12, some_label_for_btype_30220692171160132971 # perform operation 
addi x0, x1, 1
some_label_for_btype_30220692171160132971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x3)
li x24, 0xd5abd0ce39563b7d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x51e06faab522f7fc # initialize rs1
li x10, 0x12e7e0132e264a3a # initialize rs2
beq x3, x10, some_label_for_btype_44479376507835081190 # perform operation 
addi x0, x1, 1
some_label_for_btype_44479376507835081190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x12e7e0132e264a3a # initialize rs1
li x10, 0x12e7e0132e264a3a # initialize rs2
beq x3, x10, some_label_for_btype_44479376507835081191 # perform operation 
addi x0, x1, 1
some_label_for_btype_44479376507835081191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x4)
li x13, 0x686418a948dab266 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xe8e695e7ec2b9b66 # initialize rs1
li x24, 0x91645d7596a14f57 # initialize rs2
beq x4, x24, some_label_for_btype_181614073755850368540 # perform operation 
addi x0, x1, 1
some_label_for_btype_181614073755850368540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x91645d7596a14f57 # initialize rs1
li x24, 0x91645d7596a14f57 # initialize rs2
beq x4, x24, some_label_for_btype_181614073755850368541 # perform operation 
addi x0, x1, 1
some_label_for_btype_181614073755850368541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x5)
li x11, 0xe445506b61ceb72d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xac6acf6a0634499a # initialize rs1
li x3, 0x5b43bdc14ef0f28e # initialize rs2
beq x5, x3, some_label_for_btype_181859606980044045250 # perform operation 
addi x0, x1, 1
some_label_for_btype_181859606980044045250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x5b43bdc14ef0f28e # initialize rs1
li x3, 0x5b43bdc14ef0f28e # initialize rs2
beq x5, x3, some_label_for_btype_181859606980044045251 # perform operation 
addi x0, x1, 1
some_label_for_btype_181859606980044045251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x6)
li x30, 0x184e993cd04842d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xbd3a0702c4f29dc6 # initialize rs1
li x2, 0x92e6991f3067e824 # initialize rs2
beq x6, x2, some_label_for_btype_145127478457461993660 # perform operation 
addi x0, x1, 1
some_label_for_btype_145127478457461993660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x92e6991f3067e824 # initialize rs1
li x2, 0x92e6991f3067e824 # initialize rs2
beq x6, x2, some_label_for_btype_145127478457461993661 # perform operation 
addi x0, x1, 1
some_label_for_btype_145127478457461993661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x7)
li x18, 0xce208c94ffa5a9aa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x118cb0ddf0d6fe4c # initialize rs1
li x13, 0xaa0c43d6fdf756a5 # initialize rs2
beq x7, x13, some_label_for_btype_151847504443208586750 # perform operation 
addi x0, x1, 1
some_label_for_btype_151847504443208586750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xaa0c43d6fdf756a5 # initialize rs1
li x13, 0xaa0c43d6fdf756a5 # initialize rs2
beq x7, x13, some_label_for_btype_151847504443208586751 # perform operation 
addi x0, x1, 1
some_label_for_btype_151847504443208586751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0x40705cd0b74f49a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x9d4142bc3a55da4e # initialize rs1
li x16, 0xda704833d9179fc4 # initialize rs2
beq x8, x16, some_label_for_btype_29416288345378581930 # perform operation 
addi x0, x1, 1
some_label_for_btype_29416288345378581930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xda704833d9179fc4 # initialize rs1
li x16, 0xda704833d9179fc4 # initialize rs2
beq x8, x16, some_label_for_btype_29416288345378581931 # perform operation 
addi x0, x1, 1
some_label_for_btype_29416288345378581931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x18, 0x5ce2dae8f025de68 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xa1099275317c2b1f # initialize rs1
li x12, 0xc04ce3a691745761 # initialize rs2
beq x9, x12, some_label_for_btype_67594902797871050430 # perform operation 
addi x0, x1, 1
some_label_for_btype_67594902797871050430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xc04ce3a691745761 # initialize rs1
li x12, 0xc04ce3a691745761 # initialize rs2
beq x9, x12, some_label_for_btype_67594902797871050431 # perform operation 
addi x0, x1, 1
some_label_for_btype_67594902797871050431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x24, 0x433da3aef034deeb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xd3f975d0b293db68 # initialize rs1
li x13, 0xf534ff3ee8482ac7 # initialize rs2
beq x10, x13, some_label_for_btype_92966776768661867820 # perform operation 
addi x0, x1, 1
some_label_for_btype_92966776768661867820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xf534ff3ee8482ac7 # initialize rs1
li x13, 0xf534ff3ee8482ac7 # initialize rs2
beq x10, x13, some_label_for_btype_92966776768661867821 # perform operation 
addi x0, x1, 1
some_label_for_btype_92966776768661867821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x3, 0xbad7bbfe75239f18 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x64c248e0f110c65e # initialize rs1
li x18, 0x5f2309bb490145cd # initialize rs2
beq x11, x18, some_label_for_btype_109256509278578181050 # perform operation 
addi x0, x1, 1
some_label_for_btype_109256509278578181050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x5f2309bb490145cd # initialize rs1
li x18, 0x5f2309bb490145cd # initialize rs2
beq x11, x18, some_label_for_btype_109256509278578181051 # perform operation 
addi x0, x1, 1
some_label_for_btype_109256509278578181051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x25, 0x4cc357d7cb0c41b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xac896fbae39cc394 # initialize rs1
li x29, 0xf2eb7aa1bd1906b7 # initialize rs2
beq x12, x29, some_label_for_btype_32853172253149734950 # perform operation 
addi x0, x1, 1
some_label_for_btype_32853172253149734950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xf2eb7aa1bd1906b7 # initialize rs1
li x29, 0xf2eb7aa1bd1906b7 # initialize rs2
beq x12, x29, some_label_for_btype_32853172253149734951 # perform operation 
addi x0, x1, 1
some_label_for_btype_32853172253149734951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x30, 0x53a16422e2df2695 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x40b44ae39d329368 # initialize rs1
li x14, 0xb1f372f5bf7dc223 # initialize rs2
beq x13, x14, some_label_for_btype_41972808466830630580 # perform operation 
addi x0, x1, 1
some_label_for_btype_41972808466830630580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xb1f372f5bf7dc223 # initialize rs1
li x14, 0xb1f372f5bf7dc223 # initialize rs2
beq x13, x14, some_label_for_btype_41972808466830630581 # perform operation 
addi x0, x1, 1
some_label_for_btype_41972808466830630581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x3, 0xdea2c7628921963e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x07f3451fe34c4fb5 # initialize rs1
li x9, 0xe4ae268cccefbb6b # initialize rs2
beq x14, x9, some_label_for_btype_79062715137250849390 # perform operation 
addi x0, x1, 1
some_label_for_btype_79062715137250849390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xe4ae268cccefbb6b # initialize rs1
li x9, 0xe4ae268cccefbb6b # initialize rs2
beq x14, x9, some_label_for_btype_79062715137250849391 # perform operation 
addi x0, x1, 1
some_label_for_btype_79062715137250849391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x5, 0x9951d192a1766bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x2466058a66d849d5 # initialize rs1
li x18, 0xc1636f9b36488683 # initialize rs2
beq x15, x18, some_label_for_btype_98496259009188507270 # perform operation 
addi x0, x1, 1
some_label_for_btype_98496259009188507270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xc1636f9b36488683 # initialize rs1
li x18, 0xc1636f9b36488683 # initialize rs2
beq x15, x18, some_label_for_btype_98496259009188507271 # perform operation 
addi x0, x1, 1
some_label_for_btype_98496259009188507271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x16)
li x25, 0xe2feab646b84aac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xf13d543a3fdfdeeb # initialize rs1
li x3, 0x0206e5d54f541032 # initialize rs2
beq x16, x3, some_label_for_btype_141885006644697685950 # perform operation 
addi x0, x1, 1
some_label_for_btype_141885006644697685950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0206e5d54f541032 # initialize rs1
li x3, 0x0206e5d54f541032 # initialize rs2
beq x16, x3, some_label_for_btype_141885006644697685951 # perform operation 
addi x0, x1, 1
some_label_for_btype_141885006644697685951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x17)
li x18, 0xe4d2e9db030a0dae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xf81bae994cb044e3 # initialize rs1
li x3, 0x9d4d1aa4ed28d70e # initialize rs2
beq x17, x3, some_label_for_btype_11024667091308129640 # perform operation 
addi x0, x1, 1
some_label_for_btype_11024667091308129640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x9d4d1aa4ed28d70e # initialize rs1
li x3, 0x9d4d1aa4ed28d70e # initialize rs2
beq x17, x3, some_label_for_btype_11024667091308129641 # perform operation 
addi x0, x1, 1
some_label_for_btype_11024667091308129641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x18)
li x9, 0xe167796ea9b5c417 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x45b012e0fef1228a # initialize rs1
li x11, 0x0d579a1daa8e30ac # initialize rs2
beq x18, x11, some_label_for_btype_179918023573213443640 # perform operation 
addi x0, x1, 1
some_label_for_btype_179918023573213443640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0d579a1daa8e30ac # initialize rs1
li x11, 0x0d579a1daa8e30ac # initialize rs2
beq x18, x11, some_label_for_btype_179918023573213443641 # perform operation 
addi x0, x1, 1
some_label_for_btype_179918023573213443641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x19)
li x25, 0x81e663874ac258f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x41fc8de1a2301858 # initialize rs1
li x12, 0x1e63b7906d8d2492 # initialize rs2
beq x19, x12, some_label_for_btype_32567704169234528010 # perform operation 
addi x0, x1, 1
some_label_for_btype_32567704169234528010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x1e63b7906d8d2492 # initialize rs1
li x12, 0x1e63b7906d8d2492 # initialize rs2
beq x19, x12, some_label_for_btype_32567704169234528011 # perform operation 
addi x0, x1, 1
some_label_for_btype_32567704169234528011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x20)
li x15, 0x1dda2693dee528b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x86b83db96822fc8c # initialize rs1
li x28, 0xc63089d387f27b8e # initialize rs2
beq x20, x28, some_label_for_btype_91460288120143581200 # perform operation 
addi x0, x1, 1
some_label_for_btype_91460288120143581200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xc63089d387f27b8e # initialize rs1
li x28, 0xc63089d387f27b8e # initialize rs2
beq x20, x28, some_label_for_btype_91460288120143581201 # perform operation 
addi x0, x1, 1
some_label_for_btype_91460288120143581201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x21)
li x9, 0xc70b238a0e080f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x09c515f7693559bc # initialize rs1
li x28, 0x6156f759614b1931 # initialize rs2
beq x21, x28, some_label_for_btype_111750459890089161860 # perform operation 
addi x0, x1, 1
some_label_for_btype_111750459890089161860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x6156f759614b1931 # initialize rs1
li x28, 0x6156f759614b1931 # initialize rs2
beq x21, x28, some_label_for_btype_111750459890089161861 # perform operation 
addi x0, x1, 1
some_label_for_btype_111750459890089161861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x22)
li x23, 0xa87d109134ab514a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xab96192d661ce25f # initialize rs1
li x30, 0x710196537945b116 # initialize rs2
beq x22, x30, some_label_for_btype_31629824107564236500 # perform operation 
addi x0, x1, 1
some_label_for_btype_31629824107564236500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x710196537945b116 # initialize rs1
li x30, 0x710196537945b116 # initialize rs2
beq x22, x30, some_label_for_btype_31629824107564236501 # perform operation 
addi x0, x1, 1
some_label_for_btype_31629824107564236501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x23)
li x31, 0xd0abddc8d70aad39 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xd767e81d3e34cb6b # initialize rs1
li x18, 0xd8b5acacfb765eb2 # initialize rs2
beq x23, x18, some_label_for_btype_166949810151186326040 # perform operation 
addi x0, x1, 1
some_label_for_btype_166949810151186326040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xd8b5acacfb765eb2 # initialize rs1
li x18, 0xd8b5acacfb765eb2 # initialize rs2
beq x23, x18, some_label_for_btype_166949810151186326041 # perform operation 
addi x0, x1, 1
some_label_for_btype_166949810151186326041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x24)
li x10, 0xa1ccac3b8aecdd39 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xd9838f09a990d8f9 # initialize rs1
li x6, 0x126f02a7addf5389 # initialize rs2
beq x24, x6, some_label_for_btype_108110572378726575200 # perform operation 
addi x0, x1, 1
some_label_for_btype_108110572378726575200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x126f02a7addf5389 # initialize rs1
li x6, 0x126f02a7addf5389 # initialize rs2
beq x24, x6, some_label_for_btype_108110572378726575201 # perform operation 
addi x0, x1, 1
some_label_for_btype_108110572378726575201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x25)
li x31, 0x8a2b14d3b106d0b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x752c85e248c815c8 # initialize rs1
li x12, 0x0c39065a8b049c3c # initialize rs2
beq x25, x12, some_label_for_btype_32489865765525446820 # perform operation 
addi x0, x1, 1
some_label_for_btype_32489865765525446820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x0c39065a8b049c3c # initialize rs1
li x12, 0x0c39065a8b049c3c # initialize rs2
beq x25, x12, some_label_for_btype_32489865765525446821 # perform operation 
addi x0, x1, 1
some_label_for_btype_32489865765525446821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x26)
li x30, 0x9028eebf887a5408 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x7f28ebbf8a68280f # initialize rs1
li x8, 0x3ee7c81b965ea3c0 # initialize rs2
beq x26, x8, some_label_for_btype_7513105434399501290 # perform operation 
addi x0, x1, 1
some_label_for_btype_7513105434399501290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x3ee7c81b965ea3c0 # initialize rs1
li x8, 0x3ee7c81b965ea3c0 # initialize rs2
beq x26, x8, some_label_for_btype_7513105434399501291 # perform operation 
addi x0, x1, 1
some_label_for_btype_7513105434399501291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x27)
li x31, 0x73ed942f87f33f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x5a3e02d1b27be6b2 # initialize rs1
li x20, 0x3b1d8d514b182e36 # initialize rs2
beq x27, x20, some_label_for_btype_39611182509244672090 # perform operation 
addi x0, x1, 1
some_label_for_btype_39611182509244672090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x3b1d8d514b182e36 # initialize rs1
li x20, 0x3b1d8d514b182e36 # initialize rs2
beq x27, x20, some_label_for_btype_39611182509244672091 # perform operation 
addi x0, x1, 1
some_label_for_btype_39611182509244672091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x28)
li x29, 0x7cc3a34d933e9418 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xf0d9bcbbd65ce898 # initialize rs1
li x30, 0xea062e854754cd16 # initialize rs2
beq x28, x30, some_label_for_btype_27010836866431999210 # perform operation 
addi x0, x1, 1
some_label_for_btype_27010836866431999210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xea062e854754cd16 # initialize rs1
li x30, 0xea062e854754cd16 # initialize rs2
beq x28, x30, some_label_for_btype_27010836866431999211 # perform operation 
addi x0, x1, 1
some_label_for_btype_27010836866431999211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x29)
li x19, 0x45a88f3ffc8e7081 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xd00141de018bbf7d # initialize rs1
li x23, 0x872c82d5f4ad87ca # initialize rs2
beq x29, x23, some_label_for_btype_173540570032178488210 # perform operation 
addi x0, x1, 1
some_label_for_btype_173540570032178488210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x872c82d5f4ad87ca # initialize rs1
li x23, 0x872c82d5f4ad87ca # initialize rs2
beq x29, x23, some_label_for_btype_173540570032178488211 # perform operation 
addi x0, x1, 1
some_label_for_btype_173540570032178488211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x30)
li x12, 0x4d49780b3ea79ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xb8751caecf1910df # initialize rs1
li x9, 0x90af99e44aa6db71 # initialize rs2
beq x30, x9, some_label_for_btype_18577220091721155850 # perform operation 
addi x0, x1, 1
some_label_for_btype_18577220091721155850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x90af99e44aa6db71 # initialize rs1
li x9, 0x90af99e44aa6db71 # initialize rs2
beq x30, x9, some_label_for_btype_18577220091721155851 # perform operation 
addi x0, x1, 1
some_label_for_btype_18577220091721155851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x31)
li x27, 0xd1d82f9257cd5d87 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x97f52841f5c80d20 # initialize rs1
li x20, 0x88e22825e73512f2 # initialize rs2
beq x31, x20, some_label_for_btype_24754166501269538210 # perform operation 
addi x0, x1, 1
some_label_for_btype_24754166501269538210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x88e22825e73512f2 # initialize rs1
li x20, 0x88e22825e73512f2 # initialize rs2
beq x31, x20, some_label_for_btype_24754166501269538211 # perform operation 
addi x0, x1, 1
some_label_for_btype_24754166501269538211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x5832b64819bee68a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xce1a8d19ca09c73b # initialize rs1
li x0, 0xa987d6d989a8e1b9 # initialize rs2
beq x14, x0, some_label_for_btype_102925680586920883020 # perform operation 
addi x0, x1, 1
some_label_for_btype_102925680586920883020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xa987d6d989a8e1b9 # initialize rs1
li x0, 0xa987d6d989a8e1b9 # initialize rs2
beq x14, x0, some_label_for_btype_102925680586920883021 # perform operation 
addi x0, x1, 1
some_label_for_btype_102925680586920883021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x1)
li x31, 0xf85152fecf9af957 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xc2beaa8b92aef47a # initialize rs1
li x1, 0xe0e4c6b0b0451c7b # initialize rs2
beq x19, x1, some_label_for_btype_96705666419506236540 # perform operation 
addi x0, x1, 1
some_label_for_btype_96705666419506236540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xe0e4c6b0b0451c7b # initialize rs1
li x1, 0xe0e4c6b0b0451c7b # initialize rs2
beq x19, x1, some_label_for_btype_96705666419506236541 # perform operation 
addi x0, x1, 1
some_label_for_btype_96705666419506236541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0xc6a24fee3eb22c3a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x8f357831a5ecda2e # initialize rs1
li x2, 0xfa73243a2c92bfc3 # initialize rs2
beq x11, x2, some_label_for_btype_82903131885776612130 # perform operation 
addi x0, x1, 1
some_label_for_btype_82903131885776612130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xfa73243a2c92bfc3 # initialize rs1
li x2, 0xfa73243a2c92bfc3 # initialize rs2
beq x11, x2, some_label_for_btype_82903131885776612131 # perform operation 
addi x0, x1, 1
some_label_for_btype_82903131885776612131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x3)
li x6, 0x3bbe3b444cf1d1c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x55420d5cb7a8776c # initialize rs1
li x3, 0x0a735ad1cb934a34 # initialize rs2
beq x27, x3, some_label_for_btype_30448491579641752550 # perform operation 
addi x0, x1, 1
some_label_for_btype_30448491579641752550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0a735ad1cb934a34 # initialize rs1
li x3, 0x0a735ad1cb934a34 # initialize rs2
beq x27, x3, some_label_for_btype_30448491579641752551 # perform operation 
addi x0, x1, 1
some_label_for_btype_30448491579641752551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x4)
li x26, 0x59777dcabda9a237 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x7b38ac38995b07da # initialize rs1
li x4, 0xdf8ee8d3018b4d21 # initialize rs2
beq x9, x4, some_label_for_btype_156563005746556802270 # perform operation 
addi x0, x1, 1
some_label_for_btype_156563005746556802270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xdf8ee8d3018b4d21 # initialize rs1
li x4, 0xdf8ee8d3018b4d21 # initialize rs2
beq x9, x4, some_label_for_btype_156563005746556802271 # perform operation 
addi x0, x1, 1
some_label_for_btype_156563005746556802271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x5)
li x30, 0xa700059c7fb8dfe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x192506574b0a4478 # initialize rs1
li x5, 0x49b7994ef7073f4f # initialize rs2
beq x11, x5, some_label_for_btype_179945331825156372750 # perform operation 
addi x0, x1, 1
some_label_for_btype_179945331825156372750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x49b7994ef7073f4f # initialize rs1
li x5, 0x49b7994ef7073f4f # initialize rs2
beq x11, x5, some_label_for_btype_179945331825156372751 # perform operation 
addi x0, x1, 1
some_label_for_btype_179945331825156372751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x6)
li x2, 0x416c8f94b84f7923 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xfd3493a04e015513 # initialize rs1
li x6, 0x7febfc035b02ac4e # initialize rs2
beq x30, x6, some_label_for_btype_6686821212691442210 # perform operation 
addi x0, x1, 1
some_label_for_btype_6686821212691442210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7febfc035b02ac4e # initialize rs1
li x6, 0x7febfc035b02ac4e # initialize rs2
beq x30, x6, some_label_for_btype_6686821212691442211 # perform operation 
addi x0, x1, 1
some_label_for_btype_6686821212691442211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x7)
li x26, 0xdfb5a0b9067ced96 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x8b85c23bfb1987ef # initialize rs1
li x7, 0x5867d4321ec5d618 # initialize rs2
beq x21, x7, some_label_for_btype_87711862051953365800 # perform operation 
addi x0, x1, 1
some_label_for_btype_87711862051953365800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x5867d4321ec5d618 # initialize rs1
li x7, 0x5867d4321ec5d618 # initialize rs2
beq x21, x7, some_label_for_btype_87711862051953365801 # perform operation 
addi x0, x1, 1
some_label_for_btype_87711862051953365801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x8)
li x17, 0x410f4f935e8983d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x9857207e42f287f8 # initialize rs1
li x8, 0x367a1b1f33c128d9 # initialize rs2
beq x19, x8, some_label_for_btype_95055199165362654230 # perform operation 
addi x0, x1, 1
some_label_for_btype_95055199165362654230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x367a1b1f33c128d9 # initialize rs1
li x8, 0x367a1b1f33c128d9 # initialize rs2
beq x19, x8, some_label_for_btype_95055199165362654231 # perform operation 
addi x0, x1, 1
some_label_for_btype_95055199165362654231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x9)
li x26, 0x291f9cf48cb695cb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xe4508833dac45de1 # initialize rs1
li x9, 0xc41f9f8e6601acee # initialize rs2
beq x7, x9, some_label_for_btype_68181384184549842790 # perform operation 
addi x0, x1, 1
some_label_for_btype_68181384184549842790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xc41f9f8e6601acee # initialize rs1
li x9, 0xc41f9f8e6601acee # initialize rs2
beq x7, x9, some_label_for_btype_68181384184549842791 # perform operation 
addi x0, x1, 1
some_label_for_btype_68181384184549842791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x10)
li x31, 0x23b788ca806800d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x19d44a692fa322e2 # initialize rs1
li x10, 0xa2afc9dfe2523d08 # initialize rs2
beq x28, x10, some_label_for_btype_40529846615645687530 # perform operation 
addi x0, x1, 1
some_label_for_btype_40529846615645687530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xa2afc9dfe2523d08 # initialize rs1
li x10, 0xa2afc9dfe2523d08 # initialize rs2
beq x28, x10, some_label_for_btype_40529846615645687531 # perform operation 
addi x0, x1, 1
some_label_for_btype_40529846615645687531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x11)
li x19, 0x6369c65bf0ffd2ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x7b297a94738a0457 # initialize rs1
li x11, 0xcf2237dc040e804e # initialize rs2
beq x14, x11, some_label_for_btype_141755348578897581000 # perform operation 
addi x0, x1, 1
some_label_for_btype_141755348578897581000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xcf2237dc040e804e # initialize rs1
li x11, 0xcf2237dc040e804e # initialize rs2
beq x14, x11, some_label_for_btype_141755348578897581001 # perform operation 
addi x0, x1, 1
some_label_for_btype_141755348578897581001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x12)
li x10, 0xfdf7a163ec99b6d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x10cf2f2f58c7d1a8 # initialize rs1
li x12, 0x89c63c20f8820b70 # initialize rs2
beq x14, x12, some_label_for_btype_66390721213412573450 # perform operation 
addi x0, x1, 1
some_label_for_btype_66390721213412573450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x89c63c20f8820b70 # initialize rs1
li x12, 0x89c63c20f8820b70 # initialize rs2
beq x14, x12, some_label_for_btype_66390721213412573451 # perform operation 
addi x0, x1, 1
some_label_for_btype_66390721213412573451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x13)
li x12, 0xe45ff63e3de919f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x4a75c814a5947dd8 # initialize rs1
li x13, 0x54e12ec61e82ff8e # initialize rs2
beq x14, x13, some_label_for_btype_101876278637147600530 # perform operation 
addi x0, x1, 1
some_label_for_btype_101876278637147600530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x54e12ec61e82ff8e # initialize rs1
li x13, 0x54e12ec61e82ff8e # initialize rs2
beq x14, x13, some_label_for_btype_101876278637147600531 # perform operation 
addi x0, x1, 1
some_label_for_btype_101876278637147600531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x14)
li x10, 0x224d16d2d607bb86 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x7c8373bbe3106f91 # initialize rs1
li x14, 0x15270283e512bd0c # initialize rs2
beq x4, x14, some_label_for_btype_85730965559670638620 # perform operation 
addi x0, x1, 1
some_label_for_btype_85730965559670638620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x15270283e512bd0c # initialize rs1
li x14, 0x15270283e512bd0c # initialize rs2
beq x4, x14, some_label_for_btype_85730965559670638621 # perform operation 
addi x0, x1, 1
some_label_for_btype_85730965559670638621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0xa696f31eff1cac8a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x9e776c773fb81282 # initialize rs1
li x15, 0x722eb8d19043c1b5 # initialize rs2
beq x13, x15, some_label_for_btype_84252292350163744600 # perform operation 
addi x0, x1, 1
some_label_for_btype_84252292350163744600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x722eb8d19043c1b5 # initialize rs1
li x15, 0x722eb8d19043c1b5 # initialize rs2
beq x13, x15, some_label_for_btype_84252292350163744601 # perform operation 
addi x0, x1, 1
some_label_for_btype_84252292350163744601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x16)
li x12, 0x557a897937229736 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xd13517a323fa9c73 # initialize rs1
li x16, 0x00526ee7b0cd61d5 # initialize rs2
beq x11, x16, some_label_for_btype_1675223786986048440 # perform operation 
addi x0, x1, 1
some_label_for_btype_1675223786986048440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x00526ee7b0cd61d5 # initialize rs1
li x16, 0x00526ee7b0cd61d5 # initialize rs2
beq x11, x16, some_label_for_btype_1675223786986048441 # perform operation 
addi x0, x1, 1
some_label_for_btype_1675223786986048441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x17)
li x9, 0xc93349faf3bd5ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x7fbc69ccd598e34f # initialize rs1
li x17, 0xa5bffcd1529204d6 # initialize rs2
beq x30, x17, some_label_for_btype_49475014558648050610 # perform operation 
addi x0, x1, 1
some_label_for_btype_49475014558648050610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xa5bffcd1529204d6 # initialize rs1
li x17, 0xa5bffcd1529204d6 # initialize rs2
beq x30, x17, some_label_for_btype_49475014558648050611 # perform operation 
addi x0, x1, 1
some_label_for_btype_49475014558648050611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x18)
li x7, 0xfa2a68aaadfa86cc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xbb8ae8acc796ef9b # initialize rs1
li x18, 0x80a874c833284d72 # initialize rs2
beq x20, x18, some_label_for_btype_171534535897648973140 # perform operation 
addi x0, x1, 1
some_label_for_btype_171534535897648973140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x80a874c833284d72 # initialize rs1
li x18, 0x80a874c833284d72 # initialize rs2
beq x20, x18, some_label_for_btype_171534535897648973141 # perform operation 
addi x0, x1, 1
some_label_for_btype_171534535897648973141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x19)
li x12, 0x3a1309a330974612 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x51e3439e35452088 # initialize rs1
li x19, 0xcca46a1edb482ffe # initialize rs2
beq x26, x19, some_label_for_btype_183018113326889307170 # perform operation 
addi x0, x1, 1
some_label_for_btype_183018113326889307170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xcca46a1edb482ffe # initialize rs1
li x19, 0xcca46a1edb482ffe # initialize rs2
beq x26, x19, some_label_for_btype_183018113326889307171 # perform operation 
addi x0, x1, 1
some_label_for_btype_183018113326889307171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x20)
li x9, 0xa9df68e6f9a3f0ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xcf3886917a3499a2 # initialize rs1
li x20, 0x6199485f873445d1 # initialize rs2
beq x2, x20, some_label_for_btype_71668328999466766400 # perform operation 
addi x0, x1, 1
some_label_for_btype_71668328999466766400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x6199485f873445d1 # initialize rs1
li x20, 0x6199485f873445d1 # initialize rs2
beq x2, x20, some_label_for_btype_71668328999466766401 # perform operation 
addi x0, x1, 1
some_label_for_btype_71668328999466766401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x21)
li x28, 0x60bacd28ab6f892f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x05d9c9b9ff89e8bf # initialize rs1
li x21, 0x3b1985f6c71e574f # initialize rs2
beq x30, x21, some_label_for_btype_87266003958741062780 # perform operation 
addi x0, x1, 1
some_label_for_btype_87266003958741062780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x3b1985f6c71e574f # initialize rs1
li x21, 0x3b1985f6c71e574f # initialize rs2
beq x30, x21, some_label_for_btype_87266003958741062781 # perform operation 
addi x0, x1, 1
some_label_for_btype_87266003958741062781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x22)
li x26, 0xf4ddb35f49355440 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x6ca2e564852a56cc # initialize rs1
li x22, 0x9bbb77dd1e12ea9f # initialize rs2
beq x30, x22, some_label_for_btype_125583837013531617750 # perform operation 
addi x0, x1, 1
some_label_for_btype_125583837013531617750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x9bbb77dd1e12ea9f # initialize rs1
li x22, 0x9bbb77dd1e12ea9f # initialize rs2
beq x30, x22, some_label_for_btype_125583837013531617751 # perform operation 
addi x0, x1, 1
some_label_for_btype_125583837013531617751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x23)
li x6, 0xfd009a5eb9aa7fa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x5a40b7c1930f31d0 # initialize rs1
li x23, 0x0f1864959930da2e # initialize rs2
beq x15, x23, some_label_for_btype_161806014517691875140 # perform operation 
addi x0, x1, 1
some_label_for_btype_161806014517691875140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0f1864959930da2e # initialize rs1
li x23, 0x0f1864959930da2e # initialize rs2
beq x15, x23, some_label_for_btype_161806014517691875141 # perform operation 
addi x0, x1, 1
some_label_for_btype_161806014517691875141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x24)
li x19, 0x44bbc794e0aeb9ac # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x8105f24b8bce37fd # initialize rs1
li x24, 0x3e8881823ef2fd0b # initialize rs2
beq x7, x24, some_label_for_btype_47097523666118033340 # perform operation 
addi x0, x1, 1
some_label_for_btype_47097523666118033340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x3e8881823ef2fd0b # initialize rs1
li x24, 0x3e8881823ef2fd0b # initialize rs2
beq x7, x24, some_label_for_btype_47097523666118033341 # perform operation 
addi x0, x1, 1
some_label_for_btype_47097523666118033341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x25)
li x14, 0xd670c3ddc8337d7c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x4b08e02554ab0b72 # initialize rs1
li x25, 0x2af8a5bcbb3017fc # initialize rs2
beq x10, x25, some_label_for_btype_125516386199523917160 # perform operation 
addi x0, x1, 1
some_label_for_btype_125516386199523917160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x2af8a5bcbb3017fc # initialize rs1
li x25, 0x2af8a5bcbb3017fc # initialize rs2
beq x10, x25, some_label_for_btype_125516386199523917161 # perform operation 
addi x0, x1, 1
some_label_for_btype_125516386199523917161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x26)
li x31, 0xcea291dd0ae17b63 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x6bfa3be48c34f140 # initialize rs1
li x26, 0x49d452b488f03b14 # initialize rs2
beq x13, x26, some_label_for_btype_69708638411815367050 # perform operation 
addi x0, x1, 1
some_label_for_btype_69708638411815367050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x49d452b488f03b14 # initialize rs1
li x26, 0x49d452b488f03b14 # initialize rs2
beq x13, x26, some_label_for_btype_69708638411815367051 # perform operation 
addi x0, x1, 1
some_label_for_btype_69708638411815367051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x27)
li x16, 0x80f40becd1ce53b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x7eecc6161a133f81 # initialize rs1
li x27, 0x45e56b1063aaa556 # initialize rs2
beq x9, x27, some_label_for_btype_121860789865895718430 # perform operation 
addi x0, x1, 1
some_label_for_btype_121860789865895718430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x45e56b1063aaa556 # initialize rs1
li x27, 0x45e56b1063aaa556 # initialize rs2
beq x9, x27, some_label_for_btype_121860789865895718431 # perform operation 
addi x0, x1, 1
some_label_for_btype_121860789865895718431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x28)
li x10, 0x951bb534cd5eca7b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x59f8fa31d607c9e5 # initialize rs1
li x28, 0x19b1dd55cbd6da6a # initialize rs2
beq x20, x28, some_label_for_btype_17015684266889062460 # perform operation 
addi x0, x1, 1
some_label_for_btype_17015684266889062460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x19b1dd55cbd6da6a # initialize rs1
li x28, 0x19b1dd55cbd6da6a # initialize rs2
beq x20, x28, some_label_for_btype_17015684266889062461 # perform operation 
addi x0, x1, 1
some_label_for_btype_17015684266889062461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x29)
li x14, 0xd5adcab4986d598a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x5050cf7aae9336aa # initialize rs1
li x29, 0x768a99c27dea8fd4 # initialize rs2
beq x14, x29, some_label_for_btype_89637523863279331030 # perform operation 
addi x0, x1, 1
some_label_for_btype_89637523863279331030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x768a99c27dea8fd4 # initialize rs1
li x29, 0x768a99c27dea8fd4 # initialize rs2
beq x14, x29, some_label_for_btype_89637523863279331031 # perform operation 
addi x0, x1, 1
some_label_for_btype_89637523863279331031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x30)
li x29, 0xfa6c0f8239e02a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xe22e0d16a872a3fa # initialize rs1
li x30, 0x4d568cff35afeff4 # initialize rs2
beq x1, x30, some_label_for_btype_74708254837115569100 # perform operation 
addi x0, x1, 1
some_label_for_btype_74708254837115569100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x4d568cff35afeff4 # initialize rs1
li x30, 0x4d568cff35afeff4 # initialize rs2
beq x1, x30, some_label_for_btype_74708254837115569101 # perform operation 
addi x0, x1, 1
some_label_for_btype_74708254837115569101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x31)
li x6, 0xa102b253e0ba40a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xfda22305d13cfc71 # initialize rs1
li x31, 0xb5a11d1d0d163d07 # initialize rs2
beq x21, x31, some_label_for_btype_69198923153075990790 # perform operation 
addi x0, x1, 1
some_label_for_btype_69198923153075990790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xb5a11d1d0d163d07 # initialize rs1
li x31, 0xb5a11d1d0d163d07 # initialize rs2
beq x21, x31, some_label_for_btype_69198923153075990791 # perform operation 
addi x0, x1, 1
some_label_for_btype_69198923153075990791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xa0f74fd5883d1968)
li x6, 0x9ecf64023e9bea33 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x9ecf64023e9bea33 # initialize rs1
li x0, 0x8fbcbb8f559a9f0d # initialize rs2
beq x31, x0, some_label_for_btype_162545186580974047920 # perform operation 
addi x0, x1, 1
some_label_for_btype_162545186580974047920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x8fbcbb8f559a9f0d # initialize rs1
li x0, 0x8fbcbb8f559a9f0d # initialize rs2
beq x31, x0, some_label_for_btype_162545186580974047921 # perform operation 
addi x0, x1, 1
some_label_for_btype_162545186580974047921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x26dcf5d6f4e42804 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x0000000000000000 # initialize rs1
li x21, 0x99a6e1f5ad62fb25 # initialize rs2
beq x13, x21, some_label_for_btype_36463392441086284260 # perform operation 
addi x0, x1, 1
some_label_for_btype_36463392441086284260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x99a6e1f5ad62fb25 # initialize rs1
li x21, 0x99a6e1f5ad62fb25 # initialize rs2
beq x13, x21, some_label_for_btype_36463392441086284261 # perform operation 
addi x0, x1, 1
some_label_for_btype_36463392441086284261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x23, 0xaff8d00f035b667c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000000000001 # initialize rs1
li x19, 0xbb842723bccf44c1 # initialize rs2
beq x24, x19, some_label_for_btype_12921260998644691000 # perform operation 
addi x0, x1, 1
some_label_for_btype_12921260998644691000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xbb842723bccf44c1 # initialize rs1
li x19, 0xbb842723bccf44c1 # initialize rs2
beq x24, x19, some_label_for_btype_12921260998644691001 # perform operation 
addi x0, x1, 1
some_label_for_btype_12921260998644691001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x19, 0x8ec40d9786b6afa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000000000002 # initialize rs1
li x9, 0x5c8f05b0964468ab # initialize rs2
beq x3, x9, some_label_for_btype_129914030401741450360 # perform operation 
addi x0, x1, 1
some_label_for_btype_129914030401741450360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x5c8f05b0964468ab # initialize rs1
li x9, 0x5c8f05b0964468ab # initialize rs2
beq x3, x9, some_label_for_btype_129914030401741450361 # perform operation 
addi x0, x1, 1
some_label_for_btype_129914030401741450361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x26, 0xa81d20ceb2ad8a17 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x8000000000000000 # initialize rs1
li x20, 0xf4d086490707afc3 # initialize rs2
beq x7, x20, some_label_for_btype_97885148792491827990 # perform operation 
addi x0, x1, 1
some_label_for_btype_97885148792491827990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xf4d086490707afc3 # initialize rs1
li x20, 0xf4d086490707afc3 # initialize rs2
beq x7, x20, some_label_for_btype_97885148792491827991 # perform operation 
addi x0, x1, 1
some_label_for_btype_97885148792491827991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x25, 0x42f4675e61b8ff66 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x8000000000000001 # initialize rs1
li x1, 0x4c7e254e5de530fc # initialize rs2
beq x23, x1, some_label_for_btype_130286552818973469440 # perform operation 
addi x0, x1, 1
some_label_for_btype_130286552818973469440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x4c7e254e5de530fc # initialize rs1
li x1, 0x4c7e254e5de530fc # initialize rs2
beq x23, x1, some_label_for_btype_130286552818973469441 # perform operation 
addi x0, x1, 1
some_label_for_btype_130286552818973469441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x3, 0xe9383753663cf75d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x7fffffffffffffff # initialize rs1
li x28, 0xa9fbbb4d84d3ecfa # initialize rs2
beq x4, x28, some_label_for_btype_108808218354401853460 # perform operation 
addi x0, x1, 1
some_label_for_btype_108808218354401853460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xa9fbbb4d84d3ecfa # initialize rs1
li x28, 0xa9fbbb4d84d3ecfa # initialize rs2
beq x4, x28, some_label_for_btype_108808218354401853461 # perform operation 
addi x0, x1, 1
some_label_for_btype_108808218354401853461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x22, 0x9438fc2e4b066a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x7ffffffffffffffe # initialize rs1
li x26, 0x4b01ba3127ecdb00 # initialize rs2
beq x13, x26, some_label_for_btype_92861416755547905060 # perform operation 
addi x0, x1, 1
some_label_for_btype_92861416755547905060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x4b01ba3127ecdb00 # initialize rs1
li x26, 0x4b01ba3127ecdb00 # initialize rs2
beq x13, x26, some_label_for_btype_92861416755547905061 # perform operation 
addi x0, x1, 1
some_label_for_btype_92861416755547905061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x24, 0x47d1bf6a5e896e44 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xffffffffffffffff # initialize rs1
li x17, 0x6badcabdad199690 # initialize rs2
beq x28, x17, some_label_for_btype_164069236311948626260 # perform operation 
addi x0, x1, 1
some_label_for_btype_164069236311948626260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x6badcabdad199690 # initialize rs1
li x17, 0x6badcabdad199690 # initialize rs2
beq x28, x17, some_label_for_btype_164069236311948626261 # perform operation 
addi x0, x1, 1
some_label_for_btype_164069236311948626261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x18, 0x5bf708df6474cad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xfffffffffffffffe # initialize rs1
li x16, 0x2c3ab155e4cb5ae7 # initialize rs2
beq x24, x16, some_label_for_btype_139384030260719083410 # perform operation 
addi x0, x1, 1
some_label_for_btype_139384030260719083410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x2c3ab155e4cb5ae7 # initialize rs1
li x16, 0x2c3ab155e4cb5ae7 # initialize rs2
beq x24, x16, some_label_for_btype_139384030260719083411 # perform operation 
addi x0, x1, 1
some_label_for_btype_139384030260719083411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x17, 0x36d656f030c13ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0xb95525288dbf0a2a # initialize rs2
beq x5, x19, some_label_for_btype_155411108882204841940 # perform operation 
addi x0, x1, 1
some_label_for_btype_155411108882204841940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xb95525288dbf0a2a # initialize rs1
li x19, 0xb95525288dbf0a2a # initialize rs2
beq x5, x19, some_label_for_btype_155411108882204841941 # perform operation 
addi x0, x1, 1
some_label_for_btype_155411108882204841941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x15, 0xd1994a172078ea9c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x99a13430c9a66c5d # initialize rs2
beq x1, x10, some_label_for_btype_38123348927294905610 # perform operation 
addi x0, x1, 1
some_label_for_btype_38123348927294905610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x99a13430c9a66c5d # initialize rs1
li x10, 0x99a13430c9a66c5d # initialize rs2
beq x1, x10, some_label_for_btype_38123348927294905611 # perform operation 
addi x0, x1, 1
some_label_for_btype_38123348927294905611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x7, 0xc070ac932d9e2685 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x5555555555555555 # initialize rs1
li x29, 0x4b2c766c0ff07341 # initialize rs2
beq x25, x29, some_label_for_btype_82771934055823812800 # perform operation 
addi x0, x1, 1
some_label_for_btype_82771934055823812800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x4b2c766c0ff07341 # initialize rs1
li x29, 0x4b2c766c0ff07341 # initialize rs2
beq x25, x29, some_label_for_btype_82771934055823812801 # perform operation 
addi x0, x1, 1
some_label_for_btype_82771934055823812801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0x6850c7abf7baab9f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000000ffffffff # initialize rs1
li x17, 0x867e0c8c33c3f1a4 # initialize rs2
beq x15, x17, some_label_for_btype_22578852008553026130 # perform operation 
addi x0, x1, 1
some_label_for_btype_22578852008553026130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x867e0c8c33c3f1a4 # initialize rs1
li x17, 0x867e0c8c33c3f1a4 # initialize rs2
beq x15, x17, some_label_for_btype_22578852008553026131 # perform operation 
addi x0, x1, 1
some_label_for_btype_22578852008553026131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0xae077dbd04c1f847 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x00000000fffffffe # initialize rs1
li x25, 0x0ae796cdd62b9958 # initialize rs2
beq x7, x25, some_label_for_btype_119532324079701434000 # perform operation 
addi x0, x1, 1
some_label_for_btype_119532324079701434000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0ae796cdd62b9958 # initialize rs1
li x25, 0x0ae796cdd62b9958 # initialize rs2
beq x7, x25, some_label_for_btype_119532324079701434001 # perform operation 
addi x0, x1, 1
some_label_for_btype_119532324079701434001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x29, 0x24f87d6b04cbec49 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000100000000 # initialize rs1
li x13, 0xda86950a51332492 # initialize rs2
beq x3, x13, some_label_for_btype_69759878108536749160 # perform operation 
addi x0, x1, 1
some_label_for_btype_69759878108536749160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xda86950a51332492 # initialize rs1
li x13, 0xda86950a51332492 # initialize rs2
beq x3, x13, some_label_for_btype_69759878108536749161 # perform operation 
addi x0, x1, 1
some_label_for_btype_69759878108536749161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x26, 0x6bad862e9917deb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x0000000100000001 # initialize rs1
li x5, 0x3807958c16e2e641 # initialize rs2
beq x29, x5, some_label_for_btype_105779882318147543330 # perform operation 
addi x0, x1, 1
some_label_for_btype_105779882318147543330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x3807958c16e2e641 # initialize rs1
li x5, 0x3807958c16e2e641 # initialize rs2
beq x29, x5, some_label_for_btype_105779882318147543331 # perform operation 
addi x0, x1, 1
some_label_for_btype_105779882318147543331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x14, 0x4cdfaa4473c6ff17 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x5b2e0a31a9b10417 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
beq x23, x15, some_label_for_btype_862152725559105620 # perform operation 
addi x0, x1, 1
some_label_for_btype_862152725559105620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x0000000000000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
beq x23, x15, some_label_for_btype_862152725559105621 # perform operation 
addi x0, x1, 1
some_label_for_btype_862152725559105621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0xfcfe2fb201708be2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x5d1ed6c97e7e254c # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
beq x1, x24, some_label_for_btype_100252213633090643090 # perform operation 
addi x0, x1, 1
some_label_for_btype_100252213633090643090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
beq x1, x24, some_label_for_btype_100252213633090643091 # perform operation 
addi x0, x1, 1
some_label_for_btype_100252213633090643091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0x3178a0844fc5dbfe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0c1d951ad2a4ec3a # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
beq x30, x10, some_label_for_btype_100252453520792112290 # perform operation 
addi x0, x1, 1
some_label_for_btype_100252453520792112290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0000000000000002 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
beq x30, x10, some_label_for_btype_100252453520792112291 # perform operation 
addi x0, x1, 1
some_label_for_btype_100252453520792112291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x3, 0x0344be7c1454f7b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xe77faba5b34bdcae # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
beq x16, x15, some_label_for_btype_156960809906384250050 # perform operation 
addi x0, x1, 1
some_label_for_btype_156960809906384250050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x8000000000000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
beq x16, x15, some_label_for_btype_156960809906384250051 # perform operation 
addi x0, x1, 1
some_label_for_btype_156960809906384250051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x24, 0x1c0a8bc0aa0ae736 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x90bb3a266c441089 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
beq x21, x5, some_label_for_btype_151371191150144660000 # perform operation 
addi x0, x1, 1
some_label_for_btype_151371191150144660000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
beq x21, x5, some_label_for_btype_151371191150144660001 # perform operation 
addi x0, x1, 1
some_label_for_btype_151371191150144660001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x21, 0x202a90e3ce6faf1d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xb92f25205deaa43c # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
beq x22, x13, some_label_for_btype_169989581354385957280 # perform operation 
addi x0, x1, 1
some_label_for_btype_169989581354385957280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x7fffffffffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
beq x22, x13, some_label_for_btype_169989581354385957281 # perform operation 
addi x0, x1, 1
some_label_for_btype_169989581354385957281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x28, 0xd56b82e497193a22 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x016111a6cc42932e # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
beq x4, x10, some_label_for_btype_173564751003029559850 # perform operation 
addi x0, x1, 1
some_label_for_btype_173564751003029559850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
beq x4, x10, some_label_for_btype_173564751003029559851 # perform operation 
addi x0, x1, 1
some_label_for_btype_173564751003029559851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x6, 0x71ddc9862c26b5e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x9468838e3967b198 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
beq x20, x17, some_label_for_btype_132743816328162828680 # perform operation 
addi x0, x1, 1
some_label_for_btype_132743816328162828680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xffffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
beq x20, x17, some_label_for_btype_132743816328162828681 # perform operation 
addi x0, x1, 1
some_label_for_btype_132743816328162828681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x16, 0x3e9092fafda7f9d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x7d5efdd0f6070357 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
beq x26, x17, some_label_for_btype_83223768101224510260 # perform operation 
addi x0, x1, 1
some_label_for_btype_83223768101224510260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xfffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
beq x26, x17, some_label_for_btype_83223768101224510261 # perform operation 
addi x0, x1, 1
some_label_for_btype_83223768101224510261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x30, 0xb0fe213ec2aa1ee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xc9d96446930288e4 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
beq x31, x20, some_label_for_btype_137893872238970483980 # perform operation 
addi x0, x1, 1
some_label_for_btype_137893872238970483980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
beq x31, x20, some_label_for_btype_137893872238970483981 # perform operation 
addi x0, x1, 1
some_label_for_btype_137893872238970483981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0x9dad97ca09e506a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xfebff20b7d4b1769 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x5, x29, some_label_for_btype_67391748624456192850 # perform operation 
addi x0, x1, 1
some_label_for_btype_67391748624456192850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x5, x29, some_label_for_btype_67391748624456192851 # perform operation 
addi x0, x1, 1
some_label_for_btype_67391748624456192851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x30, 0xc29ac06e841fac30 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x598434a283b1a1d7 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
beq x10, x16, some_label_for_btype_84723578673362020030 # perform operation 
addi x0, x1, 1
some_label_for_btype_84723578673362020030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x5555555555555555 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
beq x10, x16, some_label_for_btype_84723578673362020031 # perform operation 
addi x0, x1, 1
some_label_for_btype_84723578673362020031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0x6ae77c08e8f2736a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x571ad39af48dfb0e # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
beq x9, x8, some_label_for_btype_174778416778204919380 # perform operation 
addi x0, x1, 1
some_label_for_btype_174778416778204919380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x00000000ffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
beq x9, x8, some_label_for_btype_174778416778204919381 # perform operation 
addi x0, x1, 1
some_label_for_btype_174778416778204919381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0x1e4018faedec42c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xe6b252e34db07004 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
beq x14, x16, some_label_for_btype_51830119810609369700 # perform operation 
addi x0, x1, 1
some_label_for_btype_51830119810609369700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
beq x14, x16, some_label_for_btype_51830119810609369701 # perform operation 
addi x0, x1, 1
some_label_for_btype_51830119810609369701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x18, 0x607a29f110a3ea51 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xb5b6f790322eb38c # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
beq x14, x29, some_label_for_btype_28199075866665457780 # perform operation 
addi x0, x1, 1
some_label_for_btype_28199075866665457780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
beq x14, x29, some_label_for_btype_28199075866665457781 # perform operation 
addi x0, x1, 1
some_label_for_btype_28199075866665457781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x10, 0x45c82a2355b7a139 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x482ccffc7d14bd4b # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
beq x29, x22, some_label_for_btype_120524876423804850240 # perform operation 
addi x0, x1, 1
some_label_for_btype_120524876423804850240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
beq x29, x22, some_label_for_btype_120524876423804850241 # perform operation 
addi x0, x1, 1
some_label_for_btype_120524876423804850241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x13, 0xcabe1fa6c9cad490 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000000000000 # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
beq x1, x4, some_label_for_btype_53156035716299180390 # perform operation 
addi x0, x1, 1
some_label_for_btype_53156035716299180390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000000000000 # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
beq x1, x4, some_label_for_btype_53156035716299180391 # perform operation 
addi x0, x1, 1
some_label_for_btype_53156035716299180391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x30, 0xd163d674472b1603 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
beq x27, x10, some_label_for_btype_66322555345462126350 # perform operation 
addi x0, x1, 1
some_label_for_btype_66322555345462126350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
beq x27, x10, some_label_for_btype_66322555345462126351 # perform operation 
addi x0, x1, 1
some_label_for_btype_66322555345462126351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x23, 0xd2d11bd38a9706f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
beq x6, x14, some_label_for_btype_173298455477509518430 # perform operation 
addi x0, x1, 1
some_label_for_btype_173298455477509518430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
beq x6, x14, some_label_for_btype_173298455477509518431 # perform operation 
addi x0, x1, 1
some_label_for_btype_173298455477509518431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x3, 0x67fb5f1bbebab13a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
beq x10, x22, some_label_for_btype_139888437827667627210 # perform operation 
addi x0, x1, 1
some_label_for_btype_139888437827667627210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x8000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
beq x10, x22, some_label_for_btype_139888437827667627211 # perform operation 
addi x0, x1, 1
some_label_for_btype_139888437827667627211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x27, 0x16a972966124e17b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0000000000000000 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
beq x30, x8, some_label_for_btype_76279571409463566060 # perform operation 
addi x0, x1, 1
some_label_for_btype_76279571409463566060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x8000000000000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
beq x30, x8, some_label_for_btype_76279571409463566061 # perform operation 
addi x0, x1, 1
some_label_for_btype_76279571409463566061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x16, 0x6dd11f1c51fe11b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000000000000 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
beq x3, x20, some_label_for_btype_33968533883257267240 # perform operation 
addi x0, x1, 1
some_label_for_btype_33968533883257267240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x7fffffffffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
beq x3, x20, some_label_for_btype_33968533883257267241 # perform operation 
addi x0, x1, 1
some_label_for_btype_33968533883257267241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x31, 0x2005a35d9190f985 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000000000000 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
beq x21, x17, some_label_for_btype_111683030257158041250 # perform operation 
addi x0, x1, 1
some_label_for_btype_111683030257158041250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x7ffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
beq x21, x17, some_label_for_btype_111683030257158041251 # perform operation 
addi x0, x1, 1
some_label_for_btype_111683030257158041251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x16, 0x3c9d3e0f7af4b48d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x0000000000000000 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
beq x13, x28, some_label_for_btype_77769218763358921490 # perform operation 
addi x0, x1, 1
some_label_for_btype_77769218763358921490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xffffffffffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
beq x13, x28, some_label_for_btype_77769218763358921491 # perform operation 
addi x0, x1, 1
some_label_for_btype_77769218763358921491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x31, 0x5ce3f8cf0dcb3860 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x0000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
beq x23, x29, some_label_for_btype_148741753489382896450 # perform operation 
addi x0, x1, 1
some_label_for_btype_148741753489382896450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
beq x23, x29, some_label_for_btype_148741753489382896451 # perform operation 
addi x0, x1, 1
some_label_for_btype_148741753489382896451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x20, 0x9b29d3311f37cf3a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000000000000 # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
beq x1, x25, some_label_for_btype_122812563040889922500 # perform operation 
addi x0, x1, 1
some_label_for_btype_122812563040889922500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
beq x1, x25, some_label_for_btype_122812563040889922501 # perform operation 
addi x0, x1, 1
some_label_for_btype_122812563040889922501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x7b605b7834e9d8fe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000000000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x28, x22, some_label_for_btype_168338693201555677960 # perform operation 
addi x0, x1, 1
some_label_for_btype_168338693201555677960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x28, x22, some_label_for_btype_168338693201555677961 # perform operation 
addi x0, x1, 1
some_label_for_btype_168338693201555677961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x25, 0x54b8705d9fcffe2a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000000000000 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
beq x2, x15, some_label_for_btype_97371548952221348950 # perform operation 
addi x0, x1, 1
some_label_for_btype_97371548952221348950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x5555555555555555 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
beq x2, x15, some_label_for_btype_97371548952221348951 # perform operation 
addi x0, x1, 1
some_label_for_btype_97371548952221348951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x22, 0x8820cd38e092741e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0000000000000000 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
beq x30, x26, some_label_for_btype_26817334549705649400 # perform operation 
addi x0, x1, 1
some_label_for_btype_26817334549705649400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
beq x30, x26, some_label_for_btype_26817334549705649401 # perform operation 
addi x0, x1, 1
some_label_for_btype_26817334549705649401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x26, 0xd85275c6efdc91b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000000000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
beq x18, x22, some_label_for_btype_116546638929798059650 # perform operation 
addi x0, x1, 1
some_label_for_btype_116546638929798059650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x00000000fffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
beq x18, x22, some_label_for_btype_116546638929798059651 # perform operation 
addi x0, x1, 1
some_label_for_btype_116546638929798059651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x12, 0x89ca4613b89a64e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0000000000000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
beq x10, x23, some_label_for_btype_24850214593580249470 # perform operation 
addi x0, x1, 1
some_label_for_btype_24850214593580249470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
beq x10, x23, some_label_for_btype_24850214593580249471 # perform operation 
addi x0, x1, 1
some_label_for_btype_24850214593580249471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x24, 0x17b69eedd5dfad1c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000000000000 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
beq x28, x5, some_label_for_btype_182675810750050026260 # perform operation 
addi x0, x1, 1
some_label_for_btype_182675810750050026260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000100000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
beq x28, x5, some_label_for_btype_182675810750050026261 # perform operation 
addi x0, x1, 1
some_label_for_btype_182675810750050026261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x1, 0x132492417e085f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
beq x6, x9, some_label_for_btype_34943800283897843120 # perform operation 
addi x0, x1, 1
some_label_for_btype_34943800283897843120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
beq x6, x9, some_label_for_btype_34943800283897843121 # perform operation 
addi x0, x1, 1
some_label_for_btype_34943800283897843121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x3, 0xb478ac1ac529584f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
beq x14, x11, some_label_for_btype_107785615010025934980 # perform operation 
addi x0, x1, 1
some_label_for_btype_107785615010025934980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
beq x14, x11, some_label_for_btype_107785615010025934981 # perform operation 
addi x0, x1, 1
some_label_for_btype_107785615010025934981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x15, 0xd3e15fe3fd8a843d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
beq x7, x22, some_label_for_btype_39357981283129855350 # perform operation 
addi x0, x1, 1
some_label_for_btype_39357981283129855350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
beq x7, x22, some_label_for_btype_39357981283129855351 # perform operation 
addi x0, x1, 1
some_label_for_btype_39357981283129855351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x20, 0xe0d0e2cf246159f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000000000001 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
beq x18, x1, some_label_for_btype_98494185032917003090 # perform operation 
addi x0, x1, 1
some_label_for_btype_98494185032917003090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
beq x18, x1, some_label_for_btype_98494185032917003091 # perform operation 
addi x0, x1, 1
some_label_for_btype_98494185032917003091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x31, 0x688a2d66d56aefb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000000000001 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
beq x9, x16, some_label_for_btype_182107592938296097780 # perform operation 
addi x0, x1, 1
some_label_for_btype_182107592938296097780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x8000000000000001 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
beq x9, x16, some_label_for_btype_182107592938296097781 # perform operation 
addi x0, x1, 1
some_label_for_btype_182107592938296097781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x9, 0x73eb65d1b5100cbc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000000000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
beq x3, x7, some_label_for_btype_106884895050319007550 # perform operation 
addi x0, x1, 1
some_label_for_btype_106884895050319007550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x7fffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
beq x3, x7, some_label_for_btype_106884895050319007551 # perform operation 
addi x0, x1, 1
some_label_for_btype_106884895050319007551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x9, 0xb865a95f3f96eb65 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000000000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
beq x1, x25, some_label_for_btype_38404882375431944130 # perform operation 
addi x0, x1, 1
some_label_for_btype_38404882375431944130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
beq x1, x25, some_label_for_btype_38404882375431944131 # perform operation 
addi x0, x1, 1
some_label_for_btype_38404882375431944131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x19, 0xba34c324082498f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x0000000000000001 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
beq x5, x10, some_label_for_btype_149675680092268644260 # perform operation 
addi x0, x1, 1
some_label_for_btype_149675680092268644260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xffffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
beq x5, x10, some_label_for_btype_149675680092268644261 # perform operation 
addi x0, x1, 1
some_label_for_btype_149675680092268644261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x10, 0xf87d61706890d957 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000000000001 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
beq x18, x29, some_label_for_btype_87783798173169974990 # perform operation 
addi x0, x1, 1
some_label_for_btype_87783798173169974990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
beq x18, x29, some_label_for_btype_87783798173169974991 # perform operation 
addi x0, x1, 1
some_label_for_btype_87783798173169974991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x22, 0x271156d05fab4236 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x0000000000000001 # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
beq x20, x2, some_label_for_btype_165105968233591738240 # perform operation 
addi x0, x1, 1
some_label_for_btype_165105968233591738240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
beq x20, x2, some_label_for_btype_165105968233591738241 # perform operation 
addi x0, x1, 1
some_label_for_btype_165105968233591738241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0xa818d304f6a9f991 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x0000000000000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x5, x11, some_label_for_btype_113124810282632455830 # perform operation 
addi x0, x1, 1
some_label_for_btype_113124810282632455830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x5, x11, some_label_for_btype_113124810282632455831 # perform operation 
addi x0, x1, 1
some_label_for_btype_113124810282632455831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x13, 0x01d47824d0cad91c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x0000000000000001 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
beq x23, x18, some_label_for_btype_34851407386416055970 # perform operation 
addi x0, x1, 1
some_label_for_btype_34851407386416055970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x5555555555555555 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
beq x23, x18, some_label_for_btype_34851407386416055971 # perform operation 
addi x0, x1, 1
some_label_for_btype_34851407386416055971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x2, 0x880dcbf9a6a910dd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x0000000000000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
beq x11, x16, some_label_for_btype_38871868420439380100 # perform operation 
addi x0, x1, 1
some_label_for_btype_38871868420439380100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x00000000ffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
beq x11, x16, some_label_for_btype_38871868420439380101 # perform operation 
addi x0, x1, 1
some_label_for_btype_38871868420439380101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x16, 0x7c6a2049cdc9ec4c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000000000001 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
beq x22, x26, some_label_for_btype_103440106729465896770 # perform operation 
addi x0, x1, 1
some_label_for_btype_103440106729465896770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x00000000fffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
beq x22, x26, some_label_for_btype_103440106729465896771 # perform operation 
addi x0, x1, 1
some_label_for_btype_103440106729465896771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x30, 0x1837da5a40822324 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000000000001 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
beq x8, x21, some_label_for_btype_79341712824475168320 # perform operation 
addi x0, x1, 1
some_label_for_btype_79341712824475168320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
beq x8, x21, some_label_for_btype_79341712824475168321 # perform operation 
addi x0, x1, 1
some_label_for_btype_79341712824475168321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x13, 0xa014cb5a5849ec13 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000000000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
beq x1, x21, some_label_for_btype_134754116368055572970 # perform operation 
addi x0, x1, 1
some_label_for_btype_134754116368055572970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
beq x1, x21, some_label_for_btype_134754116368055572971 # perform operation 
addi x0, x1, 1
some_label_for_btype_134754116368055572971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x20, 0xcfad4b12f3363444 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
beq x1, x22, some_label_for_btype_155047211497306811800 # perform operation 
addi x0, x1, 1
some_label_for_btype_155047211497306811800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
beq x1, x22, some_label_for_btype_155047211497306811801 # perform operation 
addi x0, x1, 1
some_label_for_btype_155047211497306811801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x20, 0x7e256ea40809c9f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
beq x22, x19, some_label_for_btype_122378932130877374820 # perform operation 
addi x0, x1, 1
some_label_for_btype_122378932130877374820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
beq x22, x19, some_label_for_btype_122378932130877374821 # perform operation 
addi x0, x1, 1
some_label_for_btype_122378932130877374821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x2, 0x151527b5eb891e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
beq x18, x13, some_label_for_btype_161264896956927837570 # perform operation 
addi x0, x1, 1
some_label_for_btype_161264896956927837570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
beq x18, x13, some_label_for_btype_161264896956927837571 # perform operation 
addi x0, x1, 1
some_label_for_btype_161264896956927837571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x13, 0xd31ebb4d6738d9da # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000000000002 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
beq x28, x21, some_label_for_btype_86529762181864451310 # perform operation 
addi x0, x1, 1
some_label_for_btype_86529762181864451310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
beq x28, x21, some_label_for_btype_86529762181864451311 # perform operation 
addi x0, x1, 1
some_label_for_btype_86529762181864451311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x18, 0xdb388d7eb21d9674 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0000000000000002 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
beq x10, x7, some_label_for_btype_120675009224572253630 # perform operation 
addi x0, x1, 1
some_label_for_btype_120675009224572253630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
beq x10, x7, some_label_for_btype_120675009224572253631 # perform operation 
addi x0, x1, 1
some_label_for_btype_120675009224572253631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x1, 0xbb3468e85f880c69 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000000000002 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
beq x8, x3, some_label_for_btype_46669369287975611850 # perform operation 
addi x0, x1, 1
some_label_for_btype_46669369287975611850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x7fffffffffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
beq x8, x3, some_label_for_btype_46669369287975611851 # perform operation 
addi x0, x1, 1
some_label_for_btype_46669369287975611851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x31, 0x952a8dbf9a4ada47 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000000000002 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
beq x28, x17, some_label_for_btype_65823832836169689060 # perform operation 
addi x0, x1, 1
some_label_for_btype_65823832836169689060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7ffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
beq x28, x17, some_label_for_btype_65823832836169689061 # perform operation 
addi x0, x1, 1
some_label_for_btype_65823832836169689061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x17, 0x4c8da9407c18503d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000000000002 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
beq x21, x23, some_label_for_btype_120027361920771013370 # perform operation 
addi x0, x1, 1
some_label_for_btype_120027361920771013370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xffffffffffffffff # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
beq x21, x23, some_label_for_btype_120027361920771013371 # perform operation 
addi x0, x1, 1
some_label_for_btype_120027361920771013371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x10, 0x4cc3a87c6db1a90d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000000000002 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
beq x7, x8, some_label_for_btype_16922286868529490380 # perform operation 
addi x0, x1, 1
some_label_for_btype_16922286868529490380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xfffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
beq x7, x8, some_label_for_btype_16922286868529490381 # perform operation 
addi x0, x1, 1
some_label_for_btype_16922286868529490381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x18, 0xe0ed0a376307c58b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x0000000000000002 # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
beq x29, x5, some_label_for_btype_68325290407631664240 # perform operation 
addi x0, x1, 1
some_label_for_btype_68325290407631664240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
beq x29, x5, some_label_for_btype_68325290407631664241 # perform operation 
addi x0, x1, 1
some_label_for_btype_68325290407631664241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x27aac96bfc3dc7b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000000000002 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x1, x26, some_label_for_btype_7822730016797174850 # perform operation 
addi x0, x1, 1
some_label_for_btype_7822730016797174850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x1, x26, some_label_for_btype_7822730016797174851 # perform operation 
addi x0, x1, 1
some_label_for_btype_7822730016797174851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x5, 0xb2fbc2c9f13b7aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000000000002 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
beq x1, x27, some_label_for_btype_119161930250000494970 # perform operation 
addi x0, x1, 1
some_label_for_btype_119161930250000494970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
beq x1, x27, some_label_for_btype_119161930250000494971 # perform operation 
addi x0, x1, 1
some_label_for_btype_119161930250000494971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x31, 0xdba23dab42648573 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000000000002 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
beq x18, x21, some_label_for_btype_147017203584043636610 # perform operation 
addi x0, x1, 1
some_label_for_btype_147017203584043636610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x00000000ffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
beq x18, x21, some_label_for_btype_147017203584043636611 # perform operation 
addi x0, x1, 1
some_label_for_btype_147017203584043636611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x1, 0x23b9c49a39981342 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0000000000000002 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
beq x30, x6, some_label_for_btype_46623764789135993610 # perform operation 
addi x0, x1, 1
some_label_for_btype_46623764789135993610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
beq x30, x6, some_label_for_btype_46623764789135993611 # perform operation 
addi x0, x1, 1
some_label_for_btype_46623764789135993611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x8, 0xfbf2d40883331abc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000000000002 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
beq x9, x25, some_label_for_btype_23950652562400920030 # perform operation 
addi x0, x1, 1
some_label_for_btype_23950652562400920030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000100000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
beq x9, x25, some_label_for_btype_23950652562400920031 # perform operation 
addi x0, x1, 1
some_label_for_btype_23950652562400920031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x6, 0xc98252034c53f647 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0000000000000002 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
beq x15, x9, some_label_for_btype_88234933682391787810 # perform operation 
addi x0, x1, 1
some_label_for_btype_88234933682391787810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000100000001 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
beq x15, x9, some_label_for_btype_88234933682391787811 # perform operation 
addi x0, x1, 1
some_label_for_btype_88234933682391787811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x20, 0x1014225ce6ec41b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x8000000000000000 # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
beq x31, x4, some_label_for_btype_14470776320509545760 # perform operation 
addi x0, x1, 1
some_label_for_btype_14470776320509545760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0000000000000000 # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
beq x31, x4, some_label_for_btype_14470776320509545761 # perform operation 
addi x0, x1, 1
some_label_for_btype_14470776320509545761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x27, 0x01476e2ed361cd76 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x8000000000000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
beq x20, x29, some_label_for_btype_33548457923878125960 # perform operation 
addi x0, x1, 1
some_label_for_btype_33548457923878125960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
beq x20, x29, some_label_for_btype_33548457923878125961 # perform operation 
addi x0, x1, 1
some_label_for_btype_33548457923878125961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x5, 0xb7303db0aa896a44 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x8000000000000000 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
beq x16, x6, some_label_for_btype_81283104411984282610 # perform operation 
addi x0, x1, 1
some_label_for_btype_81283104411984282610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
beq x16, x6, some_label_for_btype_81283104411984282611 # perform operation 
addi x0, x1, 1
some_label_for_btype_81283104411984282611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x20, 0x7e7d6a043a5172a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
beq x6, x26, some_label_for_btype_145524159155104752860 # perform operation 
addi x0, x1, 1
some_label_for_btype_145524159155104752860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
beq x6, x26, some_label_for_btype_145524159155104752861 # perform operation 
addi x0, x1, 1
some_label_for_btype_145524159155104752861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x10, 0x3961b4980e89f709 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x8000000000000000 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
beq x2, x29, some_label_for_btype_19163589945892673320 # perform operation 
addi x0, x1, 1
some_label_for_btype_19163589945892673320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
beq x2, x29, some_label_for_btype_19163589945892673321 # perform operation 
addi x0, x1, 1
some_label_for_btype_19163589945892673321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x22, 0xb9df384e8fa433a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x8000000000000000 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
beq x6, x3, some_label_for_btype_78733952675489614890 # perform operation 
addi x0, x1, 1
some_label_for_btype_78733952675489614890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x7fffffffffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
beq x6, x3, some_label_for_btype_78733952675489614891 # perform operation 
addi x0, x1, 1
some_label_for_btype_78733952675489614891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x25, 0x7f468919001e964c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x8000000000000000 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
beq x31, x10, some_label_for_btype_154861667001130732190 # perform operation 
addi x0, x1, 1
some_label_for_btype_154861667001130732190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
beq x31, x10, some_label_for_btype_154861667001130732191 # perform operation 
addi x0, x1, 1
some_label_for_btype_154861667001130732191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x26, 0x89d7c121662cea83 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x8000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
beq x27, x7, some_label_for_btype_105568733126766356800 # perform operation 
addi x0, x1, 1
some_label_for_btype_105568733126766356800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xffffffffffffffff # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
beq x27, x7, some_label_for_btype_105568733126766356801 # perform operation 
addi x0, x1, 1
some_label_for_btype_105568733126766356801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x18, 0x568c748ce2c70442 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x8000000000000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
beq x12, x28, some_label_for_btype_138499891305762830030 # perform operation 
addi x0, x1, 1
some_label_for_btype_138499891305762830030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xfffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
beq x12, x28, some_label_for_btype_138499891305762830031 # perform operation 
addi x0, x1, 1
some_label_for_btype_138499891305762830031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x19, 0xc2b2c7b82bb54885 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x8000000000000000 # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
beq x30, x18, some_label_for_btype_111986586978886778280 # perform operation 
addi x0, x1, 1
some_label_for_btype_111986586978886778280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
beq x30, x18, some_label_for_btype_111986586978886778281 # perform operation 
addi x0, x1, 1
some_label_for_btype_111986586978886778281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0xef93156a5bb9e6c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x8000000000000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x31, x13, some_label_for_btype_151119207517580968200 # perform operation 
addi x0, x1, 1
some_label_for_btype_151119207517580968200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x31, x13, some_label_for_btype_151119207517580968201 # perform operation 
addi x0, x1, 1
some_label_for_btype_151119207517580968201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x16, 0x71719bdc461b36e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x8000000000000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
beq x25, x23, some_label_for_btype_144890131311825125810 # perform operation 
addi x0, x1, 1
some_label_for_btype_144890131311825125810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
beq x25, x23, some_label_for_btype_144890131311825125811 # perform operation 
addi x0, x1, 1
some_label_for_btype_144890131311825125811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x11, 0xef3d09e9cd269921 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x8000000000000000 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
beq x16, x17, some_label_for_btype_37558162203979981470 # perform operation 
addi x0, x1, 1
some_label_for_btype_37558162203979981470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
beq x16, x17, some_label_for_btype_37558162203979981471 # perform operation 
addi x0, x1, 1
some_label_for_btype_37558162203979981471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x19, 0x7c6fad61a7309140 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x8000000000000000 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
beq x1, x18, some_label_for_btype_129870973381984617810 # perform operation 
addi x0, x1, 1
some_label_for_btype_129870973381984617810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x00000000fffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
beq x1, x18, some_label_for_btype_129870973381984617811 # perform operation 
addi x0, x1, 1
some_label_for_btype_129870973381984617811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x26, 0x10923ef57340ce39 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x8000000000000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
beq x6, x25, some_label_for_btype_45618347273575646230 # perform operation 
addi x0, x1, 1
some_label_for_btype_45618347273575646230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000100000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
beq x6, x25, some_label_for_btype_45618347273575646231 # perform operation 
addi x0, x1, 1
some_label_for_btype_45618347273575646231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x23, 0xb6eeb5142170ed05 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x8000000000000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
beq x27, x26, some_label_for_btype_82438135525307265310 # perform operation 
addi x0, x1, 1
some_label_for_btype_82438135525307265310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000100000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
beq x27, x26, some_label_for_btype_82438135525307265311 # perform operation 
addi x0, x1, 1
some_label_for_btype_82438135525307265311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x18, 0x80fa010ef2903635 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x8000000000000001 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
beq x1, x14, some_label_for_btype_179540524064488231580 # perform operation 
addi x0, x1, 1
some_label_for_btype_179540524064488231580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
beq x1, x14, some_label_for_btype_179540524064488231581 # perform operation 
addi x0, x1, 1
some_label_for_btype_179540524064488231581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x9, 0x5168d8623dc603a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x8000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
beq x16, x11, some_label_for_btype_24771875592475022510 # perform operation 
addi x0, x1, 1
some_label_for_btype_24771875592475022510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
beq x16, x11, some_label_for_btype_24771875592475022511 # perform operation 
addi x0, x1, 1
some_label_for_btype_24771875592475022511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x18, 0x602607fe841c5070 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x8000000000000001 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
beq x31, x9, some_label_for_btype_7068773798827060790 # perform operation 
addi x0, x1, 1
some_label_for_btype_7068773798827060790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
beq x31, x9, some_label_for_btype_7068773798827060791 # perform operation 
addi x0, x1, 1
some_label_for_btype_7068773798827060791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x17, 0xabd814f536b7f339 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
beq x11, x26, some_label_for_btype_30556535596240838490 # perform operation 
addi x0, x1, 1
some_label_for_btype_30556535596240838490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
beq x11, x26, some_label_for_btype_30556535596240838491 # perform operation 
addi x0, x1, 1
some_label_for_btype_30556535596240838491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x5, 0x55fc5294fb269f8c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
beq x4, x2, some_label_for_btype_16557429208789332400 # perform operation 
addi x0, x1, 1
some_label_for_btype_16557429208789332400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
beq x4, x2, some_label_for_btype_16557429208789332401 # perform operation 
addi x0, x1, 1
some_label_for_btype_16557429208789332401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x2, 0x493b0cd29684b59c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x8000000000000001 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
beq x10, x25, some_label_for_btype_96333338758923283660 # perform operation 
addi x0, x1, 1
some_label_for_btype_96333338758923283660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
beq x10, x25, some_label_for_btype_96333338758923283661 # perform operation 
addi x0, x1, 1
some_label_for_btype_96333338758923283661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x3, 0x3bc93d6acb970670 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x8000000000000001 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
beq x10, x23, some_label_for_btype_175925869715769899810 # perform operation 
addi x0, x1, 1
some_label_for_btype_175925869715769899810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
beq x10, x23, some_label_for_btype_175925869715769899811 # perform operation 
addi x0, x1, 1
some_label_for_btype_175925869715769899811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x16, 0x352b9f9c4bf8e795 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x8000000000000001 # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
beq x13, x4, some_label_for_btype_105093386132828500720 # perform operation 
addi x0, x1, 1
some_label_for_btype_105093386132828500720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xffffffffffffffff # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
beq x13, x4, some_label_for_btype_105093386132828500721 # perform operation 
addi x0, x1, 1
some_label_for_btype_105093386132828500721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x21, 0xf331eeb0d96bc99e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x8000000000000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
beq x16, x27, some_label_for_btype_27397456677241969080 # perform operation 
addi x0, x1, 1
some_label_for_btype_27397456677241969080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xfffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
beq x16, x27, some_label_for_btype_27397456677241969081 # perform operation 
addi x0, x1, 1
some_label_for_btype_27397456677241969081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x29, 0x9cccf71d488778e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x8000000000000001 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
beq x1, x19, some_label_for_btype_13479717246313432920 # perform operation 
addi x0, x1, 1
some_label_for_btype_13479717246313432920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
beq x1, x19, some_label_for_btype_13479717246313432921 # perform operation 
addi x0, x1, 1
some_label_for_btype_13479717246313432921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xd6b1762ab698c558 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x8000000000000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x3, x1, some_label_for_btype_13056048193784080970 # perform operation 
addi x0, x1, 1
some_label_for_btype_13056048193784080970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x3, x1, some_label_for_btype_13056048193784080971 # perform operation 
addi x0, x1, 1
some_label_for_btype_13056048193784080971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x24, 0x7061a30d48b5b50a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x8000000000000001 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
beq x16, x20, some_label_for_btype_125316934209056511580 # perform operation 
addi x0, x1, 1
some_label_for_btype_125316934209056511580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5555555555555555 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
beq x16, x20, some_label_for_btype_125316934209056511581 # perform operation 
addi x0, x1, 1
some_label_for_btype_125316934209056511581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x24, 0x41bb8bbf161d1776 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x8000000000000001 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
beq x20, x2, some_label_for_btype_176959288785075634220 # perform operation 
addi x0, x1, 1
some_label_for_btype_176959288785075634220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000000ffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
beq x20, x2, some_label_for_btype_176959288785075634221 # perform operation 
addi x0, x1, 1
some_label_for_btype_176959288785075634221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x30, 0xd37ac5602c11be6e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x8000000000000001 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
beq x7, x23, some_label_for_btype_130659905163406937400 # perform operation 
addi x0, x1, 1
some_label_for_btype_130659905163406937400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
beq x7, x23, some_label_for_btype_130659905163406937401 # perform operation 
addi x0, x1, 1
some_label_for_btype_130659905163406937401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x4, 0x1297fb95c48efb29 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x8000000000000001 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
beq x17, x11, some_label_for_btype_42498421198680406390 # perform operation 
addi x0, x1, 1
some_label_for_btype_42498421198680406390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
beq x17, x11, some_label_for_btype_42498421198680406391 # perform operation 
addi x0, x1, 1
some_label_for_btype_42498421198680406391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x30, 0x901bf932bf647a43 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x8000000000000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
beq x23, x26, some_label_for_btype_106930089180455004560 # perform operation 
addi x0, x1, 1
some_label_for_btype_106930089180455004560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x0000000100000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
beq x23, x26, some_label_for_btype_106930089180455004561 # perform operation 
addi x0, x1, 1
some_label_for_btype_106930089180455004561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x31, 0xe1b474f2170c6fbc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
beq x18, x17, some_label_for_btype_65282949735315713530 # perform operation 
addi x0, x1, 1
some_label_for_btype_65282949735315713530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
beq x18, x17, some_label_for_btype_65282949735315713531 # perform operation 
addi x0, x1, 1
some_label_for_btype_65282949735315713531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x19, 0xd614a74586daf385 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
beq x9, x22, some_label_for_btype_16401136816138566130 # perform operation 
addi x0, x1, 1
some_label_for_btype_16401136816138566130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
beq x9, x22, some_label_for_btype_16401136816138566131 # perform operation 
addi x0, x1, 1
some_label_for_btype_16401136816138566131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x22, 0x3fc76f22bd79da7a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
beq x19, x13, some_label_for_btype_35183053798882193530 # perform operation 
addi x0, x1, 1
some_label_for_btype_35183053798882193530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
beq x19, x13, some_label_for_btype_35183053798882193531 # perform operation 
addi x0, x1, 1
some_label_for_btype_35183053798882193531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x2, 0x58894334386e2b9b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x7fffffffffffffff # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
beq x6, x25, some_label_for_btype_141043674390443962760 # perform operation 
addi x0, x1, 1
some_label_for_btype_141043674390443962760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x8000000000000000 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
beq x6, x25, some_label_for_btype_141043674390443962761 # perform operation 
addi x0, x1, 1
some_label_for_btype_141043674390443962761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x29, 0xd9d0d3b4cb92b5e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x7fffffffffffffff # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
beq x12, x1, some_label_for_btype_4205753944973945570 # perform operation 
addi x0, x1, 1
some_label_for_btype_4205753944973945570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
beq x12, x1, some_label_for_btype_4205753944973945571 # perform operation 
addi x0, x1, 1
some_label_for_btype_4205753944973945571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x26, 0x5133f6c291bf0939 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x7fffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
beq x30, x19, some_label_for_btype_110487318059240395100 # perform operation 
addi x0, x1, 1
some_label_for_btype_110487318059240395100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7fffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
beq x30, x19, some_label_for_btype_110487318059240395101 # perform operation 
addi x0, x1, 1
some_label_for_btype_110487318059240395101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0x07ba205476784588 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x7fffffffffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
beq x12, x21, some_label_for_btype_176246311218954156900 # perform operation 
addi x0, x1, 1
some_label_for_btype_176246311218954156900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
beq x12, x21, some_label_for_btype_176246311218954156901 # perform operation 
addi x0, x1, 1
some_label_for_btype_176246311218954156901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x2, 0xdb207b4994b9598d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x7fffffffffffffff # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
beq x10, x20, some_label_for_btype_75930863586013361680 # perform operation 
addi x0, x1, 1
some_label_for_btype_75930863586013361680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xffffffffffffffff # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
beq x10, x20, some_label_for_btype_75930863586013361681 # perform operation 
addi x0, x1, 1
some_label_for_btype_75930863586013361681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x18, 0x647626e1fd067b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7fffffffffffffff # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
beq x24, x30, some_label_for_btype_181085380421845932140 # perform operation 
addi x0, x1, 1
some_label_for_btype_181085380421845932140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
beq x24, x30, some_label_for_btype_181085380421845932141 # perform operation 
addi x0, x1, 1
some_label_for_btype_181085380421845932141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x18, 0x7031a2fd61726c6e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7fffffffffffffff # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
beq x29, x1, some_label_for_btype_179633436060123250700 # perform operation 
addi x0, x1, 1
some_label_for_btype_179633436060123250700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
beq x29, x1, some_label_for_btype_179633436060123250701 # perform operation 
addi x0, x1, 1
some_label_for_btype_179633436060123250701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x4f2d3527c0d9980f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x7fffffffffffffff # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x8, x6, some_label_for_btype_128099383227088960490 # perform operation 
addi x0, x1, 1
some_label_for_btype_128099383227088960490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x8, x6, some_label_for_btype_128099383227088960491 # perform operation 
addi x0, x1, 1
some_label_for_btype_128099383227088960491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x1, 0xb0145fba4ae6553c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x7fffffffffffffff # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
beq x30, x8, some_label_for_btype_183420544890435670950 # perform operation 
addi x0, x1, 1
some_label_for_btype_183420544890435670950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x5555555555555555 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
beq x30, x8, some_label_for_btype_183420544890435670951 # perform operation 
addi x0, x1, 1
some_label_for_btype_183420544890435670951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x9, 0xcabd51738d9db9ec # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x7fffffffffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
beq x10, x20, some_label_for_btype_169559379818115935760 # perform operation 
addi x0, x1, 1
some_label_for_btype_169559379818115935760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
beq x10, x20, some_label_for_btype_169559379818115935761 # perform operation 
addi x0, x1, 1
some_label_for_btype_169559379818115935761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x15, 0x68575f26bf8b6835 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7fffffffffffffff # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
beq x24, x27, some_label_for_btype_180412414365063718680 # perform operation 
addi x0, x1, 1
some_label_for_btype_180412414365063718680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
beq x24, x27, some_label_for_btype_180412414365063718681 # perform operation 
addi x0, x1, 1
some_label_for_btype_180412414365063718681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x16, 0x22c89b762291ab1a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
beq x13, x25, some_label_for_btype_160594380604550689660 # perform operation 
addi x0, x1, 1
some_label_for_btype_160594380604550689660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x0000000100000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
beq x13, x25, some_label_for_btype_160594380604550689661 # perform operation 
addi x0, x1, 1
some_label_for_btype_160594380604550689661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x29, 0x3453df3d740d1a9a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
beq x28, x16, some_label_for_btype_95077313339802158990 # perform operation 
addi x0, x1, 1
some_label_for_btype_95077313339802158990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
beq x28, x16, some_label_for_btype_95077313339802158991 # perform operation 
addi x0, x1, 1
some_label_for_btype_95077313339802158991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x31, 0xe676a3b317adfb17 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
beq x14, x16, some_label_for_btype_126028278011572915030 # perform operation 
addi x0, x1, 1
some_label_for_btype_126028278011572915030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000000000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
beq x14, x16, some_label_for_btype_126028278011572915031 # perform operation 
addi x0, x1, 1
some_label_for_btype_126028278011572915031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x2, 0x3671f9e372582649 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
beq x4, x23, some_label_for_btype_125304408354563769980 # perform operation 
addi x0, x1, 1
some_label_for_btype_125304408354563769980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
beq x4, x23, some_label_for_btype_125304408354563769981 # perform operation 
addi x0, x1, 1
some_label_for_btype_125304408354563769981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x6, 0x041ad084b33f4b41 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
beq x7, x31, some_label_for_btype_157207781668272790980 # perform operation 
addi x0, x1, 1
some_label_for_btype_157207781668272790980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
beq x7, x31, some_label_for_btype_157207781668272790981 # perform operation 
addi x0, x1, 1
some_label_for_btype_157207781668272790981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x27, 0x86b0345b904afa0f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x7ffffffffffffffe # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
beq x26, x3, some_label_for_btype_51917141450130138680 # perform operation 
addi x0, x1, 1
some_label_for_btype_51917141450130138680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
beq x26, x3, some_label_for_btype_51917141450130138681 # perform operation 
addi x0, x1, 1
some_label_for_btype_51917141450130138681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x10, 0x25c6657872202adb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7ffffffffffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
beq x29, x27, some_label_for_btype_71705118658812012380 # perform operation 
addi x0, x1, 1
some_label_for_btype_71705118658812012380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x8000000000000001 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
beq x29, x27, some_label_for_btype_71705118658812012381 # perform operation 
addi x0, x1, 1
some_label_for_btype_71705118658812012381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x14, 0x1d58205255e1cdbf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x7ffffffffffffffe # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
beq x31, x9, some_label_for_btype_164822666996386901180 # perform operation 
addi x0, x1, 1
some_label_for_btype_164822666996386901180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7fffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
beq x31, x9, some_label_for_btype_164822666996386901181 # perform operation 
addi x0, x1, 1
some_label_for_btype_164822666996386901181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x7, 0x1bcd88625d73c6ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
beq x30, x21, some_label_for_btype_86376936273395650210 # perform operation 
addi x0, x1, 1
some_label_for_btype_86376936273395650210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
beq x30, x21, some_label_for_btype_86376936273395650211 # perform operation 
addi x0, x1, 1
some_label_for_btype_86376936273395650211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x20, 0x39ad06399dc7d9b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7ffffffffffffffe # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
beq x24, x13, some_label_for_btype_49027767984324687580 # perform operation 
addi x0, x1, 1
some_label_for_btype_49027767984324687580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xffffffffffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
beq x24, x13, some_label_for_btype_49027767984324687581 # perform operation 
addi x0, x1, 1
some_label_for_btype_49027767984324687581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x2, 0x3c683ba8158dede8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x7ffffffffffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
beq x16, x25, some_label_for_btype_104934675493396001730 # perform operation 
addi x0, x1, 1
some_label_for_btype_104934675493396001730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xfffffffffffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
beq x16, x25, some_label_for_btype_104934675493396001731 # perform operation 
addi x0, x1, 1
some_label_for_btype_104934675493396001731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x26, 0x95eb834eed3ada70 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7ffffffffffffffe # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
beq x17, x3, some_label_for_btype_47416251671025711620 # perform operation 
addi x0, x1, 1
some_label_for_btype_47416251671025711620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
beq x17, x3, some_label_for_btype_47416251671025711621 # perform operation 
addi x0, x1, 1
some_label_for_btype_47416251671025711621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xbb4f0f664cb9b1fa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7ffffffffffffffe # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x11, x10, some_label_for_btype_125201694973382481860 # perform operation 
addi x0, x1, 1
some_label_for_btype_125201694973382481860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x11, x10, some_label_for_btype_125201694973382481861 # perform operation 
addi x0, x1, 1
some_label_for_btype_125201694973382481861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x15, 0x2b756f8e4590d292 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x7ffffffffffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
beq x3, x1, some_label_for_btype_183031566196580669110 # perform operation 
addi x0, x1, 1
some_label_for_btype_183031566196580669110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
beq x3, x1, some_label_for_btype_183031566196580669111 # perform operation 
addi x0, x1, 1
some_label_for_btype_183031566196580669111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x31, 0x0f477339df38a806 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7ffffffffffffffe # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
beq x17, x29, some_label_for_btype_177135721718256861160 # perform operation 
addi x0, x1, 1
some_label_for_btype_177135721718256861160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000000ffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
beq x17, x29, some_label_for_btype_177135721718256861161 # perform operation 
addi x0, x1, 1
some_label_for_btype_177135721718256861161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x20, 0x23a18ceca1b8e674 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x7ffffffffffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
beq x19, x3, some_label_for_btype_121004527315912598200 # perform operation 
addi x0, x1, 1
some_label_for_btype_121004527315912598200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
beq x19, x3, some_label_for_btype_121004527315912598201 # perform operation 
addi x0, x1, 1
some_label_for_btype_121004527315912598201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x31, 0xce8215a946d24c78 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
beq x9, x20, some_label_for_btype_182180673947345766470 # perform operation 
addi x0, x1, 1
some_label_for_btype_182180673947345766470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
beq x9, x20, some_label_for_btype_182180673947345766471 # perform operation 
addi x0, x1, 1
some_label_for_btype_182180673947345766471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x27, 0x9a1f1dd7722919a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
beq x11, x13, some_label_for_btype_182124875920704458730 # perform operation 
addi x0, x1, 1
some_label_for_btype_182124875920704458730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000100000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
beq x11, x13, some_label_for_btype_182124875920704458731 # perform operation 
addi x0, x1, 1
some_label_for_btype_182124875920704458731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x5, 0x2ed16348a901f39c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
beq x27, x25, some_label_for_btype_27377713274704510370 # perform operation 
addi x0, x1, 1
some_label_for_btype_27377713274704510370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
beq x27, x25, some_label_for_btype_27377713274704510371 # perform operation 
addi x0, x1, 1
some_label_for_btype_27377713274704510371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x2, 0x985863064d34d491 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
beq x27, x4, some_label_for_btype_49081763798431159180 # perform operation 
addi x0, x1, 1
some_label_for_btype_49081763798431159180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000000000001 # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
beq x27, x4, some_label_for_btype_49081763798431159181 # perform operation 
addi x0, x1, 1
some_label_for_btype_49081763798431159181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x4, 0x474197fbedc62de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
beq x29, x2, some_label_for_btype_107177166733143782620 # perform operation 
addi x0, x1, 1
some_label_for_btype_107177166733143782620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
beq x29, x2, some_label_for_btype_107177166733143782621 # perform operation 
addi x0, x1, 1
some_label_for_btype_107177166733143782621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x23, 0xe57b70b5853dd572 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xffffffffffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
beq x3, x22, some_label_for_btype_173800313770957047600 # perform operation 
addi x0, x1, 1
some_label_for_btype_173800313770957047600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x8000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
beq x3, x22, some_label_for_btype_173800313770957047601 # perform operation 
addi x0, x1, 1
some_label_for_btype_173800313770957047601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x14, 0xd30faf9faa83e526 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xffffffffffffffff # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
beq x16, x3, some_label_for_btype_86480289329374767610 # perform operation 
addi x0, x1, 1
some_label_for_btype_86480289329374767610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x8000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
beq x16, x3, some_label_for_btype_86480289329374767611 # perform operation 
addi x0, x1, 1
some_label_for_btype_86480289329374767611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x3, 0x3111b8de267b4a0c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xffffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
beq x8, x26, some_label_for_btype_90361606230298021070 # perform operation 
addi x0, x1, 1
some_label_for_btype_90361606230298021070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x7fffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
beq x8, x26, some_label_for_btype_90361606230298021071 # perform operation 
addi x0, x1, 1
some_label_for_btype_90361606230298021071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0x522eeaf645fa48c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xffffffffffffffff # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
beq x12, x22, some_label_for_btype_163075183155317706380 # perform operation 
addi x0, x1, 1
some_label_for_btype_163075183155317706380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
beq x12, x22, some_label_for_btype_163075183155317706381 # perform operation 
addi x0, x1, 1
some_label_for_btype_163075183155317706381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x1, 0x1ffd398b00184c20 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
beq x3, x16, some_label_for_btype_169217217150512487430 # perform operation 
addi x0, x1, 1
some_label_for_btype_169217217150512487430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
beq x3, x16, some_label_for_btype_169217217150512487431 # perform operation 
addi x0, x1, 1
some_label_for_btype_169217217150512487431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x20, 0xcaf4870334fa666f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xffffffffffffffff # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
beq x3, x22, some_label_for_btype_126052373496629774430 # perform operation 
addi x0, x1, 1
some_label_for_btype_126052373496629774430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xfffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
beq x3, x22, some_label_for_btype_126052373496629774431 # perform operation 
addi x0, x1, 1
some_label_for_btype_126052373496629774431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x5, 0x64bd31e17fd3425e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xffffffffffffffff # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
beq x21, x30, some_label_for_btype_27721844326330170120 # perform operation 
addi x0, x1, 1
some_label_for_btype_27721844326330170120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
beq x21, x30, some_label_for_btype_27721844326330170121 # perform operation 
addi x0, x1, 1
some_label_for_btype_27721844326330170121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x6c090f69dbe4d002 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xffffffffffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x17, x20, some_label_for_btype_89207987913398951880 # perform operation 
addi x0, x1, 1
some_label_for_btype_89207987913398951880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x17, x20, some_label_for_btype_89207987913398951881 # perform operation 
addi x0, x1, 1
some_label_for_btype_89207987913398951881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x19, 0xc99a3d044b09b7d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xffffffffffffffff # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
beq x20, x12, some_label_for_btype_13225001903346335020 # perform operation 
addi x0, x1, 1
some_label_for_btype_13225001903346335020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x5555555555555555 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
beq x20, x12, some_label_for_btype_13225001903346335021 # perform operation 
addi x0, x1, 1
some_label_for_btype_13225001903346335021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x29, 0x2536bf87791848af # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xffffffffffffffff # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
beq x7, x11, some_label_for_btype_76294213943619264000 # perform operation 
addi x0, x1, 1
some_label_for_btype_76294213943619264000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000000ffffffff # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
beq x7, x11, some_label_for_btype_76294213943619264001 # perform operation 
addi x0, x1, 1
some_label_for_btype_76294213943619264001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x10, 0xa283b667c913df3f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
beq x23, x21, some_label_for_btype_71360744151952519220 # perform operation 
addi x0, x1, 1
some_label_for_btype_71360744151952519220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000000fffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
beq x23, x21, some_label_for_btype_71360744151952519221 # perform operation 
addi x0, x1, 1
some_label_for_btype_71360744151952519221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x11, 0xd155d2d98eb680e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
beq x7, x19, some_label_for_btype_42883003812885343880 # perform operation 
addi x0, x1, 1
some_label_for_btype_42883003812885343880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000100000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
beq x7, x19, some_label_for_btype_42883003812885343881 # perform operation 
addi x0, x1, 1
some_label_for_btype_42883003812885343881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x26, 0x9a5d416e31d4ff6e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
beq x2, x15, some_label_for_btype_171989988287677186710 # perform operation 
addi x0, x1, 1
some_label_for_btype_171989988287677186710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000100000001 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
beq x2, x15, some_label_for_btype_171989988287677186711 # perform operation 
addi x0, x1, 1
some_label_for_btype_171989988287677186711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x2, 0xd66a1eda2876f2f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
beq x29, x22, some_label_for_btype_144312300178814112490 # perform operation 
addi x0, x1, 1
some_label_for_btype_144312300178814112490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
beq x29, x22, some_label_for_btype_144312300178814112491 # perform operation 
addi x0, x1, 1
some_label_for_btype_144312300178814112491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x23, 0xa503d9f1d734660d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
beq x4, x6, some_label_for_btype_102136457006351800 # perform operation 
addi x0, x1, 1
some_label_for_btype_102136457006351800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
beq x4, x6, some_label_for_btype_102136457006351801 # perform operation 
addi x0, x1, 1
some_label_for_btype_102136457006351801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x17, 0x37a9dde48478f302 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
beq x29, x22, some_label_for_btype_10708314717410052380 # perform operation 
addi x0, x1, 1
some_label_for_btype_10708314717410052380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
beq x29, x22, some_label_for_btype_10708314717410052381 # perform operation 
addi x0, x1, 1
some_label_for_btype_10708314717410052381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x23, 0x6fb4a1149e3abad5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xfffffffffffffffe # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
beq x30, x19, some_label_for_btype_177374126684355630400 # perform operation 
addi x0, x1, 1
some_label_for_btype_177374126684355630400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
beq x30, x19, some_label_for_btype_177374126684355630401 # perform operation 
addi x0, x1, 1
some_label_for_btype_177374126684355630401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x5, 0x2b34f8298ca9482e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xfffffffffffffffe # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
beq x24, x30, some_label_for_btype_66742473341431060080 # perform operation 
addi x0, x1, 1
some_label_for_btype_66742473341431060080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x8000000000000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
beq x24, x30, some_label_for_btype_66742473341431060081 # perform operation 
addi x0, x1, 1
some_label_for_btype_66742473341431060081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x10, 0xdd88c8b0d30016fa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xfffffffffffffffe # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
beq x6, x29, some_label_for_btype_84040130978669302140 # perform operation 
addi x0, x1, 1
some_label_for_btype_84040130978669302140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x7fffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
beq x6, x29, some_label_for_btype_84040130978669302141 # perform operation 
addi x0, x1, 1
some_label_for_btype_84040130978669302141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x10, 0xfbe4bcd6ac23f1e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xfffffffffffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
beq x17, x5, some_label_for_btype_36835660974409063120 # perform operation 
addi x0, x1, 1
some_label_for_btype_36835660974409063120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x7ffffffffffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
beq x17, x5, some_label_for_btype_36835660974409063121 # perform operation 
addi x0, x1, 1
some_label_for_btype_36835660974409063121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x6, 0x2296ea2c829dc815 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xfffffffffffffffe # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
beq x9, x8, some_label_for_btype_80864761341646139720 # perform operation 
addi x0, x1, 1
some_label_for_btype_80864761341646139720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xffffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
beq x9, x8, some_label_for_btype_80864761341646139721 # perform operation 
addi x0, x1, 1
some_label_for_btype_80864761341646139721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x29, 0x26bd4dafc536d49d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xfffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
beq x12, x8, some_label_for_btype_61043058637194825880 # perform operation 
addi x0, x1, 1
some_label_for_btype_61043058637194825880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xfffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
beq x12, x8, some_label_for_btype_61043058637194825881 # perform operation 
addi x0, x1, 1
some_label_for_btype_61043058637194825881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x20, 0x5c901d6a58a579c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xfffffffffffffffe # initialize rs1
li x22, 0x5bbc887763ae86f7 # initialize rs2
beq x11, x22, some_label_for_btype_173836774815472518740 # perform operation 
addi x0, x1, 1
some_label_for_btype_173836774815472518740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x22, 0x5bbc887763ae86f7 # initialize rs2
beq x11, x22, some_label_for_btype_173836774815472518741 # perform operation 
addi x0, x1, 1
some_label_for_btype_173836774815472518741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x39ac295adac7d758 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xfffffffffffffffe # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x6, x5, some_label_for_btype_54883111160730646800 # perform operation 
addi x0, x1, 1
some_label_for_btype_54883111160730646800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x6, x5, some_label_for_btype_54883111160730646801 # perform operation 
addi x0, x1, 1
some_label_for_btype_54883111160730646801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x27, 0x96ffc8cdb1a6ed55 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xfffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
beq x11, x22, some_label_for_btype_158556017816313482890 # perform operation 
addi x0, x1, 1
some_label_for_btype_158556017816313482890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x5555555555555555 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
beq x11, x22, some_label_for_btype_158556017816313482891 # perform operation 
addi x0, x1, 1
some_label_for_btype_158556017816313482891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x3, 0xc72ac740235de22a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xfffffffffffffffe # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
beq x19, x12, some_label_for_btype_150581099338173793700 # perform operation 
addi x0, x1, 1
some_label_for_btype_150581099338173793700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
beq x19, x12, some_label_for_btype_150581099338173793701 # perform operation 
addi x0, x1, 1
some_label_for_btype_150581099338173793701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x14, 0x37fb9339e91b6f8c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xfffffffffffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
beq x13, x24, some_label_for_btype_88342378296883034750 # perform operation 
addi x0, x1, 1
some_label_for_btype_88342378296883034750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
beq x13, x24, some_label_for_btype_88342378296883034751 # perform operation 
addi x0, x1, 1
some_label_for_btype_88342378296883034751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x24, 0xb3aaf630298ba9fc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xfffffffffffffffe # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
beq x23, x26, some_label_for_btype_172094806712783289250 # perform operation 
addi x0, x1, 1
some_label_for_btype_172094806712783289250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x0000000100000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
beq x23, x26, some_label_for_btype_172094806712783289251 # perform operation 
addi x0, x1, 1
some_label_for_btype_172094806712783289251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x11, 0x355f1d47864e56e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
beq x17, x25, some_label_for_btype_57768420192650004380 # perform operation 
addi x0, x1, 1
some_label_for_btype_57768420192650004380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
beq x17, x25, some_label_for_btype_57768420192650004381 # perform operation 
addi x0, x1, 1
some_label_for_btype_57768420192650004381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x29, 0x295364f3e534f97b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
beq x20, x21, some_label_for_btype_71688585285837632820 # perform operation 
addi x0, x1, 1
some_label_for_btype_71688585285837632820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
beq x20, x21, some_label_for_btype_71688585285837632821 # perform operation 
addi x0, x1, 1
some_label_for_btype_71688585285837632821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x26, 0xbed92a6de0b6749b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
beq x17, x22, some_label_for_btype_22385344426604474900 # perform operation 
addi x0, x1, 1
some_label_for_btype_22385344426604474900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
beq x17, x22, some_label_for_btype_22385344426604474901 # perform operation 
addi x0, x1, 1
some_label_for_btype_22385344426604474901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x18, 0xcac40f11934032e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
beq x28, x27, some_label_for_btype_5061978128544474240 # perform operation 
addi x0, x1, 1
some_label_for_btype_5061978128544474240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
beq x28, x27, some_label_for_btype_5061978128544474241 # perform operation 
addi x0, x1, 1
some_label_for_btype_5061978128544474241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x3, 0xd17a6ccf494efb96 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
beq x4, x23, some_label_for_btype_8669276214591918310 # perform operation 
addi x0, x1, 1
some_label_for_btype_8669276214591918310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x8000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
beq x4, x23, some_label_for_btype_8669276214591918311 # perform operation 
addi x0, x1, 1
some_label_for_btype_8669276214591918311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x21, 0xa325f6fa60bfdb29 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
beq x25, x4, some_label_for_btype_79963418323419993640 # perform operation 
addi x0, x1, 1
some_label_for_btype_79963418323419993640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x8000000000000001 # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
beq x25, x4, some_label_for_btype_79963418323419993641 # perform operation 
addi x0, x1, 1
some_label_for_btype_79963418323419993641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x17, 0x2ba3512638330092 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
beq x29, x26, some_label_for_btype_177068756796781866480 # perform operation 
addi x0, x1, 1
some_label_for_btype_177068756796781866480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x7fffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
beq x29, x26, some_label_for_btype_177068756796781866481 # perform operation 
addi x0, x1, 1
some_label_for_btype_177068756796781866481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x21, 0x6eaca63a0c8ecbb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
beq x6, x18, some_label_for_btype_104082221411947609230 # perform operation 
addi x0, x1, 1
some_label_for_btype_104082221411947609230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x7ffffffffffffffe # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
beq x6, x18, some_label_for_btype_104082221411947609231 # perform operation 
addi x0, x1, 1
some_label_for_btype_104082221411947609231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x6, 0xe35f52ae7c6d2500 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
beq x21, x8, some_label_for_btype_142143977403111534800 # perform operation 
addi x0, x1, 1
some_label_for_btype_142143977403111534800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xffffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
beq x21, x8, some_label_for_btype_142143977403111534801 # perform operation 
addi x0, x1, 1
some_label_for_btype_142143977403111534801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x8, 0x74d6df7f1902d931 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
beq x26, x31, some_label_for_btype_183271217864435146480 # perform operation 
addi x0, x1, 1
some_label_for_btype_183271217864435146480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xfffffffffffffffe # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
beq x26, x31, some_label_for_btype_183271217864435146481 # perform operation 
addi x0, x1, 1
some_label_for_btype_183271217864435146481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x29, 0x4535c3f716900c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
beq x13, x15, some_label_for_btype_114173699799244504010 # perform operation 
addi x0, x1, 1
some_label_for_btype_114173699799244504010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
beq x13, x15, some_label_for_btype_114173699799244504011 # perform operation 
addi x0, x1, 1
some_label_for_btype_114173699799244504011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x65c071839a4e9277 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x15, x29, some_label_for_btype_171194274380462882650 # perform operation 
addi x0, x1, 1
some_label_for_btype_171194274380462882650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x15, x29, some_label_for_btype_171194274380462882651 # perform operation 
addi x0, x1, 1
some_label_for_btype_171194274380462882651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x18, 0x5e1ef94488863c8a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
beq x16, x27, some_label_for_btype_124500796264762435850 # perform operation 
addi x0, x1, 1
some_label_for_btype_124500796264762435850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
beq x16, x27, some_label_for_btype_124500796264762435851 # perform operation 
addi x0, x1, 1
some_label_for_btype_124500796264762435851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x13, 0x34c9fe0410d3619a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
beq x4, x10, some_label_for_btype_55621103208415574210 # perform operation 
addi x0, x1, 1
some_label_for_btype_55621103208415574210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
beq x4, x10, some_label_for_btype_55621103208415574211 # perform operation 
addi x0, x1, 1
some_label_for_btype_55621103208415574211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x19, 0xd9d350feaf41bb24 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
beq x21, x24, some_label_for_btype_110208088816262567520 # perform operation 
addi x0, x1, 1
some_label_for_btype_110208088816262567520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
beq x21, x24, some_label_for_btype_110208088816262567521 # perform operation 
addi x0, x1, 1
some_label_for_btype_110208088816262567521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x27, 0x9cb6d7991fda30bc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
beq x30, x10, some_label_for_btype_47795083743762491230 # perform operation 
addi x0, x1, 1
some_label_for_btype_47795083743762491230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0000000100000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
beq x30, x10, some_label_for_btype_47795083743762491231 # perform operation 
addi x0, x1, 1
some_label_for_btype_47795083743762491231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x6, 0x6173402d074c3894 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
beq x13, x17, some_label_for_btype_144417241117147704590 # perform operation 
addi x0, x1, 1
some_label_for_btype_144417241117147704590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
beq x13, x17, some_label_for_btype_144417241117147704591 # perform operation 
addi x0, x1, 1
some_label_for_btype_144417241117147704591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x28, 0x9d72fc6d3e45f47a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
beq x3, x20, some_label_for_btype_71938901988864814400 # perform operation 
addi x0, x1, 1
some_label_for_btype_71938901988864814400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x0000000000000000 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
beq x3, x20, some_label_for_btype_71938901988864814401 # perform operation 
addi x0, x1, 1
some_label_for_btype_71938901988864814401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x24, 0xc2d791eb74cf7f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
beq x27, x26, some_label_for_btype_70504622326276306180 # perform operation 
addi x0, x1, 1
some_label_for_btype_70504622326276306180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
beq x27, x26, some_label_for_btype_70504622326276306181 # perform operation 
addi x0, x1, 1
some_label_for_btype_70504622326276306181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x14, 0x8edf505a8ace8d57 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
beq x19, x16, some_label_for_btype_136473730492175820630 # perform operation 
addi x0, x1, 1
some_label_for_btype_136473730492175820630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
beq x19, x16, some_label_for_btype_136473730492175820631 # perform operation 
addi x0, x1, 1
some_label_for_btype_136473730492175820631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x19, 0xb2e98c75ab1a335e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
beq x10, x26, some_label_for_btype_155156947276157092880 # perform operation 
addi x0, x1, 1
some_label_for_btype_155156947276157092880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
beq x10, x26, some_label_for_btype_155156947276157092881 # perform operation 
addi x0, x1, 1
some_label_for_btype_155156947276157092881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x25, 0xfcdb764c2fdff30a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
beq x7, x11, some_label_for_btype_36116889977434892870 # perform operation 
addi x0, x1, 1
some_label_for_btype_36116889977434892870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x8000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
beq x7, x11, some_label_for_btype_36116889977434892871 # perform operation 
addi x0, x1, 1
some_label_for_btype_36116889977434892871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x17, 0xffe070a7589e80a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
beq x18, x25, some_label_for_btype_102885050508340755870 # perform operation 
addi x0, x1, 1
some_label_for_btype_102885050508340755870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
beq x18, x25, some_label_for_btype_102885050508340755871 # perform operation 
addi x0, x1, 1
some_label_for_btype_102885050508340755871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x10, 0x2ee203d4a8c5b8b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
beq x30, x8, some_label_for_btype_25979643968274387670 # perform operation 
addi x0, x1, 1
some_label_for_btype_25979643968274387670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7ffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
beq x30, x8, some_label_for_btype_25979643968274387671 # perform operation 
addi x0, x1, 1
some_label_for_btype_25979643968274387671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x5, 0x00f8142e86544a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
beq x22, x4, some_label_for_btype_60813853885105479790 # perform operation 
addi x0, x1, 1
some_label_for_btype_60813853885105479790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xffffffffffffffff # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
beq x22, x4, some_label_for_btype_60813853885105479791 # perform operation 
addi x0, x1, 1
some_label_for_btype_60813853885105479791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x13, 0x215932a4bc60b465 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
beq x24, x5, some_label_for_btype_103116820422713071010 # perform operation 
addi x0, x1, 1
some_label_for_btype_103116820422713071010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xfffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
beq x24, x5, some_label_for_btype_103116820422713071011 # perform operation 
addi x0, x1, 1
some_label_for_btype_103116820422713071011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x9, 0x08a7fd853a97ecfa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
beq x26, x11, some_label_for_btype_39864078571037504050 # perform operation 
addi x0, x1, 1
some_label_for_btype_39864078571037504050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
beq x26, x11, some_label_for_btype_39864078571037504051 # perform operation 
addi x0, x1, 1
some_label_for_btype_39864078571037504051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xa9c0ce6ffae3fb22 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x11, x18, some_label_for_btype_76592224181743249240 # perform operation 
addi x0, x1, 1
some_label_for_btype_76592224181743249240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x11, x18, some_label_for_btype_76592224181743249241 # perform operation 
addi x0, x1, 1
some_label_for_btype_76592224181743249241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x28, 0xd3aaf7ebb3d9148f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
beq x17, x24, some_label_for_btype_162862561294450207880 # perform operation 
addi x0, x1, 1
some_label_for_btype_162862561294450207880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x5555555555555555 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
beq x17, x24, some_label_for_btype_162862561294450207881 # perform operation 
addi x0, x1, 1
some_label_for_btype_162862561294450207881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x21, 0x743ce30edf8b816b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
beq x22, x16, some_label_for_btype_165220488513890279690 # perform operation 
addi x0, x1, 1
some_label_for_btype_165220488513890279690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x00000000ffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
beq x22, x16, some_label_for_btype_165220488513890279691 # perform operation 
addi x0, x1, 1
some_label_for_btype_165220488513890279691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x28, 0x1685396143f6764f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
beq x20, x13, some_label_for_btype_139424056923986285070 # perform operation 
addi x0, x1, 1
some_label_for_btype_139424056923986285070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
beq x20, x13, some_label_for_btype_139424056923986285071 # perform operation 
addi x0, x1, 1
some_label_for_btype_139424056923986285071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x21, 0x5bfb064189b5c227 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
beq x27, x3, some_label_for_btype_39535610158581281760 # perform operation 
addi x0, x1, 1
some_label_for_btype_39535610158581281760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000100000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
beq x27, x3, some_label_for_btype_39535610158581281761 # perform operation 
addi x0, x1, 1
some_label_for_btype_39535610158581281761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x26, 0x1bbd8a30050b2cb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
beq x22, x17, some_label_for_btype_90297155637216698510 # perform operation 
addi x0, x1, 1
some_label_for_btype_90297155637216698510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
beq x22, x17, some_label_for_btype_90297155637216698511 # perform operation 
addi x0, x1, 1
some_label_for_btype_90297155637216698511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x9, 0xfa68fdf56a8e67b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
beq x2, x27, some_label_for_btype_39712092112183642420 # perform operation 
addi x0, x1, 1
some_label_for_btype_39712092112183642420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
beq x2, x27, some_label_for_btype_39712092112183642421 # perform operation 
addi x0, x1, 1
some_label_for_btype_39712092112183642421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x10, 0xdac769af7510b03d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x5555555555555555 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
beq x30, x20, some_label_for_btype_132358572350720187220 # perform operation 
addi x0, x1, 1
some_label_for_btype_132358572350720187220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
beq x30, x20, some_label_for_btype_132358572350720187221 # perform operation 
addi x0, x1, 1
some_label_for_btype_132358572350720187221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x11, 0x88e25aeb1787d8d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x5555555555555555 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
beq x23, x1, some_label_for_btype_91559083240099105970 # perform operation 
addi x0, x1, 1
some_label_for_btype_91559083240099105970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
beq x23, x1, some_label_for_btype_91559083240099105971 # perform operation 
addi x0, x1, 1
some_label_for_btype_91559083240099105971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x25, 0xe6d6fd8a3f07644c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x5555555555555555 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
beq x22, x6, some_label_for_btype_115771919103726432590 # perform operation 
addi x0, x1, 1
some_label_for_btype_115771919103726432590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x8000000000000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
beq x22, x6, some_label_for_btype_115771919103726432591 # perform operation 
addi x0, x1, 1
some_label_for_btype_115771919103726432591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x30, 0x5ee21f9c396ee2e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x5555555555555555 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
beq x17, x26, some_label_for_btype_161811276956898526710 # perform operation 
addi x0, x1, 1
some_label_for_btype_161811276956898526710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
beq x17, x26, some_label_for_btype_161811276956898526711 # perform operation 
addi x0, x1, 1
some_label_for_btype_161811276956898526711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x10, 0x222caaaad079b6d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x5555555555555555 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
beq x31, x19, some_label_for_btype_59074102431852846790 # perform operation 
addi x0, x1, 1
some_label_for_btype_59074102431852846790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7fffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
beq x31, x19, some_label_for_btype_59074102431852846791 # perform operation 
addi x0, x1, 1
some_label_for_btype_59074102431852846791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x29, 0xe561b6acb62928b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x5555555555555555 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
beq x22, x31, some_label_for_btype_89307540384116535770 # perform operation 
addi x0, x1, 1
some_label_for_btype_89307540384116535770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
beq x22, x31, some_label_for_btype_89307540384116535771 # perform operation 
addi x0, x1, 1
some_label_for_btype_89307540384116535771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x29, 0xcdc3aab55d2f38b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x5555555555555555 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
beq x23, x9, some_label_for_btype_40913111399596177710 # perform operation 
addi x0, x1, 1
some_label_for_btype_40913111399596177710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xffffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
beq x23, x9, some_label_for_btype_40913111399596177711 # perform operation 
addi x0, x1, 1
some_label_for_btype_40913111399596177711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x3, 0x4d244487f5b64764 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x5555555555555555 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
beq x15, x29, some_label_for_btype_117685075560194811200 # perform operation 
addi x0, x1, 1
some_label_for_btype_117685075560194811200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
beq x15, x29, some_label_for_btype_117685075560194811201 # perform operation 
addi x0, x1, 1
some_label_for_btype_117685075560194811201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x23, 0x3f507c3ef765d994 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x5555555555555555 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
beq x1, x16, some_label_for_btype_30880385314188138230 # perform operation 
addi x0, x1, 1
some_label_for_btype_30880385314188138230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
beq x1, x16, some_label_for_btype_30880385314188138231 # perform operation 
addi x0, x1, 1
some_label_for_btype_30880385314188138231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0xca4cdf4d7e1730a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x5555555555555555 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x7, x9, some_label_for_btype_61276279669141860420 # perform operation 
addi x0, x1, 1
some_label_for_btype_61276279669141860420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x7, x9, some_label_for_btype_61276279669141860421 # perform operation 
addi x0, x1, 1
some_label_for_btype_61276279669141860421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x21, 0x46231713bb626175 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
beq x22, x23, some_label_for_btype_10040193936638572830 # perform operation 
addi x0, x1, 1
some_label_for_btype_10040193936638572830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
beq x22, x23, some_label_for_btype_10040193936638572831 # perform operation 
addi x0, x1, 1
some_label_for_btype_10040193936638572831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x24, 0x088760135f6b5dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x5555555555555555 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
beq x18, x26, some_label_for_btype_182603758218409074410 # perform operation 
addi x0, x1, 1
some_label_for_btype_182603758218409074410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
beq x18, x26, some_label_for_btype_182603758218409074411 # perform operation 
addi x0, x1, 1
some_label_for_btype_182603758218409074411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x7, 0x0b0a0df014c88558 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x5555555555555555 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
beq x19, x29, some_label_for_btype_86268343547359220880 # perform operation 
addi x0, x1, 1
some_label_for_btype_86268343547359220880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000000fffffffe # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
beq x19, x29, some_label_for_btype_86268343547359220881 # perform operation 
addi x0, x1, 1
some_label_for_btype_86268343547359220881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x4, 0x21aa7dd15f7f8ee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x5555555555555555 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
beq x25, x30, some_label_for_btype_133069434762269558010 # perform operation 
addi x0, x1, 1
some_label_for_btype_133069434762269558010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x0000000100000000 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
beq x25, x30, some_label_for_btype_133069434762269558011 # perform operation 
addi x0, x1, 1
some_label_for_btype_133069434762269558011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x15, 0xaca114244c717264 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x5555555555555555 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
beq x6, x22, some_label_for_btype_109874395570846188290 # perform operation 
addi x0, x1, 1
some_label_for_btype_109874395570846188290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
beq x6, x22, some_label_for_btype_109874395570846188291 # perform operation 
addi x0, x1, 1
some_label_for_btype_109874395570846188291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x28, 0xa27931fe6fce6548 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
beq x1, x22, some_label_for_btype_79391982648321474840 # perform operation 
addi x0, x1, 1
some_label_for_btype_79391982648321474840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
beq x1, x22, some_label_for_btype_79391982648321474841 # perform operation 
addi x0, x1, 1
some_label_for_btype_79391982648321474841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x14, 0xa9b95844e9280bbf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
beq x9, x20, some_label_for_btype_143011493575162915560 # perform operation 
addi x0, x1, 1
some_label_for_btype_143011493575162915560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
beq x9, x20, some_label_for_btype_143011493575162915561 # perform operation 
addi x0, x1, 1
some_label_for_btype_143011493575162915561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x14, 0xc4548119e9349d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
beq x28, x27, some_label_for_btype_52946238113558394430 # perform operation 
addi x0, x1, 1
some_label_for_btype_52946238113558394430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
beq x28, x27, some_label_for_btype_52946238113558394431 # perform operation 
addi x0, x1, 1
some_label_for_btype_52946238113558394431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x6, 0x4fc9a1100dfb1429 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000000ffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
beq x15, x13, some_label_for_btype_102241439224218057530 # perform operation 
addi x0, x1, 1
some_label_for_btype_102241439224218057530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x8000000000000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
beq x15, x13, some_label_for_btype_102241439224218057531 # perform operation 
addi x0, x1, 1
some_label_for_btype_102241439224218057531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x5, 0xa167a997d05fd161 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x00000000ffffffff # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
beq x10, x30, some_label_for_btype_72142310651425221600 # perform operation 
addi x0, x1, 1
some_label_for_btype_72142310651425221600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x8000000000000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
beq x10, x30, some_label_for_btype_72142310651425221601 # perform operation 
addi x0, x1, 1
some_label_for_btype_72142310651425221601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x3, 0xcdd9972dac58e5b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000000ffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
beq x17, x23, some_label_for_btype_1637973551365120950 # perform operation 
addi x0, x1, 1
some_label_for_btype_1637973551365120950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x7fffffffffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
beq x17, x23, some_label_for_btype_1637973551365120951 # perform operation 
addi x0, x1, 1
some_label_for_btype_1637973551365120951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x14, 0x27619e2c189c05d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000ffffffff # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
beq x28, x12, some_label_for_btype_81309671060486481750 # perform operation 
addi x0, x1, 1
some_label_for_btype_81309671060486481750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
beq x28, x12, some_label_for_btype_81309671060486481751 # perform operation 
addi x0, x1, 1
some_label_for_btype_81309671060486481751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x29, 0x78aedc6638f9c1db # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000000ffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
beq x19, x9, some_label_for_btype_85826313115325580050 # perform operation 
addi x0, x1, 1
some_label_for_btype_85826313115325580050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xffffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
beq x19, x9, some_label_for_btype_85826313115325580051 # perform operation 
addi x0, x1, 1
some_label_for_btype_85826313115325580051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x20, 0x974157dbc41d55c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000000ffffffff # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
beq x14, x2, some_label_for_btype_181426990140889715180 # perform operation 
addi x0, x1, 1
some_label_for_btype_181426990140889715180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xfffffffffffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
beq x14, x2, some_label_for_btype_181426990140889715181 # perform operation 
addi x0, x1, 1
some_label_for_btype_181426990140889715181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x29, 0x3d9c8322f61395ae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x00000000ffffffff # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
beq x25, x12, some_label_for_btype_60994139593308617240 # perform operation 
addi x0, x1, 1
some_label_for_btype_60994139593308617240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
beq x25, x12, some_label_for_btype_60994139593308617241 # perform operation 
addi x0, x1, 1
some_label_for_btype_60994139593308617241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x27c752399451132c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x00000000ffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x25, x15, some_label_for_btype_180619836915346127970 # perform operation 
addi x0, x1, 1
some_label_for_btype_180619836915346127970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x25, x15, some_label_for_btype_180619836915346127971 # perform operation 
addi x0, x1, 1
some_label_for_btype_180619836915346127971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x21, 0xd0b33e16210acc2d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x00000000ffffffff # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
beq x16, x29, some_label_for_btype_22530067493887393230 # perform operation 
addi x0, x1, 1
some_label_for_btype_22530067493887393230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5555555555555555 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
beq x16, x29, some_label_for_btype_22530067493887393231 # perform operation 
addi x0, x1, 1
some_label_for_btype_22530067493887393231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x3, 0xb686eae4c47b1c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
beq x19, x23, some_label_for_btype_86697270767438343400 # perform operation 
addi x0, x1, 1
some_label_for_btype_86697270767438343400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
beq x19, x23, some_label_for_btype_86697270767438343401 # perform operation 
addi x0, x1, 1
some_label_for_btype_86697270767438343401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x23, 0x4a3f6500da005bc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x00000000ffffffff # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
beq x7, x1, some_label_for_btype_169373778547241285850 # perform operation 
addi x0, x1, 1
some_label_for_btype_169373778547241285850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000000fffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
beq x7, x1, some_label_for_btype_169373778547241285851 # perform operation 
addi x0, x1, 1
some_label_for_btype_169373778547241285851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x10, 0x7fb0acb800f15ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
beq x16, x27, some_label_for_btype_3818059041629063040 # perform operation 
addi x0, x1, 1
some_label_for_btype_3818059041629063040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0000000100000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
beq x16, x27, some_label_for_btype_3818059041629063041 # perform operation 
addi x0, x1, 1
some_label_for_btype_3818059041629063041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x24, 0xebf54ae992513186 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
beq x2, x18, some_label_for_btype_149157518287981183130 # perform operation 
addi x0, x1, 1
some_label_for_btype_149157518287981183130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000100000001 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
beq x2, x18, some_label_for_btype_149157518287981183131 # perform operation 
addi x0, x1, 1
some_label_for_btype_149157518287981183131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x16, 0x3a3778c8e83a3e6f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
beq x6, x12, some_label_for_btype_67725587938840519460 # perform operation 
addi x0, x1, 1
some_label_for_btype_67725587938840519460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
beq x6, x12, some_label_for_btype_67725587938840519461 # perform operation 
addi x0, x1, 1
some_label_for_btype_67725587938840519461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x27, 0xa501cf20487d70de # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
beq x19, x11, some_label_for_btype_105583724719619561500 # perform operation 
addi x0, x1, 1
some_label_for_btype_105583724719619561500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
beq x19, x11, some_label_for_btype_105583724719619561501 # perform operation 
addi x0, x1, 1
some_label_for_btype_105583724719619561501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x3, 0x056abd20824ff549 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
beq x16, x31, some_label_for_btype_2148101701700934770 # perform operation 
addi x0, x1, 1
some_label_for_btype_2148101701700934770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
beq x16, x31, some_label_for_btype_2148101701700934771 # perform operation 
addi x0, x1, 1
some_label_for_btype_2148101701700934771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x29, 0x1de93bd9c7a8a4dc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000000fffffffe # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
beq x27, x24, some_label_for_btype_10174155565728813520 # perform operation 
addi x0, x1, 1
some_label_for_btype_10174155565728813520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x8000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
beq x27, x24, some_label_for_btype_10174155565728813521 # perform operation 
addi x0, x1, 1
some_label_for_btype_10174155565728813521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x28, 0xe12a91dc61d74a64 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x00000000fffffffe # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
beq x4, x25, some_label_for_btype_38343330469165358780 # perform operation 
addi x0, x1, 1
some_label_for_btype_38343330469165358780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
beq x4, x25, some_label_for_btype_38343330469165358781 # perform operation 
addi x0, x1, 1
some_label_for_btype_38343330469165358781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x28, 0x68d9bead88996e0d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000000fffffffe # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
beq x31, x30, some_label_for_btype_169172827740646874560 # perform operation 
addi x0, x1, 1
some_label_for_btype_169172827740646874560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7fffffffffffffff # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
beq x31, x30, some_label_for_btype_169172827740646874561 # perform operation 
addi x0, x1, 1
some_label_for_btype_169172827740646874561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x28, 0x060d3a6232241ee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000000fffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
beq x14, x22, some_label_for_btype_171772376135913470850 # perform operation 
addi x0, x1, 1
some_label_for_btype_171772376135913470850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
beq x14, x22, some_label_for_btype_171772376135913470851 # perform operation 
addi x0, x1, 1
some_label_for_btype_171772376135913470851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x28, 0xc2ef2e8df93a5af0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000000fffffffe # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
beq x17, x2, some_label_for_btype_162382416123947431690 # perform operation 
addi x0, x1, 1
some_label_for_btype_162382416123947431690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
beq x17, x2, some_label_for_btype_162382416123947431691 # perform operation 
addi x0, x1, 1
some_label_for_btype_162382416123947431691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x25, 0x54d44cd8313c6fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000000fffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
beq x30, x20, some_label_for_btype_11454493541547441470 # perform operation 
addi x0, x1, 1
some_label_for_btype_11454493541547441470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xfffffffffffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
beq x30, x20, some_label_for_btype_11454493541547441471 # perform operation 
addi x0, x1, 1
some_label_for_btype_11454493541547441471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x10, 0xfa8e9084b32a2fe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000000fffffffe # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
beq x19, x1, some_label_for_btype_131025896014368202350 # perform operation 
addi x0, x1, 1
some_label_for_btype_131025896014368202350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
beq x19, x1, some_label_for_btype_131025896014368202351 # perform operation 
addi x0, x1, 1
some_label_for_btype_131025896014368202351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x4b9d935f04f2c58a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000000fffffffe # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x2, x29, some_label_for_btype_58234860235132740560 # perform operation 
addi x0, x1, 1
some_label_for_btype_58234860235132740560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x2, x29, some_label_for_btype_58234860235132740561 # perform operation 
addi x0, x1, 1
some_label_for_btype_58234860235132740561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x19, 0xdc7087b849ce8ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x00000000fffffffe # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
beq x4, x7, some_label_for_btype_110048740350680084130 # perform operation 
addi x0, x1, 1
some_label_for_btype_110048740350680084130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x5555555555555555 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
beq x4, x7, some_label_for_btype_110048740350680084131 # perform operation 
addi x0, x1, 1
some_label_for_btype_110048740350680084131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x16, 0x469f9a370eea8710 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000000fffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
beq x27, x15, some_label_for_btype_96718877145614683020 # perform operation 
addi x0, x1, 1
some_label_for_btype_96718877145614683020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
beq x27, x15, some_label_for_btype_96718877145614683021 # perform operation 
addi x0, x1, 1
some_label_for_btype_96718877145614683021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x25, 0x674d176727840b73 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x00000000fffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
beq x11, x26, some_label_for_btype_18999629320416128280 # perform operation 
addi x0, x1, 1
some_label_for_btype_18999629320416128280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x00000000fffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
beq x11, x26, some_label_for_btype_18999629320416128281 # perform operation 
addi x0, x1, 1
some_label_for_btype_18999629320416128281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x20, 0x42214b3bccb48d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
beq x21, x7, some_label_for_btype_76139134850117882830 # perform operation 
addi x0, x1, 1
some_label_for_btype_76139134850117882830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000100000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
beq x21, x7, some_label_for_btype_76139134850117882831 # perform operation 
addi x0, x1, 1
some_label_for_btype_76139134850117882831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x23, 0x797ede9c2ddcbf4d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
beq x26, x8, some_label_for_btype_913749659800921850 # perform operation 
addi x0, x1, 1
some_label_for_btype_913749659800921850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
beq x26, x8, some_label_for_btype_913749659800921851 # perform operation 
addi x0, x1, 1
some_label_for_btype_913749659800921851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x3, 0x2628514abd57a599 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000100000000 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
beq x19, x29, some_label_for_btype_114415302413523630830 # perform operation 
addi x0, x1, 1
some_label_for_btype_114415302413523630830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
beq x19, x29, some_label_for_btype_114415302413523630831 # perform operation 
addi x0, x1, 1
some_label_for_btype_114415302413523630831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x30, 0x7cd4f1fca7ce68c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
beq x1, x9, some_label_for_btype_9701484622274642720 # perform operation 
addi x0, x1, 1
some_label_for_btype_9701484622274642720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
beq x1, x9, some_label_for_btype_9701484622274642721 # perform operation 
addi x0, x1, 1
some_label_for_btype_9701484622274642721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x23, 0xcb9aec387a2108e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0000000100000000 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
beq x15, x7, some_label_for_btype_31732390949418779970 # perform operation 
addi x0, x1, 1
some_label_for_btype_31732390949418779970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000000000002 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
beq x15, x7, some_label_for_btype_31732390949418779971 # perform operation 
addi x0, x1, 1
some_label_for_btype_31732390949418779971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x3, 0x306e6063150b5d18 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000100000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
beq x2, x31, some_label_for_btype_109491769527218851630 # perform operation 
addi x0, x1, 1
some_label_for_btype_109491769527218851630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
beq x2, x31, some_label_for_btype_109491769527218851631 # perform operation 
addi x0, x1, 1
some_label_for_btype_109491769527218851631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x9, 0xebc757f0229a82e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0000000100000000 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
beq x14, x24, some_label_for_btype_165176168209163635860 # perform operation 
addi x0, x1, 1
some_label_for_btype_165176168209163635860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
beq x14, x24, some_label_for_btype_165176168209163635861 # perform operation 
addi x0, x1, 1
some_label_for_btype_165176168209163635861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x2, 0xa1288c44d356259f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000100000000 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
beq x31, x3, some_label_for_btype_171828704127337731150 # perform operation 
addi x0, x1, 1
some_label_for_btype_171828704127337731150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7fffffffffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
beq x31, x3, some_label_for_btype_171828704127337731151 # perform operation 
addi x0, x1, 1
some_label_for_btype_171828704127337731151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x10, 0xeeca3b8ac6702765 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000100000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
beq x3, x22, some_label_for_btype_43705027098264671880 # perform operation 
addi x0, x1, 1
some_label_for_btype_43705027098264671880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
beq x3, x22, some_label_for_btype_43705027098264671881 # perform operation 
addi x0, x1, 1
some_label_for_btype_43705027098264671881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x21, 0x07622582eac90ec0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x0000000100000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
beq x5, x12, some_label_for_btype_78242208478045566770 # perform operation 
addi x0, x1, 1
some_label_for_btype_78242208478045566770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xffffffffffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
beq x5, x12, some_label_for_btype_78242208478045566771 # perform operation 
addi x0, x1, 1
some_label_for_btype_78242208478045566771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x16, 0x6fe3fb8e174cf72b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0000000100000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
beq x30, x25, some_label_for_btype_173182249733694543710 # perform operation 
addi x0, x1, 1
some_label_for_btype_173182249733694543710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xfffffffffffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
beq x30, x25, some_label_for_btype_173182249733694543711 # perform operation 
addi x0, x1, 1
some_label_for_btype_173182249733694543711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x25, 0x652fc32c198c52b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000100000000 # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
beq x18, x28, some_label_for_btype_92018668529448113530 # perform operation 
addi x0, x1, 1
some_label_for_btype_92018668529448113530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
beq x18, x28, some_label_for_btype_92018668529448113531 # perform operation 
addi x0, x1, 1
some_label_for_btype_92018668529448113531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x08916dfdc11a9b16 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000100000000 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x7, x15, some_label_for_btype_27707817364816331490 # perform operation 
addi x0, x1, 1
some_label_for_btype_27707817364816331490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x7, x15, some_label_for_btype_27707817364816331491 # perform operation 
addi x0, x1, 1
some_label_for_btype_27707817364816331491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x9, 0x6adfba46ca858f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000100000000 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
beq x31, x13, some_label_for_btype_104512551758410458250 # perform operation 
addi x0, x1, 1
some_label_for_btype_104512551758410458250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
beq x31, x13, some_label_for_btype_104512551758410458251 # perform operation 
addi x0, x1, 1
some_label_for_btype_104512551758410458251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x8, 0xd3a9f6da4211a57c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x0000000100000000 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
beq x20, x1, some_label_for_btype_84826225659257617580 # perform operation 
addi x0, x1, 1
some_label_for_btype_84826225659257617580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000000ffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
beq x20, x1, some_label_for_btype_84826225659257617581 # perform operation 
addi x0, x1, 1
some_label_for_btype_84826225659257617581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x4, 0xcf4d31401f4153c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x0000000100000000 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
beq x16, x12, some_label_for_btype_88677526430971293790 # perform operation 
addi x0, x1, 1
some_label_for_btype_88677526430971293790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x00000000fffffffe # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
beq x16, x12, some_label_for_btype_88677526430971293791 # perform operation 
addi x0, x1, 1
some_label_for_btype_88677526430971293791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x21, 0x600148a0356f7346 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000100000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
beq x2, x25, some_label_for_btype_95532738308372307870 # perform operation 
addi x0, x1, 1
some_label_for_btype_95532738308372307870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000100000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
beq x2, x25, some_label_for_btype_95532738308372307871 # perform operation 
addi x0, x1, 1
some_label_for_btype_95532738308372307871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x16, 0x5119eb877819f9f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
beq x23, x24, some_label_for_btype_149116583003689833860 # perform operation 
addi x0, x1, 1
some_label_for_btype_149116583003689833860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x0000000100000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
beq x23, x24, some_label_for_btype_149116583003689833861 # perform operation 
addi x0, x1, 1
some_label_for_btype_149116583003689833861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x25, 0x1dafb3c7ba73b788 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000100000001 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
beq x12, x18, some_label_for_btype_151274234657260519970 # perform operation 
addi x0, x1, 1
some_label_for_btype_151274234657260519970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
beq x12, x18, some_label_for_btype_151274234657260519971 # perform operation 
addi x0, x1, 1
some_label_for_btype_151274234657260519971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x18, 0x869ac4c6a3473df9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000100000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
beq x2, x13, some_label_for_btype_116612113476924647740 # perform operation 
addi x0, x1, 1
some_label_for_btype_116612113476924647740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
beq x2, x13, some_label_for_btype_116612113476924647741 # perform operation 
addi x0, x1, 1
some_label_for_btype_116612113476924647741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x3, 0xa7854386d7430042 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000100000001 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
beq x18, x2, some_label_for_btype_54825526963551763020 # perform operation 
addi x0, x1, 1
some_label_for_btype_54825526963551763020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
beq x18, x2, some_label_for_btype_54825526963551763021 # perform operation 
addi x0, x1, 1
some_label_for_btype_54825526963551763021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x18, 0x313af5642c6bfadb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000100000001 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
beq x3, x24, some_label_for_btype_138103435775414792770 # perform operation 
addi x0, x1, 1
some_label_for_btype_138103435775414792770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x8000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
beq x3, x24, some_label_for_btype_138103435775414792771 # perform operation 
addi x0, x1, 1
some_label_for_btype_138103435775414792771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x13, 0x0fe537714c088102 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000100000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
beq x7, x28, some_label_for_btype_81280103931417624470 # perform operation 
addi x0, x1, 1
some_label_for_btype_81280103931417624470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x8000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
beq x7, x28, some_label_for_btype_81280103931417624471 # perform operation 
addi x0, x1, 1
some_label_for_btype_81280103931417624471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x21, 0x98291dcc3ad2d78c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000100000001 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
beq x27, x19, some_label_for_btype_50921211771298254580 # perform operation 
addi x0, x1, 1
some_label_for_btype_50921211771298254580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x7fffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
beq x27, x19, some_label_for_btype_50921211771298254581 # perform operation 
addi x0, x1, 1
some_label_for_btype_50921211771298254581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x2, 0xf6929213d18bb868 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000100000001 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
beq x7, x9, some_label_for_btype_108952405852797032230 # perform operation 
addi x0, x1, 1
some_label_for_btype_108952405852797032230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x7ffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
beq x7, x9, some_label_for_btype_108952405852797032231 # perform operation 
addi x0, x1, 1
some_label_for_btype_108952405852797032231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x3, 0xe3fde9ffd49f29aa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x0000000100000001 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
beq x25, x20, some_label_for_btype_69266443280955598290 # perform operation 
addi x0, x1, 1
some_label_for_btype_69266443280955598290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xffffffffffffffff # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
beq x25, x20, some_label_for_btype_69266443280955598291 # perform operation 
addi x0, x1, 1
some_label_for_btype_69266443280955598291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x5, 0xeaed15379f160b95 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x0000000100000001 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
beq x20, x24, some_label_for_btype_139772917245938795830 # perform operation 
addi x0, x1, 1
some_label_for_btype_139772917245938795830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xfffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
beq x20, x24, some_label_for_btype_139772917245938795831 # perform operation 
addi x0, x1, 1
some_label_for_btype_139772917245938795831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x17, 0xecc5c41f35dbfcbb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0000000100000001 # initialize rs1
li x26, 0x5bbc887763ae86f7 # initialize rs2
beq x30, x26, some_label_for_btype_56793908892373948750 # perform operation 
addi x0, x1, 1
some_label_for_btype_56793908892373948750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x5bbc887763ae86f7 # initialize rs2
beq x30, x26, some_label_for_btype_56793908892373948751 # perform operation 
addi x0, x1, 1
some_label_for_btype_56793908892373948751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0xb5618467c374b5e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000100000001 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x24, x26, some_label_for_btype_17057047593918170800 # perform operation 
addi x0, x1, 1
some_label_for_btype_17057047593918170800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x24, x26, some_label_for_btype_17057047593918170801 # perform operation 
addi x0, x1, 1
some_label_for_btype_17057047593918170801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x13, 0xab211f307aa3fa9e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000100000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
beq x2, x3, some_label_for_btype_118222554467279729720 # perform operation 
addi x0, x1, 1
some_label_for_btype_118222554467279729720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x5555555555555555 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
beq x2, x3, some_label_for_btype_118222554467279729721 # perform operation 
addi x0, x1, 1
some_label_for_btype_118222554467279729721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x30, 0x1b2b8017c86655b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000100000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
beq x2, x15, some_label_for_btype_95758618240146257980 # perform operation 
addi x0, x1, 1
some_label_for_btype_95758618240146257980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
beq x2, x15, some_label_for_btype_95758618240146257981 # perform operation 
addi x0, x1, 1
some_label_for_btype_95758618240146257981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x29, 0x143f0f83edd7bbb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0000000100000001 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
beq x10, x27, some_label_for_btype_96887715421510053250 # perform operation 
addi x0, x1, 1
some_label_for_btype_96887715421510053250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
beq x10, x27, some_label_for_btype_96887715421510053251 # perform operation 
addi x0, x1, 1
some_label_for_btype_96887715421510053251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x25, 0x18285ad59c0df3b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000100000001 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
beq x19, x1, some_label_for_btype_14340477641620902220 # perform operation 
addi x0, x1, 1
some_label_for_btype_14340477641620902220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
beq x19, x1, some_label_for_btype_14340477641620902221 # perform operation 
addi x0, x1, 1
some_label_for_btype_14340477641620902221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x26, 0xe8b25ae76f4b361c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
beq x12, x17, some_label_for_btype_125928224724881921420 # perform operation 
addi x0, x1, 1
some_label_for_btype_125928224724881921420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
beq x12, x17, some_label_for_btype_125928224724881921421 # perform operation 
addi x0, x1, 1
some_label_for_btype_125928224724881921421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x2, 0xfb8a9f0498982156 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x74ea7f2749d02221 # initialize rs1
li x0, 0xffecb13c3140ec91 # initialize rs2
beq x0, x0, some_label_for_btype_57367539748235994490 # perform operation 
addi x0, x1, 1
some_label_for_btype_57367539748235994490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0xffecb13c3140ec91 # initialize rs1
li x0, 0xffecb13c3140ec91 # initialize rs2
beq x0, x0, some_label_for_btype_57367539748235994491 # perform operation 
addi x0, x1, 1
some_label_for_btype_57367539748235994491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x30, 0xa156720be09656b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xce1f5013d0cc4b0e # initialize rs1
li x1, 0x96baed42b6728176 # initialize rs2
beq x1, x1, some_label_for_btype_78864844997693433470 # perform operation 
addi x0, x1, 1
some_label_for_btype_78864844997693433470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x96baed42b6728176 # initialize rs1
li x1, 0x96baed42b6728176 # initialize rs2
beq x1, x1, some_label_for_btype_78864844997693433471 # perform operation 
addi x0, x1, 1
some_label_for_btype_78864844997693433471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x11, 0x7e4d17f5bf01033c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xee7177df9361b063 # initialize rs1
li x2, 0xd7dc68661438ba77 # initialize rs2
beq x2, x2, some_label_for_btype_180536600950497365370 # perform operation 
addi x0, x1, 1
some_label_for_btype_180536600950497365370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xd7dc68661438ba77 # initialize rs1
li x2, 0xd7dc68661438ba77 # initialize rs2
beq x2, x2, some_label_for_btype_180536600950497365371 # perform operation 
addi x0, x1, 1
some_label_for_btype_180536600950497365371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x16, 0x49b4bebf2cac6474 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x66836c2da8e70d30 # initialize rs1
li x3, 0x2735dac5e7820bbc # initialize rs2
beq x3, x3, some_label_for_btype_79317411561126733800 # perform operation 
addi x0, x1, 1
some_label_for_btype_79317411561126733800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x2735dac5e7820bbc # initialize rs1
li x3, 0x2735dac5e7820bbc # initialize rs2
beq x3, x3, some_label_for_btype_79317411561126733801 # perform operation 
addi x0, x1, 1
some_label_for_btype_79317411561126733801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x14, 0x77f06a4eb75c6589 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xec23b4ba3cdf7cf8 # initialize rs1
li x4, 0xc854d56126add22b # initialize rs2
beq x4, x4, some_label_for_btype_86311695471638251860 # perform operation 
addi x0, x1, 1
some_label_for_btype_86311695471638251860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xc854d56126add22b # initialize rs1
li x4, 0xc854d56126add22b # initialize rs2
beq x4, x4, some_label_for_btype_86311695471638251861 # perform operation 
addi x0, x1, 1
some_label_for_btype_86311695471638251861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x5, 0xf1af0f8a6a9a9f6f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xcc4d6b187eb9628c # initialize rs1
li x5, 0x23a4ea306d7219ec # initialize rs2
beq x5, x5, some_label_for_btype_98710868864014599180 # perform operation 
addi x0, x1, 1
some_label_for_btype_98710868864014599180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x23a4ea306d7219ec # initialize rs1
li x5, 0x23a4ea306d7219ec # initialize rs2
beq x5, x5, some_label_for_btype_98710868864014599181 # perform operation 
addi x0, x1, 1
some_label_for_btype_98710868864014599181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x24, 0x93a4b81beeb772e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x60968309bcd6860c # initialize rs1
li x6, 0xecd4e468b9ea49a9 # initialize rs2
beq x6, x6, some_label_for_btype_121052255978086477000 # perform operation 
addi x0, x1, 1
some_label_for_btype_121052255978086477000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xecd4e468b9ea49a9 # initialize rs1
li x6, 0xecd4e468b9ea49a9 # initialize rs2
beq x6, x6, some_label_for_btype_121052255978086477001 # perform operation 
addi x0, x1, 1
some_label_for_btype_121052255978086477001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x7, 0xc31c9e350615cddf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x16bf1bb7fa52a8b8 # initialize rs1
li x7, 0x6154ab443dc3b9af # initialize rs2
beq x7, x7, some_label_for_btype_124698903821011842960 # perform operation 
addi x0, x1, 1
some_label_for_btype_124698903821011842960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x6154ab443dc3b9af # initialize rs1
li x7, 0x6154ab443dc3b9af # initialize rs2
beq x7, x7, some_label_for_btype_124698903821011842961 # perform operation 
addi x0, x1, 1
some_label_for_btype_124698903821011842961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x5, 0x582665e49ab58f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xa56005723d103ff6 # initialize rs1
li x8, 0x51d9da8d8f8de882 # initialize rs2
beq x8, x8, some_label_for_btype_300964209134466840 # perform operation 
addi x0, x1, 1
some_label_for_btype_300964209134466840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x51d9da8d8f8de882 # initialize rs1
li x8, 0x51d9da8d8f8de882 # initialize rs2
beq x8, x8, some_label_for_btype_300964209134466841 # perform operation 
addi x0, x1, 1
some_label_for_btype_300964209134466841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x4, 0x82c764c4c1927e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x43e05727ba722535 # initialize rs1
li x9, 0xe55a53a6cb8e00ac # initialize rs2
beq x9, x9, some_label_for_btype_27171204809085181730 # perform operation 
addi x0, x1, 1
some_label_for_btype_27171204809085181730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xe55a53a6cb8e00ac # initialize rs1
li x9, 0xe55a53a6cb8e00ac # initialize rs2
beq x9, x9, some_label_for_btype_27171204809085181731 # perform operation 
addi x0, x1, 1
some_label_for_btype_27171204809085181731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x30, 0x272f2f88ac5be256 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x09cb253eaa0ac288 # initialize rs1
li x10, 0xf894fa37b1e6f599 # initialize rs2
beq x10, x10, some_label_for_btype_137401164943065677090 # perform operation 
addi x0, x1, 1
some_label_for_btype_137401164943065677090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xf894fa37b1e6f599 # initialize rs1
li x10, 0xf894fa37b1e6f599 # initialize rs2
beq x10, x10, some_label_for_btype_137401164943065677091 # perform operation 
addi x0, x1, 1
some_label_for_btype_137401164943065677091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x7, 0x5bd4ebce9a3ddc96 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x909f798b943f4328 # initialize rs1
li x11, 0x5f30c0a132fc39ff # initialize rs2
beq x11, x11, some_label_for_btype_123786155363999571530 # perform operation 
addi x0, x1, 1
some_label_for_btype_123786155363999571530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x5f30c0a132fc39ff # initialize rs1
li x11, 0x5f30c0a132fc39ff # initialize rs2
beq x11, x11, some_label_for_btype_123786155363999571531 # perform operation 
addi x0, x1, 1
some_label_for_btype_123786155363999571531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x15, 0x216d3d76012b4985 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x834e93dca869b5ab # initialize rs1
li x12, 0xe3491e10cfea22fe # initialize rs2
beq x12, x12, some_label_for_btype_45019722971295672100 # perform operation 
addi x0, x1, 1
some_label_for_btype_45019722971295672100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xe3491e10cfea22fe # initialize rs1
li x12, 0xe3491e10cfea22fe # initialize rs2
beq x12, x12, some_label_for_btype_45019722971295672101 # perform operation 
addi x0, x1, 1
some_label_for_btype_45019722971295672101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x22, 0xc0e8925329ab6ee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x869c040a2e995e75 # initialize rs1
li x13, 0xaace136f871889e3 # initialize rs2
beq x13, x13, some_label_for_btype_173004072541269288870 # perform operation 
addi x0, x1, 1
some_label_for_btype_173004072541269288870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xaace136f871889e3 # initialize rs1
li x13, 0xaace136f871889e3 # initialize rs2
beq x13, x13, some_label_for_btype_173004072541269288871 # perform operation 
addi x0, x1, 1
some_label_for_btype_173004072541269288871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x24, 0x9568901249094c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xb276f9bff3845258 # initialize rs1
li x14, 0x92779de23c161299 # initialize rs2
beq x14, x14, some_label_for_btype_93253184898876986090 # perform operation 
addi x0, x1, 1
some_label_for_btype_93253184898876986090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x92779de23c161299 # initialize rs1
li x14, 0x92779de23c161299 # initialize rs2
beq x14, x14, some_label_for_btype_93253184898876986091 # perform operation 
addi x0, x1, 1
some_label_for_btype_93253184898876986091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x26, 0x7e9f3b3ed4f817d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xbe85249d46b3c5b5 # initialize rs1
li x15, 0x82db12357ece08bd # initialize rs2
beq x15, x15, some_label_for_btype_134709071297112329670 # perform operation 
addi x0, x1, 1
some_label_for_btype_134709071297112329670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x82db12357ece08bd # initialize rs1
li x15, 0x82db12357ece08bd # initialize rs2
beq x15, x15, some_label_for_btype_134709071297112329671 # perform operation 
addi x0, x1, 1
some_label_for_btype_134709071297112329671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x22, 0x2fba2bc1c38450fe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x19f051db7fcd78cd # initialize rs1
li x16, 0x5cba113da494a785 # initialize rs2
beq x16, x16, some_label_for_btype_25878170072378235200 # perform operation 
addi x0, x1, 1
some_label_for_btype_25878170072378235200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5cba113da494a785 # initialize rs1
li x16, 0x5cba113da494a785 # initialize rs2
beq x16, x16, some_label_for_btype_25878170072378235201 # perform operation 
addi x0, x1, 1
some_label_for_btype_25878170072378235201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x19, 0xf6d20f90ac71d09c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x235f3f7100f36c6c # initialize rs1
li x17, 0x062cfc83d0f5a883 # initialize rs2
beq x17, x17, some_label_for_btype_107895178754847659530 # perform operation 
addi x0, x1, 1
some_label_for_btype_107895178754847659530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x062cfc83d0f5a883 # initialize rs1
li x17, 0x062cfc83d0f5a883 # initialize rs2
beq x17, x17, some_label_for_btype_107895178754847659531 # perform operation 
addi x0, x1, 1
some_label_for_btype_107895178754847659531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x11, 0xfe424ad332e11f11 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x525ea0b3d6a19068 # initialize rs1
li x18, 0xa1eb45bb06622319 # initialize rs2
beq x18, x18, some_label_for_btype_112062393602887069470 # perform operation 
addi x0, x1, 1
some_label_for_btype_112062393602887069470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xa1eb45bb06622319 # initialize rs1
li x18, 0xa1eb45bb06622319 # initialize rs2
beq x18, x18, some_label_for_btype_112062393602887069471 # perform operation 
addi x0, x1, 1
some_label_for_btype_112062393602887069471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x15, 0xcbb5a737365b5546 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xc245b082c099bdd6 # initialize rs1
li x19, 0x40f57120211624a5 # initialize rs2
beq x19, x19, some_label_for_btype_157392804874977078290 # perform operation 
addi x0, x1, 1
some_label_for_btype_157392804874977078290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x40f57120211624a5 # initialize rs1
li x19, 0x40f57120211624a5 # initialize rs2
beq x19, x19, some_label_for_btype_157392804874977078291 # perform operation 
addi x0, x1, 1
some_label_for_btype_157392804874977078291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x23, 0x4cd7aea678bc7fa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x2a6ae4d9471a3532 # initialize rs1
li x20, 0xd03a6216a99a2e9c # initialize rs2
beq x20, x20, some_label_for_btype_25831916662515153040 # perform operation 
addi x0, x1, 1
some_label_for_btype_25831916662515153040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xd03a6216a99a2e9c # initialize rs1
li x20, 0xd03a6216a99a2e9c # initialize rs2
beq x20, x20, some_label_for_btype_25831916662515153041 # perform operation 
addi x0, x1, 1
some_label_for_btype_25831916662515153041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x15, 0x6ea6524fe159fa0e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x3cc99e5985de6cd7 # initialize rs1
li x21, 0xc2af8b862e762933 # initialize rs2
beq x21, x21, some_label_for_btype_179638324588184939730 # perform operation 
addi x0, x1, 1
some_label_for_btype_179638324588184939730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xc2af8b862e762933 # initialize rs1
li x21, 0xc2af8b862e762933 # initialize rs2
beq x21, x21, some_label_for_btype_179638324588184939731 # perform operation 
addi x0, x1, 1
some_label_for_btype_179638324588184939731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x6, 0x448abb6d4e8847e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x609a51528252d493 # initialize rs1
li x22, 0xdc808a85fc2bef56 # initialize rs2
beq x22, x22, some_label_for_btype_12546644746668804840 # perform operation 
addi x0, x1, 1
some_label_for_btype_12546644746668804840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xdc808a85fc2bef56 # initialize rs1
li x22, 0xdc808a85fc2bef56 # initialize rs2
beq x22, x22, some_label_for_btype_12546644746668804841 # perform operation 
addi x0, x1, 1
some_label_for_btype_12546644746668804841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x9, 0x5247f9f669077b3e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x28da3ef3471e814e # initialize rs1
li x23, 0xa242dd4148c68bc1 # initialize rs2
beq x23, x23, some_label_for_btype_5569580251624615010 # perform operation 
addi x0, x1, 1
some_label_for_btype_5569580251624615010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xa242dd4148c68bc1 # initialize rs1
li x23, 0xa242dd4148c68bc1 # initialize rs2
beq x23, x23, some_label_for_btype_5569580251624615011 # perform operation 
addi x0, x1, 1
some_label_for_btype_5569580251624615011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x13, 0x81b8e1cc85902bbd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x94aac3610073223a # initialize rs1
li x24, 0xa2bb1b46751b235f # initialize rs2
beq x24, x24, some_label_for_btype_169309020751293022700 # perform operation 
addi x0, x1, 1
some_label_for_btype_169309020751293022700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xa2bb1b46751b235f # initialize rs1
li x24, 0xa2bb1b46751b235f # initialize rs2
beq x24, x24, some_label_for_btype_169309020751293022701 # perform operation 
addi x0, x1, 1
some_label_for_btype_169309020751293022701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x21, 0xf20b4c643994058c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x2534bfbe705fe32f # initialize rs1
li x25, 0x236ea3014213dbfb # initialize rs2
beq x25, x25, some_label_for_btype_72818183040197667430 # perform operation 
addi x0, x1, 1
some_label_for_btype_72818183040197667430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x236ea3014213dbfb # initialize rs1
li x25, 0x236ea3014213dbfb # initialize rs2
beq x25, x25, some_label_for_btype_72818183040197667431 # perform operation 
addi x0, x1, 1
some_label_for_btype_72818183040197667431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x13, 0x23336598e5b2eafa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0614ae03439cbfb9 # initialize rs1
li x26, 0xb4dbfd3f89ff01e9 # initialize rs2
beq x26, x26, some_label_for_btype_95172930689639235240 # perform operation 
addi x0, x1, 1
some_label_for_btype_95172930689639235240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xb4dbfd3f89ff01e9 # initialize rs1
li x26, 0xb4dbfd3f89ff01e9 # initialize rs2
beq x26, x26, some_label_for_btype_95172930689639235241 # perform operation 
addi x0, x1, 1
some_label_for_btype_95172930689639235241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x11, 0x668995c233b88522 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x7db320896947e738 # initialize rs1
li x27, 0x81c47a1465c2ea46 # initialize rs2
beq x27, x27, some_label_for_btype_88466123219653131080 # perform operation 
addi x0, x1, 1
some_label_for_btype_88466123219653131080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x81c47a1465c2ea46 # initialize rs1
li x27, 0x81c47a1465c2ea46 # initialize rs2
beq x27, x27, some_label_for_btype_88466123219653131081 # perform operation 
addi x0, x1, 1
some_label_for_btype_88466123219653131081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x18, 0x4e97395fac180c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x8548a78114c44356 # initialize rs1
li x28, 0x38ebe665e452d1c2 # initialize rs2
beq x28, x28, some_label_for_btype_77403443207800979670 # perform operation 
addi x0, x1, 1
some_label_for_btype_77403443207800979670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x38ebe665e452d1c2 # initialize rs1
li x28, 0x38ebe665e452d1c2 # initialize rs2
beq x28, x28, some_label_for_btype_77403443207800979671 # perform operation 
addi x0, x1, 1
some_label_for_btype_77403443207800979671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x22, 0xc234100974e7ca62 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xec8418cca46363f1 # initialize rs1
li x29, 0xd06a3cf96ae1587c # initialize rs2
beq x29, x29, some_label_for_btype_58139806865802463750 # perform operation 
addi x0, x1, 1
some_label_for_btype_58139806865802463750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xd06a3cf96ae1587c # initialize rs1
li x29, 0xd06a3cf96ae1587c # initialize rs2
beq x29, x29, some_label_for_btype_58139806865802463751 # perform operation 
addi x0, x1, 1
some_label_for_btype_58139806865802463751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x22, 0xf0fdb6f80b4f77dd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x171ec9c387893295 # initialize rs1
li x30, 0x0bc12e479dd19f31 # initialize rs2
beq x30, x30, some_label_for_btype_169936363861507413780 # perform operation 
addi x0, x1, 1
some_label_for_btype_169936363861507413780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0bc12e479dd19f31 # initialize rs1
li x30, 0x0bc12e479dd19f31 # initialize rs2
beq x30, x30, some_label_for_btype_169936363861507413781 # perform operation 
addi x0, x1, 1
some_label_for_btype_169936363861507413781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x10, 0x5e18b35c66e3d6a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x4bad872145cd00b3 # initialize rs1
li x31, 0x4c8817af21ca4ff5 # initialize rs2
beq x31, x31, some_label_for_btype_14373295626415782800 # perform operation 
addi x0, x1, 1
some_label_for_btype_14373295626415782800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x4c8817af21ca4ff5 # initialize rs1
li x31, 0x4c8817af21ca4ff5 # initialize rs2
beq x31, x31, some_label_for_btype_14373295626415782801 # perform operation 
addi x0, x1, 1
some_label_for_btype_14373295626415782801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = 0x705193a57068a68b)
li x20, 0x9c50313a033bb203 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x705193a57068a68b # initialize rs1
li x19, 0xce505f14473dc541 # initialize rs2
beq x15, x19, some_label_for_btype_140228235806119908910 # perform operation 
addi x0, x1, 1
some_label_for_btype_140228235806119908910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xce505f14473dc541 # initialize rs1
li x19, 0xce505f14473dc541 # initialize rs2
beq x15, x19, some_label_for_btype_140228235806119908911 # perform operation 
addi x0, x1, 1
some_label_for_btype_140228235806119908911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x20a0c30a88ff9b40)
li x31, 0x0db4aea55e104221 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xdf5f3cf5770064c0 # initialize rs1
li x3, 0xed4db434853aa197 # initialize rs2
beq x21, x3, some_label_for_btype_115315368649432866510 # perform operation 
addi x0, x1, 1
some_label_for_btype_115315368649432866510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xed4db434853aa197 # initialize rs1
li x3, 0xed4db434853aa197 # initialize rs2
beq x21, x3, some_label_for_btype_115315368649432866511 # perform operation 
addi x0, x1, 1
some_label_for_btype_115315368649432866511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = 0x140ba418df2cde5b)
li x28, 0xa4e14b5ae0a4f4c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0e44d035b36886e7 # initialize rs1
li x18, 0x140ba418df2cde5b # initialize rs2
beq x30, x18, some_label_for_btype_10574877235923786750 # perform operation 
addi x0, x1, 1
some_label_for_btype_10574877235923786750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x140ba418df2cde5b # initialize rs1
li x18, 0x140ba418df2cde5b # initialize rs2
beq x30, x18, some_label_for_btype_10574877235923786751 # perform operation 
addi x0, x1, 1
some_label_for_btype_10574877235923786751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = -0x6cfd188abf65842e)
li x24, 0xd73023b611c443be # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xab108a1712590bb7 # initialize rs1
li x8, 0x9302e775409a7bd2 # initialize rs2
beq x11, x8, some_label_for_btype_93819378881239240920 # perform operation 
addi x0, x1, 1
some_label_for_btype_93819378881239240920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x9302e775409a7bd2 # initialize rs1
li x8, 0x9302e775409a7bd2 # initialize rs2
beq x11, x8, some_label_for_btype_93819378881239240921 # perform operation 
addi x0, x1, 1
some_label_for_btype_93819378881239240921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: beq x0, x0, 1b # backward branch
3: nop # done with sequence

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
