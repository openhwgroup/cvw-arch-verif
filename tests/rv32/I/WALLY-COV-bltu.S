///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-bltu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.954352
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x26, 0x8a695d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0xb1171b47 # initialize rs1
li x15, 0xa20d6f1b # initialize rs2
bltu x0, x15, some_label_for_btype_29451739910 # perform operation 
addi x0, x1, 1
some_label_for_btype_29451739910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0xa20d6f1b # initialize rs1
li x15, 0xa20d6f1b # initialize rs2
bltu x0, x15, some_label_for_btype_29451739911 # perform operation 
addi x0, x1, 1
some_label_for_btype_29451739911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x1)
li x2, 0xc88ceb21 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x7580fd68 # initialize rs1
li x6, 0xf4237289 # initialize rs2
bltu x1, x6, some_label_for_btype_17088054150 # perform operation 
addi x0, x1, 1
some_label_for_btype_17088054150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xf4237289 # initialize rs1
li x6, 0xf4237289 # initialize rs2
bltu x1, x6, some_label_for_btype_17088054151 # perform operation 
addi x0, x1, 1
some_label_for_btype_17088054151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x2)
li x16, 0xbee70330 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x2160f985 # initialize rs1
li x28, 0x02ed777f # initialize rs2
bltu x2, x28, some_label_for_btype_4898610710 # perform operation 
addi x0, x1, 1
some_label_for_btype_4898610710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x02ed777f # initialize rs1
li x28, 0x02ed777f # initialize rs2
bltu x2, x28, some_label_for_btype_4898610711 # perform operation 
addi x0, x1, 1
some_label_for_btype_4898610711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x3)
li x26, 0x09010458 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xbb1bbc40 # initialize rs1
li x8, 0x931f19b8 # initialize rs2
bltu x3, x8, some_label_for_btype_25210733000 # perform operation 
addi x0, x1, 1
some_label_for_btype_25210733000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x931f19b8 # initialize rs1
li x8, 0x931f19b8 # initialize rs2
bltu x3, x8, some_label_for_btype_25210733001 # perform operation 
addi x0, x1, 1
some_label_for_btype_25210733001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x4)
li x25, 0x03b32bcd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x62d72b10 # initialize rs1
li x18, 0x9799eac6 # initialize rs2
bltu x4, x18, some_label_for_btype_20311650930 # perform operation 
addi x0, x1, 1
some_label_for_btype_20311650930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x9799eac6 # initialize rs1
li x18, 0x9799eac6 # initialize rs2
bltu x4, x18, some_label_for_btype_20311650931 # perform operation 
addi x0, x1, 1
some_label_for_btype_20311650931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x5)
li x1, 0x5e1b1aab # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x288052e7 # initialize rs1
li x14, 0xb37b0c00 # initialize rs2
bltu x5, x14, some_label_for_btype_7347065270 # perform operation 
addi x0, x1, 1
some_label_for_btype_7347065270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xb37b0c00 # initialize rs1
li x14, 0xb37b0c00 # initialize rs2
bltu x5, x14, some_label_for_btype_7347065271 # perform operation 
addi x0, x1, 1
some_label_for_btype_7347065271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x6)
li x18, 0x06ce70ec # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xf0b9e4ac # initialize rs1
li x12, 0xfc7b26a7 # initialize rs2
bltu x6, x12, some_label_for_btype_32402400010 # perform operation 
addi x0, x1, 1
some_label_for_btype_32402400010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xfc7b26a7 # initialize rs1
li x12, 0xfc7b26a7 # initialize rs2
bltu x6, x12, some_label_for_btype_32402400011 # perform operation 
addi x0, x1, 1
some_label_for_btype_32402400011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x7)
li x8, 0xccf70c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x876591cd # initialize rs1
li x27, 0x4368418a # initialize rs2
bltu x7, x27, some_label_for_btype_5062179010 # perform operation 
addi x0, x1, 1
some_label_for_btype_5062179010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x4368418a # initialize rs1
li x27, 0x4368418a # initialize rs2
bltu x7, x27, some_label_for_btype_5062179011 # perform operation 
addi x0, x1, 1
some_label_for_btype_5062179011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x8)
li x29, 0x28706b0a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x6ef8212c # initialize rs1
li x25, 0xb88d5a60 # initialize rs2
bltu x8, x25, some_label_for_btype_19301948540 # perform operation 
addi x0, x1, 1
some_label_for_btype_19301948540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xb88d5a60 # initialize rs1
li x25, 0xb88d5a60 # initialize rs2
bltu x8, x25, some_label_for_btype_19301948541 # perform operation 
addi x0, x1, 1
some_label_for_btype_19301948541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x24, 0x4f4b9ec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0c2c4f06 # initialize rs1
li x11, 0x9637f709 # initialize rs2
bltu x9, x11, some_label_for_btype_33872375120 # perform operation 
addi x0, x1, 1
some_label_for_btype_33872375120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x9637f709 # initialize rs1
li x11, 0x9637f709 # initialize rs2
bltu x9, x11, some_label_for_btype_33872375121 # perform operation 
addi x0, x1, 1
some_label_for_btype_33872375121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x24, 0xc0dbe890 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x49b6ea18 # initialize rs1
li x28, 0x70489712 # initialize rs2
bltu x10, x28, some_label_for_btype_12531535100 # perform operation 
addi x0, x1, 1
some_label_for_btype_12531535100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x70489712 # initialize rs1
li x28, 0x70489712 # initialize rs2
bltu x10, x28, some_label_for_btype_12531535101 # perform operation 
addi x0, x1, 1
some_label_for_btype_12531535101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x29, 0xe03c103b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xd49f7f5e # initialize rs1
li x10, 0x9db9817d # initialize rs2
bltu x11, x10, some_label_for_btype_22274804150 # perform operation 
addi x0, x1, 1
some_label_for_btype_22274804150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x9db9817d # initialize rs1
li x10, 0x9db9817d # initialize rs2
bltu x11, x10, some_label_for_btype_22274804151 # perform operation 
addi x0, x1, 1
some_label_for_btype_22274804151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x26, 0x5ccf78e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x7a712e82 # initialize rs1
li x21, 0xc5325fa7 # initialize rs2
bltu x12, x21, some_label_for_btype_38079637150 # perform operation 
addi x0, x1, 1
some_label_for_btype_38079637150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xc5325fa7 # initialize rs1
li x21, 0xc5325fa7 # initialize rs2
bltu x12, x21, some_label_for_btype_38079637151 # perform operation 
addi x0, x1, 1
some_label_for_btype_38079637151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0x5b8db4fe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x3074bcbb # initialize rs1
li x30, 0x9a4651f7 # initialize rs2
bltu x13, x30, some_label_for_btype_40365544090 # perform operation 
addi x0, x1, 1
some_label_for_btype_40365544090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x9a4651f7 # initialize rs1
li x30, 0x9a4651f7 # initialize rs2
bltu x13, x30, some_label_for_btype_40365544091 # perform operation 
addi x0, x1, 1
some_label_for_btype_40365544091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x26, 0x78be99ab # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x39b55b11 # initialize rs1
li x29, 0xbc6815e7 # initialize rs2
bltu x14, x29, some_label_for_btype_20735243480 # perform operation 
addi x0, x1, 1
some_label_for_btype_20735243480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xbc6815e7 # initialize rs1
li x29, 0xbc6815e7 # initialize rs2
bltu x14, x29, some_label_for_btype_20735243481 # perform operation 
addi x0, x1, 1
some_label_for_btype_20735243481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0xb4ab0ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x50d320bb # initialize rs1
li x24, 0x753e6020 # initialize rs2
bltu x15, x24, some_label_for_btype_28061805090 # perform operation 
addi x0, x1, 1
some_label_for_btype_28061805090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x753e6020 # initialize rs1
li x24, 0x753e6020 # initialize rs2
bltu x15, x24, some_label_for_btype_28061805091 # perform operation 
addi x0, x1, 1
some_label_for_btype_28061805091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x16)
li x1, 0x8a39aa7b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xfd399580 # initialize rs1
li x29, 0x5e6acaf9 # initialize rs2
bltu x16, x29, some_label_for_btype_38884657600 # perform operation 
addi x0, x1, 1
some_label_for_btype_38884657600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5e6acaf9 # initialize rs1
li x29, 0x5e6acaf9 # initialize rs2
bltu x16, x29, some_label_for_btype_38884657601 # perform operation 
addi x0, x1, 1
some_label_for_btype_38884657601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x17)
li x14, 0xa1c1f01e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x412c98b2 # initialize rs1
li x9, 0xb7bf492b # initialize rs2
bltu x17, x9, some_label_for_btype_13250682220 # perform operation 
addi x0, x1, 1
some_label_for_btype_13250682220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xb7bf492b # initialize rs1
li x9, 0xb7bf492b # initialize rs2
bltu x17, x9, some_label_for_btype_13250682221 # perform operation 
addi x0, x1, 1
some_label_for_btype_13250682221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x18)
li x5, 0xa36b8a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x3c55f669 # initialize rs1
li x25, 0xc408b664 # initialize rs2
bltu x18, x25, some_label_for_btype_13432571390 # perform operation 
addi x0, x1, 1
some_label_for_btype_13432571390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xc408b664 # initialize rs1
li x25, 0xc408b664 # initialize rs2
bltu x18, x25, some_label_for_btype_13432571391 # perform operation 
addi x0, x1, 1
some_label_for_btype_13432571391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x19)
li x12, 0xcd483c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x734b3fcb # initialize rs1
li x14, 0xf0fdd6b8 # initialize rs2
bltu x19, x14, some_label_for_btype_29710401240 # perform operation 
addi x0, x1, 1
some_label_for_btype_29710401240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xf0fdd6b8 # initialize rs1
li x14, 0xf0fdd6b8 # initialize rs2
bltu x19, x14, some_label_for_btype_29710401241 # perform operation 
addi x0, x1, 1
some_label_for_btype_29710401241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x20)
li x18, 0xa3532b14 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x820ff2e7 # initialize rs1
li x25, 0xd62e90c3 # initialize rs2
bltu x20, x25, some_label_for_btype_3055934390 # perform operation 
addi x0, x1, 1
some_label_for_btype_3055934390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xd62e90c3 # initialize rs1
li x25, 0xd62e90c3 # initialize rs2
bltu x20, x25, some_label_for_btype_3055934391 # perform operation 
addi x0, x1, 1
some_label_for_btype_3055934391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x21)
li x10, 0x4875ace8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xd80ae63a # initialize rs1
li x12, 0x01a67882 # initialize rs2
bltu x21, x12, some_label_for_btype_9930021210 # perform operation 
addi x0, x1, 1
some_label_for_btype_9930021210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x01a67882 # initialize rs1
li x12, 0x01a67882 # initialize rs2
bltu x21, x12, some_label_for_btype_9930021211 # perform operation 
addi x0, x1, 1
some_label_for_btype_9930021211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x22)
li x23, 0x318bd9a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x23025bfc # initialize rs1
li x1, 0xac2aa155 # initialize rs2
bltu x22, x1, some_label_for_btype_6381511130 # perform operation 
addi x0, x1, 1
some_label_for_btype_6381511130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xac2aa155 # initialize rs1
li x1, 0xac2aa155 # initialize rs2
bltu x22, x1, some_label_for_btype_6381511131 # perform operation 
addi x0, x1, 1
some_label_for_btype_6381511131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x23)
li x28, 0xbd41f323 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xfdab991d # initialize rs1
li x21, 0xe4747c6e # initialize rs2
bltu x23, x21, some_label_for_btype_23171840880 # perform operation 
addi x0, x1, 1
some_label_for_btype_23171840880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xe4747c6e # initialize rs1
li x21, 0xe4747c6e # initialize rs2
bltu x23, x21, some_label_for_btype_23171840881 # perform operation 
addi x0, x1, 1
some_label_for_btype_23171840881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x24)
li x15, 0xb0490d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xc7ea5a35 # initialize rs1
li x2, 0xd2b1b5a8 # initialize rs2
bltu x24, x2, some_label_for_btype_41524530550 # perform operation 
addi x0, x1, 1
some_label_for_btype_41524530550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xd2b1b5a8 # initialize rs1
li x2, 0xd2b1b5a8 # initialize rs2
bltu x24, x2, some_label_for_btype_41524530551 # perform operation 
addi x0, x1, 1
some_label_for_btype_41524530551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x25)
li x17, 0x45f2c81c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x9af1ffd6 # initialize rs1
li x15, 0x581a6518 # initialize rs2
bltu x25, x15, some_label_for_btype_9962474320 # perform operation 
addi x0, x1, 1
some_label_for_btype_9962474320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x581a6518 # initialize rs1
li x15, 0x581a6518 # initialize rs2
bltu x25, x15, some_label_for_btype_9962474321 # perform operation 
addi x0, x1, 1
some_label_for_btype_9962474321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x26)
li x2, 0x0ee5cd7c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x10b2beac # initialize rs1
li x31, 0xdd62d642 # initialize rs2
bltu x26, x31, some_label_for_btype_9889000740 # perform operation 
addi x0, x1, 1
some_label_for_btype_9889000740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xdd62d642 # initialize rs1
li x31, 0xdd62d642 # initialize rs2
bltu x26, x31, some_label_for_btype_9889000741 # perform operation 
addi x0, x1, 1
some_label_for_btype_9889000741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x27)
li x5, 0x5f0ab1e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0413ffcc # initialize rs1
li x1, 0x4aea5855 # initialize rs2
bltu x27, x1, some_label_for_btype_17467837190 # perform operation 
addi x0, x1, 1
some_label_for_btype_17467837190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x4aea5855 # initialize rs1
li x1, 0x4aea5855 # initialize rs2
bltu x27, x1, some_label_for_btype_17467837191 # perform operation 
addi x0, x1, 1
some_label_for_btype_17467837191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x28)
li x14, 0x4302d502 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x74e660a0 # initialize rs1
li x10, 0x49471754 # initialize rs2
bltu x28, x10, some_label_for_btype_11114960660 # perform operation 
addi x0, x1, 1
some_label_for_btype_11114960660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x49471754 # initialize rs1
li x10, 0x49471754 # initialize rs2
bltu x28, x10, some_label_for_btype_11114960661 # perform operation 
addi x0, x1, 1
some_label_for_btype_11114960661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x29)
li x3, 0x002e9a78 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xefb69eba # initialize rs1
li x16, 0xb94f8358 # initialize rs2
bltu x29, x16, some_label_for_btype_29032100010 # perform operation 
addi x0, x1, 1
some_label_for_btype_29032100010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xb94f8358 # initialize rs1
li x16, 0xb94f8358 # initialize rs2
bltu x29, x16, some_label_for_btype_29032100011 # perform operation 
addi x0, x1, 1
some_label_for_btype_29032100011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x30)
li x8, 0x07ce62ba # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x55d6e650 # initialize rs1
li x18, 0x6982bf12 # initialize rs2
bltu x30, x18, some_label_for_btype_32072569250 # perform operation 
addi x0, x1, 1
some_label_for_btype_32072569250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x6982bf12 # initialize rs1
li x18, 0x6982bf12 # initialize rs2
bltu x30, x18, some_label_for_btype_32072569251 # perform operation 
addi x0, x1, 1
some_label_for_btype_32072569251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x31)
li x10, 0x0be3a868 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x05cc40cc # initialize rs1
li x11, 0x7ce65e55 # initialize rs2
bltu x31, x11, some_label_for_btype_28407213980 # perform operation 
addi x0, x1, 1
some_label_for_btype_28407213980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7ce65e55 # initialize rs1
li x11, 0x7ce65e55 # initialize rs2
bltu x31, x11, some_label_for_btype_28407213981 # perform operation 
addi x0, x1, 1
some_label_for_btype_28407213981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x0)
li x3, 0x5b416db4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x00cba394 # initialize rs1
li x0, 0x7d581ee6 # initialize rs2
bltu x6, x0, some_label_for_btype_21969342160 # perform operation 
addi x0, x1, 1
some_label_for_btype_21969342160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x7d581ee6 # initialize rs1
li x0, 0x7d581ee6 # initialize rs2
bltu x6, x0, some_label_for_btype_21969342161 # perform operation 
addi x0, x1, 1
some_label_for_btype_21969342161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x1)
li x17, 0x11a724e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x69607a0f # initialize rs1
li x1, 0x05950eb6 # initialize rs2
bltu x13, x1, some_label_for_btype_38641696660 # perform operation 
addi x0, x1, 1
some_label_for_btype_38641696660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x05950eb6 # initialize rs1
li x1, 0x05950eb6 # initialize rs2
bltu x13, x1, some_label_for_btype_38641696661 # perform operation 
addi x0, x1, 1
some_label_for_btype_38641696661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x2)
li x4, 0xa3c9a6e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0a36696b # initialize rs1
li x2, 0x290d905e # initialize rs2
bltu x18, x2, some_label_for_btype_21843069370 # perform operation 
addi x0, x1, 1
some_label_for_btype_21843069370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x290d905e # initialize rs1
li x2, 0x290d905e # initialize rs2
bltu x18, x2, some_label_for_btype_21843069371 # perform operation 
addi x0, x1, 1
some_label_for_btype_21843069371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x3)
li x2, 0x3fced841 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x37844de3 # initialize rs1
li x3, 0x33398ba1 # initialize rs2
bltu x17, x3, some_label_for_btype_14219662140 # perform operation 
addi x0, x1, 1
some_label_for_btype_14219662140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x33398ba1 # initialize rs1
li x3, 0x33398ba1 # initialize rs2
bltu x17, x3, some_label_for_btype_14219662141 # perform operation 
addi x0, x1, 1
some_label_for_btype_14219662141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x4)
li x20, 0x0b33cb91 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x5412458d # initialize rs1
li x4, 0xe150bdf5 # initialize rs2
bltu x11, x4, some_label_for_btype_7838708990 # perform operation 
addi x0, x1, 1
some_label_for_btype_7838708990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xe150bdf5 # initialize rs1
li x4, 0xe150bdf5 # initialize rs2
bltu x11, x4, some_label_for_btype_7838708991 # perform operation 
addi x0, x1, 1
some_label_for_btype_7838708991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x5)
li x28, 0x1572487a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xc930af65 # initialize rs1
li x5, 0x0969889e # initialize rs2
bltu x15, x5, some_label_for_btype_6545798360 # perform operation 
addi x0, x1, 1
some_label_for_btype_6545798360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0969889e # initialize rs1
li x5, 0x0969889e # initialize rs2
bltu x15, x5, some_label_for_btype_6545798361 # perform operation 
addi x0, x1, 1
some_label_for_btype_6545798361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x6)
li x27, 0x5077d846 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x41272c44 # initialize rs1
li x6, 0x1ff26b62 # initialize rs2
bltu x30, x6, some_label_for_btype_22555154340 # perform operation 
addi x0, x1, 1
some_label_for_btype_22555154340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x1ff26b62 # initialize rs1
li x6, 0x1ff26b62 # initialize rs2
bltu x30, x6, some_label_for_btype_22555154341 # perform operation 
addi x0, x1, 1
some_label_for_btype_22555154341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x7)
li x29, 0x4391a773 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xf7d47bab # initialize rs1
li x7, 0xbb6c6329 # initialize rs2
bltu x5, x7, some_label_for_btype_23098829880 # perform operation 
addi x0, x1, 1
some_label_for_btype_23098829880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xbb6c6329 # initialize rs1
li x7, 0xbb6c6329 # initialize rs2
bltu x5, x7, some_label_for_btype_23098829881 # perform operation 
addi x0, x1, 1
some_label_for_btype_23098829881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x8)
li x3, 0xdc86ea0b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xb3bda22b # initialize rs1
li x8, 0xd3d80231 # initialize rs2
bltu x26, x8, some_label_for_btype_9459645120 # perform operation 
addi x0, x1, 1
some_label_for_btype_9459645120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xd3d80231 # initialize rs1
li x8, 0xd3d80231 # initialize rs2
bltu x26, x8, some_label_for_btype_9459645121 # perform operation 
addi x0, x1, 1
some_label_for_btype_9459645121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x9)
li x24, 0x409a6efb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x09b843e2 # initialize rs1
li x9, 0x5de8f534 # initialize rs2
bltu x6, x9, some_label_for_btype_38977024570 # perform operation 
addi x0, x1, 1
some_label_for_btype_38977024570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x5de8f534 # initialize rs1
li x9, 0x5de8f534 # initialize rs2
bltu x6, x9, some_label_for_btype_38977024571 # perform operation 
addi x0, x1, 1
some_label_for_btype_38977024571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x10)
li x18, 0xeb5d5b83 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x07a78392 # initialize rs1
li x10, 0x2a6becfc # initialize rs2
bltu x6, x10, some_label_for_btype_7515120390 # perform operation 
addi x0, x1, 1
some_label_for_btype_7515120390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x2a6becfc # initialize rs1
li x10, 0x2a6becfc # initialize rs2
bltu x6, x10, some_label_for_btype_7515120391 # perform operation 
addi x0, x1, 1
some_label_for_btype_7515120391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x11)
li x22, 0x0e6988b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x892601f3 # initialize rs1
li x11, 0x48e299f4 # initialize rs2
bltu x24, x11, some_label_for_btype_15096837950 # perform operation 
addi x0, x1, 1
some_label_for_btype_15096837950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x48e299f4 # initialize rs1
li x11, 0x48e299f4 # initialize rs2
bltu x24, x11, some_label_for_btype_15096837951 # perform operation 
addi x0, x1, 1
some_label_for_btype_15096837951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x12)
li x19, 0x0174f962 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x5548337b # initialize rs1
li x12, 0x05e0ae6f # initialize rs2
bltu x25, x12, some_label_for_btype_33330054870 # perform operation 
addi x0, x1, 1
some_label_for_btype_33330054870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x05e0ae6f # initialize rs1
li x12, 0x05e0ae6f # initialize rs2
bltu x25, x12, some_label_for_btype_33330054871 # perform operation 
addi x0, x1, 1
some_label_for_btype_33330054871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x13)
li x4, 0xfc1fed8b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x90ce1e21 # initialize rs1
li x13, 0xcf5058a3 # initialize rs2
bltu x5, x13, some_label_for_btype_15521513650 # perform operation 
addi x0, x1, 1
some_label_for_btype_15521513650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xcf5058a3 # initialize rs1
li x13, 0xcf5058a3 # initialize rs2
bltu x5, x13, some_label_for_btype_15521513651 # perform operation 
addi x0, x1, 1
some_label_for_btype_15521513651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x14)
li x8, 0x7b48e9b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xcf211a53 # initialize rs1
li x14, 0x084e4b20 # initialize rs2
bltu x30, x14, some_label_for_btype_3078334630 # perform operation 
addi x0, x1, 1
some_label_for_btype_3078334630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x084e4b20 # initialize rs1
li x14, 0x084e4b20 # initialize rs2
bltu x30, x14, some_label_for_btype_3078334631 # perform operation 
addi x0, x1, 1
some_label_for_btype_3078334631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x15)
li x10, 0x5b78bede # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x3d2d9078 # initialize rs1
li x15, 0xaed4f0be # initialize rs2
bltu x6, x15, some_label_for_btype_7953213510 # perform operation 
addi x0, x1, 1
some_label_for_btype_7953213510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xaed4f0be # initialize rs1
li x15, 0xaed4f0be # initialize rs2
bltu x6, x15, some_label_for_btype_7953213511 # perform operation 
addi x0, x1, 1
some_label_for_btype_7953213511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x16)
li x10, 0x999c8503 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xadda43a4 # initialize rs1
li x16, 0x0fe54add # initialize rs2
bltu x2, x16, some_label_for_btype_18546151200 # perform operation 
addi x0, x1, 1
some_label_for_btype_18546151200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0fe54add # initialize rs1
li x16, 0x0fe54add # initialize rs2
bltu x2, x16, some_label_for_btype_18546151201 # perform operation 
addi x0, x1, 1
some_label_for_btype_18546151201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0x2ae4cefb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x8a8bb73f # initialize rs1
li x17, 0xe10805e2 # initialize rs2
bltu x1, x17, some_label_for_btype_14765864580 # perform operation 
addi x0, x1, 1
some_label_for_btype_14765864580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xe10805e2 # initialize rs1
li x17, 0xe10805e2 # initialize rs2
bltu x1, x17, some_label_for_btype_14765864581 # perform operation 
addi x0, x1, 1
some_label_for_btype_14765864581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x18)
li x15, 0x939d657e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x1592884a # initialize rs1
li x18, 0xcd875ff0 # initialize rs2
bltu x6, x18, some_label_for_btype_23441214940 # perform operation 
addi x0, x1, 1
some_label_for_btype_23441214940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xcd875ff0 # initialize rs1
li x18, 0xcd875ff0 # initialize rs2
bltu x6, x18, some_label_for_btype_23441214941 # perform operation 
addi x0, x1, 1
some_label_for_btype_23441214941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x19)
li x15, 0x45a75f56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xcdf6f139 # initialize rs1
li x19, 0xf07ca844 # initialize rs2
bltu x11, x19, some_label_for_btype_693591140 # perform operation 
addi x0, x1, 1
some_label_for_btype_693591140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xf07ca844 # initialize rs1
li x19, 0xf07ca844 # initialize rs2
bltu x11, x19, some_label_for_btype_693591141 # perform operation 
addi x0, x1, 1
some_label_for_btype_693591141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x20)
li x3, 0x435def7a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x008331cc # initialize rs1
li x20, 0x010f819d # initialize rs2
bltu x28, x20, some_label_for_btype_15747151090 # perform operation 
addi x0, x1, 1
some_label_for_btype_15747151090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x010f819d # initialize rs1
li x20, 0x010f819d # initialize rs2
bltu x28, x20, some_label_for_btype_15747151091 # perform operation 
addi x0, x1, 1
some_label_for_btype_15747151091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x21)
li x23, 0x667834f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xb87a5798 # initialize rs1
li x21, 0x63f23d45 # initialize rs2
bltu x13, x21, some_label_for_btype_7525159070 # perform operation 
addi x0, x1, 1
some_label_for_btype_7525159070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x63f23d45 # initialize rs1
li x21, 0x63f23d45 # initialize rs2
bltu x13, x21, some_label_for_btype_7525159071 # perform operation 
addi x0, x1, 1
some_label_for_btype_7525159071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x22)
li x18, 0x40b76950 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x8886339c # initialize rs1
li x22, 0xf9b6a8b3 # initialize rs2
bltu x8, x22, some_label_for_btype_41014637920 # perform operation 
addi x0, x1, 1
some_label_for_btype_41014637920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xf9b6a8b3 # initialize rs1
li x22, 0xf9b6a8b3 # initialize rs2
bltu x8, x22, some_label_for_btype_41014637921 # perform operation 
addi x0, x1, 1
some_label_for_btype_41014637921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x23)
li x7, 0xbf9658a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x253605f1 # initialize rs1
li x23, 0x3d1f4780 # initialize rs2
bltu x6, x23, some_label_for_btype_38534917480 # perform operation 
addi x0, x1, 1
some_label_for_btype_38534917480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x3d1f4780 # initialize rs1
li x23, 0x3d1f4780 # initialize rs2
bltu x6, x23, some_label_for_btype_38534917481 # perform operation 
addi x0, x1, 1
some_label_for_btype_38534917481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x24)
li x27, 0x67852ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xf0addc19 # initialize rs1
li x24, 0x47b728bd # initialize rs2
bltu x20, x24, some_label_for_btype_37957879210 # perform operation 
addi x0, x1, 1
some_label_for_btype_37957879210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x47b728bd # initialize rs1
li x24, 0x47b728bd # initialize rs2
bltu x20, x24, some_label_for_btype_37957879211 # perform operation 
addi x0, x1, 1
some_label_for_btype_37957879211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x25)
li x20, 0x5046a49f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xc70d5ebc # initialize rs1
li x25, 0xa8016b37 # initialize rs2
bltu x24, x25, some_label_for_btype_20716347640 # perform operation 
addi x0, x1, 1
some_label_for_btype_20716347640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xa8016b37 # initialize rs1
li x25, 0xa8016b37 # initialize rs2
bltu x24, x25, some_label_for_btype_20716347641 # perform operation 
addi x0, x1, 1
some_label_for_btype_20716347641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x26)
li x2, 0x869e59ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x80def4ff # initialize rs1
li x26, 0xf9776e7c # initialize rs2
bltu x8, x26, some_label_for_btype_30282994440 # perform operation 
addi x0, x1, 1
some_label_for_btype_30282994440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xf9776e7c # initialize rs1
li x26, 0xf9776e7c # initialize rs2
bltu x8, x26, some_label_for_btype_30282994441 # perform operation 
addi x0, x1, 1
some_label_for_btype_30282994441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x27)
li x20, 0xe3a5986f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xa37139d3 # initialize rs1
li x27, 0x9a41d426 # initialize rs2
bltu x31, x27, some_label_for_btype_14346493720 # perform operation 
addi x0, x1, 1
some_label_for_btype_14346493720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x9a41d426 # initialize rs1
li x27, 0x9a41d426 # initialize rs2
bltu x31, x27, some_label_for_btype_14346493721 # perform operation 
addi x0, x1, 1
some_label_for_btype_14346493721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x28)
li x8, 0x2b912fc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x1be3694a # initialize rs1
li x28, 0x966c812f # initialize rs2
bltu x12, x28, some_label_for_btype_7590063820 # perform operation 
addi x0, x1, 1
some_label_for_btype_7590063820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x966c812f # initialize rs1
li x28, 0x966c812f # initialize rs2
bltu x12, x28, some_label_for_btype_7590063821 # perform operation 
addi x0, x1, 1
some_label_for_btype_7590063821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x29)
li x6, 0x417947ee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xc00a22b8 # initialize rs1
li x29, 0x1144af27 # initialize rs2
bltu x1, x29, some_label_for_btype_30458553320 # perform operation 
addi x0, x1, 1
some_label_for_btype_30458553320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x1144af27 # initialize rs1
li x29, 0x1144af27 # initialize rs2
bltu x1, x29, some_label_for_btype_30458553321 # perform operation 
addi x0, x1, 1
some_label_for_btype_30458553321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x30)
li x20, 0x324edf09 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x8358dc05 # initialize rs1
li x30, 0x78bf01cd # initialize rs2
bltu x10, x30, some_label_for_btype_15106958260 # perform operation 
addi x0, x1, 1
some_label_for_btype_15106958260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x78bf01cd # initialize rs1
li x30, 0x78bf01cd # initialize rs2
bltu x10, x30, some_label_for_btype_15106958261 # perform operation 
addi x0, x1, 1
some_label_for_btype_15106958261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x31)
li x9, 0x3245c7a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x72f4f452 # initialize rs1
li x31, 0xe4baa406 # initialize rs2
bltu x16, x31, some_label_for_btype_2176261990 # perform operation 
addi x0, x1, 1
some_label_for_btype_2176261990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xe4baa406 # initialize rs1
li x31, 0xe4baa406 # initialize rs2
bltu x16, x31, some_label_for_btype_2176261991 # perform operation 
addi x0, x1, 1
some_label_for_btype_2176261991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xecb91217)
li x12, 0xeb5cf28d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xeb5cf28d # initialize rs1
li x0, 0x14f82dd5 # initialize rs2
bltu x17, x0, some_label_for_btype_39891382160 # perform operation 
addi x0, x1, 1
some_label_for_btype_39891382160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x14f82dd5 # initialize rs1
li x0, 0x14f82dd5 # initialize rs2
bltu x17, x0, some_label_for_btype_39891382161 # perform operation 
addi x0, x1, 1
some_label_for_btype_39891382161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x1309dc37 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000000 # initialize rs1
li x21, 0xb7da186c # initialize rs2
bltu x17, x21, some_label_for_btype_17518436860 # perform operation 
addi x0, x1, 1
some_label_for_btype_17518436860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xb7da186c # initialize rs1
li x21, 0xb7da186c # initialize rs2
bltu x17, x21, some_label_for_btype_17518436861 # perform operation 
addi x0, x1, 1
some_label_for_btype_17518436861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0xc1f6e3af # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000001 # initialize rs1
li x20, 0x722c7d76 # initialize rs2
bltu x28, x20, some_label_for_btype_14626736780 # perform operation 
addi x0, x1, 1
some_label_for_btype_14626736780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x722c7d76 # initialize rs1
li x20, 0x722c7d76 # initialize rs2
bltu x28, x20, some_label_for_btype_14626736781 # perform operation 
addi x0, x1, 1
some_label_for_btype_14626736781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x6, 0x0de0223e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000002 # initialize rs1
li x31, 0x1307603d # initialize rs2
bltu x12, x31, some_label_for_btype_14099428440 # perform operation 
addi x0, x1, 1
some_label_for_btype_14099428440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x1307603d # initialize rs1
li x31, 0x1307603d # initialize rs2
bltu x12, x31, some_label_for_btype_14099428441 # perform operation 
addi x0, x1, 1
some_label_for_btype_14099428441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x29, 0x5c879b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x80000000 # initialize rs1
li x30, 0x830b6c4f # initialize rs2
bltu x14, x30, some_label_for_btype_35455462820 # perform operation 
addi x0, x1, 1
some_label_for_btype_35455462820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x830b6c4f # initialize rs1
li x30, 0x830b6c4f # initialize rs2
bltu x14, x30, some_label_for_btype_35455462821 # perform operation 
addi x0, x1, 1
some_label_for_btype_35455462821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x11, 0x9c2dec72 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x80000001 # initialize rs1
li x1, 0x1da8aeeb # initialize rs2
bltu x21, x1, some_label_for_btype_9121652840 # perform operation 
addi x0, x1, 1
some_label_for_btype_9121652840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x1da8aeeb # initialize rs1
li x1, 0x1da8aeeb # initialize rs2
bltu x21, x1, some_label_for_btype_9121652841 # perform operation 
addi x0, x1, 1
some_label_for_btype_9121652841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x29, 0x497a6271 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x7fffffff # initialize rs1
li x30, 0x9d520186 # initialize rs2
bltu x8, x30, some_label_for_btype_6613647000 # perform operation 
addi x0, x1, 1
some_label_for_btype_6613647000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x9d520186 # initialize rs1
li x30, 0x9d520186 # initialize rs2
bltu x8, x30, some_label_for_btype_6613647001 # perform operation 
addi x0, x1, 1
some_label_for_btype_6613647001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x20, 0x3fb6ce51 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x7ffffffe # initialize rs1
li x1, 0x59da6450 # initialize rs2
bltu x3, x1, some_label_for_btype_16455100250 # perform operation 
addi x0, x1, 1
some_label_for_btype_16455100250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x59da6450 # initialize rs1
li x1, 0x59da6450 # initialize rs2
bltu x3, x1, some_label_for_btype_16455100251 # perform operation 
addi x0, x1, 1
some_label_for_btype_16455100251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x2d5dead5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xffffffff # initialize rs1
li x4, 0x6e94b6ad # initialize rs2
bltu x12, x4, some_label_for_btype_40531709720 # perform operation 
addi x0, x1, 1
some_label_for_btype_40531709720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x6e94b6ad # initialize rs1
li x4, 0x6e94b6ad # initialize rs2
bltu x12, x4, some_label_for_btype_40531709721 # perform operation 
addi x0, x1, 1
some_label_for_btype_40531709721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0x80e9c252 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xfffffffe # initialize rs1
li x29, 0xbc61bd88 # initialize rs2
bltu x28, x29, some_label_for_btype_15743168720 # perform operation 
addi x0, x1, 1
some_label_for_btype_15743168720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xbc61bd88 # initialize rs1
li x29, 0xbc61bd88 # initialize rs2
bltu x28, x29, some_label_for_btype_15743168721 # perform operation 
addi x0, x1, 1
some_label_for_btype_15743168721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x18, 0xf8fdbd4d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x5bbc8877 # initialize rs1
li x24, 0xebbe8ef6 # initialize rs2
bltu x26, x24, some_label_for_btype_32481676290 # perform operation 
addi x0, x1, 1
some_label_for_btype_32481676290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xebbe8ef6 # initialize rs1
li x24, 0xebbe8ef6 # initialize rs2
bltu x26, x24, some_label_for_btype_32481676291 # perform operation 
addi x0, x1, 1
some_label_for_btype_32481676291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x26, 0x749e5c4d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xaaaaaaaa # initialize rs1
li x9, 0x737876ab # initialize rs2
bltu x30, x9, some_label_for_btype_7186364800 # perform operation 
addi x0, x1, 1
some_label_for_btype_7186364800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x737876ab # initialize rs1
li x9, 0x737876ab # initialize rs2
bltu x30, x9, some_label_for_btype_7186364801 # perform operation 
addi x0, x1, 1
some_label_for_btype_7186364801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x17, 0x4136304e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x55555555 # initialize rs1
li x4, 0xcdf06668 # initialize rs2
bltu x29, x4, some_label_for_btype_23999808130 # perform operation 
addi x0, x1, 1
some_label_for_btype_23999808130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xcdf06668 # initialize rs1
li x4, 0xcdf06668 # initialize rs2
bltu x29, x4, some_label_for_btype_23999808131 # perform operation 
addi x0, x1, 1
some_label_for_btype_23999808131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x9, 0x7391c6b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x1e70193e # initialize rs1
li x5, 0x00000000 # initialize rs2
bltu x8, x5, some_label_for_btype_11809062870 # perform operation 
addi x0, x1, 1
some_label_for_btype_11809062870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x00000000 # initialize rs1
li x5, 0x00000000 # initialize rs2
bltu x8, x5, some_label_for_btype_11809062871 # perform operation 
addi x0, x1, 1
some_label_for_btype_11809062871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0x81f6b8e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x73a241e8 # initialize rs1
li x27, 0x00000001 # initialize rs2
bltu x30, x27, some_label_for_btype_19040779600 # perform operation 
addi x0, x1, 1
some_label_for_btype_19040779600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x00000001 # initialize rs1
li x27, 0x00000001 # initialize rs2
bltu x30, x27, some_label_for_btype_19040779601 # perform operation 
addi x0, x1, 1
some_label_for_btype_19040779601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x275b25b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xcc044dd0 # initialize rs1
li x25, 0x00000002 # initialize rs2
bltu x9, x25, some_label_for_btype_36410461710 # perform operation 
addi x0, x1, 1
some_label_for_btype_36410461710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x00000002 # initialize rs1
li x25, 0x00000002 # initialize rs2
bltu x9, x25, some_label_for_btype_36410461711 # perform operation 
addi x0, x1, 1
some_label_for_btype_36410461711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x26, 0xbe01be95 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xc5cb917f # initialize rs1
li x13, 0x80000000 # initialize rs2
bltu x25, x13, some_label_for_btype_33610792600 # perform operation 
addi x0, x1, 1
some_label_for_btype_33610792600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x80000000 # initialize rs1
li x13, 0x80000000 # initialize rs2
bltu x25, x13, some_label_for_btype_33610792601 # perform operation 
addi x0, x1, 1
some_label_for_btype_33610792601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x8, 0x3ca913e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x9a48c8da # initialize rs1
li x13, 0x80000001 # initialize rs2
bltu x18, x13, some_label_for_btype_31061100390 # perform operation 
addi x0, x1, 1
some_label_for_btype_31061100390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x80000001 # initialize rs1
li x13, 0x80000001 # initialize rs2
bltu x18, x13, some_label_for_btype_31061100391 # perform operation 
addi x0, x1, 1
some_label_for_btype_31061100391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x24, 0xa465d2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xad29abf6 # initialize rs1
li x11, 0x7fffffff # initialize rs2
bltu x10, x11, some_label_for_btype_14634437520 # perform operation 
addi x0, x1, 1
some_label_for_btype_14634437520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x7fffffff # initialize rs1
li x11, 0x7fffffff # initialize rs2
bltu x10, x11, some_label_for_btype_14634437521 # perform operation 
addi x0, x1, 1
some_label_for_btype_14634437521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x10, 0x172b3926 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xa9102452 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
bltu x24, x14, some_label_for_btype_8546860760 # perform operation 
addi x0, x1, 1
some_label_for_btype_8546860760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x7ffffffe # initialize rs1
li x14, 0x7ffffffe # initialize rs2
bltu x24, x14, some_label_for_btype_8546860761 # perform operation 
addi x0, x1, 1
some_label_for_btype_8546860761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x21, 0x55d61f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x8688de73 # initialize rs1
li x6, 0xffffffff # initialize rs2
bltu x5, x6, some_label_for_btype_15114910090 # perform operation 
addi x0, x1, 1
some_label_for_btype_15114910090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xffffffff # initialize rs1
li x6, 0xffffffff # initialize rs2
bltu x5, x6, some_label_for_btype_15114910091 # perform operation 
addi x0, x1, 1
some_label_for_btype_15114910091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x17, 0xb57153df # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x9ad51ac0 # initialize rs1
li x1, 0xfffffffe # initialize rs2
bltu x22, x1, some_label_for_btype_36059182830 # perform operation 
addi x0, x1, 1
some_label_for_btype_36059182830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xfffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
bltu x22, x1, some_label_for_btype_36059182831 # perform operation 
addi x0, x1, 1
some_label_for_btype_36059182831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x21, 0x1a6fcb8e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x4254825f # initialize rs1
li x24, 0x5bbc8877 # initialize rs2
bltu x25, x24, some_label_for_btype_732658660 # perform operation 
addi x0, x1, 1
some_label_for_btype_732658660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x5bbc8877 # initialize rs1
li x24, 0x5bbc8877 # initialize rs2
bltu x25, x24, some_label_for_btype_732658661 # perform operation 
addi x0, x1, 1
some_label_for_btype_732658661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x17, 0xbb0804dc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x2f804fe3 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
bltu x28, x13, some_label_for_btype_39430348070 # perform operation 
addi x0, x1, 1
some_label_for_btype_39430348070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
bltu x28, x13, some_label_for_btype_39430348071 # perform operation 
addi x0, x1, 1
some_label_for_btype_39430348071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x11, 0x1934aa53 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x351184f9 # initialize rs1
li x12, 0x55555555 # initialize rs2
bltu x29, x12, some_label_for_btype_14686697310 # perform operation 
addi x0, x1, 1
some_label_for_btype_14686697310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x55555555 # initialize rs1
li x12, 0x55555555 # initialize rs2
bltu x29, x12, some_label_for_btype_14686697311 # perform operation 
addi x0, x1, 1
some_label_for_btype_14686697311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x7, 0x6b3de983 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x00000000 # initialize rs1
li x24, 0x00000000 # initialize rs2
bltu x16, x24, some_label_for_btype_1545502100 # perform operation 
addi x0, x1, 1
some_label_for_btype_1545502100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x00000000 # initialize rs1
li x24, 0x00000000 # initialize rs2
bltu x16, x24, some_label_for_btype_1545502101 # perform operation 
addi x0, x1, 1
some_label_for_btype_1545502101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x15, 0x1424cb2b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000 # initialize rs1
li x4, 0x00000001 # initialize rs2
bltu x28, x4, some_label_for_btype_16552044960 # perform operation 
addi x0, x1, 1
some_label_for_btype_16552044960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x00000001 # initialize rs1
li x4, 0x00000001 # initialize rs2
bltu x28, x4, some_label_for_btype_16552044961 # perform operation 
addi x0, x1, 1
some_label_for_btype_16552044961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x16, 0xc65b9332 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000 # initialize rs1
li x18, 0x00000002 # initialize rs2
bltu x28, x18, some_label_for_btype_369054840 # perform operation 
addi x0, x1, 1
some_label_for_btype_369054840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x00000002 # initialize rs1
li x18, 0x00000002 # initialize rs2
bltu x28, x18, some_label_for_btype_369054841 # perform operation 
addi x0, x1, 1
some_label_for_btype_369054841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x2, 0xc38d3737 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x00000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
bltu x5, x18, some_label_for_btype_4252987100 # perform operation 
addi x0, x1, 1
some_label_for_btype_4252987100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x80000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
bltu x5, x18, some_label_for_btype_4252987101 # perform operation 
addi x0, x1, 1
some_label_for_btype_4252987101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x14, 0x69fc16b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x00000000 # initialize rs1
li x23, 0x80000001 # initialize rs2
bltu x9, x23, some_label_for_btype_14104714000 # perform operation 
addi x0, x1, 1
some_label_for_btype_14104714000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x80000001 # initialize rs1
li x23, 0x80000001 # initialize rs2
bltu x9, x23, some_label_for_btype_14104714001 # perform operation 
addi x0, x1, 1
some_label_for_btype_14104714001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x12, 0xacaf85ea # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x00000000 # initialize rs1
li x26, 0x7fffffff # initialize rs2
bltu x20, x26, some_label_for_btype_3160744440 # perform operation 
addi x0, x1, 1
some_label_for_btype_3160744440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x7fffffff # initialize rs1
li x26, 0x7fffffff # initialize rs2
bltu x20, x26, some_label_for_btype_3160744441 # perform operation 
addi x0, x1, 1
some_label_for_btype_3160744441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x13, 0xfb18967a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x00000000 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
bltu x6, x29, some_label_for_btype_9895345290 # perform operation 
addi x0, x1, 1
some_label_for_btype_9895345290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x7ffffffe # initialize rs1
li x29, 0x7ffffffe # initialize rs2
bltu x6, x29, some_label_for_btype_9895345291 # perform operation 
addi x0, x1, 1
some_label_for_btype_9895345291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x28, 0x239c38bb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x00000000 # initialize rs1
li x16, 0xffffffff # initialize rs2
bltu x25, x16, some_label_for_btype_24902251670 # perform operation 
addi x0, x1, 1
some_label_for_btype_24902251670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xffffffff # initialize rs1
li x16, 0xffffffff # initialize rs2
bltu x25, x16, some_label_for_btype_24902251671 # perform operation 
addi x0, x1, 1
some_label_for_btype_24902251671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x14, 0xf57d72df # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x00000000 # initialize rs1
li x21, 0xfffffffe # initialize rs2
bltu x4, x21, some_label_for_btype_5663571640 # perform operation 
addi x0, x1, 1
some_label_for_btype_5663571640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xfffffffe # initialize rs1
li x21, 0xfffffffe # initialize rs2
bltu x4, x21, some_label_for_btype_5663571641 # perform operation 
addi x0, x1, 1
some_label_for_btype_5663571641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x26, 0xbf43366b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x00000000 # initialize rs1
li x11, 0x5bbc8877 # initialize rs2
bltu x29, x11, some_label_for_btype_2066703240 # perform operation 
addi x0, x1, 1
some_label_for_btype_2066703240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x5bbc8877 # initialize rs1
li x11, 0x5bbc8877 # initialize rs2
bltu x29, x11, some_label_for_btype_2066703241 # perform operation 
addi x0, x1, 1
some_label_for_btype_2066703241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x27, 0x2d5d1790 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x00000000 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
bltu x22, x9, some_label_for_btype_9401309500 # perform operation 
addi x0, x1, 1
some_label_for_btype_9401309500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
bltu x22, x9, some_label_for_btype_9401309501 # perform operation 
addi x0, x1, 1
some_label_for_btype_9401309501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x5, 0x9a347b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x00000000 # initialize rs1
li x11, 0x55555555 # initialize rs2
bltu x25, x11, some_label_for_btype_41069245890 # perform operation 
addi x0, x1, 1
some_label_for_btype_41069245890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x55555555 # initialize rs1
li x11, 0x55555555 # initialize rs2
bltu x25, x11, some_label_for_btype_41069245891 # perform operation 
addi x0, x1, 1
some_label_for_btype_41069245891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x1, 0x7f6b14e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x00000001 # initialize rs1
li x20, 0x00000000 # initialize rs2
bltu x9, x20, some_label_for_btype_270549640 # perform operation 
addi x0, x1, 1
some_label_for_btype_270549640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x00000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
bltu x9, x20, some_label_for_btype_270549641 # perform operation 
addi x0, x1, 1
some_label_for_btype_270549641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x13, 0xdd543fb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
bltu x28, x16, some_label_for_btype_38599361720 # perform operation 
addi x0, x1, 1
some_label_for_btype_38599361720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
bltu x28, x16, some_label_for_btype_38599361721 # perform operation 
addi x0, x1, 1
some_label_for_btype_38599361721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x22, 0xb9bb3039 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x00000001 # initialize rs1
li x15, 0x00000002 # initialize rs2
bltu x25, x15, some_label_for_btype_20788422120 # perform operation 
addi x0, x1, 1
some_label_for_btype_20788422120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x00000002 # initialize rs1
li x15, 0x00000002 # initialize rs2
bltu x25, x15, some_label_for_btype_20788422121 # perform operation 
addi x0, x1, 1
some_label_for_btype_20788422121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x29, 0x13cc6a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000001 # initialize rs1
li x11, 0x80000000 # initialize rs2
bltu x12, x11, some_label_for_btype_38019804000 # perform operation 
addi x0, x1, 1
some_label_for_btype_38019804000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x80000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
bltu x12, x11, some_label_for_btype_38019804001 # perform operation 
addi x0, x1, 1
some_label_for_btype_38019804001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x29, 0xe2e1dda8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
bltu x2, x21, some_label_for_btype_37257826580 # perform operation 
addi x0, x1, 1
some_label_for_btype_37257826580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x80000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
bltu x2, x21, some_label_for_btype_37257826581 # perform operation 
addi x0, x1, 1
some_label_for_btype_37257826581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x10, 0x388b2a36 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x00000001 # initialize rs1
li x1, 0x7fffffff # initialize rs2
bltu x24, x1, some_label_for_btype_1230617970 # perform operation 
addi x0, x1, 1
some_label_for_btype_1230617970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
bltu x24, x1, some_label_for_btype_1230617971 # perform operation 
addi x0, x1, 1
some_label_for_btype_1230617971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x12, 0x1f89f167 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000001 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
bltu x15, x24, some_label_for_btype_19061749620 # perform operation 
addi x0, x1, 1
some_label_for_btype_19061749620:
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
bltu x15, x24, some_label_for_btype_19061749621 # perform operation 
addi x0, x1, 1
some_label_for_btype_19061749621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x9, 0x6c3e5a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000001 # initialize rs1
li x27, 0xffffffff # initialize rs2
bltu x19, x27, some_label_for_btype_37708939100 # perform operation 
addi x0, x1, 1
some_label_for_btype_37708939100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xffffffff # initialize rs1
li x27, 0xffffffff # initialize rs2
bltu x19, x27, some_label_for_btype_37708939101 # perform operation 
addi x0, x1, 1
some_label_for_btype_37708939101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x22, 0x55215874 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000001 # initialize rs1
li x18, 0xfffffffe # initialize rs2
bltu x31, x18, some_label_for_btype_7750136510 # perform operation 
addi x0, x1, 1
some_label_for_btype_7750136510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xfffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
bltu x31, x18, some_label_for_btype_7750136511 # perform operation 
addi x0, x1, 1
some_label_for_btype_7750136511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x26, 0x6d5e0bb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000001 # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
bltu x28, x19, some_label_for_btype_10284555110 # perform operation 
addi x0, x1, 1
some_label_for_btype_10284555110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x5bbc8877 # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
bltu x28, x19, some_label_for_btype_10284555111 # perform operation 
addi x0, x1, 1
some_label_for_btype_10284555111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x14, 0xc7e41b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000001 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
bltu x30, x15, some_label_for_btype_431126680 # perform operation 
addi x0, x1, 1
some_label_for_btype_431126680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
bltu x30, x15, some_label_for_btype_431126681 # perform operation 
addi x0, x1, 1
some_label_for_btype_431126681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x30, 0x039366b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000001 # initialize rs1
li x16, 0x55555555 # initialize rs2
bltu x18, x16, some_label_for_btype_23839866280 # perform operation 
addi x0, x1, 1
some_label_for_btype_23839866280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x55555555 # initialize rs1
li x16, 0x55555555 # initialize rs2
bltu x18, x16, some_label_for_btype_23839866281 # perform operation 
addi x0, x1, 1
some_label_for_btype_23839866281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x10, 0xfbe3dbb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x00000002 # initialize rs1
li x29, 0x00000000 # initialize rs2
bltu x3, x29, some_label_for_btype_18046855970 # perform operation 
addi x0, x1, 1
some_label_for_btype_18046855970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
bltu x3, x29, some_label_for_btype_18046855971 # perform operation 
addi x0, x1, 1
some_label_for_btype_18046855971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x29, 0xa21894ca # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x00000002 # initialize rs1
li x27, 0x00000001 # initialize rs2
bltu x9, x27, some_label_for_btype_9578435470 # perform operation 
addi x0, x1, 1
some_label_for_btype_9578435470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x00000001 # initialize rs1
li x27, 0x00000001 # initialize rs2
bltu x9, x27, some_label_for_btype_9578435471 # perform operation 
addi x0, x1, 1
some_label_for_btype_9578435471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x5, 0xdfe7d1c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x00000002 # initialize rs1
li x21, 0x00000002 # initialize rs2
bltu x4, x21, some_label_for_btype_26353444090 # perform operation 
addi x0, x1, 1
some_label_for_btype_26353444090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x00000002 # initialize rs1
li x21, 0x00000002 # initialize rs2
bltu x4, x21, some_label_for_btype_26353444091 # perform operation 
addi x0, x1, 1
some_label_for_btype_26353444091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x12, 0xadcf6773 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000002 # initialize rs1
li x11, 0x80000000 # initialize rs2
bltu x15, x11, some_label_for_btype_23280950 # perform operation 
addi x0, x1, 1
some_label_for_btype_23280950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x80000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
bltu x15, x11, some_label_for_btype_23280951 # perform operation 
addi x0, x1, 1
some_label_for_btype_23280951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x15, 0x51aab282 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x00000002 # initialize rs1
li x27, 0x80000001 # initialize rs2
bltu x8, x27, some_label_for_btype_12561216740 # perform operation 
addi x0, x1, 1
some_label_for_btype_12561216740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x80000001 # initialize rs1
li x27, 0x80000001 # initialize rs2
bltu x8, x27, some_label_for_btype_12561216741 # perform operation 
addi x0, x1, 1
some_label_for_btype_12561216741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x24, 0x53c5fa98 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000002 # initialize rs1
li x11, 0x7fffffff # initialize rs2
bltu x2, x11, some_label_for_btype_15119071060 # perform operation 
addi x0, x1, 1
some_label_for_btype_15119071060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x7fffffff # initialize rs1
li x11, 0x7fffffff # initialize rs2
bltu x2, x11, some_label_for_btype_15119071061 # perform operation 
addi x0, x1, 1
some_label_for_btype_15119071061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x25, 0x124dcd09 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000002 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
bltu x12, x5, some_label_for_btype_41516774670 # perform operation 
addi x0, x1, 1
some_label_for_btype_41516774670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7ffffffe # initialize rs1
li x5, 0x7ffffffe # initialize rs2
bltu x12, x5, some_label_for_btype_41516774671 # perform operation 
addi x0, x1, 1
some_label_for_btype_41516774671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x21, 0x66c1827e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x00000002 # initialize rs1
li x17, 0xffffffff # initialize rs2
bltu x25, x17, some_label_for_btype_34468475040 # perform operation 
addi x0, x1, 1
some_label_for_btype_34468475040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xffffffff # initialize rs1
li x17, 0xffffffff # initialize rs2
bltu x25, x17, some_label_for_btype_34468475041 # perform operation 
addi x0, x1, 1
some_label_for_btype_34468475041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x2, 0x3eb0d588 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000002 # initialize rs1
li x16, 0xfffffffe # initialize rs2
bltu x27, x16, some_label_for_btype_5538036830 # perform operation 
addi x0, x1, 1
some_label_for_btype_5538036830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xfffffffe # initialize rs1
li x16, 0xfffffffe # initialize rs2
bltu x27, x16, some_label_for_btype_5538036831 # perform operation 
addi x0, x1, 1
some_label_for_btype_5538036831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x9, 0x57fa7924 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x00000002 # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
bltu x25, x14, some_label_for_btype_30974050610 # perform operation 
addi x0, x1, 1
some_label_for_btype_30974050610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x5bbc8877 # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
bltu x25, x14, some_label_for_btype_30974050611 # perform operation 
addi x0, x1, 1
some_label_for_btype_30974050611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x14, 0x74c1eb92 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x00000002 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
bltu x22, x26, some_label_for_btype_19339710540 # perform operation 
addi x0, x1, 1
some_label_for_btype_19339710540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
bltu x22, x26, some_label_for_btype_19339710541 # perform operation 
addi x0, x1, 1
some_label_for_btype_19339710541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x11, 0xc3967e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000002 # initialize rs1
li x7, 0x55555555 # initialize rs2
bltu x15, x7, some_label_for_btype_33412253310 # perform operation 
addi x0, x1, 1
some_label_for_btype_33412253310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x55555555 # initialize rs1
li x7, 0x55555555 # initialize rs2
bltu x15, x7, some_label_for_btype_33412253311 # perform operation 
addi x0, x1, 1
some_label_for_btype_33412253311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x8, 0x0a4add7c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x80000000 # initialize rs1
li x22, 0x00000000 # initialize rs2
bltu x10, x22, some_label_for_btype_15742860050 # perform operation 
addi x0, x1, 1
some_label_for_btype_15742860050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x00000000 # initialize rs1
li x22, 0x00000000 # initialize rs2
bltu x10, x22, some_label_for_btype_15742860051 # perform operation 
addi x0, x1, 1
some_label_for_btype_15742860051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x29, 0x50c04968 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x80000000 # initialize rs1
li x8, 0x00000001 # initialize rs2
bltu x1, x8, some_label_for_btype_9090646830 # perform operation 
addi x0, x1, 1
some_label_for_btype_9090646830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
bltu x1, x8, some_label_for_btype_9090646831 # perform operation 
addi x0, x1, 1
some_label_for_btype_9090646831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x10, 0x9a25c083 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x80000000 # initialize rs1
li x2, 0x00000002 # initialize rs2
bltu x14, x2, some_label_for_btype_36412583890 # perform operation 
addi x0, x1, 1
some_label_for_btype_36412583890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
bltu x14, x2, some_label_for_btype_36412583891 # perform operation 
addi x0, x1, 1
some_label_for_btype_36412583891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x21, 0x129524b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x80000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
bltu x29, x18, some_label_for_btype_3208111930 # perform operation 
addi x0, x1, 1
some_label_for_btype_3208111930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x80000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
bltu x29, x18, some_label_for_btype_3208111931 # perform operation 
addi x0, x1, 1
some_label_for_btype_3208111931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x9, 0x045c3887 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x80000000 # initialize rs1
li x24, 0x80000001 # initialize rs2
bltu x15, x24, some_label_for_btype_24391056210 # perform operation 
addi x0, x1, 1
some_label_for_btype_24391056210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x80000001 # initialize rs1
li x24, 0x80000001 # initialize rs2
bltu x15, x24, some_label_for_btype_24391056211 # perform operation 
addi x0, x1, 1
some_label_for_btype_24391056211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x25, 0x25640a98 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x80000000 # initialize rs1
li x4, 0x7fffffff # initialize rs2
bltu x14, x4, some_label_for_btype_25446958210 # perform operation 
addi x0, x1, 1
some_label_for_btype_25446958210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x7fffffff # initialize rs1
li x4, 0x7fffffff # initialize rs2
bltu x14, x4, some_label_for_btype_25446958211 # perform operation 
addi x0, x1, 1
some_label_for_btype_25446958211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x16, 0x6ea3c97b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x80000000 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
bltu x4, x24, some_label_for_btype_38319506910 # perform operation 
addi x0, x1, 1
some_label_for_btype_38319506910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x7ffffffe # initialize rs1
li x24, 0x7ffffffe # initialize rs2
bltu x4, x24, some_label_for_btype_38319506911 # perform operation 
addi x0, x1, 1
some_label_for_btype_38319506911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x30, 0x51df423c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x80000000 # initialize rs1
li x29, 0xffffffff # initialize rs2
bltu x18, x29, some_label_for_btype_16534388810 # perform operation 
addi x0, x1, 1
some_label_for_btype_16534388810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xffffffff # initialize rs1
li x29, 0xffffffff # initialize rs2
bltu x18, x29, some_label_for_btype_16534388811 # perform operation 
addi x0, x1, 1
some_label_for_btype_16534388811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x3, 0xbbb6135a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x80000000 # initialize rs1
li x15, 0xfffffffe # initialize rs2
bltu x12, x15, some_label_for_btype_16874485520 # perform operation 
addi x0, x1, 1
some_label_for_btype_16874485520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xfffffffe # initialize rs1
li x15, 0xfffffffe # initialize rs2
bltu x12, x15, some_label_for_btype_16874485521 # perform operation 
addi x0, x1, 1
some_label_for_btype_16874485521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x15, 0x429f90db # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x80000000 # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
bltu x26, x28, some_label_for_btype_26400520660 # perform operation 
addi x0, x1, 1
some_label_for_btype_26400520660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x5bbc8877 # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
bltu x26, x28, some_label_for_btype_26400520661 # perform operation 
addi x0, x1, 1
some_label_for_btype_26400520661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x9, 0x489e32ea # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x80000000 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
bltu x12, x21, some_label_for_btype_29778267130 # perform operation 
addi x0, x1, 1
some_label_for_btype_29778267130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
bltu x12, x21, some_label_for_btype_29778267131 # perform operation 
addi x0, x1, 1
some_label_for_btype_29778267131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x12, 0xaa240a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x80000000 # initialize rs1
li x7, 0x55555555 # initialize rs2
bltu x19, x7, some_label_for_btype_29739341440 # perform operation 
addi x0, x1, 1
some_label_for_btype_29739341440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x55555555 # initialize rs1
li x7, 0x55555555 # initialize rs2
bltu x19, x7, some_label_for_btype_29739341441 # perform operation 
addi x0, x1, 1
some_label_for_btype_29739341441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x4, 0x967bde0e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x80000001 # initialize rs1
li x24, 0x00000000 # initialize rs2
bltu x6, x24, some_label_for_btype_36740885110 # perform operation 
addi x0, x1, 1
some_label_for_btype_36740885110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x00000000 # initialize rs1
li x24, 0x00000000 # initialize rs2
bltu x6, x24, some_label_for_btype_36740885111 # perform operation 
addi x0, x1, 1
some_label_for_btype_36740885111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x8, 0x7ed559b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x80000001 # initialize rs1
li x13, 0x00000001 # initialize rs2
bltu x10, x13, some_label_for_btype_7249923810 # perform operation 
addi x0, x1, 1
some_label_for_btype_7249923810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x00000001 # initialize rs1
li x13, 0x00000001 # initialize rs2
bltu x10, x13, some_label_for_btype_7249923811 # perform operation 
addi x0, x1, 1
some_label_for_btype_7249923811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x31, 0x7fc84837 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x80000001 # initialize rs1
li x5, 0x00000002 # initialize rs2
bltu x18, x5, some_label_for_btype_32785597810 # perform operation 
addi x0, x1, 1
some_label_for_btype_32785597810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x00000002 # initialize rs1
li x5, 0x00000002 # initialize rs2
bltu x18, x5, some_label_for_btype_32785597811 # perform operation 
addi x0, x1, 1
some_label_for_btype_32785597811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x19, 0x651960ab # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x80000001 # initialize rs1
li x18, 0x80000000 # initialize rs2
bltu x21, x18, some_label_for_btype_6391173790 # perform operation 
addi x0, x1, 1
some_label_for_btype_6391173790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x80000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
bltu x21, x18, some_label_for_btype_6391173791 # perform operation 
addi x0, x1, 1
some_label_for_btype_6391173791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x24, 0x07f3d3f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x80000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
bltu x22, x6, some_label_for_btype_10198632450 # perform operation 
addi x0, x1, 1
some_label_for_btype_10198632450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x80000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
bltu x22, x6, some_label_for_btype_10198632451 # perform operation 
addi x0, x1, 1
some_label_for_btype_10198632451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x20, 0xd9d70a4f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x80000001 # initialize rs1
li x2, 0x7fffffff # initialize rs2
bltu x29, x2, some_label_for_btype_3182825280 # perform operation 
addi x0, x1, 1
some_label_for_btype_3182825280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
bltu x29, x2, some_label_for_btype_3182825281 # perform operation 
addi x0, x1, 1
some_label_for_btype_3182825281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x20, 0x7e9d8fc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x80000001 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
bltu x1, x30, some_label_for_btype_23017519860 # perform operation 
addi x0, x1, 1
some_label_for_btype_23017519860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x7ffffffe # initialize rs1
li x30, 0x7ffffffe # initialize rs2
bltu x1, x30, some_label_for_btype_23017519861 # perform operation 
addi x0, x1, 1
some_label_for_btype_23017519861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x4, 0xabebaf42 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x80000001 # initialize rs1
li x20, 0xffffffff # initialize rs2
bltu x21, x20, some_label_for_btype_12306977390 # perform operation 
addi x0, x1, 1
some_label_for_btype_12306977390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xffffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
bltu x21, x20, some_label_for_btype_12306977391 # perform operation 
addi x0, x1, 1
some_label_for_btype_12306977391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x21, 0xfd4d63fa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x80000001 # initialize rs1
li x23, 0xfffffffe # initialize rs2
bltu x31, x23, some_label_for_btype_35005403820 # perform operation 
addi x0, x1, 1
some_label_for_btype_35005403820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xfffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
bltu x31, x23, some_label_for_btype_35005403821 # perform operation 
addi x0, x1, 1
some_label_for_btype_35005403821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x8, 0x6fcaaa9b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x80000001 # initialize rs1
li x30, 0x5bbc8877 # initialize rs2
bltu x16, x30, some_label_for_btype_5262970250 # perform operation 
addi x0, x1, 1
some_label_for_btype_5262970250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5bbc8877 # initialize rs1
li x30, 0x5bbc8877 # initialize rs2
bltu x16, x30, some_label_for_btype_5262970251 # perform operation 
addi x0, x1, 1
some_label_for_btype_5262970251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x3, 0xda88b474 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x80000001 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
bltu x29, x15, some_label_for_btype_19856427110 # perform operation 
addi x0, x1, 1
some_label_for_btype_19856427110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
bltu x29, x15, some_label_for_btype_19856427111 # perform operation 
addi x0, x1, 1
some_label_for_btype_19856427111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x25, 0x47bfbfe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x80000001 # initialize rs1
li x20, 0x55555555 # initialize rs2
bltu x4, x20, some_label_for_btype_26187842390 # perform operation 
addi x0, x1, 1
some_label_for_btype_26187842390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x55555555 # initialize rs1
li x20, 0x55555555 # initialize rs2
bltu x4, x20, some_label_for_btype_26187842391 # perform operation 
addi x0, x1, 1
some_label_for_btype_26187842391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x14, 0x1423c468 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x7fffffff # initialize rs1
li x15, 0x00000000 # initialize rs2
bltu x3, x15, some_label_for_btype_3826388260 # perform operation 
addi x0, x1, 1
some_label_for_btype_3826388260:
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
bltu x3, x15, some_label_for_btype_3826388261 # perform operation 
addi x0, x1, 1
some_label_for_btype_3826388261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x14, 0xf9b49417 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7fffffff # initialize rs1
li x29, 0x00000001 # initialize rs2
bltu x17, x29, some_label_for_btype_5075345650 # perform operation 
addi x0, x1, 1
some_label_for_btype_5075345650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000001 # initialize rs1
li x29, 0x00000001 # initialize rs2
bltu x17, x29, some_label_for_btype_5075345651 # perform operation 
addi x0, x1, 1
some_label_for_btype_5075345651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x20, 0xac912e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x7fffffff # initialize rs1
li x30, 0x00000002 # initialize rs2
bltu x10, x30, some_label_for_btype_15770072450 # perform operation 
addi x0, x1, 1
some_label_for_btype_15770072450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x00000002 # initialize rs1
li x30, 0x00000002 # initialize rs2
bltu x10, x30, some_label_for_btype_15770072451 # perform operation 
addi x0, x1, 1
some_label_for_btype_15770072451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x3, 0x40e108ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x7fffffff # initialize rs1
li x31, 0x80000000 # initialize rs2
bltu x14, x31, some_label_for_btype_5074418230 # perform operation 
addi x0, x1, 1
some_label_for_btype_5074418230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x80000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
bltu x14, x31, some_label_for_btype_5074418231 # perform operation 
addi x0, x1, 1
some_label_for_btype_5074418231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x29, 0xf788e869 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x7fffffff # initialize rs1
li x15, 0x80000001 # initialize rs2
bltu x8, x15, some_label_for_btype_15795951460 # perform operation 
addi x0, x1, 1
some_label_for_btype_15795951460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x80000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
bltu x8, x15, some_label_for_btype_15795951461 # perform operation 
addi x0, x1, 1
some_label_for_btype_15795951461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x29, 0xf03c777c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x7fffffff # initialize rs1
li x16, 0x7fffffff # initialize rs2
bltu x12, x16, some_label_for_btype_37277645110 # perform operation 
addi x0, x1, 1
some_label_for_btype_37277645110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7fffffff # initialize rs1
li x16, 0x7fffffff # initialize rs2
bltu x12, x16, some_label_for_btype_37277645111 # perform operation 
addi x0, x1, 1
some_label_for_btype_37277645111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x6, 0x86410967 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x7fffffff # initialize rs1
li x5, 0x7ffffffe # initialize rs2
bltu x13, x5, some_label_for_btype_3369287210 # perform operation 
addi x0, x1, 1
some_label_for_btype_3369287210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x7ffffffe # initialize rs1
li x5, 0x7ffffffe # initialize rs2
bltu x13, x5, some_label_for_btype_3369287211 # perform operation 
addi x0, x1, 1
some_label_for_btype_3369287211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x18, 0xc02b3816 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x7fffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
bltu x31, x15, some_label_for_btype_29161585020 # perform operation 
addi x0, x1, 1
some_label_for_btype_29161585020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
bltu x31, x15, some_label_for_btype_29161585021 # perform operation 
addi x0, x1, 1
some_label_for_btype_29161585021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x22, 0x233ea107 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x7fffffff # initialize rs1
li x19, 0xfffffffe # initialize rs2
bltu x14, x19, some_label_for_btype_41113122400 # perform operation 
addi x0, x1, 1
some_label_for_btype_41113122400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xfffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
bltu x14, x19, some_label_for_btype_41113122401 # perform operation 
addi x0, x1, 1
some_label_for_btype_41113122401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x27, 0x783aaaa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x7fffffff # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
bltu x9, x13, some_label_for_btype_37153358590 # perform operation 
addi x0, x1, 1
some_label_for_btype_37153358590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x5bbc8877 # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
bltu x9, x13, some_label_for_btype_37153358591 # perform operation 
addi x0, x1, 1
some_label_for_btype_37153358591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x19, 0xc6c3c295 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x7fffffff # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
bltu x16, x17, some_label_for_btype_7966505590 # perform operation 
addi x0, x1, 1
some_label_for_btype_7966505590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
bltu x16, x17, some_label_for_btype_7966505591 # perform operation 
addi x0, x1, 1
some_label_for_btype_7966505591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x4, 0xb914bac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x7fffffff # initialize rs1
li x13, 0x55555555 # initialize rs2
bltu x8, x13, some_label_for_btype_20030486750 # perform operation 
addi x0, x1, 1
some_label_for_btype_20030486750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x55555555 # initialize rs1
li x13, 0x55555555 # initialize rs2
bltu x8, x13, some_label_for_btype_20030486751 # perform operation 
addi x0, x1, 1
some_label_for_btype_20030486751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x29, 0x457ab195 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x7ffffffe # initialize rs1
li x19, 0x00000000 # initialize rs2
bltu x13, x19, some_label_for_btype_22237505840 # perform operation 
addi x0, x1, 1
some_label_for_btype_22237505840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000000 # initialize rs1
li x19, 0x00000000 # initialize rs2
bltu x13, x19, some_label_for_btype_22237505841 # perform operation 
addi x0, x1, 1
some_label_for_btype_22237505841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x23, 0x1bbbda67 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x7ffffffe # initialize rs1
li x7, 0x00000001 # initialize rs2
bltu x3, x7, some_label_for_btype_7742411500 # perform operation 
addi x0, x1, 1
some_label_for_btype_7742411500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
bltu x3, x7, some_label_for_btype_7742411501 # perform operation 
addi x0, x1, 1
some_label_for_btype_7742411501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x24, 0x64c425c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x7ffffffe # initialize rs1
li x28, 0x00000002 # initialize rs2
bltu x9, x28, some_label_for_btype_21705321700 # perform operation 
addi x0, x1, 1
some_label_for_btype_21705321700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x00000002 # initialize rs1
li x28, 0x00000002 # initialize rs2
bltu x9, x28, some_label_for_btype_21705321701 # perform operation 
addi x0, x1, 1
some_label_for_btype_21705321701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x1, 0xf877802d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x7ffffffe # initialize rs1
li x11, 0x80000000 # initialize rs2
bltu x12, x11, some_label_for_btype_3268699650 # perform operation 
addi x0, x1, 1
some_label_for_btype_3268699650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x80000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
bltu x12, x11, some_label_for_btype_3268699651 # perform operation 
addi x0, x1, 1
some_label_for_btype_3268699651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x19, 0xbaa13325 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x7ffffffe # initialize rs1
li x4, 0x80000001 # initialize rs2
bltu x20, x4, some_label_for_btype_10095973770 # perform operation 
addi x0, x1, 1
some_label_for_btype_10095973770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x80000001 # initialize rs1
li x4, 0x80000001 # initialize rs2
bltu x20, x4, some_label_for_btype_10095973771 # perform operation 
addi x0, x1, 1
some_label_for_btype_10095973771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x19, 0x9fcfa1f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7ffffffe # initialize rs1
li x20, 0x7fffffff # initialize rs2
bltu x18, x20, some_label_for_btype_42088318890 # perform operation 
addi x0, x1, 1
some_label_for_btype_42088318890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x7fffffff # initialize rs1
li x20, 0x7fffffff # initialize rs2
bltu x18, x20, some_label_for_btype_42088318891 # perform operation 
addi x0, x1, 1
some_label_for_btype_42088318891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x24, 0x4cf22cd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x7ffffffe # initialize rs1
li x22, 0x7ffffffe # initialize rs2
bltu x14, x22, some_label_for_btype_7359015220 # perform operation 
addi x0, x1, 1
some_label_for_btype_7359015220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x7ffffffe # initialize rs1
li x22, 0x7ffffffe # initialize rs2
bltu x14, x22, some_label_for_btype_7359015221 # perform operation 
addi x0, x1, 1
some_label_for_btype_7359015221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x24, 0xffe7d27f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x7ffffffe # initialize rs1
li x7, 0xffffffff # initialize rs2
bltu x25, x7, some_label_for_btype_5017367050 # perform operation 
addi x0, x1, 1
some_label_for_btype_5017367050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xffffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
bltu x25, x7, some_label_for_btype_5017367051 # perform operation 
addi x0, x1, 1
some_label_for_btype_5017367051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x9, 0x38770b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x7ffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
bltu x12, x28, some_label_for_btype_17392964110 # perform operation 
addi x0, x1, 1
some_label_for_btype_17392964110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
bltu x12, x28, some_label_for_btype_17392964111 # perform operation 
addi x0, x1, 1
some_label_for_btype_17392964111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x28, 0xd8f7106b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x7ffffffe # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
bltu x3, x18, some_label_for_btype_15063767880 # perform operation 
addi x0, x1, 1
some_label_for_btype_15063767880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x5bbc8877 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
bltu x3, x18, some_label_for_btype_15063767881 # perform operation 
addi x0, x1, 1
some_label_for_btype_15063767881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x16, 0x0b27f0f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x7ffffffe # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
bltu x1, x5, some_label_for_btype_18191641950 # perform operation 
addi x0, x1, 1
some_label_for_btype_18191641950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
bltu x1, x5, some_label_for_btype_18191641951 # perform operation 
addi x0, x1, 1
some_label_for_btype_18191641951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x16, 0x40f4da14 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7ffffffe # initialize rs1
li x15, 0x55555555 # initialize rs2
bltu x11, x15, some_label_for_btype_19629172950 # perform operation 
addi x0, x1, 1
some_label_for_btype_19629172950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x55555555 # initialize rs1
li x15, 0x55555555 # initialize rs2
bltu x11, x15, some_label_for_btype_19629172951 # perform operation 
addi x0, x1, 1
some_label_for_btype_19629172951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x21, 0x9fa6c693 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xffffffff # initialize rs1
li x18, 0x00000000 # initialize rs2
bltu x9, x18, some_label_for_btype_32053701290 # perform operation 
addi x0, x1, 1
some_label_for_btype_32053701290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x00000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
bltu x9, x18, some_label_for_btype_32053701291 # perform operation 
addi x0, x1, 1
some_label_for_btype_32053701291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x18, 0x7f5d91b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xffffffff # initialize rs1
li x20, 0x00000001 # initialize rs2
bltu x12, x20, some_label_for_btype_8532655260 # perform operation 
addi x0, x1, 1
some_label_for_btype_8532655260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
bltu x12, x20, some_label_for_btype_8532655261 # perform operation 
addi x0, x1, 1
some_label_for_btype_8532655261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x7, 0x94f83e41 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xffffffff # initialize rs1
li x17, 0x00000002 # initialize rs2
bltu x22, x17, some_label_for_btype_30878149720 # perform operation 
addi x0, x1, 1
some_label_for_btype_30878149720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x00000002 # initialize rs1
li x17, 0x00000002 # initialize rs2
bltu x22, x17, some_label_for_btype_30878149721 # perform operation 
addi x0, x1, 1
some_label_for_btype_30878149721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x13, 0x9862fbc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xffffffff # initialize rs1
li x31, 0x80000000 # initialize rs2
bltu x14, x31, some_label_for_btype_35213236910 # perform operation 
addi x0, x1, 1
some_label_for_btype_35213236910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x80000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
bltu x14, x31, some_label_for_btype_35213236911 # perform operation 
addi x0, x1, 1
some_label_for_btype_35213236911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x11, 0xe992b148 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xffffffff # initialize rs1
li x12, 0x80000001 # initialize rs2
bltu x30, x12, some_label_for_btype_42660776650 # perform operation 
addi x0, x1, 1
some_label_for_btype_42660776650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x80000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
bltu x30, x12, some_label_for_btype_42660776651 # perform operation 
addi x0, x1, 1
some_label_for_btype_42660776651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x14, 0xd1bbae6a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xffffffff # initialize rs1
li x20, 0x7fffffff # initialize rs2
bltu x17, x20, some_label_for_btype_37088098770 # perform operation 
addi x0, x1, 1
some_label_for_btype_37088098770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x7fffffff # initialize rs1
li x20, 0x7fffffff # initialize rs2
bltu x17, x20, some_label_for_btype_37088098771 # perform operation 
addi x0, x1, 1
some_label_for_btype_37088098771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x13, 0x4ae474e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xffffffff # initialize rs1
li x24, 0x7ffffffe # initialize rs2
bltu x15, x24, some_label_for_btype_29316475440 # perform operation 
addi x0, x1, 1
some_label_for_btype_29316475440:
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
bltu x15, x24, some_label_for_btype_29316475441 # perform operation 
addi x0, x1, 1
some_label_for_btype_29316475441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x29, 0xd8c90c66 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xffffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
bltu x22, x9, some_label_for_btype_10675126990 # perform operation 
addi x0, x1, 1
some_label_for_btype_10675126990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xffffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
bltu x22, x9, some_label_for_btype_10675126991 # perform operation 
addi x0, x1, 1
some_label_for_btype_10675126991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0xb411bcab # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xffffffff # initialize rs1
li x23, 0xfffffffe # initialize rs2
bltu x6, x23, some_label_for_btype_42855020630 # perform operation 
addi x0, x1, 1
some_label_for_btype_42855020630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xfffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
bltu x6, x23, some_label_for_btype_42855020631 # perform operation 
addi x0, x1, 1
some_label_for_btype_42855020631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x28, 0x53316154 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xffffffff # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
bltu x16, x7, some_label_for_btype_4547103270 # perform operation 
addi x0, x1, 1
some_label_for_btype_4547103270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5bbc8877 # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
bltu x16, x7, some_label_for_btype_4547103271 # perform operation 
addi x0, x1, 1
some_label_for_btype_4547103271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x11, 0x6299c271 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xffffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
bltu x22, x7, some_label_for_btype_33591033130 # perform operation 
addi x0, x1, 1
some_label_for_btype_33591033130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
bltu x22, x7, some_label_for_btype_33591033131 # perform operation 
addi x0, x1, 1
some_label_for_btype_33591033131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x7, 0xb43e80b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xffffffff # initialize rs1
li x8, 0x55555555 # initialize rs2
bltu x2, x8, some_label_for_btype_16791399040 # perform operation 
addi x0, x1, 1
some_label_for_btype_16791399040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x55555555 # initialize rs1
li x8, 0x55555555 # initialize rs2
bltu x2, x8, some_label_for_btype_16791399041 # perform operation 
addi x0, x1, 1
some_label_for_btype_16791399041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x13, 0x4e57f2b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xfffffffe # initialize rs1
li x22, 0x00000000 # initialize rs2
bltu x18, x22, some_label_for_btype_4490023190 # perform operation 
addi x0, x1, 1
some_label_for_btype_4490023190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x00000000 # initialize rs1
li x22, 0x00000000 # initialize rs2
bltu x18, x22, some_label_for_btype_4490023191 # perform operation 
addi x0, x1, 1
some_label_for_btype_4490023191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x17, 0x17737458 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xfffffffe # initialize rs1
li x31, 0x00000001 # initialize rs2
bltu x9, x31, some_label_for_btype_41241332520 # perform operation 
addi x0, x1, 1
some_label_for_btype_41241332520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x00000001 # initialize rs1
li x31, 0x00000001 # initialize rs2
bltu x9, x31, some_label_for_btype_41241332521 # perform operation 
addi x0, x1, 1
some_label_for_btype_41241332521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x12, 0x1df6d01a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xfffffffe # initialize rs1
li x1, 0x00000002 # initialize rs2
bltu x29, x1, some_label_for_btype_18969270450 # perform operation 
addi x0, x1, 1
some_label_for_btype_18969270450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x00000002 # initialize rs1
li x1, 0x00000002 # initialize rs2
bltu x29, x1, some_label_for_btype_18969270451 # perform operation 
addi x0, x1, 1
some_label_for_btype_18969270451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x19, 0xe909bc3f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xfffffffe # initialize rs1
li x24, 0x80000000 # initialize rs2
bltu x28, x24, some_label_for_btype_5985981880 # perform operation 
addi x0, x1, 1
some_label_for_btype_5985981880:
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
bltu x28, x24, some_label_for_btype_5985981881 # perform operation 
addi x0, x1, 1
some_label_for_btype_5985981881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x4, 0x5f69b2aa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xfffffffe # initialize rs1
li x12, 0x80000001 # initialize rs2
bltu x5, x12, some_label_for_btype_30813523580 # perform operation 
addi x0, x1, 1
some_label_for_btype_30813523580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x80000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
bltu x5, x12, some_label_for_btype_30813523581 # perform operation 
addi x0, x1, 1
some_label_for_btype_30813523581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x21, 0x8fd7bcfc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xfffffffe # initialize rs1
li x14, 0x7fffffff # initialize rs2
bltu x24, x14, some_label_for_btype_6737340850 # perform operation 
addi x0, x1, 1
some_label_for_btype_6737340850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x7fffffff # initialize rs1
li x14, 0x7fffffff # initialize rs2
bltu x24, x14, some_label_for_btype_6737340851 # perform operation 
addi x0, x1, 1
some_label_for_btype_6737340851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x25, 0x67650c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xfffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
bltu x10, x28, some_label_for_btype_614293510 # perform operation 
addi x0, x1, 1
some_label_for_btype_614293510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x7ffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
bltu x10, x28, some_label_for_btype_614293511 # perform operation 
addi x0, x1, 1
some_label_for_btype_614293511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x29, 0x9cccd741 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xfffffffe # initialize rs1
li x12, 0xffffffff # initialize rs2
bltu x7, x12, some_label_for_btype_39890024740 # perform operation 
addi x0, x1, 1
some_label_for_btype_39890024740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xffffffff # initialize rs1
li x12, 0xffffffff # initialize rs2
bltu x7, x12, some_label_for_btype_39890024741 # perform operation 
addi x0, x1, 1
some_label_for_btype_39890024741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x5, 0x7e8b211d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xfffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
bltu x6, x1, some_label_for_btype_18187486090 # perform operation 
addi x0, x1, 1
some_label_for_btype_18187486090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xfffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
bltu x6, x1, some_label_for_btype_18187486091 # perform operation 
addi x0, x1, 1
some_label_for_btype_18187486091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x24, 0xf39c010c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xfffffffe # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
bltu x1, x21, some_label_for_btype_11268115300 # perform operation 
addi x0, x1, 1
some_label_for_btype_11268115300:
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
bltu x1, x21, some_label_for_btype_11268115301 # perform operation 
addi x0, x1, 1
some_label_for_btype_11268115301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x6, 0x05327b38 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xfffffffe # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
bltu x18, x25, some_label_for_btype_2796681250 # perform operation 
addi x0, x1, 1
some_label_for_btype_2796681250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xaaaaaaaa # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
bltu x18, x25, some_label_for_btype_2796681251 # perform operation 
addi x0, x1, 1
some_label_for_btype_2796681251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x11, 0xccc819d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xfffffffe # initialize rs1
li x21, 0x55555555 # initialize rs2
bltu x14, x21, some_label_for_btype_15443288680 # perform operation 
addi x0, x1, 1
some_label_for_btype_15443288680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x55555555 # initialize rs1
li x21, 0x55555555 # initialize rs2
bltu x14, x21, some_label_for_btype_15443288681 # perform operation 
addi x0, x1, 1
some_label_for_btype_15443288681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x5, 0xe0806ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x5bbc8877 # initialize rs1
li x16, 0x00000000 # initialize rs2
bltu x12, x16, some_label_for_btype_41895104030 # perform operation 
addi x0, x1, 1
some_label_for_btype_41895104030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000000 # initialize rs1
li x16, 0x00000000 # initialize rs2
bltu x12, x16, some_label_for_btype_41895104031 # perform operation 
addi x0, x1, 1
some_label_for_btype_41895104031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x29, 0xf02cbc28 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x5bbc8877 # initialize rs1
li x15, 0x00000001 # initialize rs2
bltu x12, x15, some_label_for_btype_41866208530 # perform operation 
addi x0, x1, 1
some_label_for_btype_41866208530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
bltu x12, x15, some_label_for_btype_41866208531 # perform operation 
addi x0, x1, 1
some_label_for_btype_41866208531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x8, 0xfdec7fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x5bbc8877 # initialize rs1
li x18, 0x00000002 # initialize rs2
bltu x15, x18, some_label_for_btype_40208854220 # perform operation 
addi x0, x1, 1
some_label_for_btype_40208854220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x00000002 # initialize rs1
li x18, 0x00000002 # initialize rs2
bltu x15, x18, some_label_for_btype_40208854221 # perform operation 
addi x0, x1, 1
some_label_for_btype_40208854221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x23, 0x5f504c27 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x5bbc8877 # initialize rs1
li x21, 0x80000000 # initialize rs2
bltu x7, x21, some_label_for_btype_29088355370 # perform operation 
addi x0, x1, 1
some_label_for_btype_29088355370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x80000000 # initialize rs1
li x21, 0x80000000 # initialize rs2
bltu x7, x21, some_label_for_btype_29088355371 # perform operation 
addi x0, x1, 1
some_label_for_btype_29088355371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x20, 0xa6c6d662 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x5bbc8877 # initialize rs1
li x5, 0x80000001 # initialize rs2
bltu x26, x5, some_label_for_btype_38356949680 # perform operation 
addi x0, x1, 1
some_label_for_btype_38356949680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x80000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
bltu x26, x5, some_label_for_btype_38356949681 # perform operation 
addi x0, x1, 1
some_label_for_btype_38356949681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x4, 0x3246dab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x5bbc8877 # initialize rs1
li x29, 0x7fffffff # initialize rs2
bltu x2, x29, some_label_for_btype_22135739850 # perform operation 
addi x0, x1, 1
some_label_for_btype_22135739850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x7fffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
bltu x2, x29, some_label_for_btype_22135739851 # perform operation 
addi x0, x1, 1
some_label_for_btype_22135739851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x22, 0xabd8fecf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5bbc8877 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
bltu x5, x31, some_label_for_btype_2719370740 # perform operation 
addi x0, x1, 1
some_label_for_btype_2719370740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x7ffffffe # initialize rs1
li x31, 0x7ffffffe # initialize rs2
bltu x5, x31, some_label_for_btype_2719370741 # perform operation 
addi x0, x1, 1
some_label_for_btype_2719370741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x19, 0x0971d09f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x5bbc8877 # initialize rs1
li x24, 0xffffffff # initialize rs2
bltu x8, x24, some_label_for_btype_14678059420 # perform operation 
addi x0, x1, 1
some_label_for_btype_14678059420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xffffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
bltu x8, x24, some_label_for_btype_14678059421 # perform operation 
addi x0, x1, 1
some_label_for_btype_14678059421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x26, 0x6d0eeb57 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x5bbc8877 # initialize rs1
li x25, 0xfffffffe # initialize rs2
bltu x18, x25, some_label_for_btype_31607192950 # perform operation 
addi x0, x1, 1
some_label_for_btype_31607192950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xfffffffe # initialize rs1
li x25, 0xfffffffe # initialize rs2
bltu x18, x25, some_label_for_btype_31607192951 # perform operation 
addi x0, x1, 1
some_label_for_btype_31607192951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x29, 0x3c11d21c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x5bbc8877 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
bltu x28, x2, some_label_for_btype_14642687190 # perform operation 
addi x0, x1, 1
some_label_for_btype_14642687190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x5bbc8877 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
bltu x28, x2, some_label_for_btype_14642687191 # perform operation 
addi x0, x1, 1
some_label_for_btype_14642687191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x7, 0xf8b1ccf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x5bbc8877 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
bltu x1, x21, some_label_for_btype_39220947160 # perform operation 
addi x0, x1, 1
some_label_for_btype_39220947160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
bltu x1, x21, some_label_for_btype_39220947161 # perform operation 
addi x0, x1, 1
some_label_for_btype_39220947161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x2, 0x32a285d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x5bbc8877 # initialize rs1
li x24, 0x55555555 # initialize rs2
bltu x6, x24, some_label_for_btype_40235864200 # perform operation 
addi x0, x1, 1
some_label_for_btype_40235864200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x55555555 # initialize rs1
li x24, 0x55555555 # initialize rs2
bltu x6, x24, some_label_for_btype_40235864201 # perform operation 
addi x0, x1, 1
some_label_for_btype_40235864201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x22, 0x8e8dac4e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaa # initialize rs1
li x19, 0x00000000 # initialize rs2
bltu x13, x19, some_label_for_btype_5496753040 # perform operation 
addi x0, x1, 1
some_label_for_btype_5496753040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000000 # initialize rs1
li x19, 0x00000000 # initialize rs2
bltu x13, x19, some_label_for_btype_5496753041 # perform operation 
addi x0, x1, 1
some_label_for_btype_5496753041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x19, 0xc32086a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xaaaaaaaa # initialize rs1
li x20, 0x00000001 # initialize rs2
bltu x21, x20, some_label_for_btype_40292114090 # perform operation 
addi x0, x1, 1
some_label_for_btype_40292114090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
bltu x21, x20, some_label_for_btype_40292114091 # perform operation 
addi x0, x1, 1
some_label_for_btype_40292114091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x25, 0x75f7ac25 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xaaaaaaaa # initialize rs1
li x20, 0x00000002 # initialize rs2
bltu x3, x20, some_label_for_btype_17305141750 # perform operation 
addi x0, x1, 1
some_label_for_btype_17305141750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000002 # initialize rs1
li x20, 0x00000002 # initialize rs2
bltu x3, x20, some_label_for_btype_17305141751 # perform operation 
addi x0, x1, 1
some_label_for_btype_17305141751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x6, 0x78318336 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xaaaaaaaa # initialize rs1
li x8, 0x80000000 # initialize rs2
bltu x21, x8, some_label_for_btype_20077799120 # perform operation 
addi x0, x1, 1
some_label_for_btype_20077799120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x80000000 # initialize rs1
li x8, 0x80000000 # initialize rs2
bltu x21, x8, some_label_for_btype_20077799121 # perform operation 
addi x0, x1, 1
some_label_for_btype_20077799121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x5, 0x221faacd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xaaaaaaaa # initialize rs1
li x11, 0x80000001 # initialize rs2
bltu x2, x11, some_label_for_btype_42184115830 # perform operation 
addi x0, x1, 1
some_label_for_btype_42184115830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x80000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
bltu x2, x11, some_label_for_btype_42184115831 # perform operation 
addi x0, x1, 1
some_label_for_btype_42184115831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x9, 0x1be17215 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xaaaaaaaa # initialize rs1
li x2, 0x7fffffff # initialize rs2
bltu x27, x2, some_label_for_btype_24061622910 # perform operation 
addi x0, x1, 1
some_label_for_btype_24061622910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
bltu x27, x2, some_label_for_btype_24061622911 # perform operation 
addi x0, x1, 1
some_label_for_btype_24061622911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x8, 0xb0592420 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xaaaaaaaa # initialize rs1
li x18, 0x7ffffffe # initialize rs2
bltu x16, x18, some_label_for_btype_39459453450 # perform operation 
addi x0, x1, 1
some_label_for_btype_39459453450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x7ffffffe # initialize rs1
li x18, 0x7ffffffe # initialize rs2
bltu x16, x18, some_label_for_btype_39459453451 # perform operation 
addi x0, x1, 1
some_label_for_btype_39459453451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x25, 0x30be3de9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xaaaaaaaa # initialize rs1
li x28, 0xffffffff # initialize rs2
bltu x29, x28, some_label_for_btype_1270433240 # perform operation 
addi x0, x1, 1
some_label_for_btype_1270433240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xffffffff # initialize rs1
li x28, 0xffffffff # initialize rs2
bltu x29, x28, some_label_for_btype_1270433241 # perform operation 
addi x0, x1, 1
some_label_for_btype_1270433241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x9, 0xef898d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xaaaaaaaa # initialize rs1
li x25, 0xfffffffe # initialize rs2
bltu x11, x25, some_label_for_btype_15260173380 # perform operation 
addi x0, x1, 1
some_label_for_btype_15260173380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xfffffffe # initialize rs1
li x25, 0xfffffffe # initialize rs2
bltu x11, x25, some_label_for_btype_15260173381 # perform operation 
addi x0, x1, 1
some_label_for_btype_15260173381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x12, 0xb4c2696b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xaaaaaaaa # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
bltu x26, x15, some_label_for_btype_30205116270 # perform operation 
addi x0, x1, 1
some_label_for_btype_30205116270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x5bbc8877 # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
bltu x26, x15, some_label_for_btype_30205116271 # perform operation 
addi x0, x1, 1
some_label_for_btype_30205116271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x3, 0xd1dcc361 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
bltu x23, x20, some_label_for_btype_16839194440 # perform operation 
addi x0, x1, 1
some_label_for_btype_16839194440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
bltu x23, x20, some_label_for_btype_16839194441 # perform operation 
addi x0, x1, 1
some_label_for_btype_16839194441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x12, 0x590bd797 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xaaaaaaaa # initialize rs1
li x27, 0x55555555 # initialize rs2
bltu x2, x27, some_label_for_btype_35800164270 # perform operation 
addi x0, x1, 1
some_label_for_btype_35800164270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x55555555 # initialize rs1
li x27, 0x55555555 # initialize rs2
bltu x2, x27, some_label_for_btype_35800164271 # perform operation 
addi x0, x1, 1
some_label_for_btype_35800164271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x26, 0x1027d5b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x55555555 # initialize rs1
li x17, 0x00000000 # initialize rs2
bltu x3, x17, some_label_for_btype_2325292840 # perform operation 
addi x0, x1, 1
some_label_for_btype_2325292840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000000 # initialize rs1
li x17, 0x00000000 # initialize rs2
bltu x3, x17, some_label_for_btype_2325292841 # perform operation 
addi x0, x1, 1
some_label_for_btype_2325292841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x22, 0x36f08dcd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x55555555 # initialize rs1
li x15, 0x00000001 # initialize rs2
bltu x5, x15, some_label_for_btype_5124786330 # perform operation 
addi x0, x1, 1
some_label_for_btype_5124786330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
bltu x5, x15, some_label_for_btype_5124786331 # perform operation 
addi x0, x1, 1
some_label_for_btype_5124786331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x19, 0x2db214f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x55555555 # initialize rs1
li x2, 0x00000002 # initialize rs2
bltu x17, x2, some_label_for_btype_28285190740 # perform operation 
addi x0, x1, 1
some_label_for_btype_28285190740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
bltu x17, x2, some_label_for_btype_28285190741 # perform operation 
addi x0, x1, 1
some_label_for_btype_28285190741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x2, 0xf7237adb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x55555555 # initialize rs1
li x12, 0x80000000 # initialize rs2
bltu x15, x12, some_label_for_btype_4323785290 # perform operation 
addi x0, x1, 1
some_label_for_btype_4323785290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x80000000 # initialize rs1
li x12, 0x80000000 # initialize rs2
bltu x15, x12, some_label_for_btype_4323785291 # perform operation 
addi x0, x1, 1
some_label_for_btype_4323785291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x26, 0xcd9c4be1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x55555555 # initialize rs1
li x25, 0x80000001 # initialize rs2
bltu x11, x25, some_label_for_btype_12220890830 # perform operation 
addi x0, x1, 1
some_label_for_btype_12220890830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
bltu x11, x25, some_label_for_btype_12220890831 # perform operation 
addi x0, x1, 1
some_label_for_btype_12220890831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x16, 0xfe1fa61a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x55555555 # initialize rs1
li x20, 0x7fffffff # initialize rs2
bltu x26, x20, some_label_for_btype_14581354430 # perform operation 
addi x0, x1, 1
some_label_for_btype_14581354430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x7fffffff # initialize rs1
li x20, 0x7fffffff # initialize rs2
bltu x26, x20, some_label_for_btype_14581354431 # perform operation 
addi x0, x1, 1
some_label_for_btype_14581354431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x14, 0x2215b3b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x55555555 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
bltu x1, x2, some_label_for_btype_19496168910 # perform operation 
addi x0, x1, 1
some_label_for_btype_19496168910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x7ffffffe # initialize rs1
li x2, 0x7ffffffe # initialize rs2
bltu x1, x2, some_label_for_btype_19496168911 # perform operation 
addi x0, x1, 1
some_label_for_btype_19496168911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x5, 0xf21a0a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x55555555 # initialize rs1
li x8, 0xffffffff # initialize rs2
bltu x24, x8, some_label_for_btype_40807723090 # perform operation 
addi x0, x1, 1
some_label_for_btype_40807723090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xffffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
bltu x24, x8, some_label_for_btype_40807723091 # perform operation 
addi x0, x1, 1
some_label_for_btype_40807723091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x29, 0xdc2e1502 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x55555555 # initialize rs1
li x2, 0xfffffffe # initialize rs2
bltu x9, x2, some_label_for_btype_30051619710 # perform operation 
addi x0, x1, 1
some_label_for_btype_30051619710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xfffffffe # initialize rs1
li x2, 0xfffffffe # initialize rs2
bltu x9, x2, some_label_for_btype_30051619711 # perform operation 
addi x0, x1, 1
some_label_for_btype_30051619711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x11, 0xfecf595f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x55555555 # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
bltu x24, x5, some_label_for_btype_30488648180 # perform operation 
addi x0, x1, 1
some_label_for_btype_30488648180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5bbc8877 # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
bltu x24, x5, some_label_for_btype_30488648181 # perform operation 
addi x0, x1, 1
some_label_for_btype_30488648181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x31, 0xd37604d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x55555555 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
bltu x14, x23, some_label_for_btype_5118842560 # perform operation 
addi x0, x1, 1
some_label_for_btype_5118842560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
bltu x14, x23, some_label_for_btype_5118842561 # perform operation 
addi x0, x1, 1
some_label_for_btype_5118842561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x26, 0x6b86bef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x55555555 # initialize rs1
li x27, 0x55555555 # initialize rs2
bltu x23, x27, some_label_for_btype_40327338420 # perform operation 
addi x0, x1, 1
some_label_for_btype_40327338420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x55555555 # initialize rs1
li x27, 0x55555555 # initialize rs2
bltu x23, x27, some_label_for_btype_40327338421 # perform operation 
addi x0, x1, 1
some_label_for_btype_40327338421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x21, 0xaad04b80 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x19e108f2 # initialize rs1
li x0, 0xba72677d # initialize rs2
bltu x0, x0, some_label_for_btype_33279916060 # perform operation 
addi x0, x1, 1
some_label_for_btype_33279916060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0xba72677d # initialize rs1
li x0, 0xba72677d # initialize rs2
bltu x0, x0, some_label_for_btype_33279916061 # perform operation 
addi x0, x1, 1
some_label_for_btype_33279916061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x24, 0x95eccbf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x27f7ad20 # initialize rs1
li x1, 0x9e61537d # initialize rs2
bltu x1, x1, some_label_for_btype_19494649190 # perform operation 
addi x0, x1, 1
some_label_for_btype_19494649190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x9e61537d # initialize rs1
li x1, 0x9e61537d # initialize rs2
bltu x1, x1, some_label_for_btype_19494649191 # perform operation 
addi x0, x1, 1
some_label_for_btype_19494649191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x13, 0xab4cbd3b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xf5928615 # initialize rs1
li x2, 0xb09f98c9 # initialize rs2
bltu x2, x2, some_label_for_btype_744882590 # perform operation 
addi x0, x1, 1
some_label_for_btype_744882590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xb09f98c9 # initialize rs1
li x2, 0xb09f98c9 # initialize rs2
bltu x2, x2, some_label_for_btype_744882591 # perform operation 
addi x0, x1, 1
some_label_for_btype_744882591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x28, 0x33269a87 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x63dcd702 # initialize rs1
li x3, 0xf9c89d46 # initialize rs2
bltu x3, x3, some_label_for_btype_23194148110 # perform operation 
addi x0, x1, 1
some_label_for_btype_23194148110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xf9c89d46 # initialize rs1
li x3, 0xf9c89d46 # initialize rs2
bltu x3, x3, some_label_for_btype_23194148111 # perform operation 
addi x0, x1, 1
some_label_for_btype_23194148111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x29, 0xe6150b40 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x50f1e796 # initialize rs1
li x4, 0x6d4b3f4d # initialize rs2
bltu x4, x4, some_label_for_btype_37682427360 # perform operation 
addi x0, x1, 1
some_label_for_btype_37682427360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x6d4b3f4d # initialize rs1
li x4, 0x6d4b3f4d # initialize rs2
bltu x4, x4, some_label_for_btype_37682427361 # perform operation 
addi x0, x1, 1
some_label_for_btype_37682427361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x30, 0x306121c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x16001ce3 # initialize rs1
li x5, 0xeee1e940 # initialize rs2
bltu x5, x5, some_label_for_btype_37246827440 # perform operation 
addi x0, x1, 1
some_label_for_btype_37246827440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xeee1e940 # initialize rs1
li x5, 0xeee1e940 # initialize rs2
bltu x5, x5, some_label_for_btype_37246827441 # perform operation 
addi x0, x1, 1
some_label_for_btype_37246827441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x12, 0xf3e2c141 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x1e83e089 # initialize rs1
li x6, 0x909824b8 # initialize rs2
bltu x6, x6, some_label_for_btype_2121363280 # perform operation 
addi x0, x1, 1
some_label_for_btype_2121363280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x909824b8 # initialize rs1
li x6, 0x909824b8 # initialize rs2
bltu x6, x6, some_label_for_btype_2121363281 # perform operation 
addi x0, x1, 1
some_label_for_btype_2121363281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x25, 0x6a5dcf13 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x10fc82cb # initialize rs1
li x7, 0xb456ed20 # initialize rs2
bltu x7, x7, some_label_for_btype_36507921120 # perform operation 
addi x0, x1, 1
some_label_for_btype_36507921120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xb456ed20 # initialize rs1
li x7, 0xb456ed20 # initialize rs2
bltu x7, x7, some_label_for_btype_36507921121 # perform operation 
addi x0, x1, 1
some_label_for_btype_36507921121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x28, 0x528ca350 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x5994a48d # initialize rs1
li x8, 0x7927859d # initialize rs2
bltu x8, x8, some_label_for_btype_13662396480 # perform operation 
addi x0, x1, 1
some_label_for_btype_13662396480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x7927859d # initialize rs1
li x8, 0x7927859d # initialize rs2
bltu x8, x8, some_label_for_btype_13662396481 # perform operation 
addi x0, x1, 1
some_label_for_btype_13662396481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x26, 0xf19a99ec # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x8ec436d2 # initialize rs1
li x9, 0xdcddc308 # initialize rs2
bltu x9, x9, some_label_for_btype_41823371010 # perform operation 
addi x0, x1, 1
some_label_for_btype_41823371010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xdcddc308 # initialize rs1
li x9, 0xdcddc308 # initialize rs2
bltu x9, x9, some_label_for_btype_41823371011 # perform operation 
addi x0, x1, 1
some_label_for_btype_41823371011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x14, 0xa36b01de # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xd86b5a7e # initialize rs1
li x10, 0x75bf0852 # initialize rs2
bltu x10, x10, some_label_for_btype_7212214260 # perform operation 
addi x0, x1, 1
some_label_for_btype_7212214260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x75bf0852 # initialize rs1
li x10, 0x75bf0852 # initialize rs2
bltu x10, x10, some_label_for_btype_7212214261 # perform operation 
addi x0, x1, 1
some_label_for_btype_7212214261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x6, 0xa441cdb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x27c1ab41 # initialize rs1
li x11, 0x251224e0 # initialize rs2
bltu x11, x11, some_label_for_btype_22207842370 # perform operation 
addi x0, x1, 1
some_label_for_btype_22207842370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x251224e0 # initialize rs1
li x11, 0x251224e0 # initialize rs2
bltu x11, x11, some_label_for_btype_22207842371 # perform operation 
addi x0, x1, 1
some_label_for_btype_22207842371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x31, 0x5fcff0f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x939b5c49 # initialize rs1
li x12, 0x50aab5ed # initialize rs2
bltu x12, x12, some_label_for_btype_28833420960 # perform operation 
addi x0, x1, 1
some_label_for_btype_28833420960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x50aab5ed # initialize rs1
li x12, 0x50aab5ed # initialize rs2
bltu x12, x12, some_label_for_btype_28833420961 # perform operation 
addi x0, x1, 1
some_label_for_btype_28833420961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x4, 0x0dfd02bc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x685af693 # initialize rs1
li x13, 0xea46e602 # initialize rs2
bltu x13, x13, some_label_for_btype_17796403110 # perform operation 
addi x0, x1, 1
some_label_for_btype_17796403110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xea46e602 # initialize rs1
li x13, 0xea46e602 # initialize rs2
bltu x13, x13, some_label_for_btype_17796403111 # perform operation 
addi x0, x1, 1
some_label_for_btype_17796403111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x11, 0xd4746bdd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x1a5da95b # initialize rs1
li x14, 0xc0b7433e # initialize rs2
bltu x14, x14, some_label_for_btype_30600454340 # perform operation 
addi x0, x1, 1
some_label_for_btype_30600454340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xc0b7433e # initialize rs1
li x14, 0xc0b7433e # initialize rs2
bltu x14, x14, some_label_for_btype_30600454341 # perform operation 
addi x0, x1, 1
some_label_for_btype_30600454341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x25, 0x157c68de # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x7bf930eb # initialize rs1
li x15, 0xd14f5fcb # initialize rs2
bltu x15, x15, some_label_for_btype_9854273160 # perform operation 
addi x0, x1, 1
some_label_for_btype_9854273160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xd14f5fcb # initialize rs1
li x15, 0xd14f5fcb # initialize rs2
bltu x15, x15, some_label_for_btype_9854273161 # perform operation 
addi x0, x1, 1
some_label_for_btype_9854273161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x29, 0xc9f62792 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xd06327b5 # initialize rs1
li x16, 0x5bf5c4df # initialize rs2
bltu x16, x16, some_label_for_btype_27112773030 # perform operation 
addi x0, x1, 1
some_label_for_btype_27112773030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5bf5c4df # initialize rs1
li x16, 0x5bf5c4df # initialize rs2
bltu x16, x16, some_label_for_btype_27112773031 # perform operation 
addi x0, x1, 1
some_label_for_btype_27112773031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x10, 0x761dfda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x16594d9a # initialize rs1
li x17, 0x68946f84 # initialize rs2
bltu x17, x17, some_label_for_btype_4270393870 # perform operation 
addi x0, x1, 1
some_label_for_btype_4270393870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x68946f84 # initialize rs1
li x17, 0x68946f84 # initialize rs2
bltu x17, x17, some_label_for_btype_4270393871 # perform operation 
addi x0, x1, 1
some_label_for_btype_4270393871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x24, 0x8540c877 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xa4eeaee3 # initialize rs1
li x18, 0xad97c255 # initialize rs2
bltu x18, x18, some_label_for_btype_1898471160 # perform operation 
addi x0, x1, 1
some_label_for_btype_1898471160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xad97c255 # initialize rs1
li x18, 0xad97c255 # initialize rs2
bltu x18, x18, some_label_for_btype_1898471161 # perform operation 
addi x0, x1, 1
some_label_for_btype_1898471161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x8, 0xd13fa621 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x8680757c # initialize rs1
li x19, 0x546c2471 # initialize rs2
bltu x19, x19, some_label_for_btype_16131735370 # perform operation 
addi x0, x1, 1
some_label_for_btype_16131735370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x546c2471 # initialize rs1
li x19, 0x546c2471 # initialize rs2
bltu x19, x19, some_label_for_btype_16131735371 # perform operation 
addi x0, x1, 1
some_label_for_btype_16131735371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x3, 0x6fdaa413 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xdb24dcea # initialize rs1
li x20, 0x63317e2b # initialize rs2
bltu x20, x20, some_label_for_btype_19736279240 # perform operation 
addi x0, x1, 1
some_label_for_btype_19736279240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x63317e2b # initialize rs1
li x20, 0x63317e2b # initialize rs2
bltu x20, x20, some_label_for_btype_19736279241 # perform operation 
addi x0, x1, 1
some_label_for_btype_19736279241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x3, 0xb1af0c91 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xbc8c5acf # initialize rs1
li x21, 0x3770cb23 # initialize rs2
bltu x21, x21, some_label_for_btype_38339416510 # perform operation 
addi x0, x1, 1
some_label_for_btype_38339416510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x3770cb23 # initialize rs1
li x21, 0x3770cb23 # initialize rs2
bltu x21, x21, some_label_for_btype_38339416511 # perform operation 
addi x0, x1, 1
some_label_for_btype_38339416511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x3, 0x3dd1d591 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xa3583699 # initialize rs1
li x22, 0xc0802c8e # initialize rs2
bltu x22, x22, some_label_for_btype_17561799870 # perform operation 
addi x0, x1, 1
some_label_for_btype_17561799870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xc0802c8e # initialize rs1
li x22, 0xc0802c8e # initialize rs2
bltu x22, x22, some_label_for_btype_17561799871 # perform operation 
addi x0, x1, 1
some_label_for_btype_17561799871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x15, 0xd62ea58d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xa4a868cf # initialize rs1
li x23, 0xa810ac09 # initialize rs2
bltu x23, x23, some_label_for_btype_32185806460 # perform operation 
addi x0, x1, 1
some_label_for_btype_32185806460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xa810ac09 # initialize rs1
li x23, 0xa810ac09 # initialize rs2
bltu x23, x23, some_label_for_btype_32185806461 # perform operation 
addi x0, x1, 1
some_label_for_btype_32185806461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x7, 0xe1f8e277 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x42e4c7fa # initialize rs1
li x24, 0xf863096b # initialize rs2
bltu x24, x24, some_label_for_btype_20797096230 # perform operation 
addi x0, x1, 1
some_label_for_btype_20797096230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xf863096b # initialize rs1
li x24, 0xf863096b # initialize rs2
bltu x24, x24, some_label_for_btype_20797096231 # perform operation 
addi x0, x1, 1
some_label_for_btype_20797096231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x30, 0x37df32b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x39e6329c # initialize rs1
li x25, 0x1fd07bb1 # initialize rs2
bltu x25, x25, some_label_for_btype_26599276840 # perform operation 
addi x0, x1, 1
some_label_for_btype_26599276840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x1fd07bb1 # initialize rs1
li x25, 0x1fd07bb1 # initialize rs2
bltu x25, x25, some_label_for_btype_26599276841 # perform operation 
addi x0, x1, 1
some_label_for_btype_26599276841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x28, 0x8f79f07f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xe65fbb30 # initialize rs1
li x26, 0x8fae2db5 # initialize rs2
bltu x26, x26, some_label_for_btype_5768342240 # perform operation 
addi x0, x1, 1
some_label_for_btype_5768342240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x8fae2db5 # initialize rs1
li x26, 0x8fae2db5 # initialize rs2
bltu x26, x26, some_label_for_btype_5768342241 # perform operation 
addi x0, x1, 1
some_label_for_btype_5768342241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x20, 0x418dc0c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x76727d5a # initialize rs1
li x27, 0xfd4409d5 # initialize rs2
bltu x27, x27, some_label_for_btype_21042542380 # perform operation 
addi x0, x1, 1
some_label_for_btype_21042542380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xfd4409d5 # initialize rs1
li x27, 0xfd4409d5 # initialize rs2
bltu x27, x27, some_label_for_btype_21042542381 # perform operation 
addi x0, x1, 1
some_label_for_btype_21042542381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x78db0973 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x47e6b267 # initialize rs1
li x28, 0xf5076196 # initialize rs2
bltu x28, x28, some_label_for_btype_36247051610 # perform operation 
addi x0, x1, 1
some_label_for_btype_36247051610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xf5076196 # initialize rs1
li x28, 0xf5076196 # initialize rs2
bltu x28, x28, some_label_for_btype_36247051611 # perform operation 
addi x0, x1, 1
some_label_for_btype_36247051611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x24, 0x16314a85 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x9e7f80cc # initialize rs1
li x29, 0xe479451f # initialize rs2
bltu x29, x29, some_label_for_btype_21589860760 # perform operation 
addi x0, x1, 1
some_label_for_btype_21589860760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xe479451f # initialize rs1
li x29, 0xe479451f # initialize rs2
bltu x29, x29, some_label_for_btype_21589860761 # perform operation 
addi x0, x1, 1
some_label_for_btype_21589860761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x4, 0x59d6b931 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x1ad1e068 # initialize rs1
li x30, 0x1fdc6523 # initialize rs2
bltu x30, x30, some_label_for_btype_28970950560 # perform operation 
addi x0, x1, 1
some_label_for_btype_28970950560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x1fdc6523 # initialize rs1
li x30, 0x1fdc6523 # initialize rs2
bltu x30, x30, some_label_for_btype_28970950561 # perform operation 
addi x0, x1, 1
some_label_for_btype_28970950561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x03a5ce64 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x3a8358d5 # initialize rs1
li x31, 0x1062c7da # initialize rs2
bltu x31, x31, some_label_for_btype_8719207430 # perform operation 
addi x0, x1, 1
some_label_for_btype_8719207430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x1062c7da # initialize rs1
li x31, 0x1062c7da # initialize rs2
bltu x31, x31, some_label_for_btype_8719207431 # perform operation 
addi x0, x1, 1
some_label_for_btype_8719207431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = 0x76bd4c2a)
li x1, 0x0db7c3d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x76bd4c2a # initialize rs1
li x29, 0xec5f9d62 # initialize rs2
bltu x10, x29, some_label_for_btype_30018910050 # perform operation 
addi x0, x1, 1
some_label_for_btype_30018910050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xec5f9d62 # initialize rs1
li x29, 0xec5f9d62 # initialize rs2
bltu x10, x29, some_label_for_btype_30018910051 # perform operation 
addi x0, x1, 1
some_label_for_btype_30018910051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x2c866d5c)
li x15, 0x3fce50cb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xd37992a4 # initialize rs1
li x17, 0x62145e74 # initialize rs2
bltu x2, x17, some_label_for_btype_8973806870 # perform operation 
addi x0, x1, 1
some_label_for_btype_8973806870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x62145e74 # initialize rs1
li x17, 0x62145e74 # initialize rs2
bltu x2, x17, some_label_for_btype_8973806871 # perform operation 
addi x0, x1, 1
some_label_for_btype_8973806871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = 0x55ff3a40)
li x1, 0xb639ca97 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xa674f11e # initialize rs1
li x25, 0x55ff3a40 # initialize rs2
bltu x22, x25, some_label_for_btype_42101567280 # perform operation 
addi x0, x1, 1
some_label_for_btype_42101567280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x55ff3a40 # initialize rs1
li x25, 0x55ff3a40 # initialize rs2
bltu x22, x25, some_label_for_btype_42101567281 # perform operation 
addi x0, x1, 1
some_label_for_btype_42101567281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = -0x3f1e52a7)
li x29, 0x849a2ca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xd700f8f4 # initialize rs1
li x16, 0xc0e1ad59 # initialize rs2
bltu x13, x16, some_label_for_btype_29427808790 # perform operation 
addi x0, x1, 1
some_label_for_btype_29427808790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xc0e1ad59 # initialize rs1
li x16, 0xc0e1ad59 # initialize rs2
bltu x13, x16, some_label_for_btype_29427808791 # perform operation 
addi x0, x1, 1
some_label_for_btype_29427808791:
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
