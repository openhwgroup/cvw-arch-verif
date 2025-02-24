///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-blt.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.470283
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x29, 0xb19e9c61a7d3becd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x14959dead63e8278 # initialize rs1
li x9, 0x482f74d0954631e9 # initialize rs2
blt x0, x9, some_label_for_btype_4680233561021946340 # perform operation 
addi x0, x1, 1
some_label_for_btype_4680233561021946340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0x482f74d0954631e9 # initialize rs1
li x9, 0x482f74d0954631e9 # initialize rs2
blt x0, x9, some_label_for_btype_4680233561021946341 # perform operation 
addi x0, x1, 1
some_label_for_btype_4680233561021946341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x1)
li x24, 0xd03c9c24f7c92d1a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xee55d92168496683 # initialize rs1
li x4, 0x7aefcbcb52d38171 # initialize rs2
blt x1, x4, some_label_for_btype_147774552368569490800 # perform operation 
addi x0, x1, 1
some_label_for_btype_147774552368569490800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x7aefcbcb52d38171 # initialize rs1
li x4, 0x7aefcbcb52d38171 # initialize rs2
blt x1, x4, some_label_for_btype_147774552368569490801 # perform operation 
addi x0, x1, 1
some_label_for_btype_147774552368569490801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x2)
li x26, 0x2851c2b281d9a939 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x9695fe424dd8b180 # initialize rs1
li x28, 0x2353a59868ad8dad # initialize rs2
blt x2, x28, some_label_for_btype_172611760921870744210 # perform operation 
addi x0, x1, 1
some_label_for_btype_172611760921870744210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x2353a59868ad8dad # initialize rs1
li x28, 0x2353a59868ad8dad # initialize rs2
blt x2, x28, some_label_for_btype_172611760921870744211 # perform operation 
addi x0, x1, 1
some_label_for_btype_172611760921870744211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x3)
li x13, 0x2b92f3229860eb9e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x3b959159326c7bf8 # initialize rs1
li x22, 0x15f7bfffe9d1d2ed # initialize rs2
blt x3, x22, some_label_for_btype_126216046797315006300 # perform operation 
addi x0, x1, 1
some_label_for_btype_126216046797315006300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x15f7bfffe9d1d2ed # initialize rs1
li x22, 0x15f7bfffe9d1d2ed # initialize rs2
blt x3, x22, some_label_for_btype_126216046797315006301 # perform operation 
addi x0, x1, 1
some_label_for_btype_126216046797315006301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x4)
li x25, 0x373f6a7ef63ad4e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x227bac03a2483e31 # initialize rs1
li x22, 0x0c502906033f2912 # initialize rs2
blt x4, x22, some_label_for_btype_89022127035649756320 # perform operation 
addi x0, x1, 1
some_label_for_btype_89022127035649756320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0c502906033f2912 # initialize rs1
li x22, 0x0c502906033f2912 # initialize rs2
blt x4, x22, some_label_for_btype_89022127035649756321 # perform operation 
addi x0, x1, 1
some_label_for_btype_89022127035649756321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x5)
li x9, 0x8e84839f49c161ae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xfa0a79eb729bdcff # initialize rs1
li x6, 0xa1682c7c6869a640 # initialize rs2
blt x5, x6, some_label_for_btype_127565038021961460010 # perform operation 
addi x0, x1, 1
some_label_for_btype_127565038021961460010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xa1682c7c6869a640 # initialize rs1
li x6, 0xa1682c7c6869a640 # initialize rs2
blt x5, x6, some_label_for_btype_127565038021961460011 # perform operation 
addi x0, x1, 1
some_label_for_btype_127565038021961460011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x6)
li x14, 0x87709ede1710902f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xe98a4edd6d174ed2 # initialize rs1
li x10, 0x1f2d9a1d49c150ed # initialize rs2
blt x6, x10, some_label_for_btype_43368854780211182380 # perform operation 
addi x0, x1, 1
some_label_for_btype_43368854780211182380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x1f2d9a1d49c150ed # initialize rs1
li x10, 0x1f2d9a1d49c150ed # initialize rs2
blt x6, x10, some_label_for_btype_43368854780211182381 # perform operation 
addi x0, x1, 1
some_label_for_btype_43368854780211182381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x7)
li x24, 0x80615e481736586a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xa2875955b4479a8b # initialize rs1
li x19, 0xc31b1af934092b8a # initialize rs2
blt x7, x19, some_label_for_btype_76191465863215603330 # perform operation 
addi x0, x1, 1
some_label_for_btype_76191465863215603330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xc31b1af934092b8a # initialize rs1
li x19, 0xc31b1af934092b8a # initialize rs2
blt x7, x19, some_label_for_btype_76191465863215603331 # perform operation 
addi x0, x1, 1
some_label_for_btype_76191465863215603331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0xf1ac0465723e59b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xca9fffd2813a89f3 # initialize rs1
li x20, 0x0453ef90c061d684 # initialize rs2
blt x8, x20, some_label_for_btype_75701622688697338030 # perform operation 
addi x0, x1, 1
some_label_for_btype_75701622688697338030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0453ef90c061d684 # initialize rs1
li x20, 0x0453ef90c061d684 # initialize rs2
blt x8, x20, some_label_for_btype_75701622688697338031 # perform operation 
addi x0, x1, 1
some_label_for_btype_75701622688697338031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x13, 0x57f91ce3e364530a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x6b5b18cbc212d71e # initialize rs1
li x8, 0xf0435c32cc5789ae # initialize rs2
blt x9, x8, some_label_for_btype_163522225424932791370 # perform operation 
addi x0, x1, 1
some_label_for_btype_163522225424932791370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xf0435c32cc5789ae # initialize rs1
li x8, 0xf0435c32cc5789ae # initialize rs2
blt x9, x8, some_label_for_btype_163522225424932791371 # perform operation 
addi x0, x1, 1
some_label_for_btype_163522225424932791371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0x34a84f2246214681 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xd99f19342e91a72f # initialize rs1
li x4, 0x467f52d64297a5f6 # initialize rs2
blt x10, x4, some_label_for_btype_103516953862149922050 # perform operation 
addi x0, x1, 1
some_label_for_btype_103516953862149922050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x467f52d64297a5f6 # initialize rs1
li x4, 0x467f52d64297a5f6 # initialize rs2
blt x10, x4, some_label_for_btype_103516953862149922051 # perform operation 
addi x0, x1, 1
some_label_for_btype_103516953862149922051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x15, 0x2ff9950a7f0cf6c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x07686a9d34753311 # initialize rs1
li x17, 0x3c6a8cb3304ac289 # initialize rs2
blt x11, x17, some_label_for_btype_59260599487509238370 # perform operation 
addi x0, x1, 1
some_label_for_btype_59260599487509238370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x3c6a8cb3304ac289 # initialize rs1
li x17, 0x3c6a8cb3304ac289 # initialize rs2
blt x11, x17, some_label_for_btype_59260599487509238371 # perform operation 
addi x0, x1, 1
some_label_for_btype_59260599487509238371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x14, 0xecdb01ff930ca98b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x8e4b434002d3a477 # initialize rs1
li x17, 0xae9dcd54cddb7d2d # initialize rs2
blt x12, x17, some_label_for_btype_112644933577713321160 # perform operation 
addi x0, x1, 1
some_label_for_btype_112644933577713321160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xae9dcd54cddb7d2d # initialize rs1
li x17, 0xae9dcd54cddb7d2d # initialize rs2
blt x12, x17, some_label_for_btype_112644933577713321161 # perform operation 
addi x0, x1, 1
some_label_for_btype_112644933577713321161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x1, 0x9f21c76131675f46 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xe96341bbe793e422 # initialize rs1
li x4, 0x1eb84433ee5da570 # initialize rs2
blt x13, x4, some_label_for_btype_133822767947653861310 # perform operation 
addi x0, x1, 1
some_label_for_btype_133822767947653861310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x1eb84433ee5da570 # initialize rs1
li x4, 0x1eb84433ee5da570 # initialize rs2
blt x13, x4, some_label_for_btype_133822767947653861311 # perform operation 
addi x0, x1, 1
some_label_for_btype_133822767947653861311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x18, 0x3b45d04591a565d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xc9d9d0a9a8882837 # initialize rs1
li x30, 0x5699ad34f010e809 # initialize rs2
blt x14, x30, some_label_for_btype_126127461668903204610 # perform operation 
addi x0, x1, 1
some_label_for_btype_126127461668903204610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x5699ad34f010e809 # initialize rs1
li x30, 0x5699ad34f010e809 # initialize rs2
blt x14, x30, some_label_for_btype_126127461668903204611 # perform operation 
addi x0, x1, 1
some_label_for_btype_126127461668903204611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0x062e84cfcba38ada # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xdbe5df57d571a701 # initialize rs1
li x18, 0xb15765cc29f57de8 # initialize rs2
blt x15, x18, some_label_for_btype_171776461286218447720 # perform operation 
addi x0, x1, 1
some_label_for_btype_171776461286218447720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xb15765cc29f57de8 # initialize rs1
li x18, 0xb15765cc29f57de8 # initialize rs2
blt x15, x18, some_label_for_btype_171776461286218447721 # perform operation 
addi x0, x1, 1
some_label_for_btype_171776461286218447721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x16)
li x6, 0x025cb2b25c1c18ba # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x04f0fdded442ff0e # initialize rs1
li x31, 0xa6505dbba17b7876 # initialize rs2
blt x16, x31, some_label_for_btype_170905827584719292260 # perform operation 
addi x0, x1, 1
some_label_for_btype_170905827584719292260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xa6505dbba17b7876 # initialize rs1
li x31, 0xa6505dbba17b7876 # initialize rs2
blt x16, x31, some_label_for_btype_170905827584719292261 # perform operation 
addi x0, x1, 1
some_label_for_btype_170905827584719292261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x17)
li x25, 0x2acd16671ece957c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x5c3cc0c19631a1e9 # initialize rs1
li x24, 0xbef010482a52b28b # initialize rs2
blt x17, x24, some_label_for_btype_24842738675166916710 # perform operation 
addi x0, x1, 1
some_label_for_btype_24842738675166916710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xbef010482a52b28b # initialize rs1
li x24, 0xbef010482a52b28b # initialize rs2
blt x17, x24, some_label_for_btype_24842738675166916711 # perform operation 
addi x0, x1, 1
some_label_for_btype_24842738675166916711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x18)
li x15, 0xcf4a0d64957a7447 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xaaa84ea0458aca9b # initialize rs1
li x19, 0x4fe5e879edd415df # initialize rs2
blt x18, x19, some_label_for_btype_36515092728732017160 # perform operation 
addi x0, x1, 1
some_label_for_btype_36515092728732017160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x4fe5e879edd415df # initialize rs1
li x19, 0x4fe5e879edd415df # initialize rs2
blt x18, x19, some_label_for_btype_36515092728732017161 # perform operation 
addi x0, x1, 1
some_label_for_btype_36515092728732017161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x19)
li x10, 0xe966292a68b585f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xc37789fe36507cff # initialize rs1
li x16, 0x88f223a2b5ce0f8f # initialize rs2
blt x19, x16, some_label_for_btype_39565451673554795010 # perform operation 
addi x0, x1, 1
some_label_for_btype_39565451673554795010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x88f223a2b5ce0f8f # initialize rs1
li x16, 0x88f223a2b5ce0f8f # initialize rs2
blt x19, x16, some_label_for_btype_39565451673554795011 # perform operation 
addi x0, x1, 1
some_label_for_btype_39565451673554795011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x20)
li x15, 0xfdd0d42b978f3505 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x22bb621b0929ad96 # initialize rs1
li x29, 0x523f86c4cb1dbf3e # initialize rs2
blt x20, x29, some_label_for_btype_88766864286391522120 # perform operation 
addi x0, x1, 1
some_label_for_btype_88766864286391522120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x523f86c4cb1dbf3e # initialize rs1
li x29, 0x523f86c4cb1dbf3e # initialize rs2
blt x20, x29, some_label_for_btype_88766864286391522121 # perform operation 
addi x0, x1, 1
some_label_for_btype_88766864286391522121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x21)
li x23, 0x6045e82a69b851f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xc3eac5da84a89a29 # initialize rs1
li x8, 0xf4494392e24bf9b8 # initialize rs2
blt x21, x8, some_label_for_btype_57328710060216534250 # perform operation 
addi x0, x1, 1
some_label_for_btype_57328710060216534250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xf4494392e24bf9b8 # initialize rs1
li x8, 0xf4494392e24bf9b8 # initialize rs2
blt x21, x8, some_label_for_btype_57328710060216534251 # perform operation 
addi x0, x1, 1
some_label_for_btype_57328710060216534251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x22)
li x21, 0x1311f46cd4fb469e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xcca9f6b6b47d1665 # initialize rs1
li x9, 0x9aafd26be97ea25d # initialize rs2
blt x22, x9, some_label_for_btype_16438713721070865560 # perform operation 
addi x0, x1, 1
some_label_for_btype_16438713721070865560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x9aafd26be97ea25d # initialize rs1
li x9, 0x9aafd26be97ea25d # initialize rs2
blt x22, x9, some_label_for_btype_16438713721070865561 # perform operation 
addi x0, x1, 1
some_label_for_btype_16438713721070865561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x23)
li x26, 0x0bb6747761919b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x61cd8f41089c2f9e # initialize rs1
li x11, 0xf8eae988afe80e4d # initialize rs2
blt x23, x11, some_label_for_btype_72887927136754172820 # perform operation 
addi x0, x1, 1
some_label_for_btype_72887927136754172820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xf8eae988afe80e4d # initialize rs1
li x11, 0xf8eae988afe80e4d # initialize rs2
blt x23, x11, some_label_for_btype_72887927136754172821 # perform operation 
addi x0, x1, 1
some_label_for_btype_72887927136754172821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x24)
li x22, 0xb935fbe6785d5974 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x2b684722bbfdd213 # initialize rs1
li x1, 0x144342df85c42341 # initialize rs2
blt x24, x1, some_label_for_btype_91624328754640759190 # perform operation 
addi x0, x1, 1
some_label_for_btype_91624328754640759190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x144342df85c42341 # initialize rs1
li x1, 0x144342df85c42341 # initialize rs2
blt x24, x1, some_label_for_btype_91624328754640759191 # perform operation 
addi x0, x1, 1
some_label_for_btype_91624328754640759191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x25)
li x4, 0x542cee651878ab6a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x4326ee6721176805 # initialize rs1
li x19, 0x1e8d398ced20c049 # initialize rs2
blt x25, x19, some_label_for_btype_118173079808828232400 # perform operation 
addi x0, x1, 1
some_label_for_btype_118173079808828232400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x1e8d398ced20c049 # initialize rs1
li x19, 0x1e8d398ced20c049 # initialize rs2
blt x25, x19, some_label_for_btype_118173079808828232401 # perform operation 
addi x0, x1, 1
some_label_for_btype_118173079808828232401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x26)
li x12, 0xad135b8d19494e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x4282233f7d7fdb1c # initialize rs1
li x1, 0x2bcb1ca3ec268d9d # initialize rs2
blt x26, x1, some_label_for_btype_28199350712985967020 # perform operation 
addi x0, x1, 1
some_label_for_btype_28199350712985967020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x2bcb1ca3ec268d9d # initialize rs1
li x1, 0x2bcb1ca3ec268d9d # initialize rs2
blt x26, x1, some_label_for_btype_28199350712985967021 # perform operation 
addi x0, x1, 1
some_label_for_btype_28199350712985967021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x27)
li x3, 0x9c8dd17185b220ab # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x38e0fbb42dc78539 # initialize rs1
li x9, 0xacd6a5b7658ed536 # initialize rs2
blt x27, x9, some_label_for_btype_127281200241752910510 # perform operation 
addi x0, x1, 1
some_label_for_btype_127281200241752910510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xacd6a5b7658ed536 # initialize rs1
li x9, 0xacd6a5b7658ed536 # initialize rs2
blt x27, x9, some_label_for_btype_127281200241752910511 # perform operation 
addi x0, x1, 1
some_label_for_btype_127281200241752910511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x28)
li x5, 0x03985e4898b4459c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7b15b1791a3db598 # initialize rs1
li x10, 0x478b0302f31697a5 # initialize rs2
blt x28, x10, some_label_for_btype_77255723198339802580 # perform operation 
addi x0, x1, 1
some_label_for_btype_77255723198339802580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x478b0302f31697a5 # initialize rs1
li x10, 0x478b0302f31697a5 # initialize rs2
blt x28, x10, some_label_for_btype_77255723198339802581 # perform operation 
addi x0, x1, 1
some_label_for_btype_77255723198339802581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x29)
li x27, 0x815031f5a9dd8a96 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x0127b28fd7155fed # initialize rs1
li x23, 0x6cd9306887b27fc8 # initialize rs2
blt x29, x23, some_label_for_btype_92574131202961557480 # perform operation 
addi x0, x1, 1
some_label_for_btype_92574131202961557480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x6cd9306887b27fc8 # initialize rs1
li x23, 0x6cd9306887b27fc8 # initialize rs2
blt x29, x23, some_label_for_btype_92574131202961557481 # perform operation 
addi x0, x1, 1
some_label_for_btype_92574131202961557481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x30)
li x28, 0x48623ea49d0ae913 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x6a1a56688745fca6 # initialize rs1
li x6, 0x4e01101e92bd6f28 # initialize rs2
blt x30, x6, some_label_for_btype_52181116621246429960 # perform operation 
addi x0, x1, 1
some_label_for_btype_52181116621246429960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x4e01101e92bd6f28 # initialize rs1
li x6, 0x4e01101e92bd6f28 # initialize rs2
blt x30, x6, some_label_for_btype_52181116621246429961 # perform operation 
addi x0, x1, 1
some_label_for_btype_52181116621246429961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x31)
li x6, 0x3a54943d6da5555f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x2c7f9e2f116a50cd # initialize rs1
li x13, 0xce8d16f40475124a # initialize rs2
blt x31, x13, some_label_for_btype_89425352980062128180 # perform operation 
addi x0, x1, 1
some_label_for_btype_89425352980062128180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xce8d16f40475124a # initialize rs1
li x13, 0xce8d16f40475124a # initialize rs2
blt x31, x13, some_label_for_btype_89425352980062128181 # perform operation 
addi x0, x1, 1
some_label_for_btype_89425352980062128181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x0)
li x3, 0x046f9aa7e41106fc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x925dd9b91ff97aae # initialize rs1
li x0, 0x645edbc79401e8ea # initialize rs2
blt x18, x0, some_label_for_btype_82585886336001979890 # perform operation 
addi x0, x1, 1
some_label_for_btype_82585886336001979890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x645edbc79401e8ea # initialize rs1
li x0, 0x645edbc79401e8ea # initialize rs2
blt x18, x0, some_label_for_btype_82585886336001979891 # perform operation 
addi x0, x1, 1
some_label_for_btype_82585886336001979891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x1)
li x9, 0xe667f8d93aa5eb61 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xcd3589789459c277 # initialize rs1
li x1, 0x610febec5f1beaec # initialize rs2
blt x6, x1, some_label_for_btype_54443421721180495370 # perform operation 
addi x0, x1, 1
some_label_for_btype_54443421721180495370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x610febec5f1beaec # initialize rs1
li x1, 0x610febec5f1beaec # initialize rs2
blt x6, x1, some_label_for_btype_54443421721180495371 # perform operation 
addi x0, x1, 1
some_label_for_btype_54443421721180495371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x2)
li x9, 0xeabe83fd6b3772f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x4083ca665021a10c # initialize rs1
li x2, 0xab9d723bd70539f6 # initialize rs2
blt x19, x2, some_label_for_btype_31495721208913247930 # perform operation 
addi x0, x1, 1
some_label_for_btype_31495721208913247930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xab9d723bd70539f6 # initialize rs1
li x2, 0xab9d723bd70539f6 # initialize rs2
blt x19, x2, some_label_for_btype_31495721208913247931 # perform operation 
addi x0, x1, 1
some_label_for_btype_31495721208913247931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x3)
li x6, 0x4a0cb590595d013e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xd2a17bd15f8c701d # initialize rs1
li x3, 0xbb41f75c163ddc0c # initialize rs2
blt x1, x3, some_label_for_btype_68272927949430091850 # perform operation 
addi x0, x1, 1
some_label_for_btype_68272927949430091850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xbb41f75c163ddc0c # initialize rs1
li x3, 0xbb41f75c163ddc0c # initialize rs2
blt x1, x3, some_label_for_btype_68272927949430091851 # perform operation 
addi x0, x1, 1
some_label_for_btype_68272927949430091851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x4)
li x21, 0xc28ad509204d88db # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x141e5f548179bfcb # initialize rs1
li x4, 0xbaa9106041fce3f2 # initialize rs2
blt x17, x4, some_label_for_btype_162783084025243580380 # perform operation 
addi x0, x1, 1
some_label_for_btype_162783084025243580380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xbaa9106041fce3f2 # initialize rs1
li x4, 0xbaa9106041fce3f2 # initialize rs2
blt x17, x4, some_label_for_btype_162783084025243580381 # perform operation 
addi x0, x1, 1
some_label_for_btype_162783084025243580381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x5)
li x18, 0xa6221db04a2b70b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xf9b4937a3a1e7395 # initialize rs1
li x5, 0xc2a2ec6f40be2590 # initialize rs2
blt x28, x5, some_label_for_btype_69440018145716588700 # perform operation 
addi x0, x1, 1
some_label_for_btype_69440018145716588700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xc2a2ec6f40be2590 # initialize rs1
li x5, 0xc2a2ec6f40be2590 # initialize rs2
blt x28, x5, some_label_for_btype_69440018145716588701 # perform operation 
addi x0, x1, 1
some_label_for_btype_69440018145716588701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x6)
li x20, 0x14075e5d52a79490 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x527d75e4bf400793 # initialize rs1
li x6, 0x9fe3b406fd33d01a # initialize rs2
blt x22, x6, some_label_for_btype_102478628814107147170 # perform operation 
addi x0, x1, 1
some_label_for_btype_102478628814107147170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x9fe3b406fd33d01a # initialize rs1
li x6, 0x9fe3b406fd33d01a # initialize rs2
blt x22, x6, some_label_for_btype_102478628814107147171 # perform operation 
addi x0, x1, 1
some_label_for_btype_102478628814107147171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x7)
li x6, 0xb4d94f2fb273a311 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x73a8ba0792ba1ddb # initialize rs1
li x7, 0x0d92aad892fb58c3 # initialize rs2
blt x2, x7, some_label_for_btype_67970535761494153320 # perform operation 
addi x0, x1, 1
some_label_for_btype_67970535761494153320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0d92aad892fb58c3 # initialize rs1
li x7, 0x0d92aad892fb58c3 # initialize rs2
blt x2, x7, some_label_for_btype_67970535761494153321 # perform operation 
addi x0, x1, 1
some_label_for_btype_67970535761494153321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0x7a9247a995874283 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xe8c4b4304cd09db0 # initialize rs1
li x8, 0x968f35c7c6f22bb3 # initialize rs2
blt x21, x8, some_label_for_btype_140854445506019176180 # perform operation 
addi x0, x1, 1
some_label_for_btype_140854445506019176180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x968f35c7c6f22bb3 # initialize rs1
li x8, 0x968f35c7c6f22bb3 # initialize rs2
blt x21, x8, some_label_for_btype_140854445506019176181 # perform operation 
addi x0, x1, 1
some_label_for_btype_140854445506019176181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x9)
li x13, 0x314b4ebb295a1163 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xe3e1a9bf6f56743c # initialize rs1
li x9, 0x39821f5b1dbdcbab # initialize rs2
blt x1, x9, some_label_for_btype_90348882011013652200 # perform operation 
addi x0, x1, 1
some_label_for_btype_90348882011013652200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x39821f5b1dbdcbab # initialize rs1
li x9, 0x39821f5b1dbdcbab # initialize rs2
blt x1, x9, some_label_for_btype_90348882011013652201 # perform operation 
addi x0, x1, 1
some_label_for_btype_90348882011013652201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x10)
li x27, 0x1380ef4aa1575aeb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x570673346cc6947a # initialize rs1
li x10, 0x0943890c643fcc46 # initialize rs2
blt x3, x10, some_label_for_btype_49693422624696250570 # perform operation 
addi x0, x1, 1
some_label_for_btype_49693422624696250570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x0943890c643fcc46 # initialize rs1
li x10, 0x0943890c643fcc46 # initialize rs2
blt x3, x10, some_label_for_btype_49693422624696250571 # perform operation 
addi x0, x1, 1
some_label_for_btype_49693422624696250571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x11)
li x22, 0x95a6a802fca5b56f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x657d22a09521a599 # initialize rs1
li x11, 0xbda7666dc1b92a5e # initialize rs2
blt x31, x11, some_label_for_btype_149949803087979468820 # perform operation 
addi x0, x1, 1
some_label_for_btype_149949803087979468820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xbda7666dc1b92a5e # initialize rs1
li x11, 0xbda7666dc1b92a5e # initialize rs2
blt x31, x11, some_label_for_btype_149949803087979468821 # perform operation 
addi x0, x1, 1
some_label_for_btype_149949803087979468821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x12)
li x16, 0x8ed8deb36bc339c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x3df7f126dffd1598 # initialize rs1
li x12, 0x5eee5a371ed13d7d # initialize rs2
blt x8, x12, some_label_for_btype_125465895557545607030 # perform operation 
addi x0, x1, 1
some_label_for_btype_125465895557545607030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x5eee5a371ed13d7d # initialize rs1
li x12, 0x5eee5a371ed13d7d # initialize rs2
blt x8, x12, some_label_for_btype_125465895557545607031 # perform operation 
addi x0, x1, 1
some_label_for_btype_125465895557545607031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x13)
li x1, 0xf990a51addf9bc7a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xd6162601970e1e54 # initialize rs1
li x13, 0x90b01ef118f696c1 # initialize rs2
blt x23, x13, some_label_for_btype_78060169095762098470 # perform operation 
addi x0, x1, 1
some_label_for_btype_78060169095762098470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x90b01ef118f696c1 # initialize rs1
li x13, 0x90b01ef118f696c1 # initialize rs2
blt x23, x13, some_label_for_btype_78060169095762098471 # perform operation 
addi x0, x1, 1
some_label_for_btype_78060169095762098471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0x8f7bd3a19a03b6d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x18213f3772ea1050 # initialize rs1
li x14, 0xce7913533d9f4e91 # initialize rs2
blt x23, x14, some_label_for_btype_20568723414079414320 # perform operation 
addi x0, x1, 1
some_label_for_btype_20568723414079414320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xce7913533d9f4e91 # initialize rs1
li x14, 0xce7913533d9f4e91 # initialize rs2
blt x23, x14, some_label_for_btype_20568723414079414321 # perform operation 
addi x0, x1, 1
some_label_for_btype_20568723414079414321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x15)
li x27, 0x1e09bd5694d6f9ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0267e83ce5a10d80 # initialize rs1
li x15, 0xd64855914d93260b # initialize rs2
blt x18, x15, some_label_for_btype_165957067507920687890 # perform operation 
addi x0, x1, 1
some_label_for_btype_165957067507920687890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xd64855914d93260b # initialize rs1
li x15, 0xd64855914d93260b # initialize rs2
blt x18, x15, some_label_for_btype_165957067507920687891 # perform operation 
addi x0, x1, 1
some_label_for_btype_165957067507920687891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x16)
li x26, 0x07b4f63ed10d555b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x124cceb74d7884d8 # initialize rs1
li x16, 0xe5205fbede8c51b8 # initialize rs2
blt x15, x16, some_label_for_btype_73693281651919962100 # perform operation 
addi x0, x1, 1
some_label_for_btype_73693281651919962100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xe5205fbede8c51b8 # initialize rs1
li x16, 0xe5205fbede8c51b8 # initialize rs2
blt x15, x16, some_label_for_btype_73693281651919962101 # perform operation 
addi x0, x1, 1
some_label_for_btype_73693281651919962101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x17)
li x4, 0xf4ed50d2fc043faf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x405cd17f949297c5 # initialize rs1
li x17, 0x6e92422ebf89d6cf # initialize rs2
blt x26, x17, some_label_for_btype_39709089058181976640 # perform operation 
addi x0, x1, 1
some_label_for_btype_39709089058181976640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x6e92422ebf89d6cf # initialize rs1
li x17, 0x6e92422ebf89d6cf # initialize rs2
blt x26, x17, some_label_for_btype_39709089058181976641 # perform operation 
addi x0, x1, 1
some_label_for_btype_39709089058181976641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x18)
li x10, 0xfed4ffb804675624 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x945d0ed6f40eff18 # initialize rs1
li x18, 0xb5362581c2f35514 # initialize rs2
blt x29, x18, some_label_for_btype_64745473605473011370 # perform operation 
addi x0, x1, 1
some_label_for_btype_64745473605473011370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xb5362581c2f35514 # initialize rs1
li x18, 0xb5362581c2f35514 # initialize rs2
blt x29, x18, some_label_for_btype_64745473605473011371 # perform operation 
addi x0, x1, 1
some_label_for_btype_64745473605473011371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x19)
li x26, 0x2a5c9972ffcc3af3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x5d7174ba02fb3079 # initialize rs1
li x19, 0x66b4a95496fabd6e # initialize rs2
blt x3, x19, some_label_for_btype_79772185106339578810 # perform operation 
addi x0, x1, 1
some_label_for_btype_79772185106339578810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x66b4a95496fabd6e # initialize rs1
li x19, 0x66b4a95496fabd6e # initialize rs2
blt x3, x19, some_label_for_btype_79772185106339578811 # perform operation 
addi x0, x1, 1
some_label_for_btype_79772185106339578811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x20)
li x8, 0x15ec51ffbf0b51b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xd40903548abc112e # initialize rs1
li x20, 0xd41522f5d6845349 # initialize rs2
blt x24, x20, some_label_for_btype_46491333747952009700 # perform operation 
addi x0, x1, 1
some_label_for_btype_46491333747952009700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xd41522f5d6845349 # initialize rs1
li x20, 0xd41522f5d6845349 # initialize rs2
blt x24, x20, some_label_for_btype_46491333747952009701 # perform operation 
addi x0, x1, 1
some_label_for_btype_46491333747952009701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x21)
li x15, 0x03e2d87360bb6a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x467dd8d825dd5832 # initialize rs1
li x21, 0xcede9b7532d9a552 # initialize rs2
blt x29, x21, some_label_for_btype_130168052189891588400 # perform operation 
addi x0, x1, 1
some_label_for_btype_130168052189891588400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xcede9b7532d9a552 # initialize rs1
li x21, 0xcede9b7532d9a552 # initialize rs2
blt x29, x21, some_label_for_btype_130168052189891588401 # perform operation 
addi x0, x1, 1
some_label_for_btype_130168052189891588401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x22)
li x1, 0xc39b59532dd69266 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x7dfde0e95102a05d # initialize rs1
li x22, 0xfe6328adb2c0c9e0 # initialize rs2
blt x5, x22, some_label_for_btype_53886973371331564300 # perform operation 
addi x0, x1, 1
some_label_for_btype_53886973371331564300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xfe6328adb2c0c9e0 # initialize rs1
li x22, 0xfe6328adb2c0c9e0 # initialize rs2
blt x5, x22, some_label_for_btype_53886973371331564301 # perform operation 
addi x0, x1, 1
some_label_for_btype_53886973371331564301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x23)
li x13, 0x478ce0272df41f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xaca187f71ce562d1 # initialize rs1
li x23, 0x526b4b856a28f026 # initialize rs2
blt x5, x23, some_label_for_btype_88268487522431814090 # perform operation 
addi x0, x1, 1
some_label_for_btype_88268487522431814090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x526b4b856a28f026 # initialize rs1
li x23, 0x526b4b856a28f026 # initialize rs2
blt x5, x23, some_label_for_btype_88268487522431814091 # perform operation 
addi x0, x1, 1
some_label_for_btype_88268487522431814091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x24)
li x7, 0xf8117cdcc2631611 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x69eee757b50a5205 # initialize rs1
li x24, 0x6da8bf0b29b603a6 # initialize rs2
blt x21, x24, some_label_for_btype_147341819368148143330 # perform operation 
addi x0, x1, 1
some_label_for_btype_147341819368148143330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x6da8bf0b29b603a6 # initialize rs1
li x24, 0x6da8bf0b29b603a6 # initialize rs2
blt x21, x24, some_label_for_btype_147341819368148143331 # perform operation 
addi x0, x1, 1
some_label_for_btype_147341819368148143331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x25)
li x27, 0x850b6819d52758c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x26bd2007008cee52 # initialize rs1
li x25, 0xdbe80dd6c7e0e2dc # initialize rs2
blt x15, x25, some_label_for_btype_49395424729726320840 # perform operation 
addi x0, x1, 1
some_label_for_btype_49395424729726320840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xdbe80dd6c7e0e2dc # initialize rs1
li x25, 0xdbe80dd6c7e0e2dc # initialize rs2
blt x15, x25, some_label_for_btype_49395424729726320841 # perform operation 
addi x0, x1, 1
some_label_for_btype_49395424729726320841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x26)
li x8, 0xa1dcbda24fac605e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x69bcd4905955b68c # initialize rs1
li x26, 0xbbca7244f659696b # initialize rs2
blt x15, x26, some_label_for_btype_41966492440258248680 # perform operation 
addi x0, x1, 1
some_label_for_btype_41966492440258248680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xbbca7244f659696b # initialize rs1
li x26, 0xbbca7244f659696b # initialize rs2
blt x15, x26, some_label_for_btype_41966492440258248681 # perform operation 
addi x0, x1, 1
some_label_for_btype_41966492440258248681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x27)
li x12, 0xd4df1ea4934bc681 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x699b4065a4679b29 # initialize rs1
li x27, 0xbc7646cc802268bb # initialize rs2
blt x30, x27, some_label_for_btype_106123826816055477970 # perform operation 
addi x0, x1, 1
some_label_for_btype_106123826816055477970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xbc7646cc802268bb # initialize rs1
li x27, 0xbc7646cc802268bb # initialize rs2
blt x30, x27, some_label_for_btype_106123826816055477971 # perform operation 
addi x0, x1, 1
some_label_for_btype_106123826816055477971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x28)
li x25, 0x555e3ad924e0c73b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x4af9d624aa108417 # initialize rs1
li x28, 0x7ce821bdcf6ffa25 # initialize rs2
blt x12, x28, some_label_for_btype_78745450614581042150 # perform operation 
addi x0, x1, 1
some_label_for_btype_78745450614581042150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7ce821bdcf6ffa25 # initialize rs1
li x28, 0x7ce821bdcf6ffa25 # initialize rs2
blt x12, x28, some_label_for_btype_78745450614581042151 # perform operation 
addi x0, x1, 1
some_label_for_btype_78745450614581042151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x29)
li x28, 0xc15ed3c891355345 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x028da5fbee827bb6 # initialize rs1
li x29, 0xa89d21e21b55a4de # initialize rs2
blt x19, x29, some_label_for_btype_158919250659530526790 # perform operation 
addi x0, x1, 1
some_label_for_btype_158919250659530526790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xa89d21e21b55a4de # initialize rs1
li x29, 0xa89d21e21b55a4de # initialize rs2
blt x19, x29, some_label_for_btype_158919250659530526791 # perform operation 
addi x0, x1, 1
some_label_for_btype_158919250659530526791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x30)
li x18, 0x86845df496514566 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x8eb37abbef3fa972 # initialize rs1
li x30, 0x2d4c3a192a8f96cc # initialize rs2
blt x23, x30, some_label_for_btype_147762547498570652150 # perform operation 
addi x0, x1, 1
some_label_for_btype_147762547498570652150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x2d4c3a192a8f96cc # initialize rs1
li x30, 0x2d4c3a192a8f96cc # initialize rs2
blt x23, x30, some_label_for_btype_147762547498570652151 # perform operation 
addi x0, x1, 1
some_label_for_btype_147762547498570652151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x31)
li x3, 0x1fb543370d35fd3a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x97b885e95b90c105 # initialize rs1
li x31, 0x9142ac44e8fab813 # initialize rs2
blt x28, x31, some_label_for_btype_168266643109728068600 # perform operation 
addi x0, x1, 1
some_label_for_btype_168266643109728068600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x9142ac44e8fab813 # initialize rs1
li x31, 0x9142ac44e8fab813 # initialize rs2
blt x28, x31, some_label_for_btype_168266643109728068601 # perform operation 
addi x0, x1, 1
some_label_for_btype_168266643109728068601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x543d3cc52fdc4c7f)
li x3, 0x56ad1ad90b8e588b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x56ad1ad90b8e588b # initialize rs1
li x0, 0x500ac60439ff3203 # initialize rs2
blt x11, x0, some_label_for_btype_48522801590844262050 # perform operation 
addi x0, x1, 1
some_label_for_btype_48522801590844262050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x500ac60439ff3203 # initialize rs1
li x0, 0x500ac60439ff3203 # initialize rs2
blt x11, x0, some_label_for_btype_48522801590844262051 # perform operation 
addi x0, x1, 1
some_label_for_btype_48522801590844262051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x7612ee79e71d4201 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x0000000000000000 # initialize rs1
li x6, 0x5c60bd2f528b8d18 # initialize rs2
blt x25, x6, some_label_for_btype_44406418043458266790 # perform operation 
addi x0, x1, 1
some_label_for_btype_44406418043458266790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x5c60bd2f528b8d18 # initialize rs1
li x6, 0x5c60bd2f528b8d18 # initialize rs2
blt x25, x6, some_label_for_btype_44406418043458266791 # perform operation 
addi x0, x1, 1
some_label_for_btype_44406418043458266791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0xdb06eda68e420b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000000000001 # initialize rs1
li x20, 0x138b88ce7cf9da22 # initialize rs2
blt x27, x20, some_label_for_btype_42382392785275165660 # perform operation 
addi x0, x1, 1
some_label_for_btype_42382392785275165660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x138b88ce7cf9da22 # initialize rs1
li x20, 0x138b88ce7cf9da22 # initialize rs2
blt x27, x20, some_label_for_btype_42382392785275165661 # perform operation 
addi x0, x1, 1
some_label_for_btype_42382392785275165661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0x8a764c33d8f4f59f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000000000002 # initialize rs1
li x19, 0x8742992c2e532c4d # initialize rs2
blt x3, x19, some_label_for_btype_78653898838433439990 # perform operation 
addi x0, x1, 1
some_label_for_btype_78653898838433439990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x8742992c2e532c4d # initialize rs1
li x19, 0x8742992c2e532c4d # initialize rs2
blt x3, x19, some_label_for_btype_78653898838433439991 # perform operation 
addi x0, x1, 1
some_label_for_btype_78653898838433439991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x21, 0x7b1d350328f5e358 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x8000000000000000 # initialize rs1
li x22, 0xbd020c04367eda2c # initialize rs2
blt x8, x22, some_label_for_btype_144479974968293959080 # perform operation 
addi x0, x1, 1
some_label_for_btype_144479974968293959080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xbd020c04367eda2c # initialize rs1
li x22, 0xbd020c04367eda2c # initialize rs2
blt x8, x22, some_label_for_btype_144479974968293959081 # perform operation 
addi x0, x1, 1
some_label_for_btype_144479974968293959081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x28, 0xa80599b3a4e044dd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x8000000000000001 # initialize rs1
li x6, 0xd3c4b6b210ced612 # initialize rs2
blt x19, x6, some_label_for_btype_97198363950827382650 # perform operation 
addi x0, x1, 1
some_label_for_btype_97198363950827382650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xd3c4b6b210ced612 # initialize rs1
li x6, 0xd3c4b6b210ced612 # initialize rs2
blt x19, x6, some_label_for_btype_97198363950827382651 # perform operation 
addi x0, x1, 1
some_label_for_btype_97198363950827382651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0xf3b459ab71d3c66e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7fffffffffffffff # initialize rs1
li x27, 0xf0b344395329cb40 # initialize rs2
blt x18, x27, some_label_for_btype_140101993804783555150 # perform operation 
addi x0, x1, 1
some_label_for_btype_140101993804783555150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xf0b344395329cb40 # initialize rs1
li x27, 0xf0b344395329cb40 # initialize rs2
blt x18, x27, some_label_for_btype_140101993804783555151 # perform operation 
addi x0, x1, 1
some_label_for_btype_140101993804783555151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x8, 0x1eb08b38e1f717e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x7ffffffffffffffe # initialize rs1
li x30, 0x9b310199728dc488 # initialize rs2
blt x12, x30, some_label_for_btype_163415065328425310010 # perform operation 
addi x0, x1, 1
some_label_for_btype_163415065328425310010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x9b310199728dc488 # initialize rs1
li x30, 0x9b310199728dc488 # initialize rs2
blt x12, x30, some_label_for_btype_163415065328425310011 # perform operation 
addi x0, x1, 1
some_label_for_btype_163415065328425310011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x20, 0x8d64ab72c1827987 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xffffffffffffffff # initialize rs1
li x7, 0x37b17813e0402745 # initialize rs2
blt x5, x7, some_label_for_btype_56282852419657453070 # perform operation 
addi x0, x1, 1
some_label_for_btype_56282852419657453070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x37b17813e0402745 # initialize rs1
li x7, 0x37b17813e0402745 # initialize rs2
blt x5, x7, some_label_for_btype_56282852419657453071 # perform operation 
addi x0, x1, 1
some_label_for_btype_56282852419657453071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x20, 0x2e16e14bdf573d85 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xfffffffffffffffe # initialize rs1
li x21, 0xef74a59dddf8f57f # initialize rs2
blt x6, x21, some_label_for_btype_181113453239214464310 # perform operation 
addi x0, x1, 1
some_label_for_btype_181113453239214464310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xef74a59dddf8f57f # initialize rs1
li x21, 0xef74a59dddf8f57f # initialize rs2
blt x6, x21, some_label_for_btype_181113453239214464311 # perform operation 
addi x0, x1, 1
some_label_for_btype_181113453239214464311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x12, 0x5f3bec91104d9b15 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x2dd066f40d6dbb1f # initialize rs2
blt x26, x3, some_label_for_btype_169304285139683955750 # perform operation 
addi x0, x1, 1
some_label_for_btype_169304285139683955750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x2dd066f40d6dbb1f # initialize rs1
li x3, 0x2dd066f40d6dbb1f # initialize rs2
blt x26, x3, some_label_for_btype_169304285139683955751 # perform operation 
addi x0, x1, 1
some_label_for_btype_169304285139683955751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0x7d71b3c3518b902b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xbeb0ad9d128726b8 # initialize rs2
blt x26, x13, some_label_for_btype_135274003300238422830 # perform operation 
addi x0, x1, 1
some_label_for_btype_135274003300238422830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xbeb0ad9d128726b8 # initialize rs1
li x13, 0xbeb0ad9d128726b8 # initialize rs2
blt x26, x13, some_label_for_btype_135274003300238422831 # perform operation 
addi x0, x1, 1
some_label_for_btype_135274003300238422831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x29, 0xb1c7a86162264d60 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x5555555555555555 # initialize rs1
li x27, 0xa94be3e83917cf2a # initialize rs2
blt x22, x27, some_label_for_btype_77503941207255587130 # perform operation 
addi x0, x1, 1
some_label_for_btype_77503941207255587130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xa94be3e83917cf2a # initialize rs1
li x27, 0xa94be3e83917cf2a # initialize rs2
blt x22, x27, some_label_for_btype_77503941207255587131 # perform operation 
addi x0, x1, 1
some_label_for_btype_77503941207255587131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x4, 0x50a3483e9e9ff130 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x00000000ffffffff # initialize rs1
li x26, 0xf3e35f9bcb82d757 # initialize rs2
blt x11, x26, some_label_for_btype_142487259141291392310 # perform operation 
addi x0, x1, 1
some_label_for_btype_142487259141291392310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xf3e35f9bcb82d757 # initialize rs1
li x26, 0xf3e35f9bcb82d757 # initialize rs2
blt x11, x26, some_label_for_btype_142487259141291392311 # perform operation 
addi x0, x1, 1
some_label_for_btype_142487259141291392311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x5, 0x340d0494f54ccaee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000000fffffffe # initialize rs1
li x30, 0x09e58fb738e18794 # initialize rs2
blt x15, x30, some_label_for_btype_132240934105283675150 # perform operation 
addi x0, x1, 1
some_label_for_btype_132240934105283675150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x09e58fb738e18794 # initialize rs1
li x30, 0x09e58fb738e18794 # initialize rs2
blt x15, x30, some_label_for_btype_132240934105283675151 # perform operation 
addi x0, x1, 1
some_label_for_btype_132240934105283675151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0x57377316eaf3d9af # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0000000100000000 # initialize rs1
li x21, 0xa8b09e3d8f971952 # initialize rs2
blt x26, x21, some_label_for_btype_107370235249663473640 # perform operation 
addi x0, x1, 1
some_label_for_btype_107370235249663473640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xa8b09e3d8f971952 # initialize rs1
li x21, 0xa8b09e3d8f971952 # initialize rs2
blt x26, x21, some_label_for_btype_107370235249663473641 # perform operation 
addi x0, x1, 1
some_label_for_btype_107370235249663473641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0xd26dc618a0e616b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000100000001 # initialize rs1
li x8, 0xb9a910de028095c6 # initialize rs2
blt x18, x8, some_label_for_btype_35079835370504244110 # perform operation 
addi x0, x1, 1
some_label_for_btype_35079835370504244110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xb9a910de028095c6 # initialize rs1
li x8, 0xb9a910de028095c6 # initialize rs2
blt x18, x8, some_label_for_btype_35079835370504244111 # perform operation 
addi x0, x1, 1
some_label_for_btype_35079835370504244111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0x76d8777ec96e1a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xba0b5574d5365b44 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
blt x14, x3, some_label_for_btype_57231314033437730380 # perform operation 
addi x0, x1, 1
some_label_for_btype_57231314033437730380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
blt x14, x3, some_label_for_btype_57231314033437730381 # perform operation 
addi x0, x1, 1
some_label_for_btype_57231314033437730381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x2, 0x7e516267f5d987fb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x8aae223698832a39 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
blt x23, x28, some_label_for_btype_161963071179845615860 # perform operation 
addi x0, x1, 1
some_label_for_btype_161963071179845615860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
blt x23, x28, some_label_for_btype_161963071179845615861 # perform operation 
addi x0, x1, 1
some_label_for_btype_161963071179845615861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x29, 0x5e35ec4555eb0a99 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x00b1caaac3fc299e # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
blt x10, x7, some_label_for_btype_40245192651016648520 # perform operation 
addi x0, x1, 1
some_label_for_btype_40245192651016648520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000000000002 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
blt x10, x7, some_label_for_btype_40245192651016648521 # perform operation 
addi x0, x1, 1
some_label_for_btype_40245192651016648521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x6, 0xb160733bb5104d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xa780b5dd49d478dd # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
blt x4, x30, some_label_for_btype_47648378053706669740 # perform operation 
addi x0, x1, 1
some_label_for_btype_47648378053706669740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x8000000000000000 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
blt x4, x30, some_label_for_btype_47648378053706669741 # perform operation 
addi x0, x1, 1
some_label_for_btype_47648378053706669741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x20, 0x49787400feec7d7d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xc86b6ca3917c3438 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
blt x19, x11, some_label_for_btype_89074348944157991140 # perform operation 
addi x0, x1, 1
some_label_for_btype_89074348944157991140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x8000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
blt x19, x11, some_label_for_btype_89074348944157991141 # perform operation 
addi x0, x1, 1
some_label_for_btype_89074348944157991141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x14, 0xb22123e000e42f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x69cc107616c15f4d # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
blt x31, x23, some_label_for_btype_46618773191151821070 # perform operation 
addi x0, x1, 1
some_label_for_btype_46618773191151821070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7fffffffffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
blt x31, x23, some_label_for_btype_46618773191151821071 # perform operation 
addi x0, x1, 1
some_label_for_btype_46618773191151821071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x2, 0x1c1157e94a4056ee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x278c2850b5f75c85 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
blt x15, x1, some_label_for_btype_102569139278489300930 # perform operation 
addi x0, x1, 1
some_label_for_btype_102569139278489300930:
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
blt x15, x1, some_label_for_btype_102569139278489300931 # perform operation 
addi x0, x1, 1
some_label_for_btype_102569139278489300931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x1, 0x80bc584e5b412ce1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xdf59dc9ab7e81a1f # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
blt x16, x6, some_label_for_btype_98003581109771831210 # perform operation 
addi x0, x1, 1
some_label_for_btype_98003581109771831210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xffffffffffffffff # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
blt x16, x6, some_label_for_btype_98003581109771831211 # perform operation 
addi x0, x1, 1
some_label_for_btype_98003581109771831211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x20, 0xdfa4d2a951eb6a35 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x93d1992e1c4f833e # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
blt x12, x27, some_label_for_btype_178433053633620787650 # perform operation 
addi x0, x1, 1
some_label_for_btype_178433053633620787650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xfffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
blt x12, x27, some_label_for_btype_178433053633620787651 # perform operation 
addi x0, x1, 1
some_label_for_btype_178433053633620787651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x7, 0x4bf6978d1bfcb41b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x6b688a2c8d2b9dfa # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
blt x25, x28, some_label_for_btype_139372599236553959620 # perform operation 
addi x0, x1, 1
some_label_for_btype_139372599236553959620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
blt x25, x28, some_label_for_btype_139372599236553959621 # perform operation 
addi x0, x1, 1
some_label_for_btype_139372599236553959621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0x83d7caae0ba49ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x22362384d160d005 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x17, x18, some_label_for_btype_29542963645002847730 # perform operation 
addi x0, x1, 1
some_label_for_btype_29542963645002847730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x17, x18, some_label_for_btype_29542963645002847731 # perform operation 
addi x0, x1, 1
some_label_for_btype_29542963645002847731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x23, 0x9aab46e22cd97030 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xf714620e4e5db669 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
blt x16, x11, some_label_for_btype_111525561572661219780 # perform operation 
addi x0, x1, 1
some_label_for_btype_111525561572661219780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
blt x16, x11, some_label_for_btype_111525561572661219781 # perform operation 
addi x0, x1, 1
some_label_for_btype_111525561572661219781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x10, 0x6eb5ecdea3ad1922 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xce58d91559398c52 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
blt x24, x18, some_label_for_btype_122136138035665469040 # perform operation 
addi x0, x1, 1
some_label_for_btype_122136138035665469040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x00000000ffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
blt x24, x18, some_label_for_btype_122136138035665469041 # perform operation 
addi x0, x1, 1
some_label_for_btype_122136138035665469041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0xc59d50c97e173363 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x8d56b5b0e948af97 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
blt x12, x28, some_label_for_btype_60368589187108622440 # perform operation 
addi x0, x1, 1
some_label_for_btype_60368589187108622440:
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
blt x12, x28, some_label_for_btype_60368589187108622441 # perform operation 
addi x0, x1, 1
some_label_for_btype_60368589187108622441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x10, 0x13b2ac07ff260fee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x06389beb705897c8 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
blt x23, x5, some_label_for_btype_49160735430742168670 # perform operation 
addi x0, x1, 1
some_label_for_btype_49160735430742168670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x0000000100000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
blt x23, x5, some_label_for_btype_49160735430742168671 # perform operation 
addi x0, x1, 1
some_label_for_btype_49160735430742168671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x15, 0x56331718c764c119 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x3f3d85fff9309849 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
blt x5, x11, some_label_for_btype_107103918755035630140 # perform operation 
addi x0, x1, 1
some_label_for_btype_107103918755035630140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x0000000100000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
blt x5, x11, some_label_for_btype_107103918755035630141 # perform operation 
addi x0, x1, 1
some_label_for_btype_107103918755035630141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x15, 0x16a51b00ddf862f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
blt x14, x18, some_label_for_btype_89648475544209505580 # perform operation 
addi x0, x1, 1
some_label_for_btype_89648475544209505580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
blt x14, x18, some_label_for_btype_89648475544209505581 # perform operation 
addi x0, x1, 1
some_label_for_btype_89648475544209505581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x24, 0xa5668a560b0aff2d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
blt x27, x25, some_label_for_btype_46933962299186372660 # perform operation 
addi x0, x1, 1
some_label_for_btype_46933962299186372660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
blt x27, x25, some_label_for_btype_46933962299186372661 # perform operation 
addi x0, x1, 1
some_label_for_btype_46933962299186372661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x13, 0x4add4f370954d86e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
blt x24, x9, some_label_for_btype_124436014844285941850 # perform operation 
addi x0, x1, 1
some_label_for_btype_124436014844285941850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
blt x24, x9, some_label_for_btype_124436014844285941851 # perform operation 
addi x0, x1, 1
some_label_for_btype_124436014844285941851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x16, 0x2524a21c2d0c2fe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x0000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
blt x20, x10, some_label_for_btype_83524408168106658450 # perform operation 
addi x0, x1, 1
some_label_for_btype_83524408168106658450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x8000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
blt x20, x10, some_label_for_btype_83524408168106658451 # perform operation 
addi x0, x1, 1
some_label_for_btype_83524408168106658451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x17, 0x4c410e09df6cfe2e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000000000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
blt x22, x18, some_label_for_btype_37884776672873732830 # perform operation 
addi x0, x1, 1
some_label_for_btype_37884776672873732830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
blt x22, x18, some_label_for_btype_37884776672873732831 # perform operation 
addi x0, x1, 1
some_label_for_btype_37884776672873732831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x15, 0xd1754c713cd2e910 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x0000000000000000 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
blt x11, x2, some_label_for_btype_98929991986552240870 # perform operation 
addi x0, x1, 1
some_label_for_btype_98929991986552240870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x7fffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
blt x11, x2, some_label_for_btype_98929991986552240871 # perform operation 
addi x0, x1, 1
some_label_for_btype_98929991986552240871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x11, 0x5903b7fb12c0f68a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000000000000 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
blt x3, x28, some_label_for_btype_118073459877513919910 # perform operation 
addi x0, x1, 1
some_label_for_btype_118073459877513919910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
blt x3, x28, some_label_for_btype_118073459877513919911 # perform operation 
addi x0, x1, 1
some_label_for_btype_118073459877513919911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x28, 0x7797b4b20945d47b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x0000000000000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
blt x17, x19, some_label_for_btype_82946886716720109790 # perform operation 
addi x0, x1, 1
some_label_for_btype_82946886716720109790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
blt x17, x19, some_label_for_btype_82946886716720109791 # perform operation 
addi x0, x1, 1
some_label_for_btype_82946886716720109791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x17, 0x47474e1275966912 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000000000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
blt x6, x16, some_label_for_btype_11632899346922341790 # perform operation 
addi x0, x1, 1
some_label_for_btype_11632899346922341790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
blt x6, x16, some_label_for_btype_11632899346922341791 # perform operation 
addi x0, x1, 1
some_label_for_btype_11632899346922341791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x21, 0xa94c3411f14156dc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0000000000000000 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
blt x10, x30, some_label_for_btype_34218966014708939780 # perform operation 
addi x0, x1, 1
some_label_for_btype_34218966014708939780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
blt x10, x30, some_label_for_btype_34218966014708939781 # perform operation 
addi x0, x1, 1
some_label_for_btype_34218966014708939781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xea123884de082235 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0000000000000000 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x26, x18, some_label_for_btype_81394250200915008050 # perform operation 
addi x0, x1, 1
some_label_for_btype_81394250200915008050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x26, x18, some_label_for_btype_81394250200915008051 # perform operation 
addi x0, x1, 1
some_label_for_btype_81394250200915008051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x15, 0x9b81a252e66e3892 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0000000000000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
blt x14, x12, some_label_for_btype_149992216396073430570 # perform operation 
addi x0, x1, 1
some_label_for_btype_149992216396073430570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x5555555555555555 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
blt x14, x12, some_label_for_btype_149992216396073430571 # perform operation 
addi x0, x1, 1
some_label_for_btype_149992216396073430571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x16, 0x1853db2afe58f51b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0000000000000000 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
blt x26, x28, some_label_for_btype_163172374530232136360 # perform operation 
addi x0, x1, 1
some_label_for_btype_163172374530232136360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x00000000ffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
blt x26, x28, some_label_for_btype_163172374530232136361 # perform operation 
addi x0, x1, 1
some_label_for_btype_163172374530232136361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x3, 0x18d662fa23c3663e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x0000000000000000 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
blt x5, x17, some_label_for_btype_50662349415348209180 # perform operation 
addi x0, x1, 1
some_label_for_btype_50662349415348209180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x00000000fffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
blt x5, x17, some_label_for_btype_50662349415348209181 # perform operation 
addi x0, x1, 1
some_label_for_btype_50662349415348209181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x11, 0x73f9cc6210169b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000000000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
blt x19, x10, some_label_for_btype_163124712034127520430 # perform operation 
addi x0, x1, 1
some_label_for_btype_163124712034127520430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000100000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
blt x19, x10, some_label_for_btype_163124712034127520431 # perform operation 
addi x0, x1, 1
some_label_for_btype_163124712034127520431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x1, 0x3c788647c1fb8135 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000000000000 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
blt x2, x24, some_label_for_btype_107453973122677360980 # perform operation 
addi x0, x1, 1
some_label_for_btype_107453973122677360980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000100000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
blt x2, x24, some_label_for_btype_107453973122677360981 # perform operation 
addi x0, x1, 1
some_label_for_btype_107453973122677360981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x25, 0x260989ad541c5765 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
blt x8, x23, some_label_for_btype_140869210165779081650 # perform operation 
addi x0, x1, 1
some_label_for_btype_140869210165779081650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000000000000 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
blt x8, x23, some_label_for_btype_140869210165779081651 # perform operation 
addi x0, x1, 1
some_label_for_btype_140869210165779081651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x22, 0xa935111e4a44c42b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000000000001 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
blt x27, x21, some_label_for_btype_106602565233195916150 # perform operation 
addi x0, x1, 1
some_label_for_btype_106602565233195916150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000000000001 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
blt x27, x21, some_label_for_btype_106602565233195916151 # perform operation 
addi x0, x1, 1
some_label_for_btype_106602565233195916151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x2, 0x92eefc6fc18fdd5a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
blt x24, x25, some_label_for_btype_97417708864885312510 # perform operation 
addi x0, x1, 1
some_label_for_btype_97417708864885312510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
blt x24, x25, some_label_for_btype_97417708864885312511 # perform operation 
addi x0, x1, 1
some_label_for_btype_97417708864885312511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x2, 0x59e150268222e5ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000000000001 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
blt x31, x13, some_label_for_btype_111574284629747601340 # perform operation 
addi x0, x1, 1
some_label_for_btype_111574284629747601340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x8000000000000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
blt x31, x13, some_label_for_btype_111574284629747601341 # perform operation 
addi x0, x1, 1
some_label_for_btype_111574284629747601341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x26, 0x5d6a261d2fdde4e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x0000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
blt x13, x29, some_label_for_btype_86431917880645116210 # perform operation 
addi x0, x1, 1
some_label_for_btype_86431917880645116210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
blt x13, x29, some_label_for_btype_86431917880645116211 # perform operation 
addi x0, x1, 1
some_label_for_btype_86431917880645116211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x22, 0x6bb28983c79547d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000000000001 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
blt x31, x10, some_label_for_btype_78803223386854698490 # perform operation 
addi x0, x1, 1
some_label_for_btype_78803223386854698490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7fffffffffffffff # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
blt x31, x10, some_label_for_btype_78803223386854698491 # perform operation 
addi x0, x1, 1
some_label_for_btype_78803223386854698491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x20, 0xf3097ec32234bc9b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0000000000000001 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
blt x10, x5, some_label_for_btype_150147604086635971260 # perform operation 
addi x0, x1, 1
some_label_for_btype_150147604086635971260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x7ffffffffffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
blt x10, x5, some_label_for_btype_150147604086635971261 # perform operation 
addi x0, x1, 1
some_label_for_btype_150147604086635971261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x29, 0xd38641712eab6be4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x0000000000000001 # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
blt x25, x4, some_label_for_btype_159103117400575826390 # perform operation 
addi x0, x1, 1
some_label_for_btype_159103117400575826390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xffffffffffffffff # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
blt x25, x4, some_label_for_btype_159103117400575826391 # perform operation 
addi x0, x1, 1
some_label_for_btype_159103117400575826391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x25, 0xac1f047c34972e9e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0000000000000001 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
blt x15, x17, some_label_for_btype_141474315183525696170 # perform operation 
addi x0, x1, 1
some_label_for_btype_141474315183525696170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xfffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
blt x15, x17, some_label_for_btype_141474315183525696171 # perform operation 
addi x0, x1, 1
some_label_for_btype_141474315183525696171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x21, 0xdb0e1c792fed33b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000000000001 # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
blt x24, x18, some_label_for_btype_96170467172905911560 # perform operation 
addi x0, x1, 1
some_label_for_btype_96170467172905911560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
blt x24, x18, some_label_for_btype_96170467172905911561 # perform operation 
addi x0, x1, 1
some_label_for_btype_96170467172905911561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x0f23d5129e54e608 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000000000001 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x24, x13, some_label_for_btype_71845494606329104460 # perform operation 
addi x0, x1, 1
some_label_for_btype_71845494606329104460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x24, x13, some_label_for_btype_71845494606329104461 # perform operation 
addi x0, x1, 1
some_label_for_btype_71845494606329104461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x31, 0xcf254b3472a30a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x0000000000000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
blt x20, x29, some_label_for_btype_145766202233529862770 # perform operation 
addi x0, x1, 1
some_label_for_btype_145766202233529862770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x5555555555555555 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
blt x20, x29, some_label_for_btype_145766202233529862771 # perform operation 
addi x0, x1, 1
some_label_for_btype_145766202233529862771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x17, 0x14254d7b32d19fdd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000000000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
blt x22, x5, some_label_for_btype_44784049065895346170 # perform operation 
addi x0, x1, 1
some_label_for_btype_44784049065895346170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
blt x22, x5, some_label_for_btype_44784049065895346171 # perform operation 
addi x0, x1, 1
some_label_for_btype_44784049065895346171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x26, 0x448fc4aac19debfc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000000000001 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
blt x21, x11, some_label_for_btype_98970641993606050430 # perform operation 
addi x0, x1, 1
some_label_for_btype_98970641993606050430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
blt x21, x11, some_label_for_btype_98970641993606050431 # perform operation 
addi x0, x1, 1
some_label_for_btype_98970641993606050431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x2, 0x67315fd68b6e77cb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0000000000000001 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
blt x14, x6, some_label_for_btype_44820316448029703290 # perform operation 
addi x0, x1, 1
some_label_for_btype_44820316448029703290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000100000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
blt x14, x6, some_label_for_btype_44820316448029703291 # perform operation 
addi x0, x1, 1
some_label_for_btype_44820316448029703291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x16, 0xb604259f276c1c2d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000000000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
blt x19, x13, some_label_for_btype_55498494253405219780 # perform operation 
addi x0, x1, 1
some_label_for_btype_55498494253405219780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000100000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
blt x19, x13, some_label_for_btype_55498494253405219781 # perform operation 
addi x0, x1, 1
some_label_for_btype_55498494253405219781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x11, 0x8b4ec35db8ed1fda # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000000000002 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
blt x19, x10, some_label_for_btype_15912139150865906540 # perform operation 
addi x0, x1, 1
some_label_for_btype_15912139150865906540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
blt x19, x10, some_label_for_btype_15912139150865906541 # perform operation 
addi x0, x1, 1
some_label_for_btype_15912139150865906541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x29, 0x621c47db97c1af6c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
blt x4, x9, some_label_for_btype_6434617601165051750 # perform operation 
addi x0, x1, 1
some_label_for_btype_6434617601165051750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
blt x4, x9, some_label_for_btype_6434617601165051751 # perform operation 
addi x0, x1, 1
some_label_for_btype_6434617601165051751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x9, 0x2519ab83eac47c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
blt x11, x14, some_label_for_btype_160631647342582866270 # perform operation 
addi x0, x1, 1
some_label_for_btype_160631647342582866270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
blt x11, x14, some_label_for_btype_160631647342582866271 # perform operation 
addi x0, x1, 1
some_label_for_btype_160631647342582866271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x21, 0x6e20af5940c9e667 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000000000002 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
blt x9, x16, some_label_for_btype_129524204750855286490 # perform operation 
addi x0, x1, 1
some_label_for_btype_129524204750855286490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
blt x9, x16, some_label_for_btype_129524204750855286491 # perform operation 
addi x0, x1, 1
some_label_for_btype_129524204750855286491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x12, 0xf4776e86206d5368 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x0000000000000002 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
blt x23, x5, some_label_for_btype_132473309133808681320 # perform operation 
addi x0, x1, 1
some_label_for_btype_132473309133808681320:
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
blt x23, x5, some_label_for_btype_132473309133808681321 # perform operation 
addi x0, x1, 1
some_label_for_btype_132473309133808681321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x5, 0x19f2e9dd61ca3463 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000000000002 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
blt x18, x7, some_label_for_btype_3416406502867791450 # perform operation 
addi x0, x1, 1
some_label_for_btype_3416406502867791450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x7fffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
blt x18, x7, some_label_for_btype_3416406502867791451 # perform operation 
addi x0, x1, 1
some_label_for_btype_3416406502867791451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x22, 0x41022fbc9303ab99 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x0000000000000002 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
blt x13, x30, some_label_for_btype_103053716212907830570 # perform operation 
addi x0, x1, 1
some_label_for_btype_103053716212907830570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
blt x13, x30, some_label_for_btype_103053716212907830571 # perform operation 
addi x0, x1, 1
some_label_for_btype_103053716212907830571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x17, 0x9673b5298195a4dc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000000000002 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
blt x24, x11, some_label_for_btype_177421269005592122110 # perform operation 
addi x0, x1, 1
some_label_for_btype_177421269005592122110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xffffffffffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
blt x24, x11, some_label_for_btype_177421269005592122111 # perform operation 
addi x0, x1, 1
some_label_for_btype_177421269005592122111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x7, 0x4c8acfabaf38c6ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0000000000000002 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
blt x26, x21, some_label_for_btype_71415123530634308600 # perform operation 
addi x0, x1, 1
some_label_for_btype_71415123530634308600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xfffffffffffffffe # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
blt x26, x21, some_label_for_btype_71415123530634308601 # perform operation 
addi x0, x1, 1
some_label_for_btype_71415123530634308601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x19, 0xa2803b45b032c713 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000000000002 # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
blt x6, x27, some_label_for_btype_171895062098208804920 # perform operation 
addi x0, x1, 1
some_label_for_btype_171895062098208804920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
blt x6, x27, some_label_for_btype_171895062098208804921 # perform operation 
addi x0, x1, 1
some_label_for_btype_171895062098208804921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x2bc4f7c321ef2d77 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000000000002 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x8, x14, some_label_for_btype_35573605573377692430 # perform operation 
addi x0, x1, 1
some_label_for_btype_35573605573377692430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x8, x14, some_label_for_btype_35573605573377692431 # perform operation 
addi x0, x1, 1
some_label_for_btype_35573605573377692431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x3, 0xe2a828cf8a06a5a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000000000002 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
blt x2, x11, some_label_for_btype_132460532850441370000 # perform operation 
addi x0, x1, 1
some_label_for_btype_132460532850441370000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
blt x2, x11, some_label_for_btype_132460532850441370001 # perform operation 
addi x0, x1, 1
some_label_for_btype_132460532850441370001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x7, 0xc4566697a8dba0e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x0000000000000002 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
blt x23, x19, some_label_for_btype_84292156423816054980 # perform operation 
addi x0, x1, 1
some_label_for_btype_84292156423816054980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000000ffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
blt x23, x19, some_label_for_btype_84292156423816054981 # perform operation 
addi x0, x1, 1
some_label_for_btype_84292156423816054981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x22, 0xfdea0326747af6a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000000000002 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
blt x27, x21, some_label_for_btype_166810238660564173270 # perform operation 
addi x0, x1, 1
some_label_for_btype_166810238660564173270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x00000000fffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
blt x27, x21, some_label_for_btype_166810238660564173271 # perform operation 
addi x0, x1, 1
some_label_for_btype_166810238660564173271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x21, 0xb1075fd8ffff4ab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000000000002 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
blt x31, x25, some_label_for_btype_104833542938191282700 # perform operation 
addi x0, x1, 1
some_label_for_btype_104833542938191282700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0000000100000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
blt x31, x25, some_label_for_btype_104833542938191282701 # perform operation 
addi x0, x1, 1
some_label_for_btype_104833542938191282701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x3, 0x3e8a47f8da93c282 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x0000000000000002 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
blt x11, x5, some_label_for_btype_32157959291630737790 # perform operation 
addi x0, x1, 1
some_label_for_btype_32157959291630737790:
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
blt x11, x5, some_label_for_btype_32157959291630737791 # perform operation 
addi x0, x1, 1
some_label_for_btype_32157959291630737791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x23, 0xd3c9a095e44a1c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x8000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
blt x25, x8, some_label_for_btype_110258751778845224170 # perform operation 
addi x0, x1, 1
some_label_for_btype_110258751778845224170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
blt x25, x8, some_label_for_btype_110258751778845224171 # perform operation 
addi x0, x1, 1
some_label_for_btype_110258751778845224171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x5, 0xb6addb2b12b26d83 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
blt x10, x2, some_label_for_btype_47781803316828431770 # perform operation 
addi x0, x1, 1
some_label_for_btype_47781803316828431770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
blt x10, x2, some_label_for_btype_47781803316828431771 # perform operation 
addi x0, x1, 1
some_label_for_btype_47781803316828431771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x19, 0x970ddb06de4f6246 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x8000000000000000 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
blt x1, x29, some_label_for_btype_165978008760892138940 # perform operation 
addi x0, x1, 1
some_label_for_btype_165978008760892138940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
blt x1, x29, some_label_for_btype_165978008760892138941 # perform operation 
addi x0, x1, 1
some_label_for_btype_165978008760892138941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x8, 0x877ca110bb201406 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
blt x16, x3, some_label_for_btype_82627148198167551630 # perform operation 
addi x0, x1, 1
some_label_for_btype_82627148198167551630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
blt x16, x3, some_label_for_btype_82627148198167551631 # perform operation 
addi x0, x1, 1
some_label_for_btype_82627148198167551631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x7, 0xdec8757ba5fb697f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x8000000000000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
blt x4, x14, some_label_for_btype_78611476679133612730 # perform operation 
addi x0, x1, 1
some_label_for_btype_78611476679133612730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x8000000000000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
blt x4, x14, some_label_for_btype_78611476679133612731 # perform operation 
addi x0, x1, 1
some_label_for_btype_78611476679133612731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x16, 0xf23a7b409dcbd586 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x8000000000000000 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
blt x23, x27, some_label_for_btype_57930711784474406770 # perform operation 
addi x0, x1, 1
some_label_for_btype_57930711784474406770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x7fffffffffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
blt x23, x27, some_label_for_btype_57930711784474406771 # perform operation 
addi x0, x1, 1
some_label_for_btype_57930711784474406771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x7, 0x061692a110cf1055 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x8000000000000000 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
blt x26, x17, some_label_for_btype_171208115305344362960 # perform operation 
addi x0, x1, 1
some_label_for_btype_171208115305344362960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x7ffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
blt x26, x17, some_label_for_btype_171208115305344362961 # perform operation 
addi x0, x1, 1
some_label_for_btype_171208115305344362961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x13, 0x39753fb87437d9bd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x8000000000000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
blt x27, x19, some_label_for_btype_69004799617955233650 # perform operation 
addi x0, x1, 1
some_label_for_btype_69004799617955233650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
blt x27, x19, some_label_for_btype_69004799617955233651 # perform operation 
addi x0, x1, 1
some_label_for_btype_69004799617955233651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x23, 0x36721726f1aa5789 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x8000000000000000 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
blt x16, x11, some_label_for_btype_100116331299900348740 # perform operation 
addi x0, x1, 1
some_label_for_btype_100116331299900348740:
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
blt x16, x11, some_label_for_btype_100116331299900348741 # perform operation 
addi x0, x1, 1
some_label_for_btype_100116331299900348741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x12, 0x6d1a529cb6abce53 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x8000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
blt x27, x31, some_label_for_btype_52434714894687985330 # perform operation 
addi x0, x1, 1
some_label_for_btype_52434714894687985330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
blt x27, x31, some_label_for_btype_52434714894687985331 # perform operation 
addi x0, x1, 1
some_label_for_btype_52434714894687985331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x1c1295f9e828563f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x8000000000000000 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x25, x28, some_label_for_btype_96926984548579122410 # perform operation 
addi x0, x1, 1
some_label_for_btype_96926984548579122410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x25, x28, some_label_for_btype_96926984548579122411 # perform operation 
addi x0, x1, 1
some_label_for_btype_96926984548579122411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x2, 0x5b2d865953825e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x8000000000000000 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
blt x15, x29, some_label_for_btype_88902760733489395100 # perform operation 
addi x0, x1, 1
some_label_for_btype_88902760733489395100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x5555555555555555 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
blt x15, x29, some_label_for_btype_88902760733489395101 # perform operation 
addi x0, x1, 1
some_label_for_btype_88902760733489395101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x23, 0x4d345f7087175b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x8000000000000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
blt x11, x2, some_label_for_btype_42385337238278652370 # perform operation 
addi x0, x1, 1
some_label_for_btype_42385337238278652370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x00000000ffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
blt x11, x2, some_label_for_btype_42385337238278652371 # perform operation 
addi x0, x1, 1
some_label_for_btype_42385337238278652371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x30, 0xb4293608e5333b80 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x8000000000000000 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
blt x6, x20, some_label_for_btype_83056004386007904150 # perform operation 
addi x0, x1, 1
some_label_for_btype_83056004386007904150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
blt x6, x20, some_label_for_btype_83056004386007904151 # perform operation 
addi x0, x1, 1
some_label_for_btype_83056004386007904151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x23, 0xec0a562eb6595070 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x8000000000000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
blt x13, x15, some_label_for_btype_162906373506061198910 # perform operation 
addi x0, x1, 1
some_label_for_btype_162906373506061198910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
blt x13, x15, some_label_for_btype_162906373506061198911 # perform operation 
addi x0, x1, 1
some_label_for_btype_162906373506061198911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x16, 0x27d165179ef62289 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x8000000000000000 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
blt x23, x17, some_label_for_btype_154023595088508905480 # perform operation 
addi x0, x1, 1
some_label_for_btype_154023595088508905480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
blt x23, x17, some_label_for_btype_154023595088508905481 # perform operation 
addi x0, x1, 1
some_label_for_btype_154023595088508905481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x6, 0xf47e5b10e89efed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x8000000000000001 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
blt x27, x14, some_label_for_btype_174173716629363021240 # perform operation 
addi x0, x1, 1
some_label_for_btype_174173716629363021240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
blt x27, x14, some_label_for_btype_174173716629363021241 # perform operation 
addi x0, x1, 1
some_label_for_btype_174173716629363021241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x13, 0x715dd35386aacfd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x8000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
blt x11, x9, some_label_for_btype_167828175000655076260 # perform operation 
addi x0, x1, 1
some_label_for_btype_167828175000655076260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
blt x11, x9, some_label_for_btype_167828175000655076261 # perform operation 
addi x0, x1, 1
some_label_for_btype_167828175000655076261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x31, 0xc52adb7d54386a46 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x8000000000000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
blt x5, x12, some_label_for_btype_20624786192404625270 # perform operation 
addi x0, x1, 1
some_label_for_btype_20624786192404625270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
blt x5, x12, some_label_for_btype_20624786192404625271 # perform operation 
addi x0, x1, 1
some_label_for_btype_20624786192404625271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x14, 0xb203f6c5a6b19d39 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
blt x23, x25, some_label_for_btype_132403638713269199130 # perform operation 
addi x0, x1, 1
some_label_for_btype_132403638713269199130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x8000000000000000 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
blt x23, x25, some_label_for_btype_132403638713269199131 # perform operation 
addi x0, x1, 1
some_label_for_btype_132403638713269199131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x19, 0x12ec29e1c65e3440 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
blt x17, x26, some_label_for_btype_44810819177960220920 # perform operation 
addi x0, x1, 1
some_label_for_btype_44810819177960220920:
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
blt x17, x26, some_label_for_btype_44810819177960220921 # perform operation 
addi x0, x1, 1
some_label_for_btype_44810819177960220921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x31, 0x41928f55bf7fb745 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x8000000000000001 # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
blt x28, x4, some_label_for_btype_92760141072124430940 # perform operation 
addi x0, x1, 1
some_label_for_btype_92760141072124430940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7fffffffffffffff # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
blt x28, x4, some_label_for_btype_92760141072124430941 # perform operation 
addi x0, x1, 1
some_label_for_btype_92760141072124430941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x3, 0xe60daf9e02ecced4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x8000000000000001 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
blt x27, x26, some_label_for_btype_1423082347836270330 # perform operation 
addi x0, x1, 1
some_label_for_btype_1423082347836270330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
blt x27, x26, some_label_for_btype_1423082347836270331 # perform operation 
addi x0, x1, 1
some_label_for_btype_1423082347836270331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x24, 0x6032d290b7e3972b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x8000000000000001 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
blt x30, x11, some_label_for_btype_90704882150089054400 # perform operation 
addi x0, x1, 1
some_label_for_btype_90704882150089054400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xffffffffffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
blt x30, x11, some_label_for_btype_90704882150089054401 # perform operation 
addi x0, x1, 1
some_label_for_btype_90704882150089054401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x18, 0x1264a58e69bc08b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x8000000000000001 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
blt x27, x12, some_label_for_btype_153274450904822880710 # perform operation 
addi x0, x1, 1
some_label_for_btype_153274450904822880710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xfffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
blt x27, x12, some_label_for_btype_153274450904822880711 # perform operation 
addi x0, x1, 1
some_label_for_btype_153274450904822880711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x5, 0xf392a02bfb03c65d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x8000000000000001 # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
blt x2, x7, some_label_for_btype_74367381918599176630 # perform operation 
addi x0, x1, 1
some_label_for_btype_74367381918599176630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
blt x2, x7, some_label_for_btype_74367381918599176631 # perform operation 
addi x0, x1, 1
some_label_for_btype_74367381918599176631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0xfac59547d99cf76a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x8000000000000001 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x14, x2, some_label_for_btype_154057458092867089730 # perform operation 
addi x0, x1, 1
some_label_for_btype_154057458092867089730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x14, x2, some_label_for_btype_154057458092867089731 # perform operation 
addi x0, x1, 1
some_label_for_btype_154057458092867089731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x27, 0x70eea8ca68d8abd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x8000000000000001 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
blt x24, x26, some_label_for_btype_98654137476650861740 # perform operation 
addi x0, x1, 1
some_label_for_btype_98654137476650861740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5555555555555555 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
blt x24, x26, some_label_for_btype_98654137476650861741 # perform operation 
addi x0, x1, 1
some_label_for_btype_98654137476650861741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x9, 0x83704fea1aeaa284 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x8000000000000001 # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
blt x13, x4, some_label_for_btype_85597447118179451090 # perform operation 
addi x0, x1, 1
some_label_for_btype_85597447118179451090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000000ffffffff # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
blt x13, x4, some_label_for_btype_85597447118179451091 # perform operation 
addi x0, x1, 1
some_label_for_btype_85597447118179451091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x16, 0x0a55926c2218d2b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x8000000000000001 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
blt x9, x25, some_label_for_btype_137689551995822372550 # perform operation 
addi x0, x1, 1
some_label_for_btype_137689551995822372550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x00000000fffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
blt x9, x25, some_label_for_btype_137689551995822372551 # perform operation 
addi x0, x1, 1
some_label_for_btype_137689551995822372551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x21, 0x609930e231ec4011 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x8000000000000001 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
blt x7, x18, some_label_for_btype_74771924545077208260 # perform operation 
addi x0, x1, 1
some_label_for_btype_74771924545077208260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000100000000 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
blt x7, x18, some_label_for_btype_74771924545077208261 # perform operation 
addi x0, x1, 1
some_label_for_btype_74771924545077208261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x22, 0x791cfba2be9c4cc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x8000000000000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
blt x5, x21, some_label_for_btype_131768866125384982640 # perform operation 
addi x0, x1, 1
some_label_for_btype_131768866125384982640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
blt x5, x21, some_label_for_btype_131768866125384982641 # perform operation 
addi x0, x1, 1
some_label_for_btype_131768866125384982641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x30, 0x2659902f3bac4c2b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
blt x15, x19, some_label_for_btype_48036101849198309180 # perform operation 
addi x0, x1, 1
some_label_for_btype_48036101849198309180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
blt x15, x19, some_label_for_btype_48036101849198309181 # perform operation 
addi x0, x1, 1
some_label_for_btype_48036101849198309181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x4, 0xdbe645a5966d3dd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
blt x15, x7, some_label_for_btype_158149349622169064750 # perform operation 
addi x0, x1, 1
some_label_for_btype_158149349622169064750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000000000001 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
blt x15, x7, some_label_for_btype_158149349622169064751 # perform operation 
addi x0, x1, 1
some_label_for_btype_158149349622169064751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x25, 0xe98f9b5c71a29609 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
blt x18, x13, some_label_for_btype_116514021339206581790 # perform operation 
addi x0, x1, 1
some_label_for_btype_116514021339206581790:
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
blt x18, x13, some_label_for_btype_116514021339206581791 # perform operation 
addi x0, x1, 1
some_label_for_btype_116514021339206581791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x15, 0xed93bb70354fde6f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x7fffffffffffffff # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
blt x20, x27, some_label_for_btype_93287503365795434950 # perform operation 
addi x0, x1, 1
some_label_for_btype_93287503365795434950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x8000000000000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
blt x20, x27, some_label_for_btype_93287503365795434951 # perform operation 
addi x0, x1, 1
some_label_for_btype_93287503365795434951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x21, 0x5716fed4fc08bd56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x7fffffffffffffff # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
blt x20, x7, some_label_for_btype_180861463168063253690 # perform operation 
addi x0, x1, 1
some_label_for_btype_180861463168063253690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
blt x20, x7, some_label_for_btype_180861463168063253691 # perform operation 
addi x0, x1, 1
some_label_for_btype_180861463168063253691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x18, 0xa156b7e6d6730bb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x7fffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
blt x5, x12, some_label_for_btype_180743623291297433240 # perform operation 
addi x0, x1, 1
some_label_for_btype_180743623291297433240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x7fffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
blt x5, x12, some_label_for_btype_180743623291297433241 # perform operation 
addi x0, x1, 1
some_label_for_btype_180743623291297433241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x6, 0xffc3ec1dfbbedbd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x7fffffffffffffff # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
blt x21, x4, some_label_for_btype_92381251115282085460 # perform operation 
addi x0, x1, 1
some_label_for_btype_92381251115282085460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x7ffffffffffffffe # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
blt x21, x4, some_label_for_btype_92381251115282085461 # perform operation 
addi x0, x1, 1
some_label_for_btype_92381251115282085461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x1, 0xfb707cb5339fa0c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7fffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
blt x29, x24, some_label_for_btype_47531931628725122930 # perform operation 
addi x0, x1, 1
some_label_for_btype_47531931628725122930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xffffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
blt x29, x24, some_label_for_btype_47531931628725122931 # perform operation 
addi x0, x1, 1
some_label_for_btype_47531931628725122931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x12, 0x1b25dc62b768ea86 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x7fffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
blt x8, x1, some_label_for_btype_70211665021605709950 # perform operation 
addi x0, x1, 1
some_label_for_btype_70211665021605709950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xfffffffffffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
blt x8, x1, some_label_for_btype_70211665021605709951 # perform operation 
addi x0, x1, 1
some_label_for_btype_70211665021605709951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x11, 0xbabf1896606c579a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x7fffffffffffffff # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
blt x19, x1, some_label_for_btype_27867381701356220820 # perform operation 
addi x0, x1, 1
some_label_for_btype_27867381701356220820:
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
blt x19, x1, some_label_for_btype_27867381701356220821 # perform operation 
addi x0, x1, 1
some_label_for_btype_27867381701356220821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x71521890eb98d244 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7fffffffffffffff # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x24, x13, some_label_for_btype_79413763475845347640 # perform operation 
addi x0, x1, 1
some_label_for_btype_79413763475845347640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x24, x13, some_label_for_btype_79413763475845347641 # perform operation 
addi x0, x1, 1
some_label_for_btype_79413763475845347641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x29, 0x0a5c3c8c67114128 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x7fffffffffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
blt x9, x3, some_label_for_btype_91877186282220810900 # perform operation 
addi x0, x1, 1
some_label_for_btype_91877186282220810900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x5555555555555555 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
blt x9, x3, some_label_for_btype_91877186282220810901 # perform operation 
addi x0, x1, 1
some_label_for_btype_91877186282220810901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x19, 0x7e905a07ace10181 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x7fffffffffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
blt x7, x2, some_label_for_btype_123965713161228382450 # perform operation 
addi x0, x1, 1
some_label_for_btype_123965713161228382450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000000ffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
blt x7, x2, some_label_for_btype_123965713161228382451 # perform operation 
addi x0, x1, 1
some_label_for_btype_123965713161228382451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x29, 0x789c1af57c6949d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x7fffffffffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
blt x2, x30, some_label_for_btype_124346831084012818870 # perform operation 
addi x0, x1, 1
some_label_for_btype_124346831084012818870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x00000000fffffffe # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
blt x2, x30, some_label_for_btype_124346831084012818871 # perform operation 
addi x0, x1, 1
some_label_for_btype_124346831084012818871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x12, 0x80937f0e2dea0555 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
blt x6, x15, some_label_for_btype_136391683445896120340 # perform operation 
addi x0, x1, 1
some_label_for_btype_136391683445896120340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
blt x6, x15, some_label_for_btype_136391683445896120341 # perform operation 
addi x0, x1, 1
some_label_for_btype_136391683445896120341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x5, 0x81a7c34bbf35da9f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
blt x12, x28, some_label_for_btype_142971581233324025470 # perform operation 
addi x0, x1, 1
some_label_for_btype_142971581233324025470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
blt x12, x28, some_label_for_btype_142971581233324025471 # perform operation 
addi x0, x1, 1
some_label_for_btype_142971581233324025471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x23, 0x93007cd1c6395e95 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x7ffffffffffffffe # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
blt x2, x4, some_label_for_btype_100120810395546751360 # perform operation 
addi x0, x1, 1
some_label_for_btype_100120810395546751360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000000000000 # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
blt x2, x4, some_label_for_btype_100120810395546751361 # perform operation 
addi x0, x1, 1
some_label_for_btype_100120810395546751361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x12, 0xc25a0fdc28c3129e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
blt x28, x26, some_label_for_btype_46953384006520813820 # perform operation 
addi x0, x1, 1
some_label_for_btype_46953384006520813820:
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
blt x28, x26, some_label_for_btype_46953384006520813821 # perform operation 
addi x0, x1, 1
some_label_for_btype_46953384006520813821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x23, 0xd374e1e2501188b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
blt x8, x22, some_label_for_btype_110369034208188389850 # perform operation 
addi x0, x1, 1
some_label_for_btype_110369034208188389850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
blt x8, x22, some_label_for_btype_110369034208188389851 # perform operation 
addi x0, x1, 1
some_label_for_btype_110369034208188389851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x4, 0xaed1a55e1d7eb097 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7ffffffffffffffe # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
blt x11, x3, some_label_for_btype_16949407177463545100 # perform operation 
addi x0, x1, 1
some_label_for_btype_16949407177463545100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
blt x11, x3, some_label_for_btype_16949407177463545101 # perform operation 
addi x0, x1, 1
some_label_for_btype_16949407177463545101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x20, 0x3706ae29ff50415b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x7ffffffffffffffe # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
blt x16, x26, some_label_for_btype_144158905921849366110 # perform operation 
addi x0, x1, 1
some_label_for_btype_144158905921849366110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
blt x16, x26, some_label_for_btype_144158905921849366111 # perform operation 
addi x0, x1, 1
some_label_for_btype_144158905921849366111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x30, 0x5a9d3cae0961da45 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7ffffffffffffffe # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
blt x28, x9, some_label_for_btype_104738441002926962670 # perform operation 
addi x0, x1, 1
some_label_for_btype_104738441002926962670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7fffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
blt x28, x9, some_label_for_btype_104738441002926962671 # perform operation 
addi x0, x1, 1
some_label_for_btype_104738441002926962671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0x6162f323475ee29f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
blt x3, x28, some_label_for_btype_96182493020448336330 # perform operation 
addi x0, x1, 1
some_label_for_btype_96182493020448336330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
blt x3, x28, some_label_for_btype_96182493020448336331 # perform operation 
addi x0, x1, 1
some_label_for_btype_96182493020448336331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x9, 0x031a647181ad130d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x7ffffffffffffffe # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
blt x4, x7, some_label_for_btype_129657094088783286580 # perform operation 
addi x0, x1, 1
some_label_for_btype_129657094088783286580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xffffffffffffffff # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
blt x4, x7, some_label_for_btype_129657094088783286581 # perform operation 
addi x0, x1, 1
some_label_for_btype_129657094088783286581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x23, 0x861429f8901cf64d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x7ffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
blt x30, x8, some_label_for_btype_67782206814318581260 # perform operation 
addi x0, x1, 1
some_label_for_btype_67782206814318581260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xfffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
blt x30, x8, some_label_for_btype_67782206814318581261 # perform operation 
addi x0, x1, 1
some_label_for_btype_67782206814318581261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x1, 0x553e4d44ee8f496c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x7ffffffffffffffe # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
blt x2, x23, some_label_for_btype_103330617651122788830 # perform operation 
addi x0, x1, 1
some_label_for_btype_103330617651122788830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
blt x2, x23, some_label_for_btype_103330617651122788831 # perform operation 
addi x0, x1, 1
some_label_for_btype_103330617651122788831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x4474bccf47dcde5c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x7ffffffffffffffe # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x13, x12, some_label_for_btype_93910541197963751350 # perform operation 
addi x0, x1, 1
some_label_for_btype_93910541197963751350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x13, x12, some_label_for_btype_93910541197963751351 # perform operation 
addi x0, x1, 1
some_label_for_btype_93910541197963751351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x20, 0x2b58760dc8a7e6fa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x7ffffffffffffffe # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
blt x23, x19, some_label_for_btype_68694510174289023910 # perform operation 
addi x0, x1, 1
some_label_for_btype_68694510174289023910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x5555555555555555 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
blt x23, x19, some_label_for_btype_68694510174289023911 # perform operation 
addi x0, x1, 1
some_label_for_btype_68694510174289023911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x18, 0x31c6582e4a75c9f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x7ffffffffffffffe # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
blt x20, x11, some_label_for_btype_36212564134895252520 # perform operation 
addi x0, x1, 1
some_label_for_btype_36212564134895252520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000000ffffffff # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
blt x20, x11, some_label_for_btype_36212564134895252521 # perform operation 
addi x0, x1, 1
some_label_for_btype_36212564134895252521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x3, 0x2194fe6f611fef29 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x7ffffffffffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
blt x6, x16, some_label_for_btype_79248294638820985380 # perform operation 
addi x0, x1, 1
some_label_for_btype_79248294638820985380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
blt x6, x16, some_label_for_btype_79248294638820985381 # perform operation 
addi x0, x1, 1
some_label_for_btype_79248294638820985381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x7, 0xbeff3e10b6c90e60 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
blt x24, x9, some_label_for_btype_78089086251815718370 # perform operation 
addi x0, x1, 1
some_label_for_btype_78089086251815718370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
blt x24, x9, some_label_for_btype_78089086251815718371 # perform operation 
addi x0, x1, 1
some_label_for_btype_78089086251815718371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x11, 0xcff4b28e22514f7a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
blt x16, x30, some_label_for_btype_27750620391877093810 # perform operation 
addi x0, x1, 1
some_label_for_btype_27750620391877093810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0000000100000001 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
blt x16, x30, some_label_for_btype_27750620391877093811 # perform operation 
addi x0, x1, 1
some_label_for_btype_27750620391877093811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x22, 0x4b5eda0c815abbfe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
blt x18, x27, some_label_for_btype_116051728224671542690 # perform operation 
addi x0, x1, 1
some_label_for_btype_116051728224671542690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
blt x18, x27, some_label_for_btype_116051728224671542691 # perform operation 
addi x0, x1, 1
some_label_for_btype_116051728224671542691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x12, 0x750f8d9e19037c8e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
blt x18, x24, some_label_for_btype_143909524536521535870 # perform operation 
addi x0, x1, 1
some_label_for_btype_143909524536521535870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
blt x18, x24, some_label_for_btype_143909524536521535871 # perform operation 
addi x0, x1, 1
some_label_for_btype_143909524536521535871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x25, 0x586d74499523b7fb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
blt x22, x31, some_label_for_btype_89161960107222226060 # perform operation 
addi x0, x1, 1
some_label_for_btype_89161960107222226060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
blt x22, x31, some_label_for_btype_89161960107222226061 # perform operation 
addi x0, x1, 1
some_label_for_btype_89161960107222226061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x26, 0x81719186c7095938 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
blt x11, x28, some_label_for_btype_108953152207497077410 # perform operation 
addi x0, x1, 1
some_label_for_btype_108953152207497077410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x8000000000000000 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
blt x11, x28, some_label_for_btype_108953152207497077411 # perform operation 
addi x0, x1, 1
some_label_for_btype_108953152207497077411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x4, 0x206168f240558334 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xffffffffffffffff # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
blt x23, x10, some_label_for_btype_53565941744558109910 # perform operation 
addi x0, x1, 1
some_label_for_btype_53565941744558109910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x8000000000000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
blt x23, x10, some_label_for_btype_53565941744558109911 # perform operation 
addi x0, x1, 1
some_label_for_btype_53565941744558109911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x2, 0xdcb3e58520577a74 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xffffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
blt x27, x1, some_label_for_btype_182572298860599865270 # perform operation 
addi x0, x1, 1
some_label_for_btype_182572298860599865270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x7fffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
blt x27, x1, some_label_for_btype_182572298860599865271 # perform operation 
addi x0, x1, 1
some_label_for_btype_182572298860599865271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x30, 0xe16c718b241f8d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xffffffffffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
blt x18, x1, some_label_for_btype_16752550037860885940 # perform operation 
addi x0, x1, 1
some_label_for_btype_16752550037860885940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x7ffffffffffffffe # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
blt x18, x1, some_label_for_btype_16752550037860885941 # perform operation 
addi x0, x1, 1
some_label_for_btype_16752550037860885941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x3, 0x097deb7efd01f155 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
blt x27, x19, some_label_for_btype_174954795468662699990 # perform operation 
addi x0, x1, 1
some_label_for_btype_174954795468662699990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
blt x27, x19, some_label_for_btype_174954795468662699991 # perform operation 
addi x0, x1, 1
some_label_for_btype_174954795468662699991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x28, 0x92a8992093ab0ac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xffffffffffffffff # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
blt x7, x24, some_label_for_btype_135363338789080434700 # perform operation 
addi x0, x1, 1
some_label_for_btype_135363338789080434700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xfffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
blt x7, x24, some_label_for_btype_135363338789080434701 # perform operation 
addi x0, x1, 1
some_label_for_btype_135363338789080434701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x7, 0x4f79c1601e13c9d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xffffffffffffffff # initialize rs1
li x22, 0x5bbc887763ae86f7 # initialize rs2
blt x18, x22, some_label_for_btype_78266674393689665570 # perform operation 
addi x0, x1, 1
some_label_for_btype_78266674393689665570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x22, 0x5bbc887763ae86f7 # initialize rs2
blt x18, x22, some_label_for_btype_78266674393689665571 # perform operation 
addi x0, x1, 1
some_label_for_btype_78266674393689665571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x74c6dccd8481eea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xffffffffffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x14, x19, some_label_for_btype_151421290654719664960 # perform operation 
addi x0, x1, 1
some_label_for_btype_151421290654719664960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x14, x19, some_label_for_btype_151421290654719664961 # perform operation 
addi x0, x1, 1
some_label_for_btype_151421290654719664961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x8, 0x966de063c028fc1d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xffffffffffffffff # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
blt x21, x25, some_label_for_btype_101772377733348725890 # perform operation 
addi x0, x1, 1
some_label_for_btype_101772377733348725890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x5555555555555555 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
blt x21, x25, some_label_for_btype_101772377733348725891 # perform operation 
addi x0, x1, 1
some_label_for_btype_101772377733348725891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x12, 0x88b8c3a782e72aed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xffffffffffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
blt x31, x10, some_label_for_btype_110816952354800346020 # perform operation 
addi x0, x1, 1
some_label_for_btype_110816952354800346020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
blt x31, x10, some_label_for_btype_110816952354800346021 # perform operation 
addi x0, x1, 1
some_label_for_btype_110816952354800346021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x10, 0x135449f1fa02fab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xffffffffffffffff # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
blt x30, x19, some_label_for_btype_142792365198252025570 # perform operation 
addi x0, x1, 1
some_label_for_btype_142792365198252025570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
blt x30, x19, some_label_for_btype_142792365198252025571 # perform operation 
addi x0, x1, 1
some_label_for_btype_142792365198252025571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x20, 0x2757151cd4fe65e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
blt x31, x2, some_label_for_btype_125220223063068319530 # perform operation 
addi x0, x1, 1
some_label_for_btype_125220223063068319530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
blt x31, x2, some_label_for_btype_125220223063068319531 # perform operation 
addi x0, x1, 1
some_label_for_btype_125220223063068319531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x20, 0x7fb44189a637eee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xffffffffffffffff # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
blt x18, x13, some_label_for_btype_56396477290706590510 # perform operation 
addi x0, x1, 1
some_label_for_btype_56396477290706590510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000100000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
blt x18, x13, some_label_for_btype_56396477290706590511 # perform operation 
addi x0, x1, 1
some_label_for_btype_56396477290706590511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x18, 0xcea7f1981d91eb41 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
blt x10, x30, some_label_for_btype_137259633968756334490 # perform operation 
addi x0, x1, 1
some_label_for_btype_137259633968756334490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000000000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
blt x10, x30, some_label_for_btype_137259633968756334491 # perform operation 
addi x0, x1, 1
some_label_for_btype_137259633968756334491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x7, 0xae095728296cfe6c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
blt x4, x15, some_label_for_btype_174640995941726089570 # perform operation 
addi x0, x1, 1
some_label_for_btype_174640995941726089570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
blt x4, x15, some_label_for_btype_174640995941726089571 # perform operation 
addi x0, x1, 1
some_label_for_btype_174640995941726089571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x19, 0x256e82bce3a3b3d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
blt x11, x16, some_label_for_btype_52836104963786635360 # perform operation 
addi x0, x1, 1
some_label_for_btype_52836104963786635360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
blt x11, x16, some_label_for_btype_52836104963786635361 # perform operation 
addi x0, x1, 1
some_label_for_btype_52836104963786635361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x26, 0xa69cb08584348853 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xfffffffffffffffe # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
blt x15, x14, some_label_for_btype_55892736878261029440 # perform operation 
addi x0, x1, 1
some_label_for_btype_55892736878261029440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x8000000000000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
blt x15, x14, some_label_for_btype_55892736878261029441 # perform operation 
addi x0, x1, 1
some_label_for_btype_55892736878261029441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x13, 0xa6b10130d4bfb92e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xfffffffffffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
blt x9, x2, some_label_for_btype_160115394377361262820 # perform operation 
addi x0, x1, 1
some_label_for_btype_160115394377361262820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
blt x9, x2, some_label_for_btype_160115394377361262821 # perform operation 
addi x0, x1, 1
some_label_for_btype_160115394377361262821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x24, 0xaa6720589f2bdb2f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xfffffffffffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
blt x19, x26, some_label_for_btype_38183203668908601370 # perform operation 
addi x0, x1, 1
some_label_for_btype_38183203668908601370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x7fffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
blt x19, x26, some_label_for_btype_38183203668908601371 # perform operation 
addi x0, x1, 1
some_label_for_btype_38183203668908601371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0x27c1ee74ff133e22 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xfffffffffffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
blt x6, x24, some_label_for_btype_74402096083257071990 # perform operation 
addi x0, x1, 1
some_label_for_btype_74402096083257071990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x7ffffffffffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
blt x6, x24, some_label_for_btype_74402096083257071991 # perform operation 
addi x0, x1, 1
some_label_for_btype_74402096083257071991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x8, 0x02ad6613d00b1a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xfffffffffffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
blt x1, x29, some_label_for_btype_2728283380651651830 # perform operation 
addi x0, x1, 1
some_label_for_btype_2728283380651651830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xffffffffffffffff # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
blt x1, x29, some_label_for_btype_2728283380651651831 # perform operation 
addi x0, x1, 1
some_label_for_btype_2728283380651651831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0xf4db7a36bfb5d763 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
blt x9, x30, some_label_for_btype_146976836714601154220 # perform operation 
addi x0, x1, 1
some_label_for_btype_146976836714601154220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
blt x9, x30, some_label_for_btype_146976836714601154221 # perform operation 
addi x0, x1, 1
some_label_for_btype_146976836714601154221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x1, 0x858de8a1324419ba # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xfffffffffffffffe # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
blt x27, x14, some_label_for_btype_77171327033770255060 # perform operation 
addi x0, x1, 1
some_label_for_btype_77171327033770255060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
blt x27, x14, some_label_for_btype_77171327033770255061 # perform operation 
addi x0, x1, 1
some_label_for_btype_77171327033770255061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0xf855d395d71fa6db # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xfffffffffffffffe # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x11, x17, some_label_for_btype_93123774720273872620 # perform operation 
addi x0, x1, 1
some_label_for_btype_93123774720273872620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x11, x17, some_label_for_btype_93123774720273872621 # perform operation 
addi x0, x1, 1
some_label_for_btype_93123774720273872621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x2, 0x86b4d26929078bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xfffffffffffffffe # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
blt x6, x10, some_label_for_btype_162282787434814403850 # perform operation 
addi x0, x1, 1
some_label_for_btype_162282787434814403850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x5555555555555555 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
blt x6, x10, some_label_for_btype_162282787434814403851 # perform operation 
addi x0, x1, 1
some_label_for_btype_162282787434814403851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x15, 0x3bfb8281bfe6616b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xfffffffffffffffe # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
blt x24, x3, some_label_for_btype_40359335658892504270 # perform operation 
addi x0, x1, 1
some_label_for_btype_40359335658892504270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x00000000ffffffff # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
blt x24, x3, some_label_for_btype_40359335658892504271 # perform operation 
addi x0, x1, 1
some_label_for_btype_40359335658892504271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x25, 0x53d781d7f62a39ab # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xfffffffffffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
blt x5, x13, some_label_for_btype_18774620647594237430 # perform operation 
addi x0, x1, 1
some_label_for_btype_18774620647594237430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
blt x5, x13, some_label_for_btype_18774620647594237431 # perform operation 
addi x0, x1, 1
some_label_for_btype_18774620647594237431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x7, 0x19fbac35f79baad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
blt x22, x17, some_label_for_btype_27802906621028510720 # perform operation 
addi x0, x1, 1
some_label_for_btype_27802906621028510720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000100000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
blt x22, x17, some_label_for_btype_27802906621028510721 # perform operation 
addi x0, x1, 1
some_label_for_btype_27802906621028510721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x27, 0xb672759b1bd0b51f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
blt x9, x13, some_label_for_btype_56359850349976202380 # perform operation 
addi x0, x1, 1
some_label_for_btype_56359850349976202380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000100000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
blt x9, x13, some_label_for_btype_56359850349976202381 # perform operation 
addi x0, x1, 1
some_label_for_btype_56359850349976202381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x7, 0xe97b36b50147aec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
blt x21, x23, some_label_for_btype_117270988425213949490 # perform operation 
addi x0, x1, 1
some_label_for_btype_117270988425213949490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000000000000 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
blt x21, x23, some_label_for_btype_117270988425213949491 # perform operation 
addi x0, x1, 1
some_label_for_btype_117270988425213949491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x5, 0x77f600431342b168 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
blt x2, x18, some_label_for_btype_101312446181743321030 # perform operation 
addi x0, x1, 1
some_label_for_btype_101312446181743321030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
blt x2, x18, some_label_for_btype_101312446181743321031 # perform operation 
addi x0, x1, 1
some_label_for_btype_101312446181743321031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x10, 0x464c8112d88deb79 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
blt x13, x31, some_label_for_btype_118407319305187675370 # perform operation 
addi x0, x1, 1
some_label_for_btype_118407319305187675370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
blt x13, x31, some_label_for_btype_118407319305187675371 # perform operation 
addi x0, x1, 1
some_label_for_btype_118407319305187675371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x19, 0xb3431429f2f3407d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
blt x25, x20, some_label_for_btype_47507338375756821690 # perform operation 
addi x0, x1, 1
some_label_for_btype_47507338375756821690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x8000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
blt x25, x20, some_label_for_btype_47507338375756821691 # perform operation 
addi x0, x1, 1
some_label_for_btype_47507338375756821691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x6, 0xc02c1aa296021f19 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
blt x25, x16, some_label_for_btype_180401976438850375710 # perform operation 
addi x0, x1, 1
some_label_for_btype_180401976438850375710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x8000000000000001 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
blt x25, x16, some_label_for_btype_180401976438850375711 # perform operation 
addi x0, x1, 1
some_label_for_btype_180401976438850375711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x12, 0xa806b56ceb628e72 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
blt x10, x2, some_label_for_btype_76786546625465538410 # perform operation 
addi x0, x1, 1
some_label_for_btype_76786546625465538410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x7fffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
blt x10, x2, some_label_for_btype_76786546625465538411 # perform operation 
addi x0, x1, 1
some_label_for_btype_76786546625465538411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x26, 0xc4a1ce1d83134cd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
blt x22, x15, some_label_for_btype_40660157461884957440 # perform operation 
addi x0, x1, 1
some_label_for_btype_40660157461884957440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x7ffffffffffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
blt x22, x15, some_label_for_btype_40660157461884957441 # perform operation 
addi x0, x1, 1
some_label_for_btype_40660157461884957441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x5, 0x06582dbf01575202 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
blt x13, x18, some_label_for_btype_87083438333451147070 # perform operation 
addi x0, x1, 1
some_label_for_btype_87083438333451147070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xffffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
blt x13, x18, some_label_for_btype_87083438333451147071 # perform operation 
addi x0, x1, 1
some_label_for_btype_87083438333451147071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x23, 0xd04d9c86f92fd06b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
blt x27, x10, some_label_for_btype_68742307370527415640 # perform operation 
addi x0, x1, 1
some_label_for_btype_68742307370527415640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xfffffffffffffffe # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
blt x27, x10, some_label_for_btype_68742307370527415641 # perform operation 
addi x0, x1, 1
some_label_for_btype_68742307370527415641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x11, 0x4639e4fd299483c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
blt x24, x30, some_label_for_btype_71046578569471200060 # perform operation 
addi x0, x1, 1
some_label_for_btype_71046578569471200060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
blt x24, x30, some_label_for_btype_71046578569471200061 # perform operation 
addi x0, x1, 1
some_label_for_btype_71046578569471200061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0918ac69b240a19b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x31, x10, some_label_for_btype_144065694949701707080 # perform operation 
addi x0, x1, 1
some_label_for_btype_144065694949701707080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x31, x10, some_label_for_btype_144065694949701707081 # perform operation 
addi x0, x1, 1
some_label_for_btype_144065694949701707081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x13, 0xab93042ac0e4c375 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
blt x20, x28, some_label_for_btype_83833496297515446360 # perform operation 
addi x0, x1, 1
some_label_for_btype_83833496297515446360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x5555555555555555 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
blt x20, x28, some_label_for_btype_83833496297515446361 # perform operation 
addi x0, x1, 1
some_label_for_btype_83833496297515446361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x10, 0xbf093120b3560308 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
blt x16, x13, some_label_for_btype_82314968979428714240 # perform operation 
addi x0, x1, 1
some_label_for_btype_82314968979428714240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x00000000ffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
blt x16, x13, some_label_for_btype_82314968979428714241 # perform operation 
addi x0, x1, 1
some_label_for_btype_82314968979428714241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x17, 0xfff786b18c1c9599 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
blt x21, x10, some_label_for_btype_117517222587019172620 # perform operation 
addi x0, x1, 1
some_label_for_btype_117517222587019172620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000000fffffffe # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
blt x21, x10, some_label_for_btype_117517222587019172621 # perform operation 
addi x0, x1, 1
some_label_for_btype_117517222587019172621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x9, 0x5204ae022f74319f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
blt x7, x20, some_label_for_btype_148974936263453836130 # perform operation 
addi x0, x1, 1
some_label_for_btype_148974936263453836130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
blt x7, x20, some_label_for_btype_148974936263453836131 # perform operation 
addi x0, x1, 1
some_label_for_btype_148974936263453836131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x9, 0x5e9dec9fb8cc9913 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
blt x18, x24, some_label_for_btype_5971361382231026280 # perform operation 
addi x0, x1, 1
some_label_for_btype_5971361382231026280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000100000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
blt x18, x24, some_label_for_btype_5971361382231026281 # perform operation 
addi x0, x1, 1
some_label_for_btype_5971361382231026281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x3, 0xf71d118391284c3c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
blt x22, x27, some_label_for_btype_119761658161737236500 # perform operation 
addi x0, x1, 1
some_label_for_btype_119761658161737236500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
blt x22, x27, some_label_for_btype_119761658161737236501 # perform operation 
addi x0, x1, 1
some_label_for_btype_119761658161737236501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x8, 0xa0f9b1ed116479b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
blt x22, x10, some_label_for_btype_127077640236582455870 # perform operation 
addi x0, x1, 1
some_label_for_btype_127077640236582455870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
blt x22, x10, some_label_for_btype_127077640236582455871 # perform operation 
addi x0, x1, 1
some_label_for_btype_127077640236582455871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x28, 0x06fa799139916754 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
blt x3, x24, some_label_for_btype_20094589873450656180 # perform operation 
addi x0, x1, 1
some_label_for_btype_20094589873450656180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
blt x3, x24, some_label_for_btype_20094589873450656181 # perform operation 
addi x0, x1, 1
some_label_for_btype_20094589873450656181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x8, 0x01fb5d3b6b7d8ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
blt x26, x22, some_label_for_btype_47659282067215533060 # perform operation 
addi x0, x1, 1
some_label_for_btype_47659282067215533060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x8000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
blt x26, x22, some_label_for_btype_47659282067215533061 # perform operation 
addi x0, x1, 1
some_label_for_btype_47659282067215533061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x25, 0xccc3a4299ed6cd89 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
blt x4, x8, some_label_for_btype_93577814878899563040 # perform operation 
addi x0, x1, 1
some_label_for_btype_93577814878899563040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x8000000000000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
blt x4, x8, some_label_for_btype_93577814878899563041 # perform operation 
addi x0, x1, 1
some_label_for_btype_93577814878899563041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x27, 0xde6fe7d6dff69613 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
blt x17, x23, some_label_for_btype_42543865715221710560 # perform operation 
addi x0, x1, 1
some_label_for_btype_42543865715221710560:
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
blt x17, x23, some_label_for_btype_42543865715221710561 # perform operation 
addi x0, x1, 1
some_label_for_btype_42543865715221710561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x22, 0x8c4bd2164f9ec087 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
blt x11, x15, some_label_for_btype_41448408529395033670 # perform operation 
addi x0, x1, 1
some_label_for_btype_41448408529395033670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x7ffffffffffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
blt x11, x15, some_label_for_btype_41448408529395033671 # perform operation 
addi x0, x1, 1
some_label_for_btype_41448408529395033671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x27, 0x6e08ef0a380d8bac # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
blt x16, x12, some_label_for_btype_13172845496035355660 # perform operation 
addi x0, x1, 1
some_label_for_btype_13172845496035355660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xffffffffffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
blt x16, x12, some_label_for_btype_13172845496035355661 # perform operation 
addi x0, x1, 1
some_label_for_btype_13172845496035355661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x11, 0x487d390c2f30bba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
blt x1, x15, some_label_for_btype_2675001023976570020 # perform operation 
addi x0, x1, 1
some_label_for_btype_2675001023976570020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xfffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
blt x1, x15, some_label_for_btype_2675001023976570021 # perform operation 
addi x0, x1, 1
some_label_for_btype_2675001023976570021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x22, 0x68a6d214b4af8325 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
blt x27, x29, some_label_for_btype_35011424801609159230 # perform operation 
addi x0, x1, 1
some_label_for_btype_35011424801609159230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
blt x27, x29, some_label_for_btype_35011424801609159231 # perform operation 
addi x0, x1, 1
some_label_for_btype_35011424801609159231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x75476df9141206fe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x20, x22, some_label_for_btype_20228269353207311410 # perform operation 
addi x0, x1, 1
some_label_for_btype_20228269353207311410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x20, x22, some_label_for_btype_20228269353207311411 # perform operation 
addi x0, x1, 1
some_label_for_btype_20228269353207311411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x22, 0xfab1f63efa2894f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
blt x25, x2, some_label_for_btype_43964075559187538080 # perform operation 
addi x0, x1, 1
some_label_for_btype_43964075559187538080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x5555555555555555 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
blt x25, x2, some_label_for_btype_43964075559187538081 # perform operation 
addi x0, x1, 1
some_label_for_btype_43964075559187538081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x1, 0x47a34662c6716bca # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
blt x20, x12, some_label_for_btype_155221488703996041410 # perform operation 
addi x0, x1, 1
some_label_for_btype_155221488703996041410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
blt x20, x12, some_label_for_btype_155221488703996041411 # perform operation 
addi x0, x1, 1
some_label_for_btype_155221488703996041411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x8, 0xd25707d1475cdf56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
blt x25, x19, some_label_for_btype_143264028546303555020 # perform operation 
addi x0, x1, 1
some_label_for_btype_143264028546303555020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
blt x25, x19, some_label_for_btype_143264028546303555021 # perform operation 
addi x0, x1, 1
some_label_for_btype_143264028546303555021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x25, 0x0a712920505b1be2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
blt x21, x27, some_label_for_btype_90654881024212636030 # perform operation 
addi x0, x1, 1
some_label_for_btype_90654881024212636030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000100000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
blt x21, x27, some_label_for_btype_90654881024212636031 # perform operation 
addi x0, x1, 1
some_label_for_btype_90654881024212636031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x14, 0x515479c0cf76636c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
blt x8, x15, some_label_for_btype_37985822168303714700 # perform operation 
addi x0, x1, 1
some_label_for_btype_37985822168303714700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000100000001 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
blt x8, x15, some_label_for_btype_37985822168303714701 # perform operation 
addi x0, x1, 1
some_label_for_btype_37985822168303714701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x22, 0xdb87b41d699c74bd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x5555555555555555 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
blt x12, x18, some_label_for_btype_34538805426351809600 # perform operation 
addi x0, x1, 1
some_label_for_btype_34538805426351809600:
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
blt x12, x18, some_label_for_btype_34538805426351809601 # perform operation 
addi x0, x1, 1
some_label_for_btype_34538805426351809601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x4, 0x4f9b2ccd71ad05f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
blt x22, x13, some_label_for_btype_117620863274229423080 # perform operation 
addi x0, x1, 1
some_label_for_btype_117620863274229423080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
blt x22, x13, some_label_for_btype_117620863274229423081 # perform operation 
addi x0, x1, 1
some_label_for_btype_117620863274229423081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x6, 0xe85c0ad30a5459f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
blt x14, x26, some_label_for_btype_26071314583850715320 # perform operation 
addi x0, x1, 1
some_label_for_btype_26071314583850715320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000000000002 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
blt x14, x26, some_label_for_btype_26071314583850715321 # perform operation 
addi x0, x1, 1
some_label_for_btype_26071314583850715321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x29, 0x4d8e4f50a8cba3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x5555555555555555 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
blt x27, x31, some_label_for_btype_56824136400183916040 # perform operation 
addi x0, x1, 1
some_label_for_btype_56824136400183916040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
blt x27, x31, some_label_for_btype_56824136400183916041 # perform operation 
addi x0, x1, 1
some_label_for_btype_56824136400183916041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x16, 0x6017e041b0a25aad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x5555555555555555 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
blt x1, x25, some_label_for_btype_37577391610944224010 # perform operation 
addi x0, x1, 1
some_label_for_btype_37577391610944224010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
blt x1, x25, some_label_for_btype_37577391610944224011 # perform operation 
addi x0, x1, 1
some_label_for_btype_37577391610944224011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x18, 0x64c65d30f967959b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x5555555555555555 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
blt x16, x28, some_label_for_btype_171733473361716632020 # perform operation 
addi x0, x1, 1
some_label_for_btype_171733473361716632020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x7fffffffffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
blt x16, x28, some_label_for_btype_171733473361716632021 # perform operation 
addi x0, x1, 1
some_label_for_btype_171733473361716632021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x14, 0x190bb59bd825ad3e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x5555555555555555 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
blt x28, x10, some_label_for_btype_139554103564813697840 # perform operation 
addi x0, x1, 1
some_label_for_btype_139554103564813697840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
blt x28, x10, some_label_for_btype_139554103564813697841 # perform operation 
addi x0, x1, 1
some_label_for_btype_139554103564813697841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x4, 0xebcd5d6403dd1594 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x5555555555555555 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
blt x27, x19, some_label_for_btype_4702560080691247760 # perform operation 
addi x0, x1, 1
some_label_for_btype_4702560080691247760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
blt x27, x19, some_label_for_btype_4702560080691247761 # perform operation 
addi x0, x1, 1
some_label_for_btype_4702560080691247761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x26, 0x0825a98838fff4de # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x5555555555555555 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
blt x30, x11, some_label_for_btype_40848304660586027120 # perform operation 
addi x0, x1, 1
some_label_for_btype_40848304660586027120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
blt x30, x11, some_label_for_btype_40848304660586027121 # perform operation 
addi x0, x1, 1
some_label_for_btype_40848304660586027121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x10, 0x8b1659eb1ce982b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x5555555555555555 # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
blt x21, x18, some_label_for_btype_57243808796051828930 # perform operation 
addi x0, x1, 1
some_label_for_btype_57243808796051828930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
blt x21, x18, some_label_for_btype_57243808796051828931 # perform operation 
addi x0, x1, 1
some_label_for_btype_57243808796051828931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x690c7fb3eb6179af # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5555555555555555 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x5, x2, some_label_for_btype_31005318530786940980 # perform operation 
addi x0, x1, 1
some_label_for_btype_31005318530786940980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x5, x2, some_label_for_btype_31005318530786940981 # perform operation 
addi x0, x1, 1
some_label_for_btype_31005318530786940981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x20, 0xf0aa57152c102feb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
blt x8, x23, some_label_for_btype_157033949894895198680 # perform operation 
addi x0, x1, 1
some_label_for_btype_157033949894895198680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
blt x8, x23, some_label_for_btype_157033949894895198681 # perform operation 
addi x0, x1, 1
some_label_for_btype_157033949894895198681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x31, 0xc7cb1a1ec796b0ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x5555555555555555 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
blt x1, x17, some_label_for_btype_111032768539699019910 # perform operation 
addi x0, x1, 1
some_label_for_btype_111032768539699019910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
blt x1, x17, some_label_for_btype_111032768539699019911 # perform operation 
addi x0, x1, 1
some_label_for_btype_111032768539699019911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x17, 0xdf71bd4b5d0c4681 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x5555555555555555 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
blt x13, x12, some_label_for_btype_79371903227384110060 # perform operation 
addi x0, x1, 1
some_label_for_btype_79371903227384110060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000000fffffffe # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
blt x13, x12, some_label_for_btype_79371903227384110061 # perform operation 
addi x0, x1, 1
some_label_for_btype_79371903227384110061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x27, 0x4f2c2685596baf1c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x5555555555555555 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
blt x17, x20, some_label_for_btype_107864471873705432740 # perform operation 
addi x0, x1, 1
some_label_for_btype_107864471873705432740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
blt x17, x20, some_label_for_btype_107864471873705432741 # perform operation 
addi x0, x1, 1
some_label_for_btype_107864471873705432741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x15, 0xf1e4c4ad24bc05d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x5555555555555555 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
blt x22, x5, some_label_for_btype_40618251879252752720 # perform operation 
addi x0, x1, 1
some_label_for_btype_40618251879252752720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000100000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
blt x22, x5, some_label_for_btype_40618251879252752721 # perform operation 
addi x0, x1, 1
some_label_for_btype_40618251879252752721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x5, 0x06443d4355acd50c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
blt x3, x31, some_label_for_btype_89033631925445610210 # perform operation 
addi x0, x1, 1
some_label_for_btype_89033631925445610210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
blt x3, x31, some_label_for_btype_89033631925445610211 # perform operation 
addi x0, x1, 1
some_label_for_btype_89033631925445610211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x7, 0xd34d68debf5269e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
blt x5, x1, some_label_for_btype_86584643593186555650 # perform operation 
addi x0, x1, 1
some_label_for_btype_86584643593186555650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
blt x5, x1, some_label_for_btype_86584643593186555651 # perform operation 
addi x0, x1, 1
some_label_for_btype_86584643593186555651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x12, 0x10a903860252d04d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
blt x17, x22, some_label_for_btype_91881032044383056710 # perform operation 
addi x0, x1, 1
some_label_for_btype_91881032044383056710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
blt x17, x22, some_label_for_btype_91881032044383056711 # perform operation 
addi x0, x1, 1
some_label_for_btype_91881032044383056711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x28, 0x696d33853d62dc7f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000000ffffffff # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
blt x19, x17, some_label_for_btype_123267092301487778730 # perform operation 
addi x0, x1, 1
some_label_for_btype_123267092301487778730:
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
blt x19, x17, some_label_for_btype_123267092301487778731 # perform operation 
addi x0, x1, 1
some_label_for_btype_123267092301487778731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x1, 0x07912f02e4f761a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000000ffffffff # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
blt x27, x29, some_label_for_btype_158381647149460705430 # perform operation 
addi x0, x1, 1
some_label_for_btype_158381647149460705430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
blt x27, x29, some_label_for_btype_158381647149460705431 # perform operation 
addi x0, x1, 1
some_label_for_btype_158381647149460705431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x1, 0x41dc0c60625e7e35 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000ffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
blt x28, x7, some_label_for_btype_98834659074538729580 # perform operation 
addi x0, x1, 1
some_label_for_btype_98834659074538729580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7fffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
blt x28, x7, some_label_for_btype_98834659074538729581 # perform operation 
addi x0, x1, 1
some_label_for_btype_98834659074538729581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x18, 0x20de9c36199247c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x00000000ffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
blt x29, x28, some_label_for_btype_34584591745120918500 # perform operation 
addi x0, x1, 1
some_label_for_btype_34584591745120918500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
blt x29, x28, some_label_for_btype_34584591745120918501 # perform operation 
addi x0, x1, 1
some_label_for_btype_34584591745120918501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x22, 0x916870f61a57d8ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000000ffffffff # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
blt x27, x4, some_label_for_btype_33700031354692141240 # perform operation 
addi x0, x1, 1
some_label_for_btype_33700031354692141240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xffffffffffffffff # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
blt x27, x4, some_label_for_btype_33700031354692141241 # perform operation 
addi x0, x1, 1
some_label_for_btype_33700031354692141241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x20, 0x2f00f5db25fa027c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x00000000ffffffff # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
blt x21, x5, some_label_for_btype_9391259681465905440 # perform operation 
addi x0, x1, 1
some_label_for_btype_9391259681465905440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xfffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
blt x21, x5, some_label_for_btype_9391259681465905441 # perform operation 
addi x0, x1, 1
some_label_for_btype_9391259681465905441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x13, 0x88e6f3210c22b798 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000000ffffffff # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
blt x30, x23, some_label_for_btype_36633787890442669590 # perform operation 
addi x0, x1, 1
some_label_for_btype_36633787890442669590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
blt x30, x23, some_label_for_btype_36633787890442669591 # perform operation 
addi x0, x1, 1
some_label_for_btype_36633787890442669591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x220a18cff8c3107d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000000ffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x31, x2, some_label_for_btype_61917691752285067420 # perform operation 
addi x0, x1, 1
some_label_for_btype_61917691752285067420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x31, x2, some_label_for_btype_61917691752285067421 # perform operation 
addi x0, x1, 1
some_label_for_btype_61917691752285067421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x7, 0xd6a38d24294c69da # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000000ffffffff # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
blt x13, x27, some_label_for_btype_101610528173931044080 # perform operation 
addi x0, x1, 1
some_label_for_btype_101610528173931044080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
blt x13, x27, some_label_for_btype_101610528173931044081 # perform operation 
addi x0, x1, 1
some_label_for_btype_101610528173931044081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x3, 0xe83a7821b41ef505 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x00000000ffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
blt x8, x27, some_label_for_btype_97189604957222466180 # perform operation 
addi x0, x1, 1
some_label_for_btype_97189604957222466180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x00000000ffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
blt x8, x27, some_label_for_btype_97189604957222466181 # perform operation 
addi x0, x1, 1
some_label_for_btype_97189604957222466181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x9, 0x0c780856963cec0b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000000ffffffff # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
blt x30, x13, some_label_for_btype_55600840009767382320 # perform operation 
addi x0, x1, 1
some_label_for_btype_55600840009767382320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
blt x30, x13, some_label_for_btype_55600840009767382321 # perform operation 
addi x0, x1, 1
some_label_for_btype_55600840009767382321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x18, 0x2325d95757ef019e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
blt x4, x5, some_label_for_btype_104277340560204902260 # perform operation 
addi x0, x1, 1
some_label_for_btype_104277340560204902260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000100000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
blt x4, x5, some_label_for_btype_104277340560204902261 # perform operation 
addi x0, x1, 1
some_label_for_btype_104277340560204902261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x29, 0xec9c324f36c79985 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
blt x4, x6, some_label_for_btype_161921600633597170530 # perform operation 
addi x0, x1, 1
some_label_for_btype_161921600633597170530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000100000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
blt x4, x6, some_label_for_btype_161921600633597170531 # perform operation 
addi x0, x1, 1
some_label_for_btype_161921600633597170531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x11, 0x144a8aa03eae0f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
blt x28, x12, some_label_for_btype_43115332163379474860 # perform operation 
addi x0, x1, 1
some_label_for_btype_43115332163379474860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
blt x28, x12, some_label_for_btype_43115332163379474861 # perform operation 
addi x0, x1, 1
some_label_for_btype_43115332163379474861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x29, 0xec9c36365b7616bf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
blt x4, x13, some_label_for_btype_15685017793348884350 # perform operation 
addi x0, x1, 1
some_label_for_btype_15685017793348884350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
blt x4, x13, some_label_for_btype_15685017793348884351 # perform operation 
addi x0, x1, 1
some_label_for_btype_15685017793348884351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x8, 0xe68daa408c04f7db # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
blt x30, x29, some_label_for_btype_37650235384309694310 # perform operation 
addi x0, x1, 1
some_label_for_btype_37650235384309694310:
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
blt x30, x29, some_label_for_btype_37650235384309694311 # perform operation 
addi x0, x1, 1
some_label_for_btype_37650235384309694311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x13, 0x741f804995101885 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000000fffffffe # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
blt x31, x11, some_label_for_btype_154693708353785263500 # perform operation 
addi x0, x1, 1
some_label_for_btype_154693708353785263500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x8000000000000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
blt x31, x11, some_label_for_btype_154693708353785263501 # perform operation 
addi x0, x1, 1
some_label_for_btype_154693708353785263501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x3, 0x52af7f1ca71ac242 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000000fffffffe # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
blt x14, x22, some_label_for_btype_131652599258879099570 # perform operation 
addi x0, x1, 1
some_label_for_btype_131652599258879099570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x8000000000000001 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
blt x14, x22, some_label_for_btype_131652599258879099571 # perform operation 
addi x0, x1, 1
some_label_for_btype_131652599258879099571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x18, 0x9d119ea76dfd010b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x00000000fffffffe # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
blt x3, x7, some_label_for_btype_94657929850494201620 # perform operation 
addi x0, x1, 1
some_label_for_btype_94657929850494201620:
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
blt x3, x7, some_label_for_btype_94657929850494201621 # perform operation 
addi x0, x1, 1
some_label_for_btype_94657929850494201621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0x1e0f84fb30f15819 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x00000000fffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
blt x26, x10, some_label_for_btype_113914691229665761060 # perform operation 
addi x0, x1, 1
some_label_for_btype_113914691229665761060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
blt x26, x10, some_label_for_btype_113914691229665761061 # perform operation 
addi x0, x1, 1
some_label_for_btype_113914691229665761061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x22, 0x0315cd05c32991df # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000000fffffffe # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
blt x12, x30, some_label_for_btype_162071407249382521750 # perform operation 
addi x0, x1, 1
some_label_for_btype_162071407249382521750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xffffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
blt x12, x30, some_label_for_btype_162071407249382521751 # perform operation 
addi x0, x1, 1
some_label_for_btype_162071407249382521751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x14, 0x19b46927de12ed64 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000000fffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
blt x12, x30, some_label_for_btype_128687812535159441040 # perform operation 
addi x0, x1, 1
some_label_for_btype_128687812535159441040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
blt x12, x30, some_label_for_btype_128687812535159441041 # perform operation 
addi x0, x1, 1
some_label_for_btype_128687812535159441041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x31, 0xe866bcd3ac62c7bc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000fffffffe # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
blt x28, x10, some_label_for_btype_9232754071671321190 # perform operation 
addi x0, x1, 1
some_label_for_btype_9232754071671321190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
blt x28, x10, some_label_for_btype_9232754071671321191 # perform operation 
addi x0, x1, 1
some_label_for_btype_9232754071671321191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x8d41ad0a913feb39 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000000fffffffe # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x15, x29, some_label_for_btype_182724178767387140190 # perform operation 
addi x0, x1, 1
some_label_for_btype_182724178767387140190:
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
blt x15, x29, some_label_for_btype_182724178767387140191 # perform operation 
addi x0, x1, 1
some_label_for_btype_182724178767387140191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x29, 0x7de028076f3c27c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000000fffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
blt x31, x22, some_label_for_btype_118291141212432125910 # perform operation 
addi x0, x1, 1
some_label_for_btype_118291141212432125910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x5555555555555555 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
blt x31, x22, some_label_for_btype_118291141212432125911 # perform operation 
addi x0, x1, 1
some_label_for_btype_118291141212432125911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x24, 0x861c33935faa1d50 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
blt x31, x28, some_label_for_btype_157750577358257419390 # perform operation 
addi x0, x1, 1
some_label_for_btype_157750577358257419390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x00000000ffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
blt x31, x28, some_label_for_btype_157750577358257419391 # perform operation 
addi x0, x1, 1
some_label_for_btype_157750577358257419391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x15, 0x585279085a58b243 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
blt x18, x20, some_label_for_btype_158589937148747246710 # perform operation 
addi x0, x1, 1
some_label_for_btype_158589937148747246710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
blt x18, x20, some_label_for_btype_158589937148747246711 # perform operation 
addi x0, x1, 1
some_label_for_btype_158589937148747246711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x7, 0x8df66e0ce8d4d5d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
blt x2, x19, some_label_for_btype_144575388489606784540 # perform operation 
addi x0, x1, 1
some_label_for_btype_144575388489606784540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000100000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
blt x2, x19, some_label_for_btype_144575388489606784541 # perform operation 
addi x0, x1, 1
some_label_for_btype_144575388489606784541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x12, 0x82ef32114949a56a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
blt x28, x10, some_label_for_btype_123860250990540755240 # perform operation 
addi x0, x1, 1
some_label_for_btype_123860250990540755240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
blt x28, x10, some_label_for_btype_123860250990540755241 # perform operation 
addi x0, x1, 1
some_label_for_btype_123860250990540755241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x26, 0x50ab3e2323cf1665 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000100000000 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
blt x2, x13, some_label_for_btype_171048822151615168670 # perform operation 
addi x0, x1, 1
some_label_for_btype_171048822151615168670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
blt x2, x13, some_label_for_btype_171048822151615168671 # perform operation 
addi x0, x1, 1
some_label_for_btype_171048822151615168671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x3, 0x7aa353bb09adc289 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
blt x27, x9, some_label_for_btype_172199669531937173190 # perform operation 
addi x0, x1, 1
some_label_for_btype_172199669531937173190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
blt x27, x9, some_label_for_btype_172199669531937173191 # perform operation 
addi x0, x1, 1
some_label_for_btype_172199669531937173191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x5, 0x100de7b85aed12ca # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0000000100000000 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
blt x15, x25, some_label_for_btype_5576395300699138720 # perform operation 
addi x0, x1, 1
some_label_for_btype_5576395300699138720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
blt x15, x25, some_label_for_btype_5576395300699138721 # perform operation 
addi x0, x1, 1
some_label_for_btype_5576395300699138721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x18, 0xd2ec221f88707384 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x0000000100000000 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
blt x23, x9, some_label_for_btype_47561839475680910500 # perform operation 
addi x0, x1, 1
some_label_for_btype_47561839475680910500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
blt x23, x9, some_label_for_btype_47561839475680910501 # perform operation 
addi x0, x1, 1
some_label_for_btype_47561839475680910501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x11, 0x44d49165a376d505 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x0000000100000000 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
blt x29, x24, some_label_for_btype_143352601082867943030 # perform operation 
addi x0, x1, 1
some_label_for_btype_143352601082867943030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
blt x29, x24, some_label_for_btype_143352601082867943031 # perform operation 
addi x0, x1, 1
some_label_for_btype_143352601082867943031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x12, 0xcb634c4c5a915e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x0000000100000000 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
blt x16, x24, some_label_for_btype_51866694913404793270 # perform operation 
addi x0, x1, 1
some_label_for_btype_51866694913404793270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x7fffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
blt x16, x24, some_label_for_btype_51866694913404793271 # perform operation 
addi x0, x1, 1
some_label_for_btype_51866694913404793271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x31, 0xc33fce9fb4117853 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000100000000 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
blt x2, x26, some_label_for_btype_1187068337034889350 # perform operation 
addi x0, x1, 1
some_label_for_btype_1187068337034889350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
blt x2, x26, some_label_for_btype_1187068337034889351 # perform operation 
addi x0, x1, 1
some_label_for_btype_1187068337034889351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x4, 0x8877cb6191663c97 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000100000000 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
blt x27, x9, some_label_for_btype_118615769692976039410 # perform operation 
addi x0, x1, 1
some_label_for_btype_118615769692976039410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xffffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
blt x27, x9, some_label_for_btype_118615769692976039411 # perform operation 
addi x0, x1, 1
some_label_for_btype_118615769692976039411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x15, 0x43893ae08f220293 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000100000000 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
blt x22, x1, some_label_for_btype_44460811719953647980 # perform operation 
addi x0, x1, 1
some_label_for_btype_44460811719953647980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xfffffffffffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
blt x22, x1, some_label_for_btype_44460811719953647981 # perform operation 
addi x0, x1, 1
some_label_for_btype_44460811719953647981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x10, 0xc96fbd89796d7279 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000100000000 # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
blt x24, x12, some_label_for_btype_13999543993953938160 # perform operation 
addi x0, x1, 1
some_label_for_btype_13999543993953938160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
blt x24, x12, some_label_for_btype_13999543993953938161 # perform operation 
addi x0, x1, 1
some_label_for_btype_13999543993953938161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0xe1f75186c3c7c83c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000100000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x3, x6, some_label_for_btype_55439915117949201220 # perform operation 
addi x0, x1, 1
some_label_for_btype_55439915117949201220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x3, x6, some_label_for_btype_55439915117949201221 # perform operation 
addi x0, x1, 1
some_label_for_btype_55439915117949201221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x23, 0xce1b8946afb4c59d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000100000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
blt x27, x2, some_label_for_btype_124586602937564717860 # perform operation 
addi x0, x1, 1
some_label_for_btype_124586602937564717860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x5555555555555555 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
blt x27, x2, some_label_for_btype_124586602937564717861 # perform operation 
addi x0, x1, 1
some_label_for_btype_124586602937564717861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x5, 0x61bbaaf33706b34b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000100000000 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
blt x9, x31, some_label_for_btype_180187965126142684060 # perform operation 
addi x0, x1, 1
some_label_for_btype_180187965126142684060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
blt x9, x31, some_label_for_btype_180187965126142684061 # perform operation 
addi x0, x1, 1
some_label_for_btype_180187965126142684061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x22, 0xf8a96093d9624ed8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0000000100000000 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
blt x14, x2, some_label_for_btype_174916889468981209770 # perform operation 
addi x0, x1, 1
some_label_for_btype_174916889468981209770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000000fffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
blt x14, x2, some_label_for_btype_174916889468981209771 # perform operation 
addi x0, x1, 1
some_label_for_btype_174916889468981209771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x2, 0x788f60c8aa4fe083 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x0000000100000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
blt x25, x19, some_label_for_btype_137026898311816588740 # perform operation 
addi x0, x1, 1
some_label_for_btype_137026898311816588740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x0000000100000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
blt x25, x19, some_label_for_btype_137026898311816588741 # perform operation 
addi x0, x1, 1
some_label_for_btype_137026898311816588741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x4, 0xb57c123a88b83ed8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0000000100000000 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
blt x30, x7, some_label_for_btype_165306812433620334900 # perform operation 
addi x0, x1, 1
some_label_for_btype_165306812433620334900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
blt x30, x7, some_label_for_btype_165306812433620334901 # perform operation 
addi x0, x1, 1
some_label_for_btype_165306812433620334901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x22, 0x71051d5805ad4679 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000100000001 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
blt x12, x7, some_label_for_btype_52656194162421214510 # perform operation 
addi x0, x1, 1
some_label_for_btype_52656194162421214510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
blt x12, x7, some_label_for_btype_52656194162421214511 # perform operation 
addi x0, x1, 1
some_label_for_btype_52656194162421214511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x22, 0xcc4ae4e38f323d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000100000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
blt x4, x28, some_label_for_btype_103759183269379339370 # perform operation 
addi x0, x1, 1
some_label_for_btype_103759183269379339370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
blt x4, x28, some_label_for_btype_103759183269379339371 # perform operation 
addi x0, x1, 1
some_label_for_btype_103759183269379339371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x4, 0xf9a1ee9da839b0c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000100000001 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
blt x28, x1, some_label_for_btype_81458863129851922230 # perform operation 
addi x0, x1, 1
some_label_for_btype_81458863129851922230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
blt x28, x1, some_label_for_btype_81458863129851922231 # perform operation 
addi x0, x1, 1
some_label_for_btype_81458863129851922231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x7, 0x4a6124a7946e3a29 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000100000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
blt x24, x26, some_label_for_btype_34355481877326944760 # perform operation 
addi x0, x1, 1
some_label_for_btype_34355481877326944760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
blt x24, x26, some_label_for_btype_34355481877326944761 # perform operation 
addi x0, x1, 1
some_label_for_btype_34355481877326944761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x26, 0xf489cb179f96c06c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000100000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
blt x1, x17, some_label_for_btype_156993339405089000320 # perform operation 
addi x0, x1, 1
some_label_for_btype_156993339405089000320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
blt x1, x17, some_label_for_btype_156993339405089000321 # perform operation 
addi x0, x1, 1
some_label_for_btype_156993339405089000321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x12, 0x5f5bb527fc7b43e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x0000000100000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
blt x16, x22, some_label_for_btype_605876019044143500 # perform operation 
addi x0, x1, 1
some_label_for_btype_605876019044143500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
blt x16, x22, some_label_for_btype_605876019044143501 # perform operation 
addi x0, x1, 1
some_label_for_btype_605876019044143501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x4, 0xed5c058bd6d7a7ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000100000001 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
blt x3, x24, some_label_for_btype_126832117305765554560 # perform operation 
addi x0, x1, 1
some_label_for_btype_126832117305765554560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x7ffffffffffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
blt x3, x24, some_label_for_btype_126832117305765554561 # perform operation 
addi x0, x1, 1
some_label_for_btype_126832117305765554561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x9, 0x4582ba9a0d40173d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000100000001 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
blt x28, x30, some_label_for_btype_64150453966356160960 # perform operation 
addi x0, x1, 1
some_label_for_btype_64150453966356160960:
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
blt x28, x30, some_label_for_btype_64150453966356160961 # perform operation 
addi x0, x1, 1
some_label_for_btype_64150453966356160961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x10, 0x12ac45fa0f384068 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000100000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
blt x18, x11, some_label_for_btype_134035045600346402720 # perform operation 
addi x0, x1, 1
some_label_for_btype_134035045600346402720:
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
blt x18, x11, some_label_for_btype_134035045600346402721 # perform operation 
addi x0, x1, 1
some_label_for_btype_134035045600346402721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x18, 0xbe31240e42de8779 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x0000000100000001 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
blt x17, x16, some_label_for_btype_172086662832503897080 # perform operation 
addi x0, x1, 1
some_label_for_btype_172086662832503897080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
blt x17, x16, some_label_for_btype_172086662832503897081 # perform operation 
addi x0, x1, 1
some_label_for_btype_172086662832503897081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x554845c072d84ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0000000100000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x30, x1, some_label_for_btype_171140267375712187130 # perform operation 
addi x0, x1, 1
some_label_for_btype_171140267375712187130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x30, x1, some_label_for_btype_171140267375712187131 # perform operation 
addi x0, x1, 1
some_label_for_btype_171140267375712187131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x9, 0x1317a3e6c6e82102 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x0000000100000001 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
blt x5, x27, some_label_for_btype_22929751271368339680 # perform operation 
addi x0, x1, 1
some_label_for_btype_22929751271368339680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
blt x5, x27, some_label_for_btype_22929751271368339681 # perform operation 
addi x0, x1, 1
some_label_for_btype_22929751271368339681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x5, 0xeaa309afcc9d2f02 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x0000000100000001 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
blt x23, x21, some_label_for_btype_10410283017016181740 # perform operation 
addi x0, x1, 1
some_label_for_btype_10410283017016181740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000000ffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
blt x23, x21, some_label_for_btype_10410283017016181741 # perform operation 
addi x0, x1, 1
some_label_for_btype_10410283017016181741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x3, 0xca007f5b154a31b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000100000001 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
blt x7, x6, some_label_for_btype_101825982756597280210 # perform operation 
addi x0, x1, 1
some_label_for_btype_101825982756597280210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
blt x7, x6, some_label_for_btype_101825982756597280211 # perform operation 
addi x0, x1, 1
some_label_for_btype_101825982756597280211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x1, 0xa80eeb51883a6f7f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
blt x4, x28, some_label_for_btype_109306119069763814780 # perform operation 
addi x0, x1, 1
some_label_for_btype_109306119069763814780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000100000000 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
blt x4, x28, some_label_for_btype_109306119069763814781 # perform operation 
addi x0, x1, 1
some_label_for_btype_109306119069763814781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x12, 0xb77549714af799b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000100000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
blt x31, x5, some_label_for_btype_179318669375748586770 # perform operation 
addi x0, x1, 1
some_label_for_btype_179318669375748586770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0000000100000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
blt x31, x5, some_label_for_btype_179318669375748586771 # perform operation 
addi x0, x1, 1
some_label_for_btype_179318669375748586771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x25, 0xd11a6033f478577e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x5cdebad0c5230c21 # initialize rs1
li x0, 0x495bfcdfa4cf9819 # initialize rs2
blt x0, x0, some_label_for_btype_178096515910672411250 # perform operation 
addi x0, x1, 1
some_label_for_btype_178096515910672411250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0x495bfcdfa4cf9819 # initialize rs1
li x0, 0x495bfcdfa4cf9819 # initialize rs2
blt x0, x0, some_label_for_btype_178096515910672411251 # perform operation 
addi x0, x1, 1
some_label_for_btype_178096515910672411251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x17, 0x255c8da87163cdee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xb9095542917a1b10 # initialize rs1
li x1, 0x967f2d2b3e5452a6 # initialize rs2
blt x1, x1, some_label_for_btype_132016803699123115030 # perform operation 
addi x0, x1, 1
some_label_for_btype_132016803699123115030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x967f2d2b3e5452a6 # initialize rs1
li x1, 0x967f2d2b3e5452a6 # initialize rs2
blt x1, x1, some_label_for_btype_132016803699123115031 # perform operation 
addi x0, x1, 1
some_label_for_btype_132016803699123115031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x15, 0x19100015655ba88c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x8ec6be858cfea77c # initialize rs1
li x2, 0x97a93c28c3268e95 # initialize rs2
blt x2, x2, some_label_for_btype_118038439067764951950 # perform operation 
addi x0, x1, 1
some_label_for_btype_118038439067764951950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x97a93c28c3268e95 # initialize rs1
li x2, 0x97a93c28c3268e95 # initialize rs2
blt x2, x2, some_label_for_btype_118038439067764951951 # perform operation 
addi x0, x1, 1
some_label_for_btype_118038439067764951951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x20, 0x88e880c748d05a7a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xb53edf074334a7d8 # initialize rs1
li x3, 0xcaff2064debf8328 # initialize rs2
blt x3, x3, some_label_for_btype_16156006025983344320 # perform operation 
addi x0, x1, 1
some_label_for_btype_16156006025983344320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xcaff2064debf8328 # initialize rs1
li x3, 0xcaff2064debf8328 # initialize rs2
blt x3, x3, some_label_for_btype_16156006025983344321 # perform operation 
addi x0, x1, 1
some_label_for_btype_16156006025983344321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x24, 0x49640ec836cbc2ee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x5243dce300f46e01 # initialize rs1
li x4, 0x89a630e6d0aacb5b # initialize rs2
blt x4, x4, some_label_for_btype_53067657041517514680 # perform operation 
addi x0, x1, 1
some_label_for_btype_53067657041517514680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x89a630e6d0aacb5b # initialize rs1
li x4, 0x89a630e6d0aacb5b # initialize rs2
blt x4, x4, some_label_for_btype_53067657041517514681 # perform operation 
addi x0, x1, 1
some_label_for_btype_53067657041517514681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x13, 0x41141449ef528bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x99b2e98d55bb0eff # initialize rs1
li x5, 0x29bce3848c402c4d # initialize rs2
blt x5, x5, some_label_for_btype_22191112782601536110 # perform operation 
addi x0, x1, 1
some_label_for_btype_22191112782601536110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x29bce3848c402c4d # initialize rs1
li x5, 0x29bce3848c402c4d # initialize rs2
blt x5, x5, some_label_for_btype_22191112782601536111 # perform operation 
addi x0, x1, 1
some_label_for_btype_22191112782601536111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x28, 0xdc3f1150e15c0725 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x2be4c8a13ed9e2c3 # initialize rs1
li x6, 0x5b434c0a6dc58f17 # initialize rs2
blt x6, x6, some_label_for_btype_116563924864246808050 # perform operation 
addi x0, x1, 1
some_label_for_btype_116563924864246808050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x5b434c0a6dc58f17 # initialize rs1
li x6, 0x5b434c0a6dc58f17 # initialize rs2
blt x6, x6, some_label_for_btype_116563924864246808051 # perform operation 
addi x0, x1, 1
some_label_for_btype_116563924864246808051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x1, 0x2ee8c97df83d4ef8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xef7978dc4724feeb # initialize rs1
li x7, 0x01131d0d030f20ba # initialize rs2
blt x7, x7, some_label_for_btype_50577358651176202400 # perform operation 
addi x0, x1, 1
some_label_for_btype_50577358651176202400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x01131d0d030f20ba # initialize rs1
li x7, 0x01131d0d030f20ba # initialize rs2
blt x7, x7, some_label_for_btype_50577358651176202401 # perform operation 
addi x0, x1, 1
some_label_for_btype_50577358651176202401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x18, 0x8e42458aa343569c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x3fb69b0479f96b37 # initialize rs1
li x8, 0xe6e9c1ec252cce00 # initialize rs2
blt x8, x8, some_label_for_btype_78499247321805811470 # perform operation 
addi x0, x1, 1
some_label_for_btype_78499247321805811470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xe6e9c1ec252cce00 # initialize rs1
li x8, 0xe6e9c1ec252cce00 # initialize rs2
blt x8, x8, some_label_for_btype_78499247321805811471 # perform operation 
addi x0, x1, 1
some_label_for_btype_78499247321805811471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x28, 0x3f986651c7496d13 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x4298736b640bd9c5 # initialize rs1
li x9, 0x23b3aca0100c6d08 # initialize rs2
blt x9, x9, some_label_for_btype_182897306812572009360 # perform operation 
addi x0, x1, 1
some_label_for_btype_182897306812572009360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x23b3aca0100c6d08 # initialize rs1
li x9, 0x23b3aca0100c6d08 # initialize rs2
blt x9, x9, some_label_for_btype_182897306812572009361 # perform operation 
addi x0, x1, 1
some_label_for_btype_182897306812572009361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x3, 0x59e5a91d6a5ebe8a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x53528bb88e0f8b51 # initialize rs1
li x10, 0x714a983791e6bf8c # initialize rs2
blt x10, x10, some_label_for_btype_105407839991903345640 # perform operation 
addi x0, x1, 1
some_label_for_btype_105407839991903345640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x714a983791e6bf8c # initialize rs1
li x10, 0x714a983791e6bf8c # initialize rs2
blt x10, x10, some_label_for_btype_105407839991903345641 # perform operation 
addi x0, x1, 1
some_label_for_btype_105407839991903345641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x22, 0xdca612cae7b68a29 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x396fddb80b39851e # initialize rs1
li x11, 0xd0d34f70eb40b9a4 # initialize rs2
blt x11, x11, some_label_for_btype_99316160140798752810 # perform operation 
addi x0, x1, 1
some_label_for_btype_99316160140798752810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xd0d34f70eb40b9a4 # initialize rs1
li x11, 0xd0d34f70eb40b9a4 # initialize rs2
blt x11, x11, some_label_for_btype_99316160140798752811 # perform operation 
addi x0, x1, 1
some_label_for_btype_99316160140798752811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x29, 0xe97daaa12b142807 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xb8f1588fd6ccfcf9 # initialize rs1
li x12, 0xf90130e79f1a413f # initialize rs2
blt x12, x12, some_label_for_btype_44323011058829656920 # perform operation 
addi x0, x1, 1
some_label_for_btype_44323011058829656920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xf90130e79f1a413f # initialize rs1
li x12, 0xf90130e79f1a413f # initialize rs2
blt x12, x12, some_label_for_btype_44323011058829656921 # perform operation 
addi x0, x1, 1
some_label_for_btype_44323011058829656921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x18, 0x468a51c55af1ddb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xa51694204c1da5a2 # initialize rs1
li x13, 0x1a08384d2c8afa53 # initialize rs2
blt x13, x13, some_label_for_btype_126379532769380102550 # perform operation 
addi x0, x1, 1
some_label_for_btype_126379532769380102550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x1a08384d2c8afa53 # initialize rs1
li x13, 0x1a08384d2c8afa53 # initialize rs2
blt x13, x13, some_label_for_btype_126379532769380102551 # perform operation 
addi x0, x1, 1
some_label_for_btype_126379532769380102551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x2, 0x29e4b39d2af1174e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x51bb3d20082aae6d # initialize rs1
li x14, 0xe77cf80654e3b8f8 # initialize rs2
blt x14, x14, some_label_for_btype_20713680950868765390 # perform operation 
addi x0, x1, 1
some_label_for_btype_20713680950868765390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xe77cf80654e3b8f8 # initialize rs1
li x14, 0xe77cf80654e3b8f8 # initialize rs2
blt x14, x14, some_label_for_btype_20713680950868765391 # perform operation 
addi x0, x1, 1
some_label_for_btype_20713680950868765391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x16, 0x255261da00573951 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x4e1acf1e3c04efa7 # initialize rs1
li x15, 0x5fe1bf1bdfe68d51 # initialize rs2
blt x15, x15, some_label_for_btype_119795245440853291180 # perform operation 
addi x0, x1, 1
some_label_for_btype_119795245440853291180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x5fe1bf1bdfe68d51 # initialize rs1
li x15, 0x5fe1bf1bdfe68d51 # initialize rs2
blt x15, x15, some_label_for_btype_119795245440853291181 # perform operation 
addi x0, x1, 1
some_label_for_btype_119795245440853291181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x31, 0xa6b875efe95589e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x292db897bd9bffbc # initialize rs1
li x16, 0xa8bc36a470494083 # initialize rs2
blt x16, x16, some_label_for_btype_43541092070791812600 # perform operation 
addi x0, x1, 1
some_label_for_btype_43541092070791812600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xa8bc36a470494083 # initialize rs1
li x16, 0xa8bc36a470494083 # initialize rs2
blt x16, x16, some_label_for_btype_43541092070791812601 # perform operation 
addi x0, x1, 1
some_label_for_btype_43541092070791812601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x5, 0xd1a7f7534391b272 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x57f5a0aafda8b7bc # initialize rs1
li x17, 0xe3f4838f07054c5f # initialize rs2
blt x17, x17, some_label_for_btype_85668493414897106800 # perform operation 
addi x0, x1, 1
some_label_for_btype_85668493414897106800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xe3f4838f07054c5f # initialize rs1
li x17, 0xe3f4838f07054c5f # initialize rs2
blt x17, x17, some_label_for_btype_85668493414897106801 # perform operation 
addi x0, x1, 1
some_label_for_btype_85668493414897106801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x16, 0x45e86476c6bb9f80 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x63df55874878a011 # initialize rs1
li x18, 0xca7e5d6546be7a8f # initialize rs2
blt x18, x18, some_label_for_btype_25448009443351359200 # perform operation 
addi x0, x1, 1
some_label_for_btype_25448009443351359200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xca7e5d6546be7a8f # initialize rs1
li x18, 0xca7e5d6546be7a8f # initialize rs2
blt x18, x18, some_label_for_btype_25448009443351359201 # perform operation 
addi x0, x1, 1
some_label_for_btype_25448009443351359201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x10, 0x744afa5b0ee82907 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x35a52d1df15a511a # initialize rs1
li x19, 0x43055b968b37c19a # initialize rs2
blt x19, x19, some_label_for_btype_169096163337039256140 # perform operation 
addi x0, x1, 1
some_label_for_btype_169096163337039256140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x43055b968b37c19a # initialize rs1
li x19, 0x43055b968b37c19a # initialize rs2
blt x19, x19, some_label_for_btype_169096163337039256141 # perform operation 
addi x0, x1, 1
some_label_for_btype_169096163337039256141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x5, 0x94df47d5d4be80cd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xe0210e9a7db1aebc # initialize rs1
li x20, 0x83dae24e786e8798 # initialize rs2
blt x20, x20, some_label_for_btype_88399544971228590390 # perform operation 
addi x0, x1, 1
some_label_for_btype_88399544971228590390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x83dae24e786e8798 # initialize rs1
li x20, 0x83dae24e786e8798 # initialize rs2
blt x20, x20, some_label_for_btype_88399544971228590391 # perform operation 
addi x0, x1, 1
some_label_for_btype_88399544971228590391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x19, 0x8c9f31082a68871d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0a5ca47799f19866 # initialize rs1
li x21, 0x479a3951b867b6eb # initialize rs2
blt x21, x21, some_label_for_btype_114258935411087257170 # perform operation 
addi x0, x1, 1
some_label_for_btype_114258935411087257170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x479a3951b867b6eb # initialize rs1
li x21, 0x479a3951b867b6eb # initialize rs2
blt x21, x21, some_label_for_btype_114258935411087257171 # perform operation 
addi x0, x1, 1
some_label_for_btype_114258935411087257171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x1, 0x6ec30ae03482bc7e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x9577503c6db15d93 # initialize rs1
li x22, 0x42b57ef98a564be2 # initialize rs2
blt x22, x22, some_label_for_btype_9891123566508480360 # perform operation 
addi x0, x1, 1
some_label_for_btype_9891123566508480360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x42b57ef98a564be2 # initialize rs1
li x22, 0x42b57ef98a564be2 # initialize rs2
blt x22, x22, some_label_for_btype_9891123566508480361 # perform operation 
addi x0, x1, 1
some_label_for_btype_9891123566508480361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x27, 0xfc91d82e8e7e0b75 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xff711015debaf3b9 # initialize rs1
li x23, 0x8d609b6e94fca08a # initialize rs2
blt x23, x23, some_label_for_btype_123473093701760448400 # perform operation 
addi x0, x1, 1
some_label_for_btype_123473093701760448400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x8d609b6e94fca08a # initialize rs1
li x23, 0x8d609b6e94fca08a # initialize rs2
blt x23, x23, some_label_for_btype_123473093701760448401 # perform operation 
addi x0, x1, 1
some_label_for_btype_123473093701760448401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x31, 0xf35935783871910e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x284eb2de3b9ae6d7 # initialize rs1
li x24, 0x281e0c5b85e54425 # initialize rs2
blt x24, x24, some_label_for_btype_112998942467340862970 # perform operation 
addi x0, x1, 1
some_label_for_btype_112998942467340862970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x281e0c5b85e54425 # initialize rs1
li x24, 0x281e0c5b85e54425 # initialize rs2
blt x24, x24, some_label_for_btype_112998942467340862971 # perform operation 
addi x0, x1, 1
some_label_for_btype_112998942467340862971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x6, 0x957f8abd6b82486a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x892e5609fd2c7e2b # initialize rs1
li x25, 0x31bfbf44e4bdbcff # initialize rs2
blt x25, x25, some_label_for_btype_91034305095807088800 # perform operation 
addi x0, x1, 1
some_label_for_btype_91034305095807088800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x31bfbf44e4bdbcff # initialize rs1
li x25, 0x31bfbf44e4bdbcff # initialize rs2
blt x25, x25, some_label_for_btype_91034305095807088801 # perform operation 
addi x0, x1, 1
some_label_for_btype_91034305095807088801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x2, 0xd1e9970933026369 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x34283dadb558922e # initialize rs1
li x26, 0x658de348e3da116e # initialize rs2
blt x26, x26, some_label_for_btype_24636970318765185390 # perform operation 
addi x0, x1, 1
some_label_for_btype_24636970318765185390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x658de348e3da116e # initialize rs1
li x26, 0x658de348e3da116e # initialize rs2
blt x26, x26, some_label_for_btype_24636970318765185391 # perform operation 
addi x0, x1, 1
some_label_for_btype_24636970318765185391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x29, 0xaee0c26e06c1b9fd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xa94e23e9a257c580 # initialize rs1
li x27, 0xe924ddea1f529df2 # initialize rs2
blt x27, x27, some_label_for_btype_119239539427115413850 # perform operation 
addi x0, x1, 1
some_label_for_btype_119239539427115413850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xe924ddea1f529df2 # initialize rs1
li x27, 0xe924ddea1f529df2 # initialize rs2
blt x27, x27, some_label_for_btype_119239539427115413851 # perform operation 
addi x0, x1, 1
some_label_for_btype_119239539427115413851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x27, 0xc1fd061caa914268 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x8f8c81a2e202945a # initialize rs1
li x28, 0x547978f61e826414 # initialize rs2
blt x28, x28, some_label_for_btype_137568603979042597840 # perform operation 
addi x0, x1, 1
some_label_for_btype_137568603979042597840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x547978f61e826414 # initialize rs1
li x28, 0x547978f61e826414 # initialize rs2
blt x28, x28, some_label_for_btype_137568603979042597841 # perform operation 
addi x0, x1, 1
some_label_for_btype_137568603979042597841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x21, 0xd7e6c9d416b6a0eb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xcf5dd5f01ccaaa6c # initialize rs1
li x29, 0x7c798cc14109f688 # initialize rs2
blt x29, x29, some_label_for_btype_151211669935501778460 # perform operation 
addi x0, x1, 1
some_label_for_btype_151211669935501778460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x7c798cc14109f688 # initialize rs1
li x29, 0x7c798cc14109f688 # initialize rs2
blt x29, x29, some_label_for_btype_151211669935501778461 # perform operation 
addi x0, x1, 1
some_label_for_btype_151211669935501778461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x21, 0xf1cf150987a6c5b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x9ec10b9d7dee2876 # initialize rs1
li x30, 0x6632b54d076d0652 # initialize rs2
blt x30, x30, some_label_for_btype_66385952408112400740 # perform operation 
addi x0, x1, 1
some_label_for_btype_66385952408112400740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x6632b54d076d0652 # initialize rs1
li x30, 0x6632b54d076d0652 # initialize rs2
blt x30, x30, some_label_for_btype_66385952408112400741 # perform operation 
addi x0, x1, 1
some_label_for_btype_66385952408112400741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x2, 0x4ffcefd47d0eeb18 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x4c245fcd09b47691 # initialize rs1
li x31, 0x20e587b977bab8bd # initialize rs2
blt x31, x31, some_label_for_btype_143251646486324558200 # perform operation 
addi x0, x1, 1
some_label_for_btype_143251646486324558200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x20e587b977bab8bd # initialize rs1
li x31, 0x20e587b977bab8bd # initialize rs2
blt x31, x31, some_label_for_btype_143251646486324558201 # perform operation 
addi x0, x1, 1
some_label_for_btype_143251646486324558201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = 0x7f39d6d683b4155a)
li x12, 0x56d8befc4c0745c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x7f39d6d683b4155a # initialize rs1
li x2, 0xe3e7c74587ea3a1b # initialize rs2
blt x1, x2, some_label_for_btype_59827981165740623190 # perform operation 
addi x0, x1, 1
some_label_for_btype_59827981165740623190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xe3e7c74587ea3a1b # initialize rs1
li x2, 0xe3e7c74587ea3a1b # initialize rs2
blt x1, x2, some_label_for_btype_59827981165740623191 # perform operation 
addi x0, x1, 1
some_label_for_btype_59827981165740623191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x65b4ef25828587a1)
li x11, 0x7dd438b8f0247043 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x9a4b10da7d7a785f # initialize rs1
li x17, 0x879b8b8036440996 # initialize rs2
blt x6, x17, some_label_for_btype_49025890183544250250 # perform operation 
addi x0, x1, 1
some_label_for_btype_49025890183544250250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x879b8b8036440996 # initialize rs1
li x17, 0x879b8b8036440996 # initialize rs2
blt x6, x17, some_label_for_btype_49025890183544250251 # perform operation 
addi x0, x1, 1
some_label_for_btype_49025890183544250251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = 0x3e5b3735a8cecfd0)
li x4, 0x436c7eea77add017 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x69818b27dc66479d # initialize rs1
li x5, 0x3e5b3735a8cecfd0 # initialize rs2
blt x30, x5, some_label_for_btype_6100177929167731890 # perform operation 
addi x0, x1, 1
some_label_for_btype_6100177929167731890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x3e5b3735a8cecfd0 # initialize rs1
li x5, 0x3e5b3735a8cecfd0 # initialize rs2
blt x30, x5, some_label_for_btype_6100177929167731891 # perform operation 
addi x0, x1, 1
some_label_for_btype_6100177929167731891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = -0x6e8101e86d563314)
li x17, 0x588f347952d77481 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xa87c53b0fe7c42f4 # initialize rs1
li x19, 0x917efe1792a9ccec # initialize rs2
blt x16, x19, some_label_for_btype_110152862699813600880 # perform operation 
addi x0, x1, 1
some_label_for_btype_110152862699813600880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x917efe1792a9ccec # initialize rs1
li x19, 0x917efe1792a9ccec # initialize rs2
blt x16, x19, some_label_for_btype_110152862699813600881 # perform operation 
addi x0, x1, 1
some_label_for_btype_110152862699813600881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: blt x0, x0, 1b # backward branch
3: nop # done with sequence

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
