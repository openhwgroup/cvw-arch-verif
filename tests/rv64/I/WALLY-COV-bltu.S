///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-bltu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.473375
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x4, 0x8cc0afbaea7803ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x14eee75efdaf7524 # initialize rs1
li x1, 0xd92cf4e6b0db6271 # initialize rs2
bltu x0, x1, some_label_for_btype_165521421678257505380 # perform operation 
addi x0, x1, 1
some_label_for_btype_165521421678257505380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0xd92cf4e6b0db6271 # initialize rs1
li x1, 0xd92cf4e6b0db6271 # initialize rs2
bltu x0, x1, some_label_for_btype_165521421678257505381 # perform operation 
addi x0, x1, 1
some_label_for_btype_165521421678257505381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x1)
li x6, 0x1a5aa9e57a3c9f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x1ccfd8f24f3696fa # initialize rs1
li x3, 0x044d1d9c3d3f4897 # initialize rs2
bltu x1, x3, some_label_for_btype_67157418761073229730 # perform operation 
addi x0, x1, 1
some_label_for_btype_67157418761073229730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x044d1d9c3d3f4897 # initialize rs1
li x3, 0x044d1d9c3d3f4897 # initialize rs2
bltu x1, x3, some_label_for_btype_67157418761073229731 # perform operation 
addi x0, x1, 1
some_label_for_btype_67157418761073229731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x2)
li x30, 0xc38e081da44433e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xff2d4950b1818e34 # initialize rs1
li x22, 0x060c6dae8d148331 # initialize rs2
bltu x2, x22, some_label_for_btype_50921923566889882570 # perform operation 
addi x0, x1, 1
some_label_for_btype_50921923566889882570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x060c6dae8d148331 # initialize rs1
li x22, 0x060c6dae8d148331 # initialize rs2
bltu x2, x22, some_label_for_btype_50921923566889882571 # perform operation 
addi x0, x1, 1
some_label_for_btype_50921923566889882571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x3)
li x5, 0xc699fb711045f34c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x79382cee893f4359 # initialize rs1
li x21, 0x82dcd308cf2156d8 # initialize rs2
bltu x3, x21, some_label_for_btype_110935332749626752770 # perform operation 
addi x0, x1, 1
some_label_for_btype_110935332749626752770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x82dcd308cf2156d8 # initialize rs1
li x21, 0x82dcd308cf2156d8 # initialize rs2
bltu x3, x21, some_label_for_btype_110935332749626752771 # perform operation 
addi x0, x1, 1
some_label_for_btype_110935332749626752771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x4)
li x20, 0xfbec178b22fb9bad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x8c2deac5b9ef77e7 # initialize rs1
li x28, 0xed7d3d29c388c825 # initialize rs2
bltu x4, x28, some_label_for_btype_148744810712173998190 # perform operation 
addi x0, x1, 1
some_label_for_btype_148744810712173998190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xed7d3d29c388c825 # initialize rs1
li x28, 0xed7d3d29c388c825 # initialize rs2
bltu x4, x28, some_label_for_btype_148744810712173998191 # perform operation 
addi x0, x1, 1
some_label_for_btype_148744810712173998191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x5)
li x11, 0x4a60345b7b72e51b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x693c9738a49de5cf # initialize rs1
li x18, 0x70ee776c8d40b956 # initialize rs2
bltu x5, x18, some_label_for_btype_78609261941174402500 # perform operation 
addi x0, x1, 1
some_label_for_btype_78609261941174402500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x70ee776c8d40b956 # initialize rs1
li x18, 0x70ee776c8d40b956 # initialize rs2
bltu x5, x18, some_label_for_btype_78609261941174402501 # perform operation 
addi x0, x1, 1
some_label_for_btype_78609261941174402501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x6)
li x2, 0xf94b2260c6d75c5c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x7d9e1ba9d879a357 # initialize rs1
li x30, 0x4d8ab7f49bd16d78 # initialize rs2
bltu x6, x30, some_label_for_btype_51131365166440670740 # perform operation 
addi x0, x1, 1
some_label_for_btype_51131365166440670740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x4d8ab7f49bd16d78 # initialize rs1
li x30, 0x4d8ab7f49bd16d78 # initialize rs2
bltu x6, x30, some_label_for_btype_51131365166440670741 # perform operation 
addi x0, x1, 1
some_label_for_btype_51131365166440670741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x7)
li x13, 0x8602d5700ba99360 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x5b0673f559fe67f3 # initialize rs1
li x18, 0xbdf3690e3f8d2084 # initialize rs2
bltu x7, x18, some_label_for_btype_3809482962371498700 # perform operation 
addi x0, x1, 1
some_label_for_btype_3809482962371498700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xbdf3690e3f8d2084 # initialize rs1
li x18, 0xbdf3690e3f8d2084 # initialize rs2
bltu x7, x18, some_label_for_btype_3809482962371498701 # perform operation 
addi x0, x1, 1
some_label_for_btype_3809482962371498701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x8)
li x22, 0x41bd959800b30b68 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x8b8dc3a2c1fc092a # initialize rs1
li x10, 0xc841032adab497ec # initialize rs2
bltu x8, x10, some_label_for_btype_149197926616880935380 # perform operation 
addi x0, x1, 1
some_label_for_btype_149197926616880935380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xc841032adab497ec # initialize rs1
li x10, 0xc841032adab497ec # initialize rs2
bltu x8, x10, some_label_for_btype_149197926616880935381 # perform operation 
addi x0, x1, 1
some_label_for_btype_149197926616880935381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x27, 0x0f92f85eb5c96860 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x9e0b986c18cd71f7 # initialize rs1
li x15, 0xca7d55523e37ff4e # initialize rs2
bltu x9, x15, some_label_for_btype_93731916360468523380 # perform operation 
addi x0, x1, 1
some_label_for_btype_93731916360468523380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xca7d55523e37ff4e # initialize rs1
li x15, 0xca7d55523e37ff4e # initialize rs2
bltu x9, x15, some_label_for_btype_93731916360468523381 # perform operation 
addi x0, x1, 1
some_label_for_btype_93731916360468523381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x7, 0x8f8e26a792514ca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x4253faf8ce567250 # initialize rs1
li x30, 0xbd7b0c1f7b8775cf # initialize rs2
bltu x10, x30, some_label_for_btype_32405040156405990630 # perform operation 
addi x0, x1, 1
some_label_for_btype_32405040156405990630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xbd7b0c1f7b8775cf # initialize rs1
li x30, 0xbd7b0c1f7b8775cf # initialize rs2
bltu x10, x30, some_label_for_btype_32405040156405990631 # perform operation 
addi x0, x1, 1
some_label_for_btype_32405040156405990631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x30, 0x2ce77d10a34ceeba # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xabc23e36c64ffc46 # initialize rs1
li x21, 0xb3c8097789a3df9b # initialize rs2
bltu x11, x21, some_label_for_btype_175837034054517569900 # perform operation 
addi x0, x1, 1
some_label_for_btype_175837034054517569900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xb3c8097789a3df9b # initialize rs1
li x21, 0xb3c8097789a3df9b # initialize rs2
bltu x11, x21, some_label_for_btype_175837034054517569901 # perform operation 
addi x0, x1, 1
some_label_for_btype_175837034054517569901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x10, 0x155f312b2ed12f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x187994486900af2a # initialize rs1
li x17, 0x190081ae7e7c51c1 # initialize rs2
bltu x12, x17, some_label_for_btype_120516834313884484040 # perform operation 
addi x0, x1, 1
some_label_for_btype_120516834313884484040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x190081ae7e7c51c1 # initialize rs1
li x17, 0x190081ae7e7c51c1 # initialize rs2
bltu x12, x17, some_label_for_btype_120516834313884484041 # perform operation 
addi x0, x1, 1
some_label_for_btype_120516834313884484041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x17, 0xec01ad65dbcbee46 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x60e6e76980e8d1ea # initialize rs1
li x5, 0xba7edcb040c53456 # initialize rs2
bltu x13, x5, some_label_for_btype_17387057153898665010 # perform operation 
addi x0, x1, 1
some_label_for_btype_17387057153898665010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xba7edcb040c53456 # initialize rs1
li x5, 0xba7edcb040c53456 # initialize rs2
bltu x13, x5, some_label_for_btype_17387057153898665011 # perform operation 
addi x0, x1, 1
some_label_for_btype_17387057153898665011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x23, 0x9f29768bbe930a56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xf1f7232b2ffda52f # initialize rs1
li x6, 0xd51e65d44f582f2a # initialize rs2
bltu x14, x6, some_label_for_btype_13376853947627443770 # perform operation 
addi x0, x1, 1
some_label_for_btype_13376853947627443770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xd51e65d44f582f2a # initialize rs1
li x6, 0xd51e65d44f582f2a # initialize rs2
bltu x14, x6, some_label_for_btype_13376853947627443771 # perform operation 
addi x0, x1, 1
some_label_for_btype_13376853947627443771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x31, 0xe86780b97b5ca9fa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x770416625481d3e9 # initialize rs1
li x13, 0x4c81b5182421f64c # initialize rs2
bltu x15, x13, some_label_for_btype_18602912269160243430 # perform operation 
addi x0, x1, 1
some_label_for_btype_18602912269160243430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x4c81b5182421f64c # initialize rs1
li x13, 0x4c81b5182421f64c # initialize rs2
bltu x15, x13, some_label_for_btype_18602912269160243431 # perform operation 
addi x0, x1, 1
some_label_for_btype_18602912269160243431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x16)
li x27, 0x618f00367b8fe622 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xfa9fe56dd5b75712 # initialize rs1
li x29, 0x3d9be4ea46a0fd15 # initialize rs2
bltu x16, x29, some_label_for_btype_72478565381216222400 # perform operation 
addi x0, x1, 1
some_label_for_btype_72478565381216222400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x3d9be4ea46a0fd15 # initialize rs1
li x29, 0x3d9be4ea46a0fd15 # initialize rs2
bltu x16, x29, some_label_for_btype_72478565381216222401 # perform operation 
addi x0, x1, 1
some_label_for_btype_72478565381216222401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x17)
li x7, 0x08c3592d268b7ed0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xe07445f7bf912e4f # initialize rs1
li x20, 0x806fe7440b2cfc43 # initialize rs2
bltu x17, x20, some_label_for_btype_142222792780831176080 # perform operation 
addi x0, x1, 1
some_label_for_btype_142222792780831176080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x806fe7440b2cfc43 # initialize rs1
li x20, 0x806fe7440b2cfc43 # initialize rs2
bltu x17, x20, some_label_for_btype_142222792780831176081 # perform operation 
addi x0, x1, 1
some_label_for_btype_142222792780831176081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x18)
li x19, 0xcc14f0d59b0aa983 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x8c2306eb7ba52172 # initialize rs1
li x15, 0x9a26a2b3c5f77fc6 # initialize rs2
bltu x18, x15, some_label_for_btype_146535711331559128450 # perform operation 
addi x0, x1, 1
some_label_for_btype_146535711331559128450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x9a26a2b3c5f77fc6 # initialize rs1
li x15, 0x9a26a2b3c5f77fc6 # initialize rs2
bltu x18, x15, some_label_for_btype_146535711331559128451 # perform operation 
addi x0, x1, 1
some_label_for_btype_146535711331559128451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x19)
li x5, 0xe0398f56f4566915 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xd998185f1ce2b1fc # initialize rs1
li x1, 0xfdcb30ef0b86351e # initialize rs2
bltu x19, x1, some_label_for_btype_136322312742059118590 # perform operation 
addi x0, x1, 1
some_label_for_btype_136322312742059118590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xfdcb30ef0b86351e # initialize rs1
li x1, 0xfdcb30ef0b86351e # initialize rs2
bltu x19, x1, some_label_for_btype_136322312742059118591 # perform operation 
addi x0, x1, 1
some_label_for_btype_136322312742059118591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x20)
li x13, 0xa52c17feabab1640 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x21327e946122364d # initialize rs1
li x26, 0x6cdb7401c5b2a836 # initialize rs2
bltu x20, x26, some_label_for_btype_60509895811011138210 # perform operation 
addi x0, x1, 1
some_label_for_btype_60509895811011138210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x6cdb7401c5b2a836 # initialize rs1
li x26, 0x6cdb7401c5b2a836 # initialize rs2
bltu x20, x26, some_label_for_btype_60509895811011138211 # perform operation 
addi x0, x1, 1
some_label_for_btype_60509895811011138211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x21)
li x1, 0x8bb1ac7404525c63 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xbf5090af887437b2 # initialize rs1
li x15, 0xed3d00b25f275734 # initialize rs2
bltu x21, x15, some_label_for_btype_17792030590202676380 # perform operation 
addi x0, x1, 1
some_label_for_btype_17792030590202676380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xed3d00b25f275734 # initialize rs1
li x15, 0xed3d00b25f275734 # initialize rs2
bltu x21, x15, some_label_for_btype_17792030590202676381 # perform operation 
addi x0, x1, 1
some_label_for_btype_17792030590202676381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x22)
li x4, 0xf7ea2d64979c34d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xdd0008a0ab10cc8d # initialize rs1
li x16, 0x779b0c8353c8d1db # initialize rs2
bltu x22, x16, some_label_for_btype_166015527554527194050 # perform operation 
addi x0, x1, 1
some_label_for_btype_166015527554527194050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x779b0c8353c8d1db # initialize rs1
li x16, 0x779b0c8353c8d1db # initialize rs2
bltu x22, x16, some_label_for_btype_166015527554527194051 # perform operation 
addi x0, x1, 1
some_label_for_btype_166015527554527194051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x23)
li x31, 0x2a25dada32a30ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xd7eeee271476c4fb # initialize rs1
li x27, 0xc7facec999c67371 # initialize rs2
bltu x23, x27, some_label_for_btype_131432990421440926010 # perform operation 
addi x0, x1, 1
some_label_for_btype_131432990421440926010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xc7facec999c67371 # initialize rs1
li x27, 0xc7facec999c67371 # initialize rs2
bltu x23, x27, some_label_for_btype_131432990421440926011 # perform operation 
addi x0, x1, 1
some_label_for_btype_131432990421440926011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x24)
li x5, 0x1f3fb60676e32983 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xbe9f1fc4c7029136 # initialize rs1
li x1, 0x04113f113d260453 # initialize rs2
bltu x24, x1, some_label_for_btype_93263103084072185590 # perform operation 
addi x0, x1, 1
some_label_for_btype_93263103084072185590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x04113f113d260453 # initialize rs1
li x1, 0x04113f113d260453 # initialize rs2
bltu x24, x1, some_label_for_btype_93263103084072185591 # perform operation 
addi x0, x1, 1
some_label_for_btype_93263103084072185591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x25)
li x13, 0xe18088202a921d30 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xdb6d99aa7181350e # initialize rs1
li x2, 0x1d61f355fc9c197a # initialize rs2
bltu x25, x2, some_label_for_btype_62527535915923776810 # perform operation 
addi x0, x1, 1
some_label_for_btype_62527535915923776810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x1d61f355fc9c197a # initialize rs1
li x2, 0x1d61f355fc9c197a # initialize rs2
bltu x25, x2, some_label_for_btype_62527535915923776811 # perform operation 
addi x0, x1, 1
some_label_for_btype_62527535915923776811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x26)
li x21, 0x44d8f69cc2e93d50 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xf6a71b81f016832e # initialize rs1
li x20, 0x768e0dac478a5bbb # initialize rs2
bltu x26, x20, some_label_for_btype_102976828462618009510 # perform operation 
addi x0, x1, 1
some_label_for_btype_102976828462618009510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x768e0dac478a5bbb # initialize rs1
li x20, 0x768e0dac478a5bbb # initialize rs2
bltu x26, x20, some_label_for_btype_102976828462618009511 # perform operation 
addi x0, x1, 1
some_label_for_btype_102976828462618009511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x27)
li x31, 0xb6b0076014988750 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x2c55d93d4ca60047 # initialize rs1
li x1, 0x4bddc6f43ad95b7d # initialize rs2
bltu x27, x1, some_label_for_btype_98329051006176169880 # perform operation 
addi x0, x1, 1
some_label_for_btype_98329051006176169880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x4bddc6f43ad95b7d # initialize rs1
li x1, 0x4bddc6f43ad95b7d # initialize rs2
bltu x27, x1, some_label_for_btype_98329051006176169881 # perform operation 
addi x0, x1, 1
some_label_for_btype_98329051006176169881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x28)
li x16, 0x73971d1a98d786a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xd075bca71bfae639 # initialize rs1
li x20, 0x228a38d15567ae53 # initialize rs2
bltu x28, x20, some_label_for_btype_12247972166173288250 # perform operation 
addi x0, x1, 1
some_label_for_btype_12247972166173288250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x228a38d15567ae53 # initialize rs1
li x20, 0x228a38d15567ae53 # initialize rs2
bltu x28, x20, some_label_for_btype_12247972166173288251 # perform operation 
addi x0, x1, 1
some_label_for_btype_12247972166173288251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x29)
li x19, 0xb41ecabd000b031f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x53bfc2f20e16dcd8 # initialize rs1
li x24, 0x90d279693a107de9 # initialize rs2
bltu x29, x24, some_label_for_btype_160308064683332327610 # perform operation 
addi x0, x1, 1
some_label_for_btype_160308064683332327610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x90d279693a107de9 # initialize rs1
li x24, 0x90d279693a107de9 # initialize rs2
bltu x29, x24, some_label_for_btype_160308064683332327611 # perform operation 
addi x0, x1, 1
some_label_for_btype_160308064683332327611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x30)
li x25, 0xb01265d1da4d049f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xbd13b8d2f62dd0c0 # initialize rs1
li x10, 0xd3a4ccb29761cdf3 # initialize rs2
bltu x30, x10, some_label_for_btype_113055995441870036090 # perform operation 
addi x0, x1, 1
some_label_for_btype_113055995441870036090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xd3a4ccb29761cdf3 # initialize rs1
li x10, 0xd3a4ccb29761cdf3 # initialize rs2
bltu x30, x10, some_label_for_btype_113055995441870036091 # perform operation 
addi x0, x1, 1
some_label_for_btype_113055995441870036091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x31)
li x30, 0x7b8b3eb3f83723be # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x2f6e43e7c53d0a97 # initialize rs1
li x1, 0xb9e23492196bf63b # initialize rs2
bltu x31, x1, some_label_for_btype_75699670603895085110 # perform operation 
addi x0, x1, 1
some_label_for_btype_75699670603895085110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xb9e23492196bf63b # initialize rs1
li x1, 0xb9e23492196bf63b # initialize rs2
bltu x31, x1, some_label_for_btype_75699670603895085111 # perform operation 
addi x0, x1, 1
some_label_for_btype_75699670603895085111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x0)
li x28, 0x6a2a4b0dc1b51c4e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xda26cdbb8cf0a093 # initialize rs1
li x0, 0x5a7a0b54212edab8 # initialize rs2
bltu x29, x0, some_label_for_btype_359130813787132670 # perform operation 
addi x0, x1, 1
some_label_for_btype_359130813787132670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x5a7a0b54212edab8 # initialize rs1
li x0, 0x5a7a0b54212edab8 # initialize rs2
bltu x29, x0, some_label_for_btype_359130813787132671 # perform operation 
addi x0, x1, 1
some_label_for_btype_359130813787132671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x1)
li x17, 0x01305488edc6c7b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x4cc1506fa950990b # initialize rs1
li x1, 0x04983c7fd44a0bf9 # initialize rs2
bltu x11, x1, some_label_for_btype_175093313886865844790 # perform operation 
addi x0, x1, 1
some_label_for_btype_175093313886865844790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x04983c7fd44a0bf9 # initialize rs1
li x1, 0x04983c7fd44a0bf9 # initialize rs2
bltu x11, x1, some_label_for_btype_175093313886865844791 # perform operation 
addi x0, x1, 1
some_label_for_btype_175093313886865844791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x2)
li x15, 0x17ba3baead263611 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x3f473936d3816a11 # initialize rs1
li x2, 0xaa6d0e0ae68ff9b9 # initialize rs2
bltu x30, x2, some_label_for_btype_92642961543483413990 # perform operation 
addi x0, x1, 1
some_label_for_btype_92642961543483413990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xaa6d0e0ae68ff9b9 # initialize rs1
li x2, 0xaa6d0e0ae68ff9b9 # initialize rs2
bltu x30, x2, some_label_for_btype_92642961543483413991 # perform operation 
addi x0, x1, 1
some_label_for_btype_92642961543483413991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x3)
li x23, 0x9078809a30fddf7b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x62dec435dbe9f69e # initialize rs1
li x3, 0x83b347a05331d6ab # initialize rs2
bltu x12, x3, some_label_for_btype_65718865359379388640 # perform operation 
addi x0, x1, 1
some_label_for_btype_65718865359379388640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x83b347a05331d6ab # initialize rs1
li x3, 0x83b347a05331d6ab # initialize rs2
bltu x12, x3, some_label_for_btype_65718865359379388641 # perform operation 
addi x0, x1, 1
some_label_for_btype_65718865359379388641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x4)
li x17, 0x82de1ca7bdd473bc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x90a5bebe140bcb57 # initialize rs1
li x4, 0xd253f33105c6234f # initialize rs2
bltu x21, x4, some_label_for_btype_178129939465242754000 # perform operation 
addi x0, x1, 1
some_label_for_btype_178129939465242754000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xd253f33105c6234f # initialize rs1
li x4, 0xd253f33105c6234f # initialize rs2
bltu x21, x4, some_label_for_btype_178129939465242754001 # perform operation 
addi x0, x1, 1
some_label_for_btype_178129939465242754001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x5)
li x15, 0x7a299e7d2da4aa48 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xe102deeb73ddb2d2 # initialize rs1
li x5, 0xc6541b298a65423e # initialize rs2
bltu x7, x5, some_label_for_btype_65539250121803444950 # perform operation 
addi x0, x1, 1
some_label_for_btype_65539250121803444950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xc6541b298a65423e # initialize rs1
li x5, 0xc6541b298a65423e # initialize rs2
bltu x7, x5, some_label_for_btype_65539250121803444951 # perform operation 
addi x0, x1, 1
some_label_for_btype_65539250121803444951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x6)
li x23, 0x9d736d874a687b21 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x633ac54660c1f106 # initialize rs1
li x6, 0xa370abf958c0f3b2 # initialize rs2
bltu x17, x6, some_label_for_btype_95291014562333844440 # perform operation 
addi x0, x1, 1
some_label_for_btype_95291014562333844440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xa370abf958c0f3b2 # initialize rs1
li x6, 0xa370abf958c0f3b2 # initialize rs2
bltu x17, x6, some_label_for_btype_95291014562333844441 # perform operation 
addi x0, x1, 1
some_label_for_btype_95291014562333844441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x7)
li x16, 0x054ed47d85f8835f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xb29d441939366b23 # initialize rs1
li x7, 0x3543e78b4362480c # initialize rs2
bltu x15, x7, some_label_for_btype_168172209110745497950 # perform operation 
addi x0, x1, 1
some_label_for_btype_168172209110745497950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x3543e78b4362480c # initialize rs1
li x7, 0x3543e78b4362480c # initialize rs2
bltu x15, x7, some_label_for_btype_168172209110745497951 # perform operation 
addi x0, x1, 1
some_label_for_btype_168172209110745497951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x8)
li x4, 0x3af3f5f345b878ad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x078cbd3f590a9eb6 # initialize rs1
li x8, 0xccacbfe910f6f716 # initialize rs2
bltu x21, x8, some_label_for_btype_121875272870926221940 # perform operation 
addi x0, x1, 1
some_label_for_btype_121875272870926221940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xccacbfe910f6f716 # initialize rs1
li x8, 0xccacbfe910f6f716 # initialize rs2
bltu x21, x8, some_label_for_btype_121875272870926221941 # perform operation 
addi x0, x1, 1
some_label_for_btype_121875272870926221941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0xc0bd7ea7aee48586 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xeb273c0f20cb85a8 # initialize rs1
li x9, 0x7887c9b8b888332a # initialize rs2
bltu x8, x9, some_label_for_btype_69812109918966803150 # perform operation 
addi x0, x1, 1
some_label_for_btype_69812109918966803150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x7887c9b8b888332a # initialize rs1
li x9, 0x7887c9b8b888332a # initialize rs2
bltu x8, x9, some_label_for_btype_69812109918966803151 # perform operation 
addi x0, x1, 1
some_label_for_btype_69812109918966803151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x10)
li x29, 0x116ee18475a32e15 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xf302e2e2042a05bf # initialize rs1
li x10, 0xd299e9a5353dcc40 # initialize rs2
bltu x24, x10, some_label_for_btype_70372447848153439210 # perform operation 
addi x0, x1, 1
some_label_for_btype_70372447848153439210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xd299e9a5353dcc40 # initialize rs1
li x10, 0xd299e9a5353dcc40 # initialize rs2
bltu x24, x10, some_label_for_btype_70372447848153439211 # perform operation 
addi x0, x1, 1
some_label_for_btype_70372447848153439211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x11)
li x15, 0xe5dfd1dea2a63f65 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xf7553a1af008ff31 # initialize rs1
li x11, 0x9ddff01ee2925bb1 # initialize rs2
bltu x9, x11, some_label_for_btype_44424243352543892990 # perform operation 
addi x0, x1, 1
some_label_for_btype_44424243352543892990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x9ddff01ee2925bb1 # initialize rs1
li x11, 0x9ddff01ee2925bb1 # initialize rs2
bltu x9, x11, some_label_for_btype_44424243352543892991 # perform operation 
addi x0, x1, 1
some_label_for_btype_44424243352543892991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x12)
li x11, 0x74dfcfbfb9fcf0ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x15243d55ba88a7a6 # initialize rs1
li x12, 0x3029e6eea90f7ea6 # initialize rs2
bltu x16, x12, some_label_for_btype_28530336195719277530 # perform operation 
addi x0, x1, 1
some_label_for_btype_28530336195719277530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x3029e6eea90f7ea6 # initialize rs1
li x12, 0x3029e6eea90f7ea6 # initialize rs2
bltu x16, x12, some_label_for_btype_28530336195719277531 # perform operation 
addi x0, x1, 1
some_label_for_btype_28530336195719277531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0x8d80234417717590 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x76e7e6b1cf928eba # initialize rs1
li x13, 0x66fb3492e22e3bb1 # initialize rs2
bltu x11, x13, some_label_for_btype_64237600279265146530 # perform operation 
addi x0, x1, 1
some_label_for_btype_64237600279265146530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x66fb3492e22e3bb1 # initialize rs1
li x13, 0x66fb3492e22e3bb1 # initialize rs2
bltu x11, x13, some_label_for_btype_64237600279265146531 # perform operation 
addi x0, x1, 1
some_label_for_btype_64237600279265146531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x14)
li x7, 0x2b3239acbdd7a922 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x59527ae7ab15f1c2 # initialize rs1
li x14, 0x65bd74fa21c7a597 # initialize rs2
bltu x21, x14, some_label_for_btype_25319791251251833370 # perform operation 
addi x0, x1, 1
some_label_for_btype_25319791251251833370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x65bd74fa21c7a597 # initialize rs1
li x14, 0x65bd74fa21c7a597 # initialize rs2
bltu x21, x14, some_label_for_btype_25319791251251833371 # perform operation 
addi x0, x1, 1
some_label_for_btype_25319791251251833371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x15)
li x25, 0x1aaaf82f99d369b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0f02ce4d88d35e15 # initialize rs1
li x15, 0x03bda8bce6d33fdc # initialize rs2
bltu x19, x15, some_label_for_btype_174700761774483314800 # perform operation 
addi x0, x1, 1
some_label_for_btype_174700761774483314800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x03bda8bce6d33fdc # initialize rs1
li x15, 0x03bda8bce6d33fdc # initialize rs2
bltu x19, x15, some_label_for_btype_174700761774483314801 # perform operation 
addi x0, x1, 1
some_label_for_btype_174700761774483314801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x16)
li x20, 0x728534a42b9ee4df # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0076c37eda99f644 # initialize rs1
li x16, 0x2f8e4b5a48e2df21 # initialize rs2
bltu x22, x16, some_label_for_btype_26459243761590872140 # perform operation 
addi x0, x1, 1
some_label_for_btype_26459243761590872140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x2f8e4b5a48e2df21 # initialize rs1
li x16, 0x2f8e4b5a48e2df21 # initialize rs2
bltu x22, x16, some_label_for_btype_26459243761590872141 # perform operation 
addi x0, x1, 1
some_label_for_btype_26459243761590872141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x17)
li x5, 0x849d79039fcf55a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x96fa14ba1b297f2e # initialize rs1
li x17, 0x9552bcd6e8e8d959 # initialize rs2
bltu x30, x17, some_label_for_btype_28590276890221142300 # perform operation 
addi x0, x1, 1
some_label_for_btype_28590276890221142300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x9552bcd6e8e8d959 # initialize rs1
li x17, 0x9552bcd6e8e8d959 # initialize rs2
bltu x30, x17, some_label_for_btype_28590276890221142301 # perform operation 
addi x0, x1, 1
some_label_for_btype_28590276890221142301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0xb3bf51368bda9fe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x21ea7a02f5e98028 # initialize rs1
li x18, 0x14b710acd606bf15 # initialize rs2
bltu x24, x18, some_label_for_btype_184449066702352012020 # perform operation 
addi x0, x1, 1
some_label_for_btype_184449066702352012020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x14b710acd606bf15 # initialize rs1
li x18, 0x14b710acd606bf15 # initialize rs2
bltu x24, x18, some_label_for_btype_184449066702352012021 # perform operation 
addi x0, x1, 1
some_label_for_btype_184449066702352012021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x19)
li x4, 0x6bb1471f874c7f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x3249562767f13a8e # initialize rs1
li x19, 0x6b26060ff8a8acba # initialize rs2
bltu x7, x19, some_label_for_btype_54748132329940487570 # perform operation 
addi x0, x1, 1
some_label_for_btype_54748132329940487570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x6b26060ff8a8acba # initialize rs1
li x19, 0x6b26060ff8a8acba # initialize rs2
bltu x7, x19, some_label_for_btype_54748132329940487571 # perform operation 
addi x0, x1, 1
some_label_for_btype_54748132329940487571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x20)
li x11, 0x7c6271319f4a97ce # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x042122ea050b5c94 # initialize rs1
li x20, 0x1164e630d30a3acb # initialize rs2
bltu x4, x20, some_label_for_btype_108397719116201271530 # perform operation 
addi x0, x1, 1
some_label_for_btype_108397719116201271530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x1164e630d30a3acb # initialize rs1
li x20, 0x1164e630d30a3acb # initialize rs2
bltu x4, x20, some_label_for_btype_108397719116201271531 # perform operation 
addi x0, x1, 1
some_label_for_btype_108397719116201271531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x21)
li x3, 0x90edb930fc96b361 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x2989fb2c6bd19e21 # initialize rs1
li x21, 0x0cd7eab1cdd68847 # initialize rs2
bltu x9, x21, some_label_for_btype_28988456502177613410 # perform operation 
addi x0, x1, 1
some_label_for_btype_28988456502177613410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0cd7eab1cdd68847 # initialize rs1
li x21, 0x0cd7eab1cdd68847 # initialize rs2
bltu x9, x21, some_label_for_btype_28988456502177613411 # perform operation 
addi x0, x1, 1
some_label_for_btype_28988456502177613411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x22)
li x19, 0x7e7810847e4a27f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x09ab562611d0c5c3 # initialize rs1
li x22, 0x9c4f5b26585bf482 # initialize rs2
bltu x23, x22, some_label_for_btype_49795526608733441060 # perform operation 
addi x0, x1, 1
some_label_for_btype_49795526608733441060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x9c4f5b26585bf482 # initialize rs1
li x22, 0x9c4f5b26585bf482 # initialize rs2
bltu x23, x22, some_label_for_btype_49795526608733441061 # perform operation 
addi x0, x1, 1
some_label_for_btype_49795526608733441061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x23)
li x10, 0xb28070c9895a02cd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xdc0a3a20186e975c # initialize rs1
li x23, 0x1e7818ece99a4fbf # initialize rs2
bltu x14, x23, some_label_for_btype_124409675941886487450 # perform operation 
addi x0, x1, 1
some_label_for_btype_124409675941886487450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x1e7818ece99a4fbf # initialize rs1
li x23, 0x1e7818ece99a4fbf # initialize rs2
bltu x14, x23, some_label_for_btype_124409675941886487451 # perform operation 
addi x0, x1, 1
some_label_for_btype_124409675941886487451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x24)
li x5, 0xf2d33886f786d737 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xd97c81680871b77b # initialize rs1
li x24, 0xdd9d52e567950e66 # initialize rs2
bltu x21, x24, some_label_for_btype_86700218213438951750 # perform operation 
addi x0, x1, 1
some_label_for_btype_86700218213438951750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xdd9d52e567950e66 # initialize rs1
li x24, 0xdd9d52e567950e66 # initialize rs2
bltu x21, x24, some_label_for_btype_86700218213438951751 # perform operation 
addi x0, x1, 1
some_label_for_btype_86700218213438951751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x25)
li x12, 0x5341ad2009c1be1e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x46366a9d3d2949db # initialize rs1
li x25, 0x9b7405190bc1ada0 # initialize rs2
bltu x6, x25, some_label_for_btype_82899266989856223570 # perform operation 
addi x0, x1, 1
some_label_for_btype_82899266989856223570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x9b7405190bc1ada0 # initialize rs1
li x25, 0x9b7405190bc1ada0 # initialize rs2
bltu x6, x25, some_label_for_btype_82899266989856223571 # perform operation 
addi x0, x1, 1
some_label_for_btype_82899266989856223571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x26)
li x14, 0xb035d67439ab2e94 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x6962287031f21da5 # initialize rs1
li x26, 0x18c4317a0fe0b1d1 # initialize rs2
bltu x5, x26, some_label_for_btype_140535772130450121960 # perform operation 
addi x0, x1, 1
some_label_for_btype_140535772130450121960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x18c4317a0fe0b1d1 # initialize rs1
li x26, 0x18c4317a0fe0b1d1 # initialize rs2
bltu x5, x26, some_label_for_btype_140535772130450121961 # perform operation 
addi x0, x1, 1
some_label_for_btype_140535772130450121961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x27)
li x24, 0xa0c765b5a0908a3a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xd09604c4a5115f8b # initialize rs1
li x27, 0x9fbcb2931484b5fd # initialize rs2
bltu x9, x27, some_label_for_btype_78483634039138705550 # perform operation 
addi x0, x1, 1
some_label_for_btype_78483634039138705550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x9fbcb2931484b5fd # initialize rs1
li x27, 0x9fbcb2931484b5fd # initialize rs2
bltu x9, x27, some_label_for_btype_78483634039138705551 # perform operation 
addi x0, x1, 1
some_label_for_btype_78483634039138705551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x28)
li x22, 0x4fdf9ac64fe359c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x11307f6250f28a8c # initialize rs1
li x28, 0x1ad497f60e919e6b # initialize rs2
bltu x16, x28, some_label_for_btype_149905447420570782720 # perform operation 
addi x0, x1, 1
some_label_for_btype_149905447420570782720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x1ad497f60e919e6b # initialize rs1
li x28, 0x1ad497f60e919e6b # initialize rs2
bltu x16, x28, some_label_for_btype_149905447420570782721 # perform operation 
addi x0, x1, 1
some_label_for_btype_149905447420570782721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x29)
li x24, 0x796b7b825ba870c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x688a322df1cc7be2 # initialize rs1
li x29, 0x929c29e8ff907ae7 # initialize rs2
bltu x11, x29, some_label_for_btype_63247900332730977640 # perform operation 
addi x0, x1, 1
some_label_for_btype_63247900332730977640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x929c29e8ff907ae7 # initialize rs1
li x29, 0x929c29e8ff907ae7 # initialize rs2
bltu x11, x29, some_label_for_btype_63247900332730977641 # perform operation 
addi x0, x1, 1
some_label_for_btype_63247900332730977641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x30)
li x8, 0xd5b0de2b812cb510 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x3e041128a513c11b # initialize rs1
li x30, 0xad89e3209fd72c9e # initialize rs2
bltu x9, x30, some_label_for_btype_13331218688027501620 # perform operation 
addi x0, x1, 1
some_label_for_btype_13331218688027501620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xad89e3209fd72c9e # initialize rs1
li x30, 0xad89e3209fd72c9e # initialize rs2
bltu x9, x30, some_label_for_btype_13331218688027501621 # perform operation 
addi x0, x1, 1
some_label_for_btype_13331218688027501621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x31)
li x14, 0xba2be5b20eb8d0a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x3cf493f439d3903a # initialize rs1
li x31, 0x8ec9fac3084db8a8 # initialize rs2
bltu x4, x31, some_label_for_btype_164330296215143987130 # perform operation 
addi x0, x1, 1
some_label_for_btype_164330296215143987130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x8ec9fac3084db8a8 # initialize rs1
li x31, 0x8ec9fac3084db8a8 # initialize rs2
bltu x4, x31, some_label_for_btype_164330296215143987131 # perform operation 
addi x0, x1, 1
some_label_for_btype_164330296215143987131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xf16c23bf161e95a9)
li x11, 0x5b77f666fd9cb12b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x5b77f666fd9cb12b # initialize rs1
li x0, 0xf85cab2ee22a0217 # initialize rs2
bltu x9, x0, some_label_for_btype_23779305346269130450 # perform operation 
addi x0, x1, 1
some_label_for_btype_23779305346269130450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xf85cab2ee22a0217 # initialize rs1
li x0, 0xf85cab2ee22a0217 # initialize rs2
bltu x9, x0, some_label_for_btype_23779305346269130451 # perform operation 
addi x0, x1, 1
some_label_for_btype_23779305346269130451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0xaba0b9a798ea2754 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000000000000 # initialize rs1
li x11, 0x950951f9597a2484 # initialize rs2
bltu x7, x11, some_label_for_btype_42607467381386340880 # perform operation 
addi x0, x1, 1
some_label_for_btype_42607467381386340880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x950951f9597a2484 # initialize rs1
li x11, 0x950951f9597a2484 # initialize rs2
bltu x7, x11, some_label_for_btype_42607467381386340881 # perform operation 
addi x0, x1, 1
some_label_for_btype_42607467381386340881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x9, 0xa76749e59c4e7feb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000000000001 # initialize rs1
li x28, 0x2b08d58cf24a03d7 # initialize rs2
bltu x27, x28, some_label_for_btype_152454149183006377630 # perform operation 
addi x0, x1, 1
some_label_for_btype_152454149183006377630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x2b08d58cf24a03d7 # initialize rs1
li x28, 0x2b08d58cf24a03d7 # initialize rs2
bltu x27, x28, some_label_for_btype_152454149183006377631 # perform operation 
addi x0, x1, 1
some_label_for_btype_152454149183006377631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0xe84e75f4fd0616d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000000000002 # initialize rs1
li x20, 0xad455db22029e102 # initialize rs2
bltu x4, x20, some_label_for_btype_43846769274532255970 # perform operation 
addi x0, x1, 1
some_label_for_btype_43846769274532255970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xad455db22029e102 # initialize rs1
li x20, 0xad455db22029e102 # initialize rs2
bltu x4, x20, some_label_for_btype_43846769274532255971 # perform operation 
addi x0, x1, 1
some_label_for_btype_43846769274532255971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x30, 0x74e80b2a2be35332 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x8000000000000000 # initialize rs1
li x26, 0xfdc6a8909a2f82fb # initialize rs2
bltu x27, x26, some_label_for_btype_148406380792991824900 # perform operation 
addi x0, x1, 1
some_label_for_btype_148406380792991824900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xfdc6a8909a2f82fb # initialize rs1
li x26, 0xfdc6a8909a2f82fb # initialize rs2
bltu x27, x26, some_label_for_btype_148406380792991824901 # perform operation 
addi x0, x1, 1
some_label_for_btype_148406380792991824901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x9, 0x578eaaee8bf3dcce # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x8000000000000001 # initialize rs1
li x6, 0x38f68c10df736f9a # initialize rs2
bltu x24, x6, some_label_for_btype_39023145309794609580 # perform operation 
addi x0, x1, 1
some_label_for_btype_39023145309794609580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x38f68c10df736f9a # initialize rs1
li x6, 0x38f68c10df736f9a # initialize rs2
bltu x24, x6, some_label_for_btype_39023145309794609581 # perform operation 
addi x0, x1, 1
some_label_for_btype_39023145309794609581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x19, 0x888c1e2be02f5990 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x7fffffffffffffff # initialize rs1
li x29, 0x6adc27bbd13dbb6c # initialize rs2
bltu x7, x29, some_label_for_btype_60364601277050925730 # perform operation 
addi x0, x1, 1
some_label_for_btype_60364601277050925730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x6adc27bbd13dbb6c # initialize rs1
li x29, 0x6adc27bbd13dbb6c # initialize rs2
bltu x7, x29, some_label_for_btype_60364601277050925731 # perform operation 
addi x0, x1, 1
some_label_for_btype_60364601277050925731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x3, 0xe1166f35878fe469 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x7ffffffffffffffe # initialize rs1
li x13, 0x8c6b03aea87e66b0 # initialize rs2
bltu x7, x13, some_label_for_btype_17785522690795515910 # perform operation 
addi x0, x1, 1
some_label_for_btype_17785522690795515910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x8c6b03aea87e66b0 # initialize rs1
li x13, 0x8c6b03aea87e66b0 # initialize rs2
bltu x7, x13, some_label_for_btype_17785522690795515911 # perform operation 
addi x0, x1, 1
some_label_for_btype_17785522690795515911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0x662e5ebe42e12da1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xffffffffffffffff # initialize rs1
li x19, 0xfd4a9fe1bbc1ad5f # initialize rs2
bltu x12, x19, some_label_for_btype_181688332857372044910 # perform operation 
addi x0, x1, 1
some_label_for_btype_181688332857372044910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xfd4a9fe1bbc1ad5f # initialize rs1
li x19, 0xfd4a9fe1bbc1ad5f # initialize rs2
bltu x12, x19, some_label_for_btype_181688332857372044911 # perform operation 
addi x0, x1, 1
some_label_for_btype_181688332857372044911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x1, 0xb5be5d4e23c3f288 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xfffffffffffffffe # initialize rs1
li x3, 0x590629f0715d5544 # initialize rs2
bltu x25, x3, some_label_for_btype_53329700355910026110 # perform operation 
addi x0, x1, 1
some_label_for_btype_53329700355910026110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x590629f0715d5544 # initialize rs1
li x3, 0x590629f0715d5544 # initialize rs2
bltu x25, x3, some_label_for_btype_53329700355910026111 # perform operation 
addi x0, x1, 1
some_label_for_btype_53329700355910026111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x4, 0xc939346f72b63910 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0xcf69425468a51154 # initialize rs2
bltu x24, x21, some_label_for_btype_89613153323235245470 # perform operation 
addi x0, x1, 1
some_label_for_btype_89613153323235245470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xcf69425468a51154 # initialize rs1
li x21, 0xcf69425468a51154 # initialize rs2
bltu x24, x21, some_label_for_btype_89613153323235245471 # perform operation 
addi x0, x1, 1
some_label_for_btype_89613153323235245471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x29, 0xb391cc9ee14c1b05 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xed11076bd8c40bc4 # initialize rs2
bltu x3, x8, some_label_for_btype_73073343248731296710 # perform operation 
addi x0, x1, 1
some_label_for_btype_73073343248731296710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xed11076bd8c40bc4 # initialize rs1
li x8, 0xed11076bd8c40bc4 # initialize rs2
bltu x3, x8, some_label_for_btype_73073343248731296711 # perform operation 
addi x0, x1, 1
some_label_for_btype_73073343248731296711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x14, 0x08e94de59d74482f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x5555555555555555 # initialize rs1
li x17, 0xbbb48d5260ded4c3 # initialize rs2
bltu x22, x17, some_label_for_btype_24581110724285370030 # perform operation 
addi x0, x1, 1
some_label_for_btype_24581110724285370030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xbbb48d5260ded4c3 # initialize rs1
li x17, 0xbbb48d5260ded4c3 # initialize rs2
bltu x22, x17, some_label_for_btype_24581110724285370031 # perform operation 
addi x0, x1, 1
some_label_for_btype_24581110724285370031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0x6a632fbbe32cb38e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000000ffffffff # initialize rs1
li x3, 0x22992cc19f387166 # initialize rs2
bltu x27, x3, some_label_for_btype_97865919056991237440 # perform operation 
addi x0, x1, 1
some_label_for_btype_97865919056991237440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x22992cc19f387166 # initialize rs1
li x3, 0x22992cc19f387166 # initialize rs2
bltu x27, x3, some_label_for_btype_97865919056991237441 # perform operation 
addi x0, x1, 1
some_label_for_btype_97865919056991237441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x31, 0x3a796849445957f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000000fffffffe # initialize rs1
li x17, 0x01fd2fc9d8ff2c59 # initialize rs2
bltu x19, x17, some_label_for_btype_154296601848583253310 # perform operation 
addi x0, x1, 1
some_label_for_btype_154296601848583253310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x01fd2fc9d8ff2c59 # initialize rs1
li x17, 0x01fd2fc9d8ff2c59 # initialize rs2
bltu x19, x17, some_label_for_btype_154296601848583253311 # perform operation 
addi x0, x1, 1
some_label_for_btype_154296601848583253311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x20, 0xf7d6872006bef7d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x0000000100000000 # initialize rs1
li x22, 0x9e16d873500199d3 # initialize rs2
bltu x25, x22, some_label_for_btype_112397210206218615070 # perform operation 
addi x0, x1, 1
some_label_for_btype_112397210206218615070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x9e16d873500199d3 # initialize rs1
li x22, 0x9e16d873500199d3 # initialize rs2
bltu x25, x22, some_label_for_btype_112397210206218615071 # perform operation 
addi x0, x1, 1
some_label_for_btype_112397210206218615071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x22, 0x51fb161ff8d69ce3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000100000001 # initialize rs1
li x14, 0x3b7f672cff77c966 # initialize rs2
bltu x9, x14, some_label_for_btype_91141132348244373810 # perform operation 
addi x0, x1, 1
some_label_for_btype_91141132348244373810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x3b7f672cff77c966 # initialize rs1
li x14, 0x3b7f672cff77c966 # initialize rs2
bltu x9, x14, some_label_for_btype_91141132348244373811 # perform operation 
addi x0, x1, 1
some_label_for_btype_91141132348244373811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0x604e9cabec1d9b8b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x13a7799e4ac8e0a7 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bltu x9, x2, some_label_for_btype_95064654124707949980 # perform operation 
addi x0, x1, 1
some_label_for_btype_95064654124707949980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bltu x9, x2, some_label_for_btype_95064654124707949981 # perform operation 
addi x0, x1, 1
some_label_for_btype_95064654124707949981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x11, 0x3ed0fb1893b7afd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xe4c5157337b9f993 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
bltu x7, x28, some_label_for_btype_33789592472778796510 # perform operation 
addi x0, x1, 1
some_label_for_btype_33789592472778796510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
bltu x7, x28, some_label_for_btype_33789592472778796511 # perform operation 
addi x0, x1, 1
some_label_for_btype_33789592472778796511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x2, 0x0a3ad3c3cca63d02 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xabc11b7ca94ac956 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bltu x18, x15, some_label_for_btype_6424278458068775820 # perform operation 
addi x0, x1, 1
some_label_for_btype_6424278458068775820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000000000002 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bltu x18, x15, some_label_for_btype_6424278458068775821 # perform operation 
addi x0, x1, 1
some_label_for_btype_6424278458068775821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x30, 0x1ee7ead82c4b46c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xa0b2e5dd4d7fc1bd # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
bltu x8, x21, some_label_for_btype_58762776695263419260 # perform operation 
addi x0, x1, 1
some_label_for_btype_58762776695263419260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
bltu x8, x21, some_label_for_btype_58762776695263419261 # perform operation 
addi x0, x1, 1
some_label_for_btype_58762776695263419261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x10, 0x6c196c46957b9d78 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x0bed7f44e9ee8542 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bltu x17, x28, some_label_for_btype_159435615835814775640 # perform operation 
addi x0, x1, 1
some_label_for_btype_159435615835814775640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x8000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bltu x17, x28, some_label_for_btype_159435615835814775641 # perform operation 
addi x0, x1, 1
some_label_for_btype_159435615835814775641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x27, 0x97e7d4f97ebcc09b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x43a962c6ed3ff422 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
bltu x6, x15, some_label_for_btype_25377426868778204300 # perform operation 
addi x0, x1, 1
some_label_for_btype_25377426868778204300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x7fffffffffffffff # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
bltu x6, x15, some_label_for_btype_25377426868778204301 # perform operation 
addi x0, x1, 1
some_label_for_btype_25377426868778204301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0xf095e413e1a1bbe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xc96b3af7cafd1afe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
bltu x5, x26, some_label_for_btype_175523511333523246450 # perform operation 
addi x0, x1, 1
some_label_for_btype_175523511333523246450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
bltu x5, x26, some_label_for_btype_175523511333523246451 # perform operation 
addi x0, x1, 1
some_label_for_btype_175523511333523246451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x13, 0x309417a7803bb393 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x5a3ced25a5ea02be # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
bltu x19, x31, some_label_for_btype_88466752896960429430 # perform operation 
addi x0, x1, 1
some_label_for_btype_88466752896960429430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xffffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
bltu x19, x31, some_label_for_btype_88466752896960429431 # perform operation 
addi x0, x1, 1
some_label_for_btype_88466752896960429431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x11, 0xabdaa1597d178fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x16b383776a8aba15 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bltu x8, x22, some_label_for_btype_141978846711730941520 # perform operation 
addi x0, x1, 1
some_label_for_btype_141978846711730941520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xfffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bltu x8, x22, some_label_for_btype_141978846711730941521 # perform operation 
addi x0, x1, 1
some_label_for_btype_141978846711730941521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x29, 0x06a756c3e208e1e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x1f23f197843c7df5 # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
bltu x26, x4, some_label_for_btype_35097832847294290390 # perform operation 
addi x0, x1, 1
some_label_for_btype_35097832847294290390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
bltu x26, x4, some_label_for_btype_35097832847294290391 # perform operation 
addi x0, x1, 1
some_label_for_btype_35097832847294290391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x4, 0xb44d53a066598ab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x839e635f33144362 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x17, x27, some_label_for_btype_146769616074922826870 # perform operation 
addi x0, x1, 1
some_label_for_btype_146769616074922826870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x17, x27, some_label_for_btype_146769616074922826871 # perform operation 
addi x0, x1, 1
some_label_for_btype_146769616074922826871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x4, 0x5df9aac46ead51e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x8687ac4244002f93 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bltu x21, x14, some_label_for_btype_95206207733156984640 # perform operation 
addi x0, x1, 1
some_label_for_btype_95206207733156984640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x5555555555555555 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bltu x21, x14, some_label_for_btype_95206207733156984641 # perform operation 
addi x0, x1, 1
some_label_for_btype_95206207733156984641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x4, 0x470f5138a0189679 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x84e183ac4a718a86 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bltu x16, x23, some_label_for_btype_113770467350426422890 # perform operation 
addi x0, x1, 1
some_label_for_btype_113770467350426422890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bltu x16, x23, some_label_for_btype_113770467350426422891 # perform operation 
addi x0, x1, 1
some_label_for_btype_113770467350426422891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0x404d42646b4f91f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xa8f912178f6ce49a # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bltu x6, x11, some_label_for_btype_97210846875322069050 # perform operation 
addi x0, x1, 1
some_label_for_btype_97210846875322069050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bltu x6, x11, some_label_for_btype_97210846875322069051 # perform operation 
addi x0, x1, 1
some_label_for_btype_97210846875322069051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x6, 0xa8ea57d964b26f95 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xf23d121bd7eb2045 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bltu x12, x8, some_label_for_btype_105202806019867000920 # perform operation 
addi x0, x1, 1
some_label_for_btype_105202806019867000920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bltu x12, x8, some_label_for_btype_105202806019867000921 # perform operation 
addi x0, x1, 1
some_label_for_btype_105202806019867000921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x12, 0xbedee7413b86e917 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x52351bf6472f5c11 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bltu x6, x18, some_label_for_btype_18372452198610167700 # perform operation 
addi x0, x1, 1
some_label_for_btype_18372452198610167700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000100000001 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bltu x6, x18, some_label_for_btype_18372452198610167701 # perform operation 
addi x0, x1, 1
some_label_for_btype_18372452198610167701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x14, 0xcf263bb3e244834a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x0000000000000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
bltu x25, x30, some_label_for_btype_128822871882535332500 # perform operation 
addi x0, x1, 1
some_label_for_btype_128822871882535332500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x0000000000000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
bltu x25, x30, some_label_for_btype_128822871882535332501 # perform operation 
addi x0, x1, 1
some_label_for_btype_128822871882535332501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x16, 0x0b3768795426d641 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bltu x10, x5, some_label_for_btype_6690389004272655250 # perform operation 
addi x0, x1, 1
some_label_for_btype_6690389004272655250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bltu x10, x5, some_label_for_btype_6690389004272655251 # perform operation 
addi x0, x1, 1
some_label_for_btype_6690389004272655251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x5, 0x5e4ad98ee9fe5933 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
bltu x15, x7, some_label_for_btype_13571454650671365230 # perform operation 
addi x0, x1, 1
some_label_for_btype_13571454650671365230:
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
bltu x15, x7, some_label_for_btype_13571454650671365231 # perform operation 
addi x0, x1, 1
some_label_for_btype_13571454650671365231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x30, 0x7e718d7b1d1a3b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x0000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
bltu x29, x24, some_label_for_btype_100928207230377315150 # perform operation 
addi x0, x1, 1
some_label_for_btype_100928207230377315150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x8000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
bltu x29, x24, some_label_for_btype_100928207230377315151 # perform operation 
addi x0, x1, 1
some_label_for_btype_100928207230377315151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x12, 0x4698f148bbdb45c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000000000000 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
bltu x6, x22, some_label_for_btype_55283107183833686190 # perform operation 
addi x0, x1, 1
some_label_for_btype_55283107183833686190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x8000000000000001 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
bltu x6, x22, some_label_for_btype_55283107183833686191 # perform operation 
addi x0, x1, 1
some_label_for_btype_55283107183833686191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x18, 0x4dfb9317124fc6dc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000000000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bltu x9, x6, some_label_for_btype_48500346471536098690 # perform operation 
addi x0, x1, 1
some_label_for_btype_48500346471536098690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x7fffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bltu x9, x6, some_label_for_btype_48500346471536098691 # perform operation 
addi x0, x1, 1
some_label_for_btype_48500346471536098691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x24, 0xb70383d040eacbe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x0000000000000000 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
bltu x16, x7, some_label_for_btype_99485724343044305870 # perform operation 
addi x0, x1, 1
some_label_for_btype_99485724343044305870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
bltu x16, x7, some_label_for_btype_99485724343044305871 # perform operation 
addi x0, x1, 1
some_label_for_btype_99485724343044305871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x29, 0xe365f877642df186 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x0000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bltu x13, x16, some_label_for_btype_15040251600781276730 # perform operation 
addi x0, x1, 1
some_label_for_btype_15040251600781276730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bltu x13, x16, some_label_for_btype_15040251600781276731 # perform operation 
addi x0, x1, 1
some_label_for_btype_15040251600781276731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x29, 0xfd68d227366fedf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000000000000 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bltu x18, x11, some_label_for_btype_11385867116729709910 # perform operation 
addi x0, x1, 1
some_label_for_btype_11385867116729709910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bltu x18, x11, some_label_for_btype_11385867116729709911 # perform operation 
addi x0, x1, 1
some_label_for_btype_11385867116729709911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x19, 0x4784f70736e21d5a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000000000000 # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
bltu x4, x5, some_label_for_btype_153687724511905509460 # perform operation 
addi x0, x1, 1
some_label_for_btype_153687724511905509460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
bltu x4, x5, some_label_for_btype_153687724511905509461 # perform operation 
addi x0, x1, 1
some_label_for_btype_153687724511905509461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x8f86af19b4b66cde # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000000000000 # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x1, x4, some_label_for_btype_144199175402782177150 # perform operation 
addi x0, x1, 1
some_label_for_btype_144199175402782177150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x1, x4, some_label_for_btype_144199175402782177151 # perform operation 
addi x0, x1, 1
some_label_for_btype_144199175402782177151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x16, 0x9c66be59b590d6c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0000000000000000 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
bltu x26, x8, some_label_for_btype_107967019814321796150 # perform operation 
addi x0, x1, 1
some_label_for_btype_107967019814321796150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x5555555555555555 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
bltu x26, x8, some_label_for_btype_107967019814321796151 # perform operation 
addi x0, x1, 1
some_label_for_btype_107967019814321796151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x18, 0x417e3c170c7dddc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000000000000 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bltu x7, x15, some_label_for_btype_35389968839542883070 # perform operation 
addi x0, x1, 1
some_label_for_btype_35389968839542883070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bltu x7, x15, some_label_for_btype_35389968839542883071 # perform operation 
addi x0, x1, 1
some_label_for_btype_35389968839542883071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x20, 0x5719e6dd9f77d662 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000000000000 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bltu x3, x8, some_label_for_btype_72593482238096042110 # perform operation 
addi x0, x1, 1
some_label_for_btype_72593482238096042110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000000fffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bltu x3, x8, some_label_for_btype_72593482238096042111 # perform operation 
addi x0, x1, 1
some_label_for_btype_72593482238096042111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x16, 0xc9311e826b17c7ea # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x0000000000000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
bltu x23, x12, some_label_for_btype_118039743163214598130 # perform operation 
addi x0, x1, 1
some_label_for_btype_118039743163214598130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x0000000100000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
bltu x23, x12, some_label_for_btype_118039743163214598131 # perform operation 
addi x0, x1, 1
some_label_for_btype_118039743163214598131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x22, 0x71cc08f2744d635e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000000000000 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
bltu x1, x31, some_label_for_btype_40610421481441985340 # perform operation 
addi x0, x1, 1
some_label_for_btype_40610421481441985340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000100000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
bltu x1, x31, some_label_for_btype_40610421481441985341 # perform operation 
addi x0, x1, 1
some_label_for_btype_40610421481441985341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x7, 0xb99825dfeb17fa96 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bltu x21, x27, some_label_for_btype_122445072881429912920 # perform operation 
addi x0, x1, 1
some_label_for_btype_122445072881429912920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bltu x21, x27, some_label_for_btype_122445072881429912921 # perform operation 
addi x0, x1, 1
some_label_for_btype_122445072881429912921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x29, 0xec5b8f415d1f907e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bltu x15, x1, some_label_for_btype_47127414153197547890 # perform operation 
addi x0, x1, 1
some_label_for_btype_47127414153197547890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bltu x15, x1, some_label_for_btype_47127414153197547891 # perform operation 
addi x0, x1, 1
some_label_for_btype_47127414153197547891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x21, 0xb1b3bfb07b97e570 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bltu x28, x29, some_label_for_btype_23452835647518332490 # perform operation 
addi x0, x1, 1
some_label_for_btype_23452835647518332490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bltu x28, x29, some_label_for_btype_23452835647518332491 # perform operation 
addi x0, x1, 1
some_label_for_btype_23452835647518332491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x31, 0x3de7f408740c2355 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0000000000000001 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
bltu x14, x15, some_label_for_btype_81475463470482309440 # perform operation 
addi x0, x1, 1
some_label_for_btype_81475463470482309440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x8000000000000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
bltu x14, x15, some_label_for_btype_81475463470482309441 # perform operation 
addi x0, x1, 1
some_label_for_btype_81475463470482309441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x14, 0x84eb167bd2f36eff # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000000000001 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
bltu x18, x13, some_label_for_btype_108812728256403122430 # perform operation 
addi x0, x1, 1
some_label_for_btype_108812728256403122430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x8000000000000001 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
bltu x18, x13, some_label_for_btype_108812728256403122431 # perform operation 
addi x0, x1, 1
some_label_for_btype_108812728256403122431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x28, 0xc27d7fb0d2c4e20c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x0000000000000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
bltu x29, x3, some_label_for_btype_126467349010552572890 # perform operation 
addi x0, x1, 1
some_label_for_btype_126467349010552572890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x7fffffffffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
bltu x29, x3, some_label_for_btype_126467349010552572891 # perform operation 
addi x0, x1, 1
some_label_for_btype_126467349010552572891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x9, 0x8ea3a43bc55f4bb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0000000000000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bltu x30, x25, some_label_for_btype_15488266383305664290 # perform operation 
addi x0, x1, 1
some_label_for_btype_15488266383305664290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bltu x30, x25, some_label_for_btype_15488266383305664291 # perform operation 
addi x0, x1, 1
some_label_for_btype_15488266383305664291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x5, 0x04df0bb99e84ca89 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x0000000000000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bltu x16, x26, some_label_for_btype_138205359972312192620 # perform operation 
addi x0, x1, 1
some_label_for_btype_138205359972312192620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xffffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bltu x16, x26, some_label_for_btype_138205359972312192621 # perform operation 
addi x0, x1, 1
some_label_for_btype_138205359972312192621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x13, 0x1e4f5987e9105769 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000000000001 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
bltu x28, x19, some_label_for_btype_8478288656671464300 # perform operation 
addi x0, x1, 1
some_label_for_btype_8478288656671464300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xfffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
bltu x28, x19, some_label_for_btype_8478288656671464301 # perform operation 
addi x0, x1, 1
some_label_for_btype_8478288656671464301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x23, 0x417b163676c6ffcc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000000000001 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
bltu x31, x19, some_label_for_btype_24690068133263531510 # perform operation 
addi x0, x1, 1
some_label_for_btype_24690068133263531510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
bltu x31, x19, some_label_for_btype_24690068133263531511 # perform operation 
addi x0, x1, 1
some_label_for_btype_24690068133263531511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x361be34f0efb2337 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000000000001 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x9, x28, some_label_for_btype_166681936509313111050 # perform operation 
addi x0, x1, 1
some_label_for_btype_166681936509313111050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x9, x28, some_label_for_btype_166681936509313111051 # perform operation 
addi x0, x1, 1
some_label_for_btype_166681936509313111051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x19, 0x5365980cecb468ba # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x0000000000000001 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
bltu x17, x28, some_label_for_btype_71637615538959370750 # perform operation 
addi x0, x1, 1
some_label_for_btype_71637615538959370750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x5555555555555555 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
bltu x17, x28, some_label_for_btype_71637615538959370751 # perform operation 
addi x0, x1, 1
some_label_for_btype_71637615538959370751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x30, 0x17e569b2e5f5d053 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0000000000000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
bltu x26, x16, some_label_for_btype_116267211462796835570 # perform operation 
addi x0, x1, 1
some_label_for_btype_116267211462796835570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x00000000ffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
bltu x26, x16, some_label_for_btype_116267211462796835571 # perform operation 
addi x0, x1, 1
some_label_for_btype_116267211462796835571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x28, 0x141fbe3912f0db9e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000000000001 # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
bltu x21, x4, some_label_for_btype_10858846416197455920 # perform operation 
addi x0, x1, 1
some_label_for_btype_10858846416197455920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000000fffffffe # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
bltu x21, x4, some_label_for_btype_10858846416197455921 # perform operation 
addi x0, x1, 1
some_label_for_btype_10858846416197455921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x21, 0x2cb08c19ce99cba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x0000000000000001 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
bltu x16, x25, some_label_for_btype_165562020302154354990 # perform operation 
addi x0, x1, 1
some_label_for_btype_165562020302154354990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0000000100000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
bltu x16, x25, some_label_for_btype_165562020302154354991 # perform operation 
addi x0, x1, 1
some_label_for_btype_165562020302154354991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x19, 0xd25c5f05594e797b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000000000001 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
bltu x4, x3, some_label_for_btype_42867441784080921030 # perform operation 
addi x0, x1, 1
some_label_for_btype_42867441784080921030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
bltu x4, x3, some_label_for_btype_42867441784080921031 # perform operation 
addi x0, x1, 1
some_label_for_btype_42867441784080921031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x27, 0x09a7b9e52e6ae6e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
bltu x4, x29, some_label_for_btype_103018788098580949670 # perform operation 
addi x0, x1, 1
some_label_for_btype_103018788098580949670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
bltu x4, x29, some_label_for_btype_103018788098580949671 # perform operation 
addi x0, x1, 1
some_label_for_btype_103018788098580949671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x18, 0x9a7b9212e257099d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
bltu x22, x19, some_label_for_btype_2210869997922916670 # perform operation 
addi x0, x1, 1
some_label_for_btype_2210869997922916670:
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
bltu x22, x19, some_label_for_btype_2210869997922916671 # perform operation 
addi x0, x1, 1
some_label_for_btype_2210869997922916671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x7, 0x949223b6de91e532 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
bltu x18, x3, some_label_for_btype_112193610496033531620 # perform operation 
addi x0, x1, 1
some_label_for_btype_112193610496033531620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
bltu x18, x3, some_label_for_btype_112193610496033531621 # perform operation 
addi x0, x1, 1
some_label_for_btype_112193610496033531621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x21, 0x6d31c10187163005 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000000000002 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
bltu x24, x18, some_label_for_btype_157062686201124648670 # perform operation 
addi x0, x1, 1
some_label_for_btype_157062686201124648670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
bltu x24, x18, some_label_for_btype_157062686201124648671 # perform operation 
addi x0, x1, 1
some_label_for_btype_157062686201124648671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x17, 0x01e1e5fcad1a8348 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000000000002 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
bltu x6, x23, some_label_for_btype_182052816252396994680 # perform operation 
addi x0, x1, 1
some_label_for_btype_182052816252396994680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x8000000000000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
bltu x6, x23, some_label_for_btype_182052816252396994681 # perform operation 
addi x0, x1, 1
some_label_for_btype_182052816252396994681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x29, 0x8de4042b5c918437 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000000000002 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
bltu x1, x3, some_label_for_btype_47789137470571448980 # perform operation 
addi x0, x1, 1
some_label_for_btype_47789137470571448980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x7fffffffffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
bltu x1, x3, some_label_for_btype_47789137470571448981 # perform operation 
addi x0, x1, 1
some_label_for_btype_47789137470571448981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x16, 0x3febe34745cc4f2b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000000000002 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
bltu x21, x28, some_label_for_btype_114368594101919021140 # perform operation 
addi x0, x1, 1
some_label_for_btype_114368594101919021140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
bltu x21, x28, some_label_for_btype_114368594101919021141 # perform operation 
addi x0, x1, 1
some_label_for_btype_114368594101919021141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x20, 0x7d2a48d8cfd725e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000000000002 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
bltu x21, x30, some_label_for_btype_166764567703564281340 # perform operation 
addi x0, x1, 1
some_label_for_btype_166764567703564281340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xffffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
bltu x21, x30, some_label_for_btype_166764567703564281341 # perform operation 
addi x0, x1, 1
some_label_for_btype_166764567703564281341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x13, 0xfb21a689c113b8a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000000000002 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
bltu x27, x20, some_label_for_btype_164725785229042894460 # perform operation 
addi x0, x1, 1
some_label_for_btype_164725785229042894460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xfffffffffffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
bltu x27, x20, some_label_for_btype_164725785229042894461 # perform operation 
addi x0, x1, 1
some_label_for_btype_164725785229042894461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x17, 0x346ca170d5266227 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x0000000000000002 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
bltu x25, x3, some_label_for_btype_45211568657904284580 # perform operation 
addi x0, x1, 1
some_label_for_btype_45211568657904284580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
bltu x25, x3, some_label_for_btype_45211568657904284581 # perform operation 
addi x0, x1, 1
some_label_for_btype_45211568657904284581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x6d862f23eb3cc881 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0000000000000002 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x15, x31, some_label_for_btype_184556400992784720 # perform operation 
addi x0, x1, 1
some_label_for_btype_184556400992784720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x15, x31, some_label_for_btype_184556400992784721 # perform operation 
addi x0, x1, 1
some_label_for_btype_184556400992784721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x15, 0x9ce143ba83d43e32 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000000000002 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
bltu x2, x3, some_label_for_btype_136291952910253263360 # perform operation 
addi x0, x1, 1
some_label_for_btype_136291952910253263360:
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
bltu x2, x3, some_label_for_btype_136291952910253263361 # perform operation 
addi x0, x1, 1
some_label_for_btype_136291952910253263361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x17, 0xac3a6b864624a7d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000000000002 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
bltu x22, x28, some_label_for_btype_67805513658481207890 # perform operation 
addi x0, x1, 1
some_label_for_btype_67805513658481207890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x00000000ffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
bltu x22, x28, some_label_for_btype_67805513658481207891 # perform operation 
addi x0, x1, 1
some_label_for_btype_67805513658481207891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x4, 0x46f2f354f776d2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000000000002 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
bltu x12, x28, some_label_for_btype_87688883254932113910 # perform operation 
addi x0, x1, 1
some_label_for_btype_87688883254932113910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
bltu x12, x28, some_label_for_btype_87688883254932113911 # perform operation 
addi x0, x1, 1
some_label_for_btype_87688883254932113911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x31, 0xd0854bc9d0b56b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0000000000000002 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bltu x26, x17, some_label_for_btype_164407391107209411520 # perform operation 
addi x0, x1, 1
some_label_for_btype_164407391107209411520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000100000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bltu x26, x17, some_label_for_btype_164407391107209411521 # perform operation 
addi x0, x1, 1
some_label_for_btype_164407391107209411521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x6, 0xc6de432ad21e9f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x0000000000000002 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
bltu x13, x20, some_label_for_btype_85615226179306324530 # perform operation 
addi x0, x1, 1
some_label_for_btype_85615226179306324530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
bltu x13, x20, some_label_for_btype_85615226179306324531 # perform operation 
addi x0, x1, 1
some_label_for_btype_85615226179306324531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x28, 0x74d93cf26fe3ba1c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bltu x11, x2, some_label_for_btype_19890973795704443900 # perform operation 
addi x0, x1, 1
some_label_for_btype_19890973795704443900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bltu x11, x2, some_label_for_btype_19890973795704443901 # perform operation 
addi x0, x1, 1
some_label_for_btype_19890973795704443901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x9, 0x94241e4238482cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
bltu x10, x27, some_label_for_btype_156821495693570189960 # perform operation 
addi x0, x1, 1
some_label_for_btype_156821495693570189960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
bltu x10, x27, some_label_for_btype_156821495693570189961 # perform operation 
addi x0, x1, 1
some_label_for_btype_156821495693570189961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x18, 0xec3692d390a67c9a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x8000000000000000 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
bltu x22, x5, some_label_for_btype_142355025536935498070 # perform operation 
addi x0, x1, 1
some_label_for_btype_142355025536935498070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
bltu x22, x5, some_label_for_btype_142355025536935498071 # perform operation 
addi x0, x1, 1
some_label_for_btype_142355025536935498071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x3, 0xe42ddf65f43bffc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x8000000000000000 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bltu x29, x8, some_label_for_btype_22832872528707697510 # perform operation 
addi x0, x1, 1
some_label_for_btype_22832872528707697510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x8000000000000000 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bltu x29, x8, some_label_for_btype_22832872528707697511 # perform operation 
addi x0, x1, 1
some_label_for_btype_22832872528707697511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x25, 0xeeaf4653041c4361 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x8000000000000000 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
bltu x17, x11, some_label_for_btype_103696240667216177060 # perform operation 
addi x0, x1, 1
some_label_for_btype_103696240667216177060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x8000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
bltu x17, x11, some_label_for_btype_103696240667216177061 # perform operation 
addi x0, x1, 1
some_label_for_btype_103696240667216177061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x3, 0xb1877d095d53d588 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x8000000000000000 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bltu x27, x17, some_label_for_btype_18324289035953130380 # perform operation 
addi x0, x1, 1
some_label_for_btype_18324289035953130380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x7fffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bltu x27, x17, some_label_for_btype_18324289035953130381 # perform operation 
addi x0, x1, 1
some_label_for_btype_18324289035953130381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x27, 0x66ddf5d58787ae36 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x8000000000000000 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
bltu x23, x24, some_label_for_btype_134363325436016294970 # perform operation 
addi x0, x1, 1
some_label_for_btype_134363325436016294970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x7ffffffffffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
bltu x23, x24, some_label_for_btype_134363325436016294971 # perform operation 
addi x0, x1, 1
some_label_for_btype_134363325436016294971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x15, 0xbdc26f7dd0de5345 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x8000000000000000 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bltu x25, x11, some_label_for_btype_135875896550198587090 # perform operation 
addi x0, x1, 1
some_label_for_btype_135875896550198587090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xffffffffffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bltu x25, x11, some_label_for_btype_135875896550198587091 # perform operation 
addi x0, x1, 1
some_label_for_btype_135875896550198587091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x7, 0x1fac1ba09bc85683 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x8000000000000000 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bltu x23, x9, some_label_for_btype_38350947271508463530 # perform operation 
addi x0, x1, 1
some_label_for_btype_38350947271508463530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xfffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bltu x23, x9, some_label_for_btype_38350947271508463531 # perform operation 
addi x0, x1, 1
some_label_for_btype_38350947271508463531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x8, 0xef714c5869ce1ea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x8000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
bltu x19, x31, some_label_for_btype_128839777021568210850 # perform operation 
addi x0, x1, 1
some_label_for_btype_128839777021568210850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
bltu x19, x31, some_label_for_btype_128839777021568210851 # perform operation 
addi x0, x1, 1
some_label_for_btype_128839777021568210851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x9344c169a682faf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x8000000000000000 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x13, x8, some_label_for_btype_69044452461918433230 # perform operation 
addi x0, x1, 1
some_label_for_btype_69044452461918433230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x13, x8, some_label_for_btype_69044452461918433231 # perform operation 
addi x0, x1, 1
some_label_for_btype_69044452461918433231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x1, 0x833a85168f947fe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x8000000000000000 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bltu x15, x11, some_label_for_btype_48141369042396883550 # perform operation 
addi x0, x1, 1
some_label_for_btype_48141369042396883550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bltu x15, x11, some_label_for_btype_48141369042396883551 # perform operation 
addi x0, x1, 1
some_label_for_btype_48141369042396883551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x15, 0x8fa47d3c4c71cd50 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x8000000000000000 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bltu x23, x31, some_label_for_btype_177983240706031949010 # perform operation 
addi x0, x1, 1
some_label_for_btype_177983240706031949010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bltu x23, x31, some_label_for_btype_177983240706031949011 # perform operation 
addi x0, x1, 1
some_label_for_btype_177983240706031949011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x26, 0x4ad20a1ec76a813d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x8000000000000000 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bltu x13, x3, some_label_for_btype_4619647210344251250 # perform operation 
addi x0, x1, 1
some_label_for_btype_4619647210344251250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bltu x13, x3, some_label_for_btype_4619647210344251251 # perform operation 
addi x0, x1, 1
some_label_for_btype_4619647210344251251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x17, 0xce83fc41e88b908f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x8000000000000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bltu x25, x29, some_label_for_btype_21567594053652890680 # perform operation 
addi x0, x1, 1
some_label_for_btype_21567594053652890680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bltu x25, x29, some_label_for_btype_21567594053652890681 # perform operation 
addi x0, x1, 1
some_label_for_btype_21567594053652890681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x17, 0xc9f77d7c0b7231c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x8000000000000000 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bltu x21, x27, some_label_for_btype_117129021735322372180 # perform operation 
addi x0, x1, 1
some_label_for_btype_117129021735322372180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bltu x21, x27, some_label_for_btype_117129021735322372181 # perform operation 
addi x0, x1, 1
some_label_for_btype_117129021735322372181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x2, 0xab6e9cfc96813720 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x8000000000000001 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bltu x15, x26, some_label_for_btype_38095952551600007770 # perform operation 
addi x0, x1, 1
some_label_for_btype_38095952551600007770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bltu x15, x26, some_label_for_btype_38095952551600007771 # perform operation 
addi x0, x1, 1
some_label_for_btype_38095952551600007771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x31, 0x75d69257f857ed34 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x8000000000000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bltu x22, x25, some_label_for_btype_58613630279081049730 # perform operation 
addi x0, x1, 1
some_label_for_btype_58613630279081049730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bltu x22, x25, some_label_for_btype_58613630279081049731 # perform operation 
addi x0, x1, 1
some_label_for_btype_58613630279081049731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x3, 0x2434c82cea4c4ef8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x8000000000000001 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
bltu x15, x7, some_label_for_btype_104341910131504748530 # perform operation 
addi x0, x1, 1
some_label_for_btype_104341910131504748530:
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
bltu x15, x7, some_label_for_btype_104341910131504748531 # perform operation 
addi x0, x1, 1
some_label_for_btype_104341910131504748531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x21, 0x99b51fca9f371904 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
bltu x19, x17, some_label_for_btype_481782795317912780 # perform operation 
addi x0, x1, 1
some_label_for_btype_481782795317912780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
bltu x19, x17, some_label_for_btype_481782795317912781 # perform operation 
addi x0, x1, 1
some_label_for_btype_481782795317912781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x8, 0xc34c87704037cf4f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
bltu x14, x6, some_label_for_btype_71114867401249936930 # perform operation 
addi x0, x1, 1
some_label_for_btype_71114867401249936930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
bltu x14, x6, some_label_for_btype_71114867401249936931 # perform operation 
addi x0, x1, 1
some_label_for_btype_71114867401249936931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x30, 0xbbad8d2abf39fe57 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x8000000000000001 # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
bltu x8, x4, some_label_for_btype_155457259242517844870 # perform operation 
addi x0, x1, 1
some_label_for_btype_155457259242517844870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x7fffffffffffffff # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
bltu x8, x4, some_label_for_btype_155457259242517844871 # perform operation 
addi x0, x1, 1
some_label_for_btype_155457259242517844871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x3, 0x6324ff4088c1b391 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x8000000000000001 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
bltu x18, x29, some_label_for_btype_159653527208705092620 # perform operation 
addi x0, x1, 1
some_label_for_btype_159653527208705092620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x7ffffffffffffffe # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
bltu x18, x29, some_label_for_btype_159653527208705092621 # perform operation 
addi x0, x1, 1
some_label_for_btype_159653527208705092621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x7, 0x27a6e3dd16c8fda8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x8000000000000001 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
bltu x22, x1, some_label_for_btype_167192286035038248840 # perform operation 
addi x0, x1, 1
some_label_for_btype_167192286035038248840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
bltu x22, x1, some_label_for_btype_167192286035038248841 # perform operation 
addi x0, x1, 1
some_label_for_btype_167192286035038248841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x14, 0x46dfb721346f5a94 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x8000000000000001 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
bltu x11, x19, some_label_for_btype_153966272015815576530 # perform operation 
addi x0, x1, 1
some_label_for_btype_153966272015815576530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xfffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
bltu x11, x19, some_label_for_btype_153966272015815576531 # perform operation 
addi x0, x1, 1
some_label_for_btype_153966272015815576531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x17, 0x5e8b95ad1940c4a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x8000000000000001 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
bltu x3, x19, some_label_for_btype_153888922835762410280 # perform operation 
addi x0, x1, 1
some_label_for_btype_153888922835762410280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
bltu x3, x19, some_label_for_btype_153888922835762410281 # perform operation 
addi x0, x1, 1
some_label_for_btype_153888922835762410281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xfc3d270708df74a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x8000000000000001 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x16, x20, some_label_for_btype_122486561719795747580 # perform operation 
addi x0, x1, 1
some_label_for_btype_122486561719795747580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x16, x20, some_label_for_btype_122486561719795747581 # perform operation 
addi x0, x1, 1
some_label_for_btype_122486561719795747581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x12, 0x3c0392e64fa61765 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x8000000000000001 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
bltu x13, x7, some_label_for_btype_8052599129601582520 # perform operation 
addi x0, x1, 1
some_label_for_btype_8052599129601582520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x5555555555555555 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
bltu x13, x7, some_label_for_btype_8052599129601582521 # perform operation 
addi x0, x1, 1
some_label_for_btype_8052599129601582521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x14, 0x58466b622b960211 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x8000000000000001 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
bltu x21, x24, some_label_for_btype_87240298415102202120 # perform operation 
addi x0, x1, 1
some_label_for_btype_87240298415102202120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
bltu x21, x24, some_label_for_btype_87240298415102202121 # perform operation 
addi x0, x1, 1
some_label_for_btype_87240298415102202121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x4, 0x2e7499cf3eeb8b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x8000000000000001 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
bltu x28, x19, some_label_for_btype_170791754963658303940 # perform operation 
addi x0, x1, 1
some_label_for_btype_170791754963658303940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
bltu x28, x19, some_label_for_btype_170791754963658303941 # perform operation 
addi x0, x1, 1
some_label_for_btype_170791754963658303941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x6, 0x463b84d7c4a24357 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x8000000000000001 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
bltu x26, x24, some_label_for_btype_49814084252507771590 # perform operation 
addi x0, x1, 1
some_label_for_btype_49814084252507771590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
bltu x26, x24, some_label_for_btype_49814084252507771591 # perform operation 
addi x0, x1, 1
some_label_for_btype_49814084252507771591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x31, 0x0f669bf360488385 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x8000000000000001 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bltu x21, x18, some_label_for_btype_4025990502464919560 # perform operation 
addi x0, x1, 1
some_label_for_btype_4025990502464919560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000100000001 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bltu x21, x18, some_label_for_btype_4025990502464919561 # perform operation 
addi x0, x1, 1
some_label_for_btype_4025990502464919561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x6, 0x97d8b1dc4a80b620 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7fffffffffffffff # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
bltu x11, x23, some_label_for_btype_108160194332819192550 # perform operation 
addi x0, x1, 1
some_label_for_btype_108160194332819192550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000000000000 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
bltu x11, x23, some_label_for_btype_108160194332819192551 # perform operation 
addi x0, x1, 1
some_label_for_btype_108160194332819192551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x8, 0xce22262ca3e2c45a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
bltu x4, x10, some_label_for_btype_44097443101200350010 # perform operation 
addi x0, x1, 1
some_label_for_btype_44097443101200350010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
bltu x4, x10, some_label_for_btype_44097443101200350011 # perform operation 
addi x0, x1, 1
some_label_for_btype_44097443101200350011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x3, 0x351605ad397c71bd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
bltu x19, x22, some_label_for_btype_165788212242668797810 # perform operation 
addi x0, x1, 1
some_label_for_btype_165788212242668797810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
bltu x19, x22, some_label_for_btype_165788212242668797811 # perform operation 
addi x0, x1, 1
some_label_for_btype_165788212242668797811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x3, 0x70b1ffa786710d4b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x7fffffffffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
bltu x21, x6, some_label_for_btype_85463146161741586860 # perform operation 
addi x0, x1, 1
some_label_for_btype_85463146161741586860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x8000000000000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
bltu x21, x6, some_label_for_btype_85463146161741586861 # perform operation 
addi x0, x1, 1
some_label_for_btype_85463146161741586861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x3, 0x80d24faeed51d1ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x7fffffffffffffff # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
bltu x22, x11, some_label_for_btype_132231833404204924930 # perform operation 
addi x0, x1, 1
some_label_for_btype_132231833404204924930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x8000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
bltu x22, x11, some_label_for_btype_132231833404204924931 # perform operation 
addi x0, x1, 1
some_label_for_btype_132231833404204924931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x22, 0x41f63779c3cd3538 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7fffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
bltu x24, x26, some_label_for_btype_24600422308237966220 # perform operation 
addi x0, x1, 1
some_label_for_btype_24600422308237966220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x7fffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
bltu x24, x26, some_label_for_btype_24600422308237966221 # perform operation 
addi x0, x1, 1
some_label_for_btype_24600422308237966221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0x8827808cdbe45085 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7fffffffffffffff # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
bltu x18, x27, some_label_for_btype_156911451253781818950 # perform operation 
addi x0, x1, 1
some_label_for_btype_156911451253781818950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x7ffffffffffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
bltu x18, x27, some_label_for_btype_156911451253781818951 # perform operation 
addi x0, x1, 1
some_label_for_btype_156911451253781818951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x28, 0xe816c81c97e45241 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x7fffffffffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
bltu x12, x25, some_label_for_btype_66620364435195175260 # perform operation 
addi x0, x1, 1
some_label_for_btype_66620364435195175260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xffffffffffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
bltu x12, x25, some_label_for_btype_66620364435195175261 # perform operation 
addi x0, x1, 1
some_label_for_btype_66620364435195175261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x18, 0x67b3fa3cff64302c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x7fffffffffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
bltu x4, x16, some_label_for_btype_29986823974803577820 # perform operation 
addi x0, x1, 1
some_label_for_btype_29986823974803577820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
bltu x4, x16, some_label_for_btype_29986823974803577821 # perform operation 
addi x0, x1, 1
some_label_for_btype_29986823974803577821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x9, 0x94087feacaac04e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7fffffffffffffff # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
bltu x17, x20, some_label_for_btype_50744300102622236290 # perform operation 
addi x0, x1, 1
some_label_for_btype_50744300102622236290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
bltu x17, x20, some_label_for_btype_50744300102622236291 # perform operation 
addi x0, x1, 1
some_label_for_btype_50744300102622236291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x24d75d757252156d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7fffffffffffffff # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x24, x25, some_label_for_btype_40480151093514932680 # perform operation 
addi x0, x1, 1
some_label_for_btype_40480151093514932680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x24, x25, some_label_for_btype_40480151093514932681 # perform operation 
addi x0, x1, 1
some_label_for_btype_40480151093514932681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x4, 0x244c1238cc5a084e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x7fffffffffffffff # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
bltu x31, x13, some_label_for_btype_100368047669675934760 # perform operation 
addi x0, x1, 1
some_label_for_btype_100368047669675934760:
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
bltu x31, x13, some_label_for_btype_100368047669675934761 # perform operation 
addi x0, x1, 1
some_label_for_btype_100368047669675934761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x8, 0xc988fcc259b9b841 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x7fffffffffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bltu x5, x9, some_label_for_btype_158123186494224453970 # perform operation 
addi x0, x1, 1
some_label_for_btype_158123186494224453970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x00000000ffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bltu x5, x9, some_label_for_btype_158123186494224453971 # perform operation 
addi x0, x1, 1
some_label_for_btype_158123186494224453971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x28, 0xc2b88f12179b358b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x7fffffffffffffff # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
bltu x16, x27, some_label_for_btype_118533113100761989900 # perform operation 
addi x0, x1, 1
some_label_for_btype_118533113100761989900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
bltu x16, x27, some_label_for_btype_118533113100761989901 # perform operation 
addi x0, x1, 1
some_label_for_btype_118533113100761989901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x23, 0x44f1986181cc860e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
bltu x29, x13, some_label_for_btype_31828050504364695750 # perform operation 
addi x0, x1, 1
some_label_for_btype_31828050504364695750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
bltu x29, x13, some_label_for_btype_31828050504364695751 # perform operation 
addi x0, x1, 1
some_label_for_btype_31828050504364695751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x2, 0xeb7822065dfdfef8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
bltu x15, x3, some_label_for_btype_24853824257574068360 # perform operation 
addi x0, x1, 1
some_label_for_btype_24853824257574068360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
bltu x15, x3, some_label_for_btype_24853824257574068361 # perform operation 
addi x0, x1, 1
some_label_for_btype_24853824257574068361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x9, 0x5cf04764ab8072d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bltu x13, x18, some_label_for_btype_150835741565030389330 # perform operation 
addi x0, x1, 1
some_label_for_btype_150835741565030389330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bltu x13, x18, some_label_for_btype_150835741565030389331 # perform operation 
addi x0, x1, 1
some_label_for_btype_150835741565030389331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x10, 0x407a02dd82a4d9ab # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bltu x7, x23, some_label_for_btype_15050246567546110180 # perform operation 
addi x0, x1, 1
some_label_for_btype_15050246567546110180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bltu x7, x23, some_label_for_btype_15050246567546110181 # perform operation 
addi x0, x1, 1
some_label_for_btype_15050246567546110181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x27, 0x3871c027d8e6feeb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bltu x18, x21, some_label_for_btype_73256228388169182670 # perform operation 
addi x0, x1, 1
some_label_for_btype_73256228388169182670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bltu x18, x21, some_label_for_btype_73256228388169182671 # perform operation 
addi x0, x1, 1
some_label_for_btype_73256228388169182671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x19, 0x95a596c472925586 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x7ffffffffffffffe # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
bltu x10, x29, some_label_for_btype_117903923756204155000 # perform operation 
addi x0, x1, 1
some_label_for_btype_117903923756204155000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x8000000000000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
bltu x10, x29, some_label_for_btype_117903923756204155001 # perform operation 
addi x0, x1, 1
some_label_for_btype_117903923756204155001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x23, 0xe5026c89b797bcc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7ffffffffffffffe # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
bltu x18, x29, some_label_for_btype_63158236423062122430 # perform operation 
addi x0, x1, 1
some_label_for_btype_63158236423062122430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
bltu x18, x29, some_label_for_btype_63158236423062122431 # perform operation 
addi x0, x1, 1
some_label_for_btype_63158236423062122431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x29, 0xcb9e69bc85e5aa56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bltu x31, x28, some_label_for_btype_24617779939050257640 # perform operation 
addi x0, x1, 1
some_label_for_btype_24617779939050257640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7fffffffffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bltu x31, x28, some_label_for_btype_24617779939050257641 # perform operation 
addi x0, x1, 1
some_label_for_btype_24617779939050257641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0x81b98481b14edf1c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
bltu x28, x30, some_label_for_btype_61405894255527321640 # perform operation 
addi x0, x1, 1
some_label_for_btype_61405894255527321640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
bltu x28, x30, some_label_for_btype_61405894255527321641 # perform operation 
addi x0, x1, 1
some_label_for_btype_61405894255527321641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x9, 0x17ba481c92ff32ec # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7ffffffffffffffe # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
bltu x28, x30, some_label_for_btype_88557704327245210580 # perform operation 
addi x0, x1, 1
some_label_for_btype_88557704327245210580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xffffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
bltu x28, x30, some_label_for_btype_88557704327245210581 # perform operation 
addi x0, x1, 1
some_label_for_btype_88557704327245210581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x25, 0x30c0d5eb95f785c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x7ffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
bltu x2, x8, some_label_for_btype_73211969881127083430 # perform operation 
addi x0, x1, 1
some_label_for_btype_73211969881127083430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xfffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
bltu x2, x8, some_label_for_btype_73211969881127083431 # perform operation 
addi x0, x1, 1
some_label_for_btype_73211969881127083431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x26, 0x8a5d672fc0e9c841 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x7ffffffffffffffe # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
bltu x2, x1, some_label_for_btype_86816032762189787220 # perform operation 
addi x0, x1, 1
some_label_for_btype_86816032762189787220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
bltu x2, x1, some_label_for_btype_86816032762189787221 # perform operation 
addi x0, x1, 1
some_label_for_btype_86816032762189787221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x5f039e653f65dfa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x7ffffffffffffffe # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x7, x21, some_label_for_btype_117798175515082110160 # perform operation 
addi x0, x1, 1
some_label_for_btype_117798175515082110160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x7, x21, some_label_for_btype_117798175515082110161 # perform operation 
addi x0, x1, 1
some_label_for_btype_117798175515082110161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x13, 0xd86b5de08589c757 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x7ffffffffffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
bltu x8, x17, some_label_for_btype_52309603661167028180 # perform operation 
addi x0, x1, 1
some_label_for_btype_52309603661167028180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x5555555555555555 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
bltu x8, x17, some_label_for_btype_52309603661167028181 # perform operation 
addi x0, x1, 1
some_label_for_btype_52309603661167028181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x1, 0x0371043a73d2d38e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7ffffffffffffffe # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
bltu x11, x6, some_label_for_btype_37804891506225735260 # perform operation 
addi x0, x1, 1
some_label_for_btype_37804891506225735260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x00000000ffffffff # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
bltu x11, x6, some_label_for_btype_37804891506225735261 # perform operation 
addi x0, x1, 1
some_label_for_btype_37804891506225735261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x15, 0xe55377957ba90aae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x7ffffffffffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
bltu x27, x22, some_label_for_btype_165791545094405455580 # perform operation 
addi x0, x1, 1
some_label_for_btype_165791545094405455580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x00000000fffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
bltu x27, x22, some_label_for_btype_165791545094405455581 # perform operation 
addi x0, x1, 1
some_label_for_btype_165791545094405455581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x14, 0x3ccf87ce559123d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
bltu x15, x19, some_label_for_btype_164065622317070464300 # perform operation 
addi x0, x1, 1
some_label_for_btype_164065622317070464300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000100000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
bltu x15, x19, some_label_for_btype_164065622317070464301 # perform operation 
addi x0, x1, 1
some_label_for_btype_164065622317070464301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x4, 0x78d0c67ff584998d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bltu x12, x18, some_label_for_btype_105741791377962532310 # perform operation 
addi x0, x1, 1
some_label_for_btype_105741791377962532310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x0000000100000001 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bltu x12, x18, some_label_for_btype_105741791377962532311 # perform operation 
addi x0, x1, 1
some_label_for_btype_105741791377962532311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x6, 0xb960396a8c73d937 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
bltu x30, x4, some_label_for_btype_171878895631475157700 # perform operation 
addi x0, x1, 1
some_label_for_btype_171878895631475157700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0000000000000000 # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
bltu x30, x4, some_label_for_btype_171878895631475157701 # perform operation 
addi x0, x1, 1
some_label_for_btype_171878895631475157701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x31, 0xd0af63e1e794b5d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
bltu x19, x24, some_label_for_btype_28643996628362371450 # perform operation 
addi x0, x1, 1
some_label_for_btype_28643996628362371450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
bltu x19, x24, some_label_for_btype_28643996628362371451 # perform operation 
addi x0, x1, 1
some_label_for_btype_28643996628362371451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x26, 0xedefae22c14fb8aa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
bltu x11, x23, some_label_for_btype_14974225266654977290 # perform operation 
addi x0, x1, 1
some_label_for_btype_14974225266654977290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
bltu x11, x23, some_label_for_btype_14974225266654977291 # perform operation 
addi x0, x1, 1
some_label_for_btype_14974225266654977291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x30, 0x87635fb735c2f7e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xffffffffffffffff # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bltu x15, x5, some_label_for_btype_51180449297477215530 # perform operation 
addi x0, x1, 1
some_label_for_btype_51180449297477215530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x8000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bltu x15, x5, some_label_for_btype_51180449297477215531 # perform operation 
addi x0, x1, 1
some_label_for_btype_51180449297477215531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x13, 0x1437cf5574252615 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xffffffffffffffff # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
bltu x19, x22, some_label_for_btype_10822285389997565110 # perform operation 
addi x0, x1, 1
some_label_for_btype_10822285389997565110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x8000000000000001 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
bltu x19, x22, some_label_for_btype_10822285389997565111 # perform operation 
addi x0, x1, 1
some_label_for_btype_10822285389997565111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x29, 0xb7e8b91dd2914b02 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xffffffffffffffff # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
bltu x20, x10, some_label_for_btype_135857412988377395630 # perform operation 
addi x0, x1, 1
some_label_for_btype_135857412988377395630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x7fffffffffffffff # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
bltu x20, x10, some_label_for_btype_135857412988377395631 # perform operation 
addi x0, x1, 1
some_label_for_btype_135857412988377395631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0xa56bf168fcd8669d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xffffffffffffffff # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
bltu x18, x30, some_label_for_btype_42817728814913003330 # perform operation 
addi x0, x1, 1
some_label_for_btype_42817728814913003330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
bltu x18, x30, some_label_for_btype_42817728814913003331 # perform operation 
addi x0, x1, 1
some_label_for_btype_42817728814913003331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x20, 0x58bbe6c432cb0f57 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xffffffffffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bltu x21, x12, some_label_for_btype_159876708923425261230 # perform operation 
addi x0, x1, 1
some_label_for_btype_159876708923425261230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xffffffffffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bltu x21, x12, some_label_for_btype_159876708923425261231 # perform operation 
addi x0, x1, 1
some_label_for_btype_159876708923425261231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x9, 0xc221053c2c324c02 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xffffffffffffffff # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bltu x16, x11, some_label_for_btype_172487180041955980170 # perform operation 
addi x0, x1, 1
some_label_for_btype_172487180041955980170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bltu x16, x11, some_label_for_btype_172487180041955980171 # perform operation 
addi x0, x1, 1
some_label_for_btype_172487180041955980171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x8, 0xfb04964ccd7696c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xffffffffffffffff # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
bltu x24, x21, some_label_for_btype_17130937854831809300 # perform operation 
addi x0, x1, 1
some_label_for_btype_17130937854831809300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
bltu x24, x21, some_label_for_btype_17130937854831809301 # perform operation 
addi x0, x1, 1
some_label_for_btype_17130937854831809301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xf05cd7f933c98a38 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xffffffffffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x25, x23, some_label_for_btype_64142973684889700540 # perform operation 
addi x0, x1, 1
some_label_for_btype_64142973684889700540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x25, x23, some_label_for_btype_64142973684889700541 # perform operation 
addi x0, x1, 1
some_label_for_btype_64142973684889700541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x9, 0x5ad2f1af367f5264 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xffffffffffffffff # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
bltu x15, x4, some_label_for_btype_172493373138476468720 # perform operation 
addi x0, x1, 1
some_label_for_btype_172493373138476468720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x5555555555555555 # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
bltu x15, x4, some_label_for_btype_172493373138476468721 # perform operation 
addi x0, x1, 1
some_label_for_btype_172493373138476468721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x28, 0xe8ddacc3717c66a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xffffffffffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
bltu x14, x8, some_label_for_btype_42379621941949577750 # perform operation 
addi x0, x1, 1
some_label_for_btype_42379621941949577750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000000ffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
bltu x14, x8, some_label_for_btype_42379621941949577751 # perform operation 
addi x0, x1, 1
some_label_for_btype_42379621941949577751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x10, 0xca9259c40d35df2c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
bltu x31, x21, some_label_for_btype_13266142715676583050 # perform operation 
addi x0, x1, 1
some_label_for_btype_13266142715676583050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x00000000fffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
bltu x31, x21, some_label_for_btype_13266142715676583051 # perform operation 
addi x0, x1, 1
some_label_for_btype_13266142715676583051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x9, 0x1b178795734ccbca # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
bltu x10, x2, some_label_for_btype_155992881270450196100 # perform operation 
addi x0, x1, 1
some_label_for_btype_155992881270450196100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
bltu x10, x2, some_label_for_btype_155992881270450196101 # perform operation 
addi x0, x1, 1
some_label_for_btype_155992881270450196101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x16, 0x9057952ef8db02d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
bltu x12, x14, some_label_for_btype_153337001374810102480 # perform operation 
addi x0, x1, 1
some_label_for_btype_153337001374810102480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x0000000100000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
bltu x12, x14, some_label_for_btype_153337001374810102481 # perform operation 
addi x0, x1, 1
some_label_for_btype_153337001374810102481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x3, 0x0c2b7ec427698f26 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xfffffffffffffffe # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
bltu x21, x1, some_label_for_btype_731889946708084440 # perform operation 
addi x0, x1, 1
some_label_for_btype_731889946708084440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
bltu x21, x1, some_label_for_btype_731889946708084441 # perform operation 
addi x0, x1, 1
some_label_for_btype_731889946708084441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x19, 0x92d6f0a488053250 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bltu x1, x23, some_label_for_btype_141584847481082834620 # perform operation 
addi x0, x1, 1
some_label_for_btype_141584847481082834620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bltu x1, x23, some_label_for_btype_141584847481082834621 # perform operation 
addi x0, x1, 1
some_label_for_btype_141584847481082834621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x6, 0x78e9b6f7be219c37 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
bltu x21, x2, some_label_for_btype_80185613294230691580 # perform operation 
addi x0, x1, 1
some_label_for_btype_80185613294230691580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
bltu x21, x2, some_label_for_btype_80185613294230691581 # perform operation 
addi x0, x1, 1
some_label_for_btype_80185613294230691581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x26, 0x4051e4f67e4cd188 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xfffffffffffffffe # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
bltu x1, x3, some_label_for_btype_102211478452559535780 # perform operation 
addi x0, x1, 1
some_label_for_btype_102211478452559535780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
bltu x1, x3, some_label_for_btype_102211478452559535781 # perform operation 
addi x0, x1, 1
some_label_for_btype_102211478452559535781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x30, 0x1c8346d0b8d3785d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xfffffffffffffffe # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
bltu x27, x23, some_label_for_btype_180670357923304295980 # perform operation 
addi x0, x1, 1
some_label_for_btype_180670357923304295980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x8000000000000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
bltu x27, x23, some_label_for_btype_180670357923304295981 # perform operation 
addi x0, x1, 1
some_label_for_btype_180670357923304295981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x8, 0x3baf35c8b3154fe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xfffffffffffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
bltu x20, x1, some_label_for_btype_154944258480172371940 # perform operation 
addi x0, x1, 1
some_label_for_btype_154944258480172371940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x7fffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
bltu x20, x1, some_label_for_btype_154944258480172371941 # perform operation 
addi x0, x1, 1
some_label_for_btype_154944258480172371941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x18, 0x7441a6a68342eae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xfffffffffffffffe # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
bltu x13, x29, some_label_for_btype_142564144254547809550 # perform operation 
addi x0, x1, 1
some_label_for_btype_142564144254547809550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x7ffffffffffffffe # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
bltu x13, x29, some_label_for_btype_142564144254547809551 # perform operation 
addi x0, x1, 1
some_label_for_btype_142564144254547809551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0xa96760c0928c86d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xfffffffffffffffe # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
bltu x31, x19, some_label_for_btype_109690534213716645370 # perform operation 
addi x0, x1, 1
some_label_for_btype_109690534213716645370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
bltu x31, x19, some_label_for_btype_109690534213716645371 # perform operation 
addi x0, x1, 1
some_label_for_btype_109690534213716645371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x11, 0x85b2b1b35b1b93a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xfffffffffffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
bltu x4, x18, some_label_for_btype_158377659993838209300 # perform operation 
addi x0, x1, 1
some_label_for_btype_158377659993838209300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xfffffffffffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
bltu x4, x18, some_label_for_btype_158377659993838209301 # perform operation 
addi x0, x1, 1
some_label_for_btype_158377659993838209301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x20, 0x7e3bce1284389b4a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xfffffffffffffffe # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
bltu x14, x9, some_label_for_btype_90946772452570314670 # perform operation 
addi x0, x1, 1
some_label_for_btype_90946772452570314670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
bltu x14, x9, some_label_for_btype_90946772452570314671 # perform operation 
addi x0, x1, 1
some_label_for_btype_90946772452570314671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x459c849851f1c720 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xfffffffffffffffe # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x9, x6, some_label_for_btype_52716198952021968890 # perform operation 
addi x0, x1, 1
some_label_for_btype_52716198952021968890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x9, x6, some_label_for_btype_52716198952021968891 # perform operation 
addi x0, x1, 1
some_label_for_btype_52716198952021968891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x24, 0xfcd3b31aad1ca6e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xfffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
bltu x19, x8, some_label_for_btype_111364111730481829770 # perform operation 
addi x0, x1, 1
some_label_for_btype_111364111730481829770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x5555555555555555 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
bltu x19, x8, some_label_for_btype_111364111730481829771 # perform operation 
addi x0, x1, 1
some_label_for_btype_111364111730481829771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x24, 0x6e64b91fba252241 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xfffffffffffffffe # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bltu x17, x5, some_label_for_btype_31913939045307588250 # perform operation 
addi x0, x1, 1
some_label_for_btype_31913939045307588250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bltu x17, x5, some_label_for_btype_31913939045307588251 # perform operation 
addi x0, x1, 1
some_label_for_btype_31913939045307588251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x4, 0x3afa793cf970f1e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xfffffffffffffffe # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
bltu x17, x14, some_label_for_btype_32997359066264125820 # perform operation 
addi x0, x1, 1
some_label_for_btype_32997359066264125820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000000fffffffe # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
bltu x17, x14, some_label_for_btype_32997359066264125821 # perform operation 
addi x0, x1, 1
some_label_for_btype_32997359066264125821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x20, 0xdbfe4b5c13785bc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bltu x1, x7, some_label_for_btype_62373577626525769850 # perform operation 
addi x0, x1, 1
some_label_for_btype_62373577626525769850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000100000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bltu x1, x7, some_label_for_btype_62373577626525769851 # perform operation 
addi x0, x1, 1
some_label_for_btype_62373577626525769851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x8, 0x6cb36ddc5d4af2d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
bltu x16, x22, some_label_for_btype_163982158864291198570 # perform operation 
addi x0, x1, 1
some_label_for_btype_163982158864291198570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
bltu x16, x22, some_label_for_btype_163982158864291198571 # perform operation 
addi x0, x1, 1
some_label_for_btype_163982158864291198571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x28, 0x9d22f61ac0a69190 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bltu x15, x27, some_label_for_btype_104690339958749742240 # perform operation 
addi x0, x1, 1
some_label_for_btype_104690339958749742240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bltu x15, x27, some_label_for_btype_104690339958749742241 # perform operation 
addi x0, x1, 1
some_label_for_btype_104690339958749742241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x9, 0xfb12f699517cba77 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bltu x3, x5, some_label_for_btype_15932044897139421780 # perform operation 
addi x0, x1, 1
some_label_for_btype_15932044897139421780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x0000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bltu x3, x5, some_label_for_btype_15932044897139421781 # perform operation 
addi x0, x1, 1
some_label_for_btype_15932044897139421781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x27, 0x918149e8aedae2bc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bltu x13, x15, some_label_for_btype_159356981881896036580 # perform operation 
addi x0, x1, 1
some_label_for_btype_159356981881896036580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x0000000000000002 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bltu x13, x15, some_label_for_btype_159356981881896036581 # perform operation 
addi x0, x1, 1
some_label_for_btype_159356981881896036581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x16, 0x3523d504b45f8bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
bltu x26, x23, some_label_for_btype_54180940680352639820 # perform operation 
addi x0, x1, 1
some_label_for_btype_54180940680352639820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x8000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
bltu x26, x23, some_label_for_btype_54180940680352639821 # perform operation 
addi x0, x1, 1
some_label_for_btype_54180940680352639821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x19, 0xae68d66e6a4bb36d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
bltu x13, x31, some_label_for_btype_37930723710605265110 # perform operation 
addi x0, x1, 1
some_label_for_btype_37930723710605265110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
bltu x13, x31, some_label_for_btype_37930723710605265111 # perform operation 
addi x0, x1, 1
some_label_for_btype_37930723710605265111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x3, 0x8f47fa34d9ad0251 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bltu x23, x18, some_label_for_btype_113065000460631125690 # perform operation 
addi x0, x1, 1
some_label_for_btype_113065000460631125690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x7fffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bltu x23, x18, some_label_for_btype_113065000460631125691 # perform operation 
addi x0, x1, 1
some_label_for_btype_113065000460631125691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x6, 0x356c83732c39e338 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
bltu x21, x3, some_label_for_btype_169537307136858162800 # perform operation 
addi x0, x1, 1
some_label_for_btype_169537307136858162800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x7ffffffffffffffe # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
bltu x21, x3, some_label_for_btype_169537307136858162801 # perform operation 
addi x0, x1, 1
some_label_for_btype_169537307136858162801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x24, 0x93c784b2d0e71594 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
bltu x21, x19, some_label_for_btype_130341278412004589630 # perform operation 
addi x0, x1, 1
some_label_for_btype_130341278412004589630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
bltu x21, x19, some_label_for_btype_130341278412004589631 # perform operation 
addi x0, x1, 1
some_label_for_btype_130341278412004589631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x28, 0x2d2d5d396f3e0a13 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
bltu x6, x18, some_label_for_btype_42913730341207974450 # perform operation 
addi x0, x1, 1
some_label_for_btype_42913730341207974450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xfffffffffffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
bltu x6, x18, some_label_for_btype_42913730341207974451 # perform operation 
addi x0, x1, 1
some_label_for_btype_42913730341207974451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x10, 0xdcdb4e7f87735b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
bltu x28, x31, some_label_for_btype_89655930659531159170 # perform operation 
addi x0, x1, 1
some_label_for_btype_89655930659531159170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
bltu x28, x31, some_label_for_btype_89655930659531159171 # perform operation 
addi x0, x1, 1
some_label_for_btype_89655930659531159171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0xe13adfed8a9514c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x12, x8, some_label_for_btype_103513134121682330740 # perform operation 
addi x0, x1, 1
some_label_for_btype_103513134121682330740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x12, x8, some_label_for_btype_103513134121682330741 # perform operation 
addi x0, x1, 1
some_label_for_btype_103513134121682330741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x25, 0xf6ab2a85740ee15a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bltu x5, x9, some_label_for_btype_95160800090225183900 # perform operation 
addi x0, x1, 1
some_label_for_btype_95160800090225183900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x5555555555555555 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bltu x5, x9, some_label_for_btype_95160800090225183901 # perform operation 
addi x0, x1, 1
some_label_for_btype_95160800090225183901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x17, 0xd9be962c19dbc646 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bltu x19, x30, some_label_for_btype_28515031315403450310 # perform operation 
addi x0, x1, 1
some_label_for_btype_28515031315403450310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bltu x19, x30, some_label_for_btype_28515031315403450311 # perform operation 
addi x0, x1, 1
some_label_for_btype_28515031315403450311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x25, 0xe3e9af1ceadfdab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
bltu x21, x26, some_label_for_btype_27088995836560412740 # perform operation 
addi x0, x1, 1
some_label_for_btype_27088995836560412740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000000fffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
bltu x21, x26, some_label_for_btype_27088995836560412741 # perform operation 
addi x0, x1, 1
some_label_for_btype_27088995836560412741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x19, 0xe1d95b013cfe755c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
bltu x26, x14, some_label_for_btype_181057180389369284260 # perform operation 
addi x0, x1, 1
some_label_for_btype_181057180389369284260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000100000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
bltu x26, x14, some_label_for_btype_181057180389369284261 # perform operation 
addi x0, x1, 1
some_label_for_btype_181057180389369284261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x1, 0x733d06a82b17fd8c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bltu x4, x10, some_label_for_btype_81512458514646648520 # perform operation 
addi x0, x1, 1
some_label_for_btype_81512458514646648520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bltu x4, x10, some_label_for_btype_81512458514646648521 # perform operation 
addi x0, x1, 1
some_label_for_btype_81512458514646648521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x29, 0xa1b72b4d790eab0b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bltu x14, x7, some_label_for_btype_62538097690919500470 # perform operation 
addi x0, x1, 1
some_label_for_btype_62538097690919500470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bltu x14, x7, some_label_for_btype_62538097690919500471 # perform operation 
addi x0, x1, 1
some_label_for_btype_62538097690919500471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x20, 0xcec81078a2723c15 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bltu x13, x23, some_label_for_btype_40585864632483590350 # perform operation 
addi x0, x1, 1
some_label_for_btype_40585864632483590350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bltu x13, x23, some_label_for_btype_40585864632483590351 # perform operation 
addi x0, x1, 1
some_label_for_btype_40585864632483590351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x30, 0x94e6227521915b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bltu x15, x14, some_label_for_btype_137997747901237426450 # perform operation 
addi x0, x1, 1
some_label_for_btype_137997747901237426450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bltu x15, x14, some_label_for_btype_137997747901237426451 # perform operation 
addi x0, x1, 1
some_label_for_btype_137997747901237426451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x18, 0x52e2e4143f938ab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bltu x23, x13, some_label_for_btype_178127321021608582770 # perform operation 
addi x0, x1, 1
some_label_for_btype_178127321021608582770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x8000000000000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bltu x23, x13, some_label_for_btype_178127321021608582771 # perform operation 
addi x0, x1, 1
some_label_for_btype_178127321021608582771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x5, 0x26274adcff833f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
bltu x20, x10, some_label_for_btype_28994743067320437070 # perform operation 
addi x0, x1, 1
some_label_for_btype_28994743067320437070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x8000000000000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
bltu x20, x10, some_label_for_btype_28994743067320437071 # perform operation 
addi x0, x1, 1
some_label_for_btype_28994743067320437071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x11, 0x0ba56b8f18a33afa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
bltu x29, x9, some_label_for_btype_10772223239203635670 # perform operation 
addi x0, x1, 1
some_label_for_btype_10772223239203635670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x7fffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
bltu x29, x9, some_label_for_btype_10772223239203635671 # perform operation 
addi x0, x1, 1
some_label_for_btype_10772223239203635671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x20, 0x08ad52ef189d24d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bltu x1, x25, some_label_for_btype_4471472916411313120 # perform operation 
addi x0, x1, 1
some_label_for_btype_4471472916411313120:
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
bltu x1, x25, some_label_for_btype_4471472916411313121 # perform operation 
addi x0, x1, 1
some_label_for_btype_4471472916411313121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x12, 0xcb60bc90e93d41ff # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
bltu x25, x8, some_label_for_btype_18440122515861588840 # perform operation 
addi x0, x1, 1
some_label_for_btype_18440122515861588840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xffffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
bltu x25, x8, some_label_for_btype_18440122515861588841 # perform operation 
addi x0, x1, 1
some_label_for_btype_18440122515861588841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x14, 0x90c1124720565a4d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bltu x12, x22, some_label_for_btype_23484551676610502930 # perform operation 
addi x0, x1, 1
some_label_for_btype_23484551676610502930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xfffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bltu x12, x22, some_label_for_btype_23484551676610502931 # perform operation 
addi x0, x1, 1
some_label_for_btype_23484551676610502931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x8, 0xdcfcb052c604cd99 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
bltu x14, x30, some_label_for_btype_75726467772150061770 # perform operation 
addi x0, x1, 1
some_label_for_btype_75726467772150061770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
bltu x14, x30, some_label_for_btype_75726467772150061771 # perform operation 
addi x0, x1, 1
some_label_for_btype_75726467772150061771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x455d84de8e7042c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x26, x20, some_label_for_btype_121824984188053349990 # perform operation 
addi x0, x1, 1
some_label_for_btype_121824984188053349990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x26, x20, some_label_for_btype_121824984188053349991 # perform operation 
addi x0, x1, 1
some_label_for_btype_121824984188053349991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x29, 0x8388717f1ebb472b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bltu x31, x21, some_label_for_btype_31406023990248699380 # perform operation 
addi x0, x1, 1
some_label_for_btype_31406023990248699380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x5555555555555555 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bltu x31, x21, some_label_for_btype_31406023990248699381 # perform operation 
addi x0, x1, 1
some_label_for_btype_31406023990248699381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x12, 0x65f0e322cd030b14 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bltu x27, x31, some_label_for_btype_181169600457803437210 # perform operation 
addi x0, x1, 1
some_label_for_btype_181169600457803437210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bltu x27, x31, some_label_for_btype_181169600457803437211 # perform operation 
addi x0, x1, 1
some_label_for_btype_181169600457803437211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x22, 0x28c3c400aca13a9f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
bltu x23, x1, some_label_for_btype_105515874957988605640 # perform operation 
addi x0, x1, 1
some_label_for_btype_105515874957988605640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000000fffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
bltu x23, x1, some_label_for_btype_105515874957988605641 # perform operation 
addi x0, x1, 1
some_label_for_btype_105515874957988605641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x5, 0xab5a29be37db37bd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bltu x13, x29, some_label_for_btype_45394105919073586910 # perform operation 
addi x0, x1, 1
some_label_for_btype_45394105919073586910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bltu x13, x29, some_label_for_btype_45394105919073586911 # perform operation 
addi x0, x1, 1
some_label_for_btype_45394105919073586911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x23, 0x61860b882860e8cd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
bltu x7, x31, some_label_for_btype_55870708484986260900 # perform operation 
addi x0, x1, 1
some_label_for_btype_55870708484986260900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000100000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
bltu x7, x31, some_label_for_btype_55870708484986260901 # perform operation 
addi x0, x1, 1
some_label_for_btype_55870708484986260901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x10, 0x587a499d158b5ade # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x5555555555555555 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
bltu x24, x17, some_label_for_btype_166843862740780509720 # perform operation 
addi x0, x1, 1
some_label_for_btype_166843862740780509720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
bltu x24, x17, some_label_for_btype_166843862740780509721 # perform operation 
addi x0, x1, 1
some_label_for_btype_166843862740780509721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x30, 0xa5e18db76a38119c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x5555555555555555 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bltu x15, x2, some_label_for_btype_54976036644581855350 # perform operation 
addi x0, x1, 1
some_label_for_btype_54976036644581855350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bltu x15, x2, some_label_for_btype_54976036644581855351 # perform operation 
addi x0, x1, 1
some_label_for_btype_54976036644581855351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x14, 0xab3ea1c1b9ae2728 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x5555555555555555 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
bltu x7, x3, some_label_for_btype_25267002282526120860 # perform operation 
addi x0, x1, 1
some_label_for_btype_25267002282526120860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
bltu x7, x3, some_label_for_btype_25267002282526120861 # perform operation 
addi x0, x1, 1
some_label_for_btype_25267002282526120861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x19, 0x59a056119d9399ff # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x5555555555555555 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
bltu x7, x18, some_label_for_btype_161352190364418431470 # perform operation 
addi x0, x1, 1
some_label_for_btype_161352190364418431470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
bltu x7, x18, some_label_for_btype_161352190364418431471 # perform operation 
addi x0, x1, 1
some_label_for_btype_161352190364418431471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x20, 0xb04c95ac4305978e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x5555555555555555 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
bltu x24, x9, some_label_for_btype_102032603688143293730 # perform operation 
addi x0, x1, 1
some_label_for_btype_102032603688143293730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x8000000000000001 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
bltu x24, x9, some_label_for_btype_102032603688143293731 # perform operation 
addi x0, x1, 1
some_label_for_btype_102032603688143293731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x24, 0xd6c6b04f116932b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x5555555555555555 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bltu x29, x22, some_label_for_btype_141290129474097792330 # perform operation 
addi x0, x1, 1
some_label_for_btype_141290129474097792330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bltu x29, x22, some_label_for_btype_141290129474097792331 # perform operation 
addi x0, x1, 1
some_label_for_btype_141290129474097792331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x26, 0xd483f880fa4b8c42 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x5555555555555555 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bltu x6, x23, some_label_for_btype_30962574826436940530 # perform operation 
addi x0, x1, 1
some_label_for_btype_30962574826436940530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bltu x6, x23, some_label_for_btype_30962574826436940531 # perform operation 
addi x0, x1, 1
some_label_for_btype_30962574826436940531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x5, 0x2a2b7219163d2ccb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x5555555555555555 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
bltu x23, x2, some_label_for_btype_2643168082047283050 # perform operation 
addi x0, x1, 1
some_label_for_btype_2643168082047283050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
bltu x23, x2, some_label_for_btype_2643168082047283051 # perform operation 
addi x0, x1, 1
some_label_for_btype_2643168082047283051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x4, 0x0e3211b6b29714ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x5555555555555555 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bltu x10, x22, some_label_for_btype_169420441086995976030 # perform operation 
addi x0, x1, 1
some_label_for_btype_169420441086995976030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xfffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bltu x10, x22, some_label_for_btype_169420441086995976031 # perform operation 
addi x0, x1, 1
some_label_for_btype_169420441086995976031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x6, 0xe450f2a7eb3af017 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5555555555555555 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
bltu x5, x16, some_label_for_btype_156561180214769469110 # perform operation 
addi x0, x1, 1
some_label_for_btype_156561180214769469110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
bltu x5, x16, some_label_for_btype_156561180214769469111 # perform operation 
addi x0, x1, 1
some_label_for_btype_156561180214769469111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xa30a92ea62e5ba64 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x5555555555555555 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x18, x8, some_label_for_btype_115756655640193725690 # perform operation 
addi x0, x1, 1
some_label_for_btype_115756655640193725690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x18, x8, some_label_for_btype_115756655640193725691 # perform operation 
addi x0, x1, 1
some_label_for_btype_115756655640193725691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x3, 0x5df1c92d31c33f59 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x5555555555555555 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bltu x12, x31, some_label_for_btype_179100111311020419660 # perform operation 
addi x0, x1, 1
some_label_for_btype_179100111311020419660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x5555555555555555 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bltu x12, x31, some_label_for_btype_179100111311020419661 # perform operation 
addi x0, x1, 1
some_label_for_btype_179100111311020419661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x5, 0xb7932005c781e162 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x5555555555555555 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
bltu x18, x24, some_label_for_btype_168186656656674405150 # perform operation 
addi x0, x1, 1
some_label_for_btype_168186656656674405150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
bltu x18, x24, some_label_for_btype_168186656656674405151 # perform operation 
addi x0, x1, 1
some_label_for_btype_168186656656674405151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x11, 0x0396341a5a600d1a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x5555555555555555 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
bltu x4, x23, some_label_for_btype_47589901856165120570 # perform operation 
addi x0, x1, 1
some_label_for_btype_47589901856165120570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
bltu x4, x23, some_label_for_btype_47589901856165120571 # perform operation 
addi x0, x1, 1
some_label_for_btype_47589901856165120571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x26, 0xcf273a289613c47d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x5555555555555555 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
bltu x20, x28, some_label_for_btype_25748957314676795410 # perform operation 
addi x0, x1, 1
some_label_for_btype_25748957314676795410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x0000000100000000 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
bltu x20, x28, some_label_for_btype_25748957314676795411 # perform operation 
addi x0, x1, 1
some_label_for_btype_25748957314676795411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x9, 0x0c0a084c27c68ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x5555555555555555 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
bltu x16, x6, some_label_for_btype_4970015395338278560 # perform operation 
addi x0, x1, 1
some_label_for_btype_4970015395338278560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0000000100000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
bltu x16, x6, some_label_for_btype_4970015395338278561 # perform operation 
addi x0, x1, 1
some_label_for_btype_4970015395338278561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x12, 0x4788543c084aac1f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
bltu x8, x17, some_label_for_btype_12902841883531707490 # perform operation 
addi x0, x1, 1
some_label_for_btype_12902841883531707490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
bltu x8, x17, some_label_for_btype_12902841883531707491 # perform operation 
addi x0, x1, 1
some_label_for_btype_12902841883531707491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x21, 0xe8c86cf8aec49cf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bltu x9, x29, some_label_for_btype_112115126191654940540 # perform operation 
addi x0, x1, 1
some_label_for_btype_112115126191654940540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bltu x9, x29, some_label_for_btype_112115126191654940541 # perform operation 
addi x0, x1, 1
some_label_for_btype_112115126191654940541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x31, 0x4a56f1350e6dbdc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
bltu x8, x23, some_label_for_btype_167275452259083307710 # perform operation 
addi x0, x1, 1
some_label_for_btype_167275452259083307710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
bltu x8, x23, some_label_for_btype_167275452259083307711 # perform operation 
addi x0, x1, 1
some_label_for_btype_167275452259083307711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x30, 0x6059da93c8d5b66c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000000ffffffff # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
bltu x14, x12, some_label_for_btype_4883207256284759170 # perform operation 
addi x0, x1, 1
some_label_for_btype_4883207256284759170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x8000000000000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
bltu x14, x12, some_label_for_btype_4883207256284759171 # perform operation 
addi x0, x1, 1
some_label_for_btype_4883207256284759171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x1, 0xf761aacf2b499d9a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x00000000ffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
bltu x24, x17, some_label_for_btype_182557413642030414760 # perform operation 
addi x0, x1, 1
some_label_for_btype_182557413642030414760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
bltu x24, x17, some_label_for_btype_182557413642030414761 # perform operation 
addi x0, x1, 1
some_label_for_btype_182557413642030414761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x30, 0x6b2dceb52200125a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x00000000ffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
bltu x29, x5, some_label_for_btype_5719205627070154190 # perform operation 
addi x0, x1, 1
some_label_for_btype_5719205627070154190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x7fffffffffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
bltu x29, x5, some_label_for_btype_5719205627070154191 # perform operation 
addi x0, x1, 1
some_label_for_btype_5719205627070154191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0xb1a7ec32b0123434 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x00000000ffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
bltu x26, x28, some_label_for_btype_177791680195359715260 # perform operation 
addi x0, x1, 1
some_label_for_btype_177791680195359715260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
bltu x26, x28, some_label_for_btype_177791680195359715261 # perform operation 
addi x0, x1, 1
some_label_for_btype_177791680195359715261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x30, 0x4dc5ce017ebf88b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x00000000ffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bltu x21, x15, some_label_for_btype_120244850109275241440 # perform operation 
addi x0, x1, 1
some_label_for_btype_120244850109275241440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xffffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bltu x21, x15, some_label_for_btype_120244850109275241441 # perform operation 
addi x0, x1, 1
some_label_for_btype_120244850109275241441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x5, 0xf6032a0a45151bc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x00000000ffffffff # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
bltu x26, x12, some_label_for_btype_43419737632445753250 # perform operation 
addi x0, x1, 1
some_label_for_btype_43419737632445753250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xfffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
bltu x26, x12, some_label_for_btype_43419737632445753251 # perform operation 
addi x0, x1, 1
some_label_for_btype_43419737632445753251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x21, 0x9aded139f6ef6051 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x00000000ffffffff # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
bltu x23, x4, some_label_for_btype_177145522159893108560 # perform operation 
addi x0, x1, 1
some_label_for_btype_177145522159893108560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
bltu x23, x4, some_label_for_btype_177145522159893108561 # perform operation 
addi x0, x1, 1
some_label_for_btype_177145522159893108561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x1fc322b3c828efcb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000000ffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x15, x20, some_label_for_btype_152900410816168725510 # perform operation 
addi x0, x1, 1
some_label_for_btype_152900410816168725510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x15, x20, some_label_for_btype_152900410816168725511 # perform operation 
addi x0, x1, 1
some_label_for_btype_152900410816168725511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x30, 0x90e32ad3576c3989 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x00000000ffffffff # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bltu x8, x2, some_label_for_btype_96185618382650425570 # perform operation 
addi x0, x1, 1
some_label_for_btype_96185618382650425570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x5555555555555555 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bltu x8, x2, some_label_for_btype_96185618382650425571 # perform operation 
addi x0, x1, 1
some_label_for_btype_96185618382650425571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x20, 0x3e1db1f97106b454 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x00000000ffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
bltu x16, x21, some_label_for_btype_152122918684447062010 # perform operation 
addi x0, x1, 1
some_label_for_btype_152122918684447062010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x00000000ffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
bltu x16, x21, some_label_for_btype_152122918684447062011 # perform operation 
addi x0, x1, 1
some_label_for_btype_152122918684447062011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x27, 0x5eab2dfb458c51e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
bltu x4, x31, some_label_for_btype_145325595500012888470 # perform operation 
addi x0, x1, 1
some_label_for_btype_145325595500012888470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x00000000fffffffe # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
bltu x4, x31, some_label_for_btype_145325595500012888471 # perform operation 
addi x0, x1, 1
some_label_for_btype_145325595500012888471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x22, 0x47e16691c8b6e502 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
bltu x17, x2, some_label_for_btype_149732553675003898640 # perform operation 
addi x0, x1, 1
some_label_for_btype_149732553675003898640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
bltu x17, x2, some_label_for_btype_149732553675003898641 # perform operation 
addi x0, x1, 1
some_label_for_btype_149732553675003898641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x4, 0x1932c21a25c5e047 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bltu x11, x5, some_label_for_btype_178379286460560560210 # perform operation 
addi x0, x1, 1
some_label_for_btype_178379286460560560210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000100000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bltu x11, x5, some_label_for_btype_178379286460560560211 # perform operation 
addi x0, x1, 1
some_label_for_btype_178379286460560560211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x20, 0xf366138ab1538e95 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
bltu x28, x3, some_label_for_btype_35760560406743733490 # perform operation 
addi x0, x1, 1
some_label_for_btype_35760560406743733490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
bltu x28, x3, some_label_for_btype_35760560406743733491 # perform operation 
addi x0, x1, 1
some_label_for_btype_35760560406743733491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x25, 0xef498305cf1a923a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x00000000fffffffe # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
bltu x20, x4, some_label_for_btype_108302593564534987210 # perform operation 
addi x0, x1, 1
some_label_for_btype_108302593564534987210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x0000000000000001 # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
bltu x20, x4, some_label_for_btype_108302593564534987211 # perform operation 
addi x0, x1, 1
some_label_for_btype_108302593564534987211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x17, 0xc86579bbf58c0a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
bltu x31, x11, some_label_for_btype_25178853839470264610 # perform operation 
addi x0, x1, 1
some_label_for_btype_25178853839470264610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0000000000000002 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
bltu x31, x11, some_label_for_btype_25178853839470264611 # perform operation 
addi x0, x1, 1
some_label_for_btype_25178853839470264611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x12, 0x864c053836f98e3d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000000fffffffe # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bltu x15, x26, some_label_for_btype_165561807128931470690 # perform operation 
addi x0, x1, 1
some_label_for_btype_165561807128931470690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bltu x15, x26, some_label_for_btype_165561807128931470691 # perform operation 
addi x0, x1, 1
some_label_for_btype_165561807128931470691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x15, 0xdd06b253cf580372 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000000fffffffe # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
bltu x27, x7, some_label_for_btype_76735304239423045120 # perform operation 
addi x0, x1, 1
some_label_for_btype_76735304239423045120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
bltu x27, x7, some_label_for_btype_76735304239423045121 # perform operation 
addi x0, x1, 1
some_label_for_btype_76735304239423045121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x8, 0xd3bff27f50cf3ccd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000000fffffffe # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bltu x31, x28, some_label_for_btype_72270162022890374290 # perform operation 
addi x0, x1, 1
some_label_for_btype_72270162022890374290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7fffffffffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bltu x31, x28, some_label_for_btype_72270162022890374291 # perform operation 
addi x0, x1, 1
some_label_for_btype_72270162022890374291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x31, 0x677019b41f4e2ae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x00000000fffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bltu x11, x12, some_label_for_btype_172411840460827569660 # perform operation 
addi x0, x1, 1
some_label_for_btype_172411840460827569660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bltu x11, x12, some_label_for_btype_172411840460827569661 # perform operation 
addi x0, x1, 1
some_label_for_btype_172411840460827569661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x10, 0x434942a55e4cc404 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000000fffffffe # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
bltu x19, x24, some_label_for_btype_4246113561398174080 # perform operation 
addi x0, x1, 1
some_label_for_btype_4246113561398174080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xffffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
bltu x19, x24, some_label_for_btype_4246113561398174081 # perform operation 
addi x0, x1, 1
some_label_for_btype_4246113561398174081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x22, 0x8c31c012e9e0893a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000000fffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
bltu x30, x25, some_label_for_btype_3684766168305745610 # perform operation 
addi x0, x1, 1
some_label_for_btype_3684766168305745610:
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
bltu x30, x25, some_label_for_btype_3684766168305745611 # perform operation 
addi x0, x1, 1
some_label_for_btype_3684766168305745611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x2, 0xd6a1f5d2e6b42276 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000000fffffffe # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
bltu x18, x9, some_label_for_btype_169381738977246871970 # perform operation 
addi x0, x1, 1
some_label_for_btype_169381738977246871970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
bltu x18, x9, some_label_for_btype_169381738977246871971 # perform operation 
addi x0, x1, 1
some_label_for_btype_169381738977246871971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xb028a2e8b5a18f28 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x00000000fffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x3, x19, some_label_for_btype_134293223377949594550 # perform operation 
addi x0, x1, 1
some_label_for_btype_134293223377949594550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x3, x19, some_label_for_btype_134293223377949594551 # perform operation 
addi x0, x1, 1
some_label_for_btype_134293223377949594551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x2, 0xfd4aba236e058e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000000fffffffe # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bltu x13, x21, some_label_for_btype_21494473043626170700 # perform operation 
addi x0, x1, 1
some_label_for_btype_21494473043626170700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x5555555555555555 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bltu x13, x21, some_label_for_btype_21494473043626170701 # perform operation 
addi x0, x1, 1
some_label_for_btype_21494473043626170701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x3, 0xf24cc58312168196 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x00000000fffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bltu x10, x15, some_label_for_btype_61631255159497162130 # perform operation 
addi x0, x1, 1
some_label_for_btype_61631255159497162130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bltu x10, x15, some_label_for_btype_61631255159497162131 # perform operation 
addi x0, x1, 1
some_label_for_btype_61631255159497162131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x12, 0x7d09e2c3172dd5ce # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bltu x15, x16, some_label_for_btype_182887361566650336730 # perform operation 
addi x0, x1, 1
some_label_for_btype_182887361566650336730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bltu x15, x16, some_label_for_btype_182887361566650336731 # perform operation 
addi x0, x1, 1
some_label_for_btype_182887361566650336731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x10, 0x118cc28c93342e01 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
bltu x27, x3, some_label_for_btype_81312356687555207370 # perform operation 
addi x0, x1, 1
some_label_for_btype_81312356687555207370:
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
bltu x27, x3, some_label_for_btype_81312356687555207371 # perform operation 
addi x0, x1, 1
some_label_for_btype_81312356687555207371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x28, 0xe2a8d64a91017c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
bltu x30, x15, some_label_for_btype_42769685473628312580 # perform operation 
addi x0, x1, 1
some_label_for_btype_42769685473628312580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0000000100000001 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
bltu x30, x15, some_label_for_btype_42769685473628312581 # perform operation 
addi x0, x1, 1
some_label_for_btype_42769685473628312581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x25, 0x3891c1bcb7afbc55 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000100000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
bltu x19, x3, some_label_for_btype_153622528781943296580 # perform operation 
addi x0, x1, 1
some_label_for_btype_153622528781943296580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
bltu x19, x3, some_label_for_btype_153622528781943296581 # perform operation 
addi x0, x1, 1
some_label_for_btype_153622528781943296581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x15, 0xbaef8433aa45672d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
bltu x4, x27, some_label_for_btype_36067387418643969080 # perform operation 
addi x0, x1, 1
some_label_for_btype_36067387418643969080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
bltu x4, x27, some_label_for_btype_36067387418643969081 # perform operation 
addi x0, x1, 1
some_label_for_btype_36067387418643969081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x1, 0xf9e8a4759d87ff52 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000100000000 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
bltu x22, x8, some_label_for_btype_107703402507619987360 # perform operation 
addi x0, x1, 1
some_label_for_btype_107703402507619987360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
bltu x22, x8, some_label_for_btype_107703402507619987361 # perform operation 
addi x0, x1, 1
some_label_for_btype_107703402507619987361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x22, 0x52f8c0f638c1586a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0000000100000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bltu x26, x13, some_label_for_btype_43413013031892638910 # perform operation 
addi x0, x1, 1
some_label_for_btype_43413013031892638910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x8000000000000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bltu x26, x13, some_label_for_btype_43413013031892638911 # perform operation 
addi x0, x1, 1
some_label_for_btype_43413013031892638911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x27, 0x5e441dfde5273326 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x0000000100000000 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
bltu x20, x15, some_label_for_btype_136239654754947516040 # perform operation 
addi x0, x1, 1
some_label_for_btype_136239654754947516040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x8000000000000001 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
bltu x20, x15, some_label_for_btype_136239654754947516041 # perform operation 
addi x0, x1, 1
some_label_for_btype_136239654754947516041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x7, 0xcbf5e831417f99ac # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000100000000 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bltu x9, x22, some_label_for_btype_164153412730510927200 # perform operation 
addi x0, x1, 1
some_label_for_btype_164153412730510927200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bltu x9, x22, some_label_for_btype_164153412730510927201 # perform operation 
addi x0, x1, 1
some_label_for_btype_164153412730510927201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x9, 0x7635f5ef6615da61 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000100000000 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bltu x1, x11, some_label_for_btype_145286595892682219920 # perform operation 
addi x0, x1, 1
some_label_for_btype_145286595892682219920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x7ffffffffffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bltu x1, x11, some_label_for_btype_145286595892682219921 # perform operation 
addi x0, x1, 1
some_label_for_btype_145286595892682219921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x15, 0x8e1df4eccc790f89 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000100000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bltu x24, x16, some_label_for_btype_172460433235418646440 # perform operation 
addi x0, x1, 1
some_label_for_btype_172460433235418646440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bltu x24, x16, some_label_for_btype_172460433235418646441 # perform operation 
addi x0, x1, 1
some_label_for_btype_172460433235418646441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x9, 0x5305b28d07ec788d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000100000000 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
bltu x2, x20, some_label_for_btype_121487534033435945060 # perform operation 
addi x0, x1, 1
some_label_for_btype_121487534033435945060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xfffffffffffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
bltu x2, x20, some_label_for_btype_121487534033435945061 # perform operation 
addi x0, x1, 1
some_label_for_btype_121487534033435945061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x24, 0x6b74f18ca365c388 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0000000100000000 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
bltu x15, x16, some_label_for_btype_68426826636234319250 # perform operation 
addi x0, x1, 1
some_label_for_btype_68426826636234319250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
bltu x15, x16, some_label_for_btype_68426826636234319251 # perform operation 
addi x0, x1, 1
some_label_for_btype_68426826636234319251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x7251908aeb872f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000100000000 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x1, x17, some_label_for_btype_22744760868481341450 # perform operation 
addi x0, x1, 1
some_label_for_btype_22744760868481341450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x1, x17, some_label_for_btype_22744760868481341451 # perform operation 
addi x0, x1, 1
some_label_for_btype_22744760868481341451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x29, 0x94eebbda44a4588d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x0000000100000000 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
bltu x17, x19, some_label_for_btype_151243650486213656850 # perform operation 
addi x0, x1, 1
some_label_for_btype_151243650486213656850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x5555555555555555 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
bltu x17, x19, some_label_for_btype_151243650486213656851 # perform operation 
addi x0, x1, 1
some_label_for_btype_151243650486213656851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x3, 0x09d9258fedd6b9ee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000100000000 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bltu x19, x30, some_label_for_btype_108518981792413167710 # perform operation 
addi x0, x1, 1
some_label_for_btype_108518981792413167710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bltu x19, x30, some_label_for_btype_108518981792413167711 # perform operation 
addi x0, x1, 1
some_label_for_btype_108518981792413167711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x22, 0xb70562a468ab41ad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000100000000 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
bltu x31, x18, some_label_for_btype_23946426416531063120 # perform operation 
addi x0, x1, 1
some_label_for_btype_23946426416531063120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x00000000fffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
bltu x31, x18, some_label_for_btype_23946426416531063121 # perform operation 
addi x0, x1, 1
some_label_for_btype_23946426416531063121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x8, 0x395b09cb9cddbab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x0000000100000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
bltu x17, x10, some_label_for_btype_53998893992743353580 # perform operation 
addi x0, x1, 1
some_label_for_btype_53998893992743353580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x0000000100000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
bltu x17, x10, some_label_for_btype_53998893992743353581 # perform operation 
addi x0, x1, 1
some_label_for_btype_53998893992743353581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x13, 0x1cd2bd4ef9fc93fa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000100000000 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bltu x2, x27, some_label_for_btype_183575666015138120600 # perform operation 
addi x0, x1, 1
some_label_for_btype_183575666015138120600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bltu x2, x27, some_label_for_btype_183575666015138120601 # perform operation 
addi x0, x1, 1
some_label_for_btype_183575666015138120601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x11, 0x0d60b388ff4863bd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0000000100000001 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bltu x10, x9, some_label_for_btype_158804324421054343490 # perform operation 
addi x0, x1, 1
some_label_for_btype_158804324421054343490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bltu x10, x9, some_label_for_btype_158804324421054343491 # perform operation 
addi x0, x1, 1
some_label_for_btype_158804324421054343491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x9, 0x9681d81759c0c84c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000100000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bltu x7, x5, some_label_for_btype_6736949252946774370 # perform operation 
addi x0, x1, 1
some_label_for_btype_6736949252946774370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bltu x7, x5, some_label_for_btype_6736949252946774371 # perform operation 
addi x0, x1, 1
some_label_for_btype_6736949252946774371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x30, 0xf2b7e8a5fb25733c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0000000100000001 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bltu x14, x15, some_label_for_btype_148373283954180392210 # perform operation 
addi x0, x1, 1
some_label_for_btype_148373283954180392210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000000000002 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bltu x14, x15, some_label_for_btype_148373283954180392211 # perform operation 
addi x0, x1, 1
some_label_for_btype_148373283954180392211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x21, 0x5616b905338f9beb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000100000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bltu x1, x20, some_label_for_btype_106940672581428068270 # perform operation 
addi x0, x1, 1
some_label_for_btype_106940672581428068270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x8000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bltu x1, x20, some_label_for_btype_106940672581428068271 # perform operation 
addi x0, x1, 1
some_label_for_btype_106940672581428068271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x1, 0x3474bf31ac7bcabd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x0000000100000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bltu x25, x24, some_label_for_btype_93084997993387706150 # perform operation 
addi x0, x1, 1
some_label_for_btype_93084997993387706150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bltu x25, x24, some_label_for_btype_93084997993387706151 # perform operation 
addi x0, x1, 1
some_label_for_btype_93084997993387706151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x8, 0x412ab39c28190ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x0000000100000001 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bltu x13, x18, some_label_for_btype_171217295504159682340 # perform operation 
addi x0, x1, 1
some_label_for_btype_171217295504159682340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x7fffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bltu x13, x18, some_label_for_btype_171217295504159682341 # perform operation 
addi x0, x1, 1
some_label_for_btype_171217295504159682341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x20, 0x5a542df86ee7fd78 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x0000000100000001 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
bltu x17, x8, some_label_for_btype_170917843855053919390 # perform operation 
addi x0, x1, 1
some_label_for_btype_170917843855053919390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x7ffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
bltu x17, x8, some_label_for_btype_170917843855053919391 # perform operation 
addi x0, x1, 1
some_label_for_btype_170917843855053919391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x2, 0xe4012ccfad64fa1c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000100000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
bltu x12, x5, some_label_for_btype_83147623540649470260 # perform operation 
addi x0, x1, 1
some_label_for_btype_83147623540649470260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xffffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
bltu x12, x5, some_label_for_btype_83147623540649470261 # perform operation 
addi x0, x1, 1
some_label_for_btype_83147623540649470261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x9, 0x7c2f5240346cd358 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000100000001 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
bltu x21, x1, some_label_for_btype_143595708374475950260 # perform operation 
addi x0, x1, 1
some_label_for_btype_143595708374475950260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xfffffffffffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
bltu x21, x1, some_label_for_btype_143595708374475950261 # perform operation 
addi x0, x1, 1
some_label_for_btype_143595708374475950261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x26, 0x1ce3620bd14e46f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x0000000100000001 # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
bltu x16, x29, some_label_for_btype_129862503689530219970 # perform operation 
addi x0, x1, 1
some_label_for_btype_129862503689530219970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
bltu x16, x29, some_label_for_btype_129862503689530219971 # perform operation 
addi x0, x1, 1
some_label_for_btype_129862503689530219971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x63d8563aaed359d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x0000000100000001 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x20, x15, some_label_for_btype_34717704697992945500 # perform operation 
addi x0, x1, 1
some_label_for_btype_34717704697992945500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x20, x15, some_label_for_btype_34717704697992945501 # perform operation 
addi x0, x1, 1
some_label_for_btype_34717704697992945501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x12, 0xcc84c0d99d794c38 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000100000001 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bltu x8, x11, some_label_for_btype_3627358765936475160 # perform operation 
addi x0, x1, 1
some_label_for_btype_3627358765936475160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bltu x8, x11, some_label_for_btype_3627358765936475161 # perform operation 
addi x0, x1, 1
some_label_for_btype_3627358765936475161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x28, 0x4cc5fc53cf909b0a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000100000001 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
bltu x3, x24, some_label_for_btype_49296343263664656320 # perform operation 
addi x0, x1, 1
some_label_for_btype_49296343263664656320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
bltu x3, x24, some_label_for_btype_49296343263664656321 # perform operation 
addi x0, x1, 1
some_label_for_btype_49296343263664656321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x17, 0xe464eaf22fd97efc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000100000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
bltu x7, x9, some_label_for_btype_113420705478919953650 # perform operation 
addi x0, x1, 1
some_label_for_btype_113420705478919953650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
bltu x7, x9, some_label_for_btype_113420705478919953651 # perform operation 
addi x0, x1, 1
some_label_for_btype_113420705478919953651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x4, 0x1bf253d0cbbbac16 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x0000000100000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
bltu x25, x9, some_label_for_btype_105150108659298607850 # perform operation 
addi x0, x1, 1
some_label_for_btype_105150108659298607850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
bltu x25, x9, some_label_for_btype_105150108659298607851 # perform operation 
addi x0, x1, 1
some_label_for_btype_105150108659298607851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x4, 0x9ce0975e8f65aee0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bltu x8, x7, some_label_for_btype_21894861381786112610 # perform operation 
addi x0, x1, 1
some_label_for_btype_21894861381786112610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bltu x8, x7, some_label_for_btype_21894861381786112611 # perform operation 
addi x0, x1, 1
some_label_for_btype_21894861381786112611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x30, 0xa9b563f4ddff5799 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x37814afc69de81d8 # initialize rs1
li x0, 0x55649077aaa86756 # initialize rs2
bltu x0, x0, some_label_for_btype_80809051245977141820 # perform operation 
addi x0, x1, 1
some_label_for_btype_80809051245977141820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0x55649077aaa86756 # initialize rs1
li x0, 0x55649077aaa86756 # initialize rs2
bltu x0, x0, some_label_for_btype_80809051245977141821 # perform operation 
addi x0, x1, 1
some_label_for_btype_80809051245977141821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x4, 0x0383730b758cb344 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xc038716c3956a636 # initialize rs1
li x1, 0x69ba6e221509f945 # initialize rs2
bltu x1, x1, some_label_for_btype_64199086486148128500 # perform operation 
addi x0, x1, 1
some_label_for_btype_64199086486148128500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x69ba6e221509f945 # initialize rs1
li x1, 0x69ba6e221509f945 # initialize rs2
bltu x1, x1, some_label_for_btype_64199086486148128501 # perform operation 
addi x0, x1, 1
some_label_for_btype_64199086486148128501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x29, 0xe513bc0a0d99d66b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x7cdba0befcc8c02a # initialize rs1
li x2, 0xd5b42b580b341dcc # initialize rs2
bltu x2, x2, some_label_for_btype_117939588482705198160 # perform operation 
addi x0, x1, 1
some_label_for_btype_117939588482705198160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xd5b42b580b341dcc # initialize rs1
li x2, 0xd5b42b580b341dcc # initialize rs2
bltu x2, x2, some_label_for_btype_117939588482705198161 # perform operation 
addi x0, x1, 1
some_label_for_btype_117939588482705198161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x28, 0xb6a1da2013056903 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x03575298e92ce00f # initialize rs1
li x3, 0x36c91774543a4e08 # initialize rs2
bltu x3, x3, some_label_for_btype_60343592778461492970 # perform operation 
addi x0, x1, 1
some_label_for_btype_60343592778461492970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x36c91774543a4e08 # initialize rs1
li x3, 0x36c91774543a4e08 # initialize rs2
bltu x3, x3, some_label_for_btype_60343592778461492971 # perform operation 
addi x0, x1, 1
some_label_for_btype_60343592778461492971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x2, 0x2d5f102cc39bb0f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x6507ea21f6b5682f # initialize rs1
li x4, 0xe90b454bb02b7bb1 # initialize rs2
bltu x4, x4, some_label_for_btype_96592133715734066460 # perform operation 
addi x0, x1, 1
some_label_for_btype_96592133715734066460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xe90b454bb02b7bb1 # initialize rs1
li x4, 0xe90b454bb02b7bb1 # initialize rs2
bltu x4, x4, some_label_for_btype_96592133715734066461 # perform operation 
addi x0, x1, 1
some_label_for_btype_96592133715734066461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x26, 0x5cce5fb6a9ba30e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x29deb3bb3b535c6e # initialize rs1
li x5, 0x2152861d70c8d448 # initialize rs2
bltu x5, x5, some_label_for_btype_41346605511869791180 # perform operation 
addi x0, x1, 1
some_label_for_btype_41346605511869791180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x2152861d70c8d448 # initialize rs1
li x5, 0x2152861d70c8d448 # initialize rs2
bltu x5, x5, some_label_for_btype_41346605511869791181 # perform operation 
addi x0, x1, 1
some_label_for_btype_41346605511869791181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x7, 0x449de4363d0c61c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x8370498c50d23266 # initialize rs1
li x6, 0xbbfef7561c4dd896 # initialize rs2
bltu x6, x6, some_label_for_btype_183087338535271105750 # perform operation 
addi x0, x1, 1
some_label_for_btype_183087338535271105750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xbbfef7561c4dd896 # initialize rs1
li x6, 0xbbfef7561c4dd896 # initialize rs2
bltu x6, x6, some_label_for_btype_183087338535271105751 # perform operation 
addi x0, x1, 1
some_label_for_btype_183087338535271105751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x16, 0x0f20fb6b5fae08ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x13918b812eec1276 # initialize rs1
li x7, 0x62529cce0f6fcdc2 # initialize rs2
bltu x7, x7, some_label_for_btype_169727268520143768940 # perform operation 
addi x0, x1, 1
some_label_for_btype_169727268520143768940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x62529cce0f6fcdc2 # initialize rs1
li x7, 0x62529cce0f6fcdc2 # initialize rs2
bltu x7, x7, some_label_for_btype_169727268520143768941 # perform operation 
addi x0, x1, 1
some_label_for_btype_169727268520143768941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x1, 0x86f4754701dc1d5e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x61a7a5588ea39a00 # initialize rs1
li x8, 0xc669b276056d78c9 # initialize rs2
bltu x8, x8, some_label_for_btype_4836933616020513170 # perform operation 
addi x0, x1, 1
some_label_for_btype_4836933616020513170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xc669b276056d78c9 # initialize rs1
li x8, 0xc669b276056d78c9 # initialize rs2
bltu x8, x8, some_label_for_btype_4836933616020513171 # perform operation 
addi x0, x1, 1
some_label_for_btype_4836933616020513171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x30, 0xa332ea33770f66cf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xbcff1554d6179a42 # initialize rs1
li x9, 0x23c9427e28282b2d # initialize rs2
bltu x9, x9, some_label_for_btype_4960352557603489110 # perform operation 
addi x0, x1, 1
some_label_for_btype_4960352557603489110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x23c9427e28282b2d # initialize rs1
li x9, 0x23c9427e28282b2d # initialize rs2
bltu x9, x9, some_label_for_btype_4960352557603489111 # perform operation 
addi x0, x1, 1
some_label_for_btype_4960352557603489111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x22, 0x4a67683ae4d80ee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xfc4369bb5c3959c5 # initialize rs1
li x10, 0xf804f706f95f6dc6 # initialize rs2
bltu x10, x10, some_label_for_btype_171886573366477738310 # perform operation 
addi x0, x1, 1
some_label_for_btype_171886573366477738310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xf804f706f95f6dc6 # initialize rs1
li x10, 0xf804f706f95f6dc6 # initialize rs2
bltu x10, x10, some_label_for_btype_171886573366477738311 # perform operation 
addi x0, x1, 1
some_label_for_btype_171886573366477738311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x24, 0x7da8b5b616425509 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xb712538e94ab768d # initialize rs1
li x11, 0x23148249718594b1 # initialize rs2
bltu x11, x11, some_label_for_btype_147123099978623997580 # perform operation 
addi x0, x1, 1
some_label_for_btype_147123099978623997580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x23148249718594b1 # initialize rs1
li x11, 0x23148249718594b1 # initialize rs2
bltu x11, x11, some_label_for_btype_147123099978623997581 # perform operation 
addi x0, x1, 1
some_label_for_btype_147123099978623997581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x10, 0x212729eab0a5ef7c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xc0511b3e49e8cab8 # initialize rs1
li x12, 0x8e8f653b98918bf5 # initialize rs2
bltu x12, x12, some_label_for_btype_32265567346400202420 # perform operation 
addi x0, x1, 1
some_label_for_btype_32265567346400202420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x8e8f653b98918bf5 # initialize rs1
li x12, 0x8e8f653b98918bf5 # initialize rs2
bltu x12, x12, some_label_for_btype_32265567346400202421 # perform operation 
addi x0, x1, 1
some_label_for_btype_32265567346400202421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x4, 0xba275be9b3124a2e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xfd4569fc39d4c151 # initialize rs1
li x13, 0x012f11941b1bc693 # initialize rs2
bltu x13, x13, some_label_for_btype_111079085839609575170 # perform operation 
addi x0, x1, 1
some_label_for_btype_111079085839609575170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x012f11941b1bc693 # initialize rs1
li x13, 0x012f11941b1bc693 # initialize rs2
bltu x13, x13, some_label_for_btype_111079085839609575171 # perform operation 
addi x0, x1, 1
some_label_for_btype_111079085839609575171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x3, 0xb035840c4a7a04f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x6be1f59d35d28c94 # initialize rs1
li x14, 0xcad85ac4d863eb4f # initialize rs2
bltu x14, x14, some_label_for_btype_82821817093952131290 # perform operation 
addi x0, x1, 1
some_label_for_btype_82821817093952131290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xcad85ac4d863eb4f # initialize rs1
li x14, 0xcad85ac4d863eb4f # initialize rs2
bltu x14, x14, some_label_for_btype_82821817093952131291 # perform operation 
addi x0, x1, 1
some_label_for_btype_82821817093952131291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x11, 0x4b04ee0ca1436705 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xf466925340af347c # initialize rs1
li x15, 0xba79e0fea786dcbb # initialize rs2
bltu x15, x15, some_label_for_btype_153013545833380682590 # perform operation 
addi x0, x1, 1
some_label_for_btype_153013545833380682590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xba79e0fea786dcbb # initialize rs1
li x15, 0xba79e0fea786dcbb # initialize rs2
bltu x15, x15, some_label_for_btype_153013545833380682591 # perform operation 
addi x0, x1, 1
some_label_for_btype_153013545833380682591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x13, 0xe1d717d7759f1b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xfa980ffb041f20c7 # initialize rs1
li x16, 0x71fe7ac9d269d41c # initialize rs2
bltu x16, x16, some_label_for_btype_50444439015898435070 # perform operation 
addi x0, x1, 1
some_label_for_btype_50444439015898435070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x71fe7ac9d269d41c # initialize rs1
li x16, 0x71fe7ac9d269d41c # initialize rs2
bltu x16, x16, some_label_for_btype_50444439015898435071 # perform operation 
addi x0, x1, 1
some_label_for_btype_50444439015898435071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x21, 0x321e1e056545af36 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xbd888889bfb9eb57 # initialize rs1
li x17, 0xc3b811bf1f833149 # initialize rs2
bltu x17, x17, some_label_for_btype_99831499271839927000 # perform operation 
addi x0, x1, 1
some_label_for_btype_99831499271839927000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xc3b811bf1f833149 # initialize rs1
li x17, 0xc3b811bf1f833149 # initialize rs2
bltu x17, x17, some_label_for_btype_99831499271839927001 # perform operation 
addi x0, x1, 1
some_label_for_btype_99831499271839927001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x11, 0xf7de9f0fdc3a6e99 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x16ce291a650a55fa # initialize rs1
li x18, 0x1d6d4a931513b9d0 # initialize rs2
bltu x18, x18, some_label_for_btype_172885471715865796320 # perform operation 
addi x0, x1, 1
some_label_for_btype_172885471715865796320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x1d6d4a931513b9d0 # initialize rs1
li x18, 0x1d6d4a931513b9d0 # initialize rs2
bltu x18, x18, some_label_for_btype_172885471715865796321 # perform operation 
addi x0, x1, 1
some_label_for_btype_172885471715865796321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x25, 0x0f57d4388db0127b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x77c30d905e575277 # initialize rs1
li x19, 0x54b7033b03ff2903 # initialize rs2
bltu x19, x19, some_label_for_btype_111414291080884803210 # perform operation 
addi x0, x1, 1
some_label_for_btype_111414291080884803210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x54b7033b03ff2903 # initialize rs1
li x19, 0x54b7033b03ff2903 # initialize rs2
bltu x19, x19, some_label_for_btype_111414291080884803211 # perform operation 
addi x0, x1, 1
some_label_for_btype_111414291080884803211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x11, 0x830854bc2084c0d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x3d135d01956f4490 # initialize rs1
li x20, 0xa5d0180797a6a6dd # initialize rs2
bltu x20, x20, some_label_for_btype_41788949661461614950 # perform operation 
addi x0, x1, 1
some_label_for_btype_41788949661461614950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xa5d0180797a6a6dd # initialize rs1
li x20, 0xa5d0180797a6a6dd # initialize rs2
bltu x20, x20, some_label_for_btype_41788949661461614951 # perform operation 
addi x0, x1, 1
some_label_for_btype_41788949661461614951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x29, 0x823b386599115cb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x2c3201e02a20e2ae # initialize rs1
li x21, 0xf66497b3459ae1c8 # initialize rs2
bltu x21, x21, some_label_for_btype_117660978870746850210 # perform operation 
addi x0, x1, 1
some_label_for_btype_117660978870746850210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xf66497b3459ae1c8 # initialize rs1
li x21, 0xf66497b3459ae1c8 # initialize rs2
bltu x21, x21, some_label_for_btype_117660978870746850211 # perform operation 
addi x0, x1, 1
some_label_for_btype_117660978870746850211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x15, 0xe61d1ef230147381 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x468fc2b6c62212f9 # initialize rs1
li x22, 0xdd0b6dc4ed034a37 # initialize rs2
bltu x22, x22, some_label_for_btype_99692951731701717140 # perform operation 
addi x0, x1, 1
some_label_for_btype_99692951731701717140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xdd0b6dc4ed034a37 # initialize rs1
li x22, 0xdd0b6dc4ed034a37 # initialize rs2
bltu x22, x22, some_label_for_btype_99692951731701717141 # perform operation 
addi x0, x1, 1
some_label_for_btype_99692951731701717141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x29, 0xfac433182245debe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xc846f6e003a35d5f # initialize rs1
li x23, 0xa263b8eb4261cf77 # initialize rs2
bltu x23, x23, some_label_for_btype_5330315600521413200 # perform operation 
addi x0, x1, 1
some_label_for_btype_5330315600521413200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xa263b8eb4261cf77 # initialize rs1
li x23, 0xa263b8eb4261cf77 # initialize rs2
bltu x23, x23, some_label_for_btype_5330315600521413201 # perform operation 
addi x0, x1, 1
some_label_for_btype_5330315600521413201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x23, 0x4ea08f1acf5ec412 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x351e6ae74d839431 # initialize rs1
li x24, 0x29639143ab14636d # initialize rs2
bltu x24, x24, some_label_for_btype_26217313775246225870 # perform operation 
addi x0, x1, 1
some_label_for_btype_26217313775246225870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x29639143ab14636d # initialize rs1
li x24, 0x29639143ab14636d # initialize rs2
bltu x24, x24, some_label_for_btype_26217313775246225871 # perform operation 
addi x0, x1, 1
some_label_for_btype_26217313775246225871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x26, 0x5dcb956a3cb0a034 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x471336eae9f873dd # initialize rs1
li x25, 0x4eb028055cb576d1 # initialize rs2
bltu x25, x25, some_label_for_btype_69388356034380201150 # perform operation 
addi x0, x1, 1
some_label_for_btype_69388356034380201150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x4eb028055cb576d1 # initialize rs1
li x25, 0x4eb028055cb576d1 # initialize rs2
bltu x25, x25, some_label_for_btype_69388356034380201151 # perform operation 
addi x0, x1, 1
some_label_for_btype_69388356034380201151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x5, 0x1103468c8c21554a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x6c0ad83c89370728 # initialize rs1
li x26, 0x07d2fe88ae09dc81 # initialize rs2
bltu x26, x26, some_label_for_btype_120829043780983250110 # perform operation 
addi x0, x1, 1
some_label_for_btype_120829043780983250110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x07d2fe88ae09dc81 # initialize rs1
li x26, 0x07d2fe88ae09dc81 # initialize rs2
bltu x26, x26, some_label_for_btype_120829043780983250111 # perform operation 
addi x0, x1, 1
some_label_for_btype_120829043780983250111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x14, 0x5e85e6898708f3fa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xcef5be28853fe0f7 # initialize rs1
li x27, 0xd27fe8d521c967a6 # initialize rs2
bltu x27, x27, some_label_for_btype_178364034253694839760 # perform operation 
addi x0, x1, 1
some_label_for_btype_178364034253694839760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xd27fe8d521c967a6 # initialize rs1
li x27, 0xd27fe8d521c967a6 # initialize rs2
bltu x27, x27, some_label_for_btype_178364034253694839761 # perform operation 
addi x0, x1, 1
some_label_for_btype_178364034253694839761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x10, 0x8213461c91432931 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xc2fd54ef082f3a81 # initialize rs1
li x28, 0xcbc21297f376e7cc # initialize rs2
bltu x28, x28, some_label_for_btype_4638056297810233860 # perform operation 
addi x0, x1, 1
some_label_for_btype_4638056297810233860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xcbc21297f376e7cc # initialize rs1
li x28, 0xcbc21297f376e7cc # initialize rs2
bltu x28, x28, some_label_for_btype_4638056297810233861 # perform operation 
addi x0, x1, 1
some_label_for_btype_4638056297810233861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x18, 0x0e8100e5e8214b26 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x518e3f98452ccb33 # initialize rs1
li x29, 0x49d0e5f6dd805b5c # initialize rs2
bltu x29, x29, some_label_for_btype_7649444568471091310 # perform operation 
addi x0, x1, 1
some_label_for_btype_7649444568471091310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x49d0e5f6dd805b5c # initialize rs1
li x29, 0x49d0e5f6dd805b5c # initialize rs2
bltu x29, x29, some_label_for_btype_7649444568471091311 # perform operation 
addi x0, x1, 1
some_label_for_btype_7649444568471091311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x5, 0x49887142bcb8d598 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0ef9b9bfd14a399f # initialize rs1
li x30, 0x3e6189d0301122b6 # initialize rs2
bltu x30, x30, some_label_for_btype_16250193950235858760 # perform operation 
addi x0, x1, 1
some_label_for_btype_16250193950235858760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x3e6189d0301122b6 # initialize rs1
li x30, 0x3e6189d0301122b6 # initialize rs2
bltu x30, x30, some_label_for_btype_16250193950235858761 # perform operation 
addi x0, x1, 1
some_label_for_btype_16250193950235858761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x22, 0x41b04139b338332c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x32ee8e0e3474a316 # initialize rs1
li x31, 0x5dbefe92e578c363 # initialize rs2
bltu x31, x31, some_label_for_btype_18900067379663001080 # perform operation 
addi x0, x1, 1
some_label_for_btype_18900067379663001080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x5dbefe92e578c363 # initialize rs1
li x31, 0x5dbefe92e578c363 # initialize rs2
bltu x31, x31, some_label_for_btype_18900067379663001081 # perform operation 
addi x0, x1, 1
some_label_for_btype_18900067379663001081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = 0x155acfc6ceeffb01)
li x28, 0xd92bd818e481aba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x155acfc6ceeffb01 # initialize rs1
li x24, 0x347ba68acd8855f3 # initialize rs2
bltu x2, x24, some_label_for_btype_21498866887577484270 # perform operation 
addi x0, x1, 1
some_label_for_btype_21498866887577484270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x347ba68acd8855f3 # initialize rs1
li x24, 0x347ba68acd8855f3 # initialize rs2
bltu x2, x24, some_label_for_btype_21498866887577484271 # perform operation 
addi x0, x1, 1
some_label_for_btype_21498866887577484271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x216aa572613be81d)
li x4, 0x7bf4d0e513088295 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xde955a8d9ec417e3 # initialize rs1
li x9, 0xa78fc8dc0ea296de # initialize rs2
bltu x6, x9, some_label_for_btype_51087956845806681950 # perform operation 
addi x0, x1, 1
some_label_for_btype_51087956845806681950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xa78fc8dc0ea296de # initialize rs1
li x9, 0xa78fc8dc0ea296de # initialize rs2
bltu x6, x9, some_label_for_btype_51087956845806681951 # perform operation 
addi x0, x1, 1
some_label_for_btype_51087956845806681951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = 0x643c811c5851df05)
li x18, 0x3a618fa58933f934 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xace1fb3880f96057 # initialize rs1
li x28, 0x643c811c5851df05 # initialize rs2
bltu x25, x28, some_label_for_btype_183603113578395711150 # perform operation 
addi x0, x1, 1
some_label_for_btype_183603113578395711150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x643c811c5851df05 # initialize rs1
li x28, 0x643c811c5851df05 # initialize rs2
bltu x25, x28, some_label_for_btype_183603113578395711151 # perform operation 
addi x0, x1, 1
some_label_for_btype_183603113578395711151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = -0x6c2b8191a3daedac)
li x28, 0x8cb83316c60dc60c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xbe1bf1803ba20cfb # initialize rs1
li x5, 0x93d47e6e5c251254 # initialize rs2
bltu x3, x5, some_label_for_btype_109420209362821140840 # perform operation 
addi x0, x1, 1
some_label_for_btype_109420209362821140840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x93d47e6e5c251254 # initialize rs1
li x5, 0x93d47e6e5c251254 # initialize rs2
bltu x3, x5, some_label_for_btype_109420209362821140841 # perform operation 
addi x0, x1, 1
some_label_for_btype_109420209362821140841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: bltu x0, x0, 1b # backward branch
3: nop # done with sequence

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
