///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-beq.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.934211
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x5, 0x86b368f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0xfc0556c0 # initialize rs1
li x28, 0xc8fed11d # initialize rs2
beq x0, x28, some_label_for_btype_10745434110 # perform operation 
addi x0, x1, 1
some_label_for_btype_10745434110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0xc8fed11d # initialize rs1
li x28, 0xc8fed11d # initialize rs2
beq x0, x28, some_label_for_btype_10745434111 # perform operation 
addi x0, x1, 1
some_label_for_btype_10745434111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x1)
li x25, 0x353b6585 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x667f806a # initialize rs1
li x21, 0x567eeb28 # initialize rs2
beq x1, x21, some_label_for_btype_10594958250 # perform operation 
addi x0, x1, 1
some_label_for_btype_10594958250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x567eeb28 # initialize rs1
li x21, 0x567eeb28 # initialize rs2
beq x1, x21, some_label_for_btype_10594958251 # perform operation 
addi x0, x1, 1
some_label_for_btype_10594958251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x2)
li x25, 0x0dbfa617 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x6fd38cda # initialize rs1
li x31, 0x2def0dac # initialize rs2
beq x2, x31, some_label_for_btype_3448635450 # perform operation 
addi x0, x1, 1
some_label_for_btype_3448635450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x2def0dac # initialize rs1
li x31, 0x2def0dac # initialize rs2
beq x2, x31, some_label_for_btype_3448635451 # perform operation 
addi x0, x1, 1
some_label_for_btype_3448635451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x3)
li x29, 0x19869b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xfec62869 # initialize rs1
li x16, 0x8e12d681 # initialize rs2
beq x3, x16, some_label_for_btype_29991131090 # perform operation 
addi x0, x1, 1
some_label_for_btype_29991131090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x8e12d681 # initialize rs1
li x16, 0x8e12d681 # initialize rs2
beq x3, x16, some_label_for_btype_29991131091 # perform operation 
addi x0, x1, 1
some_label_for_btype_29991131091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x4)
li x17, 0x688d32ac # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xe545aafc # initialize rs1
li x18, 0xaacf7c01 # initialize rs2
beq x4, x18, some_label_for_btype_5463290040 # perform operation 
addi x0, x1, 1
some_label_for_btype_5463290040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xaacf7c01 # initialize rs1
li x18, 0xaacf7c01 # initialize rs2
beq x4, x18, some_label_for_btype_5463290041 # perform operation 
addi x0, x1, 1
some_label_for_btype_5463290041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x5)
li x11, 0xdf0bc03b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x90f2fbb6 # initialize rs1
li x4, 0xf1c52f75 # initialize rs2
beq x5, x4, some_label_for_btype_8572034670 # perform operation 
addi x0, x1, 1
some_label_for_btype_8572034670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xf1c52f75 # initialize rs1
li x4, 0xf1c52f75 # initialize rs2
beq x5, x4, some_label_for_btype_8572034671 # perform operation 
addi x0, x1, 1
some_label_for_btype_8572034671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x6)
li x31, 0x7d01e2c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x50ec3816 # initialize rs1
li x12, 0xf309078e # initialize rs2
beq x6, x12, some_label_for_btype_368979900 # perform operation 
addi x0, x1, 1
some_label_for_btype_368979900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xf309078e # initialize rs1
li x12, 0xf309078e # initialize rs2
beq x6, x12, some_label_for_btype_368979901 # perform operation 
addi x0, x1, 1
some_label_for_btype_368979901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x7)
li x12, 0x06ade140 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x494bf19b # initialize rs1
li x22, 0xbf4c490e # initialize rs2
beq x7, x22, some_label_for_btype_16343715460 # perform operation 
addi x0, x1, 1
some_label_for_btype_16343715460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xbf4c490e # initialize rs1
li x22, 0xbf4c490e # initialize rs2
beq x7, x22, some_label_for_btype_16343715461 # perform operation 
addi x0, x1, 1
some_label_for_btype_16343715461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x8)
li x2, 0x1edcde4d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xdeffd1d7 # initialize rs1
li x20, 0x1d59d822 # initialize rs2
beq x8, x20, some_label_for_btype_27789888870 # perform operation 
addi x0, x1, 1
some_label_for_btype_27789888870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x1d59d822 # initialize rs1
li x20, 0x1d59d822 # initialize rs2
beq x8, x20, some_label_for_btype_27789888871 # perform operation 
addi x0, x1, 1
some_label_for_btype_27789888871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x23, 0xe52a2a9a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xb09484ab # initialize rs1
li x24, 0x2adacc86 # initialize rs2
beq x9, x24, some_label_for_btype_11771063840 # perform operation 
addi x0, x1, 1
some_label_for_btype_11771063840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x2adacc86 # initialize rs1
li x24, 0x2adacc86 # initialize rs2
beq x9, x24, some_label_for_btype_11771063841 # perform operation 
addi x0, x1, 1
some_label_for_btype_11771063841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x25, 0x172e78a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xdae372ec # initialize rs1
li x17, 0x14f1e045 # initialize rs2
beq x10, x17, some_label_for_btype_30709636260 # perform operation 
addi x0, x1, 1
some_label_for_btype_30709636260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x14f1e045 # initialize rs1
li x17, 0x14f1e045 # initialize rs2
beq x10, x17, some_label_for_btype_30709636261 # perform operation 
addi x0, x1, 1
some_label_for_btype_30709636261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x2, 0x2d0c6ef6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xc9d440a2 # initialize rs1
li x1, 0xb56d482d # initialize rs2
beq x11, x1, some_label_for_btype_16124288480 # perform operation 
addi x0, x1, 1
some_label_for_btype_16124288480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xb56d482d # initialize rs1
li x1, 0xb56d482d # initialize rs2
beq x11, x1, some_label_for_btype_16124288481 # perform operation 
addi x0, x1, 1
some_label_for_btype_16124288481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x4, 0x3e28a876 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x04b8f1f2 # initialize rs1
li x2, 0xd9d48a2c # initialize rs2
beq x12, x2, some_label_for_btype_17559319530 # perform operation 
addi x0, x1, 1
some_label_for_btype_17559319530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xd9d48a2c # initialize rs1
li x2, 0xd9d48a2c # initialize rs2
beq x12, x2, some_label_for_btype_17559319531 # perform operation 
addi x0, x1, 1
some_label_for_btype_17559319531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x24, 0x3d008932 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xc3e46cf0 # initialize rs1
li x16, 0x97aae1a3 # initialize rs2
beq x13, x16, some_label_for_btype_27033600390 # perform operation 
addi x0, x1, 1
some_label_for_btype_27033600390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x97aae1a3 # initialize rs1
li x16, 0x97aae1a3 # initialize rs2
beq x13, x16, some_label_for_btype_27033600391 # perform operation 
addi x0, x1, 1
some_label_for_btype_27033600391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x22, 0x9aa40ec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xc74b023f # initialize rs1
li x2, 0x04522960 # initialize rs2
beq x14, x2, some_label_for_btype_23810916720 # perform operation 
addi x0, x1, 1
some_label_for_btype_23810916720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x04522960 # initialize rs1
li x2, 0x04522960 # initialize rs2
beq x14, x2, some_label_for_btype_23810916721 # perform operation 
addi x0, x1, 1
some_label_for_btype_23810916721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x1, 0xa07a301c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x067803d5 # initialize rs1
li x29, 0xda9f8789 # initialize rs2
beq x15, x29, some_label_for_btype_14138053360 # perform operation 
addi x0, x1, 1
some_label_for_btype_14138053360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xda9f8789 # initialize rs1
li x29, 0xda9f8789 # initialize rs2
beq x15, x29, some_label_for_btype_14138053361 # perform operation 
addi x0, x1, 1
some_label_for_btype_14138053361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x16)
li x22, 0xdb39ae44 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xd3e4830d # initialize rs1
li x20, 0xf8103dfd # initialize rs2
beq x16, x20, some_label_for_btype_26755717140 # perform operation 
addi x0, x1, 1
some_label_for_btype_26755717140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xf8103dfd # initialize rs1
li x20, 0xf8103dfd # initialize rs2
beq x16, x20, some_label_for_btype_26755717141 # perform operation 
addi x0, x1, 1
some_label_for_btype_26755717141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x17)
li x9, 0x37e2c6f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xf3d849ba # initialize rs1
li x24, 0x86b703eb # initialize rs2
beq x17, x24, some_label_for_btype_21302512420 # perform operation 
addi x0, x1, 1
some_label_for_btype_21302512420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x86b703eb # initialize rs1
li x24, 0x86b703eb # initialize rs2
beq x17, x24, some_label_for_btype_21302512421 # perform operation 
addi x0, x1, 1
some_label_for_btype_21302512421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x18)
li x16, 0x0e71af64 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x5b561424 # initialize rs1
li x30, 0x9848a6e7 # initialize rs2
beq x18, x30, some_label_for_btype_24440715840 # perform operation 
addi x0, x1, 1
some_label_for_btype_24440715840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x9848a6e7 # initialize rs1
li x30, 0x9848a6e7 # initialize rs2
beq x18, x30, some_label_for_btype_24440715841 # perform operation 
addi x0, x1, 1
some_label_for_btype_24440715841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x19)
li x12, 0x72bf5a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x26c2d2cb # initialize rs1
li x1, 0xbacfe19f # initialize rs2
beq x19, x1, some_label_for_btype_26888704310 # perform operation 
addi x0, x1, 1
some_label_for_btype_26888704310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xbacfe19f # initialize rs1
li x1, 0xbacfe19f # initialize rs2
beq x19, x1, some_label_for_btype_26888704311 # perform operation 
addi x0, x1, 1
some_label_for_btype_26888704311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x20)
li x21, 0x6acc5515 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xa0a7ae6f # initialize rs1
li x1, 0x88432213 # initialize rs2
beq x20, x1, some_label_for_btype_13152471640 # perform operation 
addi x0, x1, 1
some_label_for_btype_13152471640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x88432213 # initialize rs1
li x1, 0x88432213 # initialize rs2
beq x20, x1, some_label_for_btype_13152471641 # perform operation 
addi x0, x1, 1
some_label_for_btype_13152471641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x21)
li x23, 0x0b23b1c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x2675917f # initialize rs1
li x2, 0xd8081af8 # initialize rs2
beq x21, x2, some_label_for_btype_41830036400 # perform operation 
addi x0, x1, 1
some_label_for_btype_41830036400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xd8081af8 # initialize rs1
li x2, 0xd8081af8 # initialize rs2
beq x21, x2, some_label_for_btype_41830036401 # perform operation 
addi x0, x1, 1
some_label_for_btype_41830036401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x22)
li x31, 0xc0409b8b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xfc1f93a6 # initialize rs1
li x30, 0x27a7c191 # initialize rs2
beq x22, x30, some_label_for_btype_210142960 # perform operation 
addi x0, x1, 1
some_label_for_btype_210142960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x27a7c191 # initialize rs1
li x30, 0x27a7c191 # initialize rs2
beq x22, x30, some_label_for_btype_210142961 # perform operation 
addi x0, x1, 1
some_label_for_btype_210142961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x23)
li x8, 0xdc21c621 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x7d2122d2 # initialize rs1
li x25, 0x7bfe5d2c # initialize rs2
beq x23, x25, some_label_for_btype_13975417990 # perform operation 
addi x0, x1, 1
some_label_for_btype_13975417990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x7bfe5d2c # initialize rs1
li x25, 0x7bfe5d2c # initialize rs2
beq x23, x25, some_label_for_btype_13975417991 # perform operation 
addi x0, x1, 1
some_label_for_btype_13975417991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x24)
li x23, 0xb2859258 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xc39dff19 # initialize rs1
li x5, 0x53d8f655 # initialize rs2
beq x24, x5, some_label_for_btype_5449493300 # perform operation 
addi x0, x1, 1
some_label_for_btype_5449493300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x53d8f655 # initialize rs1
li x5, 0x53d8f655 # initialize rs2
beq x24, x5, some_label_for_btype_5449493301 # perform operation 
addi x0, x1, 1
some_label_for_btype_5449493301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x25)
li x6, 0xea829539 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xcc1a51f9 # initialize rs1
li x13, 0x343bb934 # initialize rs2
beq x25, x13, some_label_for_btype_35724462850 # perform operation 
addi x0, x1, 1
some_label_for_btype_35724462850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x343bb934 # initialize rs1
li x13, 0x343bb934 # initialize rs2
beq x25, x13, some_label_for_btype_35724462851 # perform operation 
addi x0, x1, 1
some_label_for_btype_35724462851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x26)
li x20, 0xcddcd25d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0982e050 # initialize rs1
li x27, 0xbf7e995e # initialize rs2
beq x26, x27, some_label_for_btype_30108868910 # perform operation 
addi x0, x1, 1
some_label_for_btype_30108868910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xbf7e995e # initialize rs1
li x27, 0xbf7e995e # initialize rs2
beq x26, x27, some_label_for_btype_30108868911 # perform operation 
addi x0, x1, 1
some_label_for_btype_30108868911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x27)
li x17, 0xac6ceb8a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0730740a # initialize rs1
li x15, 0x2a325a97 # initialize rs2
beq x27, x15, some_label_for_btype_12354190130 # perform operation 
addi x0, x1, 1
some_label_for_btype_12354190130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x2a325a97 # initialize rs1
li x15, 0x2a325a97 # initialize rs2
beq x27, x15, some_label_for_btype_12354190131 # perform operation 
addi x0, x1, 1
some_label_for_btype_12354190131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x28)
li x20, 0xf7a1a6f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x515e52fe # initialize rs1
li x14, 0x2755ece7 # initialize rs2
beq x28, x14, some_label_for_btype_35226950640 # perform operation 
addi x0, x1, 1
some_label_for_btype_35226950640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x2755ece7 # initialize rs1
li x14, 0x2755ece7 # initialize rs2
beq x28, x14, some_label_for_btype_35226950641 # perform operation 
addi x0, x1, 1
some_label_for_btype_35226950641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x29)
li x30, 0xabff8a25 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xb0d5cc94 # initialize rs1
li x4, 0x1ed3f209 # initialize rs2
beq x29, x4, some_label_for_btype_4863220190 # perform operation 
addi x0, x1, 1
some_label_for_btype_4863220190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x1ed3f209 # initialize rs1
li x4, 0x1ed3f209 # initialize rs2
beq x29, x4, some_label_for_btype_4863220191 # perform operation 
addi x0, x1, 1
some_label_for_btype_4863220191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x30)
li x4, 0xded12f26 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x1c8bd1c8 # initialize rs1
li x8, 0xee03449b # initialize rs2
beq x30, x8, some_label_for_btype_37957802320 # perform operation 
addi x0, x1, 1
some_label_for_btype_37957802320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xee03449b # initialize rs1
li x8, 0xee03449b # initialize rs2
beq x30, x8, some_label_for_btype_37957802321 # perform operation 
addi x0, x1, 1
some_label_for_btype_37957802321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x31)
li x6, 0x764d13eb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xed0c5328 # initialize rs1
li x19, 0x2fca696a # initialize rs2
beq x31, x19, some_label_for_btype_28611335090 # perform operation 
addi x0, x1, 1
some_label_for_btype_28611335090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x2fca696a # initialize rs1
li x19, 0x2fca696a # initialize rs2
beq x31, x19, some_label_for_btype_28611335091 # perform operation 
addi x0, x1, 1
some_label_for_btype_28611335091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x0)
li x16, 0xb5a897fc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x74e06758 # initialize rs1
li x0, 0x31b68567 # initialize rs2
beq x3, x0, some_label_for_btype_33419228710 # perform operation 
addi x0, x1, 1
some_label_for_btype_33419228710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x31b68567 # initialize rs1
li x0, 0x31b68567 # initialize rs2
beq x3, x0, some_label_for_btype_33419228711 # perform operation 
addi x0, x1, 1
some_label_for_btype_33419228711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x1)
li x22, 0x07b9ae99 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xea45b7f7 # initialize rs1
li x1, 0x34dcdaec # initialize rs2
beq x17, x1, some_label_for_btype_42912720010 # perform operation 
addi x0, x1, 1
some_label_for_btype_42912720010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x34dcdaec # initialize rs1
li x1, 0x34dcdaec # initialize rs2
beq x17, x1, some_label_for_btype_42912720011 # perform operation 
addi x0, x1, 1
some_label_for_btype_42912720011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x2)
li x22, 0x3aa6ad08 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xe9b6983c # initialize rs1
li x2, 0xe11832cc # initialize rs2
beq x12, x2, some_label_for_btype_1602543900 # perform operation 
addi x0, x1, 1
some_label_for_btype_1602543900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xe11832cc # initialize rs1
li x2, 0xe11832cc # initialize rs2
beq x12, x2, some_label_for_btype_1602543901 # perform operation 
addi x0, x1, 1
some_label_for_btype_1602543901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x3)
li x9, 0x7397d0dc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xd3fa4235 # initialize rs1
li x3, 0x393528dc # initialize rs2
beq x29, x3, some_label_for_btype_33681237640 # perform operation 
addi x0, x1, 1
some_label_for_btype_33681237640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x393528dc # initialize rs1
li x3, 0x393528dc # initialize rs2
beq x29, x3, some_label_for_btype_33681237641 # perform operation 
addi x0, x1, 1
some_label_for_btype_33681237641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x4)
li x24, 0xf7a5e90a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xa54389d5 # initialize rs1
li x4, 0xdab494b0 # initialize rs2
beq x12, x4, some_label_for_btype_30385649030 # perform operation 
addi x0, x1, 1
some_label_for_btype_30385649030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xdab494b0 # initialize rs1
li x4, 0xdab494b0 # initialize rs2
beq x12, x4, some_label_for_btype_30385649031 # perform operation 
addi x0, x1, 1
some_label_for_btype_30385649031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x5)
li x23, 0xf2ca875d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xb1d5f851 # initialize rs1
li x5, 0x5cc30d09 # initialize rs2
beq x24, x5, some_label_for_btype_12190580530 # perform operation 
addi x0, x1, 1
some_label_for_btype_12190580530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5cc30d09 # initialize rs1
li x5, 0x5cc30d09 # initialize rs2
beq x24, x5, some_label_for_btype_12190580531 # perform operation 
addi x0, x1, 1
some_label_for_btype_12190580531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x6)
li x18, 0xb4c0e1d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x5bba5ce9 # initialize rs1
li x6, 0x59b899b6 # initialize rs2
beq x24, x6, some_label_for_btype_30775271910 # perform operation 
addi x0, x1, 1
some_label_for_btype_30775271910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x59b899b6 # initialize rs1
li x6, 0x59b899b6 # initialize rs2
beq x24, x6, some_label_for_btype_30775271911 # perform operation 
addi x0, x1, 1
some_label_for_btype_30775271911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x7)
li x18, 0x276e0348 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xa28b0c3d # initialize rs1
li x7, 0x9c4448e5 # initialize rs2
beq x19, x7, some_label_for_btype_24312106160 # perform operation 
addi x0, x1, 1
some_label_for_btype_24312106160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x9c4448e5 # initialize rs1
li x7, 0x9c4448e5 # initialize rs2
beq x19, x7, some_label_for_btype_24312106161 # perform operation 
addi x0, x1, 1
some_label_for_btype_24312106161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x8)
li x30, 0xebb05e2e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x8a0ddc23 # initialize rs1
li x8, 0x79e73ca8 # initialize rs2
beq x22, x8, some_label_for_btype_27387197030 # perform operation 
addi x0, x1, 1
some_label_for_btype_27387197030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x79e73ca8 # initialize rs1
li x8, 0x79e73ca8 # initialize rs2
beq x22, x8, some_label_for_btype_27387197031 # perform operation 
addi x0, x1, 1
some_label_for_btype_27387197031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x9)
li x2, 0xf24ebcd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xe24ca866 # initialize rs1
li x9, 0xaec9ceba # initialize rs2
beq x4, x9, some_label_for_btype_14195293030 # perform operation 
addi x0, x1, 1
some_label_for_btype_14195293030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xaec9ceba # initialize rs1
li x9, 0xaec9ceba # initialize rs2
beq x4, x9, some_label_for_btype_14195293031 # perform operation 
addi x0, x1, 1
some_label_for_btype_14195293031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x10)
li x22, 0x095d5173 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xb0e18a3a # initialize rs1
li x10, 0x36379ee5 # initialize rs2
beq x24, x10, some_label_for_btype_14986804170 # perform operation 
addi x0, x1, 1
some_label_for_btype_14986804170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x36379ee5 # initialize rs1
li x10, 0x36379ee5 # initialize rs2
beq x24, x10, some_label_for_btype_14986804171 # perform operation 
addi x0, x1, 1
some_label_for_btype_14986804171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x11)
li x18, 0x43013323 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x79cc7c42 # initialize rs1
li x11, 0x92232b7e # initialize rs2
beq x17, x11, some_label_for_btype_3194765490 # perform operation 
addi x0, x1, 1
some_label_for_btype_3194765490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x92232b7e # initialize rs1
li x11, 0x92232b7e # initialize rs2
beq x17, x11, some_label_for_btype_3194765491 # perform operation 
addi x0, x1, 1
some_label_for_btype_3194765491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x12)
li x20, 0xf9e763d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x46d0db98 # initialize rs1
li x12, 0x1f5409f2 # initialize rs2
beq x27, x12, some_label_for_btype_29011896210 # perform operation 
addi x0, x1, 1
some_label_for_btype_29011896210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x1f5409f2 # initialize rs1
li x12, 0x1f5409f2 # initialize rs2
beq x27, x12, some_label_for_btype_29011896211 # perform operation 
addi x0, x1, 1
some_label_for_btype_29011896211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0x332410ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xfdb3242a # initialize rs1
li x13, 0x199831f0 # initialize rs2
beq x3, x13, some_label_for_btype_4237548430 # perform operation 
addi x0, x1, 1
some_label_for_btype_4237548430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x199831f0 # initialize rs1
li x13, 0x199831f0 # initialize rs2
beq x3, x13, some_label_for_btype_4237548431 # perform operation 
addi x0, x1, 1
some_label_for_btype_4237548431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x14)
li x4, 0x827adce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xab0d4f95 # initialize rs1
li x14, 0xe0bc7751 # initialize rs2
beq x3, x14, some_label_for_btype_19378733070 # perform operation 
addi x0, x1, 1
some_label_for_btype_19378733070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xe0bc7751 # initialize rs1
li x14, 0xe0bc7751 # initialize rs2
beq x3, x14, some_label_for_btype_19378733071 # perform operation 
addi x0, x1, 1
some_label_for_btype_19378733071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x15)
li x5, 0xfecce64d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xbd350f16 # initialize rs1
li x15, 0x09d53d63 # initialize rs2
beq x17, x15, some_label_for_btype_31241332250 # perform operation 
addi x0, x1, 1
some_label_for_btype_31241332250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x09d53d63 # initialize rs1
li x15, 0x09d53d63 # initialize rs2
beq x17, x15, some_label_for_btype_31241332251 # perform operation 
addi x0, x1, 1
some_label_for_btype_31241332251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x16)
li x17, 0x36c83def # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x9f77fa69 # initialize rs1
li x16, 0xd3e16087 # initialize rs2
beq x15, x16, some_label_for_btype_31581202770 # perform operation 
addi x0, x1, 1
some_label_for_btype_31581202770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xd3e16087 # initialize rs1
li x16, 0xd3e16087 # initialize rs2
beq x15, x16, some_label_for_btype_31581202771 # perform operation 
addi x0, x1, 1
some_label_for_btype_31581202771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x17)
li x20, 0x4dd68d36 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x237709ca # initialize rs1
li x17, 0xe0000fa0 # initialize rs2
beq x27, x17, some_label_for_btype_27395374280 # perform operation 
addi x0, x1, 1
some_label_for_btype_27395374280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xe0000fa0 # initialize rs1
li x17, 0xe0000fa0 # initialize rs2
beq x27, x17, some_label_for_btype_27395374281 # perform operation 
addi x0, x1, 1
some_label_for_btype_27395374281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x18)
li x5, 0x6bab109e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x28751b49 # initialize rs1
li x18, 0x5b869463 # initialize rs2
beq x10, x18, some_label_for_btype_42545300340 # perform operation 
addi x0, x1, 1
some_label_for_btype_42545300340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x5b869463 # initialize rs1
li x18, 0x5b869463 # initialize rs2
beq x10, x18, some_label_for_btype_42545300341 # perform operation 
addi x0, x1, 1
some_label_for_btype_42545300341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x19)
li x26, 0x2f904d38 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xc491075c # initialize rs1
li x19, 0xec343245 # initialize rs2
beq x31, x19, some_label_for_btype_16231986810 # perform operation 
addi x0, x1, 1
some_label_for_btype_16231986810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xec343245 # initialize rs1
li x19, 0xec343245 # initialize rs2
beq x31, x19, some_label_for_btype_16231986811 # perform operation 
addi x0, x1, 1
some_label_for_btype_16231986811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x20)
li x9, 0x0fa34543 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xbb933b84 # initialize rs1
li x20, 0x060db3ed # initialize rs2
beq x29, x20, some_label_for_btype_20226295040 # perform operation 
addi x0, x1, 1
some_label_for_btype_20226295040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x060db3ed # initialize rs1
li x20, 0x060db3ed # initialize rs2
beq x29, x20, some_label_for_btype_20226295041 # perform operation 
addi x0, x1, 1
some_label_for_btype_20226295041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x21)
li x16, 0xdce262dd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x5b5b6b0a # initialize rs1
li x21, 0x7bf04a96 # initialize rs2
beq x1, x21, some_label_for_btype_37446920510 # perform operation 
addi x0, x1, 1
some_label_for_btype_37446920510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x7bf04a96 # initialize rs1
li x21, 0x7bf04a96 # initialize rs2
beq x1, x21, some_label_for_btype_37446920511 # perform operation 
addi x0, x1, 1
some_label_for_btype_37446920511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x22)
li x8, 0x0217f0a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xdcac6fd8 # initialize rs1
li x22, 0xbd9e0f57 # initialize rs2
beq x4, x22, some_label_for_btype_37645101500 # perform operation 
addi x0, x1, 1
some_label_for_btype_37645101500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xbd9e0f57 # initialize rs1
li x22, 0xbd9e0f57 # initialize rs2
beq x4, x22, some_label_for_btype_37645101501 # perform operation 
addi x0, x1, 1
some_label_for_btype_37645101501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x23)
li x28, 0x11d7ad85 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x2e58dc87 # initialize rs1
li x23, 0x619ea432 # initialize rs2
beq x21, x23, some_label_for_btype_15225488590 # perform operation 
addi x0, x1, 1
some_label_for_btype_15225488590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x619ea432 # initialize rs1
li x23, 0x619ea432 # initialize rs2
beq x21, x23, some_label_for_btype_15225488591 # perform operation 
addi x0, x1, 1
some_label_for_btype_15225488591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x24)
li x31, 0xe94a07ac # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0383ee73 # initialize rs1
li x24, 0x59fb7db0 # initialize rs2
beq x14, x24, some_label_for_btype_35474551530 # perform operation 
addi x0, x1, 1
some_label_for_btype_35474551530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x59fb7db0 # initialize rs1
li x24, 0x59fb7db0 # initialize rs2
beq x14, x24, some_label_for_btype_35474551531 # perform operation 
addi x0, x1, 1
some_label_for_btype_35474551531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x25)
li x14, 0x3cd2d63f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xb1ddf686 # initialize rs1
li x25, 0xf62efe5e # initialize rs2
beq x12, x25, some_label_for_btype_27272708880 # perform operation 
addi x0, x1, 1
some_label_for_btype_27272708880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xf62efe5e # initialize rs1
li x25, 0xf62efe5e # initialize rs2
beq x12, x25, some_label_for_btype_27272708881 # perform operation 
addi x0, x1, 1
some_label_for_btype_27272708881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x26)
li x3, 0xca67b074 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x40df1ff1 # initialize rs1
li x26, 0x30d33909 # initialize rs2
beq x10, x26, some_label_for_btype_24833232570 # perform operation 
addi x0, x1, 1
some_label_for_btype_24833232570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x30d33909 # initialize rs1
li x26, 0x30d33909 # initialize rs2
beq x10, x26, some_label_for_btype_24833232571 # perform operation 
addi x0, x1, 1
some_label_for_btype_24833232571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x27)
li x10, 0xbb352ec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xc4eda72b # initialize rs1
li x27, 0x17a04f42 # initialize rs2
beq x26, x27, some_label_for_btype_11086707800 # perform operation 
addi x0, x1, 1
some_label_for_btype_11086707800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x17a04f42 # initialize rs1
li x27, 0x17a04f42 # initialize rs2
beq x26, x27, some_label_for_btype_11086707801 # perform operation 
addi x0, x1, 1
some_label_for_btype_11086707801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x28)
li x21, 0x6363b98d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x736d7f07 # initialize rs1
li x28, 0x5c8629e2 # initialize rs2
beq x19, x28, some_label_for_btype_17803841760 # perform operation 
addi x0, x1, 1
some_label_for_btype_17803841760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x5c8629e2 # initialize rs1
li x28, 0x5c8629e2 # initialize rs2
beq x19, x28, some_label_for_btype_17803841761 # perform operation 
addi x0, x1, 1
some_label_for_btype_17803841761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x29)
li x4, 0x9176e5e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x7002679c # initialize rs1
li x29, 0x8ad7fb02 # initialize rs2
beq x22, x29, some_label_for_btype_1285627260 # perform operation 
addi x0, x1, 1
some_label_for_btype_1285627260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x8ad7fb02 # initialize rs1
li x29, 0x8ad7fb02 # initialize rs2
beq x22, x29, some_label_for_btype_1285627261 # perform operation 
addi x0, x1, 1
some_label_for_btype_1285627261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x30)
li x12, 0xcf176d08 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x542f7485 # initialize rs1
li x30, 0xadcac48b # initialize rs2
beq x8, x30, some_label_for_btype_37976346110 # perform operation 
addi x0, x1, 1
some_label_for_btype_37976346110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xadcac48b # initialize rs1
li x30, 0xadcac48b # initialize rs2
beq x8, x30, some_label_for_btype_37976346111 # perform operation 
addi x0, x1, 1
some_label_for_btype_37976346111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x31)
li x2, 0xf4d18235 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xffb07b56 # initialize rs1
li x31, 0xd7e5486c # initialize rs2
beq x27, x31, some_label_for_btype_23683828460 # perform operation 
addi x0, x1, 1
some_label_for_btype_23683828460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xd7e5486c # initialize rs1
li x31, 0xd7e5486c # initialize rs2
beq x27, x31, some_label_for_btype_23683828461 # perform operation 
addi x0, x1, 1
some_label_for_btype_23683828461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xd6f9f00c)
li x18, 0x43d7b9bf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x43d7b9bf # initialize rs1
li x0, 0x540e5d13 # initialize rs2
beq x14, x0, some_label_for_btype_8688529170 # perform operation 
addi x0, x1, 1
some_label_for_btype_8688529170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x540e5d13 # initialize rs1
li x0, 0x540e5d13 # initialize rs2
beq x14, x0, some_label_for_btype_8688529171 # perform operation 
addi x0, x1, 1
some_label_for_btype_8688529171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0xb92d06a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x00000000 # initialize rs1
li x28, 0xc005c99c # initialize rs2
beq x21, x28, some_label_for_btype_29036443480 # perform operation 
addi x0, x1, 1
some_label_for_btype_29036443480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xc005c99c # initialize rs1
li x28, 0xc005c99c # initialize rs2
beq x21, x28, some_label_for_btype_29036443481 # perform operation 
addi x0, x1, 1
some_label_for_btype_29036443481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0x21a5ac1d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x00000001 # initialize rs1
li x13, 0x1b3ea1b8 # initialize rs2
beq x25, x13, some_label_for_btype_20115379030 # perform operation 
addi x0, x1, 1
some_label_for_btype_20115379030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x1b3ea1b8 # initialize rs1
li x13, 0x1b3ea1b8 # initialize rs2
beq x25, x13, some_label_for_btype_20115379031 # perform operation 
addi x0, x1, 1
some_label_for_btype_20115379031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x18, 0x07393fe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x00000002 # initialize rs1
li x26, 0xa903fc2d # initialize rs2
beq x16, x26, some_label_for_btype_30045881300 # perform operation 
addi x0, x1, 1
some_label_for_btype_30045881300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xa903fc2d # initialize rs1
li x26, 0xa903fc2d # initialize rs2
beq x16, x26, some_label_for_btype_30045881301 # perform operation 
addi x0, x1, 1
some_label_for_btype_30045881301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x16, 0x4aefa36d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x80000000 # initialize rs1
li x31, 0x58270fd8 # initialize rs2
beq x23, x31, some_label_for_btype_12476894470 # perform operation 
addi x0, x1, 1
some_label_for_btype_12476894470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x58270fd8 # initialize rs1
li x31, 0x58270fd8 # initialize rs2
beq x23, x31, some_label_for_btype_12476894471 # perform operation 
addi x0, x1, 1
some_label_for_btype_12476894471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x17, 0x3f43877c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x80000001 # initialize rs1
li x27, 0x7ddce399 # initialize rs2
beq x5, x27, some_label_for_btype_20916576610 # perform operation 
addi x0, x1, 1
some_label_for_btype_20916576610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x7ddce399 # initialize rs1
li x27, 0x7ddce399 # initialize rs2
beq x5, x27, some_label_for_btype_20916576611 # perform operation 
addi x0, x1, 1
some_label_for_btype_20916576611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x31, 0xa4602295 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x7fffffff # initialize rs1
li x20, 0x9efd95e1 # initialize rs2
beq x21, x20, some_label_for_btype_17318123480 # perform operation 
addi x0, x1, 1
some_label_for_btype_17318123480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x9efd95e1 # initialize rs1
li x20, 0x9efd95e1 # initialize rs2
beq x21, x20, some_label_for_btype_17318123481 # perform operation 
addi x0, x1, 1
some_label_for_btype_17318123481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x23, 0x1a4929f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x7ffffffe # initialize rs1
li x22, 0x7e9e3a8f # initialize rs2
beq x30, x22, some_label_for_btype_21515045260 # perform operation 
addi x0, x1, 1
some_label_for_btype_21515045260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7e9e3a8f # initialize rs1
li x22, 0x7e9e3a8f # initialize rs2
beq x30, x22, some_label_for_btype_21515045261 # perform operation 
addi x0, x1, 1
some_label_for_btype_21515045261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x1, 0x1271cde8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xffffffff # initialize rs1
li x4, 0x003db0dd # initialize rs2
beq x15, x4, some_label_for_btype_21193667510 # perform operation 
addi x0, x1, 1
some_label_for_btype_21193667510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x003db0dd # initialize rs1
li x4, 0x003db0dd # initialize rs2
beq x15, x4, some_label_for_btype_21193667511 # perform operation 
addi x0, x1, 1
some_label_for_btype_21193667511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x31, 0xedda6196 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xfffffffe # initialize rs1
li x26, 0x68167afd # initialize rs2
beq x14, x26, some_label_for_btype_26159566110 # perform operation 
addi x0, x1, 1
some_label_for_btype_26159566110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x68167afd # initialize rs1
li x26, 0x68167afd # initialize rs2
beq x14, x26, some_label_for_btype_26159566111 # perform operation 
addi x0, x1, 1
some_label_for_btype_26159566111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x10, 0x9775eeaf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5bbc8877 # initialize rs1
li x28, 0x0661e635 # initialize rs2
beq x5, x28, some_label_for_btype_40072082550 # perform operation 
addi x0, x1, 1
some_label_for_btype_40072082550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x0661e635 # initialize rs1
li x28, 0x0661e635 # initialize rs2
beq x5, x28, some_label_for_btype_40072082551 # perform operation 
addi x0, x1, 1
some_label_for_btype_40072082551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x30, 0x25473977 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xaaaaaaaa # initialize rs1
li x7, 0x4571605a # initialize rs2
beq x20, x7, some_label_for_btype_24789530510 # perform operation 
addi x0, x1, 1
some_label_for_btype_24789530510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x4571605a # initialize rs1
li x7, 0x4571605a # initialize rs2
beq x20, x7, some_label_for_btype_24789530511 # perform operation 
addi x0, x1, 1
some_label_for_btype_24789530511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x6, 0xabae20c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x55555555 # initialize rs1
li x31, 0x500e2d6d # initialize rs2
beq x17, x31, some_label_for_btype_13262679820 # perform operation 
addi x0, x1, 1
some_label_for_btype_13262679820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x500e2d6d # initialize rs1
li x31, 0x500e2d6d # initialize rs2
beq x17, x31, some_label_for_btype_13262679821 # perform operation 
addi x0, x1, 1
some_label_for_btype_13262679821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x16, 0xe8239be9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x07fd4672 # initialize rs1
li x21, 0x00000000 # initialize rs2
beq x17, x21, some_label_for_btype_6773058880 # perform operation 
addi x0, x1, 1
some_label_for_btype_6773058880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000000 # initialize rs1
li x21, 0x00000000 # initialize rs2
beq x17, x21, some_label_for_btype_6773058881 # perform operation 
addi x0, x1, 1
some_label_for_btype_6773058881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x26, 0x7519a064 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x543693c6 # initialize rs1
li x25, 0x00000001 # initialize rs2
beq x9, x25, some_label_for_btype_21835020620 # perform operation 
addi x0, x1, 1
some_label_for_btype_21835020620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x00000001 # initialize rs1
li x25, 0x00000001 # initialize rs2
beq x9, x25, some_label_for_btype_21835020621 # perform operation 
addi x0, x1, 1
some_label_for_btype_21835020621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0x7dcd1b3a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x9a540f67 # initialize rs1
li x25, 0x00000002 # initialize rs2
beq x12, x25, some_label_for_btype_21175376450 # perform operation 
addi x0, x1, 1
some_label_for_btype_21175376450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000002 # initialize rs1
li x25, 0x00000002 # initialize rs2
beq x12, x25, some_label_for_btype_21175376451 # perform operation 
addi x0, x1, 1
some_label_for_btype_21175376451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x20, 0xa546947b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x654554f7 # initialize rs1
li x24, 0x80000000 # initialize rs2
beq x1, x24, some_label_for_btype_32389320610 # perform operation 
addi x0, x1, 1
some_label_for_btype_32389320610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x80000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
beq x1, x24, some_label_for_btype_32389320611 # perform operation 
addi x0, x1, 1
some_label_for_btype_32389320611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x10, 0x0af84578 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xdc0055b5 # initialize rs1
li x23, 0x80000001 # initialize rs2
beq x28, x23, some_label_for_btype_13727950020 # perform operation 
addi x0, x1, 1
some_label_for_btype_13727950020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x80000001 # initialize rs1
li x23, 0x80000001 # initialize rs2
beq x28, x23, some_label_for_btype_13727950021 # perform operation 
addi x0, x1, 1
some_label_for_btype_13727950021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x26, 0xef0c4e6c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x79e6c65b # initialize rs1
li x3, 0x7fffffff # initialize rs2
beq x9, x3, some_label_for_btype_16553622190 # perform operation 
addi x0, x1, 1
some_label_for_btype_16553622190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x7fffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
beq x9, x3, some_label_for_btype_16553622191 # perform operation 
addi x0, x1, 1
some_label_for_btype_16553622191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x29, 0x1532cafe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xcd62806a # initialize rs1
li x6, 0x7ffffffe # initialize rs2
beq x27, x6, some_label_for_btype_32412169310 # perform operation 
addi x0, x1, 1
some_label_for_btype_32412169310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x7ffffffe # initialize rs1
li x6, 0x7ffffffe # initialize rs2
beq x27, x6, some_label_for_btype_32412169311 # perform operation 
addi x0, x1, 1
some_label_for_btype_32412169311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x6, 0xe8b5a07a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xfc11c1b8 # initialize rs1
li x7, 0xffffffff # initialize rs2
beq x19, x7, some_label_for_btype_35465996820 # perform operation 
addi x0, x1, 1
some_label_for_btype_35465996820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xffffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
beq x19, x7, some_label_for_btype_35465996821 # perform operation 
addi x0, x1, 1
some_label_for_btype_35465996821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x29, 0xccabcc91 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xf1523ef3 # initialize rs1
li x26, 0xfffffffe # initialize rs2
beq x30, x26, some_label_for_btype_40585652900 # perform operation 
addi x0, x1, 1
some_label_for_btype_40585652900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xfffffffe # initialize rs1
li x26, 0xfffffffe # initialize rs2
beq x30, x26, some_label_for_btype_40585652901 # perform operation 
addi x0, x1, 1
some_label_for_btype_40585652901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x20, 0xce2c4bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xd2df376d # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
beq x29, x26, some_label_for_btype_16712862090 # perform operation 
addi x0, x1, 1
some_label_for_btype_16712862090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x5bbc8877 # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
beq x29, x26, some_label_for_btype_16712862091 # perform operation 
addi x0, x1, 1
some_label_for_btype_16712862091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x20, 0x9445bf90 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x4f6c6149 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
beq x7, x2, some_label_for_btype_10626863270 # perform operation 
addi x0, x1, 1
some_label_for_btype_10626863270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
beq x7, x2, some_label_for_btype_10626863271 # perform operation 
addi x0, x1, 1
some_label_for_btype_10626863271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x6, 0x77e5e922 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xb54d5beb # initialize rs1
li x13, 0x55555555 # initialize rs2
beq x3, x13, some_label_for_btype_13751686850 # perform operation 
addi x0, x1, 1
some_label_for_btype_13751686850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x55555555 # initialize rs1
li x13, 0x55555555 # initialize rs2
beq x3, x13, some_label_for_btype_13751686851 # perform operation 
addi x0, x1, 1
some_label_for_btype_13751686851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x12, 0x19eab4ff # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x00000000 # initialize rs1
li x1, 0x00000000 # initialize rs2
beq x26, x1, some_label_for_btype_33812156690 # perform operation 
addi x0, x1, 1
some_label_for_btype_33812156690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x00000000 # initialize rs1
li x1, 0x00000000 # initialize rs2
beq x26, x1, some_label_for_btype_33812156691 # perform operation 
addi x0, x1, 1
some_label_for_btype_33812156691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x841a7fb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000000 # initialize rs1
li x9, 0x00000001 # initialize rs2
beq x30, x9, some_label_for_btype_9829893500 # perform operation 
addi x0, x1, 1
some_label_for_btype_9829893500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x00000001 # initialize rs1
li x9, 0x00000001 # initialize rs2
beq x30, x9, some_label_for_btype_9829893501 # perform operation 
addi x0, x1, 1
some_label_for_btype_9829893501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x2, 0x540f56cd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x00000000 # initialize rs1
li x25, 0x00000002 # initialize rs2
beq x22, x25, some_label_for_btype_31420399590 # perform operation 
addi x0, x1, 1
some_label_for_btype_31420399590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x00000002 # initialize rs1
li x25, 0x00000002 # initialize rs2
beq x22, x25, some_label_for_btype_31420399591 # perform operation 
addi x0, x1, 1
some_label_for_btype_31420399591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x3, 0xfd649343 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000000 # initialize rs1
li x26, 0x80000000 # initialize rs2
beq x15, x26, some_label_for_btype_2872798360 # perform operation 
addi x0, x1, 1
some_label_for_btype_2872798360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x80000000 # initialize rs1
li x26, 0x80000000 # initialize rs2
beq x15, x26, some_label_for_btype_2872798361 # perform operation 
addi x0, x1, 1
some_label_for_btype_2872798361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x9, 0x791d969f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000 # initialize rs1
li x30, 0x80000001 # initialize rs2
beq x28, x30, some_label_for_btype_33961035010 # perform operation 
addi x0, x1, 1
some_label_for_btype_33961035010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x80000001 # initialize rs1
li x30, 0x80000001 # initialize rs2
beq x28, x30, some_label_for_btype_33961035011 # perform operation 
addi x0, x1, 1
some_label_for_btype_33961035011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x14, 0x77a80880 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000000 # initialize rs1
li x4, 0x7fffffff # initialize rs2
beq x18, x4, some_label_for_btype_3572971640 # perform operation 
addi x0, x1, 1
some_label_for_btype_3572971640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x7fffffff # initialize rs1
li x4, 0x7fffffff # initialize rs2
beq x18, x4, some_label_for_btype_3572971641 # perform operation 
addi x0, x1, 1
some_label_for_btype_3572971641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x15, 0x7a9f9320 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000000 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
beq x27, x10, some_label_for_btype_26698285920 # perform operation 
addi x0, x1, 1
some_label_for_btype_26698285920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x7ffffffe # initialize rs1
li x10, 0x7ffffffe # initialize rs2
beq x27, x10, some_label_for_btype_26698285921 # perform operation 
addi x0, x1, 1
some_label_for_btype_26698285921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x21, 0xc8f013ee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000000 # initialize rs1
li x20, 0xffffffff # initialize rs2
beq x31, x20, some_label_for_btype_1710772120 # perform operation 
addi x0, x1, 1
some_label_for_btype_1710772120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xffffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
beq x31, x20, some_label_for_btype_1710772121 # perform operation 
addi x0, x1, 1
some_label_for_btype_1710772121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x16, 0x2e067860 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x00000000 # initialize rs1
li x30, 0xfffffffe # initialize rs2
beq x11, x30, some_label_for_btype_1958156840 # perform operation 
addi x0, x1, 1
some_label_for_btype_1958156840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xfffffffe # initialize rs1
li x30, 0xfffffffe # initialize rs2
beq x11, x30, some_label_for_btype_1958156841 # perform operation 
addi x0, x1, 1
some_label_for_btype_1958156841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x17, 0x9d7928fa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000000 # initialize rs1
li x12, 0x5bbc8877 # initialize rs2
beq x31, x12, some_label_for_btype_24668681720 # perform operation 
addi x0, x1, 1
some_label_for_btype_24668681720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x5bbc8877 # initialize rs1
li x12, 0x5bbc8877 # initialize rs2
beq x31, x12, some_label_for_btype_24668681721 # perform operation 
addi x0, x1, 1
some_label_for_btype_24668681721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x26, 0xf1eb63b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x00000000 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
beq x5, x17, some_label_for_btype_10527639910 # perform operation 
addi x0, x1, 1
some_label_for_btype_10527639910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
beq x5, x17, some_label_for_btype_10527639911 # perform operation 
addi x0, x1, 1
some_label_for_btype_10527639911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x22, 0x18e40ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x00000000 # initialize rs1
li x12, 0x55555555 # initialize rs2
beq x5, x12, some_label_for_btype_30294407030 # perform operation 
addi x0, x1, 1
some_label_for_btype_30294407030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x55555555 # initialize rs1
li x12, 0x55555555 # initialize rs2
beq x5, x12, some_label_for_btype_30294407031 # perform operation 
addi x0, x1, 1
some_label_for_btype_30294407031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x22, 0xcbdd8f56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000001 # initialize rs1
li x29, 0x00000000 # initialize rs2
beq x2, x29, some_label_for_btype_946944360 # perform operation 
addi x0, x1, 1
some_label_for_btype_946944360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x00000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
beq x2, x29, some_label_for_btype_946944361 # perform operation 
addi x0, x1, 1
some_label_for_btype_946944361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x9, 0x4ca4b894 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000001 # initialize rs1
li x2, 0x00000001 # initialize rs2
beq x27, x2, some_label_for_btype_34412426070 # perform operation 
addi x0, x1, 1
some_label_for_btype_34412426070:
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
beq x27, x2, some_label_for_btype_34412426071 # perform operation 
addi x0, x1, 1
some_label_for_btype_34412426071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x26, 0xb6c7ec17 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000001 # initialize rs1
li x21, 0x00000002 # initialize rs2
beq x19, x21, some_label_for_btype_4390175990 # perform operation 
addi x0, x1, 1
some_label_for_btype_4390175990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000002 # initialize rs1
li x21, 0x00000002 # initialize rs2
beq x19, x21, some_label_for_btype_4390175991 # perform operation 
addi x0, x1, 1
some_label_for_btype_4390175991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x21, 0x1ebd3f06 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x00000001 # initialize rs1
li x4, 0x80000000 # initialize rs2
beq x22, x4, some_label_for_btype_2868624260 # perform operation 
addi x0, x1, 1
some_label_for_btype_2868624260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x80000000 # initialize rs1
li x4, 0x80000000 # initialize rs2
beq x22, x4, some_label_for_btype_2868624261 # perform operation 
addi x0, x1, 1
some_label_for_btype_2868624261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x2, 0x42339130 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x00000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
beq x23, x11, some_label_for_btype_24094388810 # perform operation 
addi x0, x1, 1
some_label_for_btype_24094388810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x80000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
beq x23, x11, some_label_for_btype_24094388811 # perform operation 
addi x0, x1, 1
some_label_for_btype_24094388811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x17, 0x7c50fc45 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x00000001 # initialize rs1
li x28, 0x7fffffff # initialize rs2
beq x4, x28, some_label_for_btype_18536516670 # perform operation 
addi x0, x1, 1
some_label_for_btype_18536516670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x7fffffff # initialize rs1
li x28, 0x7fffffff # initialize rs2
beq x4, x28, some_label_for_btype_18536516671 # perform operation 
addi x0, x1, 1
some_label_for_btype_18536516671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x16, 0x96b78a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
beq x28, x26, some_label_for_btype_35627920680 # perform operation 
addi x0, x1, 1
some_label_for_btype_35627920680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7ffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
beq x28, x26, some_label_for_btype_35627920681 # perform operation 
addi x0, x1, 1
some_label_for_btype_35627920681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x8, 0x42e532da # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x00000001 # initialize rs1
li x21, 0xffffffff # initialize rs2
beq x7, x21, some_label_for_btype_12121573410 # perform operation 
addi x0, x1, 1
some_label_for_btype_12121573410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
beq x7, x21, some_label_for_btype_12121573411 # perform operation 
addi x0, x1, 1
some_label_for_btype_12121573411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x9, 0xb2a29e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000001 # initialize rs1
li x5, 0xfffffffe # initialize rs2
beq x2, x5, some_label_for_btype_36032709940 # perform operation 
addi x0, x1, 1
some_label_for_btype_36032709940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xfffffffe # initialize rs1
li x5, 0xfffffffe # initialize rs2
beq x2, x5, some_label_for_btype_36032709941 # perform operation 
addi x0, x1, 1
some_label_for_btype_36032709941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x12, 0xbe2e4d14 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000001 # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
beq x2, x15, some_label_for_btype_16633887890 # perform operation 
addi x0, x1, 1
some_label_for_btype_16633887890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x5bbc8877 # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
beq x2, x15, some_label_for_btype_16633887891 # perform operation 
addi x0, x1, 1
some_label_for_btype_16633887891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x9, 0x76d1091a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x00000001 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
beq x26, x29, some_label_for_btype_34863046580 # perform operation 
addi x0, x1, 1
some_label_for_btype_34863046580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
beq x26, x29, some_label_for_btype_34863046581 # perform operation 
addi x0, x1, 1
some_label_for_btype_34863046581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x6, 0x787079cd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000001 # initialize rs1
li x13, 0x55555555 # initialize rs2
beq x27, x13, some_label_for_btype_27218570900 # perform operation 
addi x0, x1, 1
some_label_for_btype_27218570900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x55555555 # initialize rs1
li x13, 0x55555555 # initialize rs2
beq x27, x13, some_label_for_btype_27218570901 # perform operation 
addi x0, x1, 1
some_label_for_btype_27218570901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x2, 0x01f3fa0f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000002 # initialize rs1
li x9, 0x00000000 # initialize rs2
beq x17, x9, some_label_for_btype_38177588880 # perform operation 
addi x0, x1, 1
some_label_for_btype_38177588880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
beq x17, x9, some_label_for_btype_38177588881 # perform operation 
addi x0, x1, 1
some_label_for_btype_38177588881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x24, 0x3bbc262f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x00000002 # initialize rs1
li x21, 0x00000001 # initialize rs2
beq x29, x21, some_label_for_btype_30440699550 # perform operation 
addi x0, x1, 1
some_label_for_btype_30440699550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x00000001 # initialize rs1
li x21, 0x00000001 # initialize rs2
beq x29, x21, some_label_for_btype_30440699551 # perform operation 
addi x0, x1, 1
some_label_for_btype_30440699551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x10, 0x1eef4a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000002 # initialize rs1
li x9, 0x00000002 # initialize rs2
beq x12, x9, some_label_for_btype_6768299110 # perform operation 
addi x0, x1, 1
some_label_for_btype_6768299110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000002 # initialize rs1
li x9, 0x00000002 # initialize rs2
beq x12, x9, some_label_for_btype_6768299111 # perform operation 
addi x0, x1, 1
some_label_for_btype_6768299111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x4, 0x9e854909 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x00000002 # initialize rs1
li x16, 0x80000000 # initialize rs2
beq x22, x16, some_label_for_btype_7366524040 # perform operation 
addi x0, x1, 1
some_label_for_btype_7366524040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x80000000 # initialize rs1
li x16, 0x80000000 # initialize rs2
beq x22, x16, some_label_for_btype_7366524041 # perform operation 
addi x0, x1, 1
some_label_for_btype_7366524041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x18, 0x5f7cc41a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x00000002 # initialize rs1
li x13, 0x80000001 # initialize rs2
beq x24, x13, some_label_for_btype_15251895920 # perform operation 
addi x0, x1, 1
some_label_for_btype_15251895920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x80000001 # initialize rs1
li x13, 0x80000001 # initialize rs2
beq x24, x13, some_label_for_btype_15251895921 # perform operation 
addi x0, x1, 1
some_label_for_btype_15251895921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x6, 0xc89a96ee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x00000002 # initialize rs1
li x21, 0x7fffffff # initialize rs2
beq x23, x21, some_label_for_btype_7637079430 # perform operation 
addi x0, x1, 1
some_label_for_btype_7637079430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x7fffffff # initialize rs1
li x21, 0x7fffffff # initialize rs2
beq x23, x21, some_label_for_btype_7637079431 # perform operation 
addi x0, x1, 1
some_label_for_btype_7637079431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x1, 0xc3355b9e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x00000002 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
beq x29, x28, some_label_for_btype_30132082780 # perform operation 
addi x0, x1, 1
some_label_for_btype_30132082780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x7ffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
beq x29, x28, some_label_for_btype_30132082781 # perform operation 
addi x0, x1, 1
some_label_for_btype_30132082781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x3, 0xb8250b90 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000002 # initialize rs1
li x21, 0xffffffff # initialize rs2
beq x19, x21, some_label_for_btype_28141492090 # perform operation 
addi x0, x1, 1
some_label_for_btype_28141492090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
beq x19, x21, some_label_for_btype_28141492091 # perform operation 
addi x0, x1, 1
some_label_for_btype_28141492091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x7, 0x9f68113e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000002 # initialize rs1
li x26, 0xfffffffe # initialize rs2
beq x18, x26, some_label_for_btype_35729639420 # perform operation 
addi x0, x1, 1
some_label_for_btype_35729639420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xfffffffe # initialize rs1
li x26, 0xfffffffe # initialize rs2
beq x18, x26, some_label_for_btype_35729639421 # perform operation 
addi x0, x1, 1
some_label_for_btype_35729639421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x18, 0xa2a9f4ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x00000002 # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
beq x3, x7, some_label_for_btype_4300008820 # perform operation 
addi x0, x1, 1
some_label_for_btype_4300008820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x5bbc8877 # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
beq x3, x7, some_label_for_btype_4300008821 # perform operation 
addi x0, x1, 1
some_label_for_btype_4300008821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x6, 0xe9c791aa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000002 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
beq x27, x9, some_label_for_btype_24792865020 # perform operation 
addi x0, x1, 1
some_label_for_btype_24792865020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
beq x27, x9, some_label_for_btype_24792865021 # perform operation 
addi x0, x1, 1
some_label_for_btype_24792865021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x24, 0x32b392e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000002 # initialize rs1
li x6, 0x55555555 # initialize rs2
beq x14, x6, some_label_for_btype_1064545280 # perform operation 
addi x0, x1, 1
some_label_for_btype_1064545280:
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
beq x14, x6, some_label_for_btype_1064545281 # perform operation 
addi x0, x1, 1
some_label_for_btype_1064545281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x13, 0x2659fa08 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x80000000 # initialize rs1
li x12, 0x00000000 # initialize rs2
beq x5, x12, some_label_for_btype_11941185090 # perform operation 
addi x0, x1, 1
some_label_for_btype_11941185090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x00000000 # initialize rs1
li x12, 0x00000000 # initialize rs2
beq x5, x12, some_label_for_btype_11941185091 # perform operation 
addi x0, x1, 1
some_label_for_btype_11941185091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x15, 0x0ea39958 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x80000000 # initialize rs1
li x24, 0x00000001 # initialize rs2
beq x10, x24, some_label_for_btype_8970669570 # perform operation 
addi x0, x1, 1
some_label_for_btype_8970669570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x00000001 # initialize rs1
li x24, 0x00000001 # initialize rs2
beq x10, x24, some_label_for_btype_8970669571 # perform operation 
addi x0, x1, 1
some_label_for_btype_8970669571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x15, 0xf915b582 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x80000000 # initialize rs1
li x8, 0x00000002 # initialize rs2
beq x2, x8, some_label_for_btype_41374565660 # perform operation 
addi x0, x1, 1
some_label_for_btype_41374565660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x00000002 # initialize rs1
li x8, 0x00000002 # initialize rs2
beq x2, x8, some_label_for_btype_41374565661 # perform operation 
addi x0, x1, 1
some_label_for_btype_41374565661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x12, 0x4fcfdb3a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x80000000 # initialize rs1
li x1, 0x80000000 # initialize rs2
beq x2, x1, some_label_for_btype_27124551710 # perform operation 
addi x0, x1, 1
some_label_for_btype_27124551710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x80000000 # initialize rs1
li x1, 0x80000000 # initialize rs2
beq x2, x1, some_label_for_btype_27124551711 # perform operation 
addi x0, x1, 1
some_label_for_btype_27124551711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x28, 0x98a1d76a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x80000000 # initialize rs1
li x17, 0x80000001 # initialize rs2
beq x30, x17, some_label_for_btype_8309715760 # perform operation 
addi x0, x1, 1
some_label_for_btype_8309715760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x80000001 # initialize rs1
li x17, 0x80000001 # initialize rs2
beq x30, x17, some_label_for_btype_8309715761 # perform operation 
addi x0, x1, 1
some_label_for_btype_8309715761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x18, 0x9a722ba5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x80000000 # initialize rs1
li x22, 0x7fffffff # initialize rs2
beq x26, x22, some_label_for_btype_18293040780 # perform operation 
addi x0, x1, 1
some_label_for_btype_18293040780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x7fffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
beq x26, x22, some_label_for_btype_18293040781 # perform operation 
addi x0, x1, 1
some_label_for_btype_18293040781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x21, 0xf7300019 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x80000000 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
beq x9, x17, some_label_for_btype_10740125040 # perform operation 
addi x0, x1, 1
some_label_for_btype_10740125040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x7ffffffe # initialize rs1
li x17, 0x7ffffffe # initialize rs2
beq x9, x17, some_label_for_btype_10740125041 # perform operation 
addi x0, x1, 1
some_label_for_btype_10740125041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x6, 0x38a97499 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x80000000 # initialize rs1
li x30, 0xffffffff # initialize rs2
beq x22, x30, some_label_for_btype_22518100760 # perform operation 
addi x0, x1, 1
some_label_for_btype_22518100760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xffffffff # initialize rs1
li x30, 0xffffffff # initialize rs2
beq x22, x30, some_label_for_btype_22518100761 # perform operation 
addi x0, x1, 1
some_label_for_btype_22518100761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x3, 0xe6780b82 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x80000000 # initialize rs1
li x7, 0xfffffffe # initialize rs2
beq x14, x7, some_label_for_btype_28800622600 # perform operation 
addi x0, x1, 1
some_label_for_btype_28800622600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xfffffffe # initialize rs1
li x7, 0xfffffffe # initialize rs2
beq x14, x7, some_label_for_btype_28800622601 # perform operation 
addi x0, x1, 1
some_label_for_btype_28800622601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x26, 0xe2384f38 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x80000000 # initialize rs1
li x3, 0x5bbc8877 # initialize rs2
beq x25, x3, some_label_for_btype_30103923900 # perform operation 
addi x0, x1, 1
some_label_for_btype_30103923900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x5bbc8877 # initialize rs1
li x3, 0x5bbc8877 # initialize rs2
beq x25, x3, some_label_for_btype_30103923901 # perform operation 
addi x0, x1, 1
some_label_for_btype_30103923901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x8, 0x573dfca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x80000000 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
beq x20, x10, some_label_for_btype_31779381580 # perform operation 
addi x0, x1, 1
some_label_for_btype_31779381580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
beq x20, x10, some_label_for_btype_31779381581 # perform operation 
addi x0, x1, 1
some_label_for_btype_31779381581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x15, 0xa535019b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x80000000 # initialize rs1
li x19, 0x55555555 # initialize rs2
beq x14, x19, some_label_for_btype_34825359530 # perform operation 
addi x0, x1, 1
some_label_for_btype_34825359530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x55555555 # initialize rs1
li x19, 0x55555555 # initialize rs2
beq x14, x19, some_label_for_btype_34825359531 # perform operation 
addi x0, x1, 1
some_label_for_btype_34825359531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x7, 0x5cb8a517 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x80000001 # initialize rs1
li x24, 0x00000000 # initialize rs2
beq x17, x24, some_label_for_btype_1565332840 # perform operation 
addi x0, x1, 1
some_label_for_btype_1565332840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000000 # initialize rs1
li x24, 0x00000000 # initialize rs2
beq x17, x24, some_label_for_btype_1565332841 # perform operation 
addi x0, x1, 1
some_label_for_btype_1565332841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x21, 0xff21ea58 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x80000001 # initialize rs1
li x19, 0x00000001 # initialize rs2
beq x9, x19, some_label_for_btype_41917280010 # perform operation 
addi x0, x1, 1
some_label_for_btype_41917280010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x00000001 # initialize rs1
li x19, 0x00000001 # initialize rs2
beq x9, x19, some_label_for_btype_41917280011 # perform operation 
addi x0, x1, 1
some_label_for_btype_41917280011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x7, 0x39a2c00a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x80000001 # initialize rs1
li x18, 0x00000002 # initialize rs2
beq x24, x18, some_label_for_btype_18516585340 # perform operation 
addi x0, x1, 1
some_label_for_btype_18516585340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x00000002 # initialize rs1
li x18, 0x00000002 # initialize rs2
beq x24, x18, some_label_for_btype_18516585341 # perform operation 
addi x0, x1, 1
some_label_for_btype_18516585341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x8, 0x9bfa1f96 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x80000001 # initialize rs1
li x3, 0x80000000 # initialize rs2
beq x15, x3, some_label_for_btype_829197100 # perform operation 
addi x0, x1, 1
some_label_for_btype_829197100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x80000000 # initialize rs1
li x3, 0x80000000 # initialize rs2
beq x15, x3, some_label_for_btype_829197101 # perform operation 
addi x0, x1, 1
some_label_for_btype_829197101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x15, 0x7019024f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x80000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
beq x8, x12, some_label_for_btype_35145709100 # perform operation 
addi x0, x1, 1
some_label_for_btype_35145709100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x80000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
beq x8, x12, some_label_for_btype_35145709101 # perform operation 
addi x0, x1, 1
some_label_for_btype_35145709101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x7, 0x1fff421f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x80000001 # initialize rs1
li x20, 0x7fffffff # initialize rs2
beq x28, x20, some_label_for_btype_7703300820 # perform operation 
addi x0, x1, 1
some_label_for_btype_7703300820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7fffffff # initialize rs1
li x20, 0x7fffffff # initialize rs2
beq x28, x20, some_label_for_btype_7703300821 # perform operation 
addi x0, x1, 1
some_label_for_btype_7703300821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x29, 0x9d993a9b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x80000001 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
beq x12, x19, some_label_for_btype_17458828250 # perform operation 
addi x0, x1, 1
some_label_for_btype_17458828250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7ffffffe # initialize rs1
li x19, 0x7ffffffe # initialize rs2
beq x12, x19, some_label_for_btype_17458828251 # perform operation 
addi x0, x1, 1
some_label_for_btype_17458828251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x23, 0x884fa595 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x80000001 # initialize rs1
li x2, 0xffffffff # initialize rs2
beq x13, x2, some_label_for_btype_40219173460 # perform operation 
addi x0, x1, 1
some_label_for_btype_40219173460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xffffffff # initialize rs1
li x2, 0xffffffff # initialize rs2
beq x13, x2, some_label_for_btype_40219173461 # perform operation 
addi x0, x1, 1
some_label_for_btype_40219173461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x13, 0x29848885 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x80000001 # initialize rs1
li x20, 0xfffffffe # initialize rs2
beq x28, x20, some_label_for_btype_20348442640 # perform operation 
addi x0, x1, 1
some_label_for_btype_20348442640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xfffffffe # initialize rs1
li x20, 0xfffffffe # initialize rs2
beq x28, x20, some_label_for_btype_20348442641 # perform operation 
addi x0, x1, 1
some_label_for_btype_20348442641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x30, 0xb366cd27 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x80000001 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
beq x16, x18, some_label_for_btype_25876938150 # perform operation 
addi x0, x1, 1
some_label_for_btype_25876938150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5bbc8877 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
beq x16, x18, some_label_for_btype_25876938151 # perform operation 
addi x0, x1, 1
some_label_for_btype_25876938151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x13, 0xfac70867 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x80000001 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
beq x12, x19, some_label_for_btype_5127374500 # perform operation 
addi x0, x1, 1
some_label_for_btype_5127374500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
beq x12, x19, some_label_for_btype_5127374501 # perform operation 
addi x0, x1, 1
some_label_for_btype_5127374501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x29, 0x00ee7c67 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x80000001 # initialize rs1
li x1, 0x55555555 # initialize rs2
beq x25, x1, some_label_for_btype_41934491970 # perform operation 
addi x0, x1, 1
some_label_for_btype_41934491970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x55555555 # initialize rs1
li x1, 0x55555555 # initialize rs2
beq x25, x1, some_label_for_btype_41934491971 # perform operation 
addi x0, x1, 1
some_label_for_btype_41934491971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x17, 0x12ce3ed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7fffffff # initialize rs1
li x14, 0x00000000 # initialize rs2
beq x28, x14, some_label_for_btype_36906039360 # perform operation 
addi x0, x1, 1
some_label_for_btype_36906039360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x00000000 # initialize rs1
li x14, 0x00000000 # initialize rs2
beq x28, x14, some_label_for_btype_36906039361 # perform operation 
addi x0, x1, 1
some_label_for_btype_36906039361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x2, 0xb6ad49b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x7fffffff # initialize rs1
li x17, 0x00000001 # initialize rs2
beq x13, x17, some_label_for_btype_5482409890 # perform operation 
addi x0, x1, 1
some_label_for_btype_5482409890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000001 # initialize rs1
li x17, 0x00000001 # initialize rs2
beq x13, x17, some_label_for_btype_5482409891 # perform operation 
addi x0, x1, 1
some_label_for_btype_5482409891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x30, 0xe6cbe3a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7fffffff # initialize rs1
li x13, 0x00000002 # initialize rs2
beq x29, x13, some_label_for_btype_19619756220 # perform operation 
addi x0, x1, 1
some_label_for_btype_19619756220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x00000002 # initialize rs1
li x13, 0x00000002 # initialize rs2
beq x29, x13, some_label_for_btype_19619756221 # perform operation 
addi x0, x1, 1
some_label_for_btype_19619756221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x23, 0x3ca69542 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x7fffffff # initialize rs1
li x20, 0x80000000 # initialize rs2
beq x9, x20, some_label_for_btype_35878069020 # perform operation 
addi x0, x1, 1
some_label_for_btype_35878069020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x80000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
beq x9, x20, some_label_for_btype_35878069021 # perform operation 
addi x0, x1, 1
some_label_for_btype_35878069021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x27, 0x8e55c42f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x7fffffff # initialize rs1
li x21, 0x80000001 # initialize rs2
beq x19, x21, some_label_for_btype_2717210210 # perform operation 
addi x0, x1, 1
some_label_for_btype_2717210210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x80000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
beq x19, x21, some_label_for_btype_2717210211 # perform operation 
addi x0, x1, 1
some_label_for_btype_2717210211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x17, 0xf37863f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7fffffff # initialize rs1
li x30, 0x7fffffff # initialize rs2
beq x18, x30, some_label_for_btype_27302802350 # perform operation 
addi x0, x1, 1
some_label_for_btype_27302802350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x7fffffff # initialize rs1
li x30, 0x7fffffff # initialize rs2
beq x18, x30, some_label_for_btype_27302802351 # perform operation 
addi x0, x1, 1
some_label_for_btype_27302802351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x10, 0x918b59ec # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7fffffff # initialize rs1
li x8, 0x7ffffffe # initialize rs2
beq x28, x8, some_label_for_btype_6858408870 # perform operation 
addi x0, x1, 1
some_label_for_btype_6858408870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7ffffffe # initialize rs1
li x8, 0x7ffffffe # initialize rs2
beq x28, x8, some_label_for_btype_6858408871 # perform operation 
addi x0, x1, 1
some_label_for_btype_6858408871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x11, 0xf956be3e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7fffffff # initialize rs1
li x26, 0xffffffff # initialize rs2
beq x29, x26, some_label_for_btype_31000594930 # perform operation 
addi x0, x1, 1
some_label_for_btype_31000594930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xffffffff # initialize rs1
li x26, 0xffffffff # initialize rs2
beq x29, x26, some_label_for_btype_31000594931 # perform operation 
addi x0, x1, 1
some_label_for_btype_31000594931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x29, 0x96a743de # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x7fffffff # initialize rs1
li x23, 0xfffffffe # initialize rs2
beq x15, x23, some_label_for_btype_42698137370 # perform operation 
addi x0, x1, 1
some_label_for_btype_42698137370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xfffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
beq x15, x23, some_label_for_btype_42698137371 # perform operation 
addi x0, x1, 1
some_label_for_btype_42698137371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x18, 0x799c82ee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7fffffff # initialize rs1
li x31, 0x5bbc8877 # initialize rs2
beq x29, x31, some_label_for_btype_32926002940 # perform operation 
addi x0, x1, 1
some_label_for_btype_32926002940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x5bbc8877 # initialize rs1
li x31, 0x5bbc8877 # initialize rs2
beq x29, x31, some_label_for_btype_32926002941 # perform operation 
addi x0, x1, 1
some_label_for_btype_32926002941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x23, 0x7742ab69 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x7fffffff # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
beq x26, x1, some_label_for_btype_27900607080 # perform operation 
addi x0, x1, 1
some_label_for_btype_27900607080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
beq x26, x1, some_label_for_btype_27900607081 # perform operation 
addi x0, x1, 1
some_label_for_btype_27900607081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x12, 0x177a9335 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x7fffffff # initialize rs1
li x22, 0x55555555 # initialize rs2
beq x14, x22, some_label_for_btype_35090106910 # perform operation 
addi x0, x1, 1
some_label_for_btype_35090106910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x55555555 # initialize rs1
li x22, 0x55555555 # initialize rs2
beq x14, x22, some_label_for_btype_35090106911 # perform operation 
addi x0, x1, 1
some_label_for_btype_35090106911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x27, 0x716f9ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x7ffffffe # initialize rs1
li x31, 0x00000000 # initialize rs2
beq x5, x31, some_label_for_btype_12041403810 # perform operation 
addi x0, x1, 1
some_label_for_btype_12041403810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x00000000 # initialize rs1
li x31, 0x00000000 # initialize rs2
beq x5, x31, some_label_for_btype_12041403811 # perform operation 
addi x0, x1, 1
some_label_for_btype_12041403811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x19, 0x513ff3b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x7ffffffe # initialize rs1
li x12, 0x00000001 # initialize rs2
beq x26, x12, some_label_for_btype_16881544570 # perform operation 
addi x0, x1, 1
some_label_for_btype_16881544570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x00000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
beq x26, x12, some_label_for_btype_16881544571 # perform operation 
addi x0, x1, 1
some_label_for_btype_16881544571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x8, 0xef6f52f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x7ffffffe # initialize rs1
li x21, 0x00000002 # initialize rs2
beq x3, x21, some_label_for_btype_17608277620 # perform operation 
addi x0, x1, 1
some_label_for_btype_17608277620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000002 # initialize rs1
li x21, 0x00000002 # initialize rs2
beq x3, x21, some_label_for_btype_17608277621 # perform operation 
addi x0, x1, 1
some_label_for_btype_17608277621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x7, 0xd1845afd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7ffffffe # initialize rs1
li x1, 0x80000000 # initialize rs2
beq x18, x1, some_label_for_btype_6860192500 # perform operation 
addi x0, x1, 1
some_label_for_btype_6860192500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x80000000 # initialize rs1
li x1, 0x80000000 # initialize rs2
beq x18, x1, some_label_for_btype_6860192501 # perform operation 
addi x0, x1, 1
some_label_for_btype_6860192501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x30, 0xe36b9fb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x7ffffffe # initialize rs1
li x18, 0x80000001 # initialize rs2
beq x20, x18, some_label_for_btype_14021544510 # perform operation 
addi x0, x1, 1
some_label_for_btype_14021544510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x80000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
beq x20, x18, some_label_for_btype_14021544511 # perform operation 
addi x0, x1, 1
some_label_for_btype_14021544511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x19, 0x87e87d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x7ffffffe # initialize rs1
li x2, 0x7fffffff # initialize rs2
beq x8, x2, some_label_for_btype_4637487830 # perform operation 
addi x0, x1, 1
some_label_for_btype_4637487830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
beq x8, x2, some_label_for_btype_4637487831 # perform operation 
addi x0, x1, 1
some_label_for_btype_4637487831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x3, 0x2290f47b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x7ffffffe # initialize rs1
li x25, 0x7ffffffe # initialize rs2
beq x23, x25, some_label_for_btype_38436681420 # perform operation 
addi x0, x1, 1
some_label_for_btype_38436681420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x7ffffffe # initialize rs1
li x25, 0x7ffffffe # initialize rs2
beq x23, x25, some_label_for_btype_38436681421 # perform operation 
addi x0, x1, 1
some_label_for_btype_38436681421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x28, 0xde3f29da # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x7ffffffe # initialize rs1
li x7, 0xffffffff # initialize rs2
beq x20, x7, some_label_for_btype_13877410430 # perform operation 
addi x0, x1, 1
some_label_for_btype_13877410430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xffffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
beq x20, x7, some_label_for_btype_13877410431 # perform operation 
addi x0, x1, 1
some_label_for_btype_13877410431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x8, 0x55333d8b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x7ffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
beq x1, x3, some_label_for_btype_14566348730 # perform operation 
addi x0, x1, 1
some_label_for_btype_14566348730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xfffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
beq x1, x3, some_label_for_btype_14566348731 # perform operation 
addi x0, x1, 1
some_label_for_btype_14566348731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x18, 0x47925fe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x7ffffffe # initialize rs1
li x1, 0x5bbc8877 # initialize rs2
beq x22, x1, some_label_for_btype_14624542910 # perform operation 
addi x0, x1, 1
some_label_for_btype_14624542910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x5bbc8877 # initialize rs1
li x1, 0x5bbc8877 # initialize rs2
beq x22, x1, some_label_for_btype_14624542911 # perform operation 
addi x0, x1, 1
some_label_for_btype_14624542911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x14, 0x81dddc4c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x7ffffffe # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
beq x31, x5, some_label_for_btype_22707931550 # perform operation 
addi x0, x1, 1
some_label_for_btype_22707931550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
beq x31, x5, some_label_for_btype_22707931551 # perform operation 
addi x0, x1, 1
some_label_for_btype_22707931551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x13, 0x51e25ba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7ffffffe # initialize rs1
li x16, 0x55555555 # initialize rs2
beq x24, x16, some_label_for_btype_41363700620 # perform operation 
addi x0, x1, 1
some_label_for_btype_41363700620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x55555555 # initialize rs1
li x16, 0x55555555 # initialize rs2
beq x24, x16, some_label_for_btype_41363700621 # perform operation 
addi x0, x1, 1
some_label_for_btype_41363700621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x17, 0xa67cd13f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xffffffff # initialize rs1
li x8, 0x00000000 # initialize rs2
beq x1, x8, some_label_for_btype_34421133470 # perform operation 
addi x0, x1, 1
some_label_for_btype_34421133470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x00000000 # initialize rs1
li x8, 0x00000000 # initialize rs2
beq x1, x8, some_label_for_btype_34421133471 # perform operation 
addi x0, x1, 1
some_label_for_btype_34421133471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x18, 0x2d16e0c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xffffffff # initialize rs1
li x11, 0x00000001 # initialize rs2
beq x19, x11, some_label_for_btype_22133986070 # perform operation 
addi x0, x1, 1
some_label_for_btype_22133986070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000001 # initialize rs1
li x11, 0x00000001 # initialize rs2
beq x19, x11, some_label_for_btype_22133986071 # perform operation 
addi x0, x1, 1
some_label_for_btype_22133986071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x16, 0x9caca565 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xffffffff # initialize rs1
li x27, 0x00000002 # initialize rs2
beq x7, x27, some_label_for_btype_25546726910 # perform operation 
addi x0, x1, 1
some_label_for_btype_25546726910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000002 # initialize rs1
li x27, 0x00000002 # initialize rs2
beq x7, x27, some_label_for_btype_25546726911 # perform operation 
addi x0, x1, 1
some_label_for_btype_25546726911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x20, 0x114ee720 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xffffffff # initialize rs1
li x26, 0x80000000 # initialize rs2
beq x7, x26, some_label_for_btype_38247976820 # perform operation 
addi x0, x1, 1
some_label_for_btype_38247976820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x80000000 # initialize rs1
li x26, 0x80000000 # initialize rs2
beq x7, x26, some_label_for_btype_38247976821 # perform operation 
addi x0, x1, 1
some_label_for_btype_38247976821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x6, 0x8ac37c6b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xffffffff # initialize rs1
li x23, 0x80000001 # initialize rs2
beq x25, x23, some_label_for_btype_6431200920 # perform operation 
addi x0, x1, 1
some_label_for_btype_6431200920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x80000001 # initialize rs1
li x23, 0x80000001 # initialize rs2
beq x25, x23, some_label_for_btype_6431200921 # perform operation 
addi x0, x1, 1
some_label_for_btype_6431200921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x19, 0x73e32765 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xffffffff # initialize rs1
li x20, 0x7fffffff # initialize rs2
beq x21, x20, some_label_for_btype_21307542820 # perform operation 
addi x0, x1, 1
some_label_for_btype_21307542820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x7fffffff # initialize rs1
li x20, 0x7fffffff # initialize rs2
beq x21, x20, some_label_for_btype_21307542821 # perform operation 
addi x0, x1, 1
some_label_for_btype_21307542821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x18, 0x5e3b8278 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xffffffff # initialize rs1
li x5, 0x7ffffffe # initialize rs2
beq x3, x5, some_label_for_btype_3901001450 # perform operation 
addi x0, x1, 1
some_label_for_btype_3901001450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x7ffffffe # initialize rs1
li x5, 0x7ffffffe # initialize rs2
beq x3, x5, some_label_for_btype_3901001451 # perform operation 
addi x0, x1, 1
some_label_for_btype_3901001451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x16, 0xe6832156 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xffffffff # initialize rs1
li x12, 0xffffffff # initialize rs2
beq x28, x12, some_label_for_btype_42648148420 # perform operation 
addi x0, x1, 1
some_label_for_btype_42648148420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xffffffff # initialize rs1
li x12, 0xffffffff # initialize rs2
beq x28, x12, some_label_for_btype_42648148421 # perform operation 
addi x0, x1, 1
some_label_for_btype_42648148421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0x80524909 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xffffffff # initialize rs1
li x24, 0xfffffffe # initialize rs2
beq x23, x24, some_label_for_btype_12987315340 # perform operation 
addi x0, x1, 1
some_label_for_btype_12987315340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xfffffffe # initialize rs1
li x24, 0xfffffffe # initialize rs2
beq x23, x24, some_label_for_btype_12987315341 # perform operation 
addi x0, x1, 1
some_label_for_btype_12987315341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x13, 0x6c55b706 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xffffffff # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
beq x12, x2, some_label_for_btype_26510896900 # perform operation 
addi x0, x1, 1
some_label_for_btype_26510896900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x5bbc8877 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
beq x12, x2, some_label_for_btype_26510896901 # perform operation 
addi x0, x1, 1
some_label_for_btype_26510896901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x4, 0x3f77d3ae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xffffffff # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
beq x31, x10, some_label_for_btype_19963579190 # perform operation 
addi x0, x1, 1
some_label_for_btype_19963579190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
beq x31, x10, some_label_for_btype_19963579191 # perform operation 
addi x0, x1, 1
some_label_for_btype_19963579191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x10, 0xd99bb747 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xffffffff # initialize rs1
li x14, 0x55555555 # initialize rs2
beq x6, x14, some_label_for_btype_4781443690 # perform operation 
addi x0, x1, 1
some_label_for_btype_4781443690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x55555555 # initialize rs1
li x14, 0x55555555 # initialize rs2
beq x6, x14, some_label_for_btype_4781443691 # perform operation 
addi x0, x1, 1
some_label_for_btype_4781443691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x26, 0x1a8a7384 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xfffffffe # initialize rs1
li x19, 0x00000000 # initialize rs2
beq x25, x19, some_label_for_btype_35843611030 # perform operation 
addi x0, x1, 1
some_label_for_btype_35843611030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x00000000 # initialize rs1
li x19, 0x00000000 # initialize rs2
beq x25, x19, some_label_for_btype_35843611031 # perform operation 
addi x0, x1, 1
some_label_for_btype_35843611031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x19, 0x0dbe9e15 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xfffffffe # initialize rs1
li x1, 0x00000001 # initialize rs2
beq x11, x1, some_label_for_btype_622224640 # perform operation 
addi x0, x1, 1
some_label_for_btype_622224640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x00000001 # initialize rs1
li x1, 0x00000001 # initialize rs2
beq x11, x1, some_label_for_btype_622224641 # perform operation 
addi x0, x1, 1
some_label_for_btype_622224641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x10, 0x500dfc15 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xfffffffe # initialize rs1
li x24, 0x00000002 # initialize rs2
beq x3, x24, some_label_for_btype_22864803700 # perform operation 
addi x0, x1, 1
some_label_for_btype_22864803700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000002 # initialize rs1
li x24, 0x00000002 # initialize rs2
beq x3, x24, some_label_for_btype_22864803701 # perform operation 
addi x0, x1, 1
some_label_for_btype_22864803701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x30, 0x86c18cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xfffffffe # initialize rs1
li x13, 0x80000000 # initialize rs2
beq x23, x13, some_label_for_btype_15203732860 # perform operation 
addi x0, x1, 1
some_label_for_btype_15203732860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x80000000 # initialize rs1
li x13, 0x80000000 # initialize rs2
beq x23, x13, some_label_for_btype_15203732861 # perform operation 
addi x0, x1, 1
some_label_for_btype_15203732861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x15, 0xdcecdfcf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xfffffffe # initialize rs1
li x20, 0x80000001 # initialize rs2
beq x23, x20, some_label_for_btype_33934939320 # perform operation 
addi x0, x1, 1
some_label_for_btype_33934939320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x80000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
beq x23, x20, some_label_for_btype_33934939321 # perform operation 
addi x0, x1, 1
some_label_for_btype_33934939321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x11, 0x66bfc5f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xfffffffe # initialize rs1
li x28, 0x7fffffff # initialize rs2
beq x4, x28, some_label_for_btype_19608929580 # perform operation 
addi x0, x1, 1
some_label_for_btype_19608929580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x7fffffff # initialize rs1
li x28, 0x7fffffff # initialize rs2
beq x4, x28, some_label_for_btype_19608929581 # perform operation 
addi x0, x1, 1
some_label_for_btype_19608929581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x1, 0x5007631f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xfffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
beq x8, x16, some_label_for_btype_36815957610 # perform operation 
addi x0, x1, 1
some_label_for_btype_36815957610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x7ffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
beq x8, x16, some_label_for_btype_36815957611 # perform operation 
addi x0, x1, 1
some_label_for_btype_36815957611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x16, 0x35422fb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xfffffffe # initialize rs1
li x15, 0xffffffff # initialize rs2
beq x3, x15, some_label_for_btype_30135037800 # perform operation 
addi x0, x1, 1
some_label_for_btype_30135037800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
beq x3, x15, some_label_for_btype_30135037801 # perform operation 
addi x0, x1, 1
some_label_for_btype_30135037801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x27, 0x81369e97 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xfffffffe # initialize rs1
li x10, 0xfffffffe # initialize rs2
beq x2, x10, some_label_for_btype_15122319940 # perform operation 
addi x0, x1, 1
some_label_for_btype_15122319940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xfffffffe # initialize rs1
li x10, 0xfffffffe # initialize rs2
beq x2, x10, some_label_for_btype_15122319941 # perform operation 
addi x0, x1, 1
some_label_for_btype_15122319941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x27, 0xa4579975 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xfffffffe # initialize rs1
li x16, 0x5bbc8877 # initialize rs2
beq x5, x16, some_label_for_btype_2786445640 # perform operation 
addi x0, x1, 1
some_label_for_btype_2786445640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x5bbc8877 # initialize rs1
li x16, 0x5bbc8877 # initialize rs2
beq x5, x16, some_label_for_btype_2786445641 # perform operation 
addi x0, x1, 1
some_label_for_btype_2786445641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x5, 0x73d59240 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xfffffffe # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
beq x3, x11, some_label_for_btype_943067340 # perform operation 
addi x0, x1, 1
some_label_for_btype_943067340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
beq x3, x11, some_label_for_btype_943067341 # perform operation 
addi x0, x1, 1
some_label_for_btype_943067341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x1, 0x7f973687 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xfffffffe # initialize rs1
li x9, 0x55555555 # initialize rs2
beq x27, x9, some_label_for_btype_25115574770 # perform operation 
addi x0, x1, 1
some_label_for_btype_25115574770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x55555555 # initialize rs1
li x9, 0x55555555 # initialize rs2
beq x27, x9, some_label_for_btype_25115574771 # perform operation 
addi x0, x1, 1
some_label_for_btype_25115574771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x2, 0xca4f1281 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x5bbc8877 # initialize rs1
li x18, 0x00000000 # initialize rs2
beq x3, x18, some_label_for_btype_13098319250 # perform operation 
addi x0, x1, 1
some_label_for_btype_13098319250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
beq x3, x18, some_label_for_btype_13098319251 # perform operation 
addi x0, x1, 1
some_label_for_btype_13098319251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x3, 0x287e4106 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x5bbc8877 # initialize rs1
li x15, 0x00000001 # initialize rs2
beq x14, x15, some_label_for_btype_33530654980 # perform operation 
addi x0, x1, 1
some_label_for_btype_33530654980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
beq x14, x15, some_label_for_btype_33530654981 # perform operation 
addi x0, x1, 1
some_label_for_btype_33530654981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x9, 0x86580e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x5bbc8877 # initialize rs1
li x23, 0x00000002 # initialize rs2
beq x20, x23, some_label_for_btype_3068565290 # perform operation 
addi x0, x1, 1
some_label_for_btype_3068565290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000002 # initialize rs1
li x23, 0x00000002 # initialize rs2
beq x20, x23, some_label_for_btype_3068565291 # perform operation 
addi x0, x1, 1
some_label_for_btype_3068565291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x11, 0xe8992858 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x5bbc8877 # initialize rs1
li x26, 0x80000000 # initialize rs2
beq x24, x26, some_label_for_btype_39625183430 # perform operation 
addi x0, x1, 1
some_label_for_btype_39625183430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x80000000 # initialize rs1
li x26, 0x80000000 # initialize rs2
beq x24, x26, some_label_for_btype_39625183431 # perform operation 
addi x0, x1, 1
some_label_for_btype_39625183431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x15, 0x9d8ee4ff # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x5bbc8877 # initialize rs1
li x21, 0x80000001 # initialize rs2
beq x13, x21, some_label_for_btype_19310987800 # perform operation 
addi x0, x1, 1
some_label_for_btype_19310987800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x80000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
beq x13, x21, some_label_for_btype_19310987801 # perform operation 
addi x0, x1, 1
some_label_for_btype_19310987801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x30, 0x0ec8b8c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x5bbc8877 # initialize rs1
li x22, 0x7fffffff # initialize rs2
beq x28, x22, some_label_for_btype_25974900470 # perform operation 
addi x0, x1, 1
some_label_for_btype_25974900470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7fffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
beq x28, x22, some_label_for_btype_25974900471 # perform operation 
addi x0, x1, 1
some_label_for_btype_25974900471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x2, 0x4df00f6b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x5bbc8877 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
beq x11, x7, some_label_for_btype_29671017110 # perform operation 
addi x0, x1, 1
some_label_for_btype_29671017110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x7ffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
beq x11, x7, some_label_for_btype_29671017111 # perform operation 
addi x0, x1, 1
some_label_for_btype_29671017111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x23, 0xddbba0d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5bbc8877 # initialize rs1
li x12, 0xffffffff # initialize rs2
beq x5, x12, some_label_for_btype_31280790070 # perform operation 
addi x0, x1, 1
some_label_for_btype_31280790070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xffffffff # initialize rs1
li x12, 0xffffffff # initialize rs2
beq x5, x12, some_label_for_btype_31280790071 # perform operation 
addi x0, x1, 1
some_label_for_btype_31280790071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x5, 0x2e8d0cfa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x5bbc8877 # initialize rs1
li x14, 0xfffffffe # initialize rs2
beq x26, x14, some_label_for_btype_21617812200 # perform operation 
addi x0, x1, 1
some_label_for_btype_21617812200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xfffffffe # initialize rs1
li x14, 0xfffffffe # initialize rs2
beq x26, x14, some_label_for_btype_21617812201 # perform operation 
addi x0, x1, 1
some_label_for_btype_21617812201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x2, 0x7d974cf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x5bbc8877 # initialize rs1
li x11, 0x5bbc8877 # initialize rs2
beq x29, x11, some_label_for_btype_9179788460 # perform operation 
addi x0, x1, 1
some_label_for_btype_9179788460:
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
beq x29, x11, some_label_for_btype_9179788461 # perform operation 
addi x0, x1, 1
some_label_for_btype_9179788461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x7, 0x5edf4ce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x5bbc8877 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
beq x1, x5, some_label_for_btype_38132686210 # perform operation 
addi x0, x1, 1
some_label_for_btype_38132686210:
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
beq x1, x5, some_label_for_btype_38132686211 # perform operation 
addi x0, x1, 1
some_label_for_btype_38132686211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x18, 0x2b3f619f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x5bbc8877 # initialize rs1
li x15, 0x55555555 # initialize rs2
beq x24, x15, some_label_for_btype_3322577990 # perform operation 
addi x0, x1, 1
some_label_for_btype_3322577990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x55555555 # initialize rs1
li x15, 0x55555555 # initialize rs2
beq x24, x15, some_label_for_btype_3322577991 # perform operation 
addi x0, x1, 1
some_label_for_btype_3322577991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x11, 0xf9b7771d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xaaaaaaaa # initialize rs1
li x22, 0x00000000 # initialize rs2
beq x23, x22, some_label_for_btype_32902340860 # perform operation 
addi x0, x1, 1
some_label_for_btype_32902340860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000000 # initialize rs1
li x22, 0x00000000 # initialize rs2
beq x23, x22, some_label_for_btype_32902340861 # perform operation 
addi x0, x1, 1
some_label_for_btype_32902340861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x3, 0xbd40edb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xaaaaaaaa # initialize rs1
li x31, 0x00000001 # initialize rs2
beq x12, x31, some_label_for_btype_34931306580 # perform operation 
addi x0, x1, 1
some_label_for_btype_34931306580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000001 # initialize rs1
li x31, 0x00000001 # initialize rs2
beq x12, x31, some_label_for_btype_34931306581 # perform operation 
addi x0, x1, 1
some_label_for_btype_34931306581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x10, 0xafb3fef2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xaaaaaaaa # initialize rs1
li x15, 0x00000002 # initialize rs2
beq x9, x15, some_label_for_btype_8705693940 # perform operation 
addi x0, x1, 1
some_label_for_btype_8705693940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x00000002 # initialize rs1
li x15, 0x00000002 # initialize rs2
beq x9, x15, some_label_for_btype_8705693941 # perform operation 
addi x0, x1, 1
some_label_for_btype_8705693941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x9, 0x55f91f50 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaa # initialize rs1
li x27, 0x80000000 # initialize rs2
beq x13, x27, some_label_for_btype_669718990 # perform operation 
addi x0, x1, 1
some_label_for_btype_669718990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x80000000 # initialize rs1
li x27, 0x80000000 # initialize rs2
beq x13, x27, some_label_for_btype_669718991 # perform operation 
addi x0, x1, 1
some_label_for_btype_669718991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x18, 0xb947eb45 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xaaaaaaaa # initialize rs1
li x25, 0x80000001 # initialize rs2
beq x1, x25, some_label_for_btype_9058328570 # perform operation 
addi x0, x1, 1
some_label_for_btype_9058328570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
beq x1, x25, some_label_for_btype_9058328571 # perform operation 
addi x0, x1, 1
some_label_for_btype_9058328571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x13, 0x6173fade # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xaaaaaaaa # initialize rs1
li x26, 0x7fffffff # initialize rs2
beq x17, x26, some_label_for_btype_15059501490 # perform operation 
addi x0, x1, 1
some_label_for_btype_15059501490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x7fffffff # initialize rs1
li x26, 0x7fffffff # initialize rs2
beq x17, x26, some_label_for_btype_15059501491 # perform operation 
addi x0, x1, 1
some_label_for_btype_15059501491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x8, 0x61dc0c83 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaa # initialize rs1
li x15, 0x7ffffffe # initialize rs2
beq x13, x15, some_label_for_btype_30245544990 # perform operation 
addi x0, x1, 1
some_label_for_btype_30245544990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x7ffffffe # initialize rs1
li x15, 0x7ffffffe # initialize rs2
beq x13, x15, some_label_for_btype_30245544991 # perform operation 
addi x0, x1, 1
some_label_for_btype_30245544991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x3, 0x95cabe2d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xaaaaaaaa # initialize rs1
li x4, 0xffffffff # initialize rs2
beq x29, x4, some_label_for_btype_13050619590 # perform operation 
addi x0, x1, 1
some_label_for_btype_13050619590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xffffffff # initialize rs1
li x4, 0xffffffff # initialize rs2
beq x29, x4, some_label_for_btype_13050619591 # perform operation 
addi x0, x1, 1
some_label_for_btype_13050619591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x29, 0x54b45872 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaa # initialize rs1
li x3, 0xfffffffe # initialize rs2
beq x13, x3, some_label_for_btype_7757445300 # perform operation 
addi x0, x1, 1
some_label_for_btype_7757445300:
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
beq x13, x3, some_label_for_btype_7757445301 # perform operation 
addi x0, x1, 1
some_label_for_btype_7757445301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x23, 0xf55e77ad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaa # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
beq x13, x20, some_label_for_btype_25440820430 # perform operation 
addi x0, x1, 1
some_label_for_btype_25440820430:
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
beq x13, x20, some_label_for_btype_25440820431 # perform operation 
addi x0, x1, 1
some_label_for_btype_25440820431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x5, 0x83daf197 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
beq x4, x23, some_label_for_btype_39153708970 # perform operation 
addi x0, x1, 1
some_label_for_btype_39153708970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
beq x4, x23, some_label_for_btype_39153708971 # perform operation 
addi x0, x1, 1
some_label_for_btype_39153708971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x18, 0xbbfd1135 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xaaaaaaaa # initialize rs1
li x9, 0x55555555 # initialize rs2
beq x2, x9, some_label_for_btype_40095110110 # perform operation 
addi x0, x1, 1
some_label_for_btype_40095110110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x55555555 # initialize rs1
li x9, 0x55555555 # initialize rs2
beq x2, x9, some_label_for_btype_40095110111 # perform operation 
addi x0, x1, 1
some_label_for_btype_40095110111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x16, 0x469ba933 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x55555555 # initialize rs1
li x28, 0x00000000 # initialize rs2
beq x11, x28, some_label_for_btype_26477643910 # perform operation 
addi x0, x1, 1
some_label_for_btype_26477643910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x00000000 # initialize rs1
li x28, 0x00000000 # initialize rs2
beq x11, x28, some_label_for_btype_26477643911 # perform operation 
addi x0, x1, 1
some_label_for_btype_26477643911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x6, 0x63db2a60 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x55555555 # initialize rs1
li x30, 0x00000001 # initialize rs2
beq x13, x30, some_label_for_btype_18481880800 # perform operation 
addi x0, x1, 1
some_label_for_btype_18481880800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000001 # initialize rs1
li x30, 0x00000001 # initialize rs2
beq x13, x30, some_label_for_btype_18481880801 # perform operation 
addi x0, x1, 1
some_label_for_btype_18481880801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x27, 0xbcf280e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x55555555 # initialize rs1
li x29, 0x00000002 # initialize rs2
beq x19, x29, some_label_for_btype_33172412470 # perform operation 
addi x0, x1, 1
some_label_for_btype_33172412470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000002 # initialize rs1
li x29, 0x00000002 # initialize rs2
beq x19, x29, some_label_for_btype_33172412471 # perform operation 
addi x0, x1, 1
some_label_for_btype_33172412471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x19, 0x16c05d04 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x55555555 # initialize rs1
li x30, 0x80000000 # initialize rs2
beq x1, x30, some_label_for_btype_11912809140 # perform operation 
addi x0, x1, 1
some_label_for_btype_11912809140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x80000000 # initialize rs1
li x30, 0x80000000 # initialize rs2
beq x1, x30, some_label_for_btype_11912809141 # perform operation 
addi x0, x1, 1
some_label_for_btype_11912809141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x4, 0x4766f1c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x55555555 # initialize rs1
li x12, 0x80000001 # initialize rs2
beq x20, x12, some_label_for_btype_1747588800 # perform operation 
addi x0, x1, 1
some_label_for_btype_1747588800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x80000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
beq x20, x12, some_label_for_btype_1747588801 # perform operation 
addi x0, x1, 1
some_label_for_btype_1747588801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x23, 0x5b7feec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x55555555 # initialize rs1
li x27, 0x7fffffff # initialize rs2
beq x28, x27, some_label_for_btype_27526360830 # perform operation 
addi x0, x1, 1
some_label_for_btype_27526360830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7fffffff # initialize rs1
li x27, 0x7fffffff # initialize rs2
beq x28, x27, some_label_for_btype_27526360831 # perform operation 
addi x0, x1, 1
some_label_for_btype_27526360831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x7, 0xd68e1a45 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x55555555 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
beq x18, x24, some_label_for_btype_1269618030 # perform operation 
addi x0, x1, 1
some_label_for_btype_1269618030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x7ffffffe # initialize rs1
li x24, 0x7ffffffe # initialize rs2
beq x18, x24, some_label_for_btype_1269618031 # perform operation 
addi x0, x1, 1
some_label_for_btype_1269618031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x2, 0x38486348 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x55555555 # initialize rs1
li x23, 0xffffffff # initialize rs2
beq x30, x23, some_label_for_btype_342862020 # perform operation 
addi x0, x1, 1
some_label_for_btype_342862020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xffffffff # initialize rs1
li x23, 0xffffffff # initialize rs2
beq x30, x23, some_label_for_btype_342862021 # perform operation 
addi x0, x1, 1
some_label_for_btype_342862021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x11, 0x3a163f09 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x55555555 # initialize rs1
li x30, 0xfffffffe # initialize rs2
beq x9, x30, some_label_for_btype_42228225100 # perform operation 
addi x0, x1, 1
some_label_for_btype_42228225100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xfffffffe # initialize rs1
li x30, 0xfffffffe # initialize rs2
beq x9, x30, some_label_for_btype_42228225101 # perform operation 
addi x0, x1, 1
some_label_for_btype_42228225101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x9, 0x4365c89a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x55555555 # initialize rs1
li x8, 0x5bbc8877 # initialize rs2
beq x21, x8, some_label_for_btype_33007553990 # perform operation 
addi x0, x1, 1
some_label_for_btype_33007553990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x5bbc8877 # initialize rs1
li x8, 0x5bbc8877 # initialize rs2
beq x21, x8, some_label_for_btype_33007553991 # perform operation 
addi x0, x1, 1
some_label_for_btype_33007553991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x2, 0xf8d64f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x55555555 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
beq x7, x31, some_label_for_btype_21668172210 # perform operation 
addi x0, x1, 1
some_label_for_btype_21668172210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xaaaaaaaa # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
beq x7, x31, some_label_for_btype_21668172211 # perform operation 
addi x0, x1, 1
some_label_for_btype_21668172211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x25, 0x30a0f4d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x55555555 # initialize rs1
li x20, 0x55555555 # initialize rs2
beq x2, x20, some_label_for_btype_6074043570 # perform operation 
addi x0, x1, 1
some_label_for_btype_6074043570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x55555555 # initialize rs1
li x20, 0x55555555 # initialize rs2
beq x2, x20, some_label_for_btype_6074043571 # perform operation 
addi x0, x1, 1
some_label_for_btype_6074043571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x29, 0x945398a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x36d0bbd9 # initialize rs1
li x0, 0x2256a104 # initialize rs2
beq x0, x0, some_label_for_btype_1048202480 # perform operation 
addi x0, x1, 1
some_label_for_btype_1048202480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0x2256a104 # initialize rs1
li x0, 0x2256a104 # initialize rs2
beq x0, x0, some_label_for_btype_1048202481 # perform operation 
addi x0, x1, 1
some_label_for_btype_1048202481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x29, 0x9f9467a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xd34a9beb # initialize rs1
li x1, 0x61c9be50 # initialize rs2
beq x1, x1, some_label_for_btype_33358402420 # perform operation 
addi x0, x1, 1
some_label_for_btype_33358402420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x61c9be50 # initialize rs1
li x1, 0x61c9be50 # initialize rs2
beq x1, x1, some_label_for_btype_33358402421 # perform operation 
addi x0, x1, 1
some_label_for_btype_33358402421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x31, 0x0b582669 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xecc1f73a # initialize rs1
li x2, 0x937a8c37 # initialize rs2
beq x2, x2, some_label_for_btype_37847120580 # perform operation 
addi x0, x1, 1
some_label_for_btype_37847120580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x937a8c37 # initialize rs1
li x2, 0x937a8c37 # initialize rs2
beq x2, x2, some_label_for_btype_37847120581 # perform operation 
addi x0, x1, 1
some_label_for_btype_37847120581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x9, 0x1d3f0741 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xe151478f # initialize rs1
li x3, 0xfbbdcd20 # initialize rs2
beq x3, x3, some_label_for_btype_41462255640 # perform operation 
addi x0, x1, 1
some_label_for_btype_41462255640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xfbbdcd20 # initialize rs1
li x3, 0xfbbdcd20 # initialize rs2
beq x3, x3, some_label_for_btype_41462255641 # perform operation 
addi x0, x1, 1
some_label_for_btype_41462255641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x13, 0x0e0e5651 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xdc764a47 # initialize rs1
li x4, 0x9415e92f # initialize rs2
beq x4, x4, some_label_for_btype_12485142060 # perform operation 
addi x0, x1, 1
some_label_for_btype_12485142060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x9415e92f # initialize rs1
li x4, 0x9415e92f # initialize rs2
beq x4, x4, some_label_for_btype_12485142061 # perform operation 
addi x0, x1, 1
some_label_for_btype_12485142061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x10, 0xf399580e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x951e59a9 # initialize rs1
li x5, 0x714358ac # initialize rs2
beq x5, x5, some_label_for_btype_19278238630 # perform operation 
addi x0, x1, 1
some_label_for_btype_19278238630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x714358ac # initialize rs1
li x5, 0x714358ac # initialize rs2
beq x5, x5, some_label_for_btype_19278238631 # perform operation 
addi x0, x1, 1
some_label_for_btype_19278238631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x28, 0x35d1bb18 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x45e7b124 # initialize rs1
li x6, 0x83c53bc8 # initialize rs2
beq x6, x6, some_label_for_btype_590249230 # perform operation 
addi x0, x1, 1
some_label_for_btype_590249230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x83c53bc8 # initialize rs1
li x6, 0x83c53bc8 # initialize rs2
beq x6, x6, some_label_for_btype_590249231 # perform operation 
addi x0, x1, 1
some_label_for_btype_590249231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x1, 0x0577b4c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xf64cdfba # initialize rs1
li x7, 0x5d14bafb # initialize rs2
beq x7, x7, some_label_for_btype_21176566530 # perform operation 
addi x0, x1, 1
some_label_for_btype_21176566530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x5d14bafb # initialize rs1
li x7, 0x5d14bafb # initialize rs2
beq x7, x7, some_label_for_btype_21176566531 # perform operation 
addi x0, x1, 1
some_label_for_btype_21176566531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x4, 0x3995546a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xfdbc26e7 # initialize rs1
li x8, 0xad5b97ad # initialize rs2
beq x8, x8, some_label_for_btype_38504647640 # perform operation 
addi x0, x1, 1
some_label_for_btype_38504647640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xad5b97ad # initialize rs1
li x8, 0xad5b97ad # initialize rs2
beq x8, x8, some_label_for_btype_38504647641 # perform operation 
addi x0, x1, 1
some_label_for_btype_38504647641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x11, 0xe70695d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xe2c4af37 # initialize rs1
li x9, 0xd171649d # initialize rs2
beq x9, x9, some_label_for_btype_2894530680 # perform operation 
addi x0, x1, 1
some_label_for_btype_2894530680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xd171649d # initialize rs1
li x9, 0xd171649d # initialize rs2
beq x9, x9, some_label_for_btype_2894530681 # perform operation 
addi x0, x1, 1
some_label_for_btype_2894530681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x28, 0x1314fd0c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x85b94f35 # initialize rs1
li x10, 0x2805bf68 # initialize rs2
beq x10, x10, some_label_for_btype_18857637110 # perform operation 
addi x0, x1, 1
some_label_for_btype_18857637110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x2805bf68 # initialize rs1
li x10, 0x2805bf68 # initialize rs2
beq x10, x10, some_label_for_btype_18857637111 # perform operation 
addi x0, x1, 1
some_label_for_btype_18857637111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x12, 0x5e2c8530 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7ba8bbed # initialize rs1
li x11, 0x8bb93040 # initialize rs2
beq x11, x11, some_label_for_btype_1366947450 # perform operation 
addi x0, x1, 1
some_label_for_btype_1366947450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x8bb93040 # initialize rs1
li x11, 0x8bb93040 # initialize rs2
beq x11, x11, some_label_for_btype_1366947451 # perform operation 
addi x0, x1, 1
some_label_for_btype_1366947451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x22, 0xa6bddf89 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xba5e1a67 # initialize rs1
li x12, 0x9c0d0093 # initialize rs2
beq x12, x12, some_label_for_btype_4696272190 # perform operation 
addi x0, x1, 1
some_label_for_btype_4696272190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x9c0d0093 # initialize rs1
li x12, 0x9c0d0093 # initialize rs2
beq x12, x12, some_label_for_btype_4696272191 # perform operation 
addi x0, x1, 1
some_label_for_btype_4696272191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x26, 0xf7a27fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x7d41ccd2 # initialize rs1
li x13, 0x425d3963 # initialize rs2
beq x13, x13, some_label_for_btype_12456235130 # perform operation 
addi x0, x1, 1
some_label_for_btype_12456235130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x425d3963 # initialize rs1
li x13, 0x425d3963 # initialize rs2
beq x13, x13, some_label_for_btype_12456235131 # perform operation 
addi x0, x1, 1
some_label_for_btype_12456235131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x2, 0x668ded57 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0a72e123 # initialize rs1
li x14, 0x90aade45 # initialize rs2
beq x14, x14, some_label_for_btype_14474766050 # perform operation 
addi x0, x1, 1
some_label_for_btype_14474766050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x90aade45 # initialize rs1
li x14, 0x90aade45 # initialize rs2
beq x14, x14, some_label_for_btype_14474766051 # perform operation 
addi x0, x1, 1
some_label_for_btype_14474766051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x12, 0xbb19c0e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xeeca4ab1 # initialize rs1
li x15, 0xcbc0660c # initialize rs2
beq x15, x15, some_label_for_btype_7288602430 # perform operation 
addi x0, x1, 1
some_label_for_btype_7288602430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xcbc0660c # initialize rs1
li x15, 0xcbc0660c # initialize rs2
beq x15, x15, some_label_for_btype_7288602431 # perform operation 
addi x0, x1, 1
some_label_for_btype_7288602431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x4, 0xf0df3c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x1e0c0de7 # initialize rs1
li x16, 0x51b6880c # initialize rs2
beq x16, x16, some_label_for_btype_25476666720 # perform operation 
addi x0, x1, 1
some_label_for_btype_25476666720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x51b6880c # initialize rs1
li x16, 0x51b6880c # initialize rs2
beq x16, x16, some_label_for_btype_25476666721 # perform operation 
addi x0, x1, 1
some_label_for_btype_25476666721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x1, 0x9ee07010 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x3e7a0cdd # initialize rs1
li x17, 0x5624ad65 # initialize rs2
beq x17, x17, some_label_for_btype_35867250110 # perform operation 
addi x0, x1, 1
some_label_for_btype_35867250110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x5624ad65 # initialize rs1
li x17, 0x5624ad65 # initialize rs2
beq x17, x17, some_label_for_btype_35867250111 # perform operation 
addi x0, x1, 1
some_label_for_btype_35867250111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x26, 0x2d5b4522 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x109e5540 # initialize rs1
li x18, 0x38384cfa # initialize rs2
beq x18, x18, some_label_for_btype_10322311040 # perform operation 
addi x0, x1, 1
some_label_for_btype_10322311040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x38384cfa # initialize rs1
li x18, 0x38384cfa # initialize rs2
beq x18, x18, some_label_for_btype_10322311041 # perform operation 
addi x0, x1, 1
some_label_for_btype_10322311041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x5, 0x1630e516 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x80fef68b # initialize rs1
li x19, 0x7feac215 # initialize rs2
beq x19, x19, some_label_for_btype_10679481320 # perform operation 
addi x0, x1, 1
some_label_for_btype_10679481320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x7feac215 # initialize rs1
li x19, 0x7feac215 # initialize rs2
beq x19, x19, some_label_for_btype_10679481321 # perform operation 
addi x0, x1, 1
some_label_for_btype_10679481321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x19, 0x567475be # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x901b3001 # initialize rs1
li x20, 0xcfea0ef2 # initialize rs2
beq x20, x20, some_label_for_btype_22360501100 # perform operation 
addi x0, x1, 1
some_label_for_btype_22360501100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xcfea0ef2 # initialize rs1
li x20, 0xcfea0ef2 # initialize rs2
beq x20, x20, some_label_for_btype_22360501101 # perform operation 
addi x0, x1, 1
some_label_for_btype_22360501101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x31, 0x2ff68edf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xe76f650b # initialize rs1
li x21, 0x5ad2ea89 # initialize rs2
beq x21, x21, some_label_for_btype_26075042520 # perform operation 
addi x0, x1, 1
some_label_for_btype_26075042520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x5ad2ea89 # initialize rs1
li x21, 0x5ad2ea89 # initialize rs2
beq x21, x21, some_label_for_btype_26075042521 # perform operation 
addi x0, x1, 1
some_label_for_btype_26075042521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x21, 0x94eaa679 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x089ed39f # initialize rs1
li x22, 0x71b6d281 # initialize rs2
beq x22, x22, some_label_for_btype_15238108840 # perform operation 
addi x0, x1, 1
some_label_for_btype_15238108840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x71b6d281 # initialize rs1
li x22, 0x71b6d281 # initialize rs2
beq x22, x22, some_label_for_btype_15238108841 # perform operation 
addi x0, x1, 1
some_label_for_btype_15238108841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x17, 0xa7d54c9c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xe85340f3 # initialize rs1
li x23, 0x02aa4b88 # initialize rs2
beq x23, x23, some_label_for_btype_13800159670 # perform operation 
addi x0, x1, 1
some_label_for_btype_13800159670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x02aa4b88 # initialize rs1
li x23, 0x02aa4b88 # initialize rs2
beq x23, x23, some_label_for_btype_13800159671 # perform operation 
addi x0, x1, 1
some_label_for_btype_13800159671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x17, 0x34a1c7ad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xacd575d7 # initialize rs1
li x24, 0x00ef79fc # initialize rs2
beq x24, x24, some_label_for_btype_32431857220 # perform operation 
addi x0, x1, 1
some_label_for_btype_32431857220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x00ef79fc # initialize rs1
li x24, 0x00ef79fc # initialize rs2
beq x24, x24, some_label_for_btype_32431857221 # perform operation 
addi x0, x1, 1
some_label_for_btype_32431857221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x6, 0x1668d8ff # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xb6be8be1 # initialize rs1
li x25, 0x43efd8af # initialize rs2
beq x25, x25, some_label_for_btype_42094904770 # perform operation 
addi x0, x1, 1
some_label_for_btype_42094904770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x43efd8af # initialize rs1
li x25, 0x43efd8af # initialize rs2
beq x25, x25, some_label_for_btype_42094904771 # perform operation 
addi x0, x1, 1
some_label_for_btype_42094904771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x29, 0x3e36d4ac # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x2c608c40 # initialize rs1
li x26, 0xc4ab61df # initialize rs2
beq x26, x26, some_label_for_btype_13619493120 # perform operation 
addi x0, x1, 1
some_label_for_btype_13619493120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xc4ab61df # initialize rs1
li x26, 0xc4ab61df # initialize rs2
beq x26, x26, some_label_for_btype_13619493121 # perform operation 
addi x0, x1, 1
some_label_for_btype_13619493121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x31, 0x4b897c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xcc40530f # initialize rs1
li x27, 0xa38b997d # initialize rs2
beq x27, x27, some_label_for_btype_22677988960 # perform operation 
addi x0, x1, 1
some_label_for_btype_22677988960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xa38b997d # initialize rs1
li x27, 0xa38b997d # initialize rs2
beq x27, x27, some_label_for_btype_22677988961 # perform operation 
addi x0, x1, 1
some_label_for_btype_22677988961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x22, 0xd05520ae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xc8336019 # initialize rs1
li x28, 0x58267695 # initialize rs2
beq x28, x28, some_label_for_btype_1067781570 # perform operation 
addi x0, x1, 1
some_label_for_btype_1067781570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x58267695 # initialize rs1
li x28, 0x58267695 # initialize rs2
beq x28, x28, some_label_for_btype_1067781571 # perform operation 
addi x0, x1, 1
some_label_for_btype_1067781571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x17, 0xb93a1c92 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xcbe5e59f # initialize rs1
li x29, 0x28354b1b # initialize rs2
beq x29, x29, some_label_for_btype_22883961400 # perform operation 
addi x0, x1, 1
some_label_for_btype_22883961400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x28354b1b # initialize rs1
li x29, 0x28354b1b # initialize rs2
beq x29, x29, some_label_for_btype_22883961401 # perform operation 
addi x0, x1, 1
some_label_for_btype_22883961401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x28, 0xd51ec5cf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xec8dd76e # initialize rs1
li x30, 0x059710f5 # initialize rs2
beq x30, x30, some_label_for_btype_9602995890 # perform operation 
addi x0, x1, 1
some_label_for_btype_9602995890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x059710f5 # initialize rs1
li x30, 0x059710f5 # initialize rs2
beq x30, x30, some_label_for_btype_9602995891 # perform operation 
addi x0, x1, 1
some_label_for_btype_9602995891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x13, 0x2a6b6354 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xe29f714a # initialize rs1
li x31, 0x2f034d4e # initialize rs2
beq x31, x31, some_label_for_btype_10887946350 # perform operation 
addi x0, x1, 1
some_label_for_btype_10887946350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x2f034d4e # initialize rs1
li x31, 0x2f034d4e # initialize rs2
beq x31, x31, some_label_for_btype_10887946351 # perform operation 
addi x0, x1, 1
some_label_for_btype_10887946351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = 0xcf37c70)
li x13, 0x34e11138 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0cf37c70 # initialize rs1
li x1, 0x1ea885c3 # initialize rs2
beq x19, x1, some_label_for_btype_291385040 # perform operation 
addi x0, x1, 1
some_label_for_btype_291385040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x1ea885c3 # initialize rs1
li x1, 0x1ea885c3 # initialize rs2
beq x19, x1, some_label_for_btype_291385041 # perform operation 
addi x0, x1, 1
some_label_for_btype_291385041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x6a7597a5)
li x20, 0xdb29c218 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x958a685b # initialize rs1
li x31, 0x51faf0e7 # initialize rs2
beq x28, x31, some_label_for_btype_24033821520 # perform operation 
addi x0, x1, 1
some_label_for_btype_24033821520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x51faf0e7 # initialize rs1
li x31, 0x51faf0e7 # initialize rs2
beq x28, x31, some_label_for_btype_24033821521 # perform operation 
addi x0, x1, 1
some_label_for_btype_24033821521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = 0x4dce65cf)
li x1, 0x98159b16 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x575f7ee9 # initialize rs1
li x24, 0x4dce65cf # initialize rs2
beq x2, x24, some_label_for_btype_38446932010 # perform operation 
addi x0, x1, 1
some_label_for_btype_38446932010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x4dce65cf # initialize rs1
li x24, 0x4dce65cf # initialize rs2
beq x2, x24, some_label_for_btype_38446932011 # perform operation 
addi x0, x1, 1
some_label_for_btype_38446932011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = -0x7d0893d3)
li x23, 0xaf1dfbdb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xf30d84fd # initialize rs1
li x12, 0x82f76c2d # initialize rs2
beq x15, x12, some_label_for_btype_29825172610 # perform operation 
addi x0, x1, 1
some_label_for_btype_29825172610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x82f76c2d # initialize rs1
li x12, 0x82f76c2d # initialize rs2
beq x15, x12, some_label_for_btype_29825172611 # perform operation 
addi x0, x1, 1
some_label_for_btype_29825172611:
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
