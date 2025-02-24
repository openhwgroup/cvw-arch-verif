///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-bge.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.938615
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x28, 0x52dc5673 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0xd9f8e6a2 # initialize rs1
li x25, 0x14b940d4 # initialize rs2
bge x0, x25, some_label_for_btype_21576635890 # perform operation 
addi x0, x1, 1
some_label_for_btype_21576635890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0x14b940d4 # initialize rs1
li x25, 0x14b940d4 # initialize rs2
bge x0, x25, some_label_for_btype_21576635891 # perform operation 
addi x0, x1, 1
some_label_for_btype_21576635891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x1)
li x4, 0x6f5c18a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x15bf453d # initialize rs1
li x20, 0x66529aff # initialize rs2
bge x1, x20, some_label_for_btype_22526206500 # perform operation 
addi x0, x1, 1
some_label_for_btype_22526206500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x66529aff # initialize rs1
li x20, 0x66529aff # initialize rs2
bge x1, x20, some_label_for_btype_22526206501 # perform operation 
addi x0, x1, 1
some_label_for_btype_22526206501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x2)
li x12, 0x1a897815 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x031f20dc # initialize rs1
li x10, 0xb6750bef # initialize rs2
bge x2, x10, some_label_for_btype_2002431290 # perform operation 
addi x0, x1, 1
some_label_for_btype_2002431290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xb6750bef # initialize rs1
li x10, 0xb6750bef # initialize rs2
bge x2, x10, some_label_for_btype_2002431291 # perform operation 
addi x0, x1, 1
some_label_for_btype_2002431291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x3)
li x6, 0xecc34d25 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xbf4a0314 # initialize rs1
li x26, 0x63a5b71e # initialize rs2
bge x3, x26, some_label_for_btype_6212546930 # perform operation 
addi x0, x1, 1
some_label_for_btype_6212546930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x63a5b71e # initialize rs1
li x26, 0x63a5b71e # initialize rs2
bge x3, x26, some_label_for_btype_6212546931 # perform operation 
addi x0, x1, 1
some_label_for_btype_6212546931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x4)
li x9, 0x27ecb840 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x5858ae08 # initialize rs1
li x18, 0x824f850b # initialize rs2
bge x4, x18, some_label_for_btype_35151577880 # perform operation 
addi x0, x1, 1
some_label_for_btype_35151577880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x824f850b # initialize rs1
li x18, 0x824f850b # initialize rs2
bge x4, x18, some_label_for_btype_35151577881 # perform operation 
addi x0, x1, 1
some_label_for_btype_35151577881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x5)
li x1, 0xac9ac64e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x989903f4 # initialize rs1
li x23, 0xa01ed5db # initialize rs2
bge x5, x23, some_label_for_btype_41973890690 # perform operation 
addi x0, x1, 1
some_label_for_btype_41973890690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xa01ed5db # initialize rs1
li x23, 0xa01ed5db # initialize rs2
bge x5, x23, some_label_for_btype_41973890691 # perform operation 
addi x0, x1, 1
some_label_for_btype_41973890691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x6)
li x21, 0x9d8b6138 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x15255fcd # initialize rs1
li x3, 0xf42d7a1e # initialize rs2
bge x6, x3, some_label_for_btype_10724142660 # perform operation 
addi x0, x1, 1
some_label_for_btype_10724142660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xf42d7a1e # initialize rs1
li x3, 0xf42d7a1e # initialize rs2
bge x6, x3, some_label_for_btype_10724142661 # perform operation 
addi x0, x1, 1
some_label_for_btype_10724142661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x7)
li x20, 0x73d15439 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x94d14d49 # initialize rs1
li x1, 0xff248000 # initialize rs2
bge x7, x1, some_label_for_btype_18228741960 # perform operation 
addi x0, x1, 1
some_label_for_btype_18228741960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xff248000 # initialize rs1
li x1, 0xff248000 # initialize rs2
bge x7, x1, some_label_for_btype_18228741961 # perform operation 
addi x0, x1, 1
some_label_for_btype_18228741961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x8)
li x6, 0xe7460cb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xf335de6f # initialize rs1
li x31, 0x471d5a2e # initialize rs2
bge x8, x31, some_label_for_btype_33441552380 # perform operation 
addi x0, x1, 1
some_label_for_btype_33441552380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x471d5a2e # initialize rs1
li x31, 0x471d5a2e # initialize rs2
bge x8, x31, some_label_for_btype_33441552381 # perform operation 
addi x0, x1, 1
some_label_for_btype_33441552381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x5, 0x3907b4a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xe63dbf4c # initialize rs1
li x31, 0xcd051ce5 # initialize rs2
bge x9, x31, some_label_for_btype_16825577340 # perform operation 
addi x0, x1, 1
some_label_for_btype_16825577340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xcd051ce5 # initialize rs1
li x31, 0xcd051ce5 # initialize rs2
bge x9, x31, some_label_for_btype_16825577341 # perform operation 
addi x0, x1, 1
some_label_for_btype_16825577341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x19, 0x9c57edc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x65924677 # initialize rs1
li x20, 0xae2aa67f # initialize rs2
bge x10, x20, some_label_for_btype_5534880950 # perform operation 
addi x0, x1, 1
some_label_for_btype_5534880950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xae2aa67f # initialize rs1
li x20, 0xae2aa67f # initialize rs2
bge x10, x20, some_label_for_btype_5534880951 # perform operation 
addi x0, x1, 1
some_label_for_btype_5534880951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x25, 0x4e00b989 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x8f04c96d # initialize rs1
li x17, 0x2ae8c65e # initialize rs2
bge x11, x17, some_label_for_btype_35776526490 # perform operation 
addi x0, x1, 1
some_label_for_btype_35776526490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x2ae8c65e # initialize rs1
li x17, 0x2ae8c65e # initialize rs2
bge x11, x17, some_label_for_btype_35776526491 # perform operation 
addi x0, x1, 1
some_label_for_btype_35776526491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x30, 0x602d7023 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x204efbaa # initialize rs1
li x22, 0x660a4ddf # initialize rs2
bge x12, x22, some_label_for_btype_35123853840 # perform operation 
addi x0, x1, 1
some_label_for_btype_35123853840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x660a4ddf # initialize rs1
li x22, 0x660a4ddf # initialize rs2
bge x12, x22, some_label_for_btype_35123853841 # perform operation 
addi x0, x1, 1
some_label_for_btype_35123853841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x3, 0xc0ac4845 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x077c76cd # initialize rs1
li x4, 0x906ff3e6 # initialize rs2
bge x13, x4, some_label_for_btype_14549233780 # perform operation 
addi x0, x1, 1
some_label_for_btype_14549233780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x906ff3e6 # initialize rs1
li x4, 0x906ff3e6 # initialize rs2
bge x13, x4, some_label_for_btype_14549233781 # perform operation 
addi x0, x1, 1
some_label_for_btype_14549233781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x28, 0x9355ac4c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x9d2ceb6d # initialize rs1
li x17, 0xfcdc610b # initialize rs2
bge x14, x17, some_label_for_btype_26398475760 # perform operation 
addi x0, x1, 1
some_label_for_btype_26398475760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xfcdc610b # initialize rs1
li x17, 0xfcdc610b # initialize rs2
bge x14, x17, some_label_for_btype_26398475761 # perform operation 
addi x0, x1, 1
some_label_for_btype_26398475761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x31, 0x111e6105 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x1e94d967 # initialize rs1
li x7, 0x3e0f6a71 # initialize rs2
bge x15, x7, some_label_for_btype_37394321970 # perform operation 
addi x0, x1, 1
some_label_for_btype_37394321970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x3e0f6a71 # initialize rs1
li x7, 0x3e0f6a71 # initialize rs2
bge x15, x7, some_label_for_btype_37394321971 # perform operation 
addi x0, x1, 1
some_label_for_btype_37394321971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x16)
li x1, 0x902031cb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xb7e36d66 # initialize rs1
li x31, 0x8745f86c # initialize rs2
bge x16, x31, some_label_for_btype_25492896190 # perform operation 
addi x0, x1, 1
some_label_for_btype_25492896190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x8745f86c # initialize rs1
li x31, 0x8745f86c # initialize rs2
bge x16, x31, some_label_for_btype_25492896191 # perform operation 
addi x0, x1, 1
some_label_for_btype_25492896191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x17)
li x8, 0x98407d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x51501228 # initialize rs1
li x20, 0x23984285 # initialize rs2
bge x17, x20, some_label_for_btype_14159861170 # perform operation 
addi x0, x1, 1
some_label_for_btype_14159861170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x23984285 # initialize rs1
li x20, 0x23984285 # initialize rs2
bge x17, x20, some_label_for_btype_14159861171 # perform operation 
addi x0, x1, 1
some_label_for_btype_14159861171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x18)
li x1, 0x303efcc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x1a786dd5 # initialize rs1
li x13, 0x34fceff5 # initialize rs2
bge x18, x13, some_label_for_btype_26594125110 # perform operation 
addi x0, x1, 1
some_label_for_btype_26594125110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x34fceff5 # initialize rs1
li x13, 0x34fceff5 # initialize rs2
bge x18, x13, some_label_for_btype_26594125111 # perform operation 
addi x0, x1, 1
some_label_for_btype_26594125111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x19)
li x9, 0xe6e5b8a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xbc3941d8 # initialize rs1
li x29, 0x47fed1de # initialize rs2
bge x19, x29, some_label_for_btype_33840830510 # perform operation 
addi x0, x1, 1
some_label_for_btype_33840830510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x47fed1de # initialize rs1
li x29, 0x47fed1de # initialize rs2
bge x19, x29, some_label_for_btype_33840830511 # perform operation 
addi x0, x1, 1
some_label_for_btype_33840830511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x20)
li x22, 0xf182191b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xd1591374 # initialize rs1
li x24, 0xff88c3ce # initialize rs2
bge x20, x24, some_label_for_btype_1257528660 # perform operation 
addi x0, x1, 1
some_label_for_btype_1257528660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xff88c3ce # initialize rs1
li x24, 0xff88c3ce # initialize rs2
bge x20, x24, some_label_for_btype_1257528661 # perform operation 
addi x0, x1, 1
some_label_for_btype_1257528661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x21)
li x18, 0x9d98e10d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x76bd8324 # initialize rs1
li x12, 0x0a76ef0d # initialize rs2
bge x21, x12, some_label_for_btype_38539989670 # perform operation 
addi x0, x1, 1
some_label_for_btype_38539989670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0a76ef0d # initialize rs1
li x12, 0x0a76ef0d # initialize rs2
bge x21, x12, some_label_for_btype_38539989671 # perform operation 
addi x0, x1, 1
some_label_for_btype_38539989671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x22)
li x6, 0xe34ea0c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x4687debb # initialize rs1
li x18, 0xc660afad # initialize rs2
bge x22, x18, some_label_for_btype_1560484220 # perform operation 
addi x0, x1, 1
some_label_for_btype_1560484220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xc660afad # initialize rs1
li x18, 0xc660afad # initialize rs2
bge x22, x18, some_label_for_btype_1560484221 # perform operation 
addi x0, x1, 1
some_label_for_btype_1560484221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x23)
li x24, 0x11336b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xffb04763 # initialize rs1
li x13, 0xd8fa61f9 # initialize rs2
bge x23, x13, some_label_for_btype_6854429230 # perform operation 
addi x0, x1, 1
some_label_for_btype_6854429230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xd8fa61f9 # initialize rs1
li x13, 0xd8fa61f9 # initialize rs2
bge x23, x13, some_label_for_btype_6854429231 # perform operation 
addi x0, x1, 1
some_label_for_btype_6854429231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x24)
li x16, 0xd7340815 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x15e3e114 # initialize rs1
li x18, 0x21931fdd # initialize rs2
bge x24, x18, some_label_for_btype_22828055720 # perform operation 
addi x0, x1, 1
some_label_for_btype_22828055720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x21931fdd # initialize rs1
li x18, 0x21931fdd # initialize rs2
bge x24, x18, some_label_for_btype_22828055721 # perform operation 
addi x0, x1, 1
some_label_for_btype_22828055721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x25)
li x30, 0xbca09ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xecd7c59e # initialize rs1
li x6, 0x58fc4962 # initialize rs2
bge x25, x6, some_label_for_btype_14210546860 # perform operation 
addi x0, x1, 1
some_label_for_btype_14210546860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x58fc4962 # initialize rs1
li x6, 0x58fc4962 # initialize rs2
bge x25, x6, some_label_for_btype_14210546861 # perform operation 
addi x0, x1, 1
some_label_for_btype_14210546861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x26)
li x31, 0xd507e5f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x828a9e2e # initialize rs1
li x16, 0x352c08a4 # initialize rs2
bge x26, x16, some_label_for_btype_508378720 # perform operation 
addi x0, x1, 1
some_label_for_btype_508378720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x352c08a4 # initialize rs1
li x16, 0x352c08a4 # initialize rs2
bge x26, x16, some_label_for_btype_508378721 # perform operation 
addi x0, x1, 1
some_label_for_btype_508378721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x27)
li x8, 0xbb148107 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xe2d21f8b # initialize rs1
li x2, 0xc6c21d08 # initialize rs2
bge x27, x2, some_label_for_btype_31970121790 # perform operation 
addi x0, x1, 1
some_label_for_btype_31970121790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xc6c21d08 # initialize rs1
li x2, 0xc6c21d08 # initialize rs2
bge x27, x2, some_label_for_btype_31970121791 # perform operation 
addi x0, x1, 1
some_label_for_btype_31970121791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x28)
li x10, 0xa820effb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x72a8eb24 # initialize rs1
li x12, 0xbd220b8a # initialize rs2
bge x28, x12, some_label_for_btype_28918965180 # perform operation 
addi x0, x1, 1
some_label_for_btype_28918965180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xbd220b8a # initialize rs1
li x12, 0xbd220b8a # initialize rs2
bge x28, x12, some_label_for_btype_28918965181 # perform operation 
addi x0, x1, 1
some_label_for_btype_28918965181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x29)
li x19, 0x84c41deb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x90d6d746 # initialize rs1
li x31, 0x0d49f483 # initialize rs2
bge x29, x31, some_label_for_btype_25419138040 # perform operation 
addi x0, x1, 1
some_label_for_btype_25419138040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x0d49f483 # initialize rs1
li x31, 0x0d49f483 # initialize rs2
bge x29, x31, some_label_for_btype_25419138041 # perform operation 
addi x0, x1, 1
some_label_for_btype_25419138041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x30)
li x3, 0xbe054bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xe17bcec5 # initialize rs1
li x6, 0x27445a77 # initialize rs2
bge x30, x6, some_label_for_btype_20332481570 # perform operation 
addi x0, x1, 1
some_label_for_btype_20332481570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x27445a77 # initialize rs1
li x6, 0x27445a77 # initialize rs2
bge x30, x6, some_label_for_btype_20332481571 # perform operation 
addi x0, x1, 1
some_label_for_btype_20332481571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x31)
li x13, 0x05554221 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0a658734 # initialize rs1
li x2, 0x1231c521 # initialize rs2
bge x31, x2, some_label_for_btype_28600928270 # perform operation 
addi x0, x1, 1
some_label_for_btype_28600928270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x1231c521 # initialize rs1
li x2, 0x1231c521 # initialize rs2
bge x31, x2, some_label_for_btype_28600928271 # perform operation 
addi x0, x1, 1
some_label_for_btype_28600928271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x0)
li x13, 0x2adb91e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x6ebabca3 # initialize rs1
li x0, 0x6bc8c0e3 # initialize rs2
bge x4, x0, some_label_for_btype_35641072200 # perform operation 
addi x0, x1, 1
some_label_for_btype_35641072200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x6bc8c0e3 # initialize rs1
li x0, 0x6bc8c0e3 # initialize rs2
bge x4, x0, some_label_for_btype_35641072201 # perform operation 
addi x0, x1, 1
some_label_for_btype_35641072201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x1)
li x23, 0xe3995068 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xe60f691f # initialize rs1
li x1, 0x0c3b21f3 # initialize rs2
bge x3, x1, some_label_for_btype_10761148550 # perform operation 
addi x0, x1, 1
some_label_for_btype_10761148550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x0c3b21f3 # initialize rs1
li x1, 0x0c3b21f3 # initialize rs2
bge x3, x1, some_label_for_btype_10761148551 # perform operation 
addi x0, x1, 1
some_label_for_btype_10761148551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x2)
li x9, 0x0dbab83e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x83cb69e1 # initialize rs1
li x2, 0x9150b640 # initialize rs2
bge x8, x2, some_label_for_btype_41717737100 # perform operation 
addi x0, x1, 1
some_label_for_btype_41717737100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x9150b640 # initialize rs1
li x2, 0x9150b640 # initialize rs2
bge x8, x2, some_label_for_btype_41717737101 # perform operation 
addi x0, x1, 1
some_label_for_btype_41717737101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x3)
li x14, 0x2866365a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x6fd0d38e # initialize rs1
li x3, 0xf2433860 # initialize rs2
bge x1, x3, some_label_for_btype_30212280200 # perform operation 
addi x0, x1, 1
some_label_for_btype_30212280200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xf2433860 # initialize rs1
li x3, 0xf2433860 # initialize rs2
bge x1, x3, some_label_for_btype_30212280201 # perform operation 
addi x0, x1, 1
some_label_for_btype_30212280201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x4)
li x17, 0x1c7e7395 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x366b3faf # initialize rs1
li x4, 0x33dd5b01 # initialize rs2
bge x9, x4, some_label_for_btype_41594370050 # perform operation 
addi x0, x1, 1
some_label_for_btype_41594370050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x33dd5b01 # initialize rs1
li x4, 0x33dd5b01 # initialize rs2
bge x9, x4, some_label_for_btype_41594370051 # perform operation 
addi x0, x1, 1
some_label_for_btype_41594370051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x5)
li x25, 0x0e1bebee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xb84a1c31 # initialize rs1
li x5, 0xa1f57fd1 # initialize rs2
bge x8, x5, some_label_for_btype_30069407320 # perform operation 
addi x0, x1, 1
some_label_for_btype_30069407320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xa1f57fd1 # initialize rs1
li x5, 0xa1f57fd1 # initialize rs2
bge x8, x5, some_label_for_btype_30069407321 # perform operation 
addi x0, x1, 1
some_label_for_btype_30069407321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x6)
li x27, 0x6ce5071e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x72e6ea7b # initialize rs1
li x6, 0x3c897d01 # initialize rs2
bge x10, x6, some_label_for_btype_8266535640 # perform operation 
addi x0, x1, 1
some_label_for_btype_8266535640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x3c897d01 # initialize rs1
li x6, 0x3c897d01 # initialize rs2
bge x10, x6, some_label_for_btype_8266535641 # perform operation 
addi x0, x1, 1
some_label_for_btype_8266535641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x7)
li x31, 0xfa49d95e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x854bf14e # initialize rs1
li x7, 0x0ba6b76a # initialize rs2
bge x16, x7, some_label_for_btype_18091556380 # perform operation 
addi x0, x1, 1
some_label_for_btype_18091556380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0ba6b76a # initialize rs1
li x7, 0x0ba6b76a # initialize rs2
bge x16, x7, some_label_for_btype_18091556381 # perform operation 
addi x0, x1, 1
some_label_for_btype_18091556381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0x82182b63 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x5b745a44 # initialize rs1
li x8, 0x3b2d8bb2 # initialize rs2
bge x23, x8, some_label_for_btype_7454404990 # perform operation 
addi x0, x1, 1
some_label_for_btype_7454404990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x3b2d8bb2 # initialize rs1
li x8, 0x3b2d8bb2 # initialize rs2
bge x23, x8, some_label_for_btype_7454404991 # perform operation 
addi x0, x1, 1
some_label_for_btype_7454404991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x9)
li x19, 0x21236e65 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x75a09dcb # initialize rs1
li x9, 0x207beda1 # initialize rs2
bge x1, x9, some_label_for_btype_27076627990 # perform operation 
addi x0, x1, 1
some_label_for_btype_27076627990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x207beda1 # initialize rs1
li x9, 0x207beda1 # initialize rs2
bge x1, x9, some_label_for_btype_27076627991 # perform operation 
addi x0, x1, 1
some_label_for_btype_27076627991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x10)
li x28, 0xba271a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xc3c6e930 # initialize rs1
li x10, 0x1e96cb89 # initialize rs2
bge x14, x10, some_label_for_btype_7093770950 # perform operation 
addi x0, x1, 1
some_label_for_btype_7093770950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x1e96cb89 # initialize rs1
li x10, 0x1e96cb89 # initialize rs2
bge x14, x10, some_label_for_btype_7093770951 # perform operation 
addi x0, x1, 1
some_label_for_btype_7093770951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x11)
li x16, 0x298b2db1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x392cb140 # initialize rs1
li x11, 0xc4d91d9e # initialize rs2
bge x25, x11, some_label_for_btype_13984761610 # perform operation 
addi x0, x1, 1
some_label_for_btype_13984761610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xc4d91d9e # initialize rs1
li x11, 0xc4d91d9e # initialize rs2
bge x25, x11, some_label_for_btype_13984761611 # perform operation 
addi x0, x1, 1
some_label_for_btype_13984761611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x12)
li x7, 0xeeada2e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xd1c175f8 # initialize rs1
li x12, 0x54999009 # initialize rs2
bge x13, x12, some_label_for_btype_2310603110 # perform operation 
addi x0, x1, 1
some_label_for_btype_2310603110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x54999009 # initialize rs1
li x12, 0x54999009 # initialize rs2
bge x13, x12, some_label_for_btype_2310603111 # perform operation 
addi x0, x1, 1
some_label_for_btype_2310603111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x13)
li x31, 0x252f7016 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xa5e15021 # initialize rs1
li x13, 0xd8bbb0a9 # initialize rs2
bge x25, x13, some_label_for_btype_143110240 # perform operation 
addi x0, x1, 1
some_label_for_btype_143110240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xd8bbb0a9 # initialize rs1
li x13, 0xd8bbb0a9 # initialize rs2
bge x25, x13, some_label_for_btype_143110241 # perform operation 
addi x0, x1, 1
some_label_for_btype_143110241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x14)
li x2, 0x7442d9eb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xc35a1e65 # initialize rs1
li x14, 0x326d61b9 # initialize rs2
bge x3, x14, some_label_for_btype_30405548480 # perform operation 
addi x0, x1, 1
some_label_for_btype_30405548480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x326d61b9 # initialize rs1
li x14, 0x326d61b9 # initialize rs2
bge x3, x14, some_label_for_btype_30405548481 # perform operation 
addi x0, x1, 1
some_label_for_btype_30405548481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x15)
li x11, 0x623d110d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x55863fd8 # initialize rs1
li x15, 0xa0ceb53c # initialize rs2
bge x16, x15, some_label_for_btype_7396074160 # perform operation 
addi x0, x1, 1
some_label_for_btype_7396074160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xa0ceb53c # initialize rs1
li x15, 0xa0ceb53c # initialize rs2
bge x16, x15, some_label_for_btype_7396074161 # perform operation 
addi x0, x1, 1
some_label_for_btype_7396074161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x16)
li x2, 0x376ae3ae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xe859737c # initialize rs1
li x16, 0x5e0b04ea # initialize rs2
bge x6, x16, some_label_for_btype_37371996940 # perform operation 
addi x0, x1, 1
some_label_for_btype_37371996940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x5e0b04ea # initialize rs1
li x16, 0x5e0b04ea # initialize rs2
bge x6, x16, some_label_for_btype_37371996941 # perform operation 
addi x0, x1, 1
some_label_for_btype_37371996941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x17)
li x9, 0x92355e65 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x5a5fa4fa # initialize rs1
li x17, 0xb63b0ac4 # initialize rs2
bge x2, x17, some_label_for_btype_4217106070 # perform operation 
addi x0, x1, 1
some_label_for_btype_4217106070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xb63b0ac4 # initialize rs1
li x17, 0xb63b0ac4 # initialize rs2
bge x2, x17, some_label_for_btype_4217106071 # perform operation 
addi x0, x1, 1
some_label_for_btype_4217106071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x18)
li x6, 0x403a8ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x46a80235 # initialize rs1
li x18, 0x783ea66b # initialize rs2
bge x7, x18, some_label_for_btype_38696389110 # perform operation 
addi x0, x1, 1
some_label_for_btype_38696389110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x783ea66b # initialize rs1
li x18, 0x783ea66b # initialize rs2
bge x7, x18, some_label_for_btype_38696389111 # perform operation 
addi x0, x1, 1
some_label_for_btype_38696389111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x19)
li x22, 0xa56dfa0f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xf6567bc0 # initialize rs1
li x19, 0x58268ba2 # initialize rs2
bge x4, x19, some_label_for_btype_36517921520 # perform operation 
addi x0, x1, 1
some_label_for_btype_36517921520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x58268ba2 # initialize rs1
li x19, 0x58268ba2 # initialize rs2
bge x4, x19, some_label_for_btype_36517921521 # perform operation 
addi x0, x1, 1
some_label_for_btype_36517921521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x20)
li x9, 0x188cee5d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x398081ec # initialize rs1
li x20, 0x9f814122 # initialize rs2
bge x29, x20, some_label_for_btype_1040525690 # perform operation 
addi x0, x1, 1
some_label_for_btype_1040525690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x9f814122 # initialize rs1
li x20, 0x9f814122 # initialize rs2
bge x29, x20, some_label_for_btype_1040525691 # perform operation 
addi x0, x1, 1
some_label_for_btype_1040525691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x21)
li x19, 0xdc61e992 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x39eb331f # initialize rs1
li x21, 0x33781636 # initialize rs2
bge x12, x21, some_label_for_btype_6065714920 # perform operation 
addi x0, x1, 1
some_label_for_btype_6065714920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x33781636 # initialize rs1
li x21, 0x33781636 # initialize rs2
bge x12, x21, some_label_for_btype_6065714921 # perform operation 
addi x0, x1, 1
some_label_for_btype_6065714921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x22)
li x14, 0x66c12ed1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x6af9e7d5 # initialize rs1
li x22, 0x086e6da6 # initialize rs2
bge x2, x22, some_label_for_btype_34123594630 # perform operation 
addi x0, x1, 1
some_label_for_btype_34123594630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x086e6da6 # initialize rs1
li x22, 0x086e6da6 # initialize rs2
bge x2, x22, some_label_for_btype_34123594631 # perform operation 
addi x0, x1, 1
some_label_for_btype_34123594631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x23)
li x24, 0xa1b51502 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xab947864 # initialize rs1
li x23, 0x65c8d5a4 # initialize rs2
bge x14, x23, some_label_for_btype_22455903600 # perform operation 
addi x0, x1, 1
some_label_for_btype_22455903600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x65c8d5a4 # initialize rs1
li x23, 0x65c8d5a4 # initialize rs2
bge x14, x23, some_label_for_btype_22455903601 # perform operation 
addi x0, x1, 1
some_label_for_btype_22455903601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x24)
li x23, 0xdc368f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xb18b96fc # initialize rs1
li x24, 0x06343792 # initialize rs2
bge x10, x24, some_label_for_btype_30662727540 # perform operation 
addi x0, x1, 1
some_label_for_btype_30662727540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x06343792 # initialize rs1
li x24, 0x06343792 # initialize rs2
bge x10, x24, some_label_for_btype_30662727541 # perform operation 
addi x0, x1, 1
some_label_for_btype_30662727541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x25)
li x1, 0x45cecd3c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xfc9ab74c # initialize rs1
li x25, 0xce4b88b5 # initialize rs2
bge x7, x25, some_label_for_btype_37221837890 # perform operation 
addi x0, x1, 1
some_label_for_btype_37221837890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xce4b88b5 # initialize rs1
li x25, 0xce4b88b5 # initialize rs2
bge x7, x25, some_label_for_btype_37221837891 # perform operation 
addi x0, x1, 1
some_label_for_btype_37221837891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x26)
li x17, 0xc6877f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x10612764 # initialize rs1
li x26, 0xd3617ed4 # initialize rs2
bge x14, x26, some_label_for_btype_22095264950 # perform operation 
addi x0, x1, 1
some_label_for_btype_22095264950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xd3617ed4 # initialize rs1
li x26, 0xd3617ed4 # initialize rs2
bge x14, x26, some_label_for_btype_22095264951 # perform operation 
addi x0, x1, 1
some_label_for_btype_22095264951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x27)
li x22, 0xed54c519 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xa0d3ad29 # initialize rs1
li x27, 0x0ed4218a # initialize rs2
bge x13, x27, some_label_for_btype_2294975570 # perform operation 
addi x0, x1, 1
some_label_for_btype_2294975570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x0ed4218a # initialize rs1
li x27, 0x0ed4218a # initialize rs2
bge x13, x27, some_label_for_btype_2294975571 # perform operation 
addi x0, x1, 1
some_label_for_btype_2294975571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x28)
li x20, 0xbecbc985 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x71458ebb # initialize rs1
li x28, 0x87d11c29 # initialize rs2
bge x13, x28, some_label_for_btype_16675575200 # perform operation 
addi x0, x1, 1
some_label_for_btype_16675575200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x87d11c29 # initialize rs1
li x28, 0x87d11c29 # initialize rs2
bge x13, x28, some_label_for_btype_16675575201 # perform operation 
addi x0, x1, 1
some_label_for_btype_16675575201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x29)
li x31, 0xe535df82 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xc4df9787 # initialize rs1
li x29, 0x1f5b51f9 # initialize rs2
bge x15, x29, some_label_for_btype_37026276220 # perform operation 
addi x0, x1, 1
some_label_for_btype_37026276220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x1f5b51f9 # initialize rs1
li x29, 0x1f5b51f9 # initialize rs2
bge x15, x29, some_label_for_btype_37026276221 # perform operation 
addi x0, x1, 1
some_label_for_btype_37026276221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x30)
li x29, 0x3c99de22 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x4254b32d # initialize rs1
li x30, 0x5b528e5c # initialize rs2
bge x9, x30, some_label_for_btype_35066021420 # perform operation 
addi x0, x1, 1
some_label_for_btype_35066021420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x5b528e5c # initialize rs1
li x30, 0x5b528e5c # initialize rs2
bge x9, x30, some_label_for_btype_35066021421 # perform operation 
addi x0, x1, 1
some_label_for_btype_35066021421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x31)
li x3, 0x6eabce27 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x997655ee # initialize rs1
li x31, 0x2ee865df # initialize rs2
bge x9, x31, some_label_for_btype_1386320010 # perform operation 
addi x0, x1, 1
some_label_for_btype_1386320010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x2ee865df # initialize rs1
li x31, 0x2ee865df # initialize rs2
bge x9, x31, some_label_for_btype_1386320011 # perform operation 
addi x0, x1, 1
some_label_for_btype_1386320011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xf72f3bde)
li x13, 0x740ef505 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x740ef505 # initialize rs1
li x0, 0x133f10a2 # initialize rs2
bge x20, x0, some_label_for_btype_21157469350 # perform operation 
addi x0, x1, 1
some_label_for_btype_21157469350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x133f10a2 # initialize rs1
li x0, 0x133f10a2 # initialize rs2
bge x20, x0, some_label_for_btype_21157469351 # perform operation 
addi x0, x1, 1
some_label_for_btype_21157469351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0xfd341dc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000000 # initialize rs1
li x7, 0xfccf3525 # initialize rs2
bge x18, x7, some_label_for_btype_2515706320 # perform operation 
addi x0, x1, 1
some_label_for_btype_2515706320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xfccf3525 # initialize rs1
li x7, 0xfccf3525 # initialize rs2
bge x18, x7, some_label_for_btype_2515706321 # perform operation 
addi x0, x1, 1
some_label_for_btype_2515706321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0xb2560511 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000001 # initialize rs1
li x24, 0xa5da33e3 # initialize rs2
bge x18, x24, some_label_for_btype_42903558540 # perform operation 
addi x0, x1, 1
some_label_for_btype_42903558540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xa5da33e3 # initialize rs1
li x24, 0xa5da33e3 # initialize rs2
bge x18, x24, some_label_for_btype_42903558541 # perform operation 
addi x0, x1, 1
some_label_for_btype_42903558541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x6, 0x4aba56c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x00000002 # initialize rs1
li x26, 0x467d4f9e # initialize rs2
bge x23, x26, some_label_for_btype_19467005410 # perform operation 
addi x0, x1, 1
some_label_for_btype_19467005410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x467d4f9e # initialize rs1
li x26, 0x467d4f9e # initialize rs2
bge x23, x26, some_label_for_btype_19467005411 # perform operation 
addi x0, x1, 1
some_label_for_btype_19467005411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x13, 0x7e5e5f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x80000000 # initialize rs1
li x28, 0x64a2d291 # initialize rs2
bge x24, x28, some_label_for_btype_3779238100 # perform operation 
addi x0, x1, 1
some_label_for_btype_3779238100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x64a2d291 # initialize rs1
li x28, 0x64a2d291 # initialize rs2
bge x24, x28, some_label_for_btype_3779238101 # perform operation 
addi x0, x1, 1
some_label_for_btype_3779238101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x2, 0xa0ba216b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x80000001 # initialize rs1
li x28, 0xfc904ddb # initialize rs2
bge x19, x28, some_label_for_btype_22108112930 # perform operation 
addi x0, x1, 1
some_label_for_btype_22108112930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xfc904ddb # initialize rs1
li x28, 0xfc904ddb # initialize rs2
bge x19, x28, some_label_for_btype_22108112931 # perform operation 
addi x0, x1, 1
some_label_for_btype_22108112931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x8, 0xb46a6fe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7fffffff # initialize rs1
li x6, 0x15392b6e # initialize rs2
bge x24, x6, some_label_for_btype_32471027510 # perform operation 
addi x0, x1, 1
some_label_for_btype_32471027510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x15392b6e # initialize rs1
li x6, 0x15392b6e # initialize rs2
bge x24, x6, some_label_for_btype_32471027511 # perform operation 
addi x0, x1, 1
some_label_for_btype_32471027511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x4, 0x958f5f2d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x7ffffffe # initialize rs1
li x18, 0xc7116dca # initialize rs2
bge x25, x18, some_label_for_btype_26496354510 # perform operation 
addi x0, x1, 1
some_label_for_btype_26496354510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xc7116dca # initialize rs1
li x18, 0xc7116dca # initialize rs2
bge x25, x18, some_label_for_btype_26496354511 # perform operation 
addi x0, x1, 1
some_label_for_btype_26496354511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0xbb2478cc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xffffffff # initialize rs1
li x14, 0xe7a89f28 # initialize rs2
bge x26, x14, some_label_for_btype_35040540410 # perform operation 
addi x0, x1, 1
some_label_for_btype_35040540410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xe7a89f28 # initialize rs1
li x14, 0xe7a89f28 # initialize rs2
bge x26, x14, some_label_for_btype_35040540411 # perform operation 
addi x0, x1, 1
some_label_for_btype_35040540411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0x0d1a1119 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xfffffffe # initialize rs1
li x16, 0x9bbe10d2 # initialize rs2
bge x10, x16, some_label_for_btype_34793051730 # perform operation 
addi x0, x1, 1
some_label_for_btype_34793051730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x9bbe10d2 # initialize rs1
li x16, 0x9bbe10d2 # initialize rs2
bge x10, x16, some_label_for_btype_34793051731 # perform operation 
addi x0, x1, 1
some_label_for_btype_34793051731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x18, 0x69c6c559 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x5bbc8877 # initialize rs1
li x7, 0x3a965966 # initialize rs2
bge x3, x7, some_label_for_btype_38851898880 # perform operation 
addi x0, x1, 1
some_label_for_btype_38851898880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x3a965966 # initialize rs1
li x7, 0x3a965966 # initialize rs2
bge x3, x7, some_label_for_btype_38851898881 # perform operation 
addi x0, x1, 1
some_label_for_btype_38851898881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x11, 0xaf160b5d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaa # initialize rs1
li x2, 0xc2021cd6 # initialize rs2
bge x13, x2, some_label_for_btype_25317385420 # perform operation 
addi x0, x1, 1
some_label_for_btype_25317385420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xc2021cd6 # initialize rs1
li x2, 0xc2021cd6 # initialize rs2
bge x13, x2, some_label_for_btype_25317385421 # perform operation 
addi x0, x1, 1
some_label_for_btype_25317385421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x12, 0x322fd3f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x55555555 # initialize rs1
li x31, 0x80537104 # initialize rs2
bge x11, x31, some_label_for_btype_21509064620 # perform operation 
addi x0, x1, 1
some_label_for_btype_21509064620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x80537104 # initialize rs1
li x31, 0x80537104 # initialize rs2
bge x11, x31, some_label_for_btype_21509064621 # perform operation 
addi x0, x1, 1
some_label_for_btype_21509064621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0xa407c218 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xa2aa8c4a # initialize rs1
li x19, 0x00000000 # initialize rs2
bge x4, x19, some_label_for_btype_14306872850 # perform operation 
addi x0, x1, 1
some_label_for_btype_14306872850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x00000000 # initialize rs1
li x19, 0x00000000 # initialize rs2
bge x4, x19, some_label_for_btype_14306872851 # perform operation 
addi x0, x1, 1
some_label_for_btype_14306872851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0xbbb1590f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x1b68a6ec # initialize rs1
li x16, 0x00000001 # initialize rs2
bge x19, x16, some_label_for_btype_6793567250 # perform operation 
addi x0, x1, 1
some_label_for_btype_6793567250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
bge x19, x16, some_label_for_btype_6793567251 # perform operation 
addi x0, x1, 1
some_label_for_btype_6793567251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x3, 0xa01e2e0d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x579ed5c8 # initialize rs1
li x15, 0x00000002 # initialize rs2
bge x11, x15, some_label_for_btype_28100016080 # perform operation 
addi x0, x1, 1
some_label_for_btype_28100016080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x00000002 # initialize rs1
li x15, 0x00000002 # initialize rs2
bge x11, x15, some_label_for_btype_28100016081 # perform operation 
addi x0, x1, 1
some_label_for_btype_28100016081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x1, 0x11c0abe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x1f8a8d4e # initialize rs1
li x13, 0x80000000 # initialize rs2
bge x29, x13, some_label_for_btype_24799145640 # perform operation 
addi x0, x1, 1
some_label_for_btype_24799145640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x80000000 # initialize rs1
li x13, 0x80000000 # initialize rs2
bge x29, x13, some_label_for_btype_24799145641 # perform operation 
addi x0, x1, 1
some_label_for_btype_24799145641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x5, 0x7486cfe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x498efe8a # initialize rs1
li x13, 0x80000001 # initialize rs2
bge x9, x13, some_label_for_btype_14196734250 # perform operation 
addi x0, x1, 1
some_label_for_btype_14196734250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x80000001 # initialize rs1
li x13, 0x80000001 # initialize rs2
bge x9, x13, some_label_for_btype_14196734251 # perform operation 
addi x0, x1, 1
some_label_for_btype_14196734251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x25, 0xb92fca56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xe3e47ecd # initialize rs1
li x3, 0x7fffffff # initialize rs2
bge x17, x3, some_label_for_btype_29645484360 # perform operation 
addi x0, x1, 1
some_label_for_btype_29645484360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x7fffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
bge x17, x3, some_label_for_btype_29645484361 # perform operation 
addi x0, x1, 1
some_label_for_btype_29645484361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x31, 0x5d0a29b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xcf163f4d # initialize rs1
li x4, 0x7ffffffe # initialize rs2
bge x29, x4, some_label_for_btype_26054534760 # perform operation 
addi x0, x1, 1
some_label_for_btype_26054534760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x7ffffffe # initialize rs1
li x4, 0x7ffffffe # initialize rs2
bge x29, x4, some_label_for_btype_26054534761 # perform operation 
addi x0, x1, 1
some_label_for_btype_26054534761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x26, 0xf351608f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x3cc30af7 # initialize rs1
li x7, 0xffffffff # initialize rs2
bge x11, x7, some_label_for_btype_23007026050 # perform operation 
addi x0, x1, 1
some_label_for_btype_23007026050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xffffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
bge x11, x7, some_label_for_btype_23007026051 # perform operation 
addi x0, x1, 1
some_label_for_btype_23007026051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x16, 0xd424fccf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x548ebe24 # initialize rs1
li x17, 0xfffffffe # initialize rs2
bge x30, x17, some_label_for_btype_13630275980 # perform operation 
addi x0, x1, 1
some_label_for_btype_13630275980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xfffffffe # initialize rs1
li x17, 0xfffffffe # initialize rs2
bge x30, x17, some_label_for_btype_13630275981 # perform operation 
addi x0, x1, 1
some_label_for_btype_13630275981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x11, 0xb095cb6f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xf9bdb211 # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
bge x1, x21, some_label_for_btype_11015854070 # perform operation 
addi x0, x1, 1
some_label_for_btype_11015854070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x5bbc8877 # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
bge x1, x21, some_label_for_btype_11015854071 # perform operation 
addi x0, x1, 1
some_label_for_btype_11015854071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x1, 0xc706a109 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xe58d16fa # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bge x17, x11, some_label_for_btype_39608308980 # perform operation 
addi x0, x1, 1
some_label_for_btype_39608308980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bge x17, x11, some_label_for_btype_39608308981 # perform operation 
addi x0, x1, 1
some_label_for_btype_39608308981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x11, 0x2d0cda9d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xb394d10d # initialize rs1
li x16, 0x55555555 # initialize rs2
bge x9, x16, some_label_for_btype_38545068860 # perform operation 
addi x0, x1, 1
some_label_for_btype_38545068860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x55555555 # initialize rs1
li x16, 0x55555555 # initialize rs2
bge x9, x16, some_label_for_btype_38545068861 # perform operation 
addi x0, x1, 1
some_label_for_btype_38545068861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x7, 0x8db5e5ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000000 # initialize rs1
li x8, 0x00000000 # initialize rs2
bge x19, x8, some_label_for_btype_32469352510 # perform operation 
addi x0, x1, 1
some_label_for_btype_32469352510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000000 # initialize rs1
li x8, 0x00000000 # initialize rs2
bge x19, x8, some_label_for_btype_32469352511 # perform operation 
addi x0, x1, 1
some_label_for_btype_32469352511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x7, 0xe1f98042 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x00000000 # initialize rs1
li x22, 0x00000001 # initialize rs2
bge x5, x22, some_label_for_btype_30890618790 # perform operation 
addi x0, x1, 1
some_label_for_btype_30890618790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x00000001 # initialize rs1
li x22, 0x00000001 # initialize rs2
bge x5, x22, some_label_for_btype_30890618791 # perform operation 
addi x0, x1, 1
some_label_for_btype_30890618791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x31, 0x72d83c63 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000 # initialize rs1
li x22, 0x00000002 # initialize rs2
bge x28, x22, some_label_for_btype_41519222560 # perform operation 
addi x0, x1, 1
some_label_for_btype_41519222560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x00000002 # initialize rs1
li x22, 0x00000002 # initialize rs2
bge x28, x22, some_label_for_btype_41519222561 # perform operation 
addi x0, x1, 1
some_label_for_btype_41519222561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x23, 0xe215dba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x00000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
bge x22, x9, some_label_for_btype_3871122250 # perform operation 
addi x0, x1, 1
some_label_for_btype_3871122250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x80000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
bge x22, x9, some_label_for_btype_3871122251 # perform operation 
addi x0, x1, 1
some_label_for_btype_3871122251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x27, 0x39374e65 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x00000000 # initialize rs1
li x31, 0x80000001 # initialize rs2
bge x20, x31, some_label_for_btype_17173625020 # perform operation 
addi x0, x1, 1
some_label_for_btype_17173625020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x80000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
bge x20, x31, some_label_for_btype_17173625021 # perform operation 
addi x0, x1, 1
some_label_for_btype_17173625021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x29, 0x4bf4af5f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000000 # initialize rs1
li x26, 0x7fffffff # initialize rs2
bge x27, x26, some_label_for_btype_12771321430 # perform operation 
addi x0, x1, 1
some_label_for_btype_12771321430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x7fffffff # initialize rs1
li x26, 0x7fffffff # initialize rs2
bge x27, x26, some_label_for_btype_12771321431 # perform operation 
addi x0, x1, 1
some_label_for_btype_12771321431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x7, 0x6a57d2b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000000 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
bge x17, x15, some_label_for_btype_11137470160 # perform operation 
addi x0, x1, 1
some_label_for_btype_11137470160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x7ffffffe # initialize rs1
li x15, 0x7ffffffe # initialize rs2
bge x17, x15, some_label_for_btype_11137470161 # perform operation 
addi x0, x1, 1
some_label_for_btype_11137470161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x10, 0xf7e34ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000 # initialize rs1
li x11, 0xffffffff # initialize rs2
bge x28, x11, some_label_for_btype_42335801430 # perform operation 
addi x0, x1, 1
some_label_for_btype_42335801430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xffffffff # initialize rs1
li x11, 0xffffffff # initialize rs2
bge x28, x11, some_label_for_btype_42335801431 # perform operation 
addi x0, x1, 1
some_label_for_btype_42335801431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x16, 0x0e5040e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000000 # initialize rs1
li x2, 0xfffffffe # initialize rs2
bge x15, x2, some_label_for_btype_5660845820 # perform operation 
addi x0, x1, 1
some_label_for_btype_5660845820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xfffffffe # initialize rs1
li x2, 0xfffffffe # initialize rs2
bge x15, x2, some_label_for_btype_5660845821 # perform operation 
addi x0, x1, 1
some_label_for_btype_5660845821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x7, 0x90f60ec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000000 # initialize rs1
li x3, 0x5bbc8877 # initialize rs2
bge x14, x3, some_label_for_btype_27423866160 # perform operation 
addi x0, x1, 1
some_label_for_btype_27423866160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x5bbc8877 # initialize rs1
li x3, 0x5bbc8877 # initialize rs2
bge x14, x3, some_label_for_btype_27423866161 # perform operation 
addi x0, x1, 1
some_label_for_btype_27423866161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x4, 0xa4c39a31 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x00000000 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
bge x22, x14, some_label_for_btype_14972581980 # perform operation 
addi x0, x1, 1
some_label_for_btype_14972581980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
bge x22, x14, some_label_for_btype_14972581981 # perform operation 
addi x0, x1, 1
some_label_for_btype_14972581981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x6, 0x0c19595f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000000 # initialize rs1
li x8, 0x55555555 # initialize rs2
bge x14, x8, some_label_for_btype_1540377450 # perform operation 
addi x0, x1, 1
some_label_for_btype_1540377450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x55555555 # initialize rs1
li x8, 0x55555555 # initialize rs2
bge x14, x8, some_label_for_btype_1540377451 # perform operation 
addi x0, x1, 1
some_label_for_btype_1540377451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x14, 0xd0a2a41d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x00000001 # initialize rs1
li x13, 0x00000000 # initialize rs2
bge x20, x13, some_label_for_btype_1742992070 # perform operation 
addi x0, x1, 1
some_label_for_btype_1742992070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000000 # initialize rs1
li x13, 0x00000000 # initialize rs2
bge x20, x13, some_label_for_btype_1742992071 # perform operation 
addi x0, x1, 1
some_label_for_btype_1742992071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x17, 0x2079645c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x00000001 # initialize rs1
li x2, 0x00000001 # initialize rs2
bge x6, x2, some_label_for_btype_42122354450 # perform operation 
addi x0, x1, 1
some_label_for_btype_42122354450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x00000001 # initialize rs1
li x2, 0x00000001 # initialize rs2
bge x6, x2, some_label_for_btype_42122354451 # perform operation 
addi x0, x1, 1
some_label_for_btype_42122354451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x3, 0x014cce90 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000001 # initialize rs1
li x1, 0x00000002 # initialize rs2
bge x14, x1, some_label_for_btype_3091909320 # perform operation 
addi x0, x1, 1
some_label_for_btype_3091909320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000002 # initialize rs1
li x1, 0x00000002 # initialize rs2
bge x14, x1, some_label_for_btype_3091909321 # perform operation 
addi x0, x1, 1
some_label_for_btype_3091909321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x26, 0x1c113729 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000001 # initialize rs1
li x20, 0x80000000 # initialize rs2
bge x13, x20, some_label_for_btype_1697047090 # perform operation 
addi x0, x1, 1
some_label_for_btype_1697047090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x80000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
bge x13, x20, some_label_for_btype_1697047091 # perform operation 
addi x0, x1, 1
some_label_for_btype_1697047091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x30, 0x57e663a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x00000001 # initialize rs1
li x2, 0x80000001 # initialize rs2
bge x9, x2, some_label_for_btype_10041021350 # perform operation 
addi x0, x1, 1
some_label_for_btype_10041021350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x80000001 # initialize rs1
li x2, 0x80000001 # initialize rs2
bge x9, x2, some_label_for_btype_10041021351 # perform operation 
addi x0, x1, 1
some_label_for_btype_10041021351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x27, 0x3a24c097 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000001 # initialize rs1
li x14, 0x7fffffff # initialize rs2
bge x31, x14, some_label_for_btype_5277129360 # perform operation 
addi x0, x1, 1
some_label_for_btype_5277129360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7fffffff # initialize rs1
li x14, 0x7fffffff # initialize rs2
bge x31, x14, some_label_for_btype_5277129361 # perform operation 
addi x0, x1, 1
some_label_for_btype_5277129361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x20, 0x88ecc7d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000001 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
bge x12, x23, some_label_for_btype_28068628220 # perform operation 
addi x0, x1, 1
some_label_for_btype_28068628220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7ffffffe # initialize rs1
li x23, 0x7ffffffe # initialize rs2
bge x12, x23, some_label_for_btype_28068628221 # perform operation 
addi x0, x1, 1
some_label_for_btype_28068628221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x19, 0x40d32de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x00000001 # initialize rs1
li x17, 0xffffffff # initialize rs2
bge x7, x17, some_label_for_btype_46728270 # perform operation 
addi x0, x1, 1
some_label_for_btype_46728270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xffffffff # initialize rs1
li x17, 0xffffffff # initialize rs2
bge x7, x17, some_label_for_btype_46728271 # perform operation 
addi x0, x1, 1
some_label_for_btype_46728271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x30, 0x33e6ba3e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x00000001 # initialize rs1
li x21, 0xfffffffe # initialize rs2
bge x5, x21, some_label_for_btype_24376561290 # perform operation 
addi x0, x1, 1
some_label_for_btype_24376561290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xfffffffe # initialize rs1
li x21, 0xfffffffe # initialize rs2
bge x5, x21, some_label_for_btype_24376561291 # perform operation 
addi x0, x1, 1
some_label_for_btype_24376561291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x27, 0x57d11a18 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x00000001 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
bge x4, x18, some_label_for_btype_32918044350 # perform operation 
addi x0, x1, 1
some_label_for_btype_32918044350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x5bbc8877 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
bge x4, x18, some_label_for_btype_32918044351 # perform operation 
addi x0, x1, 1
some_label_for_btype_32918044351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x18, 0x65161a13 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x00000001 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
bge x16, x24, some_label_for_btype_33086182520 # perform operation 
addi x0, x1, 1
some_label_for_btype_33086182520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
bge x16, x24, some_label_for_btype_33086182521 # perform operation 
addi x0, x1, 1
some_label_for_btype_33086182521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x1, 0x78150b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x00000001 # initialize rs1
li x17, 0x55555555 # initialize rs2
bge x24, x17, some_label_for_btype_35423384500 # perform operation 
addi x0, x1, 1
some_label_for_btype_35423384500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x55555555 # initialize rs1
li x17, 0x55555555 # initialize rs2
bge x24, x17, some_label_for_btype_35423384501 # perform operation 
addi x0, x1, 1
some_label_for_btype_35423384501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x6, 0xe48df7a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000002 # initialize rs1
li x4, 0x00000000 # initialize rs2
bge x31, x4, some_label_for_btype_37388525600 # perform operation 
addi x0, x1, 1
some_label_for_btype_37388525600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x00000000 # initialize rs1
li x4, 0x00000000 # initialize rs2
bge x31, x4, some_label_for_btype_37388525601 # perform operation 
addi x0, x1, 1
some_label_for_btype_37388525601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x6, 0x1fb7bb82 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x00000002 # initialize rs1
li x2, 0x00000001 # initialize rs2
bge x3, x2, some_label_for_btype_30595819900 # perform operation 
addi x0, x1, 1
some_label_for_btype_30595819900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000001 # initialize rs1
li x2, 0x00000001 # initialize rs2
bge x3, x2, some_label_for_btype_30595819901 # perform operation 
addi x0, x1, 1
some_label_for_btype_30595819901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x13, 0x595d0977 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000002 # initialize rs1
li x10, 0x00000002 # initialize rs2
bge x18, x10, some_label_for_btype_29068032070 # perform operation 
addi x0, x1, 1
some_label_for_btype_29068032070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x00000002 # initialize rs1
li x10, 0x00000002 # initialize rs2
bge x18, x10, some_label_for_btype_29068032071 # perform operation 
addi x0, x1, 1
some_label_for_btype_29068032071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x13, 0x7d6ad020 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x00000002 # initialize rs1
li x18, 0x80000000 # initialize rs2
bge x23, x18, some_label_for_btype_2161491220 # perform operation 
addi x0, x1, 1
some_label_for_btype_2161491220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x80000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
bge x23, x18, some_label_for_btype_2161491221 # perform operation 
addi x0, x1, 1
some_label_for_btype_2161491221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x5, 0xa24d1ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x00000002 # initialize rs1
li x11, 0x80000001 # initialize rs2
bge x25, x11, some_label_for_btype_4012242280 # perform operation 
addi x0, x1, 1
some_label_for_btype_4012242280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x80000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
bge x25, x11, some_label_for_btype_4012242281 # perform operation 
addi x0, x1, 1
some_label_for_btype_4012242281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x29, 0xa202a18f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000002 # initialize rs1
li x8, 0x7fffffff # initialize rs2
bge x12, x8, some_label_for_btype_7957249110 # perform operation 
addi x0, x1, 1
some_label_for_btype_7957249110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7fffffff # initialize rs1
li x8, 0x7fffffff # initialize rs2
bge x12, x8, some_label_for_btype_7957249111 # perform operation 
addi x0, x1, 1
some_label_for_btype_7957249111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x2, 0xe01dc50e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000002 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
bge x19, x15, some_label_for_btype_3657797750 # perform operation 
addi x0, x1, 1
some_label_for_btype_3657797750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x7ffffffe # initialize rs1
li x15, 0x7ffffffe # initialize rs2
bge x19, x15, some_label_for_btype_3657797751 # perform operation 
addi x0, x1, 1
some_label_for_btype_3657797751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x11, 0x8181a4f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000002 # initialize rs1
li x30, 0xffffffff # initialize rs2
bge x27, x30, some_label_for_btype_736633650 # perform operation 
addi x0, x1, 1
some_label_for_btype_736633650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xffffffff # initialize rs1
li x30, 0xffffffff # initialize rs2
bge x27, x30, some_label_for_btype_736633651 # perform operation 
addi x0, x1, 1
some_label_for_btype_736633651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x10, 0xccbbeccf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x00000002 # initialize rs1
li x18, 0xfffffffe # initialize rs2
bge x16, x18, some_label_for_btype_23706624140 # perform operation 
addi x0, x1, 1
some_label_for_btype_23706624140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xfffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
bge x16, x18, some_label_for_btype_23706624141 # perform operation 
addi x0, x1, 1
some_label_for_btype_23706624141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x28, 0x01142920 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x00000002 # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
bge x11, x20, some_label_for_btype_2204025130 # perform operation 
addi x0, x1, 1
some_label_for_btype_2204025130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x5bbc8877 # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
bge x11, x20, some_label_for_btype_2204025131 # perform operation 
addi x0, x1, 1
some_label_for_btype_2204025131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x16, 0x8b5a07c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x00000002 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
bge x11, x21, some_label_for_btype_28485184870 # perform operation 
addi x0, x1, 1
some_label_for_btype_28485184870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
bge x11, x21, some_label_for_btype_28485184871 # perform operation 
addi x0, x1, 1
some_label_for_btype_28485184871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x3, 0x68d609ec # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000002 # initialize rs1
li x6, 0x55555555 # initialize rs2
bge x14, x6, some_label_for_btype_5433681990 # perform operation 
addi x0, x1, 1
some_label_for_btype_5433681990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x55555555 # initialize rs1
li x6, 0x55555555 # initialize rs2
bge x14, x6, some_label_for_btype_5433681991 # perform operation 
addi x0, x1, 1
some_label_for_btype_5433681991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x2, 0xc161f252 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x80000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
bge x3, x15, some_label_for_btype_17087660340 # perform operation 
addi x0, x1, 1
some_label_for_btype_17087660340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
bge x3, x15, some_label_for_btype_17087660341 # perform operation 
addi x0, x1, 1
some_label_for_btype_17087660341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x13, 0x45e866a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x80000000 # initialize rs1
li x1, 0x00000001 # initialize rs2
bge x6, x1, some_label_for_btype_24138680130 # perform operation 
addi x0, x1, 1
some_label_for_btype_24138680130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x00000001 # initialize rs1
li x1, 0x00000001 # initialize rs2
bge x6, x1, some_label_for_btype_24138680131 # perform operation 
addi x0, x1, 1
some_label_for_btype_24138680131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x28, 0x4a589e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x80000000 # initialize rs1
li x15, 0x00000002 # initialize rs2
bge x16, x15, some_label_for_btype_32106409370 # perform operation 
addi x0, x1, 1
some_label_for_btype_32106409370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x00000002 # initialize rs1
li x15, 0x00000002 # initialize rs2
bge x16, x15, some_label_for_btype_32106409371 # perform operation 
addi x0, x1, 1
some_label_for_btype_32106409371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x2, 0xe1ab84a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x80000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
bge x28, x24, some_label_for_btype_25957418350 # perform operation 
addi x0, x1, 1
some_label_for_btype_25957418350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x80000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
bge x28, x24, some_label_for_btype_25957418351 # perform operation 
addi x0, x1, 1
some_label_for_btype_25957418351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x24, 0xc477fe2f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x80000000 # initialize rs1
li x15, 0x80000001 # initialize rs2
bge x9, x15, some_label_for_btype_3031094200 # perform operation 
addi x0, x1, 1
some_label_for_btype_3031094200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x80000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
bge x9, x15, some_label_for_btype_3031094201 # perform operation 
addi x0, x1, 1
some_label_for_btype_3031094201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x18, 0x751f5feb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x80000000 # initialize rs1
li x16, 0x7fffffff # initialize rs2
bge x22, x16, some_label_for_btype_28171784520 # perform operation 
addi x0, x1, 1
some_label_for_btype_28171784520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x7fffffff # initialize rs1
li x16, 0x7fffffff # initialize rs2
bge x22, x16, some_label_for_btype_28171784521 # perform operation 
addi x0, x1, 1
some_label_for_btype_28171784521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x22, 0x75e60125 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x80000000 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
bge x1, x27, some_label_for_btype_27366164390 # perform operation 
addi x0, x1, 1
some_label_for_btype_27366164390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x7ffffffe # initialize rs1
li x27, 0x7ffffffe # initialize rs2
bge x1, x27, some_label_for_btype_27366164391 # perform operation 
addi x0, x1, 1
some_label_for_btype_27366164391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x8, 0xb3d591d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x80000000 # initialize rs1
li x23, 0xffffffff # initialize rs2
bge x3, x23, some_label_for_btype_19956516450 # perform operation 
addi x0, x1, 1
some_label_for_btype_19956516450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xffffffff # initialize rs1
li x23, 0xffffffff # initialize rs2
bge x3, x23, some_label_for_btype_19956516451 # perform operation 
addi x0, x1, 1
some_label_for_btype_19956516451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x20, 0x9dc941d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x80000000 # initialize rs1
li x4, 0xfffffffe # initialize rs2
bge x7, x4, some_label_for_btype_19169973870 # perform operation 
addi x0, x1, 1
some_label_for_btype_19169973870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xfffffffe # initialize rs1
li x4, 0xfffffffe # initialize rs2
bge x7, x4, some_label_for_btype_19169973871 # perform operation 
addi x0, x1, 1
some_label_for_btype_19169973871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x27, 0xbae3de7f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x80000000 # initialize rs1
li x11, 0x5bbc8877 # initialize rs2
bge x14, x11, some_label_for_btype_31699860820 # perform operation 
addi x0, x1, 1
some_label_for_btype_31699860820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x5bbc8877 # initialize rs1
li x11, 0x5bbc8877 # initialize rs2
bge x14, x11, some_label_for_btype_31699860821 # perform operation 
addi x0, x1, 1
some_label_for_btype_31699860821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x28, 0x87a20475 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x80000000 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
bge x26, x7, some_label_for_btype_8794237520 # perform operation 
addi x0, x1, 1
some_label_for_btype_8794237520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
bge x26, x7, some_label_for_btype_8794237521 # perform operation 
addi x0, x1, 1
some_label_for_btype_8794237521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x7, 0xf341c0be # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x80000000 # initialize rs1
li x9, 0x55555555 # initialize rs2
bge x19, x9, some_label_for_btype_19009392540 # perform operation 
addi x0, x1, 1
some_label_for_btype_19009392540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x55555555 # initialize rs1
li x9, 0x55555555 # initialize rs2
bge x19, x9, some_label_for_btype_19009392541 # perform operation 
addi x0, x1, 1
some_label_for_btype_19009392541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x27, 0x22f7a139 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x80000001 # initialize rs1
li x9, 0x00000000 # initialize rs2
bge x25, x9, some_label_for_btype_39984977790 # perform operation 
addi x0, x1, 1
some_label_for_btype_39984977790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x00000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
bge x25, x9, some_label_for_btype_39984977791 # perform operation 
addi x0, x1, 1
some_label_for_btype_39984977791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x6, 0xf150b209 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x80000001 # initialize rs1
li x26, 0x00000001 # initialize rs2
bge x9, x26, some_label_for_btype_25548187090 # perform operation 
addi x0, x1, 1
some_label_for_btype_25548187090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x00000001 # initialize rs1
li x26, 0x00000001 # initialize rs2
bge x9, x26, some_label_for_btype_25548187091 # perform operation 
addi x0, x1, 1
some_label_for_btype_25548187091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x2, 0xb3d29ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x80000001 # initialize rs1
li x8, 0x00000002 # initialize rs2
bge x3, x8, some_label_for_btype_4672213110 # perform operation 
addi x0, x1, 1
some_label_for_btype_4672213110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000002 # initialize rs1
li x8, 0x00000002 # initialize rs2
bge x3, x8, some_label_for_btype_4672213111 # perform operation 
addi x0, x1, 1
some_label_for_btype_4672213111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x1, 0x6dfaa388 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x80000001 # initialize rs1
li x22, 0x80000000 # initialize rs2
bge x24, x22, some_label_for_btype_32449892010 # perform operation 
addi x0, x1, 1
some_label_for_btype_32449892010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x80000000 # initialize rs1
li x22, 0x80000000 # initialize rs2
bge x24, x22, some_label_for_btype_32449892011 # perform operation 
addi x0, x1, 1
some_label_for_btype_32449892011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x12, 0xbae0a14c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x80000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
bge x24, x6, some_label_for_btype_568076340 # perform operation 
addi x0, x1, 1
some_label_for_btype_568076340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x80000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
bge x24, x6, some_label_for_btype_568076341 # perform operation 
addi x0, x1, 1
some_label_for_btype_568076341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x4, 0xe79bf6ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x80000001 # initialize rs1
li x7, 0x7fffffff # initialize rs2
bge x29, x7, some_label_for_btype_30701630050 # perform operation 
addi x0, x1, 1
some_label_for_btype_30701630050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x7fffffff # initialize rs1
li x7, 0x7fffffff # initialize rs2
bge x29, x7, some_label_for_btype_30701630051 # perform operation 
addi x0, x1, 1
some_label_for_btype_30701630051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x12, 0x19983d05 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x80000001 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
bge x21, x3, some_label_for_btype_28667433610 # perform operation 
addi x0, x1, 1
some_label_for_btype_28667433610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x7ffffffe # initialize rs1
li x3, 0x7ffffffe # initialize rs2
bge x21, x3, some_label_for_btype_28667433611 # perform operation 
addi x0, x1, 1
some_label_for_btype_28667433611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x29, 0x0acdbea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x80000001 # initialize rs1
li x31, 0xffffffff # initialize rs2
bge x27, x31, some_label_for_btype_18558167470 # perform operation 
addi x0, x1, 1
some_label_for_btype_18558167470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xffffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
bge x27, x31, some_label_for_btype_18558167471 # perform operation 
addi x0, x1, 1
some_label_for_btype_18558167471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x28, 0x5f605add # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x80000001 # initialize rs1
li x4, 0xfffffffe # initialize rs2
bge x3, x4, some_label_for_btype_22360608500 # perform operation 
addi x0, x1, 1
some_label_for_btype_22360608500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xfffffffe # initialize rs1
li x4, 0xfffffffe # initialize rs2
bge x3, x4, some_label_for_btype_22360608501 # perform operation 
addi x0, x1, 1
some_label_for_btype_22360608501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x29, 0x6192083f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x80000001 # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
bge x5, x13, some_label_for_btype_11804831450 # perform operation 
addi x0, x1, 1
some_label_for_btype_11804831450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x5bbc8877 # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
bge x5, x13, some_label_for_btype_11804831451 # perform operation 
addi x0, x1, 1
some_label_for_btype_11804831451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x6, 0xffa562ff # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x80000001 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bge x2, x11, some_label_for_btype_15488724470 # perform operation 
addi x0, x1, 1
some_label_for_btype_15488724470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bge x2, x11, some_label_for_btype_15488724471 # perform operation 
addi x0, x1, 1
some_label_for_btype_15488724471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x2, 0x13dfc7bf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x80000001 # initialize rs1
li x4, 0x55555555 # initialize rs2
bge x9, x4, some_label_for_btype_13939658310 # perform operation 
addi x0, x1, 1
some_label_for_btype_13939658310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x55555555 # initialize rs1
li x4, 0x55555555 # initialize rs2
bge x9, x4, some_label_for_btype_13939658311 # perform operation 
addi x0, x1, 1
some_label_for_btype_13939658311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x20, 0x5bbe2b9c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x7fffffff # initialize rs1
li x5, 0x00000000 # initialize rs2
bge x1, x5, some_label_for_btype_20937478560 # perform operation 
addi x0, x1, 1
some_label_for_btype_20937478560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x00000000 # initialize rs1
li x5, 0x00000000 # initialize rs2
bge x1, x5, some_label_for_btype_20937478561 # perform operation 
addi x0, x1, 1
some_label_for_btype_20937478561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x23, 0xce63bc0e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7fffffff # initialize rs1
li x30, 0x00000001 # initialize rs2
bge x11, x30, some_label_for_btype_5275270230 # perform operation 
addi x0, x1, 1
some_label_for_btype_5275270230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x00000001 # initialize rs1
li x30, 0x00000001 # initialize rs2
bge x11, x30, some_label_for_btype_5275270231 # perform operation 
addi x0, x1, 1
some_label_for_btype_5275270231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x1, 0x00ca043e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x7fffffff # initialize rs1
li x7, 0x00000002 # initialize rs2
bge x31, x7, some_label_for_btype_4361209200 # perform operation 
addi x0, x1, 1
some_label_for_btype_4361209200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x00000002 # initialize rs1
li x7, 0x00000002 # initialize rs2
bge x31, x7, some_label_for_btype_4361209201 # perform operation 
addi x0, x1, 1
some_label_for_btype_4361209201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x26, 0xe74d1bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x7fffffff # initialize rs1
li x28, 0x80000000 # initialize rs2
bge x15, x28, some_label_for_btype_42431516480 # perform operation 
addi x0, x1, 1
some_label_for_btype_42431516480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x80000000 # initialize rs1
li x28, 0x80000000 # initialize rs2
bge x15, x28, some_label_for_btype_42431516481 # perform operation 
addi x0, x1, 1
some_label_for_btype_42431516481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x31, 0xb33d4887 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7fffffff # initialize rs1
li x29, 0x80000001 # initialize rs2
bge x18, x29, some_label_for_btype_26099586190 # perform operation 
addi x0, x1, 1
some_label_for_btype_26099586190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x80000001 # initialize rs1
li x29, 0x80000001 # initialize rs2
bge x18, x29, some_label_for_btype_26099586191 # perform operation 
addi x0, x1, 1
some_label_for_btype_26099586191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x3, 0xdb93b206 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
bge x19, x10, some_label_for_btype_30923053760 # perform operation 
addi x0, x1, 1
some_label_for_btype_30923053760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
bge x19, x10, some_label_for_btype_30923053761 # perform operation 
addi x0, x1, 1
some_label_for_btype_30923053761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x9, 0xb4594714 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x7fffffff # initialize rs1
li x17, 0x7ffffffe # initialize rs2
bge x26, x17, some_label_for_btype_28723587330 # perform operation 
addi x0, x1, 1
some_label_for_btype_28723587330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x7ffffffe # initialize rs1
li x17, 0x7ffffffe # initialize rs2
bge x26, x17, some_label_for_btype_28723587331 # perform operation 
addi x0, x1, 1
some_label_for_btype_28723587331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x30, 0x421abbcc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x7fffffff # initialize rs1
li x2, 0xffffffff # initialize rs2
bge x1, x2, some_label_for_btype_32008526720 # perform operation 
addi x0, x1, 1
some_label_for_btype_32008526720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xffffffff # initialize rs1
li x2, 0xffffffff # initialize rs2
bge x1, x2, some_label_for_btype_32008526721 # perform operation 
addi x0, x1, 1
some_label_for_btype_32008526721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x28, 0x5975d0ad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x7fffffff # initialize rs1
li x24, 0xfffffffe # initialize rs2
bge x9, x24, some_label_for_btype_7177910270 # perform operation 
addi x0, x1, 1
some_label_for_btype_7177910270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xfffffffe # initialize rs1
li x24, 0xfffffffe # initialize rs2
bge x9, x24, some_label_for_btype_7177910271 # perform operation 
addi x0, x1, 1
some_label_for_btype_7177910271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x26, 0xc09853bb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x7fffffff # initialize rs1
li x1, 0x5bbc8877 # initialize rs2
bge x16, x1, some_label_for_btype_35906232640 # perform operation 
addi x0, x1, 1
some_label_for_btype_35906232640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5bbc8877 # initialize rs1
li x1, 0x5bbc8877 # initialize rs2
bge x16, x1, some_label_for_btype_35906232641 # perform operation 
addi x0, x1, 1
some_label_for_btype_35906232641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x31, 0x7b637070 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x7fffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
bge x25, x7, some_label_for_btype_33373627550 # perform operation 
addi x0, x1, 1
some_label_for_btype_33373627550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
bge x25, x7, some_label_for_btype_33373627551 # perform operation 
addi x0, x1, 1
some_label_for_btype_33373627551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x28, 0xf079cf2e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7fffffff # initialize rs1
li x4, 0x55555555 # initialize rs2
bge x17, x4, some_label_for_btype_26968708390 # perform operation 
addi x0, x1, 1
some_label_for_btype_26968708390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x55555555 # initialize rs1
li x4, 0x55555555 # initialize rs2
bge x17, x4, some_label_for_btype_26968708391 # perform operation 
addi x0, x1, 1
some_label_for_btype_26968708391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x30, 0xe6e0cdbb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7ffffffe # initialize rs1
li x28, 0x00000000 # initialize rs2
bge x17, x28, some_label_for_btype_10040115730 # perform operation 
addi x0, x1, 1
some_label_for_btype_10040115730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000000 # initialize rs1
li x28, 0x00000000 # initialize rs2
bge x17, x28, some_label_for_btype_10040115731 # perform operation 
addi x0, x1, 1
some_label_for_btype_10040115731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x16, 0x406b10a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x7ffffffe # initialize rs1
li x12, 0x00000001 # initialize rs2
bge x21, x12, some_label_for_btype_32996800910 # perform operation 
addi x0, x1, 1
some_label_for_btype_32996800910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
bge x21, x12, some_label_for_btype_32996800911 # perform operation 
addi x0, x1, 1
some_label_for_btype_32996800911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x24, 0x6d642c83 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x7ffffffe # initialize rs1
li x5, 0x00000002 # initialize rs2
bge x20, x5, some_label_for_btype_28330820260 # perform operation 
addi x0, x1, 1
some_label_for_btype_28330820260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000002 # initialize rs1
li x5, 0x00000002 # initialize rs2
bge x20, x5, some_label_for_btype_28330820261 # perform operation 
addi x0, x1, 1
some_label_for_btype_28330820261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x22, 0x64308d4f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x7ffffffe # initialize rs1
li x20, 0x80000000 # initialize rs2
bge x4, x20, some_label_for_btype_9904046510 # perform operation 
addi x0, x1, 1
some_label_for_btype_9904046510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x80000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
bge x4, x20, some_label_for_btype_9904046511 # perform operation 
addi x0, x1, 1
some_label_for_btype_9904046511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x18, 0x02eaf4c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7ffffffe # initialize rs1
li x1, 0x80000001 # initialize rs2
bge x24, x1, some_label_for_btype_24323365560 # perform operation 
addi x0, x1, 1
some_label_for_btype_24323365560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x80000001 # initialize rs1
li x1, 0x80000001 # initialize rs2
bge x24, x1, some_label_for_btype_24323365561 # perform operation 
addi x0, x1, 1
some_label_for_btype_24323365561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x3, 0x93d2b5ea # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7ffffffe # initialize rs1
li x24, 0x7fffffff # initialize rs2
bge x18, x24, some_label_for_btype_14609241280 # perform operation 
addi x0, x1, 1
some_label_for_btype_14609241280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x7fffffff # initialize rs1
li x24, 0x7fffffff # initialize rs2
bge x18, x24, some_label_for_btype_14609241281 # perform operation 
addi x0, x1, 1
some_label_for_btype_14609241281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x15, 0xebee311c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x7ffffffe # initialize rs1
li x19, 0x7ffffffe # initialize rs2
bge x23, x19, some_label_for_btype_39237120530 # perform operation 
addi x0, x1, 1
some_label_for_btype_39237120530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x7ffffffe # initialize rs1
li x19, 0x7ffffffe # initialize rs2
bge x23, x19, some_label_for_btype_39237120531 # perform operation 
addi x0, x1, 1
some_label_for_btype_39237120531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x1, 0x24dd9fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7ffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
bge x17, x18, some_label_for_btype_21084371590 # perform operation 
addi x0, x1, 1
some_label_for_btype_21084371590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xffffffff # initialize rs1
li x18, 0xffffffff # initialize rs2
bge x17, x18, some_label_for_btype_21084371591 # perform operation 
addi x0, x1, 1
some_label_for_btype_21084371591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x2, 0x6d4477a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7ffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
bge x11, x12, some_label_for_btype_30129038240 # perform operation 
addi x0, x1, 1
some_label_for_btype_30129038240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xfffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
bge x11, x12, some_label_for_btype_30129038241 # perform operation 
addi x0, x1, 1
some_label_for_btype_30129038241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x31, 0x15a952d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7ffffffe # initialize rs1
li x6, 0x5bbc8877 # initialize rs2
bge x29, x6, some_label_for_btype_40707816610 # perform operation 
addi x0, x1, 1
some_label_for_btype_40707816610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x5bbc8877 # initialize rs1
li x6, 0x5bbc8877 # initialize rs2
bge x29, x6, some_label_for_btype_40707816611 # perform operation 
addi x0, x1, 1
some_label_for_btype_40707816611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x16, 0x3249f8a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x7ffffffe # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
bge x3, x6, some_label_for_btype_1795468740 # perform operation 
addi x0, x1, 1
some_label_for_btype_1795468740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
bge x3, x6, some_label_for_btype_1795468741 # perform operation 
addi x0, x1, 1
some_label_for_btype_1795468741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x31, 0x3a5e991b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x7ffffffe # initialize rs1
li x4, 0x55555555 # initialize rs2
bge x5, x4, some_label_for_btype_40379703790 # perform operation 
addi x0, x1, 1
some_label_for_btype_40379703790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x55555555 # initialize rs1
li x4, 0x55555555 # initialize rs2
bge x5, x4, some_label_for_btype_40379703791 # perform operation 
addi x0, x1, 1
some_label_for_btype_40379703791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x9, 0x1c216ff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xffffffff # initialize rs1
li x26, 0x00000000 # initialize rs2
bge x21, x26, some_label_for_btype_27463577130 # perform operation 
addi x0, x1, 1
some_label_for_btype_27463577130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000000 # initialize rs1
li x26, 0x00000000 # initialize rs2
bge x21, x26, some_label_for_btype_27463577131 # perform operation 
addi x0, x1, 1
some_label_for_btype_27463577131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x12, 0x9a87fe1c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xffffffff # initialize rs1
li x18, 0x00000001 # initialize rs2
bge x17, x18, some_label_for_btype_31577195650 # perform operation 
addi x0, x1, 1
some_label_for_btype_31577195650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
bge x17, x18, some_label_for_btype_31577195651 # perform operation 
addi x0, x1, 1
some_label_for_btype_31577195651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x22, 0x31ab6131 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xffffffff # initialize rs1
li x29, 0x00000002 # initialize rs2
bge x20, x29, some_label_for_btype_20280864390 # perform operation 
addi x0, x1, 1
some_label_for_btype_20280864390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000002 # initialize rs1
li x29, 0x00000002 # initialize rs2
bge x20, x29, some_label_for_btype_20280864391 # perform operation 
addi x0, x1, 1
some_label_for_btype_20280864391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x4, 0x19e09b74 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xffffffff # initialize rs1
li x11, 0x80000000 # initialize rs2
bge x31, x11, some_label_for_btype_18973716420 # perform operation 
addi x0, x1, 1
some_label_for_btype_18973716420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x80000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
bge x31, x11, some_label_for_btype_18973716421 # perform operation 
addi x0, x1, 1
some_label_for_btype_18973716421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x21, 0xa49797fa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xffffffff # initialize rs1
li x15, 0x80000001 # initialize rs2
bge x31, x15, some_label_for_btype_10647910710 # perform operation 
addi x0, x1, 1
some_label_for_btype_10647910710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x80000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
bge x31, x15, some_label_for_btype_10647910711 # perform operation 
addi x0, x1, 1
some_label_for_btype_10647910711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x6, 0xb0aedede # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xffffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
bge x12, x22, some_label_for_btype_14066006180 # perform operation 
addi x0, x1, 1
some_label_for_btype_14066006180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7fffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
bge x12, x22, some_label_for_btype_14066006181 # perform operation 
addi x0, x1, 1
some_label_for_btype_14066006181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x10, 0x5cb0b802 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xffffffff # initialize rs1
li x24, 0x7ffffffe # initialize rs2
bge x15, x24, some_label_for_btype_42349729580 # perform operation 
addi x0, x1, 1
some_label_for_btype_42349729580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x7ffffffe # initialize rs1
li x24, 0x7ffffffe # initialize rs2
bge x15, x24, some_label_for_btype_42349729581 # perform operation 
addi x0, x1, 1
some_label_for_btype_42349729581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x29, 0xee305bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xffffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
bge x26, x25, some_label_for_btype_5109802270 # perform operation 
addi x0, x1, 1
some_label_for_btype_5109802270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xffffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
bge x26, x25, some_label_for_btype_5109802271 # perform operation 
addi x0, x1, 1
some_label_for_btype_5109802271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x13, 0x8553b26c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xffffffff # initialize rs1
li x1, 0xfffffffe # initialize rs2
bge x10, x1, some_label_for_btype_6136648090 # perform operation 
addi x0, x1, 1
some_label_for_btype_6136648090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xfffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
bge x10, x1, some_label_for_btype_6136648091 # perform operation 
addi x0, x1, 1
some_label_for_btype_6136648091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x29, 0xf6bfca28 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xffffffff # initialize rs1
li x9, 0x5bbc8877 # initialize rs2
bge x14, x9, some_label_for_btype_11905115840 # perform operation 
addi x0, x1, 1
some_label_for_btype_11905115840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x5bbc8877 # initialize rs1
li x9, 0x5bbc8877 # initialize rs2
bge x14, x9, some_label_for_btype_11905115841 # perform operation 
addi x0, x1, 1
some_label_for_btype_11905115841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x25, 0xa09a5ae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xffffffff # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
bge x12, x8, some_label_for_btype_41709577350 # perform operation 
addi x0, x1, 1
some_label_for_btype_41709577350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
bge x12, x8, some_label_for_btype_41709577351 # perform operation 
addi x0, x1, 1
some_label_for_btype_41709577351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x22, 0x6b0e3fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xffffffff # initialize rs1
li x31, 0x55555555 # initialize rs2
bge x15, x31, some_label_for_btype_13341886680 # perform operation 
addi x0, x1, 1
some_label_for_btype_13341886680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x55555555 # initialize rs1
li x31, 0x55555555 # initialize rs2
bge x15, x31, some_label_for_btype_13341886681 # perform operation 
addi x0, x1, 1
some_label_for_btype_13341886681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x4, 0x8bdad8ae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xfffffffe # initialize rs1
li x30, 0x00000000 # initialize rs2
bge x13, x30, some_label_for_btype_24720751350 # perform operation 
addi x0, x1, 1
some_label_for_btype_24720751350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000000 # initialize rs1
li x30, 0x00000000 # initialize rs2
bge x13, x30, some_label_for_btype_24720751351 # perform operation 
addi x0, x1, 1
some_label_for_btype_24720751351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x4, 0x702cd372 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xfffffffe # initialize rs1
li x12, 0x00000001 # initialize rs2
bge x27, x12, some_label_for_btype_15917691920 # perform operation 
addi x0, x1, 1
some_label_for_btype_15917691920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x00000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
bge x27, x12, some_label_for_btype_15917691921 # perform operation 
addi x0, x1, 1
some_label_for_btype_15917691921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x4, 0x081c6f9c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xfffffffe # initialize rs1
li x24, 0x00000002 # initialize rs2
bge x21, x24, some_label_for_btype_10193811950 # perform operation 
addi x0, x1, 1
some_label_for_btype_10193811950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000002 # initialize rs1
li x24, 0x00000002 # initialize rs2
bge x21, x24, some_label_for_btype_10193811951 # perform operation 
addi x0, x1, 1
some_label_for_btype_10193811951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x13, 0x71dc69d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xfffffffe # initialize rs1
li x30, 0x80000000 # initialize rs2
bge x22, x30, some_label_for_btype_25957123330 # perform operation 
addi x0, x1, 1
some_label_for_btype_25957123330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x80000000 # initialize rs1
li x30, 0x80000000 # initialize rs2
bge x22, x30, some_label_for_btype_25957123331 # perform operation 
addi x0, x1, 1
some_label_for_btype_25957123331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x30, 0xe99b4143 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xfffffffe # initialize rs1
li x10, 0x80000001 # initialize rs2
bge x16, x10, some_label_for_btype_39234193420 # perform operation 
addi x0, x1, 1
some_label_for_btype_39234193420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x80000001 # initialize rs1
li x10, 0x80000001 # initialize rs2
bge x16, x10, some_label_for_btype_39234193421 # perform operation 
addi x0, x1, 1
some_label_for_btype_39234193421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x4, 0xd9cce546 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xfffffffe # initialize rs1
li x24, 0x7fffffff # initialize rs2
bge x25, x24, some_label_for_btype_25809747470 # perform operation 
addi x0, x1, 1
some_label_for_btype_25809747470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x7fffffff # initialize rs1
li x24, 0x7fffffff # initialize rs2
bge x25, x24, some_label_for_btype_25809747471 # perform operation 
addi x0, x1, 1
some_label_for_btype_25809747471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x11, 0x559672a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xfffffffe # initialize rs1
li x19, 0x7ffffffe # initialize rs2
bge x16, x19, some_label_for_btype_32884657180 # perform operation 
addi x0, x1, 1
some_label_for_btype_32884657180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x7ffffffe # initialize rs1
li x19, 0x7ffffffe # initialize rs2
bge x16, x19, some_label_for_btype_32884657181 # perform operation 
addi x0, x1, 1
some_label_for_btype_32884657181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x10, 0xe933dd92 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xfffffffe # initialize rs1
li x21, 0xffffffff # initialize rs2
bge x6, x21, some_label_for_btype_6628791820 # perform operation 
addi x0, x1, 1
some_label_for_btype_6628791820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
bge x6, x21, some_label_for_btype_6628791821 # perform operation 
addi x0, x1, 1
some_label_for_btype_6628791821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x18, 0x0530ec5e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xfffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
bge x9, x1, some_label_for_btype_26780558510 # perform operation 
addi x0, x1, 1
some_label_for_btype_26780558510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xfffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
bge x9, x1, some_label_for_btype_26780558511 # perform operation 
addi x0, x1, 1
some_label_for_btype_26780558511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x20, 0x09530b3b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xfffffffe # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
bge x11, x14, some_label_for_btype_40950122000 # perform operation 
addi x0, x1, 1
some_label_for_btype_40950122000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x5bbc8877 # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
bge x11, x14, some_label_for_btype_40950122001 # perform operation 
addi x0, x1, 1
some_label_for_btype_40950122001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x30, 0x14ac5940 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xfffffffe # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
bge x29, x12, some_label_for_btype_6620947210 # perform operation 
addi x0, x1, 1
some_label_for_btype_6620947210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
bge x29, x12, some_label_for_btype_6620947211 # perform operation 
addi x0, x1, 1
some_label_for_btype_6620947211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x20, 0x7991bd1d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xfffffffe # initialize rs1
li x9, 0x55555555 # initialize rs2
bge x10, x9, some_label_for_btype_40645301980 # perform operation 
addi x0, x1, 1
some_label_for_btype_40645301980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x55555555 # initialize rs1
li x9, 0x55555555 # initialize rs2
bge x10, x9, some_label_for_btype_40645301981 # perform operation 
addi x0, x1, 1
some_label_for_btype_40645301981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x26, 0xe9df9d97 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x5bbc8877 # initialize rs1
li x8, 0x00000000 # initialize rs2
bge x31, x8, some_label_for_btype_27802795630 # perform operation 
addi x0, x1, 1
some_label_for_btype_27802795630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x00000000 # initialize rs1
li x8, 0x00000000 # initialize rs2
bge x31, x8, some_label_for_btype_27802795631 # perform operation 
addi x0, x1, 1
some_label_for_btype_27802795631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x10, 0x79a99125 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x5bbc8877 # initialize rs1
li x30, 0x00000001 # initialize rs2
bge x21, x30, some_label_for_btype_18917545980 # perform operation 
addi x0, x1, 1
some_label_for_btype_18917545980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000001 # initialize rs1
li x30, 0x00000001 # initialize rs2
bge x21, x30, some_label_for_btype_18917545981 # perform operation 
addi x0, x1, 1
some_label_for_btype_18917545981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x15, 0x9f0cba0c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x5bbc8877 # initialize rs1
li x21, 0x00000002 # initialize rs2
bge x23, x21, some_label_for_btype_17749860050 # perform operation 
addi x0, x1, 1
some_label_for_btype_17749860050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000002 # initialize rs1
li x21, 0x00000002 # initialize rs2
bge x23, x21, some_label_for_btype_17749860051 # perform operation 
addi x0, x1, 1
some_label_for_btype_17749860051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x28, 0x5a1a4620 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x5bbc8877 # initialize rs1
li x10, 0x80000000 # initialize rs2
bge x30, x10, some_label_for_btype_16306630850 # perform operation 
addi x0, x1, 1
some_label_for_btype_16306630850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x80000000 # initialize rs1
li x10, 0x80000000 # initialize rs2
bge x30, x10, some_label_for_btype_16306630851 # perform operation 
addi x0, x1, 1
some_label_for_btype_16306630851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x2, 0x4c8af47c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x5bbc8877 # initialize rs1
li x9, 0x80000001 # initialize rs2
bge x21, x9, some_label_for_btype_27579958550 # perform operation 
addi x0, x1, 1
some_label_for_btype_27579958550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x80000001 # initialize rs1
li x9, 0x80000001 # initialize rs2
bge x21, x9, some_label_for_btype_27579958551 # perform operation 
addi x0, x1, 1
some_label_for_btype_27579958551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x26, 0x5f609156 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x5bbc8877 # initialize rs1
li x31, 0x7fffffff # initialize rs2
bge x1, x31, some_label_for_btype_34884854020 # perform operation 
addi x0, x1, 1
some_label_for_btype_34884854020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x7fffffff # initialize rs1
li x31, 0x7fffffff # initialize rs2
bge x1, x31, some_label_for_btype_34884854021 # perform operation 
addi x0, x1, 1
some_label_for_btype_34884854021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x25, 0xf9957bea # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x5bbc8877 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
bge x26, x22, some_label_for_btype_39278237710 # perform operation 
addi x0, x1, 1
some_label_for_btype_39278237710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x7ffffffe # initialize rs1
li x22, 0x7ffffffe # initialize rs2
bge x26, x22, some_label_for_btype_39278237711 # perform operation 
addi x0, x1, 1
some_label_for_btype_39278237711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x6, 0x8eb2641b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x5bbc8877 # initialize rs1
li x28, 0xffffffff # initialize rs2
bge x23, x28, some_label_for_btype_2101486430 # perform operation 
addi x0, x1, 1
some_label_for_btype_2101486430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xffffffff # initialize rs1
li x28, 0xffffffff # initialize rs2
bge x23, x28, some_label_for_btype_2101486431 # perform operation 
addi x0, x1, 1
some_label_for_btype_2101486431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x8, 0x5ce37a87 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5bbc8877 # initialize rs1
li x3, 0xfffffffe # initialize rs2
bge x5, x3, some_label_for_btype_40733500150 # perform operation 
addi x0, x1, 1
some_label_for_btype_40733500150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xfffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
bge x5, x3, some_label_for_btype_40733500151 # perform operation 
addi x0, x1, 1
some_label_for_btype_40733500151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x8, 0x19b5822e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x5bbc8877 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
bge x12, x18, some_label_for_btype_11027425530 # perform operation 
addi x0, x1, 1
some_label_for_btype_11027425530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x5bbc8877 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
bge x12, x18, some_label_for_btype_11027425531 # perform operation 
addi x0, x1, 1
some_label_for_btype_11027425531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x27, 0x654849c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x5bbc8877 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
bge x14, x13, some_label_for_btype_10623564660 # perform operation 
addi x0, x1, 1
some_label_for_btype_10623564660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
bge x14, x13, some_label_for_btype_10623564661 # perform operation 
addi x0, x1, 1
some_label_for_btype_10623564661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x6, 0x1d8e8d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x5bbc8877 # initialize rs1
li x18, 0x55555555 # initialize rs2
bge x23, x18, some_label_for_btype_4258850020 # perform operation 
addi x0, x1, 1
some_label_for_btype_4258850020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x55555555 # initialize rs1
li x18, 0x55555555 # initialize rs2
bge x23, x18, some_label_for_btype_4258850021 # perform operation 
addi x0, x1, 1
some_label_for_btype_4258850021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x31, 0x878738df # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xaaaaaaaa # initialize rs1
li x2, 0x00000000 # initialize rs2
bge x29, x2, some_label_for_btype_24519123960 # perform operation 
addi x0, x1, 1
some_label_for_btype_24519123960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x00000000 # initialize rs1
li x2, 0x00000000 # initialize rs2
bge x29, x2, some_label_for_btype_24519123961 # perform operation 
addi x0, x1, 1
some_label_for_btype_24519123961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x18, 0xe797a97a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xaaaaaaaa # initialize rs1
li x7, 0x00000001 # initialize rs2
bge x16, x7, some_label_for_btype_4503837300 # perform operation 
addi x0, x1, 1
some_label_for_btype_4503837300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x00000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
bge x16, x7, some_label_for_btype_4503837301 # perform operation 
addi x0, x1, 1
some_label_for_btype_4503837301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x23, 0x32147b76 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xaaaaaaaa # initialize rs1
li x2, 0x00000002 # initialize rs2
bge x1, x2, some_label_for_btype_28186317050 # perform operation 
addi x0, x1, 1
some_label_for_btype_28186317050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
bge x1, x2, some_label_for_btype_28186317051 # perform operation 
addi x0, x1, 1
some_label_for_btype_28186317051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x6, 0xb56894a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xaaaaaaaa # initialize rs1
li x8, 0x80000000 # initialize rs2
bge x1, x8, some_label_for_btype_30010668120 # perform operation 
addi x0, x1, 1
some_label_for_btype_30010668120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x80000000 # initialize rs1
li x8, 0x80000000 # initialize rs2
bge x1, x8, some_label_for_btype_30010668121 # perform operation 
addi x0, x1, 1
some_label_for_btype_30010668121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x20, 0xea731f29 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xaaaaaaaa # initialize rs1
li x25, 0x80000001 # initialize rs2
bge x8, x25, some_label_for_btype_336604090 # perform operation 
addi x0, x1, 1
some_label_for_btype_336604090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
bge x8, x25, some_label_for_btype_336604091 # perform operation 
addi x0, x1, 1
some_label_for_btype_336604091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x20, 0xf06de9d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xaaaaaaaa # initialize rs1
li x23, 0x7fffffff # initialize rs2
bge x16, x23, some_label_for_btype_1150493900 # perform operation 
addi x0, x1, 1
some_label_for_btype_1150493900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x7fffffff # initialize rs1
li x23, 0x7fffffff # initialize rs2
bge x16, x23, some_label_for_btype_1150493901 # perform operation 
addi x0, x1, 1
some_label_for_btype_1150493901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x13, 0x0561fb1e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xaaaaaaaa # initialize rs1
li x12, 0x7ffffffe # initialize rs2
bge x19, x12, some_label_for_btype_35591769930 # perform operation 
addi x0, x1, 1
some_label_for_btype_35591769930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x7ffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
bge x19, x12, some_label_for_btype_35591769931 # perform operation 
addi x0, x1, 1
some_label_for_btype_35591769931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x9, 0xf4312fbd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xaaaaaaaa # initialize rs1
li x19, 0xffffffff # initialize rs2
bge x6, x19, some_label_for_btype_42518287230 # perform operation 
addi x0, x1, 1
some_label_for_btype_42518287230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xffffffff # initialize rs1
li x19, 0xffffffff # initialize rs2
bge x6, x19, some_label_for_btype_42518287231 # perform operation 
addi x0, x1, 1
some_label_for_btype_42518287231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x17, 0x197fda95 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xaaaaaaaa # initialize rs1
li x7, 0xfffffffe # initialize rs2
bge x5, x7, some_label_for_btype_28953653370 # perform operation 
addi x0, x1, 1
some_label_for_btype_28953653370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xfffffffe # initialize rs1
li x7, 0xfffffffe # initialize rs2
bge x5, x7, some_label_for_btype_28953653371 # perform operation 
addi x0, x1, 1
some_label_for_btype_28953653371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x13, 0x67db4cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xaaaaaaaa # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
bge x18, x27, some_label_for_btype_34202005150 # perform operation 
addi x0, x1, 1
some_label_for_btype_34202005150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x5bbc8877 # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
bge x18, x27, some_label_for_btype_34202005151 # perform operation 
addi x0, x1, 1
some_label_for_btype_34202005151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x14, 0x7c4658f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
bge x29, x10, some_label_for_btype_197942740 # perform operation 
addi x0, x1, 1
some_label_for_btype_197942740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
bge x29, x10, some_label_for_btype_197942741 # perform operation 
addi x0, x1, 1
some_label_for_btype_197942741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x6, 0xaf3758b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xaaaaaaaa # initialize rs1
li x24, 0x55555555 # initialize rs2
bge x12, x24, some_label_for_btype_1430432030 # perform operation 
addi x0, x1, 1
some_label_for_btype_1430432030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x55555555 # initialize rs1
li x24, 0x55555555 # initialize rs2
bge x12, x24, some_label_for_btype_1430432031 # perform operation 
addi x0, x1, 1
some_label_for_btype_1430432031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x23, 0x80e955af # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x55555555 # initialize rs1
li x28, 0x00000000 # initialize rs2
bge x13, x28, some_label_for_btype_22518137210 # perform operation 
addi x0, x1, 1
some_label_for_btype_22518137210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000000 # initialize rs1
li x28, 0x00000000 # initialize rs2
bge x13, x28, some_label_for_btype_22518137211 # perform operation 
addi x0, x1, 1
some_label_for_btype_22518137211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x16, 0x91858c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x55555555 # initialize rs1
li x11, 0x00000001 # initialize rs2
bge x14, x11, some_label_for_btype_36869760880 # perform operation 
addi x0, x1, 1
some_label_for_btype_36869760880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000001 # initialize rs1
li x11, 0x00000001 # initialize rs2
bge x14, x11, some_label_for_btype_36869760881 # perform operation 
addi x0, x1, 1
some_label_for_btype_36869760881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x15, 0xb3fefdcc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x55555555 # initialize rs1
li x2, 0x00000002 # initialize rs2
bge x8, x2, some_label_for_btype_41350237810 # perform operation 
addi x0, x1, 1
some_label_for_btype_41350237810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
bge x8, x2, some_label_for_btype_41350237811 # perform operation 
addi x0, x1, 1
some_label_for_btype_41350237811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x8, 0x8a15307f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x55555555 # initialize rs1
li x17, 0x80000000 # initialize rs2
bge x3, x17, some_label_for_btype_37439395760 # perform operation 
addi x0, x1, 1
some_label_for_btype_37439395760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x80000000 # initialize rs1
li x17, 0x80000000 # initialize rs2
bge x3, x17, some_label_for_btype_37439395761 # perform operation 
addi x0, x1, 1
some_label_for_btype_37439395761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x24, 0xe7b2a320 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x55555555 # initialize rs1
li x1, 0x80000001 # initialize rs2
bge x18, x1, some_label_for_btype_19799538650 # perform operation 
addi x0, x1, 1
some_label_for_btype_19799538650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x80000001 # initialize rs1
li x1, 0x80000001 # initialize rs2
bge x18, x1, some_label_for_btype_19799538651 # perform operation 
addi x0, x1, 1
some_label_for_btype_19799538651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x5, 0x7eddaec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x55555555 # initialize rs1
li x29, 0x7fffffff # initialize rs2
bge x11, x29, some_label_for_btype_25408064650 # perform operation 
addi x0, x1, 1
some_label_for_btype_25408064650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x7fffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
bge x11, x29, some_label_for_btype_25408064651 # perform operation 
addi x0, x1, 1
some_label_for_btype_25408064651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x12, 0xc3d56e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x55555555 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
bge x19, x14, some_label_for_btype_36303644580 # perform operation 
addi x0, x1, 1
some_label_for_btype_36303644580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x7ffffffe # initialize rs1
li x14, 0x7ffffffe # initialize rs2
bge x19, x14, some_label_for_btype_36303644581 # perform operation 
addi x0, x1, 1
some_label_for_btype_36303644581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x12, 0x1ee2bc51 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x55555555 # initialize rs1
li x9, 0xffffffff # initialize rs2
bge x21, x9, some_label_for_btype_13914033830 # perform operation 
addi x0, x1, 1
some_label_for_btype_13914033830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xffffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
bge x21, x9, some_label_for_btype_13914033831 # perform operation 
addi x0, x1, 1
some_label_for_btype_13914033831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x14, 0x05685f68 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x55555555 # initialize rs1
li x9, 0xfffffffe # initialize rs2
bge x11, x9, some_label_for_btype_40157139080 # perform operation 
addi x0, x1, 1
some_label_for_btype_40157139080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xfffffffe # initialize rs1
li x9, 0xfffffffe # initialize rs2
bge x11, x9, some_label_for_btype_40157139081 # perform operation 
addi x0, x1, 1
some_label_for_btype_40157139081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x31, 0x5c0e1717 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x55555555 # initialize rs1
li x30, 0x5bbc8877 # initialize rs2
bge x20, x30, some_label_for_btype_1338658230 # perform operation 
addi x0, x1, 1
some_label_for_btype_1338658230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x5bbc8877 # initialize rs1
li x30, 0x5bbc8877 # initialize rs2
bge x20, x30, some_label_for_btype_1338658231 # perform operation 
addi x0, x1, 1
some_label_for_btype_1338658231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x13, 0xecb564e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x55555555 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
bge x27, x3, some_label_for_btype_29021805780 # perform operation 
addi x0, x1, 1
some_label_for_btype_29021805780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xaaaaaaaa # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
bge x27, x3, some_label_for_btype_29021805781 # perform operation 
addi x0, x1, 1
some_label_for_btype_29021805781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x28, 0x9e79abd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x55555555 # initialize rs1
li x19, 0x55555555 # initialize rs2
bge x17, x19, some_label_for_btype_22247652780 # perform operation 
addi x0, x1, 1
some_label_for_btype_22247652780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x55555555 # initialize rs1
li x19, 0x55555555 # initialize rs2
bge x17, x19, some_label_for_btype_22247652781 # perform operation 
addi x0, x1, 1
some_label_for_btype_22247652781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x20, 0x2d81b097 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x4bd6dfd3 # initialize rs1
li x0, 0x005161c1 # initialize rs2
bge x0, x0, some_label_for_btype_34207513510 # perform operation 
addi x0, x1, 1
some_label_for_btype_34207513510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0x005161c1 # initialize rs1
li x0, 0x005161c1 # initialize rs2
bge x0, x0, some_label_for_btype_34207513511 # perform operation 
addi x0, x1, 1
some_label_for_btype_34207513511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x11, 0x97e5a149 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x5d99cebc # initialize rs1
li x1, 0x51a41407 # initialize rs2
bge x1, x1, some_label_for_btype_2852721190 # perform operation 
addi x0, x1, 1
some_label_for_btype_2852721190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x51a41407 # initialize rs1
li x1, 0x51a41407 # initialize rs2
bge x1, x1, some_label_for_btype_2852721191 # perform operation 
addi x0, x1, 1
some_label_for_btype_2852721191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x1, 0x702c0a3d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x632c21f0 # initialize rs1
li x2, 0x552cb335 # initialize rs2
bge x2, x2, some_label_for_btype_17067537090 # perform operation 
addi x0, x1, 1
some_label_for_btype_17067537090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x552cb335 # initialize rs1
li x2, 0x552cb335 # initialize rs2
bge x2, x2, some_label_for_btype_17067537091 # perform operation 
addi x0, x1, 1
some_label_for_btype_17067537091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x31, 0xec052cb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x7bec7deb # initialize rs1
li x3, 0x6c100fab # initialize rs2
bge x3, x3, some_label_for_btype_9925784290 # perform operation 
addi x0, x1, 1
some_label_for_btype_9925784290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x6c100fab # initialize rs1
li x3, 0x6c100fab # initialize rs2
bge x3, x3, some_label_for_btype_9925784291 # perform operation 
addi x0, x1, 1
some_label_for_btype_9925784291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x2, 0x67e8de59 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xfbfad6bb # initialize rs1
li x4, 0x0ae3690a # initialize rs2
bge x4, x4, some_label_for_btype_4441006380 # perform operation 
addi x0, x1, 1
some_label_for_btype_4441006380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0ae3690a # initialize rs1
li x4, 0x0ae3690a # initialize rs2
bge x4, x4, some_label_for_btype_4441006381 # perform operation 
addi x0, x1, 1
some_label_for_btype_4441006381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x6, 0x9a295c17 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xd2aa6644 # initialize rs1
li x5, 0xaeea9330 # initialize rs2
bge x5, x5, some_label_for_btype_6955791470 # perform operation 
addi x0, x1, 1
some_label_for_btype_6955791470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xaeea9330 # initialize rs1
li x5, 0xaeea9330 # initialize rs2
bge x5, x5, some_label_for_btype_6955791471 # perform operation 
addi x0, x1, 1
some_label_for_btype_6955791471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x14, 0x3327f319 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xdb9d625e # initialize rs1
li x6, 0x6007b52a # initialize rs2
bge x6, x6, some_label_for_btype_29274208240 # perform operation 
addi x0, x1, 1
some_label_for_btype_29274208240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x6007b52a # initialize rs1
li x6, 0x6007b52a # initialize rs2
bge x6, x6, some_label_for_btype_29274208241 # perform operation 
addi x0, x1, 1
some_label_for_btype_29274208241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x25, 0xfc00a599 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x95813d5b # initialize rs1
li x7, 0x3eee8e74 # initialize rs2
bge x7, x7, some_label_for_btype_7761685070 # perform operation 
addi x0, x1, 1
some_label_for_btype_7761685070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x3eee8e74 # initialize rs1
li x7, 0x3eee8e74 # initialize rs2
bge x7, x7, some_label_for_btype_7761685071 # perform operation 
addi x0, x1, 1
some_label_for_btype_7761685071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x15, 0x8522dd90 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x7e0d5174 # initialize rs1
li x8, 0xa7a3608c # initialize rs2
bge x8, x8, some_label_for_btype_27281214530 # perform operation 
addi x0, x1, 1
some_label_for_btype_27281214530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xa7a3608c # initialize rs1
li x8, 0xa7a3608c # initialize rs2
bge x8, x8, some_label_for_btype_27281214531 # perform operation 
addi x0, x1, 1
some_label_for_btype_27281214531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x28, 0x5ac9c81d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xfc3a1e63 # initialize rs1
li x9, 0x2a4e54c4 # initialize rs2
bge x9, x9, some_label_for_btype_39190379180 # perform operation 
addi x0, x1, 1
some_label_for_btype_39190379180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x2a4e54c4 # initialize rs1
li x9, 0x2a4e54c4 # initialize rs2
bge x9, x9, some_label_for_btype_39190379181 # perform operation 
addi x0, x1, 1
some_label_for_btype_39190379181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x7, 0x918b1115 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x464ad6aa # initialize rs1
li x10, 0x4ca905d2 # initialize rs2
bge x10, x10, some_label_for_btype_41966929640 # perform operation 
addi x0, x1, 1
some_label_for_btype_41966929640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x4ca905d2 # initialize rs1
li x10, 0x4ca905d2 # initialize rs2
bge x10, x10, some_label_for_btype_41966929641 # perform operation 
addi x0, x1, 1
some_label_for_btype_41966929641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x25, 0x6eb8726a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7f893369 # initialize rs1
li x11, 0x574726ea # initialize rs2
bge x11, x11, some_label_for_btype_31094281130 # perform operation 
addi x0, x1, 1
some_label_for_btype_31094281130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x574726ea # initialize rs1
li x11, 0x574726ea # initialize rs2
bge x11, x11, some_label_for_btype_31094281131 # perform operation 
addi x0, x1, 1
some_label_for_btype_31094281131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x15, 0xe63eebbc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x93fc3803 # initialize rs1
li x12, 0xa91faeca # initialize rs2
bge x12, x12, some_label_for_btype_25410101780 # perform operation 
addi x0, x1, 1
some_label_for_btype_25410101780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xa91faeca # initialize rs1
li x12, 0xa91faeca # initialize rs2
bge x12, x12, some_label_for_btype_25410101781 # perform operation 
addi x0, x1, 1
some_label_for_btype_25410101781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x10, 0xd85c74f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xeb8b95d3 # initialize rs1
li x13, 0xe62a0e44 # initialize rs2
bge x13, x13, some_label_for_btype_41403765460 # perform operation 
addi x0, x1, 1
some_label_for_btype_41403765460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xe62a0e44 # initialize rs1
li x13, 0xe62a0e44 # initialize rs2
bge x13, x13, some_label_for_btype_41403765461 # perform operation 
addi x0, x1, 1
some_label_for_btype_41403765461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x5, 0x755715b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x503fe1dc # initialize rs1
li x14, 0x3ad113e4 # initialize rs2
bge x14, x14, some_label_for_btype_11659958340 # perform operation 
addi x0, x1, 1
some_label_for_btype_11659958340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x3ad113e4 # initialize rs1
li x14, 0x3ad113e4 # initialize rs2
bge x14, x14, some_label_for_btype_11659958341 # perform operation 
addi x0, x1, 1
some_label_for_btype_11659958341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x10, 0xcea5eca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xbda9f246 # initialize rs1
li x15, 0x0d37f753 # initialize rs2
bge x15, x15, some_label_for_btype_7991255490 # perform operation 
addi x0, x1, 1
some_label_for_btype_7991255490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0d37f753 # initialize rs1
li x15, 0x0d37f753 # initialize rs2
bge x15, x15, some_label_for_btype_7991255491 # perform operation 
addi x0, x1, 1
some_label_for_btype_7991255491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x20, 0xca87b8d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x751a832e # initialize rs1
li x16, 0xb9dbff49 # initialize rs2
bge x16, x16, some_label_for_btype_17243347300 # perform operation 
addi x0, x1, 1
some_label_for_btype_17243347300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xb9dbff49 # initialize rs1
li x16, 0xb9dbff49 # initialize rs2
bge x16, x16, some_label_for_btype_17243347301 # perform operation 
addi x0, x1, 1
some_label_for_btype_17243347301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x20, 0x5edda134 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x38e54547 # initialize rs1
li x17, 0x871e555e # initialize rs2
bge x17, x17, some_label_for_btype_17254397770 # perform operation 
addi x0, x1, 1
some_label_for_btype_17254397770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x871e555e # initialize rs1
li x17, 0x871e555e # initialize rs2
bge x17, x17, some_label_for_btype_17254397771 # perform operation 
addi x0, x1, 1
some_label_for_btype_17254397771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x14, 0xc58c1383 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x3bcc121f # initialize rs1
li x18, 0xec93a554 # initialize rs2
bge x18, x18, some_label_for_btype_8144791990 # perform operation 
addi x0, x1, 1
some_label_for_btype_8144791990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xec93a554 # initialize rs1
li x18, 0xec93a554 # initialize rs2
bge x18, x18, some_label_for_btype_8144791991 # perform operation 
addi x0, x1, 1
some_label_for_btype_8144791991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x7, 0x7ba9c774 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x4ff3323d # initialize rs1
li x19, 0x9c6b094a # initialize rs2
bge x19, x19, some_label_for_btype_28938446850 # perform operation 
addi x0, x1, 1
some_label_for_btype_28938446850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x9c6b094a # initialize rs1
li x19, 0x9c6b094a # initialize rs2
bge x19, x19, some_label_for_btype_28938446851 # perform operation 
addi x0, x1, 1
some_label_for_btype_28938446851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x8, 0x2b074d36 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x61bac524 # initialize rs1
li x20, 0x58e4fce7 # initialize rs2
bge x20, x20, some_label_for_btype_3024533170 # perform operation 
addi x0, x1, 1
some_label_for_btype_3024533170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x58e4fce7 # initialize rs1
li x20, 0x58e4fce7 # initialize rs2
bge x20, x20, some_label_for_btype_3024533171 # perform operation 
addi x0, x1, 1
some_label_for_btype_3024533171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x9, 0x2ae82358 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x1a2a4384 # initialize rs1
li x21, 0x155ff8d3 # initialize rs2
bge x21, x21, some_label_for_btype_35684850900 # perform operation 
addi x0, x1, 1
some_label_for_btype_35684850900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x155ff8d3 # initialize rs1
li x21, 0x155ff8d3 # initialize rs2
bge x21, x21, some_label_for_btype_35684850901 # perform operation 
addi x0, x1, 1
some_label_for_btype_35684850901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x23, 0x0b0afa9e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x3cc820bb # initialize rs1
li x22, 0xeb0e6b67 # initialize rs2
bge x22, x22, some_label_for_btype_12152671550 # perform operation 
addi x0, x1, 1
some_label_for_btype_12152671550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xeb0e6b67 # initialize rs1
li x22, 0xeb0e6b67 # initialize rs2
bge x22, x22, some_label_for_btype_12152671551 # perform operation 
addi x0, x1, 1
some_label_for_btype_12152671551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x22, 0x82da8534 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xfee2fdee # initialize rs1
li x23, 0x0c9a22ec # initialize rs2
bge x23, x23, some_label_for_btype_15811171950 # perform operation 
addi x0, x1, 1
some_label_for_btype_15811171950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x0c9a22ec # initialize rs1
li x23, 0x0c9a22ec # initialize rs2
bge x23, x23, some_label_for_btype_15811171951 # perform operation 
addi x0, x1, 1
some_label_for_btype_15811171951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x25, 0x393e2298 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x6853dcc9 # initialize rs1
li x24, 0x2dee524f # initialize rs2
bge x24, x24, some_label_for_btype_21604984820 # perform operation 
addi x0, x1, 1
some_label_for_btype_21604984820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x2dee524f # initialize rs1
li x24, 0x2dee524f # initialize rs2
bge x24, x24, some_label_for_btype_21604984821 # perform operation 
addi x0, x1, 1
some_label_for_btype_21604984821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x29, 0x93b29e24 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x24a2d638 # initialize rs1
li x25, 0x3d52a962 # initialize rs2
bge x25, x25, some_label_for_btype_12269469240 # perform operation 
addi x0, x1, 1
some_label_for_btype_12269469240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x3d52a962 # initialize rs1
li x25, 0x3d52a962 # initialize rs2
bge x25, x25, some_label_for_btype_12269469241 # perform operation 
addi x0, x1, 1
some_label_for_btype_12269469241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x29, 0x5f2964c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x05ed5975 # initialize rs1
li x26, 0x451cd78b # initialize rs2
bge x26, x26, some_label_for_btype_31740584910 # perform operation 
addi x0, x1, 1
some_label_for_btype_31740584910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x451cd78b # initialize rs1
li x26, 0x451cd78b # initialize rs2
bge x26, x26, some_label_for_btype_31740584911 # perform operation 
addi x0, x1, 1
some_label_for_btype_31740584911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x22, 0xd7e3ba57 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x04da4b2e # initialize rs1
li x27, 0x4d145f0d # initialize rs2
bge x27, x27, some_label_for_btype_25632010340 # perform operation 
addi x0, x1, 1
some_label_for_btype_25632010340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x4d145f0d # initialize rs1
li x27, 0x4d145f0d # initialize rs2
bge x27, x27, some_label_for_btype_25632010341 # perform operation 
addi x0, x1, 1
some_label_for_btype_25632010341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x7, 0xbe446a61 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x6c156332 # initialize rs1
li x28, 0x66a05245 # initialize rs2
bge x28, x28, some_label_for_btype_13006226110 # perform operation 
addi x0, x1, 1
some_label_for_btype_13006226110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x66a05245 # initialize rs1
li x28, 0x66a05245 # initialize rs2
bge x28, x28, some_label_for_btype_13006226111 # perform operation 
addi x0, x1, 1
some_label_for_btype_13006226111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x6, 0x9c5b6766 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xf96032ea # initialize rs1
li x29, 0x681ad515 # initialize rs2
bge x29, x29, some_label_for_btype_15604872330 # perform operation 
addi x0, x1, 1
some_label_for_btype_15604872330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x681ad515 # initialize rs1
li x29, 0x681ad515 # initialize rs2
bge x29, x29, some_label_for_btype_15604872331 # perform operation 
addi x0, x1, 1
some_label_for_btype_15604872331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x9, 0x57b5fe7e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xb72388d5 # initialize rs1
li x30, 0xb2502ef8 # initialize rs2
bge x30, x30, some_label_for_btype_33109676500 # perform operation 
addi x0, x1, 1
some_label_for_btype_33109676500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xb2502ef8 # initialize rs1
li x30, 0xb2502ef8 # initialize rs2
bge x30, x30, some_label_for_btype_33109676501 # perform operation 
addi x0, x1, 1
some_label_for_btype_33109676501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x4, 0xc98452b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x9ad360c9 # initialize rs1
li x31, 0x27d35f1e # initialize rs2
bge x31, x31, some_label_for_btype_27341343410 # perform operation 
addi x0, x1, 1
some_label_for_btype_27341343410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x27d35f1e # initialize rs1
li x31, 0x27d35f1e # initialize rs2
bge x31, x31, some_label_for_btype_27341343411 # perform operation 
addi x0, x1, 1
some_label_for_btype_27341343411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = 0x34a7be27)
li x14, 0x1ab7cf26 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x34a7be27 # initialize rs1
li x10, 0xd074fe3e # initialize rs2
bge x19, x10, some_label_for_btype_34618863910 # perform operation 
addi x0, x1, 1
some_label_for_btype_34618863910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xd074fe3e # initialize rs1
li x10, 0xd074fe3e # initialize rs2
bge x19, x10, some_label_for_btype_34618863911 # perform operation 
addi x0, x1, 1
some_label_for_btype_34618863911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x5fefbfd1)
li x6, 0x3597486c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xa010402f # initialize rs1
li x25, 0x80b8b40f # initialize rs2
bge x21, x25, some_label_for_btype_1158959610 # perform operation 
addi x0, x1, 1
some_label_for_btype_1158959610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x80b8b40f # initialize rs1
li x25, 0x80b8b40f # initialize rs2
bge x21, x25, some_label_for_btype_1158959611 # perform operation 
addi x0, x1, 1
some_label_for_btype_1158959611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = 0x480e4e3a)
li x20, 0xa22287fe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x3904c182 # initialize rs1
li x13, 0x480e4e3a # initialize rs2
bge x3, x13, some_label_for_btype_5809669200 # perform operation 
addi x0, x1, 1
some_label_for_btype_5809669200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x480e4e3a # initialize rs1
li x13, 0x480e4e3a # initialize rs2
bge x3, x13, some_label_for_btype_5809669201 # perform operation 
addi x0, x1, 1
some_label_for_btype_5809669201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = -0x6eb8f2f2)
li x24, 0xabd73d6f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x464511ec # initialize rs1
li x2, 0x91470d0e # initialize rs2
bge x28, x2, some_label_for_btype_11975839270 # perform operation 
addi x0, x1, 1
some_label_for_btype_11975839270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x91470d0e # initialize rs1
li x2, 0x91470d0e # initialize rs2
bge x28, x2, some_label_for_btype_11975839271 # perform operation 
addi x0, x1, 1
some_label_for_btype_11975839271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: bge x0, x0, 1b # backward branch
3: nop # done with sequence

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
