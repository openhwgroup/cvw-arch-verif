///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-blt.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.947417
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x9, 0x54786d4b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x0b874ce2 # initialize rs1
li x15, 0x998a1858 # initialize rs2
blt x0, x15, some_label_for_btype_28011273340 # perform operation 
addi x0, x1, 1
some_label_for_btype_28011273340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0x998a1858 # initialize rs1
li x15, 0x998a1858 # initialize rs2
blt x0, x15, some_label_for_btype_28011273341 # perform operation 
addi x0, x1, 1
some_label_for_btype_28011273341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x1)
li x20, 0x30183fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xafd8b22b # initialize rs1
li x28, 0x6cbe143d # initialize rs2
blt x1, x28, some_label_for_btype_30028891940 # perform operation 
addi x0, x1, 1
some_label_for_btype_30028891940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x6cbe143d # initialize rs1
li x28, 0x6cbe143d # initialize rs2
blt x1, x28, some_label_for_btype_30028891941 # perform operation 
addi x0, x1, 1
some_label_for_btype_30028891941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x2)
li x24, 0x80725d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xcb2994f5 # initialize rs1
li x11, 0x2f2f9420 # initialize rs2
blt x2, x11, some_label_for_btype_41630282640 # perform operation 
addi x0, x1, 1
some_label_for_btype_41630282640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x2f2f9420 # initialize rs1
li x11, 0x2f2f9420 # initialize rs2
blt x2, x11, some_label_for_btype_41630282641 # perform operation 
addi x0, x1, 1
some_label_for_btype_41630282641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x3)
li x30, 0x42cbb4a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xd873ebcb # initialize rs1
li x17, 0x6fe92a2b # initialize rs2
blt x3, x17, some_label_for_btype_20840734010 # perform operation 
addi x0, x1, 1
some_label_for_btype_20840734010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x6fe92a2b # initialize rs1
li x17, 0x6fe92a2b # initialize rs2
blt x3, x17, some_label_for_btype_20840734011 # perform operation 
addi x0, x1, 1
some_label_for_btype_20840734011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x4)
li x11, 0xdb8cd56e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x3a220b80 # initialize rs1
li x23, 0x919d0c06 # initialize rs2
blt x4, x23, some_label_for_btype_23249368400 # perform operation 
addi x0, x1, 1
some_label_for_btype_23249368400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x919d0c06 # initialize rs1
li x23, 0x919d0c06 # initialize rs2
blt x4, x23, some_label_for_btype_23249368401 # perform operation 
addi x0, x1, 1
some_label_for_btype_23249368401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x5)
li x17, 0xea656ddc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5a6e1090 # initialize rs1
li x7, 0x29ae6726 # initialize rs2
blt x5, x7, some_label_for_btype_23788858880 # perform operation 
addi x0, x1, 1
some_label_for_btype_23788858880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x29ae6726 # initialize rs1
li x7, 0x29ae6726 # initialize rs2
blt x5, x7, some_label_for_btype_23788858881 # perform operation 
addi x0, x1, 1
some_label_for_btype_23788858881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x6)
li x29, 0x1618a9fe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x00a89d2b # initialize rs1
li x5, 0xca727811 # initialize rs2
blt x6, x5, some_label_for_btype_9726169050 # perform operation 
addi x0, x1, 1
some_label_for_btype_9726169050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xca727811 # initialize rs1
li x5, 0xca727811 # initialize rs2
blt x6, x5, some_label_for_btype_9726169051 # perform operation 
addi x0, x1, 1
some_label_for_btype_9726169051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x7)
li x2, 0xe5d5446e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x3b49b6bb # initialize rs1
li x12, 0x35f2e013 # initialize rs2
blt x7, x12, some_label_for_btype_39086359680 # perform operation 
addi x0, x1, 1
some_label_for_btype_39086359680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x35f2e013 # initialize rs1
li x12, 0x35f2e013 # initialize rs2
blt x7, x12, some_label_for_btype_39086359681 # perform operation 
addi x0, x1, 1
some_label_for_btype_39086359681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x8)
li x24, 0x23de42bb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0b04ceb9 # initialize rs1
li x25, 0xe3688296 # initialize rs2
blt x8, x25, some_label_for_btype_5673913110 # perform operation 
addi x0, x1, 1
some_label_for_btype_5673913110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xe3688296 # initialize rs1
li x25, 0xe3688296 # initialize rs2
blt x8, x25, some_label_for_btype_5673913111 # perform operation 
addi x0, x1, 1
some_label_for_btype_5673913111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x3a540dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x36ea95ed # initialize rs1
li x24, 0x9bf7a6cf # initialize rs2
blt x9, x24, some_label_for_btype_27366981600 # perform operation 
addi x0, x1, 1
some_label_for_btype_27366981600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x9bf7a6cf # initialize rs1
li x24, 0x9bf7a6cf # initialize rs2
blt x9, x24, some_label_for_btype_27366981601 # perform operation 
addi x0, x1, 1
some_label_for_btype_27366981601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x2, 0xf2d4b645 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x8d931c4a # initialize rs1
li x27, 0x38916566 # initialize rs2
blt x10, x27, some_label_for_btype_10640427730 # perform operation 
addi x0, x1, 1
some_label_for_btype_10640427730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x38916566 # initialize rs1
li x27, 0x38916566 # initialize rs2
blt x10, x27, some_label_for_btype_10640427731 # perform operation 
addi x0, x1, 1
some_label_for_btype_10640427731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x5, 0x75d76c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x434da02f # initialize rs1
li x24, 0xf922d821 # initialize rs2
blt x11, x24, some_label_for_btype_8112100270 # perform operation 
addi x0, x1, 1
some_label_for_btype_8112100270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xf922d821 # initialize rs1
li x24, 0xf922d821 # initialize rs2
blt x11, x24, some_label_for_btype_8112100271 # perform operation 
addi x0, x1, 1
some_label_for_btype_8112100271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x20, 0xc15f4cb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xc0e1dde7 # initialize rs1
li x25, 0x6488666f # initialize rs2
blt x12, x25, some_label_for_btype_30231790130 # perform operation 
addi x0, x1, 1
some_label_for_btype_30231790130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x6488666f # initialize rs1
li x25, 0x6488666f # initialize rs2
blt x12, x25, some_label_for_btype_30231790131 # perform operation 
addi x0, x1, 1
some_label_for_btype_30231790131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x18, 0xd0a6e192 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x962ce2ca # initialize rs1
li x4, 0x1ccf3474 # initialize rs2
blt x13, x4, some_label_for_btype_35929253300 # perform operation 
addi x0, x1, 1
some_label_for_btype_35929253300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x1ccf3474 # initialize rs1
li x4, 0x1ccf3474 # initialize rs2
blt x13, x4, some_label_for_btype_35929253301 # perform operation 
addi x0, x1, 1
some_label_for_btype_35929253301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x20, 0x89530710 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xc5dcb543 # initialize rs1
li x27, 0xf7434ad4 # initialize rs2
blt x14, x27, some_label_for_btype_14821835460 # perform operation 
addi x0, x1, 1
some_label_for_btype_14821835460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xf7434ad4 # initialize rs1
li x27, 0xf7434ad4 # initialize rs2
blt x14, x27, some_label_for_btype_14821835461 # perform operation 
addi x0, x1, 1
some_label_for_btype_14821835461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x30, 0x0769aed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0b7bcab8 # initialize rs1
li x20, 0xee22b796 # initialize rs2
blt x15, x20, some_label_for_btype_19796183400 # perform operation 
addi x0, x1, 1
some_label_for_btype_19796183400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xee22b796 # initialize rs1
li x20, 0xee22b796 # initialize rs2
blt x15, x20, some_label_for_btype_19796183401 # perform operation 
addi x0, x1, 1
some_label_for_btype_19796183401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x16)
li x11, 0xd394d275 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xd5a4d471 # initialize rs1
li x19, 0xfba49a1e # initialize rs2
blt x16, x19, some_label_for_btype_1899977860 # perform operation 
addi x0, x1, 1
some_label_for_btype_1899977860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xfba49a1e # initialize rs1
li x19, 0xfba49a1e # initialize rs2
blt x16, x19, some_label_for_btype_1899977861 # perform operation 
addi x0, x1, 1
some_label_for_btype_1899977861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x17)
li x19, 0xb350b84b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xeefd24b7 # initialize rs1
li x6, 0xc656ab28 # initialize rs2
blt x17, x6, some_label_for_btype_20922066310 # perform operation 
addi x0, x1, 1
some_label_for_btype_20922066310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xc656ab28 # initialize rs1
li x6, 0xc656ab28 # initialize rs2
blt x17, x6, some_label_for_btype_20922066311 # perform operation 
addi x0, x1, 1
some_label_for_btype_20922066311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x18)
li x1, 0x4da707b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xc4181042 # initialize rs1
li x9, 0x80a6de23 # initialize rs2
blt x18, x9, some_label_for_btype_34342959520 # perform operation 
addi x0, x1, 1
some_label_for_btype_34342959520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x80a6de23 # initialize rs1
li x9, 0x80a6de23 # initialize rs2
blt x18, x9, some_label_for_btype_34342959521 # perform operation 
addi x0, x1, 1
some_label_for_btype_34342959521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x19)
li x9, 0x47cee3ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xb0f3b343 # initialize rs1
li x26, 0xf242cbb4 # initialize rs2
blt x19, x26, some_label_for_btype_28050615730 # perform operation 
addi x0, x1, 1
some_label_for_btype_28050615730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xf242cbb4 # initialize rs1
li x26, 0xf242cbb4 # initialize rs2
blt x19, x26, some_label_for_btype_28050615731 # perform operation 
addi x0, x1, 1
some_label_for_btype_28050615731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x20)
li x30, 0x28eb6595 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x9dc95a1f # initialize rs1
li x17, 0x523446d1 # initialize rs2
blt x20, x17, some_label_for_btype_39753993850 # perform operation 
addi x0, x1, 1
some_label_for_btype_39753993850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x523446d1 # initialize rs1
li x17, 0x523446d1 # initialize rs2
blt x20, x17, some_label_for_btype_39753993851 # perform operation 
addi x0, x1, 1
some_label_for_btype_39753993851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x21)
li x3, 0xbf50c698 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xbe155f8a # initialize rs1
li x2, 0x2f0ceb41 # initialize rs2
blt x21, x2, some_label_for_btype_32955331340 # perform operation 
addi x0, x1, 1
some_label_for_btype_32955331340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x2f0ceb41 # initialize rs1
li x2, 0x2f0ceb41 # initialize rs2
blt x21, x2, some_label_for_btype_32955331341 # perform operation 
addi x0, x1, 1
some_label_for_btype_32955331341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x22)
li x13, 0x530932ad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xb3a00f65 # initialize rs1
li x1, 0x9b6f8426 # initialize rs2
blt x22, x1, some_label_for_btype_40431099620 # perform operation 
addi x0, x1, 1
some_label_for_btype_40431099620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x9b6f8426 # initialize rs1
li x1, 0x9b6f8426 # initialize rs2
blt x22, x1, some_label_for_btype_40431099621 # perform operation 
addi x0, x1, 1
some_label_for_btype_40431099621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x23)
li x25, 0x1268c64e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x4c524949 # initialize rs1
li x11, 0x0fc50523 # initialize rs2
blt x23, x11, some_label_for_btype_23581275320 # perform operation 
addi x0, x1, 1
some_label_for_btype_23581275320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x0fc50523 # initialize rs1
li x11, 0x0fc50523 # initialize rs2
blt x23, x11, some_label_for_btype_23581275321 # perform operation 
addi x0, x1, 1
some_label_for_btype_23581275321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x24)
li x19, 0xcae5efcc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xcbba94e1 # initialize rs1
li x28, 0xda940b91 # initialize rs2
blt x24, x28, some_label_for_btype_3560819710 # perform operation 
addi x0, x1, 1
some_label_for_btype_3560819710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xda940b91 # initialize rs1
li x28, 0xda940b91 # initialize rs2
blt x24, x28, some_label_for_btype_3560819711 # perform operation 
addi x0, x1, 1
some_label_for_btype_3560819711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x25)
li x11, 0xf8a5392c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x4503d690 # initialize rs1
li x16, 0xaea175e6 # initialize rs2
blt x25, x16, some_label_for_btype_34662583000 # perform operation 
addi x0, x1, 1
some_label_for_btype_34662583000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xaea175e6 # initialize rs1
li x16, 0xaea175e6 # initialize rs2
blt x25, x16, some_label_for_btype_34662583001 # perform operation 
addi x0, x1, 1
some_label_for_btype_34662583001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x26)
li x17, 0x2671ea7e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x762c08ee # initialize rs1
li x14, 0xbf15e8a5 # initialize rs2
blt x26, x14, some_label_for_btype_10775459280 # perform operation 
addi x0, x1, 1
some_label_for_btype_10775459280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xbf15e8a5 # initialize rs1
li x14, 0xbf15e8a5 # initialize rs2
blt x26, x14, some_label_for_btype_10775459281 # perform operation 
addi x0, x1, 1
some_label_for_btype_10775459281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x27)
li x30, 0x1aff7b60 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x47deaf53 # initialize rs1
li x7, 0x7433147e # initialize rs2
blt x27, x7, some_label_for_btype_40248739060 # perform operation 
addi x0, x1, 1
some_label_for_btype_40248739060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x7433147e # initialize rs1
li x7, 0x7433147e # initialize rs2
blt x27, x7, some_label_for_btype_40248739061 # perform operation 
addi x0, x1, 1
some_label_for_btype_40248739061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0x62c54b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x703cb870 # initialize rs1
li x30, 0xafb184f1 # initialize rs2
blt x28, x30, some_label_for_btype_19816604710 # perform operation 
addi x0, x1, 1
some_label_for_btype_19816604710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xafb184f1 # initialize rs1
li x30, 0xafb184f1 # initialize rs2
blt x28, x30, some_label_for_btype_19816604711 # perform operation 
addi x0, x1, 1
some_label_for_btype_19816604711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x29)
li x5, 0x797f66b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xdaeb4aad # initialize rs1
li x8, 0xa385b123 # initialize rs2
blt x29, x8, some_label_for_btype_35825759860 # perform operation 
addi x0, x1, 1
some_label_for_btype_35825759860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xa385b123 # initialize rs1
li x8, 0xa385b123 # initialize rs2
blt x29, x8, some_label_for_btype_35825759861 # perform operation 
addi x0, x1, 1
some_label_for_btype_35825759861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x30)
li x21, 0xffa665bf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xdadbb925 # initialize rs1
li x20, 0x94ebb818 # initialize rs2
blt x30, x20, some_label_for_btype_34497771560 # perform operation 
addi x0, x1, 1
some_label_for_btype_34497771560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x94ebb818 # initialize rs1
li x20, 0x94ebb818 # initialize rs2
blt x30, x20, some_label_for_btype_34497771561 # perform operation 
addi x0, x1, 1
some_label_for_btype_34497771561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x31)
li x20, 0x4f11fe20 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x03449264 # initialize rs1
li x6, 0xc41c76e2 # initialize rs2
blt x31, x6, some_label_for_btype_11477288170 # perform operation 
addi x0, x1, 1
some_label_for_btype_11477288170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xc41c76e2 # initialize rs1
li x6, 0xc41c76e2 # initialize rs2
blt x31, x6, some_label_for_btype_11477288171 # perform operation 
addi x0, x1, 1
some_label_for_btype_11477288171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x0)
li x2, 0xb2f9ac4f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x28d85e83 # initialize rs1
li x0, 0xcff1050c # initialize rs2
blt x21, x0, some_label_for_btype_28733019400 # perform operation 
addi x0, x1, 1
some_label_for_btype_28733019400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xcff1050c # initialize rs1
li x0, 0xcff1050c # initialize rs2
blt x21, x0, some_label_for_btype_28733019401 # perform operation 
addi x0, x1, 1
some_label_for_btype_28733019401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x1)
li x31, 0xb302fba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x453dfe11 # initialize rs1
li x1, 0x337d2751 # initialize rs2
blt x21, x1, some_label_for_btype_11153960850 # perform operation 
addi x0, x1, 1
some_label_for_btype_11153960850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x337d2751 # initialize rs1
li x1, 0x337d2751 # initialize rs2
blt x21, x1, some_label_for_btype_11153960851 # perform operation 
addi x0, x1, 1
some_label_for_btype_11153960851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x2)
li x30, 0x109ced8e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x296634b5 # initialize rs1
li x2, 0xe3fea8ce # initialize rs2
blt x21, x2, some_label_for_btype_40911193700 # perform operation 
addi x0, x1, 1
some_label_for_btype_40911193700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xe3fea8ce # initialize rs1
li x2, 0xe3fea8ce # initialize rs2
blt x21, x2, some_label_for_btype_40911193701 # perform operation 
addi x0, x1, 1
some_label_for_btype_40911193701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x3)
li x27, 0x39b9e14d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x2c8e97fe # initialize rs1
li x3, 0x518312ba # initialize rs2
blt x11, x3, some_label_for_btype_19703292040 # perform operation 
addi x0, x1, 1
some_label_for_btype_19703292040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x518312ba # initialize rs1
li x3, 0x518312ba # initialize rs2
blt x11, x3, some_label_for_btype_19703292041 # perform operation 
addi x0, x1, 1
some_label_for_btype_19703292041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x4)
li x15, 0x3b6a8a2f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x3a98d017 # initialize rs1
li x4, 0x904ea883 # initialize rs2
blt x16, x4, some_label_for_btype_13191441520 # perform operation 
addi x0, x1, 1
some_label_for_btype_13191441520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x904ea883 # initialize rs1
li x4, 0x904ea883 # initialize rs2
blt x16, x4, some_label_for_btype_13191441521 # perform operation 
addi x0, x1, 1
some_label_for_btype_13191441521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x5)
li x19, 0xc2d0a47e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0f2ddd8d # initialize rs1
li x5, 0x5bec4c4f # initialize rs2
blt x1, x5, some_label_for_btype_28427420170 # perform operation 
addi x0, x1, 1
some_label_for_btype_28427420170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x5bec4c4f # initialize rs1
li x5, 0x5bec4c4f # initialize rs2
blt x1, x5, some_label_for_btype_28427420171 # perform operation 
addi x0, x1, 1
some_label_for_btype_28427420171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x6)
li x15, 0x905c7b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x5d788f09 # initialize rs1
li x6, 0xec574e06 # initialize rs2
blt x8, x6, some_label_for_btype_15783803670 # perform operation 
addi x0, x1, 1
some_label_for_btype_15783803670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xec574e06 # initialize rs1
li x6, 0xec574e06 # initialize rs2
blt x8, x6, some_label_for_btype_15783803671 # perform operation 
addi x0, x1, 1
some_label_for_btype_15783803671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x7)
li x30, 0xe11cde6b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xabc1cf41 # initialize rs1
li x7, 0x7eb46683 # initialize rs2
blt x1, x7, some_label_for_btype_6911846490 # perform operation 
addi x0, x1, 1
some_label_for_btype_6911846490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x7eb46683 # initialize rs1
li x7, 0x7eb46683 # initialize rs2
blt x1, x7, some_label_for_btype_6911846491 # perform operation 
addi x0, x1, 1
some_label_for_btype_6911846491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0xf7683de2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x497b49a6 # initialize rs1
li x8, 0x28e0e024 # initialize rs2
blt x11, x8, some_label_for_btype_5066946910 # perform operation 
addi x0, x1, 1
some_label_for_btype_5066946910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x28e0e024 # initialize rs1
li x8, 0x28e0e024 # initialize rs2
blt x11, x8, some_label_for_btype_5066946911 # perform operation 
addi x0, x1, 1
some_label_for_btype_5066946911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x9)
li x11, 0x9e231886 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xacc9ff36 # initialize rs1
li x9, 0xaca773ae # initialize rs2
blt x4, x9, some_label_for_btype_8129870140 # perform operation 
addi x0, x1, 1
some_label_for_btype_8129870140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xaca773ae # initialize rs1
li x9, 0xaca773ae # initialize rs2
blt x4, x9, some_label_for_btype_8129870141 # perform operation 
addi x0, x1, 1
some_label_for_btype_8129870141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x10)
li x4, 0x69de6c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xcd360eb2 # initialize rs1
li x10, 0x0ed04474 # initialize rs2
blt x27, x10, some_label_for_btype_30678893760 # perform operation 
addi x0, x1, 1
some_label_for_btype_30678893760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0ed04474 # initialize rs1
li x10, 0x0ed04474 # initialize rs2
blt x27, x10, some_label_for_btype_30678893761 # perform operation 
addi x0, x1, 1
some_label_for_btype_30678893761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x11)
li x10, 0x2ae0e4ba # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x35001aa9 # initialize rs1
li x11, 0x2fca3ae3 # initialize rs2
blt x30, x11, some_label_for_btype_31778953560 # perform operation 
addi x0, x1, 1
some_label_for_btype_31778953560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x2fca3ae3 # initialize rs1
li x11, 0x2fca3ae3 # initialize rs2
blt x30, x11, some_label_for_btype_31778953561 # perform operation 
addi x0, x1, 1
some_label_for_btype_31778953561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x12)
li x24, 0xee41cb08 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x78a60fc9 # initialize rs1
li x12, 0x301a533c # initialize rs2
blt x29, x12, some_label_for_btype_26087641610 # perform operation 
addi x0, x1, 1
some_label_for_btype_26087641610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x301a533c # initialize rs1
li x12, 0x301a533c # initialize rs2
blt x29, x12, some_label_for_btype_26087641611 # perform operation 
addi x0, x1, 1
some_label_for_btype_26087641611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x13)
li x30, 0x9597bbd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x9a986251 # initialize rs1
li x13, 0x757957da # initialize rs2
blt x1, x13, some_label_for_btype_4816106410 # perform operation 
addi x0, x1, 1
some_label_for_btype_4816106410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x757957da # initialize rs1
li x13, 0x757957da # initialize rs2
blt x1, x13, some_label_for_btype_4816106411 # perform operation 
addi x0, x1, 1
some_label_for_btype_4816106411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x14)
li x9, 0x96ce7513 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x979467fc # initialize rs1
li x14, 0x5909c169 # initialize rs2
blt x28, x14, some_label_for_btype_18168670260 # perform operation 
addi x0, x1, 1
some_label_for_btype_18168670260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x5909c169 # initialize rs1
li x14, 0x5909c169 # initialize rs2
blt x28, x14, some_label_for_btype_18168670261 # perform operation 
addi x0, x1, 1
some_label_for_btype_18168670261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x15)
li x12, 0x302ae945 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xa62bd0f0 # initialize rs1
li x15, 0xec2bc40e # initialize rs2
blt x10, x15, some_label_for_btype_27666885450 # perform operation 
addi x0, x1, 1
some_label_for_btype_27666885450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xec2bc40e # initialize rs1
li x15, 0xec2bc40e # initialize rs2
blt x10, x15, some_label_for_btype_27666885451 # perform operation 
addi x0, x1, 1
some_label_for_btype_27666885451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x16)
li x22, 0xa5f47427 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x7b00a6d0 # initialize rs1
li x16, 0x242bb275 # initialize rs2
blt x3, x16, some_label_for_btype_40392055370 # perform operation 
addi x0, x1, 1
some_label_for_btype_40392055370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x242bb275 # initialize rs1
li x16, 0x242bb275 # initialize rs2
blt x3, x16, some_label_for_btype_40392055371 # perform operation 
addi x0, x1, 1
some_label_for_btype_40392055371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0x819ee73a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x85d7602d # initialize rs1
li x17, 0xa98d63d6 # initialize rs2
blt x19, x17, some_label_for_btype_2523409510 # perform operation 
addi x0, x1, 1
some_label_for_btype_2523409510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xa98d63d6 # initialize rs1
li x17, 0xa98d63d6 # initialize rs2
blt x19, x17, some_label_for_btype_2523409511 # perform operation 
addi x0, x1, 1
some_label_for_btype_2523409511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x18)
li x13, 0x76dea4f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x4ad62644 # initialize rs1
li x18, 0x30ff4a7f # initialize rs2
blt x31, x18, some_label_for_btype_21758079760 # perform operation 
addi x0, x1, 1
some_label_for_btype_21758079760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x30ff4a7f # initialize rs1
li x18, 0x30ff4a7f # initialize rs2
blt x31, x18, some_label_for_btype_21758079761 # perform operation 
addi x0, x1, 1
some_label_for_btype_21758079761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x19)
li x28, 0x5c6a3acd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xaac49ad9 # initialize rs1
li x19, 0xa9924bb0 # initialize rs2
blt x22, x19, some_label_for_btype_1807714950 # perform operation 
addi x0, x1, 1
some_label_for_btype_1807714950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xa9924bb0 # initialize rs1
li x19, 0xa9924bb0 # initialize rs2
blt x22, x19, some_label_for_btype_1807714951 # perform operation 
addi x0, x1, 1
some_label_for_btype_1807714951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x20)
li x25, 0x89f7f90b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xa552a789 # initialize rs1
li x20, 0xcbb33e3a # initialize rs2
blt x8, x20, some_label_for_btype_25934662360 # perform operation 
addi x0, x1, 1
some_label_for_btype_25934662360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xcbb33e3a # initialize rs1
li x20, 0xcbb33e3a # initialize rs2
blt x8, x20, some_label_for_btype_25934662361 # perform operation 
addi x0, x1, 1
some_label_for_btype_25934662361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x21)
li x6, 0x12f243a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xdf8a3c3f # initialize rs1
li x21, 0x6bc00e3e # initialize rs2
blt x31, x21, some_label_for_btype_4435990580 # perform operation 
addi x0, x1, 1
some_label_for_btype_4435990580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x6bc00e3e # initialize rs1
li x21, 0x6bc00e3e # initialize rs2
blt x31, x21, some_label_for_btype_4435990581 # perform operation 
addi x0, x1, 1
some_label_for_btype_4435990581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x22)
li x16, 0xfbc755ea # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xc0879cf7 # initialize rs1
li x22, 0x4d007d95 # initialize rs2
blt x13, x22, some_label_for_btype_30350071760 # perform operation 
addi x0, x1, 1
some_label_for_btype_30350071760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x4d007d95 # initialize rs1
li x22, 0x4d007d95 # initialize rs2
blt x13, x22, some_label_for_btype_30350071761 # perform operation 
addi x0, x1, 1
some_label_for_btype_30350071761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x23)
li x29, 0xefc1ab8f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xb91f700a # initialize rs1
li x23, 0x62355201 # initialize rs2
blt x8, x23, some_label_for_btype_38982690010 # perform operation 
addi x0, x1, 1
some_label_for_btype_38982690010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x62355201 # initialize rs1
li x23, 0x62355201 # initialize rs2
blt x8, x23, some_label_for_btype_38982690011 # perform operation 
addi x0, x1, 1
some_label_for_btype_38982690011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x24)
li x22, 0x2dffee4a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x85d2f4ed # initialize rs1
li x24, 0x805335fd # initialize rs2
blt x19, x24, some_label_for_btype_35784633030 # perform operation 
addi x0, x1, 1
some_label_for_btype_35784633030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x805335fd # initialize rs1
li x24, 0x805335fd # initialize rs2
blt x19, x24, some_label_for_btype_35784633031 # perform operation 
addi x0, x1, 1
some_label_for_btype_35784633031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x25)
li x5, 0xc4390dab # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x68dd42d2 # initialize rs1
li x25, 0xe65cd862 # initialize rs2
blt x29, x25, some_label_for_btype_11755942870 # perform operation 
addi x0, x1, 1
some_label_for_btype_11755942870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xe65cd862 # initialize rs1
li x25, 0xe65cd862 # initialize rs2
blt x29, x25, some_label_for_btype_11755942871 # perform operation 
addi x0, x1, 1
some_label_for_btype_11755942871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x26)
li x14, 0x536d984e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xdad30427 # initialize rs1
li x26, 0xf512e8e0 # initialize rs2
blt x5, x26, some_label_for_btype_25609533590 # perform operation 
addi x0, x1, 1
some_label_for_btype_25609533590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xf512e8e0 # initialize rs1
li x26, 0xf512e8e0 # initialize rs2
blt x5, x26, some_label_for_btype_25609533591 # perform operation 
addi x0, x1, 1
some_label_for_btype_25609533591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x27)
li x9, 0x09f0b079 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xfc28863e # initialize rs1
li x27, 0xe884753e # initialize rs2
blt x7, x27, some_label_for_btype_29466810520 # perform operation 
addi x0, x1, 1
some_label_for_btype_29466810520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xe884753e # initialize rs1
li x27, 0xe884753e # initialize rs2
blt x7, x27, some_label_for_btype_29466810521 # perform operation 
addi x0, x1, 1
some_label_for_btype_29466810521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x28)
li x14, 0x62880283 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x2ecc022d # initialize rs1
li x28, 0x9051015c # initialize rs2
blt x24, x28, some_label_for_btype_28035493250 # perform operation 
addi x0, x1, 1
some_label_for_btype_28035493250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x9051015c # initialize rs1
li x28, 0x9051015c # initialize rs2
blt x24, x28, some_label_for_btype_28035493251 # perform operation 
addi x0, x1, 1
some_label_for_btype_28035493251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x29)
li x11, 0x56a7ff80 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x6064b2eb # initialize rs1
li x29, 0x658c1623 # initialize rs2
blt x17, x29, some_label_for_btype_26639883580 # perform operation 
addi x0, x1, 1
some_label_for_btype_26639883580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x658c1623 # initialize rs1
li x29, 0x658c1623 # initialize rs2
blt x17, x29, some_label_for_btype_26639883581 # perform operation 
addi x0, x1, 1
some_label_for_btype_26639883581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x30)
li x8, 0x11dac03e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x5785b86a # initialize rs1
li x30, 0x0bd293e3 # initialize rs2
blt x10, x30, some_label_for_btype_14415038810 # perform operation 
addi x0, x1, 1
some_label_for_btype_14415038810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0bd293e3 # initialize rs1
li x30, 0x0bd293e3 # initialize rs2
blt x10, x30, some_label_for_btype_14415038811 # perform operation 
addi x0, x1, 1
some_label_for_btype_14415038811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x31)
li x16, 0xf4605d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x5905f31d # initialize rs1
li x31, 0x709aec05 # initialize rs2
blt x18, x31, some_label_for_btype_26409986670 # perform operation 
addi x0, x1, 1
some_label_for_btype_26409986670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x709aec05 # initialize rs1
li x31, 0x709aec05 # initialize rs2
blt x18, x31, some_label_for_btype_26409986671 # perform operation 
addi x0, x1, 1
some_label_for_btype_26409986671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xb604acba)
li x9, 0xed9ca808 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xed9ca808 # initialize rs1
li x0, 0x86d6eb0e # initialize rs2
blt x27, x0, some_label_for_btype_20289971300 # perform operation 
addi x0, x1, 1
some_label_for_btype_20289971300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x86d6eb0e # initialize rs1
li x0, 0x86d6eb0e # initialize rs2
blt x27, x0, some_label_for_btype_20289971301 # perform operation 
addi x0, x1, 1
some_label_for_btype_20289971301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x18, 0x1ba05618 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000000 # initialize rs1
li x21, 0x7e71d750 # initialize rs2
blt x13, x21, some_label_for_btype_34953883240 # perform operation 
addi x0, x1, 1
some_label_for_btype_34953883240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x7e71d750 # initialize rs1
li x21, 0x7e71d750 # initialize rs2
blt x13, x21, some_label_for_btype_34953883241 # perform operation 
addi x0, x1, 1
some_label_for_btype_34953883241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x86f8a551 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x00000001 # initialize rs1
li x9, 0xe711edca # initialize rs2
blt x8, x9, some_label_for_btype_14256554940 # perform operation 
addi x0, x1, 1
some_label_for_btype_14256554940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xe711edca # initialize rs1
li x9, 0xe711edca # initialize rs2
blt x8, x9, some_label_for_btype_14256554941 # perform operation 
addi x0, x1, 1
some_label_for_btype_14256554941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x17, 0x7701097b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000002 # initialize rs1
li x11, 0x9281acac # initialize rs2
blt x18, x11, some_label_for_btype_28896538320 # perform operation 
addi x0, x1, 1
some_label_for_btype_28896538320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x9281acac # initialize rs1
li x11, 0x9281acac # initialize rs2
blt x18, x11, some_label_for_btype_28896538321 # perform operation 
addi x0, x1, 1
some_label_for_btype_28896538321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x20, 0x1982792a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x80000000 # initialize rs1
li x25, 0x65a8873a # initialize rs2
blt x6, x25, some_label_for_btype_12884413230 # perform operation 
addi x0, x1, 1
some_label_for_btype_12884413230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x65a8873a # initialize rs1
li x25, 0x65a8873a # initialize rs2
blt x6, x25, some_label_for_btype_12884413231 # perform operation 
addi x0, x1, 1
some_label_for_btype_12884413231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x12, 0xc88ae8ca # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x80000001 # initialize rs1
li x9, 0xadce448b # initialize rs2
blt x19, x9, some_label_for_btype_40757393560 # perform operation 
addi x0, x1, 1
some_label_for_btype_40757393560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xadce448b # initialize rs1
li x9, 0xadce448b # initialize rs2
blt x19, x9, some_label_for_btype_40757393561 # perform operation 
addi x0, x1, 1
some_label_for_btype_40757393561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x26, 0x4cf177a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7fffffff # initialize rs1
li x12, 0x7b3ba735 # initialize rs2
blt x17, x12, some_label_for_btype_6902715730 # perform operation 
addi x0, x1, 1
some_label_for_btype_6902715730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x7b3ba735 # initialize rs1
li x12, 0x7b3ba735 # initialize rs2
blt x17, x12, some_label_for_btype_6902715731 # perform operation 
addi x0, x1, 1
some_label_for_btype_6902715731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x15, 0xfd018864 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x7ffffffe # initialize rs1
li x26, 0xeded349c # initialize rs2
blt x6, x26, some_label_for_btype_18581182230 # perform operation 
addi x0, x1, 1
some_label_for_btype_18581182230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xeded349c # initialize rs1
li x26, 0xeded349c # initialize rs2
blt x6, x26, some_label_for_btype_18581182231 # perform operation 
addi x0, x1, 1
some_label_for_btype_18581182231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0x039be5ba # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xffffffff # initialize rs1
li x4, 0x4603414f # initialize rs2
blt x26, x4, some_label_for_btype_2037097390 # perform operation 
addi x0, x1, 1
some_label_for_btype_2037097390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x4603414f # initialize rs1
li x4, 0x4603414f # initialize rs2
blt x26, x4, some_label_for_btype_2037097391 # perform operation 
addi x0, x1, 1
some_label_for_btype_2037097391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x24, 0x0e2b272f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xfffffffe # initialize rs1
li x5, 0xb0b5de28 # initialize rs2
blt x20, x5, some_label_for_btype_13253524440 # perform operation 
addi x0, x1, 1
some_label_for_btype_13253524440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xb0b5de28 # initialize rs1
li x5, 0xb0b5de28 # initialize rs2
blt x20, x5, some_label_for_btype_13253524441 # perform operation 
addi x0, x1, 1
some_label_for_btype_13253524441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x6, 0xa128203a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x5bbc8877 # initialize rs1
li x28, 0x8b50deed # initialize rs2
blt x14, x28, some_label_for_btype_630110 # perform operation 
addi x0, x1, 1
some_label_for_btype_630110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x8b50deed # initialize rs1
li x28, 0x8b50deed # initialize rs2
blt x14, x28, some_label_for_btype_630111 # perform operation 
addi x0, x1, 1
some_label_for_btype_630111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x18, 0x51e84dce # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xaaaaaaaa # initialize rs1
li x11, 0x99dfff88 # initialize rs2
blt x21, x11, some_label_for_btype_41279105470 # perform operation 
addi x0, x1, 1
some_label_for_btype_41279105470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x99dfff88 # initialize rs1
li x11, 0x99dfff88 # initialize rs2
blt x21, x11, some_label_for_btype_41279105471 # perform operation 
addi x0, x1, 1
some_label_for_btype_41279105471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x9, 0x2371b9e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x55555555 # initialize rs1
li x3, 0x6989c844 # initialize rs2
blt x10, x3, some_label_for_btype_22276750740 # perform operation 
addi x0, x1, 1
some_label_for_btype_22276750740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x6989c844 # initialize rs1
li x3, 0x6989c844 # initialize rs2
blt x10, x3, some_label_for_btype_22276750741 # perform operation 
addi x0, x1, 1
some_label_for_btype_22276750741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x7, 0xff663871 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x842ace47 # initialize rs1
li x31, 0x00000000 # initialize rs2
blt x30, x31, some_label_for_btype_36621945590 # perform operation 
addi x0, x1, 1
some_label_for_btype_36621945590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x00000000 # initialize rs1
li x31, 0x00000000 # initialize rs2
blt x30, x31, some_label_for_btype_36621945591 # perform operation 
addi x0, x1, 1
some_label_for_btype_36621945591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x29, 0x3210bbbb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xab0d7136 # initialize rs1
li x21, 0x00000001 # initialize rs2
blt x16, x21, some_label_for_btype_16972977460 # perform operation 
addi x0, x1, 1
some_label_for_btype_16972977460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x00000001 # initialize rs1
li x21, 0x00000001 # initialize rs2
blt x16, x21, some_label_for_btype_16972977461 # perform operation 
addi x0, x1, 1
some_label_for_btype_16972977461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x5, 0xeb4be885 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xb7786f2b # initialize rs1
li x9, 0x00000002 # initialize rs2
blt x4, x9, some_label_for_btype_38610997080 # perform operation 
addi x0, x1, 1
some_label_for_btype_38610997080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x00000002 # initialize rs1
li x9, 0x00000002 # initialize rs2
blt x4, x9, some_label_for_btype_38610997081 # perform operation 
addi x0, x1, 1
some_label_for_btype_38610997081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x15, 0x6f40ef5b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xee7bb7ea # initialize rs1
li x8, 0x80000000 # initialize rs2
blt x19, x8, some_label_for_btype_35230781520 # perform operation 
addi x0, x1, 1
some_label_for_btype_35230781520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x80000000 # initialize rs1
li x8, 0x80000000 # initialize rs2
blt x19, x8, some_label_for_btype_35230781521 # perform operation 
addi x0, x1, 1
some_label_for_btype_35230781521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x5, 0x67b113fc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xcf8c71ff # initialize rs1
li x15, 0x80000001 # initialize rs2
blt x9, x15, some_label_for_btype_395500850 # perform operation 
addi x0, x1, 1
some_label_for_btype_395500850:
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
blt x9, x15, some_label_for_btype_395500851 # perform operation 
addi x0, x1, 1
some_label_for_btype_395500851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x7, 0x3cef5ed1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x2d58f8f4 # initialize rs1
li x19, 0x7fffffff # initialize rs2
blt x6, x19, some_label_for_btype_29750766670 # perform operation 
addi x0, x1, 1
some_label_for_btype_29750766670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x7fffffff # initialize rs1
li x19, 0x7fffffff # initialize rs2
blt x6, x19, some_label_for_btype_29750766671 # perform operation 
addi x0, x1, 1
some_label_for_btype_29750766671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x23, 0x1a8dfbb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x04b44966 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
blt x4, x27, some_label_for_btype_974538120 # perform operation 
addi x0, x1, 1
some_label_for_btype_974538120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x7ffffffe # initialize rs1
li x27, 0x7ffffffe # initialize rs2
blt x4, x27, some_label_for_btype_974538121 # perform operation 
addi x0, x1, 1
some_label_for_btype_974538121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x23, 0x2965fcfa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7168c46d # initialize rs1
li x5, 0xffffffff # initialize rs2
blt x28, x5, some_label_for_btype_30513683420 # perform operation 
addi x0, x1, 1
some_label_for_btype_30513683420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xffffffff # initialize rs1
li x5, 0xffffffff # initialize rs2
blt x28, x5, some_label_for_btype_30513683421 # perform operation 
addi x0, x1, 1
some_label_for_btype_30513683421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x30, 0xc40f6d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x52e21fae # initialize rs1
li x31, 0xfffffffe # initialize rs2
blt x5, x31, some_label_for_btype_31679542660 # perform operation 
addi x0, x1, 1
some_label_for_btype_31679542660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xfffffffe # initialize rs1
li x31, 0xfffffffe # initialize rs2
blt x5, x31, some_label_for_btype_31679542661 # perform operation 
addi x0, x1, 1
some_label_for_btype_31679542661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x26, 0xd37cc08d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x9980ea86 # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
blt x28, x17, some_label_for_btype_9365960010 # perform operation 
addi x0, x1, 1
some_label_for_btype_9365960010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x5bbc8877 # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
blt x28, x17, some_label_for_btype_9365960011 # perform operation 
addi x0, x1, 1
some_label_for_btype_9365960011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x13, 0xc8821ff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x52ea8feb # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
blt x23, x21, some_label_for_btype_5296393160 # perform operation 
addi x0, x1, 1
some_label_for_btype_5296393160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
blt x23, x21, some_label_for_btype_5296393161 # perform operation 
addi x0, x1, 1
some_label_for_btype_5296393161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x7, 0x387d120b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xd3ac1403 # initialize rs1
li x2, 0x55555555 # initialize rs2
blt x6, x2, some_label_for_btype_14015531940 # perform operation 
addi x0, x1, 1
some_label_for_btype_14015531940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x55555555 # initialize rs1
li x2, 0x55555555 # initialize rs2
blt x6, x2, some_label_for_btype_14015531941 # perform operation 
addi x0, x1, 1
some_label_for_btype_14015531941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x16, 0x4ed51147 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x00000000 # initialize rs1
li x14, 0x00000000 # initialize rs2
blt x23, x14, some_label_for_btype_36513365380 # perform operation 
addi x0, x1, 1
some_label_for_btype_36513365380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000000 # initialize rs1
li x14, 0x00000000 # initialize rs2
blt x23, x14, some_label_for_btype_36513365381 # perform operation 
addi x0, x1, 1
some_label_for_btype_36513365381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x12, 0xf71c149e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000 # initialize rs1
li x25, 0x00000001 # initialize rs2
blt x28, x25, some_label_for_btype_34086987350 # perform operation 
addi x0, x1, 1
some_label_for_btype_34086987350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x00000001 # initialize rs1
li x25, 0x00000001 # initialize rs2
blt x28, x25, some_label_for_btype_34086987351 # perform operation 
addi x0, x1, 1
some_label_for_btype_34086987351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x22, 0xceeb9f6f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x00000000 # initialize rs1
li x26, 0x00000002 # initialize rs2
blt x6, x26, some_label_for_btype_16143111530 # perform operation 
addi x0, x1, 1
some_label_for_btype_16143111530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x00000002 # initialize rs1
li x26, 0x00000002 # initialize rs2
blt x6, x26, some_label_for_btype_16143111531 # perform operation 
addi x0, x1, 1
some_label_for_btype_16143111531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x14, 0xa1171df5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x00000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
blt x6, x11, some_label_for_btype_32766299040 # perform operation 
addi x0, x1, 1
some_label_for_btype_32766299040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x80000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
blt x6, x11, some_label_for_btype_32766299041 # perform operation 
addi x0, x1, 1
some_label_for_btype_32766299041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x15, 0xaf87f12a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x00000000 # initialize rs1
li x6, 0x80000001 # initialize rs2
blt x26, x6, some_label_for_btype_34357495550 # perform operation 
addi x0, x1, 1
some_label_for_btype_34357495550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x80000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
blt x26, x6, some_label_for_btype_34357495551 # perform operation 
addi x0, x1, 1
some_label_for_btype_34357495551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x23, 0xf2a835dc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x00000000 # initialize rs1
li x12, 0x7fffffff # initialize rs2
blt x9, x12, some_label_for_btype_9790354830 # perform operation 
addi x0, x1, 1
some_label_for_btype_9790354830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x7fffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
blt x9, x12, some_label_for_btype_9790354831 # perform operation 
addi x0, x1, 1
some_label_for_btype_9790354831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x31, 0xfb9281e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x00000000 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
blt x26, x8, some_label_for_btype_169901310 # perform operation 
addi x0, x1, 1
some_label_for_btype_169901310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x7ffffffe # initialize rs1
li x8, 0x7ffffffe # initialize rs2
blt x26, x8, some_label_for_btype_169901311 # perform operation 
addi x0, x1, 1
some_label_for_btype_169901311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x14, 0x2f44b323 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000000 # initialize rs1
li x21, 0xffffffff # initialize rs2
blt x2, x21, some_label_for_btype_20580992280 # perform operation 
addi x0, x1, 1
some_label_for_btype_20580992280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
blt x2, x21, some_label_for_btype_20580992281 # perform operation 
addi x0, x1, 1
some_label_for_btype_20580992281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x5, 0x477cfac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000000 # initialize rs1
li x25, 0xfffffffe # initialize rs2
blt x31, x25, some_label_for_btype_34295674740 # perform operation 
addi x0, x1, 1
some_label_for_btype_34295674740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xfffffffe # initialize rs1
li x25, 0xfffffffe # initialize rs2
blt x31, x25, some_label_for_btype_34295674741 # perform operation 
addi x0, x1, 1
some_label_for_btype_34295674741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x1, 0x7b973919 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000000 # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
blt x13, x20, some_label_for_btype_15672157790 # perform operation 
addi x0, x1, 1
some_label_for_btype_15672157790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x5bbc8877 # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
blt x13, x20, some_label_for_btype_15672157791 # perform operation 
addi x0, x1, 1
some_label_for_btype_15672157791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x1, 0x0510e91b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000000 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
blt x15, x9, some_label_for_btype_20824002020 # perform operation 
addi x0, x1, 1
some_label_for_btype_20824002020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
blt x15, x9, some_label_for_btype_20824002021 # perform operation 
addi x0, x1, 1
some_label_for_btype_20824002021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x28, 0x2f6634e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000000 # initialize rs1
li x10, 0x55555555 # initialize rs2
blt x27, x10, some_label_for_btype_24779598610 # perform operation 
addi x0, x1, 1
some_label_for_btype_24779598610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x55555555 # initialize rs1
li x10, 0x55555555 # initialize rs2
blt x27, x10, some_label_for_btype_24779598611 # perform operation 
addi x0, x1, 1
some_label_for_btype_24779598611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x19, 0x442b2098 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000001 # initialize rs1
li x26, 0x00000000 # initialize rs2
blt x13, x26, some_label_for_btype_28993080040 # perform operation 
addi x0, x1, 1
some_label_for_btype_28993080040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000000 # initialize rs1
li x26, 0x00000000 # initialize rs2
blt x13, x26, some_label_for_btype_28993080041 # perform operation 
addi x0, x1, 1
some_label_for_btype_28993080041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x8, 0x89b20933 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000001 # initialize rs1
li x29, 0x00000001 # initialize rs2
blt x12, x29, some_label_for_btype_39176774290 # perform operation 
addi x0, x1, 1
some_label_for_btype_39176774290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000001 # initialize rs1
li x29, 0x00000001 # initialize rs2
blt x12, x29, some_label_for_btype_39176774291 # perform operation 
addi x0, x1, 1
some_label_for_btype_39176774291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x13, 0x1855b27e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000001 # initialize rs1
li x11, 0x00000002 # initialize rs2
blt x18, x11, some_label_for_btype_38936965650 # perform operation 
addi x0, x1, 1
some_label_for_btype_38936965650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x00000002 # initialize rs1
li x11, 0x00000002 # initialize rs2
blt x18, x11, some_label_for_btype_38936965651 # perform operation 
addi x0, x1, 1
some_label_for_btype_38936965651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x27, 0xc5b51f50 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x00000001 # initialize rs1
li x2, 0x80000000 # initialize rs2
blt x5, x2, some_label_for_btype_39687430430 # perform operation 
addi x0, x1, 1
some_label_for_btype_39687430430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x80000000 # initialize rs1
li x2, 0x80000000 # initialize rs2
blt x5, x2, some_label_for_btype_39687430431 # perform operation 
addi x0, x1, 1
some_label_for_btype_39687430431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x22, 0x08ea0e5f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x00000001 # initialize rs1
li x13, 0x80000001 # initialize rs2
blt x8, x13, some_label_for_btype_41088944360 # perform operation 
addi x0, x1, 1
some_label_for_btype_41088944360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x80000001 # initialize rs1
li x13, 0x80000001 # initialize rs2
blt x8, x13, some_label_for_btype_41088944361 # perform operation 
addi x0, x1, 1
some_label_for_btype_41088944361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x24, 0x2a1f8fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x00000001 # initialize rs1
li x15, 0x7fffffff # initialize rs2
blt x9, x15, some_label_for_btype_37847945150 # perform operation 
addi x0, x1, 1
some_label_for_btype_37847945150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x7fffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
blt x9, x15, some_label_for_btype_37847945151 # perform operation 
addi x0, x1, 1
some_label_for_btype_37847945151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x28, 0xfa42835b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x00000001 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
blt x7, x14, some_label_for_btype_10926262890 # perform operation 
addi x0, x1, 1
some_label_for_btype_10926262890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x7ffffffe # initialize rs1
li x14, 0x7ffffffe # initialize rs2
blt x7, x14, some_label_for_btype_10926262891 # perform operation 
addi x0, x1, 1
some_label_for_btype_10926262891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x13, 0xdbf288e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000001 # initialize rs1
li x29, 0xffffffff # initialize rs2
blt x2, x29, some_label_for_btype_40044024190 # perform operation 
addi x0, x1, 1
some_label_for_btype_40044024190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xffffffff # initialize rs1
li x29, 0xffffffff # initialize rs2
blt x2, x29, some_label_for_btype_40044024191 # perform operation 
addi x0, x1, 1
some_label_for_btype_40044024191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x28, 0x39fdbeaf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x00000001 # initialize rs1
li x17, 0xfffffffe # initialize rs2
blt x11, x17, some_label_for_btype_30819863470 # perform operation 
addi x0, x1, 1
some_label_for_btype_30819863470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xfffffffe # initialize rs1
li x17, 0xfffffffe # initialize rs2
blt x11, x17, some_label_for_btype_30819863471 # perform operation 
addi x0, x1, 1
some_label_for_btype_30819863471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x21, 0xcef8fddc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000001 # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
blt x12, x17, some_label_for_btype_21967637660 # perform operation 
addi x0, x1, 1
some_label_for_btype_21967637660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x5bbc8877 # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
blt x12, x17, some_label_for_btype_21967637661 # perform operation 
addi x0, x1, 1
some_label_for_btype_21967637661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x14, 0x7b2074c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x00000001 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
blt x3, x24, some_label_for_btype_28662627930 # perform operation 
addi x0, x1, 1
some_label_for_btype_28662627930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
blt x3, x24, some_label_for_btype_28662627931 # perform operation 
addi x0, x1, 1
some_label_for_btype_28662627931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x10, 0xbee8c725 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000001 # initialize rs1
li x4, 0x55555555 # initialize rs2
blt x27, x4, some_label_for_btype_17478843920 # perform operation 
addi x0, x1, 1
some_label_for_btype_17478843920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x55555555 # initialize rs1
li x4, 0x55555555 # initialize rs2
blt x27, x4, some_label_for_btype_17478843921 # perform operation 
addi x0, x1, 1
some_label_for_btype_17478843921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x17, 0xed169673 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000002 # initialize rs1
li x7, 0x00000000 # initialize rs2
blt x15, x7, some_label_for_btype_15347162580 # perform operation 
addi x0, x1, 1
some_label_for_btype_15347162580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x00000000 # initialize rs1
li x7, 0x00000000 # initialize rs2
blt x15, x7, some_label_for_btype_15347162581 # perform operation 
addi x0, x1, 1
some_label_for_btype_15347162581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x6, 0xbdfda2b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000002 # initialize rs1
li x21, 0x00000001 # initialize rs2
blt x12, x21, some_label_for_btype_25746648830 # perform operation 
addi x0, x1, 1
some_label_for_btype_25746648830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000001 # initialize rs1
li x21, 0x00000001 # initialize rs2
blt x12, x21, some_label_for_btype_25746648831 # perform operation 
addi x0, x1, 1
some_label_for_btype_25746648831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x20, 0xa6c6bac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x00000002 # initialize rs1
li x13, 0x00000002 # initialize rs2
blt x21, x13, some_label_for_btype_13529022770 # perform operation 
addi x0, x1, 1
some_label_for_btype_13529022770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000002 # initialize rs1
li x13, 0x00000002 # initialize rs2
blt x21, x13, some_label_for_btype_13529022771 # perform operation 
addi x0, x1, 1
some_label_for_btype_13529022771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x18, 0x7b795674 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x00000002 # initialize rs1
li x8, 0x80000000 # initialize rs2
blt x16, x8, some_label_for_btype_9975143700 # perform operation 
addi x0, x1, 1
some_label_for_btype_9975143700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x80000000 # initialize rs1
li x8, 0x80000000 # initialize rs2
blt x16, x8, some_label_for_btype_9975143701 # perform operation 
addi x0, x1, 1
some_label_for_btype_9975143701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x28, 0x65705b9a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x00000002 # initialize rs1
li x16, 0x80000001 # initialize rs2
blt x23, x16, some_label_for_btype_10203424340 # perform operation 
addi x0, x1, 1
some_label_for_btype_10203424340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x80000001 # initialize rs1
li x16, 0x80000001 # initialize rs2
blt x23, x16, some_label_for_btype_10203424341 # perform operation 
addi x0, x1, 1
some_label_for_btype_10203424341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x7, 0x190d0f0d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x00000002 # initialize rs1
li x29, 0x7fffffff # initialize rs2
blt x1, x29, some_label_for_btype_7607583390 # perform operation 
addi x0, x1, 1
some_label_for_btype_7607583390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x7fffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
blt x1, x29, some_label_for_btype_7607583391 # perform operation 
addi x0, x1, 1
some_label_for_btype_7607583391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x25, 0x510878a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000002 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
blt x12, x29, some_label_for_btype_11403607370 # perform operation 
addi x0, x1, 1
some_label_for_btype_11403607370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7ffffffe # initialize rs1
li x29, 0x7ffffffe # initialize rs2
blt x12, x29, some_label_for_btype_11403607371 # perform operation 
addi x0, x1, 1
some_label_for_btype_11403607371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x4, 0x593e331b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x00000002 # initialize rs1
li x10, 0xffffffff # initialize rs2
blt x11, x10, some_label_for_btype_39753805790 # perform operation 
addi x0, x1, 1
some_label_for_btype_39753805790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xffffffff # initialize rs1
li x10, 0xffffffff # initialize rs2
blt x11, x10, some_label_for_btype_39753805791 # perform operation 
addi x0, x1, 1
some_label_for_btype_39753805791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x31, 0x08394b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x00000002 # initialize rs1
li x30, 0xfffffffe # initialize rs2
blt x3, x30, some_label_for_btype_37067949050 # perform operation 
addi x0, x1, 1
some_label_for_btype_37067949050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xfffffffe # initialize rs1
li x30, 0xfffffffe # initialize rs2
blt x3, x30, some_label_for_btype_37067949051 # perform operation 
addi x0, x1, 1
some_label_for_btype_37067949051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x27, 0xf84ba842 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x00000002 # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
blt x5, x26, some_label_for_btype_42914854980 # perform operation 
addi x0, x1, 1
some_label_for_btype_42914854980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x5bbc8877 # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
blt x5, x26, some_label_for_btype_42914854981 # perform operation 
addi x0, x1, 1
some_label_for_btype_42914854981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x22, 0x540ca345 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x00000002 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
blt x21, x31, some_label_for_btype_20132132120 # perform operation 
addi x0, x1, 1
some_label_for_btype_20132132120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xaaaaaaaa # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
blt x21, x31, some_label_for_btype_20132132121 # perform operation 
addi x0, x1, 1
some_label_for_btype_20132132121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x12, 0x6c2257bd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000002 # initialize rs1
li x22, 0x55555555 # initialize rs2
blt x13, x22, some_label_for_btype_36285674700 # perform operation 
addi x0, x1, 1
some_label_for_btype_36285674700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x55555555 # initialize rs1
li x22, 0x55555555 # initialize rs2
blt x13, x22, some_label_for_btype_36285674701 # perform operation 
addi x0, x1, 1
some_label_for_btype_36285674701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x21, 0xdd79673c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x80000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
blt x31, x20, some_label_for_btype_628749190 # perform operation 
addi x0, x1, 1
some_label_for_btype_628749190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x00000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
blt x31, x20, some_label_for_btype_628749191 # perform operation 
addi x0, x1, 1
some_label_for_btype_628749191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x8, 0xf1fd751e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x80000000 # initialize rs1
li x20, 0x00000001 # initialize rs2
blt x23, x20, some_label_for_btype_16264361700 # perform operation 
addi x0, x1, 1
some_label_for_btype_16264361700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
blt x23, x20, some_label_for_btype_16264361701 # perform operation 
addi x0, x1, 1
some_label_for_btype_16264361701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x9, 0xc0fe2630 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x80000000 # initialize rs1
li x22, 0x00000002 # initialize rs2
blt x27, x22, some_label_for_btype_23152109310 # perform operation 
addi x0, x1, 1
some_label_for_btype_23152109310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x00000002 # initialize rs1
li x22, 0x00000002 # initialize rs2
blt x27, x22, some_label_for_btype_23152109311 # perform operation 
addi x0, x1, 1
some_label_for_btype_23152109311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x31, 0x3f8f9e08 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x80000000 # initialize rs1
li x10, 0x80000000 # initialize rs2
blt x5, x10, some_label_for_btype_19774482050 # perform operation 
addi x0, x1, 1
some_label_for_btype_19774482050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x80000000 # initialize rs1
li x10, 0x80000000 # initialize rs2
blt x5, x10, some_label_for_btype_19774482051 # perform operation 
addi x0, x1, 1
some_label_for_btype_19774482051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x12, 0x4cadbf57 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x80000000 # initialize rs1
li x24, 0x80000001 # initialize rs2
blt x29, x24, some_label_for_btype_41647197950 # perform operation 
addi x0, x1, 1
some_label_for_btype_41647197950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x80000001 # initialize rs1
li x24, 0x80000001 # initialize rs2
blt x29, x24, some_label_for_btype_41647197951 # perform operation 
addi x0, x1, 1
some_label_for_btype_41647197951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x14, 0x566eb008 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x80000000 # initialize rs1
li x10, 0x7fffffff # initialize rs2
blt x18, x10, some_label_for_btype_32963318780 # perform operation 
addi x0, x1, 1
some_label_for_btype_32963318780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
blt x18, x10, some_label_for_btype_32963318781 # perform operation 
addi x0, x1, 1
some_label_for_btype_32963318781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x9, 0x2570c5bb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x80000000 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
blt x24, x1, some_label_for_btype_32456893410 # perform operation 
addi x0, x1, 1
some_label_for_btype_32456893410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x7ffffffe # initialize rs1
li x1, 0x7ffffffe # initialize rs2
blt x24, x1, some_label_for_btype_32456893411 # perform operation 
addi x0, x1, 1
some_label_for_btype_32456893411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x27, 0x60532907 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x80000000 # initialize rs1
li x5, 0xffffffff # initialize rs2
blt x31, x5, some_label_for_btype_27326305660 # perform operation 
addi x0, x1, 1
some_label_for_btype_27326305660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xffffffff # initialize rs1
li x5, 0xffffffff # initialize rs2
blt x31, x5, some_label_for_btype_27326305661 # perform operation 
addi x0, x1, 1
some_label_for_btype_27326305661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x11, 0x7e75dbc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x80000000 # initialize rs1
li x10, 0xfffffffe # initialize rs2
blt x14, x10, some_label_for_btype_38640528120 # perform operation 
addi x0, x1, 1
some_label_for_btype_38640528120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xfffffffe # initialize rs1
li x10, 0xfffffffe # initialize rs2
blt x14, x10, some_label_for_btype_38640528121 # perform operation 
addi x0, x1, 1
some_label_for_btype_38640528121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x20, 0xb3fddc03 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x80000000 # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
blt x26, x29, some_label_for_btype_7682931280 # perform operation 
addi x0, x1, 1
some_label_for_btype_7682931280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x5bbc8877 # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
blt x26, x29, some_label_for_btype_7682931281 # perform operation 
addi x0, x1, 1
some_label_for_btype_7682931281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x5, 0xebf168eb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x80000000 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
blt x3, x20, some_label_for_btype_38931270360 # perform operation 
addi x0, x1, 1
some_label_for_btype_38931270360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
blt x3, x20, some_label_for_btype_38931270361 # perform operation 
addi x0, x1, 1
some_label_for_btype_38931270361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x10, 0x04c1f498 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x80000000 # initialize rs1
li x18, 0x55555555 # initialize rs2
blt x13, x18, some_label_for_btype_22250296890 # perform operation 
addi x0, x1, 1
some_label_for_btype_22250296890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x55555555 # initialize rs1
li x18, 0x55555555 # initialize rs2
blt x13, x18, some_label_for_btype_22250296891 # perform operation 
addi x0, x1, 1
some_label_for_btype_22250296891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x26, 0x65ad475e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x80000001 # initialize rs1
li x2, 0x00000000 # initialize rs2
blt x29, x2, some_label_for_btype_39436476460 # perform operation 
addi x0, x1, 1
some_label_for_btype_39436476460:
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
blt x29, x2, some_label_for_btype_39436476461 # perform operation 
addi x0, x1, 1
some_label_for_btype_39436476461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x27, 0x9fa2593e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x80000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
blt x7, x18, some_label_for_btype_27899647390 # perform operation 
addi x0, x1, 1
some_label_for_btype_27899647390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
blt x7, x18, some_label_for_btype_27899647391 # perform operation 
addi x0, x1, 1
some_label_for_btype_27899647391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x29, 0xe8457506 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x80000001 # initialize rs1
li x8, 0x00000002 # initialize rs2
blt x17, x8, some_label_for_btype_36630090200 # perform operation 
addi x0, x1, 1
some_label_for_btype_36630090200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000002 # initialize rs1
li x8, 0x00000002 # initialize rs2
blt x17, x8, some_label_for_btype_36630090201 # perform operation 
addi x0, x1, 1
some_label_for_btype_36630090201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x29, 0xb5048784 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x80000001 # initialize rs1
li x10, 0x80000000 # initialize rs2
blt x31, x10, some_label_for_btype_6674024690 # perform operation 
addi x0, x1, 1
some_label_for_btype_6674024690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x80000000 # initialize rs1
li x10, 0x80000000 # initialize rs2
blt x31, x10, some_label_for_btype_6674024691 # perform operation 
addi x0, x1, 1
some_label_for_btype_6674024691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x18, 0x143ab284 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x80000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
blt x23, x5, some_label_for_btype_18945001370 # perform operation 
addi x0, x1, 1
some_label_for_btype_18945001370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x80000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
blt x23, x5, some_label_for_btype_18945001371 # perform operation 
addi x0, x1, 1
some_label_for_btype_18945001371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x17, 0x3472e7ac # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x80000001 # initialize rs1
li x23, 0x7fffffff # initialize rs2
blt x24, x23, some_label_for_btype_2116194640 # perform operation 
addi x0, x1, 1
some_label_for_btype_2116194640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x7fffffff # initialize rs1
li x23, 0x7fffffff # initialize rs2
blt x24, x23, some_label_for_btype_2116194641 # perform operation 
addi x0, x1, 1
some_label_for_btype_2116194641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x31, 0x087c48d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x80000001 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
blt x9, x27, some_label_for_btype_6154054310 # perform operation 
addi x0, x1, 1
some_label_for_btype_6154054310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x7ffffffe # initialize rs1
li x27, 0x7ffffffe # initialize rs2
blt x9, x27, some_label_for_btype_6154054311 # perform operation 
addi x0, x1, 1
some_label_for_btype_6154054311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x30, 0xbd8f6f0b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x80000001 # initialize rs1
li x13, 0xffffffff # initialize rs2
blt x1, x13, some_label_for_btype_8346610420 # perform operation 
addi x0, x1, 1
some_label_for_btype_8346610420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xffffffff # initialize rs1
li x13, 0xffffffff # initialize rs2
blt x1, x13, some_label_for_btype_8346610421 # perform operation 
addi x0, x1, 1
some_label_for_btype_8346610421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x15, 0xc8ec4f27 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x80000001 # initialize rs1
li x12, 0xfffffffe # initialize rs2
blt x5, x12, some_label_for_btype_32188293430 # perform operation 
addi x0, x1, 1
some_label_for_btype_32188293430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xfffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
blt x5, x12, some_label_for_btype_32188293431 # perform operation 
addi x0, x1, 1
some_label_for_btype_32188293431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x11, 0x844649f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x80000001 # initialize rs1
li x4, 0x5bbc8877 # initialize rs2
blt x3, x4, some_label_for_btype_9524438220 # perform operation 
addi x0, x1, 1
some_label_for_btype_9524438220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x5bbc8877 # initialize rs1
li x4, 0x5bbc8877 # initialize rs2
blt x3, x4, some_label_for_btype_9524438221 # perform operation 
addi x0, x1, 1
some_label_for_btype_9524438221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x14, 0xa6838040 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x80000001 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
blt x19, x15, some_label_for_btype_37776495770 # perform operation 
addi x0, x1, 1
some_label_for_btype_37776495770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
blt x19, x15, some_label_for_btype_37776495771 # perform operation 
addi x0, x1, 1
some_label_for_btype_37776495771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x31, 0x1b23a661 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x80000001 # initialize rs1
li x19, 0x55555555 # initialize rs2
blt x5, x19, some_label_for_btype_19861258270 # perform operation 
addi x0, x1, 1
some_label_for_btype_19861258270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x55555555 # initialize rs1
li x19, 0x55555555 # initialize rs2
blt x5, x19, some_label_for_btype_19861258271 # perform operation 
addi x0, x1, 1
some_label_for_btype_19861258271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x9, 0x16707f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x7fffffff # initialize rs1
li x25, 0x00000000 # initialize rs2
blt x4, x25, some_label_for_btype_1449498150 # perform operation 
addi x0, x1, 1
some_label_for_btype_1449498150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x00000000 # initialize rs1
li x25, 0x00000000 # initialize rs2
blt x4, x25, some_label_for_btype_1449498151 # perform operation 
addi x0, x1, 1
some_label_for_btype_1449498151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x8, 0x68628227 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x7fffffff # initialize rs1
li x28, 0x00000001 # initialize rs2
blt x21, x28, some_label_for_btype_516338970 # perform operation 
addi x0, x1, 1
some_label_for_btype_516338970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000001 # initialize rs1
li x28, 0x00000001 # initialize rs2
blt x21, x28, some_label_for_btype_516338971 # perform operation 
addi x0, x1, 1
some_label_for_btype_516338971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x29, 0x8cc45580 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x7fffffff # initialize rs1
li x5, 0x00000002 # initialize rs2
blt x14, x5, some_label_for_btype_42864001870 # perform operation 
addi x0, x1, 1
some_label_for_btype_42864001870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000002 # initialize rs1
li x5, 0x00000002 # initialize rs2
blt x14, x5, some_label_for_btype_42864001871 # perform operation 
addi x0, x1, 1
some_label_for_btype_42864001871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x6, 0xca072eb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x7fffffff # initialize rs1
li x5, 0x80000000 # initialize rs2
blt x16, x5, some_label_for_btype_13909561240 # perform operation 
addi x0, x1, 1
some_label_for_btype_13909561240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x80000000 # initialize rs1
li x5, 0x80000000 # initialize rs2
blt x16, x5, some_label_for_btype_13909561241 # perform operation 
addi x0, x1, 1
some_label_for_btype_13909561241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x8, 0x4337579b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x7fffffff # initialize rs1
li x21, 0x80000001 # initialize rs2
blt x5, x21, some_label_for_btype_34386385040 # perform operation 
addi x0, x1, 1
some_label_for_btype_34386385040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x80000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
blt x5, x21, some_label_for_btype_34386385041 # perform operation 
addi x0, x1, 1
some_label_for_btype_34386385041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x8, 0xd3b28533 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x7fffffff # initialize rs1
li x31, 0x7fffffff # initialize rs2
blt x7, x31, some_label_for_btype_26605741780 # perform operation 
addi x0, x1, 1
some_label_for_btype_26605741780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x7fffffff # initialize rs1
li x31, 0x7fffffff # initialize rs2
blt x7, x31, some_label_for_btype_26605741781 # perform operation 
addi x0, x1, 1
some_label_for_btype_26605741781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x4, 0xcd5cf36c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x7fffffff # initialize rs1
li x18, 0x7ffffffe # initialize rs2
blt x26, x18, some_label_for_btype_22092662050 # perform operation 
addi x0, x1, 1
some_label_for_btype_22092662050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x7ffffffe # initialize rs1
li x18, 0x7ffffffe # initialize rs2
blt x26, x18, some_label_for_btype_22092662051 # perform operation 
addi x0, x1, 1
some_label_for_btype_22092662051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x22, 0x02aa3657 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x7fffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
blt x20, x31, some_label_for_btype_6660903060 # perform operation 
addi x0, x1, 1
some_label_for_btype_6660903060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xffffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
blt x20, x31, some_label_for_btype_6660903061 # perform operation 
addi x0, x1, 1
some_label_for_btype_6660903061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x23, 0xf793b0fd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x7fffffff # initialize rs1
li x1, 0xfffffffe # initialize rs2
blt x19, x1, some_label_for_btype_33485917780 # perform operation 
addi x0, x1, 1
some_label_for_btype_33485917780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xfffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
blt x19, x1, some_label_for_btype_33485917781 # perform operation 
addi x0, x1, 1
some_label_for_btype_33485917781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x11, 0x5276b0a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x7fffffff # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
blt x9, x26, some_label_for_btype_20335463200 # perform operation 
addi x0, x1, 1
some_label_for_btype_20335463200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x5bbc8877 # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
blt x9, x26, some_label_for_btype_20335463201 # perform operation 
addi x0, x1, 1
some_label_for_btype_20335463201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x21, 0x3391380c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7fffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
blt x11, x7, some_label_for_btype_11974516990 # perform operation 
addi x0, x1, 1
some_label_for_btype_11974516990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
blt x11, x7, some_label_for_btype_11974516991 # perform operation 
addi x0, x1, 1
some_label_for_btype_11974516991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x14, 0x57667877 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7fffffff # initialize rs1
li x25, 0x55555555 # initialize rs2
blt x17, x25, some_label_for_btype_4835933330 # perform operation 
addi x0, x1, 1
some_label_for_btype_4835933330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x55555555 # initialize rs1
li x25, 0x55555555 # initialize rs2
blt x17, x25, some_label_for_btype_4835933331 # perform operation 
addi x0, x1, 1
some_label_for_btype_4835933331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x6, 0xaa9bff81 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x7ffffffe # initialize rs1
li x26, 0x00000000 # initialize rs2
blt x16, x26, some_label_for_btype_18255888950 # perform operation 
addi x0, x1, 1
some_label_for_btype_18255888950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x00000000 # initialize rs1
li x26, 0x00000000 # initialize rs2
blt x16, x26, some_label_for_btype_18255888951 # perform operation 
addi x0, x1, 1
some_label_for_btype_18255888951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x27, 0x6199d7ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x7ffffffe # initialize rs1
li x3, 0x00000001 # initialize rs2
blt x25, x3, some_label_for_btype_34046282020 # perform operation 
addi x0, x1, 1
some_label_for_btype_34046282020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x00000001 # initialize rs1
li x3, 0x00000001 # initialize rs2
blt x25, x3, some_label_for_btype_34046282021 # perform operation 
addi x0, x1, 1
some_label_for_btype_34046282021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x14, 0x4f6a464e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7ffffffe # initialize rs1
li x2, 0x00000002 # initialize rs2
blt x11, x2, some_label_for_btype_28715957210 # perform operation 
addi x0, x1, 1
some_label_for_btype_28715957210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
blt x11, x2, some_label_for_btype_28715957211 # perform operation 
addi x0, x1, 1
some_label_for_btype_28715957211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x25, 0xc81155af # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x7ffffffe # initialize rs1
li x26, 0x80000000 # initialize rs2
blt x22, x26, some_label_for_btype_42135114430 # perform operation 
addi x0, x1, 1
some_label_for_btype_42135114430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x80000000 # initialize rs1
li x26, 0x80000000 # initialize rs2
blt x22, x26, some_label_for_btype_42135114431 # perform operation 
addi x0, x1, 1
some_label_for_btype_42135114431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x6, 0x826c9f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x7ffffffe # initialize rs1
li x7, 0x80000001 # initialize rs2
blt x1, x7, some_label_for_btype_4697885170 # perform operation 
addi x0, x1, 1
some_label_for_btype_4697885170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x80000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
blt x1, x7, some_label_for_btype_4697885171 # perform operation 
addi x0, x1, 1
some_label_for_btype_4697885171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x19, 0xb53719ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x7ffffffe # initialize rs1
li x10, 0x7fffffff # initialize rs2
blt x23, x10, some_label_for_btype_26903343560 # perform operation 
addi x0, x1, 1
some_label_for_btype_26903343560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
blt x23, x10, some_label_for_btype_26903343561 # perform operation 
addi x0, x1, 1
some_label_for_btype_26903343561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x30, 0xd805ad63 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x7ffffffe # initialize rs1
li x8, 0x7ffffffe # initialize rs2
blt x27, x8, some_label_for_btype_30947023620 # perform operation 
addi x0, x1, 1
some_label_for_btype_30947023620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x7ffffffe # initialize rs1
li x8, 0x7ffffffe # initialize rs2
blt x27, x8, some_label_for_btype_30947023621 # perform operation 
addi x0, x1, 1
some_label_for_btype_30947023621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x6, 0xe9b7328c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x7ffffffe # initialize rs1
li x21, 0xffffffff # initialize rs2
blt x23, x21, some_label_for_btype_27030481710 # perform operation 
addi x0, x1, 1
some_label_for_btype_27030481710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
blt x23, x21, some_label_for_btype_27030481711 # perform operation 
addi x0, x1, 1
some_label_for_btype_27030481711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x3, 0xc38a3437 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7ffffffe # initialize rs1
li x7, 0xfffffffe # initialize rs2
blt x24, x7, some_label_for_btype_39750266050 # perform operation 
addi x0, x1, 1
some_label_for_btype_39750266050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xfffffffe # initialize rs1
li x7, 0xfffffffe # initialize rs2
blt x24, x7, some_label_for_btype_39750266051 # perform operation 
addi x0, x1, 1
some_label_for_btype_39750266051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x8, 0x15205cbf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x7ffffffe # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
blt x9, x18, some_label_for_btype_5466356000 # perform operation 
addi x0, x1, 1
some_label_for_btype_5466356000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x5bbc8877 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
blt x9, x18, some_label_for_btype_5466356001 # perform operation 
addi x0, x1, 1
some_label_for_btype_5466356001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x23, 0xf7a6e12c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x7ffffffe # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
blt x13, x12, some_label_for_btype_34338034460 # perform operation 
addi x0, x1, 1
some_label_for_btype_34338034460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
blt x13, x12, some_label_for_btype_34338034461 # perform operation 
addi x0, x1, 1
some_label_for_btype_34338034461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x7, 0xa601714d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7ffffffe # initialize rs1
li x26, 0x55555555 # initialize rs2
blt x17, x26, some_label_for_btype_2289706930 # perform operation 
addi x0, x1, 1
some_label_for_btype_2289706930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x55555555 # initialize rs1
li x26, 0x55555555 # initialize rs2
blt x17, x26, some_label_for_btype_2289706931 # perform operation 
addi x0, x1, 1
some_label_for_btype_2289706931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x27, 0x47c9d90a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xffffffff # initialize rs1
li x4, 0x00000000 # initialize rs2
blt x25, x4, some_label_for_btype_27940791830 # perform operation 
addi x0, x1, 1
some_label_for_btype_27940791830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x00000000 # initialize rs1
li x4, 0x00000000 # initialize rs2
blt x25, x4, some_label_for_btype_27940791831 # perform operation 
addi x0, x1, 1
some_label_for_btype_27940791831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x14, 0x7fa65c67 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xffffffff # initialize rs1
li x11, 0x00000001 # initialize rs2
blt x24, x11, some_label_for_btype_37775925340 # perform operation 
addi x0, x1, 1
some_label_for_btype_37775925340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x00000001 # initialize rs1
li x11, 0x00000001 # initialize rs2
blt x24, x11, some_label_for_btype_37775925341 # perform operation 
addi x0, x1, 1
some_label_for_btype_37775925341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x16, 0x82545b5d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xffffffff # initialize rs1
li x17, 0x00000002 # initialize rs2
blt x5, x17, some_label_for_btype_39088315420 # perform operation 
addi x0, x1, 1
some_label_for_btype_39088315420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x00000002 # initialize rs1
li x17, 0x00000002 # initialize rs2
blt x5, x17, some_label_for_btype_39088315421 # perform operation 
addi x0, x1, 1
some_label_for_btype_39088315421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x10, 0x604cdd0e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xffffffff # initialize rs1
li x20, 0x80000000 # initialize rs2
blt x11, x20, some_label_for_btype_6784735830 # perform operation 
addi x0, x1, 1
some_label_for_btype_6784735830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x80000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
blt x11, x20, some_label_for_btype_6784735831 # perform operation 
addi x0, x1, 1
some_label_for_btype_6784735831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x7, 0xd2b0e249 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xffffffff # initialize rs1
li x20, 0x80000001 # initialize rs2
blt x8, x20, some_label_for_btype_34637131000 # perform operation 
addi x0, x1, 1
some_label_for_btype_34637131000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x80000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
blt x8, x20, some_label_for_btype_34637131001 # perform operation 
addi x0, x1, 1
some_label_for_btype_34637131001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x20, 0x70fa9c5b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xffffffff # initialize rs1
li x7, 0x7fffffff # initialize rs2
blt x26, x7, some_label_for_btype_17677103830 # perform operation 
addi x0, x1, 1
some_label_for_btype_17677103830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x7fffffff # initialize rs1
li x7, 0x7fffffff # initialize rs2
blt x26, x7, some_label_for_btype_17677103831 # perform operation 
addi x0, x1, 1
some_label_for_btype_17677103831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x6, 0xb72624d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xffffffff # initialize rs1
li x14, 0x7ffffffe # initialize rs2
blt x30, x14, some_label_for_btype_8618358000 # perform operation 
addi x0, x1, 1
some_label_for_btype_8618358000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7ffffffe # initialize rs1
li x14, 0x7ffffffe # initialize rs2
blt x30, x14, some_label_for_btype_8618358001 # perform operation 
addi x0, x1, 1
some_label_for_btype_8618358001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x1, 0x632242de # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xffffffff # initialize rs1
li x6, 0xffffffff # initialize rs2
blt x22, x6, some_label_for_btype_35019087600 # perform operation 
addi x0, x1, 1
some_label_for_btype_35019087600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xffffffff # initialize rs1
li x6, 0xffffffff # initialize rs2
blt x22, x6, some_label_for_btype_35019087601 # perform operation 
addi x0, x1, 1
some_label_for_btype_35019087601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x12, 0x0afa541a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xffffffff # initialize rs1
li x21, 0xfffffffe # initialize rs2
blt x3, x21, some_label_for_btype_23171397000 # perform operation 
addi x0, x1, 1
some_label_for_btype_23171397000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xfffffffe # initialize rs1
li x21, 0xfffffffe # initialize rs2
blt x3, x21, some_label_for_btype_23171397001 # perform operation 
addi x0, x1, 1
some_label_for_btype_23171397001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x17, 0xcfd3bfcf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xffffffff # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
blt x5, x15, some_label_for_btype_16922658960 # perform operation 
addi x0, x1, 1
some_label_for_btype_16922658960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x5bbc8877 # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
blt x5, x15, some_label_for_btype_16922658961 # perform operation 
addi x0, x1, 1
some_label_for_btype_16922658961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x26, 0xf60941cf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xffffffff # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
blt x10, x2, some_label_for_btype_42138667550 # perform operation 
addi x0, x1, 1
some_label_for_btype_42138667550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
blt x10, x2, some_label_for_btype_42138667551 # perform operation 
addi x0, x1, 1
some_label_for_btype_42138667551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x26, 0x8d1d86b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xffffffff # initialize rs1
li x21, 0x55555555 # initialize rs2
blt x7, x21, some_label_for_btype_1564928170 # perform operation 
addi x0, x1, 1
some_label_for_btype_1564928170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x55555555 # initialize rs1
li x21, 0x55555555 # initialize rs2
blt x7, x21, some_label_for_btype_1564928171 # perform operation 
addi x0, x1, 1
some_label_for_btype_1564928171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x6, 0x47988cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xfffffffe # initialize rs1
li x8, 0x00000000 # initialize rs2
blt x10, x8, some_label_for_btype_12419779640 # perform operation 
addi x0, x1, 1
some_label_for_btype_12419779640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x00000000 # initialize rs1
li x8, 0x00000000 # initialize rs2
blt x10, x8, some_label_for_btype_12419779641 # perform operation 
addi x0, x1, 1
some_label_for_btype_12419779641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x5, 0xb192890c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xfffffffe # initialize rs1
li x2, 0x00000001 # initialize rs2
blt x27, x2, some_label_for_btype_18993555430 # perform operation 
addi x0, x1, 1
some_label_for_btype_18993555430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x00000001 # initialize rs1
li x2, 0x00000001 # initialize rs2
blt x27, x2, some_label_for_btype_18993555431 # perform operation 
addi x0, x1, 1
some_label_for_btype_18993555431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x13, 0x535ebbb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xfffffffe # initialize rs1
li x22, 0x00000002 # initialize rs2
blt x31, x22, some_label_for_btype_27787259800 # perform operation 
addi x0, x1, 1
some_label_for_btype_27787259800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x00000002 # initialize rs1
li x22, 0x00000002 # initialize rs2
blt x31, x22, some_label_for_btype_27787259801 # perform operation 
addi x0, x1, 1
some_label_for_btype_27787259801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x20, 0x288fbec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xfffffffe # initialize rs1
li x18, 0x80000000 # initialize rs2
blt x24, x18, some_label_for_btype_15662900140 # perform operation 
addi x0, x1, 1
some_label_for_btype_15662900140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x80000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
blt x24, x18, some_label_for_btype_15662900141 # perform operation 
addi x0, x1, 1
some_label_for_btype_15662900141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x23, 0xbcf720a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xfffffffe # initialize rs1
li x8, 0x80000001 # initialize rs2
blt x17, x8, some_label_for_btype_4147462240 # perform operation 
addi x0, x1, 1
some_label_for_btype_4147462240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x80000001 # initialize rs1
li x8, 0x80000001 # initialize rs2
blt x17, x8, some_label_for_btype_4147462241 # perform operation 
addi x0, x1, 1
some_label_for_btype_4147462241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x10, 0xcfd50a66 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xfffffffe # initialize rs1
li x6, 0x7fffffff # initialize rs2
blt x8, x6, some_label_for_btype_40261636710 # perform operation 
addi x0, x1, 1
some_label_for_btype_40261636710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x7fffffff # initialize rs1
li x6, 0x7fffffff # initialize rs2
blt x8, x6, some_label_for_btype_40261636711 # perform operation 
addi x0, x1, 1
some_label_for_btype_40261636711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x11, 0x490cb5c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xfffffffe # initialize rs1
li x18, 0x7ffffffe # initialize rs2
blt x28, x18, some_label_for_btype_26241694540 # perform operation 
addi x0, x1, 1
some_label_for_btype_26241694540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7ffffffe # initialize rs1
li x18, 0x7ffffffe # initialize rs2
blt x28, x18, some_label_for_btype_26241694541 # perform operation 
addi x0, x1, 1
some_label_for_btype_26241694541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x7, 0x99d6d1ea # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xfffffffe # initialize rs1
li x12, 0xffffffff # initialize rs2
blt x13, x12, some_label_for_btype_36000950880 # perform operation 
addi x0, x1, 1
some_label_for_btype_36000950880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xffffffff # initialize rs1
li x12, 0xffffffff # initialize rs2
blt x13, x12, some_label_for_btype_36000950881 # perform operation 
addi x0, x1, 1
some_label_for_btype_36000950881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x10, 0xbd35f344 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xfffffffe # initialize rs1
li x5, 0xfffffffe # initialize rs2
blt x4, x5, some_label_for_btype_14707646380 # perform operation 
addi x0, x1, 1
some_label_for_btype_14707646380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xfffffffe # initialize rs1
li x5, 0xfffffffe # initialize rs2
blt x4, x5, some_label_for_btype_14707646381 # perform operation 
addi x0, x1, 1
some_label_for_btype_14707646381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x2, 0x725fc037 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xfffffffe # initialize rs1
li x12, 0x5bbc8877 # initialize rs2
blt x19, x12, some_label_for_btype_1631563360 # perform operation 
addi x0, x1, 1
some_label_for_btype_1631563360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x5bbc8877 # initialize rs1
li x12, 0x5bbc8877 # initialize rs2
blt x19, x12, some_label_for_btype_1631563361 # perform operation 
addi x0, x1, 1
some_label_for_btype_1631563361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x10, 0xdccbf1dc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xfffffffe # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
blt x30, x21, some_label_for_btype_8059396370 # perform operation 
addi x0, x1, 1
some_label_for_btype_8059396370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
blt x30, x21, some_label_for_btype_8059396371 # perform operation 
addi x0, x1, 1
some_label_for_btype_8059396371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x11, 0x0a78ccf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xfffffffe # initialize rs1
li x13, 0x55555555 # initialize rs2
blt x15, x13, some_label_for_btype_31427298140 # perform operation 
addi x0, x1, 1
some_label_for_btype_31427298140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x55555555 # initialize rs1
li x13, 0x55555555 # initialize rs2
blt x15, x13, some_label_for_btype_31427298141 # perform operation 
addi x0, x1, 1
some_label_for_btype_31427298141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x8, 0xbeb2d716 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5bbc8877 # initialize rs1
li x20, 0x00000000 # initialize rs2
blt x5, x20, some_label_for_btype_20120575580 # perform operation 
addi x0, x1, 1
some_label_for_btype_20120575580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x00000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
blt x5, x20, some_label_for_btype_20120575581 # perform operation 
addi x0, x1, 1
some_label_for_btype_20120575581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x12, 0x4a59e35f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x5bbc8877 # initialize rs1
li x8, 0x00000001 # initialize rs2
blt x2, x8, some_label_for_btype_4627690910 # perform operation 
addi x0, x1, 1
some_label_for_btype_4627690910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
blt x2, x8, some_label_for_btype_4627690911 # perform operation 
addi x0, x1, 1
some_label_for_btype_4627690911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x8, 0x11d968cf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x5bbc8877 # initialize rs1
li x22, 0x00000002 # initialize rs2
blt x29, x22, some_label_for_btype_9663978620 # perform operation 
addi x0, x1, 1
some_label_for_btype_9663978620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x00000002 # initialize rs1
li x22, 0x00000002 # initialize rs2
blt x29, x22, some_label_for_btype_9663978621 # perform operation 
addi x0, x1, 1
some_label_for_btype_9663978621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x26, 0x3233b968 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x5bbc8877 # initialize rs1
li x3, 0x80000000 # initialize rs2
blt x18, x3, some_label_for_btype_29476852700 # perform operation 
addi x0, x1, 1
some_label_for_btype_29476852700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x80000000 # initialize rs1
li x3, 0x80000000 # initialize rs2
blt x18, x3, some_label_for_btype_29476852701 # perform operation 
addi x0, x1, 1
some_label_for_btype_29476852701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x10, 0x4dfa4e72 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x5bbc8877 # initialize rs1
li x13, 0x80000001 # initialize rs2
blt x12, x13, some_label_for_btype_8774015530 # perform operation 
addi x0, x1, 1
some_label_for_btype_8774015530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x80000001 # initialize rs1
li x13, 0x80000001 # initialize rs2
blt x12, x13, some_label_for_btype_8774015531 # perform operation 
addi x0, x1, 1
some_label_for_btype_8774015531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x4, 0x73d8de38 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x5bbc8877 # initialize rs1
li x15, 0x7fffffff # initialize rs2
blt x7, x15, some_label_for_btype_27629690050 # perform operation 
addi x0, x1, 1
some_label_for_btype_27629690050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x7fffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
blt x7, x15, some_label_for_btype_27629690051 # perform operation 
addi x0, x1, 1
some_label_for_btype_27629690051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x19, 0x4c2bee79 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x5bbc8877 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
blt x28, x25, some_label_for_btype_32889907870 # perform operation 
addi x0, x1, 1
some_label_for_btype_32889907870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7ffffffe # initialize rs1
li x25, 0x7ffffffe # initialize rs2
blt x28, x25, some_label_for_btype_32889907871 # perform operation 
addi x0, x1, 1
some_label_for_btype_32889907871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x3, 0x0c869b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x5bbc8877 # initialize rs1
li x20, 0xffffffff # initialize rs2
blt x4, x20, some_label_for_btype_12381218220 # perform operation 
addi x0, x1, 1
some_label_for_btype_12381218220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xffffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
blt x4, x20, some_label_for_btype_12381218221 # perform operation 
addi x0, x1, 1
some_label_for_btype_12381218221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x1, 0x85e4b222 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x5bbc8877 # initialize rs1
li x27, 0xfffffffe # initialize rs2
blt x2, x27, some_label_for_btype_4348210570 # perform operation 
addi x0, x1, 1
some_label_for_btype_4348210570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xfffffffe # initialize rs1
li x27, 0xfffffffe # initialize rs2
blt x2, x27, some_label_for_btype_4348210571 # perform operation 
addi x0, x1, 1
some_label_for_btype_4348210571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x12, 0x216f04a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x5bbc8877 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
blt x16, x2, some_label_for_btype_42744162800 # perform operation 
addi x0, x1, 1
some_label_for_btype_42744162800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5bbc8877 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
blt x16, x2, some_label_for_btype_42744162801 # perform operation 
addi x0, x1, 1
some_label_for_btype_42744162801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x6, 0x135092b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5bbc8877 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
blt x5, x12, some_label_for_btype_41934723190 # perform operation 
addi x0, x1, 1
some_label_for_btype_41934723190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
blt x5, x12, some_label_for_btype_41934723191 # perform operation 
addi x0, x1, 1
some_label_for_btype_41934723191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x30, 0x8c3b6b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x5bbc8877 # initialize rs1
li x29, 0x55555555 # initialize rs2
blt x2, x29, some_label_for_btype_7373542570 # perform operation 
addi x0, x1, 1
some_label_for_btype_7373542570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x55555555 # initialize rs1
li x29, 0x55555555 # initialize rs2
blt x2, x29, some_label_for_btype_7373542571 # perform operation 
addi x0, x1, 1
some_label_for_btype_7373542571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x23, 0x39ede50b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xaaaaaaaa # initialize rs1
li x10, 0x00000000 # initialize rs2
blt x26, x10, some_label_for_btype_39108114570 # perform operation 
addi x0, x1, 1
some_label_for_btype_39108114570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x00000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
blt x26, x10, some_label_for_btype_39108114571 # perform operation 
addi x0, x1, 1
some_label_for_btype_39108114571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x19, 0xb1937195 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xaaaaaaaa # initialize rs1
li x20, 0x00000001 # initialize rs2
blt x2, x20, some_label_for_btype_36120664390 # perform operation 
addi x0, x1, 1
some_label_for_btype_36120664390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x00000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
blt x2, x20, some_label_for_btype_36120664391 # perform operation 
addi x0, x1, 1
some_label_for_btype_36120664391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x1, 0x9dd65df2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xaaaaaaaa # initialize rs1
li x11, 0x00000002 # initialize rs2
blt x23, x11, some_label_for_btype_24886158330 # perform operation 
addi x0, x1, 1
some_label_for_btype_24886158330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000002 # initialize rs1
li x11, 0x00000002 # initialize rs2
blt x23, x11, some_label_for_btype_24886158331 # perform operation 
addi x0, x1, 1
some_label_for_btype_24886158331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x15, 0x67db8275 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xaaaaaaaa # initialize rs1
li x26, 0x80000000 # initialize rs2
blt x17, x26, some_label_for_btype_34033338790 # perform operation 
addi x0, x1, 1
some_label_for_btype_34033338790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x80000000 # initialize rs1
li x26, 0x80000000 # initialize rs2
blt x17, x26, some_label_for_btype_34033338791 # perform operation 
addi x0, x1, 1
some_label_for_btype_34033338791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x22, 0x4c7cdb71 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaa # initialize rs1
li x28, 0x80000001 # initialize rs2
blt x13, x28, some_label_for_btype_9836146250 # perform operation 
addi x0, x1, 1
some_label_for_btype_9836146250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x80000001 # initialize rs1
li x28, 0x80000001 # initialize rs2
blt x13, x28, some_label_for_btype_9836146251 # perform operation 
addi x0, x1, 1
some_label_for_btype_9836146251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x20, 0x5b739028 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xaaaaaaaa # initialize rs1
li x2, 0x7fffffff # initialize rs2
blt x29, x2, some_label_for_btype_36688579750 # perform operation 
addi x0, x1, 1
some_label_for_btype_36688579750:
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
blt x29, x2, some_label_for_btype_36688579751 # perform operation 
addi x0, x1, 1
some_label_for_btype_36688579751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x17, 0xb3be56d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xaaaaaaaa # initialize rs1
li x23, 0x7ffffffe # initialize rs2
blt x5, x23, some_label_for_btype_6370284330 # perform operation 
addi x0, x1, 1
some_label_for_btype_6370284330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x7ffffffe # initialize rs1
li x23, 0x7ffffffe # initialize rs2
blt x5, x23, some_label_for_btype_6370284331 # perform operation 
addi x0, x1, 1
some_label_for_btype_6370284331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x21, 0x2e414839 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xaaaaaaaa # initialize rs1
li x12, 0xffffffff # initialize rs2
blt x26, x12, some_label_for_btype_22360307240 # perform operation 
addi x0, x1, 1
some_label_for_btype_22360307240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xffffffff # initialize rs1
li x12, 0xffffffff # initialize rs2
blt x26, x12, some_label_for_btype_22360307241 # perform operation 
addi x0, x1, 1
some_label_for_btype_22360307241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x16, 0x5bdff924 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaa # initialize rs1
li x3, 0xfffffffe # initialize rs2
blt x13, x3, some_label_for_btype_27125515590 # perform operation 
addi x0, x1, 1
some_label_for_btype_27125515590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xfffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
blt x13, x3, some_label_for_btype_27125515591 # perform operation 
addi x0, x1, 1
some_label_for_btype_27125515591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x5, 0xf2fa4f77 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xaaaaaaaa # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
blt x12, x15, some_label_for_btype_38223145110 # perform operation 
addi x0, x1, 1
some_label_for_btype_38223145110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x5bbc8877 # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
blt x12, x15, some_label_for_btype_38223145111 # perform operation 
addi x0, x1, 1
some_label_for_btype_38223145111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x20, 0xa6bae625 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
blt x25, x29, some_label_for_btype_13155589590 # perform operation 
addi x0, x1, 1
some_label_for_btype_13155589590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
blt x25, x29, some_label_for_btype_13155589591 # perform operation 
addi x0, x1, 1
some_label_for_btype_13155589591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x5, 0x05af71b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xaaaaaaaa # initialize rs1
li x18, 0x55555555 # initialize rs2
blt x29, x18, some_label_for_btype_32061502870 # perform operation 
addi x0, x1, 1
some_label_for_btype_32061502870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x55555555 # initialize rs1
li x18, 0x55555555 # initialize rs2
blt x29, x18, some_label_for_btype_32061502871 # perform operation 
addi x0, x1, 1
some_label_for_btype_32061502871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x7, 0xb99a50a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x55555555 # initialize rs1
li x2, 0x00000000 # initialize rs2
blt x28, x2, some_label_for_btype_19130457980 # perform operation 
addi x0, x1, 1
some_label_for_btype_19130457980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x00000000 # initialize rs1
li x2, 0x00000000 # initialize rs2
blt x28, x2, some_label_for_btype_19130457981 # perform operation 
addi x0, x1, 1
some_label_for_btype_19130457981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x25, 0x5ffa8c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x55555555 # initialize rs1
li x12, 0x00000001 # initialize rs2
blt x13, x12, some_label_for_btype_37452243970 # perform operation 
addi x0, x1, 1
some_label_for_btype_37452243970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
blt x13, x12, some_label_for_btype_37452243971 # perform operation 
addi x0, x1, 1
some_label_for_btype_37452243971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x4, 0xf46bd073 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x55555555 # initialize rs1
li x24, 0x00000002 # initialize rs2
blt x28, x24, some_label_for_btype_5995499030 # perform operation 
addi x0, x1, 1
some_label_for_btype_5995499030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x00000002 # initialize rs1
li x24, 0x00000002 # initialize rs2
blt x28, x24, some_label_for_btype_5995499031 # perform operation 
addi x0, x1, 1
some_label_for_btype_5995499031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x2, 0x65f0270a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x55555555 # initialize rs1
li x31, 0x80000000 # initialize rs2
blt x3, x31, some_label_for_btype_38535718790 # perform operation 
addi x0, x1, 1
some_label_for_btype_38535718790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x80000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
blt x3, x31, some_label_for_btype_38535718791 # perform operation 
addi x0, x1, 1
some_label_for_btype_38535718791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x22, 0x50cf3e50 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x55555555 # initialize rs1
li x3, 0x80000001 # initialize rs2
blt x29, x3, some_label_for_btype_27882396870 # perform operation 
addi x0, x1, 1
some_label_for_btype_27882396870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x80000001 # initialize rs1
li x3, 0x80000001 # initialize rs2
blt x29, x3, some_label_for_btype_27882396871 # perform operation 
addi x0, x1, 1
some_label_for_btype_27882396871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x3, 0x6d77ddc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x55555555 # initialize rs1
li x23, 0x7fffffff # initialize rs2
blt x26, x23, some_label_for_btype_4331948300 # perform operation 
addi x0, x1, 1
some_label_for_btype_4331948300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x7fffffff # initialize rs1
li x23, 0x7fffffff # initialize rs2
blt x26, x23, some_label_for_btype_4331948301 # perform operation 
addi x0, x1, 1
some_label_for_btype_4331948301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x23, 0x3ca972a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x55555555 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
blt x7, x18, some_label_for_btype_1906203490 # perform operation 
addi x0, x1, 1
some_label_for_btype_1906203490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x7ffffffe # initialize rs1
li x18, 0x7ffffffe # initialize rs2
blt x7, x18, some_label_for_btype_1906203491 # perform operation 
addi x0, x1, 1
some_label_for_btype_1906203491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x31, 0x0e9199df # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x55555555 # initialize rs1
li x16, 0xffffffff # initialize rs2
blt x24, x16, some_label_for_btype_26251575130 # perform operation 
addi x0, x1, 1
some_label_for_btype_26251575130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xffffffff # initialize rs1
li x16, 0xffffffff # initialize rs2
blt x24, x16, some_label_for_btype_26251575131 # perform operation 
addi x0, x1, 1
some_label_for_btype_26251575131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x4, 0xad78a72d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x55555555 # initialize rs1
li x6, 0xfffffffe # initialize rs2
blt x8, x6, some_label_for_btype_28713231560 # perform operation 
addi x0, x1, 1
some_label_for_btype_28713231560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xfffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
blt x8, x6, some_label_for_btype_28713231561 # perform operation 
addi x0, x1, 1
some_label_for_btype_28713231561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x17, 0x2048b422 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x55555555 # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
blt x11, x27, some_label_for_btype_13874172450 # perform operation 
addi x0, x1, 1
some_label_for_btype_13874172450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x5bbc8877 # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
blt x11, x27, some_label_for_btype_13874172451 # perform operation 
addi x0, x1, 1
some_label_for_btype_13874172451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x4, 0xa5a58400 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x55555555 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
blt x11, x27, some_label_for_btype_11700300070 # perform operation 
addi x0, x1, 1
some_label_for_btype_11700300070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
blt x11, x27, some_label_for_btype_11700300071 # perform operation 
addi x0, x1, 1
some_label_for_btype_11700300071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x5, 0x33cc2d9a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x55555555 # initialize rs1
li x24, 0x55555555 # initialize rs2
blt x23, x24, some_label_for_btype_14639405730 # perform operation 
addi x0, x1, 1
some_label_for_btype_14639405730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x55555555 # initialize rs1
li x24, 0x55555555 # initialize rs2
blt x23, x24, some_label_for_btype_14639405731 # perform operation 
addi x0, x1, 1
some_label_for_btype_14639405731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x11, 0x4ad3cf8c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0xc40c9b18 # initialize rs1
li x0, 0xa23f316d # initialize rs2
blt x0, x0, some_label_for_btype_21151308430 # perform operation 
addi x0, x1, 1
some_label_for_btype_21151308430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0xa23f316d # initialize rs1
li x0, 0xa23f316d # initialize rs2
blt x0, x0, some_label_for_btype_21151308431 # perform operation 
addi x0, x1, 1
some_label_for_btype_21151308431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x25, 0x76ddaf30 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x7b967207 # initialize rs1
li x1, 0xf5c5ba03 # initialize rs2
blt x1, x1, some_label_for_btype_1278804630 # perform operation 
addi x0, x1, 1
some_label_for_btype_1278804630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xf5c5ba03 # initialize rs1
li x1, 0xf5c5ba03 # initialize rs2
blt x1, x1, some_label_for_btype_1278804631 # perform operation 
addi x0, x1, 1
some_label_for_btype_1278804631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x24, 0x1021f270 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xb29fcd57 # initialize rs1
li x2, 0xba7eec7a # initialize rs2
blt x2, x2, some_label_for_btype_11243020920 # perform operation 
addi x0, x1, 1
some_label_for_btype_11243020920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xba7eec7a # initialize rs1
li x2, 0xba7eec7a # initialize rs2
blt x2, x2, some_label_for_btype_11243020921 # perform operation 
addi x0, x1, 1
some_label_for_btype_11243020921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x4, 0xb067736d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x47fce847 # initialize rs1
li x3, 0xc49c610b # initialize rs2
blt x3, x3, some_label_for_btype_13533832950 # perform operation 
addi x0, x1, 1
some_label_for_btype_13533832950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xc49c610b # initialize rs1
li x3, 0xc49c610b # initialize rs2
blt x3, x3, some_label_for_btype_13533832951 # perform operation 
addi x0, x1, 1
some_label_for_btype_13533832951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x26, 0xaf13716c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x730be7ad # initialize rs1
li x4, 0x36b92aff # initialize rs2
blt x4, x4, some_label_for_btype_6064807790 # perform operation 
addi x0, x1, 1
some_label_for_btype_6064807790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x36b92aff # initialize rs1
li x4, 0x36b92aff # initialize rs2
blt x4, x4, some_label_for_btype_6064807791 # perform operation 
addi x0, x1, 1
some_label_for_btype_6064807791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x31, 0x1cf33b23 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xc319f039 # initialize rs1
li x5, 0x6bcc733d # initialize rs2
blt x5, x5, some_label_for_btype_35506813500 # perform operation 
addi x0, x1, 1
some_label_for_btype_35506813500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x6bcc733d # initialize rs1
li x5, 0x6bcc733d # initialize rs2
blt x5, x5, some_label_for_btype_35506813501 # perform operation 
addi x0, x1, 1
some_label_for_btype_35506813501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x2, 0xfb452b13 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xdec7b442 # initialize rs1
li x6, 0x94b2cd3e # initialize rs2
blt x6, x6, some_label_for_btype_31372558510 # perform operation 
addi x0, x1, 1
some_label_for_btype_31372558510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x94b2cd3e # initialize rs1
li x6, 0x94b2cd3e # initialize rs2
blt x6, x6, some_label_for_btype_31372558511 # perform operation 
addi x0, x1, 1
some_label_for_btype_31372558511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x12, 0xdedc48f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x630c4d8d # initialize rs1
li x7, 0xb66a7357 # initialize rs2
blt x7, x7, some_label_for_btype_35037626510 # perform operation 
addi x0, x1, 1
some_label_for_btype_35037626510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xb66a7357 # initialize rs1
li x7, 0xb66a7357 # initialize rs2
blt x7, x7, some_label_for_btype_35037626511 # perform operation 
addi x0, x1, 1
some_label_for_btype_35037626511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x21, 0xc27df389 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0f10b97f # initialize rs1
li x8, 0x1a4c9a95 # initialize rs2
blt x8, x8, some_label_for_btype_21835679290 # perform operation 
addi x0, x1, 1
some_label_for_btype_21835679290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x1a4c9a95 # initialize rs1
li x8, 0x1a4c9a95 # initialize rs2
blt x8, x8, some_label_for_btype_21835679291 # perform operation 
addi x0, x1, 1
some_label_for_btype_21835679291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x7, 0x5bb5afb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x65641e15 # initialize rs1
li x9, 0xec9084cb # initialize rs2
blt x9, x9, some_label_for_btype_38474919210 # perform operation 
addi x0, x1, 1
some_label_for_btype_38474919210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xec9084cb # initialize rs1
li x9, 0xec9084cb # initialize rs2
blt x9, x9, some_label_for_btype_38474919211 # perform operation 
addi x0, x1, 1
some_label_for_btype_38474919211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x29, 0x9aba9383 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x459aaeaa # initialize rs1
li x10, 0xda86a4b5 # initialize rs2
blt x10, x10, some_label_for_btype_11864756810 # perform operation 
addi x0, x1, 1
some_label_for_btype_11864756810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xda86a4b5 # initialize rs1
li x10, 0xda86a4b5 # initialize rs2
blt x10, x10, some_label_for_btype_11864756811 # perform operation 
addi x0, x1, 1
some_label_for_btype_11864756811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x13, 0x42858754 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x8fa23d17 # initialize rs1
li x11, 0xdc66a63b # initialize rs2
blt x11, x11, some_label_for_btype_19022620470 # perform operation 
addi x0, x1, 1
some_label_for_btype_19022620470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xdc66a63b # initialize rs1
li x11, 0xdc66a63b # initialize rs2
blt x11, x11, some_label_for_btype_19022620471 # perform operation 
addi x0, x1, 1
some_label_for_btype_19022620471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x26, 0x045bd4fb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x10c5b7d9 # initialize rs1
li x12, 0x6d584f15 # initialize rs2
blt x12, x12, some_label_for_btype_19247822890 # perform operation 
addi x0, x1, 1
some_label_for_btype_19247822890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x6d584f15 # initialize rs1
li x12, 0x6d584f15 # initialize rs2
blt x12, x12, some_label_for_btype_19247822891 # perform operation 
addi x0, x1, 1
some_label_for_btype_19247822891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x24, 0x3a406855 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x45339bb8 # initialize rs1
li x13, 0xf3d155ca # initialize rs2
blt x13, x13, some_label_for_btype_29190773320 # perform operation 
addi x0, x1, 1
some_label_for_btype_29190773320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xf3d155ca # initialize rs1
li x13, 0xf3d155ca # initialize rs2
blt x13, x13, some_label_for_btype_29190773321 # perform operation 
addi x0, x1, 1
some_label_for_btype_29190773321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x26, 0xb7b66e1c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x6239a6a8 # initialize rs1
li x14, 0x890acdeb # initialize rs2
blt x14, x14, some_label_for_btype_31636441680 # perform operation 
addi x0, x1, 1
some_label_for_btype_31636441680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x890acdeb # initialize rs1
li x14, 0x890acdeb # initialize rs2
blt x14, x14, some_label_for_btype_31636441681 # perform operation 
addi x0, x1, 1
some_label_for_btype_31636441681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x29, 0xe7e86c60 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x91861529 # initialize rs1
li x15, 0x97abcf34 # initialize rs2
blt x15, x15, some_label_for_btype_33823935370 # perform operation 
addi x0, x1, 1
some_label_for_btype_33823935370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x97abcf34 # initialize rs1
li x15, 0x97abcf34 # initialize rs2
blt x15, x15, some_label_for_btype_33823935371 # perform operation 
addi x0, x1, 1
some_label_for_btype_33823935371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x8, 0x7827ea5d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x5a140100 # initialize rs1
li x16, 0x8a20aaff # initialize rs2
blt x16, x16, some_label_for_btype_37565891820 # perform operation 
addi x0, x1, 1
some_label_for_btype_37565891820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x8a20aaff # initialize rs1
li x16, 0x8a20aaff # initialize rs2
blt x16, x16, some_label_for_btype_37565891821 # perform operation 
addi x0, x1, 1
some_label_for_btype_37565891821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x8, 0x35f8ab55 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xe2816c73 # initialize rs1
li x17, 0xe9457249 # initialize rs2
blt x17, x17, some_label_for_btype_8128321270 # perform operation 
addi x0, x1, 1
some_label_for_btype_8128321270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xe9457249 # initialize rs1
li x17, 0xe9457249 # initialize rs2
blt x17, x17, some_label_for_btype_8128321271 # perform operation 
addi x0, x1, 1
some_label_for_btype_8128321271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x29, 0x8e6c7ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xcce50d50 # initialize rs1
li x18, 0xc8ad0100 # initialize rs2
blt x18, x18, some_label_for_btype_7786827850 # perform operation 
addi x0, x1, 1
some_label_for_btype_7786827850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xc8ad0100 # initialize rs1
li x18, 0xc8ad0100 # initialize rs2
blt x18, x18, some_label_for_btype_7786827851 # perform operation 
addi x0, x1, 1
some_label_for_btype_7786827851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x16, 0x771ddf9d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x34066a0e # initialize rs1
li x19, 0x316014df # initialize rs2
blt x19, x19, some_label_for_btype_6674209920 # perform operation 
addi x0, x1, 1
some_label_for_btype_6674209920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x316014df # initialize rs1
li x19, 0x316014df # initialize rs2
blt x19, x19, some_label_for_btype_6674209921 # perform operation 
addi x0, x1, 1
some_label_for_btype_6674209921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x15, 0x3880f312 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x60772608 # initialize rs1
li x20, 0xb72e7ef6 # initialize rs2
blt x20, x20, some_label_for_btype_40079922060 # perform operation 
addi x0, x1, 1
some_label_for_btype_40079922060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xb72e7ef6 # initialize rs1
li x20, 0xb72e7ef6 # initialize rs2
blt x20, x20, some_label_for_btype_40079922061 # perform operation 
addi x0, x1, 1
some_label_for_btype_40079922061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x19, 0x32d3a26e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xe049677d # initialize rs1
li x21, 0xef9f64b9 # initialize rs2
blt x21, x21, some_label_for_btype_11914659290 # perform operation 
addi x0, x1, 1
some_label_for_btype_11914659290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xef9f64b9 # initialize rs1
li x21, 0xef9f64b9 # initialize rs2
blt x21, x21, some_label_for_btype_11914659291 # perform operation 
addi x0, x1, 1
some_label_for_btype_11914659291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x15, 0x3ad51331 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x39ed94c4 # initialize rs1
li x22, 0x78dcf312 # initialize rs2
blt x22, x22, some_label_for_btype_27147903580 # perform operation 
addi x0, x1, 1
some_label_for_btype_27147903580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x78dcf312 # initialize rs1
li x22, 0x78dcf312 # initialize rs2
blt x22, x22, some_label_for_btype_27147903581 # perform operation 
addi x0, x1, 1
some_label_for_btype_27147903581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x2, 0x1012d643 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x716c3ba5 # initialize rs1
li x23, 0x84aecc9d # initialize rs2
blt x23, x23, some_label_for_btype_20943372400 # perform operation 
addi x0, x1, 1
some_label_for_btype_20943372400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x84aecc9d # initialize rs1
li x23, 0x84aecc9d # initialize rs2
blt x23, x23, some_label_for_btype_20943372401 # perform operation 
addi x0, x1, 1
some_label_for_btype_20943372401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x4, 0xea2ef3fc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xa1c0c0a9 # initialize rs1
li x24, 0xd6f49408 # initialize rs2
blt x24, x24, some_label_for_btype_37488499790 # perform operation 
addi x0, x1, 1
some_label_for_btype_37488499790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xd6f49408 # initialize rs1
li x24, 0xd6f49408 # initialize rs2
blt x24, x24, some_label_for_btype_37488499791 # perform operation 
addi x0, x1, 1
some_label_for_btype_37488499791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x4, 0x6fa00a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x3503506b # initialize rs1
li x25, 0x7ef84397 # initialize rs2
blt x25, x25, some_label_for_btype_33170545290 # perform operation 
addi x0, x1, 1
some_label_for_btype_33170545290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x7ef84397 # initialize rs1
li x25, 0x7ef84397 # initialize rs2
blt x25, x25, some_label_for_btype_33170545291 # perform operation 
addi x0, x1, 1
some_label_for_btype_33170545291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x16, 0x4dbecd31 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x326b69ca # initialize rs1
li x26, 0x53adaec7 # initialize rs2
blt x26, x26, some_label_for_btype_38566648720 # perform operation 
addi x0, x1, 1
some_label_for_btype_38566648720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x53adaec7 # initialize rs1
li x26, 0x53adaec7 # initialize rs2
blt x26, x26, some_label_for_btype_38566648721 # perform operation 
addi x0, x1, 1
some_label_for_btype_38566648721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x20, 0x900d6335 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xf539ec80 # initialize rs1
li x27, 0x941fd401 # initialize rs2
blt x27, x27, some_label_for_btype_39371608440 # perform operation 
addi x0, x1, 1
some_label_for_btype_39371608440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x941fd401 # initialize rs1
li x27, 0x941fd401 # initialize rs2
blt x27, x27, some_label_for_btype_39371608441 # perform operation 
addi x0, x1, 1
some_label_for_btype_39371608441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x30, 0xf43315c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xd4fdbe90 # initialize rs1
li x28, 0x9508dd30 # initialize rs2
blt x28, x28, some_label_for_btype_42592036750 # perform operation 
addi x0, x1, 1
some_label_for_btype_42592036750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x9508dd30 # initialize rs1
li x28, 0x9508dd30 # initialize rs2
blt x28, x28, some_label_for_btype_42592036751 # perform operation 
addi x0, x1, 1
some_label_for_btype_42592036751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x24, 0xbcd02459 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xb9b6397d # initialize rs1
li x29, 0xd722cdcc # initialize rs2
blt x29, x29, some_label_for_btype_16823893000 # perform operation 
addi x0, x1, 1
some_label_for_btype_16823893000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xd722cdcc # initialize rs1
li x29, 0xd722cdcc # initialize rs2
blt x29, x29, some_label_for_btype_16823893001 # perform operation 
addi x0, x1, 1
some_label_for_btype_16823893001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x26, 0xb943f62f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x548984ea # initialize rs1
li x30, 0x79c3627d # initialize rs2
blt x30, x30, some_label_for_btype_2434801110 # perform operation 
addi x0, x1, 1
some_label_for_btype_2434801110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x79c3627d # initialize rs1
li x30, 0x79c3627d # initialize rs2
blt x30, x30, some_label_for_btype_2434801111 # perform operation 
addi x0, x1, 1
some_label_for_btype_2434801111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x1, 0x9b553f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x93c0a051 # initialize rs1
li x31, 0xf4edf704 # initialize rs2
blt x31, x31, some_label_for_btype_34422877090 # perform operation 
addi x0, x1, 1
some_label_for_btype_34422877090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xf4edf704 # initialize rs1
li x31, 0xf4edf704 # initialize rs2
blt x31, x31, some_label_for_btype_34422877091 # perform operation 
addi x0, x1, 1
some_label_for_btype_34422877091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = 0x3b3ac357)
li x28, 0xfc88f58e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x3b3ac357 # initialize rs1
li x14, 0x717463ee # initialize rs2
blt x31, x14, some_label_for_btype_20773130230 # perform operation 
addi x0, x1, 1
some_label_for_btype_20773130230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x717463ee # initialize rs1
li x14, 0x717463ee # initialize rs2
blt x31, x14, some_label_for_btype_20773130231 # perform operation 
addi x0, x1, 1
some_label_for_btype_20773130231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x6025fad9)
li x7, 0xee0404a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x9fda0527 # initialize rs1
li x12, 0x9751dfac # initialize rs2
blt x8, x12, some_label_for_btype_4542030740 # perform operation 
addi x0, x1, 1
some_label_for_btype_4542030740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x9751dfac # initialize rs1
li x12, 0x9751dfac # initialize rs2
blt x8, x12, some_label_for_btype_4542030741 # perform operation 
addi x0, x1, 1
some_label_for_btype_4542030741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = 0x2de8109e)
li x4, 0x5d12612e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xcccb3964 # initialize rs1
li x23, 0x2de8109e # initialize rs2
blt x19, x23, some_label_for_btype_20940145580 # perform operation 
addi x0, x1, 1
some_label_for_btype_20940145580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x2de8109e # initialize rs1
li x23, 0x2de8109e # initialize rs2
blt x19, x23, some_label_for_btype_20940145581 # perform operation 
addi x0, x1, 1
some_label_for_btype_20940145581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = -0x4cfa5100)
li x12, 0xadb0f18a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xfdc772f7 # initialize rs1
li x2, 0xb305af00 # initialize rs2
blt x30, x2, some_label_for_btype_1175252260 # perform operation 
addi x0, x1, 1
some_label_for_btype_1175252260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xb305af00 # initialize rs1
li x2, 0xb305af00 # initialize rs2
blt x30, x2, some_label_for_btype_1175252261 # perform operation 
addi x0, x1, 1
some_label_for_btype_1175252261:
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
