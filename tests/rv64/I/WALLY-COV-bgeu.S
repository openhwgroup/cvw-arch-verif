///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-bgeu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.467154
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x29, 0xc3145cd926d7f7a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x78e72878a69aac30 # initialize rs1
li x4, 0x8da35bbad45f6c39 # initialize rs2
bgeu x0, x4, some_label_for_btype_79269304310778875250 # perform operation 
addi x0, x1, 1
some_label_for_btype_79269304310778875250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0x8da35bbad45f6c39 # initialize rs1
li x4, 0x8da35bbad45f6c39 # initialize rs2
bgeu x0, x4, some_label_for_btype_79269304310778875251 # perform operation 
addi x0, x1, 1
some_label_for_btype_79269304310778875251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x1)
li x14, 0x4b58ab2ad2a56d14 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xf97acdc0c6678377 # initialize rs1
li x18, 0x4364fa15d1547128 # initialize rs2
bgeu x1, x18, some_label_for_btype_50613100053499453060 # perform operation 
addi x0, x1, 1
some_label_for_btype_50613100053499453060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x4364fa15d1547128 # initialize rs1
li x18, 0x4364fa15d1547128 # initialize rs2
bgeu x1, x18, some_label_for_btype_50613100053499453061 # perform operation 
addi x0, x1, 1
some_label_for_btype_50613100053499453061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x2)
li x25, 0x69155c57e80aa752 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x82879df081097319 # initialize rs1
li x13, 0x369e7fde39a26641 # initialize rs2
bgeu x2, x13, some_label_for_btype_106708997914978572650 # perform operation 
addi x0, x1, 1
some_label_for_btype_106708997914978572650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x369e7fde39a26641 # initialize rs1
li x13, 0x369e7fde39a26641 # initialize rs2
bgeu x2, x13, some_label_for_btype_106708997914978572651 # perform operation 
addi x0, x1, 1
some_label_for_btype_106708997914978572651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x3)
li x29, 0xf563a6672a184f62 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xc182ca3835ea8aa9 # initialize rs1
li x14, 0xbb2a0e941101aacd # initialize rs2
bgeu x3, x14, some_label_for_btype_36279529230325727090 # perform operation 
addi x0, x1, 1
some_label_for_btype_36279529230325727090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xbb2a0e941101aacd # initialize rs1
li x14, 0xbb2a0e941101aacd # initialize rs2
bgeu x3, x14, some_label_for_btype_36279529230325727091 # perform operation 
addi x0, x1, 1
some_label_for_btype_36279529230325727091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x4)
li x27, 0xdecd9c7035a7d857 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xa9c00dbb2c1ad631 # initialize rs1
li x8, 0x6300b8872f872f1d # initialize rs2
bgeu x4, x8, some_label_for_btype_142670281246019086150 # perform operation 
addi x0, x1, 1
some_label_for_btype_142670281246019086150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x6300b8872f872f1d # initialize rs1
li x8, 0x6300b8872f872f1d # initialize rs2
bgeu x4, x8, some_label_for_btype_142670281246019086151 # perform operation 
addi x0, x1, 1
some_label_for_btype_142670281246019086151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x5)
li x10, 0xa78130355c5f9f54 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x6fb66658879c20bc # initialize rs1
li x26, 0xc24b4995d85b58bc # initialize rs2
bgeu x5, x26, some_label_for_btype_115366425961661785720 # perform operation 
addi x0, x1, 1
some_label_for_btype_115366425961661785720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xc24b4995d85b58bc # initialize rs1
li x26, 0xc24b4995d85b58bc # initialize rs2
bgeu x5, x26, some_label_for_btype_115366425961661785721 # perform operation 
addi x0, x1, 1
some_label_for_btype_115366425961661785721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x6)
li x8, 0x529d3948870d718e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x51276dc2d9f44070 # initialize rs1
li x24, 0x1b33ecd68bcbc648 # initialize rs2
bgeu x6, x24, some_label_for_btype_7511908945518734640 # perform operation 
addi x0, x1, 1
some_label_for_btype_7511908945518734640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x1b33ecd68bcbc648 # initialize rs1
li x24, 0x1b33ecd68bcbc648 # initialize rs2
bgeu x6, x24, some_label_for_btype_7511908945518734641 # perform operation 
addi x0, x1, 1
some_label_for_btype_7511908945518734641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x7)
li x10, 0xf763fde203f5931e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x7f39607e7d2acccb # initialize rs1
li x24, 0xe928ed29e56f454b # initialize rs2
bgeu x7, x24, some_label_for_btype_166699098461665147190 # perform operation 
addi x0, x1, 1
some_label_for_btype_166699098461665147190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xe928ed29e56f454b # initialize rs1
li x24, 0xe928ed29e56f454b # initialize rs2
bgeu x7, x24, some_label_for_btype_166699098461665147191 # perform operation 
addi x0, x1, 1
some_label_for_btype_166699098461665147191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0x1a1c608cd48be617 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xbdddfcd1665b50c1 # initialize rs1
li x15, 0xea79a07c1448150f # initialize rs2
bgeu x8, x15, some_label_for_btype_88313286825160159480 # perform operation 
addi x0, x1, 1
some_label_for_btype_88313286825160159480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xea79a07c1448150f # initialize rs1
li x15, 0xea79a07c1448150f # initialize rs2
bgeu x8, x15, some_label_for_btype_88313286825160159481 # perform operation 
addi x0, x1, 1
some_label_for_btype_88313286825160159481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x19, 0x3f2587de32df84c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xe8fcfe19087fbdb6 # initialize rs1
li x27, 0x42db7ddc8e5c70bf # initialize rs2
bgeu x9, x27, some_label_for_btype_23096101603412626960 # perform operation 
addi x0, x1, 1
some_label_for_btype_23096101603412626960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x42db7ddc8e5c70bf # initialize rs1
li x27, 0x42db7ddc8e5c70bf # initialize rs2
bgeu x9, x27, some_label_for_btype_23096101603412626961 # perform operation 
addi x0, x1, 1
some_label_for_btype_23096101603412626961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x1, 0x2228d0829bf79c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x6f92986bc7796083 # initialize rs1
li x2, 0xd0ed797b52427669 # initialize rs2
bgeu x10, x2, some_label_for_btype_143483942267857899280 # perform operation 
addi x0, x1, 1
some_label_for_btype_143483942267857899280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xd0ed797b52427669 # initialize rs1
li x2, 0xd0ed797b52427669 # initialize rs2
bgeu x10, x2, some_label_for_btype_143483942267857899281 # perform operation 
addi x0, x1, 1
some_label_for_btype_143483942267857899281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x4, 0xa0f96f183e22a7dd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x57ef2efc5442e640 # initialize rs1
li x22, 0x438cc92ad33caf99 # initialize rs2
bgeu x11, x22, some_label_for_btype_173314203974674830030 # perform operation 
addi x0, x1, 1
some_label_for_btype_173314203974674830030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x438cc92ad33caf99 # initialize rs1
li x22, 0x438cc92ad33caf99 # initialize rs2
bgeu x11, x22, some_label_for_btype_173314203974674830031 # perform operation 
addi x0, x1, 1
some_label_for_btype_173314203974674830031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x7c2de48917786680 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x2802fadb03355708 # initialize rs1
li x25, 0x0b53d4adf88b6c68 # initialize rs2
bgeu x12, x25, some_label_for_btype_179874249560505036180 # perform operation 
addi x0, x1, 1
some_label_for_btype_179874249560505036180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x0b53d4adf88b6c68 # initialize rs1
li x25, 0x0b53d4adf88b6c68 # initialize rs2
bgeu x12, x25, some_label_for_btype_179874249560505036181 # perform operation 
addi x0, x1, 1
some_label_for_btype_179874249560505036181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x26, 0xed757fa943034012 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xd79c2316e6e2c541 # initialize rs1
li x25, 0xb617c71accc8ebea # initialize rs2
bgeu x13, x25, some_label_for_btype_51516354508281082950 # perform operation 
addi x0, x1, 1
some_label_for_btype_51516354508281082950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xb617c71accc8ebea # initialize rs1
li x25, 0xb617c71accc8ebea # initialize rs2
bgeu x13, x25, some_label_for_btype_51516354508281082951 # perform operation 
addi x0, x1, 1
some_label_for_btype_51516354508281082951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x29, 0x6a84efdae20e8533 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xd8b22832749fcf51 # initialize rs1
li x18, 0x88c23310c66072c1 # initialize rs2
bgeu x14, x18, some_label_for_btype_137744027284424939210 # perform operation 
addi x0, x1, 1
some_label_for_btype_137744027284424939210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x88c23310c66072c1 # initialize rs1
li x18, 0x88c23310c66072c1 # initialize rs2
bgeu x14, x18, some_label_for_btype_137744027284424939211 # perform operation 
addi x0, x1, 1
some_label_for_btype_137744027284424939211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x98e6846c98ff5b7c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x1e093399ce251f0e # initialize rs1
li x27, 0xdca1a3bb272ee470 # initialize rs2
bgeu x15, x27, some_label_for_btype_155471996635656262820 # perform operation 
addi x0, x1, 1
some_label_for_btype_155471996635656262820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xdca1a3bb272ee470 # initialize rs1
li x27, 0xdca1a3bb272ee470 # initialize rs2
bgeu x15, x27, some_label_for_btype_155471996635656262821 # perform operation 
addi x0, x1, 1
some_label_for_btype_155471996635656262821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x16)
li x6, 0x2d36adfac7cc4872 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xf3be0e42e0ff3f93 # initialize rs1
li x9, 0xa8066846e205f080 # initialize rs2
bgeu x16, x9, some_label_for_btype_102328000993427134030 # perform operation 
addi x0, x1, 1
some_label_for_btype_102328000993427134030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xa8066846e205f080 # initialize rs1
li x9, 0xa8066846e205f080 # initialize rs2
bgeu x16, x9, some_label_for_btype_102328000993427134031 # perform operation 
addi x0, x1, 1
some_label_for_btype_102328000993427134031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x17)
li x11, 0x62ca032152c39a56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x80cef63b9ccb9c07 # initialize rs1
li x19, 0x00812bee12ab82a0 # initialize rs2
bgeu x17, x19, some_label_for_btype_101788076441001725140 # perform operation 
addi x0, x1, 1
some_label_for_btype_101788076441001725140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00812bee12ab82a0 # initialize rs1
li x19, 0x00812bee12ab82a0 # initialize rs2
bgeu x17, x19, some_label_for_btype_101788076441001725141 # perform operation 
addi x0, x1, 1
some_label_for_btype_101788076441001725141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x18)
li x10, 0xa7d88754bbffe84f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7646beb0c3e219a2 # initialize rs1
li x5, 0xcb777982d1b458bf # initialize rs2
bgeu x18, x5, some_label_for_btype_164143801548492779650 # perform operation 
addi x0, x1, 1
some_label_for_btype_164143801548492779650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xcb777982d1b458bf # initialize rs1
li x5, 0xcb777982d1b458bf # initialize rs2
bgeu x18, x5, some_label_for_btype_164143801548492779651 # perform operation 
addi x0, x1, 1
some_label_for_btype_164143801548492779651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x19)
li x20, 0x6b95d1d66e1bd7ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x264c7fae258db33a # initialize rs1
li x12, 0x9c9454a0d75058dd # initialize rs2
bgeu x19, x12, some_label_for_btype_79146925557609805530 # perform operation 
addi x0, x1, 1
some_label_for_btype_79146925557609805530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x9c9454a0d75058dd # initialize rs1
li x12, 0x9c9454a0d75058dd # initialize rs2
bgeu x19, x12, some_label_for_btype_79146925557609805531 # perform operation 
addi x0, x1, 1
some_label_for_btype_79146925557609805531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x20)
li x2, 0x53c89daf5fcff568 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xee5465fd319537df # initialize rs1
li x27, 0x2e7a1bbfa1539090 # initialize rs2
bgeu x20, x27, some_label_for_btype_179675560388209487700 # perform operation 
addi x0, x1, 1
some_label_for_btype_179675560388209487700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x2e7a1bbfa1539090 # initialize rs1
li x27, 0x2e7a1bbfa1539090 # initialize rs2
bgeu x20, x27, some_label_for_btype_179675560388209487701 # perform operation 
addi x0, x1, 1
some_label_for_btype_179675560388209487701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x21)
li x27, 0xd19f6c8b56e3565e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xb60c710e3795e859 # initialize rs1
li x11, 0x26b7d1fd7c1d566a # initialize rs2
bgeu x21, x11, some_label_for_btype_145763193094697048660 # perform operation 
addi x0, x1, 1
some_label_for_btype_145763193094697048660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x26b7d1fd7c1d566a # initialize rs1
li x11, 0x26b7d1fd7c1d566a # initialize rs2
bgeu x21, x11, some_label_for_btype_145763193094697048661 # perform operation 
addi x0, x1, 1
some_label_for_btype_145763193094697048661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x22)
li x15, 0x786d02cc0eb03da5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xd5f7a253908a6cff # initialize rs1
li x23, 0x9f3486e05cf29edc # initialize rs2
bgeu x22, x23, some_label_for_btype_3725087597551535140 # perform operation 
addi x0, x1, 1
some_label_for_btype_3725087597551535140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x9f3486e05cf29edc # initialize rs1
li x23, 0x9f3486e05cf29edc # initialize rs2
bgeu x22, x23, some_label_for_btype_3725087597551535141 # perform operation 
addi x0, x1, 1
some_label_for_btype_3725087597551535141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x23)
li x7, 0x58a0ecb6bc98d2d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xcb92236e70db9d97 # initialize rs1
li x24, 0x84eac8c26216bb4a # initialize rs2
bgeu x23, x24, some_label_for_btype_13580376478313920130 # perform operation 
addi x0, x1, 1
some_label_for_btype_13580376478313920130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x84eac8c26216bb4a # initialize rs1
li x24, 0x84eac8c26216bb4a # initialize rs2
bgeu x23, x24, some_label_for_btype_13580376478313920131 # perform operation 
addi x0, x1, 1
some_label_for_btype_13580376478313920131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x24)
li x7, 0x5e14d341975ebc09 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x3df811a3a4e73e91 # initialize rs1
li x2, 0x488d00f69a290ace # initialize rs2
bgeu x24, x2, some_label_for_btype_98518626396694248470 # perform operation 
addi x0, x1, 1
some_label_for_btype_98518626396694248470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x488d00f69a290ace # initialize rs1
li x2, 0x488d00f69a290ace # initialize rs2
bgeu x24, x2, some_label_for_btype_98518626396694248471 # perform operation 
addi x0, x1, 1
some_label_for_btype_98518626396694248471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x25)
li x31, 0xa08bcad897db9674 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xc7ef80ed224888a8 # initialize rs1
li x8, 0xb620282f43753585 # initialize rs2
bgeu x25, x8, some_label_for_btype_12490508961008262110 # perform operation 
addi x0, x1, 1
some_label_for_btype_12490508961008262110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xb620282f43753585 # initialize rs1
li x8, 0xb620282f43753585 # initialize rs2
bgeu x25, x8, some_label_for_btype_12490508961008262111 # perform operation 
addi x0, x1, 1
some_label_for_btype_12490508961008262111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x26)
li x9, 0x661de8cf1fd7ae5a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x950fc83d78f69572 # initialize rs1
li x19, 0x0561484ad509737d # initialize rs2
bgeu x26, x19, some_label_for_btype_6564941643158852090 # perform operation 
addi x0, x1, 1
some_label_for_btype_6564941643158852090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0561484ad509737d # initialize rs1
li x19, 0x0561484ad509737d # initialize rs2
bgeu x26, x19, some_label_for_btype_6564941643158852091 # perform operation 
addi x0, x1, 1
some_label_for_btype_6564941643158852091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x27)
li x16, 0x2d237e9f56e75896 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x5dd92d867e83aca2 # initialize rs1
li x28, 0x6f0d89fc2989828d # initialize rs2
bgeu x27, x28, some_label_for_btype_85136026474312557260 # perform operation 
addi x0, x1, 1
some_label_for_btype_85136026474312557260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x6f0d89fc2989828d # initialize rs1
li x28, 0x6f0d89fc2989828d # initialize rs2
bgeu x27, x28, some_label_for_btype_85136026474312557261 # perform operation 
addi x0, x1, 1
some_label_for_btype_85136026474312557261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0x552826fce8cc5c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xdca6e32281f03ee4 # initialize rs1
li x2, 0x2e1dcbdcee16e6e3 # initialize rs2
bgeu x28, x2, some_label_for_btype_35378882761519040910 # perform operation 
addi x0, x1, 1
some_label_for_btype_35378882761519040910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x2e1dcbdcee16e6e3 # initialize rs1
li x2, 0x2e1dcbdcee16e6e3 # initialize rs2
bgeu x28, x2, some_label_for_btype_35378882761519040911 # perform operation 
addi x0, x1, 1
some_label_for_btype_35378882761519040911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x29)
li x14, 0x327bbb27c03a3a88 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x6d79490a76ffe94b # initialize rs1
li x4, 0x0ea59aba31d99478 # initialize rs2
bgeu x29, x4, some_label_for_btype_74694654003841230050 # perform operation 
addi x0, x1, 1
some_label_for_btype_74694654003841230050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x0ea59aba31d99478 # initialize rs1
li x4, 0x0ea59aba31d99478 # initialize rs2
bgeu x29, x4, some_label_for_btype_74694654003841230051 # perform operation 
addi x0, x1, 1
some_label_for_btype_74694654003841230051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x30)
li x12, 0x9406bd773b5d5e88 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x1a25fceb427b4179 # initialize rs1
li x26, 0x8809e6741eaeb713 # initialize rs2
bgeu x30, x26, some_label_for_btype_35499984123947301960 # perform operation 
addi x0, x1, 1
some_label_for_btype_35499984123947301960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x8809e6741eaeb713 # initialize rs1
li x26, 0x8809e6741eaeb713 # initialize rs2
bgeu x30, x26, some_label_for_btype_35499984123947301961 # perform operation 
addi x0, x1, 1
some_label_for_btype_35499984123947301961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x31)
li x9, 0x5fcb0247842a134b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xdad0ccb471ada63e # initialize rs1
li x7, 0x0dec59c6afd90da3 # initialize rs2
bgeu x31, x7, some_label_for_btype_11688834898562618630 # perform operation 
addi x0, x1, 1
some_label_for_btype_11688834898562618630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0dec59c6afd90da3 # initialize rs1
li x7, 0x0dec59c6afd90da3 # initialize rs2
bgeu x31, x7, some_label_for_btype_11688834898562618631 # perform operation 
addi x0, x1, 1
some_label_for_btype_11688834898562618631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x0)
li x23, 0xbdf644bc695d8bf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x3df11c85330f2a7f # initialize rs1
li x0, 0x90489a8896b3c013 # initialize rs2
bgeu x21, x0, some_label_for_btype_161387310509386472760 # perform operation 
addi x0, x1, 1
some_label_for_btype_161387310509386472760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x90489a8896b3c013 # initialize rs1
li x0, 0x90489a8896b3c013 # initialize rs2
bgeu x21, x0, some_label_for_btype_161387310509386472761 # perform operation 
addi x0, x1, 1
some_label_for_btype_161387310509386472761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x1)
li x19, 0x10413216ab71b004 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x12250d07331c1978 # initialize rs1
li x1, 0xee0fd3b3a7ba98e1 # initialize rs2
bgeu x4, x1, some_label_for_btype_48177809881311402980 # perform operation 
addi x0, x1, 1
some_label_for_btype_48177809881311402980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xee0fd3b3a7ba98e1 # initialize rs1
li x1, 0xee0fd3b3a7ba98e1 # initialize rs2
bgeu x4, x1, some_label_for_btype_48177809881311402981 # perform operation 
addi x0, x1, 1
some_label_for_btype_48177809881311402981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x2)
li x20, 0x24ae346e42dfeed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x458bdc37a1743c72 # initialize rs1
li x2, 0x507c31bce12cda98 # initialize rs2
bgeu x4, x2, some_label_for_btype_51172964400433767390 # perform operation 
addi x0, x1, 1
some_label_for_btype_51172964400433767390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x507c31bce12cda98 # initialize rs1
li x2, 0x507c31bce12cda98 # initialize rs2
bgeu x4, x2, some_label_for_btype_51172964400433767391 # perform operation 
addi x0, x1, 1
some_label_for_btype_51172964400433767391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x3)
li x23, 0x1c0617d38d1ef8b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x4e9695da15b06c0e # initialize rs1
li x3, 0x05241d33eb892c68 # initialize rs2
bgeu x5, x3, some_label_for_btype_142762455164679821250 # perform operation 
addi x0, x1, 1
some_label_for_btype_142762455164679821250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x05241d33eb892c68 # initialize rs1
li x3, 0x05241d33eb892c68 # initialize rs2
bgeu x5, x3, some_label_for_btype_142762455164679821251 # perform operation 
addi x0, x1, 1
some_label_for_btype_142762455164679821251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x4)
li x13, 0x0a0c9de6dddfbf13 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x863e572496592654 # initialize rs1
li x4, 0x941a4a6816e85bbb # initialize rs2
bgeu x19, x4, some_label_for_btype_122566632862122860610 # perform operation 
addi x0, x1, 1
some_label_for_btype_122566632862122860610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x941a4a6816e85bbb # initialize rs1
li x4, 0x941a4a6816e85bbb # initialize rs2
bgeu x19, x4, some_label_for_btype_122566632862122860611 # perform operation 
addi x0, x1, 1
some_label_for_btype_122566632862122860611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x5)
li x2, 0x6d4521ccef820124 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x09c3663ce6fa23e6 # initialize rs1
li x5, 0xb07da4ef68d753ba # initialize rs2
bgeu x31, x5, some_label_for_btype_55772549169641725490 # perform operation 
addi x0, x1, 1
some_label_for_btype_55772549169641725490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xb07da4ef68d753ba # initialize rs1
li x5, 0xb07da4ef68d753ba # initialize rs2
bgeu x31, x5, some_label_for_btype_55772549169641725491 # perform operation 
addi x0, x1, 1
some_label_for_btype_55772549169641725491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x6)
li x23, 0xf98c6a74435169ee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xdbce41c0944f9f2a # initialize rs1
li x6, 0x77c3a4237d730971 # initialize rs2
bgeu x24, x6, some_label_for_btype_88818992281519425160 # perform operation 
addi x0, x1, 1
some_label_for_btype_88818992281519425160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x77c3a4237d730971 # initialize rs1
li x6, 0x77c3a4237d730971 # initialize rs2
bgeu x24, x6, some_label_for_btype_88818992281519425161 # perform operation 
addi x0, x1, 1
some_label_for_btype_88818992281519425161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x7)
li x21, 0xca4f3698b16bc2e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xd1b40e3a7c989ee7 # initialize rs1
li x7, 0x72b699615c4d2f8c # initialize rs2
bgeu x13, x7, some_label_for_btype_2336315630985001840 # perform operation 
addi x0, x1, 1
some_label_for_btype_2336315630985001840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x72b699615c4d2f8c # initialize rs1
li x7, 0x72b699615c4d2f8c # initialize rs2
bgeu x13, x7, some_label_for_btype_2336315630985001841 # perform operation 
addi x0, x1, 1
some_label_for_btype_2336315630985001841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x8)
li x4, 0x91aeb21bec9caa18 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x3728518cc855ad4d # initialize rs1
li x8, 0xb93a1bfbfd4d1d34 # initialize rs2
bgeu x17, x8, some_label_for_btype_118274568908563786630 # perform operation 
addi x0, x1, 1
some_label_for_btype_118274568908563786630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xb93a1bfbfd4d1d34 # initialize rs1
li x8, 0xb93a1bfbfd4d1d34 # initialize rs2
bgeu x17, x8, some_label_for_btype_118274568908563786631 # perform operation 
addi x0, x1, 1
some_label_for_btype_118274568908563786631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0x056faf054420484a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xe76e94482b0275fa # initialize rs1
li x9, 0xa7837bff0092c0ce # initialize rs2
bgeu x15, x9, some_label_for_btype_137102707093584960380 # perform operation 
addi x0, x1, 1
some_label_for_btype_137102707093584960380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xa7837bff0092c0ce # initialize rs1
li x9, 0xa7837bff0092c0ce # initialize rs2
bgeu x15, x9, some_label_for_btype_137102707093584960381 # perform operation 
addi x0, x1, 1
some_label_for_btype_137102707093584960381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x10)
li x3, 0xe4c991e5e713ffd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x43557a7554603005 # initialize rs1
li x10, 0xe760ea8ad6d92838 # initialize rs2
bgeu x15, x10, some_label_for_btype_11158365930201924730 # perform operation 
addi x0, x1, 1
some_label_for_btype_11158365930201924730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xe760ea8ad6d92838 # initialize rs1
li x10, 0xe760ea8ad6d92838 # initialize rs2
bgeu x15, x10, some_label_for_btype_11158365930201924731 # perform operation 
addi x0, x1, 1
some_label_for_btype_11158365930201924731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x11)
li x1, 0xfc8004e24b8b56bf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x94e6580f1be5a74f # initialize rs1
li x11, 0xfc5447bfda7301bd # initialize rs2
bgeu x7, x11, some_label_for_btype_136544519267022060440 # perform operation 
addi x0, x1, 1
some_label_for_btype_136544519267022060440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xfc5447bfda7301bd # initialize rs1
li x11, 0xfc5447bfda7301bd # initialize rs2
bgeu x7, x11, some_label_for_btype_136544519267022060441 # perform operation 
addi x0, x1, 1
some_label_for_btype_136544519267022060441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x12)
li x18, 0x58cd7cb8f521ac2e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xb9c2d14178f1b766 # initialize rs1
li x12, 0xe859f8f182575ad5 # initialize rs2
bgeu x8, x12, some_label_for_btype_157554774234917712870 # perform operation 
addi x0, x1, 1
some_label_for_btype_157554774234917712870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xe859f8f182575ad5 # initialize rs1
li x12, 0xe859f8f182575ad5 # initialize rs2
bgeu x8, x12, some_label_for_btype_157554774234917712871 # perform operation 
addi x0, x1, 1
some_label_for_btype_157554774234917712871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x13)
li x21, 0xa7303cc3d5c3047f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x015808be306242cd # initialize rs1
li x13, 0x390f54aefef94096 # initialize rs2
bgeu x3, x13, some_label_for_btype_137189041404375414180 # perform operation 
addi x0, x1, 1
some_label_for_btype_137189041404375414180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x390f54aefef94096 # initialize rs1
li x13, 0x390f54aefef94096 # initialize rs2
bgeu x3, x13, some_label_for_btype_137189041404375414181 # perform operation 
addi x0, x1, 1
some_label_for_btype_137189041404375414181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x14)
li x17, 0xd7b35b24e9927084 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xf3f70e115806b16b # initialize rs1
li x14, 0x70ef779f295d0faf # initialize rs2
bgeu x15, x14, some_label_for_btype_20374247916695688340 # perform operation 
addi x0, x1, 1
some_label_for_btype_20374247916695688340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x70ef779f295d0faf # initialize rs1
li x14, 0x70ef779f295d0faf # initialize rs2
bgeu x15, x14, some_label_for_btype_20374247916695688341 # perform operation 
addi x0, x1, 1
some_label_for_btype_20374247916695688341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x15)
li x31, 0xbaa390187257f5dc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x8ac848c004d9243c # initialize rs1
li x15, 0xc064c839deb80c23 # initialize rs2
bgeu x6, x15, some_label_for_btype_97364520480743322740 # perform operation 
addi x0, x1, 1
some_label_for_btype_97364520480743322740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xc064c839deb80c23 # initialize rs1
li x15, 0xc064c839deb80c23 # initialize rs2
bgeu x6, x15, some_label_for_btype_97364520480743322741 # perform operation 
addi x0, x1, 1
some_label_for_btype_97364520480743322741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x16)
li x2, 0x47404a60e59f1209 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x72eedc492627b9e2 # initialize rs1
li x16, 0x36e1d8d743bf8c9a # initialize rs2
bgeu x1, x16, some_label_for_btype_165034300861616123300 # perform operation 
addi x0, x1, 1
some_label_for_btype_165034300861616123300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x36e1d8d743bf8c9a # initialize rs1
li x16, 0x36e1d8d743bf8c9a # initialize rs2
bgeu x1, x16, some_label_for_btype_165034300861616123301 # perform operation 
addi x0, x1, 1
some_label_for_btype_165034300861616123301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0xb1ce09e05c6e067b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xb6ea0d8a03eb1549 # initialize rs1
li x17, 0xae5e6251eddd724e # initialize rs2
bgeu x9, x17, some_label_for_btype_141638565651870885870 # perform operation 
addi x0, x1, 1
some_label_for_btype_141638565651870885870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xae5e6251eddd724e # initialize rs1
li x17, 0xae5e6251eddd724e # initialize rs2
bgeu x9, x17, some_label_for_btype_141638565651870885871 # perform operation 
addi x0, x1, 1
some_label_for_btype_141638565651870885871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0x7b41fbaad784a393 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x7443d86de14cd671 # initialize rs1
li x18, 0xca54a39393b01ae3 # initialize rs2
bgeu x5, x18, some_label_for_btype_146107454087607531320 # perform operation 
addi x0, x1, 1
some_label_for_btype_146107454087607531320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xca54a39393b01ae3 # initialize rs1
li x18, 0xca54a39393b01ae3 # initialize rs2
bgeu x5, x18, some_label_for_btype_146107454087607531321 # perform operation 
addi x0, x1, 1
some_label_for_btype_146107454087607531321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x19)
li x30, 0x64cad6dce77f9244 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xe6842d9a6eb3be1b # initialize rs1
li x19, 0x4b415797c70b7e76 # initialize rs2
bgeu x1, x19, some_label_for_btype_136488600227906085670 # perform operation 
addi x0, x1, 1
some_label_for_btype_136488600227906085670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x4b415797c70b7e76 # initialize rs1
li x19, 0x4b415797c70b7e76 # initialize rs2
bgeu x1, x19, some_label_for_btype_136488600227906085671 # perform operation 
addi x0, x1, 1
some_label_for_btype_136488600227906085671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x20)
li x6, 0xe8dcbfe2474fc528 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x6436df19472a0970 # initialize rs1
li x20, 0x1994a88f2578546c # initialize rs2
bgeu x29, x20, some_label_for_btype_106443184582276954080 # perform operation 
addi x0, x1, 1
some_label_for_btype_106443184582276954080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x1994a88f2578546c # initialize rs1
li x20, 0x1994a88f2578546c # initialize rs2
bgeu x29, x20, some_label_for_btype_106443184582276954081 # perform operation 
addi x0, x1, 1
some_label_for_btype_106443184582276954081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x21)
li x12, 0x2d46076548875a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x5c3663cab6483b56 # initialize rs1
li x21, 0x7fb60de295e46095 # initialize rs2
bgeu x24, x21, some_label_for_btype_123844759047318772850 # perform operation 
addi x0, x1, 1
some_label_for_btype_123844759047318772850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x7fb60de295e46095 # initialize rs1
li x21, 0x7fb60de295e46095 # initialize rs2
bgeu x24, x21, some_label_for_btype_123844759047318772851 # perform operation 
addi x0, x1, 1
some_label_for_btype_123844759047318772851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x22)
li x4, 0x227d64ecca31840b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xe3f9feed362b57f4 # initialize rs1
li x22, 0x83680fbca88f0bf1 # initialize rs2
bgeu x5, x22, some_label_for_btype_43264832557262059410 # perform operation 
addi x0, x1, 1
some_label_for_btype_43264832557262059410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x83680fbca88f0bf1 # initialize rs1
li x22, 0x83680fbca88f0bf1 # initialize rs2
bgeu x5, x22, some_label_for_btype_43264832557262059411 # perform operation 
addi x0, x1, 1
some_label_for_btype_43264832557262059411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x23)
li x19, 0x457fe61fb546529e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0a7b1260906c3f1f # initialize rs1
li x23, 0x513dfe624377092e # initialize rs2
bgeu x7, x23, some_label_for_btype_91336417222886132710 # perform operation 
addi x0, x1, 1
some_label_for_btype_91336417222886132710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x513dfe624377092e # initialize rs1
li x23, 0x513dfe624377092e # initialize rs2
bgeu x7, x23, some_label_for_btype_91336417222886132711 # perform operation 
addi x0, x1, 1
some_label_for_btype_91336417222886132711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x24)
li x21, 0x8b55e0ebd29b03c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x060edf61dc841fc6 # initialize rs1
li x24, 0x8e4b24184dee5807 # initialize rs2
bgeu x19, x24, some_label_for_btype_157961349880741411110 # perform operation 
addi x0, x1, 1
some_label_for_btype_157961349880741411110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x8e4b24184dee5807 # initialize rs1
li x24, 0x8e4b24184dee5807 # initialize rs2
bgeu x19, x24, some_label_for_btype_157961349880741411111 # perform operation 
addi x0, x1, 1
some_label_for_btype_157961349880741411111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x25)
li x29, 0xe12d7b6dca07bc35 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xa12fc8a7e5de2f76 # initialize rs1
li x25, 0xff8c9b5a84e96332 # initialize rs2
bgeu x4, x25, some_label_for_btype_154310658626382375590 # perform operation 
addi x0, x1, 1
some_label_for_btype_154310658626382375590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xff8c9b5a84e96332 # initialize rs1
li x25, 0xff8c9b5a84e96332 # initialize rs2
bgeu x4, x25, some_label_for_btype_154310658626382375591 # perform operation 
addi x0, x1, 1
some_label_for_btype_154310658626382375591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x26)
li x22, 0xdc0d8f37410bca57 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xf31079debf1ac2d3 # initialize rs1
li x26, 0xb9e1845f001f2c61 # initialize rs2
bgeu x12, x26, some_label_for_btype_153249193514888116890 # perform operation 
addi x0, x1, 1
some_label_for_btype_153249193514888116890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xb9e1845f001f2c61 # initialize rs1
li x26, 0xb9e1845f001f2c61 # initialize rs2
bgeu x12, x26, some_label_for_btype_153249193514888116891 # perform operation 
addi x0, x1, 1
some_label_for_btype_153249193514888116891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x27)
li x12, 0x78d48297446bf3cf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x15a05bf9992d2d2e # initialize rs1
li x27, 0x5784e1b9114e447f # initialize rs2
bgeu x22, x27, some_label_for_btype_12765838823788923120 # perform operation 
addi x0, x1, 1
some_label_for_btype_12765838823788923120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x5784e1b9114e447f # initialize rs1
li x27, 0x5784e1b9114e447f # initialize rs2
bgeu x22, x27, some_label_for_btype_12765838823788923121 # perform operation 
addi x0, x1, 1
some_label_for_btype_12765838823788923121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x28)
li x21, 0x430f191ccf32e767 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xcf7918807be039e5 # initialize rs1
li x28, 0x6713f5eae7607b32 # initialize rs2
bgeu x27, x28, some_label_for_btype_27783635497835142680 # perform operation 
addi x0, x1, 1
some_label_for_btype_27783635497835142680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x6713f5eae7607b32 # initialize rs1
li x28, 0x6713f5eae7607b32 # initialize rs2
bgeu x27, x28, some_label_for_btype_27783635497835142681 # perform operation 
addi x0, x1, 1
some_label_for_btype_27783635497835142681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x29)
li x26, 0x9100aa142f0e4299 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xaecfa1613704da0d # initialize rs1
li x29, 0x96a9ac025961b6a2 # initialize rs2
bgeu x22, x29, some_label_for_btype_86405952703277013480 # perform operation 
addi x0, x1, 1
some_label_for_btype_86405952703277013480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x96a9ac025961b6a2 # initialize rs1
li x29, 0x96a9ac025961b6a2 # initialize rs2
bgeu x22, x29, some_label_for_btype_86405952703277013481 # perform operation 
addi x0, x1, 1
some_label_for_btype_86405952703277013481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x30)
li x23, 0xb548c06903a8ee89 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xdf5bd3f251dcaf60 # initialize rs1
li x30, 0x30d9195bdfd7237f # initialize rs2
bgeu x1, x30, some_label_for_btype_71005275034776324930 # perform operation 
addi x0, x1, 1
some_label_for_btype_71005275034776324930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x30d9195bdfd7237f # initialize rs1
li x30, 0x30d9195bdfd7237f # initialize rs2
bgeu x1, x30, some_label_for_btype_71005275034776324931 # perform operation 
addi x0, x1, 1
some_label_for_btype_71005275034776324931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x31)
li x19, 0x6789a19861a407a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x88d74f591b5e217e # initialize rs1
li x31, 0xdbde871dd6c1f4b6 # initialize rs2
bgeu x24, x31, some_label_for_btype_152333633091439815670 # perform operation 
addi x0, x1, 1
some_label_for_btype_152333633091439815670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xdbde871dd6c1f4b6 # initialize rs1
li x31, 0xdbde871dd6c1f4b6 # initialize rs2
bgeu x24, x31, some_label_for_btype_152333633091439815671 # perform operation 
addi x0, x1, 1
some_label_for_btype_152333633091439815671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xefedc538fe277093)
li x1, 0xfb0f2a6ed12923ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xfb0f2a6ed12923ef # initialize rs1
li x0, 0x942d525a76c45b2e # initialize rs2
bgeu x19, x0, some_label_for_btype_178271181772461603680 # perform operation 
addi x0, x1, 1
some_label_for_btype_178271181772461603680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x942d525a76c45b2e # initialize rs1
li x0, 0x942d525a76c45b2e # initialize rs2
bgeu x19, x0, some_label_for_btype_178271181772461603681 # perform operation 
addi x0, x1, 1
some_label_for_btype_178271181772461603681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x7267c763d0232896 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000000000000 # initialize rs1
li x8, 0x7cf0765ebace8a58 # initialize rs2
bgeu x19, x8, some_label_for_btype_50093449939613117550 # perform operation 
addi x0, x1, 1
some_label_for_btype_50093449939613117550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x7cf0765ebace8a58 # initialize rs1
li x8, 0x7cf0765ebace8a58 # initialize rs2
bgeu x19, x8, some_label_for_btype_50093449939613117551 # perform operation 
addi x0, x1, 1
some_label_for_btype_50093449939613117551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x10e427e9093e8145 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0000000000000001 # initialize rs1
li x8, 0x17a0d32f0415ff45 # initialize rs2
bgeu x26, x8, some_label_for_btype_168625352285768073960 # perform operation 
addi x0, x1, 1
some_label_for_btype_168625352285768073960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x17a0d32f0415ff45 # initialize rs1
li x8, 0x17a0d32f0415ff45 # initialize rs2
bgeu x26, x8, some_label_for_btype_168625352285768073961 # perform operation 
addi x0, x1, 1
some_label_for_btype_168625352285768073961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x17, 0xe02b9951768a9c21 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0000000000000002 # initialize rs1
li x23, 0xa853f39d8f2e7649 # initialize rs2
bgeu x14, x23, some_label_for_btype_132622898230502206270 # perform operation 
addi x0, x1, 1
some_label_for_btype_132622898230502206270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xa853f39d8f2e7649 # initialize rs1
li x23, 0xa853f39d8f2e7649 # initialize rs2
bgeu x14, x23, some_label_for_btype_132622898230502206271 # perform operation 
addi x0, x1, 1
some_label_for_btype_132622898230502206271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x29, 0xbe2e6f629d96f20d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x8000000000000000 # initialize rs1
li x15, 0x020c479839c6faa6 # initialize rs2
bgeu x17, x15, some_label_for_btype_56475787570865695860 # perform operation 
addi x0, x1, 1
some_label_for_btype_56475787570865695860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x020c479839c6faa6 # initialize rs1
li x15, 0x020c479839c6faa6 # initialize rs2
bgeu x17, x15, some_label_for_btype_56475787570865695861 # perform operation 
addi x0, x1, 1
some_label_for_btype_56475787570865695861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0xf302ac945023c6a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x8000000000000001 # initialize rs1
li x12, 0x50b46d92b5722407 # initialize rs2
bgeu x29, x12, some_label_for_btype_136820865183085390370 # perform operation 
addi x0, x1, 1
some_label_for_btype_136820865183085390370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x50b46d92b5722407 # initialize rs1
li x12, 0x50b46d92b5722407 # initialize rs2
bgeu x29, x12, some_label_for_btype_136820865183085390371 # perform operation 
addi x0, x1, 1
some_label_for_btype_136820865183085390371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x27, 0xca1df7bbfe06c9fe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x7fffffffffffffff # initialize rs1
li x14, 0xe8d08bf9fd113f62 # initialize rs2
bgeu x9, x14, some_label_for_btype_164784435661470128670 # perform operation 
addi x0, x1, 1
some_label_for_btype_164784435661470128670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xe8d08bf9fd113f62 # initialize rs1
li x14, 0xe8d08bf9fd113f62 # initialize rs2
bgeu x9, x14, some_label_for_btype_164784435661470128671 # perform operation 
addi x0, x1, 1
some_label_for_btype_164784435661470128671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0xd373622c9b793d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x7ffffffffffffffe # initialize rs1
li x7, 0x763e6e966fc5e3d4 # initialize rs2
bgeu x30, x7, some_label_for_btype_83336184059617443120 # perform operation 
addi x0, x1, 1
some_label_for_btype_83336184059617443120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x763e6e966fc5e3d4 # initialize rs1
li x7, 0x763e6e966fc5e3d4 # initialize rs2
bgeu x30, x7, some_label_for_btype_83336184059617443121 # perform operation 
addi x0, x1, 1
some_label_for_btype_83336184059617443121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0x26c0e551bec60176 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xffffffffffffffff # initialize rs1
li x31, 0x85fc4b2d57b44389 # initialize rs2
bgeu x30, x31, some_label_for_btype_97506144097809375920 # perform operation 
addi x0, x1, 1
some_label_for_btype_97506144097809375920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x85fc4b2d57b44389 # initialize rs1
li x31, 0x85fc4b2d57b44389 # initialize rs2
bgeu x30, x31, some_label_for_btype_97506144097809375921 # perform operation 
addi x0, x1, 1
some_label_for_btype_97506144097809375921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x8, 0x3504c74bcd07f345 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xfffffffffffffffe # initialize rs1
li x14, 0x073b3ddf35522aff # initialize rs2
bgeu x31, x14, some_label_for_btype_151934256887148580790 # perform operation 
addi x0, x1, 1
some_label_for_btype_151934256887148580790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x073b3ddf35522aff # initialize rs1
li x14, 0x073b3ddf35522aff # initialize rs2
bgeu x31, x14, some_label_for_btype_151934256887148580791 # perform operation 
addi x0, x1, 1
some_label_for_btype_151934256887148580791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x25, 0x63faaad93027d7b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x29030928d7de2355 # initialize rs2
bgeu x9, x5, some_label_for_btype_149509655778167889000 # perform operation 
addi x0, x1, 1
some_label_for_btype_149509655778167889000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x29030928d7de2355 # initialize rs1
li x5, 0x29030928d7de2355 # initialize rs2
bgeu x9, x5, some_label_for_btype_149509655778167889001 # perform operation 
addi x0, x1, 1
some_label_for_btype_149509655778167889001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0xb1d59e2b08e6c664 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xd51ce11c24a23b2c # initialize rs2
bgeu x16, x20, some_label_for_btype_177944092666907512340 # perform operation 
addi x0, x1, 1
some_label_for_btype_177944092666907512340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xd51ce11c24a23b2c # initialize rs1
li x20, 0xd51ce11c24a23b2c # initialize rs2
bgeu x16, x20, some_label_for_btype_177944092666907512341 # perform operation 
addi x0, x1, 1
some_label_for_btype_177944092666907512341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x17, 0xa922d42073feeb54 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x5555555555555555 # initialize rs1
li x28, 0x72607180bb890659 # initialize rs2
bgeu x1, x28, some_label_for_btype_134570803566286279110 # perform operation 
addi x0, x1, 1
some_label_for_btype_134570803566286279110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x72607180bb890659 # initialize rs1
li x28, 0x72607180bb890659 # initialize rs2
bgeu x1, x28, some_label_for_btype_134570803566286279111 # perform operation 
addi x0, x1, 1
some_label_for_btype_134570803566286279111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x31, 0xeb0bb01260391ed6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x00000000ffffffff # initialize rs1
li x16, 0x1f60140abe9b08c1 # initialize rs2
bgeu x24, x16, some_label_for_btype_19100167106233931080 # perform operation 
addi x0, x1, 1
some_label_for_btype_19100167106233931080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x1f60140abe9b08c1 # initialize rs1
li x16, 0x1f60140abe9b08c1 # initialize rs2
bgeu x24, x16, some_label_for_btype_19100167106233931081 # perform operation 
addi x0, x1, 1
some_label_for_btype_19100167106233931081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x26, 0x0c5b38629d9dd62a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x00000000fffffffe # initialize rs1
li x21, 0x663e276e9fdabfbc # initialize rs2
bgeu x6, x21, some_label_for_btype_37344649579524159990 # perform operation 
addi x0, x1, 1
some_label_for_btype_37344649579524159990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x663e276e9fdabfbc # initialize rs1
li x21, 0x663e276e9fdabfbc # initialize rs2
bgeu x6, x21, some_label_for_btype_37344649579524159991 # perform operation 
addi x0, x1, 1
some_label_for_btype_37344649579524159991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0xf4bc3f692635fe37 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000100000000 # initialize rs1
li x10, 0x1849eb3429925d31 # initialize rs2
bgeu x4, x10, some_label_for_btype_101987823179483582520 # perform operation 
addi x0, x1, 1
some_label_for_btype_101987823179483582520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x1849eb3429925d31 # initialize rs1
li x10, 0x1849eb3429925d31 # initialize rs2
bgeu x4, x10, some_label_for_btype_101987823179483582521 # perform operation 
addi x0, x1, 1
some_label_for_btype_101987823179483582521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0x3315c0039542803b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000100000001 # initialize rs1
li x1, 0x20c59ddb76940adf # initialize rs2
bgeu x31, x1, some_label_for_btype_96818711824776317720 # perform operation 
addi x0, x1, 1
some_label_for_btype_96818711824776317720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x20c59ddb76940adf # initialize rs1
li x1, 0x20c59ddb76940adf # initialize rs2
bgeu x31, x1, some_label_for_btype_96818711824776317721 # perform operation 
addi x0, x1, 1
some_label_for_btype_96818711824776317721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x26, 0x0296ed473d58a547 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x9f5eff76b72e9bf5 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
bgeu x5, x21, some_label_for_btype_136185304155734139300 # perform operation 
addi x0, x1, 1
some_label_for_btype_136185304155734139300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
bgeu x5, x21, some_label_for_btype_136185304155734139301 # perform operation 
addi x0, x1, 1
some_label_for_btype_136185304155734139301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x92b037394c1eefd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x48624f7555840d63 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
bgeu x22, x19, some_label_for_btype_2250119680267510520 # perform operation 
addi x0, x1, 1
some_label_for_btype_2250119680267510520:
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
bgeu x22, x19, some_label_for_btype_2250119680267510521 # perform operation 
addi x0, x1, 1
some_label_for_btype_2250119680267510521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x20, 0x746a58719bd37769 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x4dbed5ca41f1fa05 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
bgeu x15, x7, some_label_for_btype_80374608149259850760 # perform operation 
addi x0, x1, 1
some_label_for_btype_80374608149259850760:
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
bgeu x15, x7, some_label_for_btype_80374608149259850761 # perform operation 
addi x0, x1, 1
some_label_for_btype_80374608149259850761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x21, 0xadb6ca2788b8e8e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xb04519b842a22193 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
bgeu x22, x17, some_label_for_btype_77596480141091604190 # perform operation 
addi x0, x1, 1
some_label_for_btype_77596480141091604190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
bgeu x22, x17, some_label_for_btype_77596480141091604191 # perform operation 
addi x0, x1, 1
some_label_for_btype_77596480141091604191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x1, 0xabedcf3c37477343 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xeb7362f26362ee06 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
bgeu x24, x15, some_label_for_btype_21355647450232198660 # perform operation 
addi x0, x1, 1
some_label_for_btype_21355647450232198660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x8000000000000001 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
bgeu x24, x15, some_label_for_btype_21355647450232198661 # perform operation 
addi x0, x1, 1
some_label_for_btype_21355647450232198661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x22, 0x2b7222e1fe374dda # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x5e57187d92cb47f2 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
bgeu x21, x8, some_label_for_btype_56154357622287083340 # perform operation 
addi x0, x1, 1
some_label_for_btype_56154357622287083340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x7fffffffffffffff # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
bgeu x21, x8, some_label_for_btype_56154357622287083341 # perform operation 
addi x0, x1, 1
some_label_for_btype_56154357622287083341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x20, 0x12755ee53e0902b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x2918f4d4e61918ea # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
bgeu x24, x14, some_label_for_btype_154127046773803591690 # perform operation 
addi x0, x1, 1
some_label_for_btype_154127046773803591690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x7ffffffffffffffe # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
bgeu x24, x14, some_label_for_btype_154127046773803591691 # perform operation 
addi x0, x1, 1
some_label_for_btype_154127046773803591691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x7, 0x38e453b96797cb4c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x719f9aa60123d88d # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
bgeu x12, x8, some_label_for_btype_39620955263854844400 # perform operation 
addi x0, x1, 1
some_label_for_btype_39620955263854844400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xffffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
bgeu x12, x8, some_label_for_btype_39620955263854844401 # perform operation 
addi x0, x1, 1
some_label_for_btype_39620955263854844401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x23, 0xea9b37c8ae967cba # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x2abb2ee6edbd29bb # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
bgeu x20, x12, some_label_for_btype_80162195860669890490 # perform operation 
addi x0, x1, 1
some_label_for_btype_80162195860669890490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xfffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
bgeu x20, x12, some_label_for_btype_80162195860669890491 # perform operation 
addi x0, x1, 1
some_label_for_btype_80162195860669890491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x26, 0xf3aa640f8ec90946 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xe2b75703baede677 # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
bgeu x11, x5, some_label_for_btype_68758819873985370800 # perform operation 
addi x0, x1, 1
some_label_for_btype_68758819873985370800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
bgeu x11, x5, some_label_for_btype_68758819873985370801 # perform operation 
addi x0, x1, 1
some_label_for_btype_68758819873985370801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x22, 0x95656093916e70ca # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xa041e38b8987a4ac # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x17, x1, some_label_for_btype_111261043494845625170 # perform operation 
addi x0, x1, 1
some_label_for_btype_111261043494845625170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x17, x1, some_label_for_btype_111261043494845625171 # perform operation 
addi x0, x1, 1
some_label_for_btype_111261043494845625171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x25, 0x85b4f030960cd7f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xcfabcaa2235010bf # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bgeu x23, x31, some_label_for_btype_133419196007576916760 # perform operation 
addi x0, x1, 1
some_label_for_btype_133419196007576916760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x5555555555555555 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bgeu x23, x31, some_label_for_btype_133419196007576916761 # perform operation 
addi x0, x1, 1
some_label_for_btype_133419196007576916761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x12, 0xc79f74fe441213e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x624b32196b4215d8 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
bgeu x18, x22, some_label_for_btype_43595210415373385500 # perform operation 
addi x0, x1, 1
some_label_for_btype_43595210415373385500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x00000000ffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
bgeu x18, x22, some_label_for_btype_43595210415373385501 # perform operation 
addi x0, x1, 1
some_label_for_btype_43595210415373385501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x21, 0xc8c0bd07c568ae5f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x2b90f3d7ffaeb4f5 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
bgeu x11, x5, some_label_for_btype_89684291536731684030 # perform operation 
addi x0, x1, 1
some_label_for_btype_89684291536731684030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x00000000fffffffe # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
bgeu x11, x5, some_label_for_btype_89684291536731684031 # perform operation 
addi x0, x1, 1
some_label_for_btype_89684291536731684031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x15, 0xad40adbc4109373e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x505721626aad057e # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
bgeu x14, x26, some_label_for_btype_73946214538249271140 # perform operation 
addi x0, x1, 1
some_label_for_btype_73946214538249271140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000100000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
bgeu x14, x26, some_label_for_btype_73946214538249271141 # perform operation 
addi x0, x1, 1
some_label_for_btype_73946214538249271141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x12, 0x70fb72b7c7560fb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xfeb70796f6988f34 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
bgeu x30, x17, some_label_for_btype_29272432657106723290 # perform operation 
addi x0, x1, 1
some_label_for_btype_29272432657106723290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
bgeu x30, x17, some_label_for_btype_29272432657106723291 # perform operation 
addi x0, x1, 1
some_label_for_btype_29272432657106723291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x25, 0x0ceb3ab4e5f27c6f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
bgeu x18, x12, some_label_for_btype_73314929026809013330 # perform operation 
addi x0, x1, 1
some_label_for_btype_73314929026809013330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
bgeu x18, x12, some_label_for_btype_73314929026809013331 # perform operation 
addi x0, x1, 1
some_label_for_btype_73314929026809013331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x13, 0xe84716fa3e0399ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
bgeu x7, x14, some_label_for_btype_60950798232030660280 # perform operation 
addi x0, x1, 1
some_label_for_btype_60950798232030660280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
bgeu x7, x14, some_label_for_btype_60950798232030660281 # perform operation 
addi x0, x1, 1
some_label_for_btype_60950798232030660281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x21, 0xbfe619103bd3778f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
bgeu x12, x1, some_label_for_btype_152033232888893976690 # perform operation 
addi x0, x1, 1
some_label_for_btype_152033232888893976690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
bgeu x12, x1, some_label_for_btype_152033232888893976691 # perform operation 
addi x0, x1, 1
some_label_for_btype_152033232888893976691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x16, 0x99a0afb9a88a8bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000000000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
bgeu x8, x15, some_label_for_btype_48453174161273042470 # perform operation 
addi x0, x1, 1
some_label_for_btype_48453174161273042470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x8000000000000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
bgeu x8, x15, some_label_for_btype_48453174161273042471 # perform operation 
addi x0, x1, 1
some_label_for_btype_48453174161273042471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x8, 0x6678b5aa1707c881 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0000000000000000 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
bgeu x30, x22, some_label_for_btype_112641831658514266140 # perform operation 
addi x0, x1, 1
some_label_for_btype_112641831658514266140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x8000000000000001 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
bgeu x30, x22, some_label_for_btype_112641831658514266141 # perform operation 
addi x0, x1, 1
some_label_for_btype_112641831658514266141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x8, 0xb43da8ac44624f54 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x0000000000000000 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
bgeu x5, x24, some_label_for_btype_63753118796662786620 # perform operation 
addi x0, x1, 1
some_label_for_btype_63753118796662786620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x7fffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
bgeu x5, x24, some_label_for_btype_63753118796662786621 # perform operation 
addi x0, x1, 1
some_label_for_btype_63753118796662786621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x10, 0x6654c9e27c6aa57d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000000000000 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
bgeu x1, x2, some_label_for_btype_136427762822862318680 # perform operation 
addi x0, x1, 1
some_label_for_btype_136427762822862318680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
bgeu x1, x2, some_label_for_btype_136427762822862318681 # perform operation 
addi x0, x1, 1
some_label_for_btype_136427762822862318681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x9, 0x36efcc00586bac73 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0000000000000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bgeu x26, x12, some_label_for_btype_18296740934769016280 # perform operation 
addi x0, x1, 1
some_label_for_btype_18296740934769016280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xffffffffffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bgeu x26, x12, some_label_for_btype_18296740934769016281 # perform operation 
addi x0, x1, 1
some_label_for_btype_18296740934769016281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x4, 0x78e3e9d2df53bf60 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
bgeu x2, x29, some_label_for_btype_172095205293541513640 # perform operation 
addi x0, x1, 1
some_label_for_btype_172095205293541513640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
bgeu x2, x29, some_label_for_btype_172095205293541513641 # perform operation 
addi x0, x1, 1
some_label_for_btype_172095205293541513641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x18, 0xcb95035d2e641dc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000000000000 # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
bgeu x24, x9, some_label_for_btype_101831516287341856250 # perform operation 
addi x0, x1, 1
some_label_for_btype_101831516287341856250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
bgeu x24, x9, some_label_for_btype_101831516287341856251 # perform operation 
addi x0, x1, 1
some_label_for_btype_101831516287341856251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x7f777a80dc1aa59b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000000000000 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x28, x8, some_label_for_btype_141512388336291708080 # perform operation 
addi x0, x1, 1
some_label_for_btype_141512388336291708080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x28, x8, some_label_for_btype_141512388336291708081 # perform operation 
addi x0, x1, 1
some_label_for_btype_141512388336291708081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x10, 0x7b78b784a53baba5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
bgeu x17, x18, some_label_for_btype_108222555007090187600 # perform operation 
addi x0, x1, 1
some_label_for_btype_108222555007090187600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x5555555555555555 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
bgeu x17, x18, some_label_for_btype_108222555007090187601 # perform operation 
addi x0, x1, 1
some_label_for_btype_108222555007090187601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x8, 0xc634ae69c5d244f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000000000000 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
bgeu x12, x26, some_label_for_btype_77941686521904081120 # perform operation 
addi x0, x1, 1
some_label_for_btype_77941686521904081120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
bgeu x12, x26, some_label_for_btype_77941686521904081121 # perform operation 
addi x0, x1, 1
some_label_for_btype_77941686521904081121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x5, 0x156cd846cdfd9ad1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000000000000 # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
bgeu x31, x4, some_label_for_btype_72304643584902435200 # perform operation 
addi x0, x1, 1
some_label_for_btype_72304643584902435200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x00000000fffffffe # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
bgeu x31, x4, some_label_for_btype_72304643584902435201 # perform operation 
addi x0, x1, 1
some_label_for_btype_72304643584902435201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x23, 0x13df1069ed67f99b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000000000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
bgeu x19, x16, some_label_for_btype_147631248895979911570 # perform operation 
addi x0, x1, 1
some_label_for_btype_147631248895979911570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
bgeu x19, x16, some_label_for_btype_147631248895979911571 # perform operation 
addi x0, x1, 1
some_label_for_btype_147631248895979911571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x6, 0x66ffd550ebe8d098 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x0000000000000000 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
bgeu x16, x21, some_label_for_btype_28619184381966691400 # perform operation 
addi x0, x1, 1
some_label_for_btype_28619184381966691400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
bgeu x16, x21, some_label_for_btype_28619184381966691401 # perform operation 
addi x0, x1, 1
some_label_for_btype_28619184381966691401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x12, 0x35eb0db5bc79f0e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000000000001 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bgeu x19, x7, some_label_for_btype_44167722288364578820 # perform operation 
addi x0, x1, 1
some_label_for_btype_44167722288364578820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bgeu x19, x7, some_label_for_btype_44167722288364578821 # perform operation 
addi x0, x1, 1
some_label_for_btype_44167722288364578821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x31, 0xcc3c78b65d66829a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bgeu x11, x22, some_label_for_btype_15070190824147455310 # perform operation 
addi x0, x1, 1
some_label_for_btype_15070190824147455310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bgeu x11, x22, some_label_for_btype_15070190824147455311 # perform operation 
addi x0, x1, 1
some_label_for_btype_15070190824147455311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x26, 0xec1f894ab1a9c0f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bgeu x30, x29, some_label_for_btype_39810763535178042370 # perform operation 
addi x0, x1, 1
some_label_for_btype_39810763535178042370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bgeu x30, x29, some_label_for_btype_39810763535178042371 # perform operation 
addi x0, x1, 1
some_label_for_btype_39810763535178042371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x26, 0x8f9d70acadf75614 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000000000001 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
bgeu x6, x17, some_label_for_btype_83491082030179546900 # perform operation 
addi x0, x1, 1
some_label_for_btype_83491082030179546900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
bgeu x6, x17, some_label_for_btype_83491082030179546901 # perform operation 
addi x0, x1, 1
some_label_for_btype_83491082030179546901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x4, 0xed7855b9365f97ce # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x0000000000000001 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
bgeu x5, x22, some_label_for_btype_173277603773307987450 # perform operation 
addi x0, x1, 1
some_label_for_btype_173277603773307987450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x8000000000000001 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
bgeu x5, x22, some_label_for_btype_173277603773307987451 # perform operation 
addi x0, x1, 1
some_label_for_btype_173277603773307987451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x2, 0xafef76c374a56963 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000000000001 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
bgeu x12, x31, some_label_for_btype_44237020407943254530 # perform operation 
addi x0, x1, 1
some_label_for_btype_44237020407943254530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7fffffffffffffff # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
bgeu x12, x31, some_label_for_btype_44237020407943254531 # perform operation 
addi x0, x1, 1
some_label_for_btype_44237020407943254531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x28, 0xb305590402e9c8ac # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000000000001 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
bgeu x7, x27, some_label_for_btype_111467052999035920 # perform operation 
addi x0, x1, 1
some_label_for_btype_111467052999035920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x7ffffffffffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
bgeu x7, x27, some_label_for_btype_111467052999035921 # perform operation 
addi x0, x1, 1
some_label_for_btype_111467052999035921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x27, 0xf95983138d063c50 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000000000001 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bgeu x19, x16, some_label_for_btype_76912635292477325010 # perform operation 
addi x0, x1, 1
some_label_for_btype_76912635292477325010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bgeu x19, x16, some_label_for_btype_76912635292477325011 # perform operation 
addi x0, x1, 1
some_label_for_btype_76912635292477325011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x19, 0x68e6dc4413f0f2e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000000000001 # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
bgeu x3, x4, some_label_for_btype_10588784563739215430 # perform operation 
addi x0, x1, 1
some_label_for_btype_10588784563739215430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xfffffffffffffffe # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
bgeu x3, x4, some_label_for_btype_10588784563739215431 # perform operation 
addi x0, x1, 1
some_label_for_btype_10588784563739215431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x8, 0x76a4a22fc43fefd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000000000001 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
bgeu x21, x3, some_label_for_btype_149876720934218970220 # perform operation 
addi x0, x1, 1
some_label_for_btype_149876720934218970220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
bgeu x21, x3, some_label_for_btype_149876720934218970221 # perform operation 
addi x0, x1, 1
some_label_for_btype_149876720934218970221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xbb484c4572c1487c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000000000001 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x27, x28, some_label_for_btype_114820020395933683460 # perform operation 
addi x0, x1, 1
some_label_for_btype_114820020395933683460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x27, x28, some_label_for_btype_114820020395933683461 # perform operation 
addi x0, x1, 1
some_label_for_btype_114820020395933683461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x25, 0x89fd2baab57f3849 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0000000000000001 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bgeu x30, x14, some_label_for_btype_125304790740849731560 # perform operation 
addi x0, x1, 1
some_label_for_btype_125304790740849731560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x5555555555555555 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bgeu x30, x14, some_label_for_btype_125304790740849731561 # perform operation 
addi x0, x1, 1
some_label_for_btype_125304790740849731561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x25, 0x9678c47ff14e6708 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x0000000000000001 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
bgeu x17, x10, some_label_for_btype_19168326967285327920 # perform operation 
addi x0, x1, 1
some_label_for_btype_19168326967285327920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
bgeu x17, x10, some_label_for_btype_19168326967285327921 # perform operation 
addi x0, x1, 1
some_label_for_btype_19168326967285327921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x28, 0x417c672f080b642e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000000000001 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
bgeu x21, x5, some_label_for_btype_29489371353779544590 # perform operation 
addi x0, x1, 1
some_label_for_btype_29489371353779544590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000000fffffffe # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
bgeu x21, x5, some_label_for_btype_29489371353779544591 # perform operation 
addi x0, x1, 1
some_label_for_btype_29489371353779544591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x31, 0x029ed6f0d1fae9e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x0000000000000001 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
bgeu x20, x24, some_label_for_btype_32746445791638132650 # perform operation 
addi x0, x1, 1
some_label_for_btype_32746445791638132650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
bgeu x20, x24, some_label_for_btype_32746445791638132651 # perform operation 
addi x0, x1, 1
some_label_for_btype_32746445791638132651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x28, 0x01f82b2574ca42a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bgeu x4, x10, some_label_for_btype_161500945094520788430 # perform operation 
addi x0, x1, 1
some_label_for_btype_161500945094520788430:
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
bgeu x4, x10, some_label_for_btype_161500945094520788431 # perform operation 
addi x0, x1, 1
some_label_for_btype_161500945094520788431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x5, 0x90a7824452c7c6aa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
bgeu x4, x19, some_label_for_btype_135927758548614861930 # perform operation 
addi x0, x1, 1
some_label_for_btype_135927758548614861930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
bgeu x4, x19, some_label_for_btype_135927758548614861931 # perform operation 
addi x0, x1, 1
some_label_for_btype_135927758548614861931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x1, 0x161b4b2e8eb78c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
bgeu x9, x12, some_label_for_btype_3896966042806949040 # perform operation 
addi x0, x1, 1
some_label_for_btype_3896966042806949040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
bgeu x9, x12, some_label_for_btype_3896966042806949041 # perform operation 
addi x0, x1, 1
some_label_for_btype_3896966042806949041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0x65b5c1edf18a2539 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bgeu x16, x14, some_label_for_btype_162331279613869822790 # perform operation 
addi x0, x1, 1
some_label_for_btype_162331279613869822790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bgeu x16, x14, some_label_for_btype_162331279613869822791 # perform operation 
addi x0, x1, 1
some_label_for_btype_162331279613869822791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x11, 0xcb5718e71e8cb082 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000000000002 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
bgeu x28, x6, some_label_for_btype_90011992462883912330 # perform operation 
addi x0, x1, 1
some_label_for_btype_90011992462883912330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x8000000000000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
bgeu x28, x6, some_label_for_btype_90011992462883912331 # perform operation 
addi x0, x1, 1
some_label_for_btype_90011992462883912331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x20, 0x9635171fc624aafd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000000000002 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
bgeu x9, x8, some_label_for_btype_72914066719561213600 # perform operation 
addi x0, x1, 1
some_label_for_btype_72914066719561213600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x8000000000000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
bgeu x9, x8, some_label_for_btype_72914066719561213601 # perform operation 
addi x0, x1, 1
some_label_for_btype_72914066719561213601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x11, 0x5c2be6be3053663f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x0000000000000002 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bgeu x13, x28, some_label_for_btype_445338315819733700 # perform operation 
addi x0, x1, 1
some_label_for_btype_445338315819733700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x7fffffffffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bgeu x13, x28, some_label_for_btype_445338315819733701 # perform operation 
addi x0, x1, 1
some_label_for_btype_445338315819733701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x26, 0xed4a797d3cf4a141 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000000000002 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bgeu x9, x11, some_label_for_btype_83285885431402187140 # perform operation 
addi x0, x1, 1
some_label_for_btype_83285885431402187140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x7ffffffffffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bgeu x9, x11, some_label_for_btype_83285885431402187141 # perform operation 
addi x0, x1, 1
some_label_for_btype_83285885431402187141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x26, 0xc77b43baaf3d2c0a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x0000000000000002 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
bgeu x13, x9, some_label_for_btype_157324663791218683770 # perform operation 
addi x0, x1, 1
some_label_for_btype_157324663791218683770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xffffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
bgeu x13, x9, some_label_for_btype_157324663791218683771 # perform operation 
addi x0, x1, 1
some_label_for_btype_157324663791218683771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x11, 0xa56ee808d4b0438b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x0000000000000002 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
bgeu x23, x28, some_label_for_btype_111254056401974222980 # perform operation 
addi x0, x1, 1
some_label_for_btype_111254056401974222980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xfffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
bgeu x23, x28, some_label_for_btype_111254056401974222981 # perform operation 
addi x0, x1, 1
some_label_for_btype_111254056401974222981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x30, 0x695b7808d9add844 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000000000002 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
bgeu x3, x20, some_label_for_btype_108821716322625844850 # perform operation 
addi x0, x1, 1
some_label_for_btype_108821716322625844850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
bgeu x3, x20, some_label_for_btype_108821716322625844851 # perform operation 
addi x0, x1, 1
some_label_for_btype_108821716322625844851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xcf634223b96bfc5c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000000000002 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x22, x27, some_label_for_btype_57525443030696875260 # perform operation 
addi x0, x1, 1
some_label_for_btype_57525443030696875260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x22, x27, some_label_for_btype_57525443030696875261 # perform operation 
addi x0, x1, 1
some_label_for_btype_57525443030696875261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x19, 0x7b1e69c779c7e83a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000000000002 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bgeu x12, x11, some_label_for_btype_156267844311717049030 # perform operation 
addi x0, x1, 1
some_label_for_btype_156267844311717049030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bgeu x12, x11, some_label_for_btype_156267844311717049031 # perform operation 
addi x0, x1, 1
some_label_for_btype_156267844311717049031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x16, 0xeba6f2a3796f4bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000000000002 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bgeu x28, x15, some_label_for_btype_8125125313075279510 # perform operation 
addi x0, x1, 1
some_label_for_btype_8125125313075279510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bgeu x28, x15, some_label_for_btype_8125125313075279511 # perform operation 
addi x0, x1, 1
some_label_for_btype_8125125313075279511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x9, 0x83a73d81132cf308 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000000000002 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
bgeu x21, x27, some_label_for_btype_71533267982384842190 # perform operation 
addi x0, x1, 1
some_label_for_btype_71533267982384842190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
bgeu x21, x27, some_label_for_btype_71533267982384842191 # perform operation 
addi x0, x1, 1
some_label_for_btype_71533267982384842191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x15, 0x0a680e8c0cee140f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x0000000000000002 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
bgeu x16, x3, some_label_for_btype_76523039025604295400 # perform operation 
addi x0, x1, 1
some_label_for_btype_76523039025604295400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0000000100000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
bgeu x16, x3, some_label_for_btype_76523039025604295401 # perform operation 
addi x0, x1, 1
some_label_for_btype_76523039025604295401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x21, 0x26b2474a485234e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0000000000000002 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bgeu x14, x27, some_label_for_btype_152428921960736705600 # perform operation 
addi x0, x1, 1
some_label_for_btype_152428921960736705600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bgeu x14, x27, some_label_for_btype_152428921960736705601 # perform operation 
addi x0, x1, 1
some_label_for_btype_152428921960736705601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x24, 0xe5d1132e3bb8749c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bgeu x1, x2, some_label_for_btype_114928654640719786430 # perform operation 
addi x0, x1, 1
some_label_for_btype_114928654640719786430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bgeu x1, x2, some_label_for_btype_114928654640719786431 # perform operation 
addi x0, x1, 1
some_label_for_btype_114928654640719786431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x1, 0xff2f2c339512ff96 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x8000000000000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bgeu x28, x26, some_label_for_btype_43670908287746710680 # perform operation 
addi x0, x1, 1
some_label_for_btype_43670908287746710680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bgeu x28, x26, some_label_for_btype_43670908287746710681 # perform operation 
addi x0, x1, 1
some_label_for_btype_43670908287746710681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x20, 0xcccb3aeb06982d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x8000000000000000 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
bgeu x6, x24, some_label_for_btype_105680049625285944280 # perform operation 
addi x0, x1, 1
some_label_for_btype_105680049625285944280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
bgeu x6, x24, some_label_for_btype_105680049625285944281 # perform operation 
addi x0, x1, 1
some_label_for_btype_105680049625285944281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x6, 0x3871fcb40524a3b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
bgeu x3, x31, some_label_for_btype_54112962696121437780 # perform operation 
addi x0, x1, 1
some_label_for_btype_54112962696121437780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
bgeu x3, x31, some_label_for_btype_54112962696121437781 # perform operation 
addi x0, x1, 1
some_label_for_btype_54112962696121437781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x18, 0xe837d0ebae68c129 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x8000000000000000 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bgeu x13, x24, some_label_for_btype_130510371757154813460 # perform operation 
addi x0, x1, 1
some_label_for_btype_130510371757154813460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bgeu x13, x24, some_label_for_btype_130510371757154813461 # perform operation 
addi x0, x1, 1
some_label_for_btype_130510371757154813461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x1, 0xd0523f37efbf8da4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x8000000000000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bgeu x30, x6, some_label_for_btype_138475092916062312390 # perform operation 
addi x0, x1, 1
some_label_for_btype_138475092916062312390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7fffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bgeu x30, x6, some_label_for_btype_138475092916062312391 # perform operation 
addi x0, x1, 1
some_label_for_btype_138475092916062312391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x27, 0xc4a2ed76f4f6ed7d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x8000000000000000 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bgeu x4, x25, some_label_for_btype_152377078741131480100 # perform operation 
addi x0, x1, 1
some_label_for_btype_152377078741131480100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bgeu x4, x25, some_label_for_btype_152377078741131480101 # perform operation 
addi x0, x1, 1
some_label_for_btype_152377078741131480101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x2, 0xbe3d3a2f9eab7e1d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x8000000000000000 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
bgeu x31, x3, some_label_for_btype_61891612710011456350 # perform operation 
addi x0, x1, 1
some_label_for_btype_61891612710011456350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xffffffffffffffff # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
bgeu x31, x3, some_label_for_btype_61891612710011456351 # perform operation 
addi x0, x1, 1
some_label_for_btype_61891612710011456351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x13, 0x9cbc486f31c6aabb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x8000000000000000 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
bgeu x21, x7, some_label_for_btype_10252578156149038160 # perform operation 
addi x0, x1, 1
some_label_for_btype_10252578156149038160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xfffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
bgeu x21, x7, some_label_for_btype_10252578156149038161 # perform operation 
addi x0, x1, 1
some_label_for_btype_10252578156149038161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x7, 0x20df4e68754c0846 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x8000000000000000 # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
bgeu x31, x24, some_label_for_btype_42337323004840051480 # perform operation 
addi x0, x1, 1
some_label_for_btype_42337323004840051480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
bgeu x31, x24, some_label_for_btype_42337323004840051481 # perform operation 
addi x0, x1, 1
some_label_for_btype_42337323004840051481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xb6e10036eb65b2ec # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x8000000000000000 # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x15, x4, some_label_for_btype_125039529444998588130 # perform operation 
addi x0, x1, 1
some_label_for_btype_125039529444998588130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x15, x4, some_label_for_btype_125039529444998588131 # perform operation 
addi x0, x1, 1
some_label_for_btype_125039529444998588131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x10, 0x0c85d14fba02d2fa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x8000000000000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
bgeu x14, x23, some_label_for_btype_40675573284457602610 # perform operation 
addi x0, x1, 1
some_label_for_btype_40675573284457602610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
bgeu x14, x23, some_label_for_btype_40675573284457602611 # perform operation 
addi x0, x1, 1
some_label_for_btype_40675573284457602611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x21, 0xa762fb6cde74934a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x8000000000000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bgeu x12, x9, some_label_for_btype_6530524281106526300 # perform operation 
addi x0, x1, 1
some_label_for_btype_6530524281106526300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000000ffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bgeu x12, x9, some_label_for_btype_6530524281106526301 # perform operation 
addi x0, x1, 1
some_label_for_btype_6530524281106526301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x10, 0x90abe60297d157fd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x8000000000000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
bgeu x4, x5, some_label_for_btype_4682854147129565610 # perform operation 
addi x0, x1, 1
some_label_for_btype_4682854147129565610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x00000000fffffffe # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
bgeu x4, x5, some_label_for_btype_4682854147129565611 # perform operation 
addi x0, x1, 1
some_label_for_btype_4682854147129565611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x13, 0x75660825f9a21a7b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x8000000000000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
bgeu x8, x27, some_label_for_btype_34872417334786896650 # perform operation 
addi x0, x1, 1
some_label_for_btype_34872417334786896650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000100000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
bgeu x8, x27, some_label_for_btype_34872417334786896651 # perform operation 
addi x0, x1, 1
some_label_for_btype_34872417334786896651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x29, 0xe83fe7702e539f6b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x8000000000000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
bgeu x16, x26, some_label_for_btype_170414994346918936170 # perform operation 
addi x0, x1, 1
some_label_for_btype_170414994346918936170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0000000100000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
bgeu x16, x26, some_label_for_btype_170414994346918936171 # perform operation 
addi x0, x1, 1
some_label_for_btype_170414994346918936171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x22, 0x358cef106e85d990 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x8000000000000001 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
bgeu x19, x25, some_label_for_btype_77518563025624053050 # perform operation 
addi x0, x1, 1
some_label_for_btype_77518563025624053050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
bgeu x19, x25, some_label_for_btype_77518563025624053051 # perform operation 
addi x0, x1, 1
some_label_for_btype_77518563025624053051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x13, 0x36a96449642553cf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x8000000000000001 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
bgeu x1, x7, some_label_for_btype_1328948770965903680 # perform operation 
addi x0, x1, 1
some_label_for_btype_1328948770965903680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000000000001 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
bgeu x1, x7, some_label_for_btype_1328948770965903681 # perform operation 
addi x0, x1, 1
some_label_for_btype_1328948770965903681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x28, 0x56588b3b8750e415 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bgeu x10, x17, some_label_for_btype_54321527697202654070 # perform operation 
addi x0, x1, 1
some_label_for_btype_54321527697202654070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bgeu x10, x17, some_label_for_btype_54321527697202654071 # perform operation 
addi x0, x1, 1
some_label_for_btype_54321527697202654071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x13, 0x8d94d2b4ecc0db3e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x8000000000000001 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bgeu x31, x8, some_label_for_btype_83039057336573600240 # perform operation 
addi x0, x1, 1
some_label_for_btype_83039057336573600240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x8000000000000000 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bgeu x31, x8, some_label_for_btype_83039057336573600241 # perform operation 
addi x0, x1, 1
some_label_for_btype_83039057336573600241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x27, 0x33ec0851304f128f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
bgeu x14, x18, some_label_for_btype_178923778099166556620 # perform operation 
addi x0, x1, 1
some_label_for_btype_178923778099166556620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
bgeu x14, x18, some_label_for_btype_178923778099166556621 # perform operation 
addi x0, x1, 1
some_label_for_btype_178923778099166556621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x31, 0xf8002e55db4cd37f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x8000000000000001 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bgeu x14, x28, some_label_for_btype_60906996675654176070 # perform operation 
addi x0, x1, 1
some_label_for_btype_60906996675654176070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x7fffffffffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bgeu x14, x28, some_label_for_btype_60906996675654176071 # perform operation 
addi x0, x1, 1
some_label_for_btype_60906996675654176071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x17, 0x558171c8115f1aec # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x8000000000000001 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
bgeu x30, x31, some_label_for_btype_154975358203257228900 # perform operation 
addi x0, x1, 1
some_label_for_btype_154975358203257228900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
bgeu x30, x31, some_label_for_btype_154975358203257228901 # perform operation 
addi x0, x1, 1
some_label_for_btype_154975358203257228901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x23, 0xb50add975f80ab18 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x8000000000000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bgeu x25, x17, some_label_for_btype_104481430459666886310 # perform operation 
addi x0, x1, 1
some_label_for_btype_104481430459666886310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xffffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bgeu x25, x17, some_label_for_btype_104481430459666886311 # perform operation 
addi x0, x1, 1
some_label_for_btype_104481430459666886311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x12, 0x488b3b559763fcf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x8000000000000001 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
bgeu x6, x25, some_label_for_btype_31347437857833863890 # perform operation 
addi x0, x1, 1
some_label_for_btype_31347437857833863890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xfffffffffffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
bgeu x6, x25, some_label_for_btype_31347437857833863891 # perform operation 
addi x0, x1, 1
some_label_for_btype_31347437857833863891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x30, 0xa8b5d8b4f692152c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x8000000000000001 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
bgeu x29, x3, some_label_for_btype_112905123346488460860 # perform operation 
addi x0, x1, 1
some_label_for_btype_112905123346488460860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
bgeu x29, x3, some_label_for_btype_112905123346488460861 # perform operation 
addi x0, x1, 1
some_label_for_btype_112905123346488460861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0xfcd230cb0cfd25d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x8000000000000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x22, x16, some_label_for_btype_144877924034771724120 # perform operation 
addi x0, x1, 1
some_label_for_btype_144877924034771724120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x22, x16, some_label_for_btype_144877924034771724121 # perform operation 
addi x0, x1, 1
some_label_for_btype_144877924034771724121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x2, 0xc5a0f5c2a7aa82de # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x8000000000000001 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
bgeu x18, x27, some_label_for_btype_159889199211396199460 # perform operation 
addi x0, x1, 1
some_label_for_btype_159889199211396199460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
bgeu x18, x27, some_label_for_btype_159889199211396199461 # perform operation 
addi x0, x1, 1
some_label_for_btype_159889199211396199461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x31, 0x6ea4ed0635495e1e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x8000000000000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bgeu x24, x12, some_label_for_btype_171176245095590027890 # perform operation 
addi x0, x1, 1
some_label_for_btype_171176245095590027890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bgeu x24, x12, some_label_for_btype_171176245095590027891 # perform operation 
addi x0, x1, 1
some_label_for_btype_171176245095590027891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x26, 0x1b6132139183d896 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x8000000000000001 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
bgeu x2, x27, some_label_for_btype_93917822724570864770 # perform operation 
addi x0, x1, 1
some_label_for_btype_93917822724570864770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
bgeu x2, x27, some_label_for_btype_93917822724570864771 # perform operation 
addi x0, x1, 1
some_label_for_btype_93917822724570864771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x15, 0x2c48e373aa31fa44 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x8000000000000001 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
bgeu x7, x19, some_label_for_btype_79787667031239632920 # perform operation 
addi x0, x1, 1
some_label_for_btype_79787667031239632920:
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
bgeu x7, x19, some_label_for_btype_79787667031239632921 # perform operation 
addi x0, x1, 1
some_label_for_btype_79787667031239632921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x17, 0x6d4f253b96c4782b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x8000000000000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bgeu x20, x5, some_label_for_btype_126351803107345163400 # perform operation 
addi x0, x1, 1
some_label_for_btype_126351803107345163400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x0000000100000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bgeu x20, x5, some_label_for_btype_126351803107345163401 # perform operation 
addi x0, x1, 1
some_label_for_btype_126351803107345163401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x2, 0x66636cea70e2be6d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
bgeu x11, x12, some_label_for_btype_115503331422323265280 # perform operation 
addi x0, x1, 1
some_label_for_btype_115503331422323265280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
bgeu x11, x12, some_label_for_btype_115503331422323265281 # perform operation 
addi x0, x1, 1
some_label_for_btype_115503331422323265281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x17, 0xb5f2b3cd2252cce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
bgeu x27, x10, some_label_for_btype_64273251632946552890 # perform operation 
addi x0, x1, 1
some_label_for_btype_64273251632946552890:
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
bgeu x27, x10, some_label_for_btype_64273251632946552891 # perform operation 
addi x0, x1, 1
some_label_for_btype_64273251632946552891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x11, 0x7a044ea4575007ad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
bgeu x21, x7, some_label_for_btype_91686079132575250920 # perform operation 
addi x0, x1, 1
some_label_for_btype_91686079132575250920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000000000002 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
bgeu x21, x7, some_label_for_btype_91686079132575250921 # perform operation 
addi x0, x1, 1
some_label_for_btype_91686079132575250921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x4, 0x2fed9f6f28105213 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7fffffffffffffff # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
bgeu x18, x2, some_label_for_btype_40989724238572763070 # perform operation 
addi x0, x1, 1
some_label_for_btype_40989724238572763070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
bgeu x18, x2, some_label_for_btype_40989724238572763071 # perform operation 
addi x0, x1, 1
some_label_for_btype_40989724238572763071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x1, 0x34947f93565f6072 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7fffffffffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
bgeu x11, x17, some_label_for_btype_46682397284106483720 # perform operation 
addi x0, x1, 1
some_label_for_btype_46682397284106483720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
bgeu x11, x17, some_label_for_btype_46682397284106483721 # perform operation 
addi x0, x1, 1
some_label_for_btype_46682397284106483721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x13, 0x380c9cf1e5d61188 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x7fffffffffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
bgeu x27, x16, some_label_for_btype_53844055661928607070 # perform operation 
addi x0, x1, 1
some_label_for_btype_53844055661928607070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x7fffffffffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
bgeu x27, x16, some_label_for_btype_53844055661928607071 # perform operation 
addi x0, x1, 1
some_label_for_btype_53844055661928607071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0x7016cbe4353f19f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x7fffffffffffffff # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
bgeu x19, x27, some_label_for_btype_30026872233904102930 # perform operation 
addi x0, x1, 1
some_label_for_btype_30026872233904102930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x7ffffffffffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
bgeu x19, x27, some_label_for_btype_30026872233904102931 # perform operation 
addi x0, x1, 1
some_label_for_btype_30026872233904102931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x27, 0xdc2c34ada88ccf97 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x7fffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bgeu x22, x15, some_label_for_btype_35626453581031704760 # perform operation 
addi x0, x1, 1
some_label_for_btype_35626453581031704760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xffffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bgeu x22, x15, some_label_for_btype_35626453581031704761 # perform operation 
addi x0, x1, 1
some_label_for_btype_35626453581031704761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x5, 0x3c96c70beae1132e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x7fffffffffffffff # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bgeu x19, x30, some_label_for_btype_167785210127960230720 # perform operation 
addi x0, x1, 1
some_label_for_btype_167785210127960230720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bgeu x19, x30, some_label_for_btype_167785210127960230721 # perform operation 
addi x0, x1, 1
some_label_for_btype_167785210127960230721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x2, 0x9422a6cd4c522223 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x7fffffffffffffff # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
bgeu x27, x21, some_label_for_btype_20117638774810814450 # perform operation 
addi x0, x1, 1
some_label_for_btype_20117638774810814450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
bgeu x27, x21, some_label_for_btype_20117638774810814451 # perform operation 
addi x0, x1, 1
some_label_for_btype_20117638774810814451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x05f73c75385dc1e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x7fffffffffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x3, x20, some_label_for_btype_45918668352489606240 # perform operation 
addi x0, x1, 1
some_label_for_btype_45918668352489606240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x3, x20, some_label_for_btype_45918668352489606241 # perform operation 
addi x0, x1, 1
some_label_for_btype_45918668352489606241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x24, 0xeae9c1974e94218a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x7fffffffffffffff # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bgeu x26, x2, some_label_for_btype_85498301433381967870 # perform operation 
addi x0, x1, 1
some_label_for_btype_85498301433381967870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x5555555555555555 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bgeu x26, x2, some_label_for_btype_85498301433381967871 # perform operation 
addi x0, x1, 1
some_label_for_btype_85498301433381967871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x26, 0xd407b78008199d59 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7fffffffffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bgeu x29, x15, some_label_for_btype_60147570330222890350 # perform operation 
addi x0, x1, 1
some_label_for_btype_60147570330222890350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bgeu x29, x15, some_label_for_btype_60147570330222890351 # perform operation 
addi x0, x1, 1
some_label_for_btype_60147570330222890351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x1, 0xe49af0c34f99fe06 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7fffffffffffffff # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bgeu x18, x11, some_label_for_btype_25675379353883540350 # perform operation 
addi x0, x1, 1
some_label_for_btype_25675379353883540350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bgeu x18, x11, some_label_for_btype_25675379353883540351 # perform operation 
addi x0, x1, 1
some_label_for_btype_25675379353883540351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x16, 0x1f181229d717fa1f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
bgeu x10, x3, some_label_for_btype_89127688983653838270 # perform operation 
addi x0, x1, 1
some_label_for_btype_89127688983653838270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000100000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
bgeu x10, x3, some_label_for_btype_89127688983653838271 # perform operation 
addi x0, x1, 1
some_label_for_btype_89127688983653838271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x14, 0x41255472633471a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
bgeu x13, x20, some_label_for_btype_35959777035416820150 # perform operation 
addi x0, x1, 1
some_label_for_btype_35959777035416820150:
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
bgeu x13, x20, some_label_for_btype_35959777035416820151 # perform operation 
addi x0, x1, 1
some_label_for_btype_35959777035416820151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x14, 0xc09ab0f9267e2af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
bgeu x6, x5, some_label_for_btype_71255311008172735470 # perform operation 
addi x0, x1, 1
some_label_for_btype_71255311008172735470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
bgeu x6, x5, some_label_for_btype_71255311008172735471 # perform operation 
addi x0, x1, 1
some_label_for_btype_71255311008172735471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x27, 0xc9c0451927eb3450 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x7ffffffffffffffe # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bgeu x22, x1, some_label_for_btype_102837386254925632610 # perform operation 
addi x0, x1, 1
some_label_for_btype_102837386254925632610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bgeu x22, x1, some_label_for_btype_102837386254925632611 # perform operation 
addi x0, x1, 1
some_label_for_btype_102837386254925632611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x16, 0x31319316c1c4d111 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
bgeu x28, x20, some_label_for_btype_18961071776482572510 # perform operation 
addi x0, x1, 1
some_label_for_btype_18961071776482572510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
bgeu x28, x20, some_label_for_btype_18961071776482572511 # perform operation 
addi x0, x1, 1
some_label_for_btype_18961071776482572511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x22, 0xc7bd2d012b510f3e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x7ffffffffffffffe # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
bgeu x26, x30, some_label_for_btype_107840854232753322470 # perform operation 
addi x0, x1, 1
some_label_for_btype_107840854232753322470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x8000000000000000 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
bgeu x26, x30, some_label_for_btype_107840854232753322471 # perform operation 
addi x0, x1, 1
some_label_for_btype_107840854232753322471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x24, 0xd756bec37cba1d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x7ffffffffffffffe # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
bgeu x1, x14, some_label_for_btype_38558875359161126450 # perform operation 
addi x0, x1, 1
some_label_for_btype_38558875359161126450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x8000000000000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
bgeu x1, x14, some_label_for_btype_38558875359161126451 # perform operation 
addi x0, x1, 1
some_label_for_btype_38558875359161126451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x7, 0x914922a215f35d75 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bgeu x27, x22, some_label_for_btype_2797300250731423510 # perform operation 
addi x0, x1, 1
some_label_for_btype_2797300250731423510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bgeu x27, x22, some_label_for_btype_2797300250731423511 # perform operation 
addi x0, x1, 1
some_label_for_btype_2797300250731423511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x26, 0xe04384a7f9faa586 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bgeu x14, x10, some_label_for_btype_143945622780589689270 # perform operation 
addi x0, x1, 1
some_label_for_btype_143945622780589689270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bgeu x14, x10, some_label_for_btype_143945622780589689271 # perform operation 
addi x0, x1, 1
some_label_for_btype_143945622780589689271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x30, 0x00b619715fd5ed7b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x7ffffffffffffffe # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
bgeu x20, x4, some_label_for_btype_80900074663885407420 # perform operation 
addi x0, x1, 1
some_label_for_btype_80900074663885407420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xffffffffffffffff # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
bgeu x20, x4, some_label_for_btype_80900074663885407421 # perform operation 
addi x0, x1, 1
some_label_for_btype_80900074663885407421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x20, 0x8a90f58a01c30022 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7ffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
bgeu x29, x13, some_label_for_btype_93719919917346401560 # perform operation 
addi x0, x1, 1
some_label_for_btype_93719919917346401560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xfffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
bgeu x29, x13, some_label_for_btype_93719919917346401561 # perform operation 
addi x0, x1, 1
some_label_for_btype_93719919917346401561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x9, 0xc334dff01d5f8827 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x7ffffffffffffffe # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
bgeu x2, x20, some_label_for_btype_10053969836498171390 # perform operation 
addi x0, x1, 1
some_label_for_btype_10053969836498171390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
bgeu x2, x20, some_label_for_btype_10053969836498171391 # perform operation 
addi x0, x1, 1
some_label_for_btype_10053969836498171391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xdf1908ab58802d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x7ffffffffffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x7, x19, some_label_for_btype_38540772701381250030 # perform operation 
addi x0, x1, 1
some_label_for_btype_38540772701381250030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x7, x19, some_label_for_btype_38540772701381250031 # perform operation 
addi x0, x1, 1
some_label_for_btype_38540772701381250031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x21, 0x4f81fd740d332c54 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7ffffffffffffffe # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bgeu x11, x31, some_label_for_btype_11211514113467149890 # perform operation 
addi x0, x1, 1
some_label_for_btype_11211514113467149890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x5555555555555555 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bgeu x11, x31, some_label_for_btype_11211514113467149891 # perform operation 
addi x0, x1, 1
some_label_for_btype_11211514113467149891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x15, 0xf43f63b671eaa219 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7ffffffffffffffe # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bgeu x17, x23, some_label_for_btype_31344747794805143710 # perform operation 
addi x0, x1, 1
some_label_for_btype_31344747794805143710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bgeu x17, x23, some_label_for_btype_31344747794805143711 # perform operation 
addi x0, x1, 1
some_label_for_btype_31344747794805143711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x30, 0x267cd90a363d5acd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7ffffffffffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
bgeu x24, x27, some_label_for_btype_132319789925807579240 # perform operation 
addi x0, x1, 1
some_label_for_btype_132319789925807579240:
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
bgeu x24, x27, some_label_for_btype_132319789925807579241 # perform operation 
addi x0, x1, 1
some_label_for_btype_132319789925807579241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x6, 0xe6a8df42760c2e94 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
bgeu x27, x16, some_label_for_btype_160749697815059628570 # perform operation 
addi x0, x1, 1
some_label_for_btype_160749697815059628570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
bgeu x27, x16, some_label_for_btype_160749697815059628571 # perform operation 
addi x0, x1, 1
some_label_for_btype_160749697815059628571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x26, 0xcc175ce74316c006 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
bgeu x24, x31, some_label_for_btype_132848985380078607410 # perform operation 
addi x0, x1, 1
some_label_for_btype_132848985380078607410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x0000000100000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
bgeu x24, x31, some_label_for_btype_132848985380078607411 # perform operation 
addi x0, x1, 1
some_label_for_btype_132848985380078607411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x7, 0x2aa7cdc2d38ab587 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bgeu x4, x26, some_label_for_btype_38963038933695058120 # perform operation 
addi x0, x1, 1
some_label_for_btype_38963038933695058120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bgeu x4, x26, some_label_for_btype_38963038933695058121 # perform operation 
addi x0, x1, 1
some_label_for_btype_38963038933695058121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x29, 0x2e6466c1d4972972 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
bgeu x28, x12, some_label_for_btype_89802508871255141490 # perform operation 
addi x0, x1, 1
some_label_for_btype_89802508871255141490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
bgeu x28, x12, some_label_for_btype_89802508871255141491 # perform operation 
addi x0, x1, 1
some_label_for_btype_89802508871255141491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x20, 0x7be4146fc400bf25 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
bgeu x26, x19, some_label_for_btype_127261419636777492320 # perform operation 
addi x0, x1, 1
some_label_for_btype_127261419636777492320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
bgeu x26, x19, some_label_for_btype_127261419636777492321 # perform operation 
addi x0, x1, 1
some_label_for_btype_127261419636777492321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x21, 0x1b90d063ac299e76 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xffffffffffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bgeu x14, x16, some_label_for_btype_166007057000461502330 # perform operation 
addi x0, x1, 1
some_label_for_btype_166007057000461502330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bgeu x14, x16, some_label_for_btype_166007057000461502331 # perform operation 
addi x0, x1, 1
some_label_for_btype_166007057000461502331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x28, 0x412e9eee0aad6af8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xffffffffffffffff # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
bgeu x4, x29, some_label_for_btype_178462807982068371000 # perform operation 
addi x0, x1, 1
some_label_for_btype_178462807982068371000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
bgeu x4, x29, some_label_for_btype_178462807982068371001 # perform operation 
addi x0, x1, 1
some_label_for_btype_178462807982068371001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x10, 0x61af3a381525634d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xffffffffffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
bgeu x13, x16, some_label_for_btype_51447193196726155690 # perform operation 
addi x0, x1, 1
some_label_for_btype_51447193196726155690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x7fffffffffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
bgeu x13, x16, some_label_for_btype_51447193196726155691 # perform operation 
addi x0, x1, 1
some_label_for_btype_51447193196726155691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x17, 0xb9cb6814609128e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xffffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bgeu x20, x5, some_label_for_btype_139927004061629801670 # perform operation 
addi x0, x1, 1
some_label_for_btype_139927004061629801670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x7ffffffffffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bgeu x20, x5, some_label_for_btype_139927004061629801671 # perform operation 
addi x0, x1, 1
some_label_for_btype_139927004061629801671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x24, 0x3b0a53a7f9888ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
bgeu x16, x2, some_label_for_btype_108276702369681022200 # perform operation 
addi x0, x1, 1
some_label_for_btype_108276702369681022200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
bgeu x16, x2, some_label_for_btype_108276702369681022201 # perform operation 
addi x0, x1, 1
some_label_for_btype_108276702369681022201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x2, 0xa515e9dbd413324f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xffffffffffffffff # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
bgeu x29, x8, some_label_for_btype_134716947001701126960 # perform operation 
addi x0, x1, 1
some_label_for_btype_134716947001701126960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xfffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
bgeu x29, x8, some_label_for_btype_134716947001701126961 # perform operation 
addi x0, x1, 1
some_label_for_btype_134716947001701126961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x20, 0x3471a1f0f4d0819c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xffffffffffffffff # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
bgeu x1, x11, some_label_for_btype_42989621618791773850 # perform operation 
addi x0, x1, 1
some_label_for_btype_42989621618791773850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
bgeu x1, x11, some_label_for_btype_42989621618791773851 # perform operation 
addi x0, x1, 1
some_label_for_btype_42989621618791773851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x89b16de8b62b379c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xffffffffffffffff # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x21, x6, some_label_for_btype_162879646917874053300 # perform operation 
addi x0, x1, 1
some_label_for_btype_162879646917874053300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x21, x6, some_label_for_btype_162879646917874053301 # perform operation 
addi x0, x1, 1
some_label_for_btype_162879646917874053301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x13, 0x24806c18ca89cd10 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xffffffffffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bgeu x7, x9, some_label_for_btype_175816544552103777650 # perform operation 
addi x0, x1, 1
some_label_for_btype_175816544552103777650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x5555555555555555 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bgeu x7, x9, some_label_for_btype_175816544552103777651 # perform operation 
addi x0, x1, 1
some_label_for_btype_175816544552103777651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x7, 0xe25eb34e2cefb8db # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xffffffffffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
bgeu x12, x19, some_label_for_btype_89547576908889415390 # perform operation 
addi x0, x1, 1
some_label_for_btype_89547576908889415390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000000ffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
bgeu x12, x19, some_label_for_btype_89547576908889415391 # perform operation 
addi x0, x1, 1
some_label_for_btype_89547576908889415391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x4, 0x169ba24f9e2eabf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xffffffffffffffff # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
bgeu x29, x9, some_label_for_btype_147586177450141416240 # perform operation 
addi x0, x1, 1
some_label_for_btype_147586177450141416240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
bgeu x29, x9, some_label_for_btype_147586177450141416241 # perform operation 
addi x0, x1, 1
some_label_for_btype_147586177450141416241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x9, 0x2233e948031c0dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
bgeu x1, x25, some_label_for_btype_95522572358335060600 # perform operation 
addi x0, x1, 1
some_label_for_btype_95522572358335060600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000100000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
bgeu x1, x25, some_label_for_btype_95522572358335060601 # perform operation 
addi x0, x1, 1
some_label_for_btype_95522572358335060601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x7, 0xf33024947f2eac07 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
bgeu x31, x12, some_label_for_btype_152706356785125506540 # perform operation 
addi x0, x1, 1
some_label_for_btype_152706356785125506540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0000000100000001 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
bgeu x31, x12, some_label_for_btype_152706356785125506541 # perform operation 
addi x0, x1, 1
some_label_for_btype_152706356785125506541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x24, 0x5525dd9221c9d0d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bgeu x1, x2, some_label_for_btype_75035013131836939970 # perform operation 
addi x0, x1, 1
some_label_for_btype_75035013131836939970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bgeu x1, x2, some_label_for_btype_75035013131836939971 # perform operation 
addi x0, x1, 1
some_label_for_btype_75035013131836939971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x4, 0x832d99b6e92f69e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bgeu x31, x16, some_label_for_btype_182685775740187157200 # perform operation 
addi x0, x1, 1
some_label_for_btype_182685775740187157200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0000000000000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bgeu x31, x16, some_label_for_btype_182685775740187157201 # perform operation 
addi x0, x1, 1
some_label_for_btype_182685775740187157201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x6, 0x5a801538a75a47bc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
bgeu x1, x3, some_label_for_btype_15054708022153844270 # perform operation 
addi x0, x1, 1
some_label_for_btype_15054708022153844270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
bgeu x1, x3, some_label_for_btype_15054708022153844271 # perform operation 
addi x0, x1, 1
some_label_for_btype_15054708022153844271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x16, 0x4ee5e482e8a03895 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xfffffffffffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bgeu x19, x20, some_label_for_btype_153757503704220860590 # perform operation 
addi x0, x1, 1
some_label_for_btype_153757503704220860590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x8000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bgeu x19, x20, some_label_for_btype_153757503704220860591 # perform operation 
addi x0, x1, 1
some_label_for_btype_153757503704220860591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x24, 0x47fa9decbb869800 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xfffffffffffffffe # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
bgeu x23, x12, some_label_for_btype_161240357545969243110 # perform operation 
addi x0, x1, 1
some_label_for_btype_161240357545969243110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x8000000000000001 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
bgeu x23, x12, some_label_for_btype_161240357545969243111 # perform operation 
addi x0, x1, 1
some_label_for_btype_161240357545969243111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x27, 0xf94e779694e5978a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xfffffffffffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bgeu x12, x14, some_label_for_btype_131933614901772362560 # perform operation 
addi x0, x1, 1
some_label_for_btype_131933614901772362560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7fffffffffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bgeu x12, x14, some_label_for_btype_131933614901772362561 # perform operation 
addi x0, x1, 1
some_label_for_btype_131933614901772362561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0x3810273484fa70ae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xfffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
bgeu x24, x17, some_label_for_btype_124728158730133636040 # perform operation 
addi x0, x1, 1
some_label_for_btype_124728158730133636040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x7ffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
bgeu x24, x17, some_label_for_btype_124728158730133636041 # perform operation 
addi x0, x1, 1
some_label_for_btype_124728158730133636041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0x99e44fdc8119016c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xfffffffffffffffe # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bgeu x6, x28, some_label_for_btype_70655867368967034990 # perform operation 
addi x0, x1, 1
some_label_for_btype_70655867368967034990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xffffffffffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bgeu x6, x28, some_label_for_btype_70655867368967034991 # perform operation 
addi x0, x1, 1
some_label_for_btype_70655867368967034991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x14, 0x7b665e99e2c1cda7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bgeu x2, x11, some_label_for_btype_164691675724335583380 # perform operation 
addi x0, x1, 1
some_label_for_btype_164691675724335583380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bgeu x2, x11, some_label_for_btype_164691675724335583381 # perform operation 
addi x0, x1, 1
some_label_for_btype_164691675724335583381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x21, 0x694f93b84de9f7c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xfffffffffffffffe # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
bgeu x19, x27, some_label_for_btype_46664782972187225610 # perform operation 
addi x0, x1, 1
some_label_for_btype_46664782972187225610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
bgeu x19, x27, some_label_for_btype_46664782972187225611 # perform operation 
addi x0, x1, 1
some_label_for_btype_46664782972187225611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x6b74b1681a7c3993 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xfffffffffffffffe # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x31, x7, some_label_for_btype_24854579847987151510 # perform operation 
addi x0, x1, 1
some_label_for_btype_24854579847987151510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x31, x7, some_label_for_btype_24854579847987151511 # perform operation 
addi x0, x1, 1
some_label_for_btype_24854579847987151511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x31, 0xaaace3709bfee990 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xfffffffffffffffe # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
bgeu x4, x28, some_label_for_btype_161348577967798868350 # perform operation 
addi x0, x1, 1
some_label_for_btype_161348577967798868350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x5555555555555555 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
bgeu x4, x28, some_label_for_btype_161348577967798868351 # perform operation 
addi x0, x1, 1
some_label_for_btype_161348577967798868351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x12, 0xc66a091507ba81d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xfffffffffffffffe # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bgeu x11, x30, some_label_for_btype_31601478816324715170 # perform operation 
addi x0, x1, 1
some_label_for_btype_31601478816324715170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bgeu x11, x30, some_label_for_btype_31601478816324715171 # perform operation 
addi x0, x1, 1
some_label_for_btype_31601478816324715171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x18, 0x2dc2d94e30a283f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xfffffffffffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bgeu x7, x3, some_label_for_btype_130386863610827687990 # perform operation 
addi x0, x1, 1
some_label_for_btype_130386863610827687990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bgeu x7, x3, some_label_for_btype_130386863610827687991 # perform operation 
addi x0, x1, 1
some_label_for_btype_130386863610827687991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x16, 0x588df02c7116b367 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bgeu x17, x7, some_label_for_btype_49725090941345328090 # perform operation 
addi x0, x1, 1
some_label_for_btype_49725090941345328090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x0000000100000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bgeu x17, x7, some_label_for_btype_49725090941345328091 # perform operation 
addi x0, x1, 1
some_label_for_btype_49725090941345328091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x16, 0xb55e5c330ebb014a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
bgeu x3, x6, some_label_for_btype_434006764356924160 # perform operation 
addi x0, x1, 1
some_label_for_btype_434006764356924160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x0000000100000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
bgeu x3, x6, some_label_for_btype_434006764356924161 # perform operation 
addi x0, x1, 1
some_label_for_btype_434006764356924161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x23, 0xaba6112854d40693 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
bgeu x7, x25, some_label_for_btype_38431638562411729110 # perform operation 
addi x0, x1, 1
some_label_for_btype_38431638562411729110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
bgeu x7, x25, some_label_for_btype_38431638562411729111 # perform operation 
addi x0, x1, 1
some_label_for_btype_38431638562411729111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x3, 0x04f6b8aed2068076 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
bgeu x24, x19, some_label_for_btype_2887423903197307960 # perform operation 
addi x0, x1, 1
some_label_for_btype_2887423903197307960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
bgeu x24, x19, some_label_for_btype_2887423903197307961 # perform operation 
addi x0, x1, 1
some_label_for_btype_2887423903197307961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x2, 0x82130814d319d10e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
bgeu x30, x23, some_label_for_btype_27686404156513335650 # perform operation 
addi x0, x1, 1
some_label_for_btype_27686404156513335650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
bgeu x30, x23, some_label_for_btype_27686404156513335651 # perform operation 
addi x0, x1, 1
some_label_for_btype_27686404156513335651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x17, 0x2f93ad9840c80dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x5bbc887763ae86f7 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
bgeu x3, x22, some_label_for_btype_31156132301507149110 # perform operation 
addi x0, x1, 1
some_label_for_btype_31156132301507149110:
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
bgeu x3, x22, some_label_for_btype_31156132301507149111 # perform operation 
addi x0, x1, 1
some_label_for_btype_31156132301507149111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x27, 0x7092d39d80aa19ab # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bgeu x15, x19, some_label_for_btype_107025547719544439530 # perform operation 
addi x0, x1, 1
some_label_for_btype_107025547719544439530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x8000000000000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bgeu x15, x19, some_label_for_btype_107025547719544439531 # perform operation 
addi x0, x1, 1
some_label_for_btype_107025547719544439531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x11, 0x051f739f8dab827e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bgeu x8, x6, some_label_for_btype_124518047909626711970 # perform operation 
addi x0, x1, 1
some_label_for_btype_124518047909626711970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x7fffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bgeu x8, x6, some_label_for_btype_124518047909626711971 # perform operation 
addi x0, x1, 1
some_label_for_btype_124518047909626711971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x4, 0x9ad8794c39eaa255 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
bgeu x1, x19, some_label_for_btype_132229387377399884280 # perform operation 
addi x0, x1, 1
some_label_for_btype_132229387377399884280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x7ffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
bgeu x1, x19, some_label_for_btype_132229387377399884281 # perform operation 
addi x0, x1, 1
some_label_for_btype_132229387377399884281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x5, 0x8c936ee07edfb21f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
bgeu x10, x21, some_label_for_btype_49607095918823137950 # perform operation 
addi x0, x1, 1
some_label_for_btype_49607095918823137950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xffffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
bgeu x10, x21, some_label_for_btype_49607095918823137951 # perform operation 
addi x0, x1, 1
some_label_for_btype_49607095918823137951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x20, 0xcf15c69f13d4596a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
bgeu x11, x18, some_label_for_btype_119083342890165667190 # perform operation 
addi x0, x1, 1
some_label_for_btype_119083342890165667190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xfffffffffffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
bgeu x11, x18, some_label_for_btype_119083342890165667191 # perform operation 
addi x0, x1, 1
some_label_for_btype_119083342890165667191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x25, 0x8fd811422033e354 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
bgeu x16, x15, some_label_for_btype_19801306985723921080 # perform operation 
addi x0, x1, 1
some_label_for_btype_19801306985723921080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
bgeu x16, x15, some_label_for_btype_19801306985723921081 # perform operation 
addi x0, x1, 1
some_label_for_btype_19801306985723921081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x8f79df5198907623 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x17, x15, some_label_for_btype_156087048131612629830 # perform operation 
addi x0, x1, 1
some_label_for_btype_156087048131612629830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x17, x15, some_label_for_btype_156087048131612629831 # perform operation 
addi x0, x1, 1
some_label_for_btype_156087048131612629831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x4, 0x5f36c7c8c7784a59 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bgeu x5, x31, some_label_for_btype_81997303105413372300 # perform operation 
addi x0, x1, 1
some_label_for_btype_81997303105413372300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x5555555555555555 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bgeu x5, x31, some_label_for_btype_81997303105413372301 # perform operation 
addi x0, x1, 1
some_label_for_btype_81997303105413372301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x17, 0x17fc5bb3250cff80 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bgeu x10, x9, some_label_for_btype_128167326058536680200 # perform operation 
addi x0, x1, 1
some_label_for_btype_128167326058536680200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x00000000ffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bgeu x10, x9, some_label_for_btype_128167326058536680201 # perform operation 
addi x0, x1, 1
some_label_for_btype_128167326058536680201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x26, 0xdfdafbe2d78e3382 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
bgeu x25, x21, some_label_for_btype_43364931255535526430 # perform operation 
addi x0, x1, 1
some_label_for_btype_43364931255535526430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x00000000fffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
bgeu x25, x21, some_label_for_btype_43364931255535526431 # perform operation 
addi x0, x1, 1
some_label_for_btype_43364931255535526431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x18, 0x798a53d6a48e2d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
bgeu x1, x4, some_label_for_btype_24833092880928270810 # perform operation 
addi x0, x1, 1
some_label_for_btype_24833092880928270810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000100000000 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
bgeu x1, x4, some_label_for_btype_24833092880928270811 # perform operation 
addi x0, x1, 1
some_label_for_btype_24833092880928270811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x27, 0x283cad78242b9d37 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
bgeu x19, x20, some_label_for_btype_21599098768631460450 # perform operation 
addi x0, x1, 1
some_label_for_btype_21599098768631460450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
bgeu x19, x20, some_label_for_btype_21599098768631460451 # perform operation 
addi x0, x1, 1
some_label_for_btype_21599098768631460451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x16, 0x21b200bc78bf4386 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
bgeu x25, x19, some_label_for_btype_12960613219931267630 # perform operation 
addi x0, x1, 1
some_label_for_btype_12960613219931267630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
bgeu x25, x19, some_label_for_btype_12960613219931267631 # perform operation 
addi x0, x1, 1
some_label_for_btype_12960613219931267631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x14, 0x6bd1513969cde42b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
bgeu x22, x18, some_label_for_btype_148351700691920663600 # perform operation 
addi x0, x1, 1
some_label_for_btype_148351700691920663600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
bgeu x22, x18, some_label_for_btype_148351700691920663601 # perform operation 
addi x0, x1, 1
some_label_for_btype_148351700691920663601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x28, 0xff21736f6ec670d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
bgeu x22, x12, some_label_for_btype_5166743144363724370 # perform operation 
addi x0, x1, 1
some_label_for_btype_5166743144363724370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
bgeu x22, x12, some_label_for_btype_5166743144363724371 # perform operation 
addi x0, x1, 1
some_label_for_btype_5166743144363724371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x14, 0x7d7a37c7183e5771 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
bgeu x7, x27, some_label_for_btype_116911679309978512140 # perform operation 
addi x0, x1, 1
some_label_for_btype_116911679309978512140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x8000000000000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
bgeu x7, x27, some_label_for_btype_116911679309978512141 # perform operation 
addi x0, x1, 1
some_label_for_btype_116911679309978512141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x24, 0xd74a601434921eac # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
bgeu x31, x14, some_label_for_btype_746478754855846800 # perform operation 
addi x0, x1, 1
some_label_for_btype_746478754855846800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x8000000000000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
bgeu x31, x14, some_label_for_btype_746478754855846801 # perform operation 
addi x0, x1, 1
some_label_for_btype_746478754855846801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x22, 0x120133bf445281a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bgeu x20, x14, some_label_for_btype_77313286417558116910 # perform operation 
addi x0, x1, 1
some_label_for_btype_77313286417558116910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x7fffffffffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bgeu x20, x14, some_label_for_btype_77313286417558116911 # perform operation 
addi x0, x1, 1
some_label_for_btype_77313286417558116911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x3, 0x4fedbb4b33be30e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
bgeu x11, x4, some_label_for_btype_153985826737319834790 # perform operation 
addi x0, x1, 1
some_label_for_btype_153985826737319834790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x7ffffffffffffffe # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
bgeu x11, x4, some_label_for_btype_153985826737319834791 # perform operation 
addi x0, x1, 1
some_label_for_btype_153985826737319834791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x26, 0xb24044ecbe102758 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
bgeu x11, x4, some_label_for_btype_171327236642054095470 # perform operation 
addi x0, x1, 1
some_label_for_btype_171327236642054095470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xffffffffffffffff # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
bgeu x11, x4, some_label_for_btype_171327236642054095471 # perform operation 
addi x0, x1, 1
some_label_for_btype_171327236642054095471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x12, 0x6a7d3dbdaf60cabc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
bgeu x6, x4, some_label_for_btype_57000763546387899470 # perform operation 
addi x0, x1, 1
some_label_for_btype_57000763546387899470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xfffffffffffffffe # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
bgeu x6, x4, some_label_for_btype_57000763546387899471 # perform operation 
addi x0, x1, 1
some_label_for_btype_57000763546387899471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x25, 0xf112812101ecc944 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
bgeu x24, x27, some_label_for_btype_106813137923393136590 # perform operation 
addi x0, x1, 1
some_label_for_btype_106813137923393136590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
bgeu x24, x27, some_label_for_btype_106813137923393136591 # perform operation 
addi x0, x1, 1
some_label_for_btype_106813137923393136591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x4dada2426e1eb39d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x13, x23, some_label_for_btype_75281905011912242350 # perform operation 
addi x0, x1, 1
some_label_for_btype_75281905011912242350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x13, x23, some_label_for_btype_75281905011912242351 # perform operation 
addi x0, x1, 1
some_label_for_btype_75281905011912242351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x30, 0x8d33c9fe8c6d2808 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bgeu x24, x11, some_label_for_btype_54140679792380055130 # perform operation 
addi x0, x1, 1
some_label_for_btype_54140679792380055130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bgeu x24, x11, some_label_for_btype_54140679792380055131 # perform operation 
addi x0, x1, 1
some_label_for_btype_54140679792380055131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x8, 0x7cf955596a307b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
bgeu x16, x25, some_label_for_btype_44617965558120528630 # perform operation 
addi x0, x1, 1
some_label_for_btype_44617965558120528630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
bgeu x16, x25, some_label_for_btype_44617965558120528631 # perform operation 
addi x0, x1, 1
some_label_for_btype_44617965558120528631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x4, 0xf1bb03ffbf046384 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
bgeu x8, x26, some_label_for_btype_133715777834208322040 # perform operation 
addi x0, x1, 1
some_label_for_btype_133715777834208322040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x00000000fffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
bgeu x8, x26, some_label_for_btype_133715777834208322041 # perform operation 
addi x0, x1, 1
some_label_for_btype_133715777834208322041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x21, 0xa823124cc51e29ad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
bgeu x29, x16, some_label_for_btype_98884299107561818530 # perform operation 
addi x0, x1, 1
some_label_for_btype_98884299107561818530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
bgeu x29, x16, some_label_for_btype_98884299107561818531 # perform operation 
addi x0, x1, 1
some_label_for_btype_98884299107561818531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x1, 0xe1838be6c52a1ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bgeu x13, x27, some_label_for_btype_45006050138713800980 # perform operation 
addi x0, x1, 1
some_label_for_btype_45006050138713800980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bgeu x13, x27, some_label_for_btype_45006050138713800981 # perform operation 
addi x0, x1, 1
some_label_for_btype_45006050138713800981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x29, 0xa4315ad482cca866 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x5555555555555555 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bgeu x31, x8, some_label_for_btype_145168899557017870740 # perform operation 
addi x0, x1, 1
some_label_for_btype_145168899557017870740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bgeu x31, x8, some_label_for_btype_145168899557017870741 # perform operation 
addi x0, x1, 1
some_label_for_btype_145168899557017870741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x12, 0xa5457a2d261aff60 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x5555555555555555 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
bgeu x24, x17, some_label_for_btype_155301304373390032830 # perform operation 
addi x0, x1, 1
some_label_for_btype_155301304373390032830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
bgeu x24, x17, some_label_for_btype_155301304373390032831 # perform operation 
addi x0, x1, 1
some_label_for_btype_155301304373390032831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x15, 0x5ac078e5273055cd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x5555555555555555 # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
bgeu x20, x4, some_label_for_btype_6608214548992717770 # perform operation 
addi x0, x1, 1
some_label_for_btype_6608214548992717770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x0000000000000002 # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
bgeu x20, x4, some_label_for_btype_6608214548992717771 # perform operation 
addi x0, x1, 1
some_label_for_btype_6608214548992717771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x7, 0x46f07d568560b510 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x5555555555555555 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
bgeu x9, x11, some_label_for_btype_9290476947072324040 # perform operation 
addi x0, x1, 1
some_label_for_btype_9290476947072324040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x8000000000000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
bgeu x9, x11, some_label_for_btype_9290476947072324041 # perform operation 
addi x0, x1, 1
some_label_for_btype_9290476947072324041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x4, 0x7e3bdb4b24b6d7a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x5555555555555555 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
bgeu x12, x22, some_label_for_btype_71559838783066121200 # perform operation 
addi x0, x1, 1
some_label_for_btype_71559838783066121200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x8000000000000001 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
bgeu x12, x22, some_label_for_btype_71559838783066121201 # perform operation 
addi x0, x1, 1
some_label_for_btype_71559838783066121201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x22, 0xb600d45967813431 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x5555555555555555 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
bgeu x16, x15, some_label_for_btype_171934236525846769520 # perform operation 
addi x0, x1, 1
some_label_for_btype_171934236525846769520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x7fffffffffffffff # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
bgeu x16, x15, some_label_for_btype_171934236525846769521 # perform operation 
addi x0, x1, 1
some_label_for_btype_171934236525846769521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x29, 0x6320cfc322aba267 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x5555555555555555 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
bgeu x19, x20, some_label_for_btype_141753467663336743120 # perform operation 
addi x0, x1, 1
some_label_for_btype_141753467663336743120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x7ffffffffffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
bgeu x19, x20, some_label_for_btype_141753467663336743121 # perform operation 
addi x0, x1, 1
some_label_for_btype_141753467663336743121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x16, 0x5febf20ea53bd510 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x5555555555555555 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
bgeu x11, x5, some_label_for_btype_21392156441070757240 # perform operation 
addi x0, x1, 1
some_label_for_btype_21392156441070757240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xffffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
bgeu x11, x5, some_label_for_btype_21392156441070757241 # perform operation 
addi x0, x1, 1
some_label_for_btype_21392156441070757241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x31, 0xa016da6306ed304d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x5555555555555555 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
bgeu x6, x5, some_label_for_btype_150895915370085611830 # perform operation 
addi x0, x1, 1
some_label_for_btype_150895915370085611830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xfffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
bgeu x6, x5, some_label_for_btype_150895915370085611831 # perform operation 
addi x0, x1, 1
some_label_for_btype_150895915370085611831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x10, 0x153af2a8d9c9cc31 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5555555555555555 # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
bgeu x5, x27, some_label_for_btype_140731530653009862520 # perform operation 
addi x0, x1, 1
some_label_for_btype_140731530653009862520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
bgeu x5, x27, some_label_for_btype_140731530653009862521 # perform operation 
addi x0, x1, 1
some_label_for_btype_140731530653009862521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0xd5c59803ac742c89 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x5555555555555555 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x11, x16, some_label_for_btype_106951059171944784640 # perform operation 
addi x0, x1, 1
some_label_for_btype_106951059171944784640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x11, x16, some_label_for_btype_106951059171944784641 # perform operation 
addi x0, x1, 1
some_label_for_btype_106951059171944784641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x11, 0x2fa12a7a6c7f8c08 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x5555555555555555 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
bgeu x31, x16, some_label_for_btype_2063761444212310560 # perform operation 
addi x0, x1, 1
some_label_for_btype_2063761444212310560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x5555555555555555 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
bgeu x31, x16, some_label_for_btype_2063761444212310561 # perform operation 
addi x0, x1, 1
some_label_for_btype_2063761444212310561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x3, 0xbf6e38f347b5e889 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5555555555555555 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
bgeu x5, x7, some_label_for_btype_2433488966656510060 # perform operation 
addi x0, x1, 1
some_label_for_btype_2433488966656510060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x00000000ffffffff # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
bgeu x5, x7, some_label_for_btype_2433488966656510061 # perform operation 
addi x0, x1, 1
some_label_for_btype_2433488966656510061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x6, 0xaa3bc71fdaa96f1d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x5555555555555555 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bgeu x19, x8, some_label_for_btype_76243713682729072900 # perform operation 
addi x0, x1, 1
some_label_for_btype_76243713682729072900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000000fffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bgeu x19, x8, some_label_for_btype_76243713682729072901 # perform operation 
addi x0, x1, 1
some_label_for_btype_76243713682729072901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x6, 0x5c2d69a5cc7a1114 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x5555555555555555 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
bgeu x20, x28, some_label_for_btype_125013081840901678670 # perform operation 
addi x0, x1, 1
some_label_for_btype_125013081840901678670:
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
bgeu x20, x28, some_label_for_btype_125013081840901678671 # perform operation 
addi x0, x1, 1
some_label_for_btype_125013081840901678671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x30, 0x2b80675b90a73294 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x5555555555555555 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
bgeu x27, x4, some_label_for_btype_43223133833718968550 # perform operation 
addi x0, x1, 1
some_label_for_btype_43223133833718968550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000100000001 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
bgeu x27, x4, some_label_for_btype_43223133833718968551 # perform operation 
addi x0, x1, 1
some_label_for_btype_43223133833718968551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x18, 0x30e264e5b1bce66b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
bgeu x31, x11, some_label_for_btype_32271559066851247530 # perform operation 
addi x0, x1, 1
some_label_for_btype_32271559066851247530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0000000000000000 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
bgeu x31, x11, some_label_for_btype_32271559066851247531 # perform operation 
addi x0, x1, 1
some_label_for_btype_32271559066851247531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x14, 0xb43a76f5782b791b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000ffffffff # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bgeu x28, x25, some_label_for_btype_123593220679176325930 # perform operation 
addi x0, x1, 1
some_label_for_btype_123593220679176325930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bgeu x28, x25, some_label_for_btype_123593220679176325931 # perform operation 
addi x0, x1, 1
some_label_for_btype_123593220679176325931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x12, 0xaf4be7de0b8c755b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
bgeu x4, x23, some_label_for_btype_182491536291726751440 # perform operation 
addi x0, x1, 1
some_label_for_btype_182491536291726751440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
bgeu x4, x23, some_label_for_btype_182491536291726751441 # perform operation 
addi x0, x1, 1
some_label_for_btype_182491536291726751441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x5, 0x560bf678db3945ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x00000000ffffffff # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
bgeu x25, x3, some_label_for_btype_24417736909272206260 # perform operation 
addi x0, x1, 1
some_label_for_btype_24417736909272206260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
bgeu x25, x3, some_label_for_btype_24417736909272206261 # perform operation 
addi x0, x1, 1
some_label_for_btype_24417736909272206261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x4, 0xb10d5b566f0b0998 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x00000000ffffffff # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
bgeu x23, x5, some_label_for_btype_84295431346966452480 # perform operation 
addi x0, x1, 1
some_label_for_btype_84295431346966452480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
bgeu x23, x5, some_label_for_btype_84295431346966452481 # perform operation 
addi x0, x1, 1
some_label_for_btype_84295431346966452481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x18, 0xe7f08bab26b9c2b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x00000000ffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
bgeu x23, x19, some_label_for_btype_11464383048477701970 # perform operation 
addi x0, x1, 1
some_label_for_btype_11464383048477701970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x7fffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
bgeu x23, x19, some_label_for_btype_11464383048477701971 # perform operation 
addi x0, x1, 1
some_label_for_btype_11464383048477701971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x29, 0x2fc323c9dc69214f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000ffffffff # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bgeu x28, x22, some_label_for_btype_29423416318870306580 # perform operation 
addi x0, x1, 1
some_label_for_btype_29423416318870306580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bgeu x28, x22, some_label_for_btype_29423416318870306581 # perform operation 
addi x0, x1, 1
some_label_for_btype_29423416318870306581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x14, 0xa729c8bff64dcf8a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x00000000ffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
bgeu x24, x1, some_label_for_btype_159844356758339572410 # perform operation 
addi x0, x1, 1
some_label_for_btype_159844356758339572410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
bgeu x24, x1, some_label_for_btype_159844356758339572411 # perform operation 
addi x0, x1, 1
some_label_for_btype_159844356758339572411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x7, 0x0f80e0f29b2fe2fe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x00000000ffffffff # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bgeu x10, x22, some_label_for_btype_73368125321156263510 # perform operation 
addi x0, x1, 1
some_label_for_btype_73368125321156263510:
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
bgeu x10, x22, some_label_for_btype_73368125321156263511 # perform operation 
addi x0, x1, 1
some_label_for_btype_73368125321156263511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x10, 0x55e7e2fdabf4d5ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000000ffffffff # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
bgeu x13, x2, some_label_for_btype_75129594493141397150 # perform operation 
addi x0, x1, 1
some_label_for_btype_75129594493141397150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
bgeu x13, x2, some_label_for_btype_75129594493141397151 # perform operation 
addi x0, x1, 1
some_label_for_btype_75129594493141397151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xa3b904d961988b34 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000000ffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x31, x29, some_label_for_btype_14436584178062714530 # perform operation 
addi x0, x1, 1
some_label_for_btype_14436584178062714530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x31, x29, some_label_for_btype_14436584178062714531 # perform operation 
addi x0, x1, 1
some_label_for_btype_14436584178062714531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x16, 0x85b3a73f0c4204d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000000ffffffff # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
bgeu x17, x4, some_label_for_btype_84957281687609238180 # perform operation 
addi x0, x1, 1
some_label_for_btype_84957281687609238180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x5555555555555555 # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
bgeu x17, x4, some_label_for_btype_84957281687609238181 # perform operation 
addi x0, x1, 1
some_label_for_btype_84957281687609238181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x28, 0x45db240ae6a8a0ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000000ffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
bgeu x19, x16, some_label_for_btype_78557061460214252150 # perform operation 
addi x0, x1, 1
some_label_for_btype_78557061460214252150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000000ffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
bgeu x19, x16, some_label_for_btype_78557061460214252151 # perform operation 
addi x0, x1, 1
some_label_for_btype_78557061460214252151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x8, 0xc49257db2faabea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000000ffffffff # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bgeu x30, x16, some_label_for_btype_150064800257061353050 # perform operation 
addi x0, x1, 1
some_label_for_btype_150064800257061353050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bgeu x30, x16, some_label_for_btype_150064800257061353051 # perform operation 
addi x0, x1, 1
some_label_for_btype_150064800257061353051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x17, 0x1133a53ba9ac08f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bgeu x10, x8, some_label_for_btype_108598099927074865560 # perform operation 
addi x0, x1, 1
some_label_for_btype_108598099927074865560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bgeu x10, x8, some_label_for_btype_108598099927074865561 # perform operation 
addi x0, x1, 1
some_label_for_btype_108598099927074865561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x8, 0x6fbc5d445bf364ba # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
bgeu x2, x16, some_label_for_btype_170466670879581589620 # perform operation 
addi x0, x1, 1
some_label_for_btype_170466670879581589620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
bgeu x2, x16, some_label_for_btype_170466670879581589621 # perform operation 
addi x0, x1, 1
some_label_for_btype_170466670879581589621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x7, 0x9aece3092a8bb082 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
bgeu x30, x5, some_label_for_btype_126696722131225538690 # perform operation 
addi x0, x1, 1
some_label_for_btype_126696722131225538690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
bgeu x30, x5, some_label_for_btype_126696722131225538691 # perform operation 
addi x0, x1, 1
some_label_for_btype_126696722131225538691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x15, 0xd3a130feb1b40598 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bgeu x17, x29, some_label_for_btype_151605692893757436680 # perform operation 
addi x0, x1, 1
some_label_for_btype_151605692893757436680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bgeu x17, x29, some_label_for_btype_151605692893757436681 # perform operation 
addi x0, x1, 1
some_label_for_btype_151605692893757436681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x28, 0x1a980391574c813c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bgeu x4, x21, some_label_for_btype_134252004720171975670 # perform operation 
addi x0, x1, 1
some_label_for_btype_134252004720171975670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bgeu x4, x21, some_label_for_btype_134252004720171975671 # perform operation 
addi x0, x1, 1
some_label_for_btype_134252004720171975671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x11, 0x8ba2ae2303d32d62 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000000fffffffe # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
bgeu x17, x24, some_label_for_btype_132590594533372749380 # perform operation 
addi x0, x1, 1
some_label_for_btype_132590594533372749380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x8000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
bgeu x17, x24, some_label_for_btype_132590594533372749381 # perform operation 
addi x0, x1, 1
some_label_for_btype_132590594533372749381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x11, 0x3f869db492413783 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x00000000fffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bgeu x1, x2, some_label_for_btype_156984506934079133170 # perform operation 
addi x0, x1, 1
some_label_for_btype_156984506934079133170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bgeu x1, x2, some_label_for_btype_156984506934079133171 # perform operation 
addi x0, x1, 1
some_label_for_btype_156984506934079133171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x25, 0xf55bb0c635f97827 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000000fffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
bgeu x2, x1, some_label_for_btype_175614852065006835580 # perform operation 
addi x0, x1, 1
some_label_for_btype_175614852065006835580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x7fffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
bgeu x2, x1, some_label_for_btype_175614852065006835581 # perform operation 
addi x0, x1, 1
some_label_for_btype_175614852065006835581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x12, 0xe1e80decc8eaa708 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x00000000fffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bgeu x23, x10, some_label_for_btype_75942324425759875500 # perform operation 
addi x0, x1, 1
some_label_for_btype_75942324425759875500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bgeu x23, x10, some_label_for_btype_75942324425759875501 # perform operation 
addi x0, x1, 1
some_label_for_btype_75942324425759875501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x1, 0x423b0c3fb70d67c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000000fffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bgeu x17, x16, some_label_for_btype_153285849822014569940 # perform operation 
addi x0, x1, 1
some_label_for_btype_153285849822014569940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bgeu x17, x16, some_label_for_btype_153285849822014569941 # perform operation 
addi x0, x1, 1
some_label_for_btype_153285849822014569941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x6, 0x8a7a93ec99e4a2b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000000fffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
bgeu x13, x28, some_label_for_btype_27354786279685082690 # perform operation 
addi x0, x1, 1
some_label_for_btype_27354786279685082690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xfffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
bgeu x13, x28, some_label_for_btype_27354786279685082691 # perform operation 
addi x0, x1, 1
some_label_for_btype_27354786279685082691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x19, 0xfe2dfb8a48fc9c4f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x00000000fffffffe # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
bgeu x21, x3, some_label_for_btype_129553026409450397810 # perform operation 
addi x0, x1, 1
some_label_for_btype_129553026409450397810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
bgeu x21, x3, some_label_for_btype_129553026409450397811 # perform operation 
addi x0, x1, 1
some_label_for_btype_129553026409450397811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x632b7b461ef4d2e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000000fffffffe # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x18, x1, some_label_for_btype_103277023593600026810 # perform operation 
addi x0, x1, 1
some_label_for_btype_103277023593600026810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x18, x1, some_label_for_btype_103277023593600026811 # perform operation 
addi x0, x1, 1
some_label_for_btype_103277023593600026811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x9, 0x31b4a34c80c2ecea # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000000fffffffe # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
bgeu x13, x23, some_label_for_btype_72690702079356447530 # perform operation 
addi x0, x1, 1
some_label_for_btype_72690702079356447530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
bgeu x13, x23, some_label_for_btype_72690702079356447531 # perform operation 
addi x0, x1, 1
some_label_for_btype_72690702079356447531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x28, 0xf5410fb423b6c2e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x00000000fffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bgeu x8, x31, some_label_for_btype_148767020549377289050 # perform operation 
addi x0, x1, 1
some_label_for_btype_148767020549377289050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bgeu x8, x31, some_label_for_btype_148767020549377289051 # perform operation 
addi x0, x1, 1
some_label_for_btype_148767020549377289051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x2, 0xf5b4549ebf5dd927 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x00000000fffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bgeu x8, x15, some_label_for_btype_92939450483964319600 # perform operation 
addi x0, x1, 1
some_label_for_btype_92939450483964319600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x00000000fffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bgeu x8, x15, some_label_for_btype_92939450483964319601 # perform operation 
addi x0, x1, 1
some_label_for_btype_92939450483964319601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x20, 0x17ecabee92814893 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
bgeu x5, x11, some_label_for_btype_122283328436131022550 # perform operation 
addi x0, x1, 1
some_label_for_btype_122283328436131022550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
bgeu x5, x11, some_label_for_btype_122283328436131022551 # perform operation 
addi x0, x1, 1
some_label_for_btype_122283328436131022551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x14, 0x0cebc3609630b8bf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
bgeu x11, x3, some_label_for_btype_156820146973643179400 # perform operation 
addi x0, x1, 1
some_label_for_btype_156820146973643179400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
bgeu x11, x3, some_label_for_btype_156820146973643179401 # perform operation 
addi x0, x1, 1
some_label_for_btype_156820146973643179401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x22, 0xc0a92440d9b08292 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x0000000100000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
bgeu x29, x14, some_label_for_btype_71286604764264355970 # perform operation 
addi x0, x1, 1
some_label_for_btype_71286604764264355970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
bgeu x29, x14, some_label_for_btype_71286604764264355971 # perform operation 
addi x0, x1, 1
some_label_for_btype_71286604764264355971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x19, 0x6ffe1bf248b8e886 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000100000000 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bgeu x7, x5, some_label_for_btype_27930102215198984410 # perform operation 
addi x0, x1, 1
some_label_for_btype_27930102215198984410:
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
bgeu x7, x5, some_label_for_btype_27930102215198984411 # perform operation 
addi x0, x1, 1
some_label_for_btype_27930102215198984411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x27, 0x65333d30658e4b27 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000100000000 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
bgeu x8, x2, some_label_for_btype_19496758834385727190 # perform operation 
addi x0, x1, 1
some_label_for_btype_19496758834385727190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
bgeu x8, x2, some_label_for_btype_19496758834385727191 # perform operation 
addi x0, x1, 1
some_label_for_btype_19496758834385727191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x15, 0xa29054d4d8f2b53d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x0000000100000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
bgeu x20, x17, some_label_for_btype_14683062631015766250 # perform operation 
addi x0, x1, 1
some_label_for_btype_14683062631015766250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
bgeu x20, x17, some_label_for_btype_14683062631015766251 # perform operation 
addi x0, x1, 1
some_label_for_btype_14683062631015766251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x3, 0x6cbe47d3457b3fec # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000100000000 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
bgeu x24, x7, some_label_for_btype_24614567256459582590 # perform operation 
addi x0, x1, 1
some_label_for_btype_24614567256459582590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
bgeu x24, x7, some_label_for_btype_24614567256459582591 # perform operation 
addi x0, x1, 1
some_label_for_btype_24614567256459582591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x4, 0x3f5643ec94873f2d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000100000000 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
bgeu x22, x29, some_label_for_btype_55551773460784862010 # perform operation 
addi x0, x1, 1
some_label_for_btype_55551773460784862010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x7fffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
bgeu x22, x29, some_label_for_btype_55551773460784862011 # perform operation 
addi x0, x1, 1
some_label_for_btype_55551773460784862011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x23, 0x1fa4735ac6b00539 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0000000100000000 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
bgeu x15, x1, some_label_for_btype_65492727303804499520 # perform operation 
addi x0, x1, 1
some_label_for_btype_65492727303804499520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x7ffffffffffffffe # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
bgeu x15, x1, some_label_for_btype_65492727303804499521 # perform operation 
addi x0, x1, 1
some_label_for_btype_65492727303804499521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x6, 0x75cbc9cbaaae3f2a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0000000100000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
bgeu x10, x30, some_label_for_btype_46262143913260462730 # perform operation 
addi x0, x1, 1
some_label_for_btype_46262143913260462730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xffffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
bgeu x10, x30, some_label_for_btype_46262143913260462731 # perform operation 
addi x0, x1, 1
some_label_for_btype_46262143913260462731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x31, 0x8da91f1b4d0b5580 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000100000000 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
bgeu x6, x14, some_label_for_btype_41989796682519436260 # perform operation 
addi x0, x1, 1
some_label_for_btype_41989796682519436260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xfffffffffffffffe # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
bgeu x6, x14, some_label_for_btype_41989796682519436261 # perform operation 
addi x0, x1, 1
some_label_for_btype_41989796682519436261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x16, 0xc3585315f804502e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000100000000 # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
bgeu x2, x24, some_label_for_btype_87338587373714671180 # perform operation 
addi x0, x1, 1
some_label_for_btype_87338587373714671180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
bgeu x2, x24, some_label_for_btype_87338587373714671181 # perform operation 
addi x0, x1, 1
some_label_for_btype_87338587373714671181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xf414dbc9d7e1af03 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x0000000100000000 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x11, x5, some_label_for_btype_125387146748040559980 # perform operation 
addi x0, x1, 1
some_label_for_btype_125387146748040559980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x11, x5, some_label_for_btype_125387146748040559981 # perform operation 
addi x0, x1, 1
some_label_for_btype_125387146748040559981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x9, 0x94b00c1f650ed169 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0000000100000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
bgeu x15, x23, some_label_for_btype_158086867566885922840 # perform operation 
addi x0, x1, 1
some_label_for_btype_158086867566885922840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
bgeu x15, x23, some_label_for_btype_158086867566885922841 # perform operation 
addi x0, x1, 1
some_label_for_btype_158086867566885922841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x4, 0xb29a475d0877bcf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000100000000 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
bgeu x12, x26, some_label_for_btype_145310656243492602990 # perform operation 
addi x0, x1, 1
some_label_for_btype_145310656243492602990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
bgeu x12, x26, some_label_for_btype_145310656243492602991 # perform operation 
addi x0, x1, 1
some_label_for_btype_145310656243492602991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x4, 0x9dd9704180453f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x0000000100000000 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
bgeu x20, x19, some_label_for_btype_18130300769332134130 # perform operation 
addi x0, x1, 1
some_label_for_btype_18130300769332134130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
bgeu x20, x19, some_label_for_btype_18130300769332134131 # perform operation 
addi x0, x1, 1
some_label_for_btype_18130300769332134131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x8, 0x0cccaad2c2d7de87 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
bgeu x21, x9, some_label_for_btype_37854168816371538880 # perform operation 
addi x0, x1, 1
some_label_for_btype_37854168816371538880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
bgeu x21, x9, some_label_for_btype_37854168816371538881 # perform operation 
addi x0, x1, 1
some_label_for_btype_37854168816371538881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x13, 0x2e3d01826ec0d1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000100000000 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bgeu x24, x5, some_label_for_btype_42531781175194537100 # perform operation 
addi x0, x1, 1
some_label_for_btype_42531781175194537100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x0000000100000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bgeu x24, x5, some_label_for_btype_42531781175194537101 # perform operation 
addi x0, x1, 1
some_label_for_btype_42531781175194537101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x5, 0xb5adc41214aca957 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0000000100000001 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bgeu x30, x18, some_label_for_btype_168442893122374401860 # perform operation 
addi x0, x1, 1
some_label_for_btype_168442893122374401860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bgeu x30, x18, some_label_for_btype_168442893122374401861 # perform operation 
addi x0, x1, 1
some_label_for_btype_168442893122374401861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x24, 0xa078da738de20056 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000100000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bgeu x28, x29, some_label_for_btype_86234968607731174070 # perform operation 
addi x0, x1, 1
some_label_for_btype_86234968607731174070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bgeu x28, x29, some_label_for_btype_86234968607731174071 # perform operation 
addi x0, x1, 1
some_label_for_btype_86234968607731174071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x4, 0xaea0ec140a738426 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0000000100000001 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
bgeu x26, x2, some_label_for_btype_137403753824979813990 # perform operation 
addi x0, x1, 1
some_label_for_btype_137403753824979813990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
bgeu x26, x2, some_label_for_btype_137403753824979813991 # perform operation 
addi x0, x1, 1
some_label_for_btype_137403753824979813991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x16, 0xf8ce5ff057bcb3a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000100000001 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bgeu x24, x8, some_label_for_btype_25753048620251351100 # perform operation 
addi x0, x1, 1
some_label_for_btype_25753048620251351100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x8000000000000000 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bgeu x24, x8, some_label_for_btype_25753048620251351101 # perform operation 
addi x0, x1, 1
some_label_for_btype_25753048620251351101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x8, 0xd2e862f0e4f80e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000100000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bgeu x27, x24, some_label_for_btype_49506107239170378190 # perform operation 
addi x0, x1, 1
some_label_for_btype_49506107239170378190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bgeu x27, x24, some_label_for_btype_49506107239170378191 # perform operation 
addi x0, x1, 1
some_label_for_btype_49506107239170378191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x28, 0x3f607951a1f6120a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000100000001 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
bgeu x7, x2, some_label_for_btype_52102771393635717790 # perform operation 
addi x0, x1, 1
some_label_for_btype_52102771393635717790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x7fffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
bgeu x7, x2, some_label_for_btype_52102771393635717791 # perform operation 
addi x0, x1, 1
some_label_for_btype_52102771393635717791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x22, 0x4869e6e824aa8292 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000100000001 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
bgeu x6, x16, some_label_for_btype_145218227839834009070 # perform operation 
addi x0, x1, 1
some_label_for_btype_145218227839834009070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x7ffffffffffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
bgeu x6, x16, some_label_for_btype_145218227839834009071 # perform operation 
addi x0, x1, 1
some_label_for_btype_145218227839834009071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x28, 0x1a474d2333e43a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0000000100000001 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
bgeu x15, x21, some_label_for_btype_166819955715856883630 # perform operation 
addi x0, x1, 1
some_label_for_btype_166819955715856883630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xffffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
bgeu x15, x21, some_label_for_btype_166819955715856883631 # perform operation 
addi x0, x1, 1
some_label_for_btype_166819955715856883631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x9, 0x51ba419722cebc4d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000100000001 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
bgeu x1, x29, some_label_for_btype_183158366275125041240 # perform operation 
addi x0, x1, 1
some_label_for_btype_183158366275125041240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
bgeu x1, x29, some_label_for_btype_183158366275125041241 # perform operation 
addi x0, x1, 1
some_label_for_btype_183158366275125041241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x22, 0xdb0e52907aceafed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x0000000100000001 # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
bgeu x25, x27, some_label_for_btype_28664565724517918030 # perform operation 
addi x0, x1, 1
some_label_for_btype_28664565724517918030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
bgeu x25, x27, some_label_for_btype_28664565724517918031 # perform operation 
addi x0, x1, 1
some_label_for_btype_28664565724517918031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x6570c3f751f66774 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0000000100000001 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x15, x27, some_label_for_btype_144314292511239398080 # perform operation 
addi x0, x1, 1
some_label_for_btype_144314292511239398080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x15, x27, some_label_for_btype_144314292511239398081 # perform operation 
addi x0, x1, 1
some_label_for_btype_144314292511239398081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x22, 0xc82491357a9d1539 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x0000000100000001 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
bgeu x16, x17, some_label_for_btype_170553326961342946920 # perform operation 
addi x0, x1, 1
some_label_for_btype_170553326961342946920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5555555555555555 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
bgeu x16, x17, some_label_for_btype_170553326961342946921 # perform operation 
addi x0, x1, 1
some_label_for_btype_170553326961342946921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x3, 0x3df64865b3e0ed66 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x0000000100000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bgeu x5, x15, some_label_for_btype_130510994027183732290 # perform operation 
addi x0, x1, 1
some_label_for_btype_130510994027183732290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bgeu x5, x15, some_label_for_btype_130510994027183732291 # perform operation 
addi x0, x1, 1
some_label_for_btype_130510994027183732291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x30, 0xdb70f7f34c092bf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x0000000100000001 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bgeu x13, x11, some_label_for_btype_41939754247047187630 # perform operation 
addi x0, x1, 1
some_label_for_btype_41939754247047187630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bgeu x13, x11, some_label_for_btype_41939754247047187631 # perform operation 
addi x0, x1, 1
some_label_for_btype_41939754247047187631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x2, 0x5e2f938986d33e95 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000100000001 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
bgeu x12, x6, some_label_for_btype_30897946093584535530 # perform operation 
addi x0, x1, 1
some_label_for_btype_30897946093584535530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x0000000100000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
bgeu x12, x6, some_label_for_btype_30897946093584535531 # perform operation 
addi x0, x1, 1
some_label_for_btype_30897946093584535531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x19, 0xbb0d28d38a678660 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
bgeu x10, x21, some_label_for_btype_37481113897682481460 # perform operation 
addi x0, x1, 1
some_label_for_btype_37481113897682481460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
bgeu x10, x21, some_label_for_btype_37481113897682481461 # perform operation 
addi x0, x1, 1
some_label_for_btype_37481113897682481461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x12, 0x8cf84c3e8cfff865 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x7cc682b4b22b9ffe # initialize rs1
li x0, 0x7a5f267e3f7fdf1e # initialize rs2
bgeu x0, x0, some_label_for_btype_29976956545271139050 # perform operation 
addi x0, x1, 1
some_label_for_btype_29976956545271139050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0x7a5f267e3f7fdf1e # initialize rs1
li x0, 0x7a5f267e3f7fdf1e # initialize rs2
bgeu x0, x0, some_label_for_btype_29976956545271139051 # perform operation 
addi x0, x1, 1
some_label_for_btype_29976956545271139051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x79eb66aa58a0d2b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x60410549325c5101 # initialize rs1
li x1, 0x67cb0ceafcbe86e7 # initialize rs2
bgeu x1, x1, some_label_for_btype_48305371152217598860 # perform operation 
addi x0, x1, 1
some_label_for_btype_48305371152217598860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x67cb0ceafcbe86e7 # initialize rs1
li x1, 0x67cb0ceafcbe86e7 # initialize rs2
bgeu x1, x1, some_label_for_btype_48305371152217598861 # perform operation 
addi x0, x1, 1
some_label_for_btype_48305371152217598861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x16, 0x958e596f9094492c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x27c518eb1d8d8176 # initialize rs1
li x2, 0x402cd3efce78d223 # initialize rs2
bgeu x2, x2, some_label_for_btype_121696676996929984780 # perform operation 
addi x0, x1, 1
some_label_for_btype_121696676996929984780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x402cd3efce78d223 # initialize rs1
li x2, 0x402cd3efce78d223 # initialize rs2
bgeu x2, x2, some_label_for_btype_121696676996929984781 # perform operation 
addi x0, x1, 1
some_label_for_btype_121696676996929984781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x24, 0x85e8a5a8ba21a684 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x2138d9238415e041 # initialize rs1
li x3, 0x42107012946ac3a3 # initialize rs2
bgeu x3, x3, some_label_for_btype_92466469432448504140 # perform operation 
addi x0, x1, 1
some_label_for_btype_92466469432448504140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x42107012946ac3a3 # initialize rs1
li x3, 0x42107012946ac3a3 # initialize rs2
bgeu x3, x3, some_label_for_btype_92466469432448504141 # perform operation 
addi x0, x1, 1
some_label_for_btype_92466469432448504141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x25, 0xd209e35fa79ba7fa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x664a3c75dba170e1 # initialize rs1
li x4, 0x8d956f898bc6dd09 # initialize rs2
bgeu x4, x4, some_label_for_btype_125330407953644121050 # perform operation 
addi x0, x1, 1
some_label_for_btype_125330407953644121050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x8d956f898bc6dd09 # initialize rs1
li x4, 0x8d956f898bc6dd09 # initialize rs2
bgeu x4, x4, some_label_for_btype_125330407953644121051 # perform operation 
addi x0, x1, 1
some_label_for_btype_125330407953644121051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x10, 0x96424db75edd54e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x735d692e41f13d92 # initialize rs1
li x5, 0x566b813c2255edbf # initialize rs2
bgeu x5, x5, some_label_for_btype_37921796387893188720 # perform operation 
addi x0, x1, 1
some_label_for_btype_37921796387893188720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x566b813c2255edbf # initialize rs1
li x5, 0x566b813c2255edbf # initialize rs2
bgeu x5, x5, some_label_for_btype_37921796387893188721 # perform operation 
addi x0, x1, 1
some_label_for_btype_37921796387893188721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x2, 0x4f0f4bd02037df70 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x7bb0ddb8586a75a1 # initialize rs1
li x6, 0x3c9c668f12712a81 # initialize rs2
bgeu x6, x6, some_label_for_btype_123135484347917226490 # perform operation 
addi x0, x1, 1
some_label_for_btype_123135484347917226490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x3c9c668f12712a81 # initialize rs1
li x6, 0x3c9c668f12712a81 # initialize rs2
bgeu x6, x6, some_label_for_btype_123135484347917226491 # perform operation 
addi x0, x1, 1
some_label_for_btype_123135484347917226491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x3, 0x6d9fe3314709deed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xd8e55cd8483dd11e # initialize rs1
li x7, 0x74449cebae22007b # initialize rs2
bgeu x7, x7, some_label_for_btype_137072687930284355470 # perform operation 
addi x0, x1, 1
some_label_for_btype_137072687930284355470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x74449cebae22007b # initialize rs1
li x7, 0x74449cebae22007b # initialize rs2
bgeu x7, x7, some_label_for_btype_137072687930284355471 # perform operation 
addi x0, x1, 1
some_label_for_btype_137072687930284355471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x7, 0x8972f926a80139ac # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x1d609b61b0f60bc4 # initialize rs1
li x8, 0x8d9efb3b2bd24db7 # initialize rs2
bgeu x8, x8, some_label_for_btype_66268388582677860960 # perform operation 
addi x0, x1, 1
some_label_for_btype_66268388582677860960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x8d9efb3b2bd24db7 # initialize rs1
li x8, 0x8d9efb3b2bd24db7 # initialize rs2
bgeu x8, x8, some_label_for_btype_66268388582677860961 # perform operation 
addi x0, x1, 1
some_label_for_btype_66268388582677860961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x14, 0xa4b39cedcc00de73 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xd62b16f4f66d9c10 # initialize rs1
li x9, 0x45529629a3bb96da # initialize rs2
bgeu x9, x9, some_label_for_btype_164584715102013495240 # perform operation 
addi x0, x1, 1
some_label_for_btype_164584715102013495240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x45529629a3bb96da # initialize rs1
li x9, 0x45529629a3bb96da # initialize rs2
bgeu x9, x9, some_label_for_btype_164584715102013495241 # perform operation 
addi x0, x1, 1
some_label_for_btype_164584715102013495241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x21, 0xcdc983f3606a941f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xada061dfad128866 # initialize rs1
li x10, 0xafa0a702a1f16a57 # initialize rs2
bgeu x10, x10, some_label_for_btype_83706645594033825700 # perform operation 
addi x0, x1, 1
some_label_for_btype_83706645594033825700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xafa0a702a1f16a57 # initialize rs1
li x10, 0xafa0a702a1f16a57 # initialize rs2
bgeu x10, x10, some_label_for_btype_83706645594033825701 # perform operation 
addi x0, x1, 1
some_label_for_btype_83706645594033825701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x17, 0x97b16f235600cd67 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x46b09c85fcebfcda # initialize rs1
li x11, 0xdafa03620d900a7d # initialize rs2
bgeu x11, x11, some_label_for_btype_140150013501045125500 # perform operation 
addi x0, x1, 1
some_label_for_btype_140150013501045125500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xdafa03620d900a7d # initialize rs1
li x11, 0xdafa03620d900a7d # initialize rs2
bgeu x11, x11, some_label_for_btype_140150013501045125501 # perform operation 
addi x0, x1, 1
some_label_for_btype_140150013501045125501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x2, 0x3bbb5840827e6945 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x942747d9d3315cea # initialize rs1
li x12, 0x1f1e5ed9a47d079b # initialize rs2
bgeu x12, x12, some_label_for_btype_92879212577275487750 # perform operation 
addi x0, x1, 1
some_label_for_btype_92879212577275487750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x1f1e5ed9a47d079b # initialize rs1
li x12, 0x1f1e5ed9a47d079b # initialize rs2
bgeu x12, x12, some_label_for_btype_92879212577275487751 # perform operation 
addi x0, x1, 1
some_label_for_btype_92879212577275487751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x27, 0xc1535ce5b39a2bf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xdfe99b91d38b9ce8 # initialize rs1
li x13, 0x309b3a5f0fc0088f # initialize rs2
bgeu x13, x13, some_label_for_btype_145517872380734188260 # perform operation 
addi x0, x1, 1
some_label_for_btype_145517872380734188260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x309b3a5f0fc0088f # initialize rs1
li x13, 0x309b3a5f0fc0088f # initialize rs2
bgeu x13, x13, some_label_for_btype_145517872380734188261 # perform operation 
addi x0, x1, 1
some_label_for_btype_145517872380734188261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x2, 0xf7d32fa1b6ed85a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xe093395234994e4b # initialize rs1
li x14, 0x3bf608f61191f4d1 # initialize rs2
bgeu x14, x14, some_label_for_btype_170966165868676970430 # perform operation 
addi x0, x1, 1
some_label_for_btype_170966165868676970430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x3bf608f61191f4d1 # initialize rs1
li x14, 0x3bf608f61191f4d1 # initialize rs2
bgeu x14, x14, some_label_for_btype_170966165868676970431 # perform operation 
addi x0, x1, 1
some_label_for_btype_170966165868676970431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x3, 0x7ac74bbf924fe282 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xaaadaf008b6b0d71 # initialize rs1
li x15, 0xc07074da3a8ad6dc # initialize rs2
bgeu x15, x15, some_label_for_btype_20276159217966306090 # perform operation 
addi x0, x1, 1
some_label_for_btype_20276159217966306090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xc07074da3a8ad6dc # initialize rs1
li x15, 0xc07074da3a8ad6dc # initialize rs2
bgeu x15, x15, some_label_for_btype_20276159217966306091 # perform operation 
addi x0, x1, 1
some_label_for_btype_20276159217966306091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x26, 0x88402ae865f09527 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xc334a52f431ffaaa # initialize rs1
li x16, 0x2c745761dab14fec # initialize rs2
bgeu x16, x16, some_label_for_btype_106804057538672540030 # perform operation 
addi x0, x1, 1
some_label_for_btype_106804057538672540030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x2c745761dab14fec # initialize rs1
li x16, 0x2c745761dab14fec # initialize rs2
bgeu x16, x16, some_label_for_btype_106804057538672540031 # perform operation 
addi x0, x1, 1
some_label_for_btype_106804057538672540031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x14, 0x5010cb731d360a88 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x30e78a303a092cec # initialize rs1
li x17, 0x7129a0a0d90e82f5 # initialize rs2
bgeu x17, x17, some_label_for_btype_39062612638277859210 # perform operation 
addi x0, x1, 1
some_label_for_btype_39062612638277859210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x7129a0a0d90e82f5 # initialize rs1
li x17, 0x7129a0a0d90e82f5 # initialize rs2
bgeu x17, x17, some_label_for_btype_39062612638277859211 # perform operation 
addi x0, x1, 1
some_label_for_btype_39062612638277859211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xd22dc8e6c87b9c92 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xf767f535eed5fbb9 # initialize rs1
li x18, 0x7b80c5d5370bc628 # initialize rs2
bgeu x18, x18, some_label_for_btype_165320694765504416310 # perform operation 
addi x0, x1, 1
some_label_for_btype_165320694765504416310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x7b80c5d5370bc628 # initialize rs1
li x18, 0x7b80c5d5370bc628 # initialize rs2
bgeu x18, x18, some_label_for_btype_165320694765504416311 # perform operation 
addi x0, x1, 1
some_label_for_btype_165320694765504416311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x4, 0xc3ee53e6f658e24c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xf534c42342b2e474 # initialize rs1
li x19, 0x4696a2d8946633e9 # initialize rs2
bgeu x19, x19, some_label_for_btype_143275024319062217850 # perform operation 
addi x0, x1, 1
some_label_for_btype_143275024319062217850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x4696a2d8946633e9 # initialize rs1
li x19, 0x4696a2d8946633e9 # initialize rs2
bgeu x19, x19, some_label_for_btype_143275024319062217851 # perform operation 
addi x0, x1, 1
some_label_for_btype_143275024319062217851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x25, 0x87c93d218b0b3ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x1c44d9726cd6190a # initialize rs1
li x20, 0xf53eb71185f2a8c2 # initialize rs2
bgeu x20, x20, some_label_for_btype_110477229894815354740 # perform operation 
addi x0, x1, 1
some_label_for_btype_110477229894815354740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xf53eb71185f2a8c2 # initialize rs1
li x20, 0xf53eb71185f2a8c2 # initialize rs2
bgeu x20, x20, some_label_for_btype_110477229894815354741 # perform operation 
addi x0, x1, 1
some_label_for_btype_110477229894815354741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x13, 0x2475a0fbeb238b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x92996a72d91a7d41 # initialize rs1
li x21, 0x54dfbd1a0c736df1 # initialize rs2
bgeu x21, x21, some_label_for_btype_152812070417196658370 # perform operation 
addi x0, x1, 1
some_label_for_btype_152812070417196658370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x54dfbd1a0c736df1 # initialize rs1
li x21, 0x54dfbd1a0c736df1 # initialize rs2
bgeu x21, x21, some_label_for_btype_152812070417196658371 # perform operation 
addi x0, x1, 1
some_label_for_btype_152812070417196658371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x12, 0xeaaa1093e85ff1dd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x38963852c52e2d1c # initialize rs1
li x22, 0x75c69509f58e2342 # initialize rs2
bgeu x22, x22, some_label_for_btype_75182203432735175840 # perform operation 
addi x0, x1, 1
some_label_for_btype_75182203432735175840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x75c69509f58e2342 # initialize rs1
li x22, 0x75c69509f58e2342 # initialize rs2
bgeu x22, x22, some_label_for_btype_75182203432735175841 # perform operation 
addi x0, x1, 1
some_label_for_btype_75182203432735175841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x27, 0x535c53dedf1336e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x6f98bb78234fca62 # initialize rs1
li x23, 0x86c10935eb457895 # initialize rs2
bgeu x23, x23, some_label_for_btype_165101201238940648070 # perform operation 
addi x0, x1, 1
some_label_for_btype_165101201238940648070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x86c10935eb457895 # initialize rs1
li x23, 0x86c10935eb457895 # initialize rs2
bgeu x23, x23, some_label_for_btype_165101201238940648071 # perform operation 
addi x0, x1, 1
some_label_for_btype_165101201238940648071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x12, 0x090bcf92845807bf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x564191f2e56dab48 # initialize rs1
li x24, 0x5e064c4f0808aa71 # initialize rs2
bgeu x24, x24, some_label_for_btype_97078417766142081270 # perform operation 
addi x0, x1, 1
some_label_for_btype_97078417766142081270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5e064c4f0808aa71 # initialize rs1
li x24, 0x5e064c4f0808aa71 # initialize rs2
bgeu x24, x24, some_label_for_btype_97078417766142081271 # perform operation 
addi x0, x1, 1
some_label_for_btype_97078417766142081271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x21, 0xdf93a0e3ec10e488 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x92f94da3807930ef # initialize rs1
li x25, 0x9aeb78ec46249462 # initialize rs2
bgeu x25, x25, some_label_for_btype_168596512942052009610 # perform operation 
addi x0, x1, 1
some_label_for_btype_168596512942052009610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x9aeb78ec46249462 # initialize rs1
li x25, 0x9aeb78ec46249462 # initialize rs2
bgeu x25, x25, some_label_for_btype_168596512942052009611 # perform operation 
addi x0, x1, 1
some_label_for_btype_168596512942052009611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x10, 0xad95753411aedb26 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x364e44f518efca36 # initialize rs1
li x26, 0xb11aa2706ac4a7b8 # initialize rs2
bgeu x26, x26, some_label_for_btype_37664491861152595330 # perform operation 
addi x0, x1, 1
some_label_for_btype_37664491861152595330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xb11aa2706ac4a7b8 # initialize rs1
li x26, 0xb11aa2706ac4a7b8 # initialize rs2
bgeu x26, x26, some_label_for_btype_37664491861152595331 # perform operation 
addi x0, x1, 1
some_label_for_btype_37664491861152595331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x30, 0xb5c3c8a870d3509d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xe4a7e36a0ec96241 # initialize rs1
li x27, 0x402a460052a8e7be # initialize rs2
bgeu x27, x27, some_label_for_btype_12941469719916772050 # perform operation 
addi x0, x1, 1
some_label_for_btype_12941469719916772050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x402a460052a8e7be # initialize rs1
li x27, 0x402a460052a8e7be # initialize rs2
bgeu x27, x27, some_label_for_btype_12941469719916772051 # perform operation 
addi x0, x1, 1
some_label_for_btype_12941469719916772051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x22, 0x261c89de8b33d641 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x110c90a82e7853ee # initialize rs1
li x28, 0xa2c16ddb4dc77ad5 # initialize rs2
bgeu x28, x28, some_label_for_btype_32279312929540292760 # perform operation 
addi x0, x1, 1
some_label_for_btype_32279312929540292760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xa2c16ddb4dc77ad5 # initialize rs1
li x28, 0xa2c16ddb4dc77ad5 # initialize rs2
bgeu x28, x28, some_label_for_btype_32279312929540292761 # perform operation 
addi x0, x1, 1
some_label_for_btype_32279312929540292761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x16, 0x79cb99a10a57ba17 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x137d93c8826fd656 # initialize rs1
li x29, 0x64eeabb2c4cf934e # initialize rs2
bgeu x29, x29, some_label_for_btype_98683511214496742450 # perform operation 
addi x0, x1, 1
some_label_for_btype_98683511214496742450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x64eeabb2c4cf934e # initialize rs1
li x29, 0x64eeabb2c4cf934e # initialize rs2
bgeu x29, x29, some_label_for_btype_98683511214496742451 # perform operation 
addi x0, x1, 1
some_label_for_btype_98683511214496742451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x31, 0x257ef596a38cb97e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xa5d38182d8ae77fa # initialize rs1
li x30, 0x5baab841f4a56ac2 # initialize rs2
bgeu x30, x30, some_label_for_btype_89127242070990647590 # perform operation 
addi x0, x1, 1
some_label_for_btype_89127242070990647590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x5baab841f4a56ac2 # initialize rs1
li x30, 0x5baab841f4a56ac2 # initialize rs2
bgeu x30, x30, some_label_for_btype_89127242070990647591 # perform operation 
addi x0, x1, 1
some_label_for_btype_89127242070990647591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x17, 0x4f79f9674c0be15f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x83240e8612acfb6b # initialize rs1
li x31, 0x201dd4d13af04518 # initialize rs2
bgeu x31, x31, some_label_for_btype_172328603976768247610 # perform operation 
addi x0, x1, 1
some_label_for_btype_172328603976768247610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x201dd4d13af04518 # initialize rs1
li x31, 0x201dd4d13af04518 # initialize rs2
bgeu x31, x31, some_label_for_btype_172328603976768247611 # perform operation 
addi x0, x1, 1
some_label_for_btype_172328603976768247611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = 0x15b688abae91b37f)
li x29, 0xa93a2a85cda4e2be # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x15b688abae91b37f # initialize rs1
li x15, 0xbde683705d085677 # initialize rs2
bgeu x14, x15, some_label_for_btype_112005272156721592310 # perform operation 
addi x0, x1, 1
some_label_for_btype_112005272156721592310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xbde683705d085677 # initialize rs1
li x15, 0xbde683705d085677 # initialize rs2
bgeu x14, x15, some_label_for_btype_112005272156721592311 # perform operation 
addi x0, x1, 1
some_label_for_btype_112005272156721592311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x131514948079a791)
li x27, 0x5e573ae823500b91 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xeceaeb6b7f86586f # initialize rs1
li x4, 0xe6c939aa9605d525 # initialize rs2
bgeu x25, x4, some_label_for_btype_143899333984511502700 # perform operation 
addi x0, x1, 1
some_label_for_btype_143899333984511502700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xe6c939aa9605d525 # initialize rs1
li x4, 0xe6c939aa9605d525 # initialize rs2
bgeu x25, x4, some_label_for_btype_143899333984511502701 # perform operation 
addi x0, x1, 1
some_label_for_btype_143899333984511502701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = 0x1b7a1bb8e05c459f)
li x3, 0x94ab39a58ca9bc53 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x12cc9d8d021f5623 # initialize rs1
li x14, 0x1b7a1bb8e05c459f # initialize rs2
bgeu x8, x14, some_label_for_btype_66368650947357324780 # perform operation 
addi x0, x1, 1
some_label_for_btype_66368650947357324780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x1b7a1bb8e05c459f # initialize rs1
li x14, 0x1b7a1bb8e05c459f # initialize rs2
bgeu x8, x14, some_label_for_btype_66368650947357324781 # perform operation 
addi x0, x1, 1
some_label_for_btype_66368650947357324781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = -0x248d109dc2c510ff)
li x5, 0x90a01ead8dacd849 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x9c13efb64609c399 # initialize rs1
li x25, 0xdb72ef623d3aef01 # initialize rs2
bgeu x15, x25, some_label_for_btype_40980907080526954680 # perform operation 
addi x0, x1, 1
some_label_for_btype_40980907080526954680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xdb72ef623d3aef01 # initialize rs1
li x25, 0xdb72ef623d3aef01 # initialize rs2
bgeu x15, x25, some_label_for_btype_40980907080526954681 # perform operation 
addi x0, x1, 1
some_label_for_btype_40980907080526954681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: bgeu x0, x0, 1b # backward branch
3: nop # done with sequence

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
