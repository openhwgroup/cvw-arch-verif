///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-bne.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.958718
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x7, 0xdaf6fa85 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x3a4f461f # initialize rs1
li x5, 0x486bef31 # initialize rs2
bne x0, x5, some_label_for_btype_12620495370 # perform operation 
addi x0, x1, 1
some_label_for_btype_12620495370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0x486bef31 # initialize rs1
li x5, 0x486bef31 # initialize rs2
bne x0, x5, some_label_for_btype_12620495371 # perform operation 
addi x0, x1, 1
some_label_for_btype_12620495371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x1)
li x23, 0xec0835e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x6a2c6dda # initialize rs1
li x26, 0xac87fa7c # initialize rs2
bne x1, x26, some_label_for_btype_13718315680 # perform operation 
addi x0, x1, 1
some_label_for_btype_13718315680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xac87fa7c # initialize rs1
li x26, 0xac87fa7c # initialize rs2
bne x1, x26, some_label_for_btype_13718315681 # perform operation 
addi x0, x1, 1
some_label_for_btype_13718315681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x2)
li x17, 0x7608192f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x2a946ce7 # initialize rs1
li x20, 0xe64e2cff # initialize rs2
bne x2, x20, some_label_for_btype_31600893010 # perform operation 
addi x0, x1, 1
some_label_for_btype_31600893010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xe64e2cff # initialize rs1
li x20, 0xe64e2cff # initialize rs2
bne x2, x20, some_label_for_btype_31600893011 # perform operation 
addi x0, x1, 1
some_label_for_btype_31600893011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x3)
li x20, 0x6f0a2edc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xb03d7b20 # initialize rs1
li x19, 0x6e755ca5 # initialize rs2
bne x3, x19, some_label_for_btype_34934736890 # perform operation 
addi x0, x1, 1
some_label_for_btype_34934736890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x6e755ca5 # initialize rs1
li x19, 0x6e755ca5 # initialize rs2
bne x3, x19, some_label_for_btype_34934736891 # perform operation 
addi x0, x1, 1
some_label_for_btype_34934736891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x4)
li x27, 0xc535233e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x27fbbcde # initialize rs1
li x1, 0xdf93a01b # initialize rs2
bne x4, x1, some_label_for_btype_13906507660 # perform operation 
addi x0, x1, 1
some_label_for_btype_13906507660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xdf93a01b # initialize rs1
li x1, 0xdf93a01b # initialize rs2
bne x4, x1, some_label_for_btype_13906507661 # perform operation 
addi x0, x1, 1
some_label_for_btype_13906507661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x5)
li x14, 0x7beb4023 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x2b92b743 # initialize rs1
li x27, 0x68d4a1ca # initialize rs2
bne x5, x27, some_label_for_btype_24604247920 # perform operation 
addi x0, x1, 1
some_label_for_btype_24604247920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x68d4a1ca # initialize rs1
li x27, 0x68d4a1ca # initialize rs2
bne x5, x27, some_label_for_btype_24604247921 # perform operation 
addi x0, x1, 1
some_label_for_btype_24604247921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x6)
li x20, 0x9f170803 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xc34118c1 # initialize rs1
li x2, 0x8f7dd083 # initialize rs2
bne x6, x2, some_label_for_btype_32805027200 # perform operation 
addi x0, x1, 1
some_label_for_btype_32805027200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x8f7dd083 # initialize rs1
li x2, 0x8f7dd083 # initialize rs2
bne x6, x2, some_label_for_btype_32805027201 # perform operation 
addi x0, x1, 1
some_label_for_btype_32805027201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x7)
li x16, 0xed36cfeb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xd5d4b1d0 # initialize rs1
li x20, 0x632af654 # initialize rs2
bne x7, x20, some_label_for_btype_16436486460 # perform operation 
addi x0, x1, 1
some_label_for_btype_16436486460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x632af654 # initialize rs1
li x20, 0x632af654 # initialize rs2
bne x7, x20, some_label_for_btype_16436486461 # perform operation 
addi x0, x1, 1
some_label_for_btype_16436486461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x8)
li x24, 0x652b7913 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x1d1196c4 # initialize rs1
li x17, 0x4b6daec8 # initialize rs2
bne x8, x17, some_label_for_btype_5491901630 # perform operation 
addi x0, x1, 1
some_label_for_btype_5491901630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x4b6daec8 # initialize rs1
li x17, 0x4b6daec8 # initialize rs2
bne x8, x17, some_label_for_btype_5491901631 # perform operation 
addi x0, x1, 1
some_label_for_btype_5491901631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x19, 0x49cb8e41 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x90b68277 # initialize rs1
li x22, 0x34c2929a # initialize rs2
bne x9, x22, some_label_for_btype_27296870950 # perform operation 
addi x0, x1, 1
some_label_for_btype_27296870950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x34c2929a # initialize rs1
li x22, 0x34c2929a # initialize rs2
bne x9, x22, some_label_for_btype_27296870951 # perform operation 
addi x0, x1, 1
some_label_for_btype_27296870951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0xd7f9e019 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xacdbd4f7 # initialize rs1
li x31, 0x67be3756 # initialize rs2
bne x10, x31, some_label_for_btype_2471201470 # perform operation 
addi x0, x1, 1
some_label_for_btype_2471201470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x67be3756 # initialize rs1
li x31, 0x67be3756 # initialize rs2
bne x10, x31, some_label_for_btype_2471201471 # perform operation 
addi x0, x1, 1
some_label_for_btype_2471201471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x22, 0xd9d0e59d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x5ffe5273 # initialize rs1
li x10, 0x90a2649e # initialize rs2
bne x11, x10, some_label_for_btype_22554703350 # perform operation 
addi x0, x1, 1
some_label_for_btype_22554703350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x90a2649e # initialize rs1
li x10, 0x90a2649e # initialize rs2
bne x11, x10, some_label_for_btype_22554703351 # perform operation 
addi x0, x1, 1
some_label_for_btype_22554703351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x30, 0x78e2d82f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xf61d7c10 # initialize rs1
li x26, 0x2754c428 # initialize rs2
bne x12, x26, some_label_for_btype_10504627770 # perform operation 
addi x0, x1, 1
some_label_for_btype_10504627770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x2754c428 # initialize rs1
li x26, 0x2754c428 # initialize rs2
bne x12, x26, some_label_for_btype_10504627771 # perform operation 
addi x0, x1, 1
some_label_for_btype_10504627771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x19, 0x17780e05 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x62c838d5 # initialize rs1
li x9, 0x3af1c998 # initialize rs2
bne x13, x9, some_label_for_btype_30899929530 # perform operation 
addi x0, x1, 1
some_label_for_btype_30899929530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x3af1c998 # initialize rs1
li x9, 0x3af1c998 # initialize rs2
bne x13, x9, some_label_for_btype_30899929531 # perform operation 
addi x0, x1, 1
some_label_for_btype_30899929531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x7, 0x8a14b28a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x3ddea54b # initialize rs1
li x19, 0xe817ddcf # initialize rs2
bne x14, x19, some_label_for_btype_26467028240 # perform operation 
addi x0, x1, 1
some_label_for_btype_26467028240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xe817ddcf # initialize rs1
li x19, 0xe817ddcf # initialize rs2
bne x14, x19, some_label_for_btype_26467028241 # perform operation 
addi x0, x1, 1
some_label_for_btype_26467028241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x26, 0x522de9cf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xa6f41502 # initialize rs1
li x10, 0xdd5d6626 # initialize rs2
bne x15, x10, some_label_for_btype_33713117250 # perform operation 
addi x0, x1, 1
some_label_for_btype_33713117250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xdd5d6626 # initialize rs1
li x10, 0xdd5d6626 # initialize rs2
bne x15, x10, some_label_for_btype_33713117251 # perform operation 
addi x0, x1, 1
some_label_for_btype_33713117251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x16)
li x21, 0xdf7d5295 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x77d194fc # initialize rs1
li x7, 0x81a4ee7d # initialize rs2
bne x16, x7, some_label_for_btype_13664005350 # perform operation 
addi x0, x1, 1
some_label_for_btype_13664005350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x81a4ee7d # initialize rs1
li x7, 0x81a4ee7d # initialize rs2
bne x16, x7, some_label_for_btype_13664005351 # perform operation 
addi x0, x1, 1
some_label_for_btype_13664005351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x17)
li x11, 0x5732f34f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xbede2a05 # initialize rs1
li x16, 0xeab96e4c # initialize rs2
bne x17, x16, some_label_for_btype_16726055680 # perform operation 
addi x0, x1, 1
some_label_for_btype_16726055680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xeab96e4c # initialize rs1
li x16, 0xeab96e4c # initialize rs2
bne x17, x16, some_label_for_btype_16726055681 # perform operation 
addi x0, x1, 1
some_label_for_btype_16726055681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x18)
li x4, 0xb9150f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xdc60e6fa # initialize rs1
li x21, 0xa7c97397 # initialize rs2
bne x18, x21, some_label_for_btype_31934767860 # perform operation 
addi x0, x1, 1
some_label_for_btype_31934767860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xa7c97397 # initialize rs1
li x21, 0xa7c97397 # initialize rs2
bne x18, x21, some_label_for_btype_31934767861 # perform operation 
addi x0, x1, 1
some_label_for_btype_31934767861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x19)
li x18, 0x5b5053bc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xee6af974 # initialize rs1
li x2, 0xc2c28aaa # initialize rs2
bne x19, x2, some_label_for_btype_14042582330 # perform operation 
addi x0, x1, 1
some_label_for_btype_14042582330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xc2c28aaa # initialize rs1
li x2, 0xc2c28aaa # initialize rs2
bne x19, x2, some_label_for_btype_14042582331 # perform operation 
addi x0, x1, 1
some_label_for_btype_14042582331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x20)
li x8, 0x45ac345a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x9982ab72 # initialize rs1
li x1, 0xe698a0e9 # initialize rs2
bne x20, x1, some_label_for_btype_24505658020 # perform operation 
addi x0, x1, 1
some_label_for_btype_24505658020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xe698a0e9 # initialize rs1
li x1, 0xe698a0e9 # initialize rs2
bne x20, x1, some_label_for_btype_24505658021 # perform operation 
addi x0, x1, 1
some_label_for_btype_24505658021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x21)
li x23, 0x12be82dc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x81526648 # initialize rs1
li x14, 0x9e3581f4 # initialize rs2
bne x21, x14, some_label_for_btype_21719892560 # perform operation 
addi x0, x1, 1
some_label_for_btype_21719892560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x9e3581f4 # initialize rs1
li x14, 0x9e3581f4 # initialize rs2
bne x21, x14, some_label_for_btype_21719892561 # perform operation 
addi x0, x1, 1
some_label_for_btype_21719892561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x22)
li x10, 0xb3d14d5d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xb2bd1be5 # initialize rs1
li x28, 0xc940556a # initialize rs2
bne x22, x28, some_label_for_btype_25284270100 # perform operation 
addi x0, x1, 1
some_label_for_btype_25284270100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xc940556a # initialize rs1
li x28, 0xc940556a # initialize rs2
bne x22, x28, some_label_for_btype_25284270101 # perform operation 
addi x0, x1, 1
some_label_for_btype_25284270101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x23)
li x16, 0x912c2317 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xc6333378 # initialize rs1
li x17, 0xa5d40b5f # initialize rs2
bne x23, x17, some_label_for_btype_23213087880 # perform operation 
addi x0, x1, 1
some_label_for_btype_23213087880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xa5d40b5f # initialize rs1
li x17, 0xa5d40b5f # initialize rs2
bne x23, x17, some_label_for_btype_23213087881 # perform operation 
addi x0, x1, 1
some_label_for_btype_23213087881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x24)
li x11, 0x85904aef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x5028c188 # initialize rs1
li x15, 0x5f193d6c # initialize rs2
bne x24, x15, some_label_for_btype_2813744660 # perform operation 
addi x0, x1, 1
some_label_for_btype_2813744660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5f193d6c # initialize rs1
li x15, 0x5f193d6c # initialize rs2
bne x24, x15, some_label_for_btype_2813744661 # perform operation 
addi x0, x1, 1
some_label_for_btype_2813744661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x25)
li x29, 0x993fc9d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x8bb2b392 # initialize rs1
li x11, 0x88262b2b # initialize rs2
bne x25, x11, some_label_for_btype_39207359130 # perform operation 
addi x0, x1, 1
some_label_for_btype_39207359130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x88262b2b # initialize rs1
li x11, 0x88262b2b # initialize rs2
bne x25, x11, some_label_for_btype_39207359131 # perform operation 
addi x0, x1, 1
some_label_for_btype_39207359131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x26)
li x31, 0x5c2330f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x808f5aa4 # initialize rs1
li x11, 0xcb612c9f # initialize rs2
bne x26, x11, some_label_for_btype_7612628210 # perform operation 
addi x0, x1, 1
some_label_for_btype_7612628210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xcb612c9f # initialize rs1
li x11, 0xcb612c9f # initialize rs2
bne x26, x11, some_label_for_btype_7612628211 # perform operation 
addi x0, x1, 1
some_label_for_btype_7612628211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x27)
li x24, 0x4130817f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x5199fe84 # initialize rs1
li x1, 0xab8eb339 # initialize rs2
bne x27, x1, some_label_for_btype_34249709820 # perform operation 
addi x0, x1, 1
some_label_for_btype_34249709820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xab8eb339 # initialize rs1
li x1, 0xab8eb339 # initialize rs2
bne x27, x1, some_label_for_btype_34249709821 # perform operation 
addi x0, x1, 1
some_label_for_btype_34249709821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x28)
li x10, 0xf571b395 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xf2e3d24b # initialize rs1
li x1, 0x0d9d4106 # initialize rs2
bne x28, x1, some_label_for_btype_30166938810 # perform operation 
addi x0, x1, 1
some_label_for_btype_30166938810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0d9d4106 # initialize rs1
li x1, 0x0d9d4106 # initialize rs2
bne x28, x1, some_label_for_btype_30166938811 # perform operation 
addi x0, x1, 1
some_label_for_btype_30166938811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x29)
li x2, 0x5887d1d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x8bb0c3bb # initialize rs1
li x16, 0x6850f90a # initialize rs2
bne x29, x16, some_label_for_btype_15824576540 # perform operation 
addi x0, x1, 1
some_label_for_btype_15824576540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x6850f90a # initialize rs1
li x16, 0x6850f90a # initialize rs2
bne x29, x16, some_label_for_btype_15824576541 # perform operation 
addi x0, x1, 1
some_label_for_btype_15824576541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x30)
li x11, 0xa2ece6c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xc09f1bc2 # initialize rs1
li x26, 0x23b31de8 # initialize rs2
bne x30, x26, some_label_for_btype_28046184940 # perform operation 
addi x0, x1, 1
some_label_for_btype_28046184940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x23b31de8 # initialize rs1
li x26, 0x23b31de8 # initialize rs2
bne x30, x26, some_label_for_btype_28046184941 # perform operation 
addi x0, x1, 1
some_label_for_btype_28046184941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x31)
li x9, 0x89422c2b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x915a4001 # initialize rs1
li x21, 0x0ba25b46 # initialize rs2
bne x31, x21, some_label_for_btype_9326557520 # perform operation 
addi x0, x1, 1
some_label_for_btype_9326557520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0ba25b46 # initialize rs1
li x21, 0x0ba25b46 # initialize rs2
bne x31, x21, some_label_for_btype_9326557521 # perform operation 
addi x0, x1, 1
some_label_for_btype_9326557521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x0)
li x24, 0xa8518a79 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x6cd664e7 # initialize rs1
li x0, 0xa9d343b8 # initialize rs2
bne x19, x0, some_label_for_btype_8231129690 # perform operation 
addi x0, x1, 1
some_label_for_btype_8231129690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xa9d343b8 # initialize rs1
li x0, 0xa9d343b8 # initialize rs2
bne x19, x0, some_label_for_btype_8231129691 # perform operation 
addi x0, x1, 1
some_label_for_btype_8231129691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x1)
li x16, 0x6e42e6c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x8ad22bd0 # initialize rs1
li x1, 0x81fbc7db # initialize rs2
bne x24, x1, some_label_for_btype_39925132990 # perform operation 
addi x0, x1, 1
some_label_for_btype_39925132990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x81fbc7db # initialize rs1
li x1, 0x81fbc7db # initialize rs2
bne x24, x1, some_label_for_btype_39925132991 # perform operation 
addi x0, x1, 1
some_label_for_btype_39925132991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0xfd022173 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x5935a958 # initialize rs1
li x2, 0x679a111a # initialize rs2
bne x31, x2, some_label_for_btype_12732997130 # perform operation 
addi x0, x1, 1
some_label_for_btype_12732997130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x679a111a # initialize rs1
li x2, 0x679a111a # initialize rs2
bne x31, x2, some_label_for_btype_12732997131 # perform operation 
addi x0, x1, 1
some_label_for_btype_12732997131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x3)
li x23, 0xe2d9a8b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0442bb20 # initialize rs1
li x3, 0xb34d71ae # initialize rs2
bne x24, x3, some_label_for_btype_29032927320 # perform operation 
addi x0, x1, 1
some_label_for_btype_29032927320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xb34d71ae # initialize rs1
li x3, 0xb34d71ae # initialize rs2
bne x24, x3, some_label_for_btype_29032927321 # perform operation 
addi x0, x1, 1
some_label_for_btype_29032927321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x4)
li x25, 0xcdd5480a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x212f7fc8 # initialize rs1
li x4, 0x8e22992d # initialize rs2
bne x19, x4, some_label_for_btype_37456380890 # perform operation 
addi x0, x1, 1
some_label_for_btype_37456380890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x8e22992d # initialize rs1
li x4, 0x8e22992d # initialize rs2
bne x19, x4, some_label_for_btype_37456380891 # perform operation 
addi x0, x1, 1
some_label_for_btype_37456380891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x5)
li x28, 0xf4685c8a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xd9a84d05 # initialize rs1
li x5, 0x11c7cca8 # initialize rs2
bne x11, x5, some_label_for_btype_11070370410 # perform operation 
addi x0, x1, 1
some_label_for_btype_11070370410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x11c7cca8 # initialize rs1
li x5, 0x11c7cca8 # initialize rs2
bne x11, x5, some_label_for_btype_11070370411 # perform operation 
addi x0, x1, 1
some_label_for_btype_11070370411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x6)
li x21, 0xf7d0b16a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xcbcb2288 # initialize rs1
li x6, 0xb3798849 # initialize rs2
bne x7, x6, some_label_for_btype_4684738120 # perform operation 
addi x0, x1, 1
some_label_for_btype_4684738120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xb3798849 # initialize rs1
li x6, 0xb3798849 # initialize rs2
bne x7, x6, some_label_for_btype_4684738121 # perform operation 
addi x0, x1, 1
some_label_for_btype_4684738121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x7)
li x16, 0x77478d90 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xe49f804b # initialize rs1
li x7, 0xb52e0c87 # initialize rs2
bne x24, x7, some_label_for_btype_9121453770 # perform operation 
addi x0, x1, 1
some_label_for_btype_9121453770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xb52e0c87 # initialize rs1
li x7, 0xb52e0c87 # initialize rs2
bne x24, x7, some_label_for_btype_9121453771 # perform operation 
addi x0, x1, 1
some_label_for_btype_9121453771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x8)
li x10, 0x68207531 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x1f12e6b2 # initialize rs1
li x8, 0xa9ee93b6 # initialize rs2
bne x21, x8, some_label_for_btype_34532247730 # perform operation 
addi x0, x1, 1
some_label_for_btype_34532247730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xa9ee93b6 # initialize rs1
li x8, 0xa9ee93b6 # initialize rs2
bne x21, x8, some_label_for_btype_34532247731 # perform operation 
addi x0, x1, 1
some_label_for_btype_34532247731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0x911a4b05 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xf4ea547c # initialize rs1
li x9, 0x2d9b1659 # initialize rs2
bne x7, x9, some_label_for_btype_35770855560 # perform operation 
addi x0, x1, 1
some_label_for_btype_35770855560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x2d9b1659 # initialize rs1
li x9, 0x2d9b1659 # initialize rs2
bne x7, x9, some_label_for_btype_35770855561 # perform operation 
addi x0, x1, 1
some_label_for_btype_35770855561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x10)
li x14, 0x1ecd83e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x6be82f42 # initialize rs1
li x10, 0xb67164d2 # initialize rs2
bne x27, x10, some_label_for_btype_15634998730 # perform operation 
addi x0, x1, 1
some_label_for_btype_15634998730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xb67164d2 # initialize rs1
li x10, 0xb67164d2 # initialize rs2
bne x27, x10, some_label_for_btype_15634998731 # perform operation 
addi x0, x1, 1
some_label_for_btype_15634998731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x11)
li x21, 0xc619c75a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x909d2530 # initialize rs1
li x11, 0x944b8fb6 # initialize rs2
bne x5, x11, some_label_for_btype_25730156960 # perform operation 
addi x0, x1, 1
some_label_for_btype_25730156960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x944b8fb6 # initialize rs1
li x11, 0x944b8fb6 # initialize rs2
bne x5, x11, some_label_for_btype_25730156961 # perform operation 
addi x0, x1, 1
some_label_for_btype_25730156961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x12)
li x4, 0x42dc87ec # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x62d6b827 # initialize rs1
li x12, 0x9fb2a518 # initialize rs2
bne x21, x12, some_label_for_btype_28627154550 # perform operation 
addi x0, x1, 1
some_label_for_btype_28627154550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x9fb2a518 # initialize rs1
li x12, 0x9fb2a518 # initialize rs2
bne x21, x12, some_label_for_btype_28627154551 # perform operation 
addi x0, x1, 1
some_label_for_btype_28627154551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0xadbf8555 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x10cbd330 # initialize rs1
li x13, 0xcd989f12 # initialize rs2
bne x7, x13, some_label_for_btype_33388303720 # perform operation 
addi x0, x1, 1
some_label_for_btype_33388303720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xcd989f12 # initialize rs1
li x13, 0xcd989f12 # initialize rs2
bne x7, x13, some_label_for_btype_33388303721 # perform operation 
addi x0, x1, 1
some_label_for_btype_33388303721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x14)
li x21, 0x0ad1c4d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x13c6a514 # initialize rs1
li x14, 0xf8783d7e # initialize rs2
bne x1, x14, some_label_for_btype_6001092440 # perform operation 
addi x0, x1, 1
some_label_for_btype_6001092440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xf8783d7e # initialize rs1
li x14, 0xf8783d7e # initialize rs2
bne x1, x14, some_label_for_btype_6001092441 # perform operation 
addi x0, x1, 1
some_label_for_btype_6001092441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x15)
li x4, 0x31198fa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x3ce16a20 # initialize rs1
li x15, 0xbae509ad # initialize rs2
bne x2, x15, some_label_for_btype_34530028990 # perform operation 
addi x0, x1, 1
some_label_for_btype_34530028990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xbae509ad # initialize rs1
li x15, 0xbae509ad # initialize rs2
bne x2, x15, some_label_for_btype_34530028991 # perform operation 
addi x0, x1, 1
some_label_for_btype_34530028991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x16)
li x18, 0x333191de # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xb1850b8e # initialize rs1
li x16, 0x8ce477cc # initialize rs2
bne x29, x16, some_label_for_btype_25404724980 # perform operation 
addi x0, x1, 1
some_label_for_btype_25404724980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x8ce477cc # initialize rs1
li x16, 0x8ce477cc # initialize rs2
bne x29, x16, some_label_for_btype_25404724981 # perform operation 
addi x0, x1, 1
some_label_for_btype_25404724981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x17)
li x8, 0xd620b0e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x6ca9f4ac # initialize rs1
li x17, 0x26c84a76 # initialize rs2
bne x20, x17, some_label_for_btype_31412054850 # perform operation 
addi x0, x1, 1
some_label_for_btype_31412054850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x26c84a76 # initialize rs1
li x17, 0x26c84a76 # initialize rs2
bne x20, x17, some_label_for_btype_31412054851 # perform operation 
addi x0, x1, 1
some_label_for_btype_31412054851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x18)
li x1, 0xa0645952 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xc62d6c72 # initialize rs1
li x18, 0x4951aa58 # initialize rs2
bne x2, x18, some_label_for_btype_2353874260 # perform operation 
addi x0, x1, 1
some_label_for_btype_2353874260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x4951aa58 # initialize rs1
li x18, 0x4951aa58 # initialize rs2
bne x2, x18, some_label_for_btype_2353874261 # perform operation 
addi x0, x1, 1
some_label_for_btype_2353874261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x19)
li x1, 0xc7c38a5b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xa35ed31a # initialize rs1
li x19, 0xc9e8fa8a # initialize rs2
bne x10, x19, some_label_for_btype_17743958650 # perform operation 
addi x0, x1, 1
some_label_for_btype_17743958650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xc9e8fa8a # initialize rs1
li x19, 0xc9e8fa8a # initialize rs2
bne x10, x19, some_label_for_btype_17743958651 # perform operation 
addi x0, x1, 1
some_label_for_btype_17743958651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x20)
li x12, 0xfa9f3921 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x304ca74f # initialize rs1
li x20, 0x94f861e1 # initialize rs2
bne x7, x20, some_label_for_btype_22440604200 # perform operation 
addi x0, x1, 1
some_label_for_btype_22440604200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x94f861e1 # initialize rs1
li x20, 0x94f861e1 # initialize rs2
bne x7, x20, some_label_for_btype_22440604201 # perform operation 
addi x0, x1, 1
some_label_for_btype_22440604201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x21)
li x13, 0xb191a3ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x4f3c39b2 # initialize rs1
li x21, 0xb84fd2cb # initialize rs2
bne x6, x21, some_label_for_btype_10207891360 # perform operation 
addi x0, x1, 1
some_label_for_btype_10207891360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xb84fd2cb # initialize rs1
li x21, 0xb84fd2cb # initialize rs2
bne x6, x21, some_label_for_btype_10207891361 # perform operation 
addi x0, x1, 1
some_label_for_btype_10207891361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x22)
li x30, 0xd6862c56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xe054a553 # initialize rs1
li x22, 0xe2f53796 # initialize rs2
bne x20, x22, some_label_for_btype_22584158510 # perform operation 
addi x0, x1, 1
some_label_for_btype_22584158510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xe2f53796 # initialize rs1
li x22, 0xe2f53796 # initialize rs2
bne x20, x22, some_label_for_btype_22584158511 # perform operation 
addi x0, x1, 1
some_label_for_btype_22584158511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x23)
li x12, 0x5e4d641b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x9fb7e3d3 # initialize rs1
li x23, 0x329a99f5 # initialize rs2
bne x28, x23, some_label_for_btype_25797355900 # perform operation 
addi x0, x1, 1
some_label_for_btype_25797355900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x329a99f5 # initialize rs1
li x23, 0x329a99f5 # initialize rs2
bne x28, x23, some_label_for_btype_25797355901 # perform operation 
addi x0, x1, 1
some_label_for_btype_25797355901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x24)
li x10, 0xc47208cf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xfc8fbed0 # initialize rs1
li x24, 0xce90ea33 # initialize rs2
bne x23, x24, some_label_for_btype_10373052720 # perform operation 
addi x0, x1, 1
some_label_for_btype_10373052720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xce90ea33 # initialize rs1
li x24, 0xce90ea33 # initialize rs2
bne x23, x24, some_label_for_btype_10373052721 # perform operation 
addi x0, x1, 1
some_label_for_btype_10373052721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x25)
li x31, 0x94112921 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x9cbd3f1a # initialize rs1
li x25, 0x68e270fb # initialize rs2
bne x15, x25, some_label_for_btype_40017295280 # perform operation 
addi x0, x1, 1
some_label_for_btype_40017295280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x68e270fb # initialize rs1
li x25, 0x68e270fb # initialize rs2
bne x15, x25, some_label_for_btype_40017295281 # perform operation 
addi x0, x1, 1
some_label_for_btype_40017295281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x26)
li x27, 0xaef815fa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xb3023243 # initialize rs1
li x26, 0xe12c1986 # initialize rs2
bne x7, x26, some_label_for_btype_830614570 # perform operation 
addi x0, x1, 1
some_label_for_btype_830614570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xe12c1986 # initialize rs1
li x26, 0xe12c1986 # initialize rs2
bne x7, x26, some_label_for_btype_830614571 # perform operation 
addi x0, x1, 1
some_label_for_btype_830614571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x27)
li x10, 0xa90caf58 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xb2ef0d74 # initialize rs1
li x27, 0x8c14f5e7 # initialize rs2
bne x15, x27, some_label_for_btype_36194861250 # perform operation 
addi x0, x1, 1
some_label_for_btype_36194861250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x8c14f5e7 # initialize rs1
li x27, 0x8c14f5e7 # initialize rs2
bne x15, x27, some_label_for_btype_36194861251 # perform operation 
addi x0, x1, 1
some_label_for_btype_36194861251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x28)
li x9, 0xce1b079e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x67e45074 # initialize rs1
li x28, 0x7606ec35 # initialize rs2
bne x26, x28, some_label_for_btype_15924653820 # perform operation 
addi x0, x1, 1
some_label_for_btype_15924653820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x7606ec35 # initialize rs1
li x28, 0x7606ec35 # initialize rs2
bne x26, x28, some_label_for_btype_15924653821 # perform operation 
addi x0, x1, 1
some_label_for_btype_15924653821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x29)
li x30, 0x2793096f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x84f9a239 # initialize rs1
li x29, 0x93f4d209 # initialize rs2
bne x26, x29, some_label_for_btype_11215743670 # perform operation 
addi x0, x1, 1
some_label_for_btype_11215743670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x93f4d209 # initialize rs1
li x29, 0x93f4d209 # initialize rs2
bne x26, x29, some_label_for_btype_11215743671 # perform operation 
addi x0, x1, 1
some_label_for_btype_11215743671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x30)
li x15, 0xf48b5e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x4dcf9092 # initialize rs1
li x30, 0x99b57ea1 # initialize rs2
bne x5, x30, some_label_for_btype_14841746450 # perform operation 
addi x0, x1, 1
some_label_for_btype_14841746450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x99b57ea1 # initialize rs1
li x30, 0x99b57ea1 # initialize rs2
bne x5, x30, some_label_for_btype_14841746451 # perform operation 
addi x0, x1, 1
some_label_for_btype_14841746451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x31)
li x5, 0xd87836d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xf8ac60c9 # initialize rs1
li x31, 0xe994f59d # initialize rs2
bne x22, x31, some_label_for_btype_11310593280 # perform operation 
addi x0, x1, 1
some_label_for_btype_11310593280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xe994f59d # initialize rs1
li x31, 0xe994f59d # initialize rs2
bne x22, x31, some_label_for_btype_11310593281 # perform operation 
addi x0, x1, 1
some_label_for_btype_11310593281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xfc470c16)
li x15, 0x08e1a190 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x08e1a190 # initialize rs1
li x0, 0xad6db77f # initialize rs2
bne x6, x0, some_label_for_btype_22931769070 # perform operation 
addi x0, x1, 1
some_label_for_btype_22931769070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xad6db77f # initialize rs1
li x0, 0xad6db77f # initialize rs2
bne x6, x0, some_label_for_btype_22931769071 # perform operation 
addi x0, x1, 1
some_label_for_btype_22931769071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x59d33e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x00000000 # initialize rs1
li x20, 0xa456a281 # initialize rs2
bne x9, x20, some_label_for_btype_5315076140 # perform operation 
addi x0, x1, 1
some_label_for_btype_5315076140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xa456a281 # initialize rs1
li x20, 0xa456a281 # initialize rs2
bne x9, x20, some_label_for_btype_5315076141 # perform operation 
addi x0, x1, 1
some_label_for_btype_5315076141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0xc0938b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000001 # initialize rs1
li x15, 0xa14ebdd1 # initialize rs2
bne x19, x15, some_label_for_btype_31960243630 # perform operation 
addi x0, x1, 1
some_label_for_btype_31960243630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xa14ebdd1 # initialize rs1
li x15, 0xa14ebdd1 # initialize rs2
bne x19, x15, some_label_for_btype_31960243631 # perform operation 
addi x0, x1, 1
some_label_for_btype_31960243631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0xf98774ae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x00000002 # initialize rs1
li x19, 0xf97029ba # initialize rs2
bne x8, x19, some_label_for_btype_6342472710 # perform operation 
addi x0, x1, 1
some_label_for_btype_6342472710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xf97029ba # initialize rs1
li x19, 0xf97029ba # initialize rs2
bne x8, x19, some_label_for_btype_6342472711 # perform operation 
addi x0, x1, 1
some_label_for_btype_6342472711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x21, 0x32fdc43e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x80000000 # initialize rs1
li x31, 0x01ecd3fc # initialize rs2
bne x29, x31, some_label_for_btype_4997459300 # perform operation 
addi x0, x1, 1
some_label_for_btype_4997459300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x01ecd3fc # initialize rs1
li x31, 0x01ecd3fc # initialize rs2
bne x29, x31, some_label_for_btype_4997459301 # perform operation 
addi x0, x1, 1
some_label_for_btype_4997459301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x20, 0xf844714d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x80000001 # initialize rs1
li x27, 0x0c0f6747 # initialize rs2
bne x16, x27, some_label_for_btype_7889133640 # perform operation 
addi x0, x1, 1
some_label_for_btype_7889133640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0c0f6747 # initialize rs1
li x27, 0x0c0f6747 # initialize rs2
bne x16, x27, some_label_for_btype_7889133641 # perform operation 
addi x0, x1, 1
some_label_for_btype_7889133641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x3, 0x3cf788c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x7fffffff # initialize rs1
li x27, 0xba6e7875 # initialize rs2
bne x20, x27, some_label_for_btype_11193211960 # perform operation 
addi x0, x1, 1
some_label_for_btype_11193211960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xba6e7875 # initialize rs1
li x27, 0xba6e7875 # initialize rs2
bne x20, x27, some_label_for_btype_11193211961 # perform operation 
addi x0, x1, 1
some_label_for_btype_11193211961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x13, 0xe02e3fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7ffffffe # initialize rs1
li x2, 0x23798d86 # initialize rs2
bne x17, x2, some_label_for_btype_7463341520 # perform operation 
addi x0, x1, 1
some_label_for_btype_7463341520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x23798d86 # initialize rs1
li x2, 0x23798d86 # initialize rs2
bne x17, x2, some_label_for_btype_7463341521 # perform operation 
addi x0, x1, 1
some_label_for_btype_7463341521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0xa04d604f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xffffffff # initialize rs1
li x13, 0xbf57473a # initialize rs2
bne x14, x13, some_label_for_btype_41780306610 # perform operation 
addi x0, x1, 1
some_label_for_btype_41780306610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xbf57473a # initialize rs1
li x13, 0xbf57473a # initialize rs2
bne x14, x13, some_label_for_btype_41780306611 # perform operation 
addi x0, x1, 1
some_label_for_btype_41780306611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x1, 0xece069b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xfffffffe # initialize rs1
li x16, 0xb6cec8fc # initialize rs2
bne x17, x16, some_label_for_btype_36208973720 # perform operation 
addi x0, x1, 1
some_label_for_btype_36208973720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xb6cec8fc # initialize rs1
li x16, 0xb6cec8fc # initialize rs2
bne x17, x16, some_label_for_btype_36208973721 # perform operation 
addi x0, x1, 1
some_label_for_btype_36208973721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x17, 0x182c1839 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x5bbc8877 # initialize rs1
li x4, 0x2cd5c238 # initialize rs2
bne x31, x4, some_label_for_btype_37465952280 # perform operation 
addi x0, x1, 1
some_label_for_btype_37465952280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x2cd5c238 # initialize rs1
li x4, 0x2cd5c238 # initialize rs2
bne x31, x4, some_label_for_btype_37465952281 # perform operation 
addi x0, x1, 1
some_label_for_btype_37465952281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x21, 0x355d2513 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xaaaaaaaa # initialize rs1
li x28, 0x80ee662d # initialize rs2
bne x3, x28, some_label_for_btype_13099409180 # perform operation 
addi x0, x1, 1
some_label_for_btype_13099409180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x80ee662d # initialize rs1
li x28, 0x80ee662d # initialize rs2
bne x3, x28, some_label_for_btype_13099409181 # perform operation 
addi x0, x1, 1
some_label_for_btype_13099409181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x16, 0xd46a6830 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x55555555 # initialize rs1
li x6, 0x9b00231b # initialize rs2
bne x19, x6, some_label_for_btype_35602522200 # perform operation 
addi x0, x1, 1
some_label_for_btype_35602522200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x9b00231b # initialize rs1
li x6, 0x9b00231b # initialize rs2
bne x19, x6, some_label_for_btype_35602522201 # perform operation 
addi x0, x1, 1
some_label_for_btype_35602522201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0xad5e1088 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xbd8ecc3d # initialize rs1
li x24, 0x00000000 # initialize rs2
bne x23, x24, some_label_for_btype_41541641210 # perform operation 
addi x0, x1, 1
some_label_for_btype_41541641210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000000 # initialize rs1
li x24, 0x00000000 # initialize rs2
bne x23, x24, some_label_for_btype_41541641211 # perform operation 
addi x0, x1, 1
some_label_for_btype_41541641211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x61304b93 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xef427598 # initialize rs1
li x5, 0x00000001 # initialize rs2
bne x24, x5, some_label_for_btype_33180802430 # perform operation 
addi x0, x1, 1
some_label_for_btype_33180802430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x00000001 # initialize rs1
li x5, 0x00000001 # initialize rs2
bne x24, x5, some_label_for_btype_33180802431 # perform operation 
addi x0, x1, 1
some_label_for_btype_33180802431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x8, 0x4a9cda07 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xe8b7d9e8 # initialize rs1
li x18, 0x00000002 # initialize rs2
bne x21, x18, some_label_for_btype_40834753560 # perform operation 
addi x0, x1, 1
some_label_for_btype_40834753560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000002 # initialize rs1
li x18, 0x00000002 # initialize rs2
bne x21, x18, some_label_for_btype_40834753561 # perform operation 
addi x0, x1, 1
some_label_for_btype_40834753561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x28, 0x53d1a4b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x37f82c36 # initialize rs1
li x20, 0x80000000 # initialize rs2
bne x14, x20, some_label_for_btype_28391802110 # perform operation 
addi x0, x1, 1
some_label_for_btype_28391802110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x80000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
bne x14, x20, some_label_for_btype_28391802111 # perform operation 
addi x0, x1, 1
some_label_for_btype_28391802111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x28, 0x015ce7fe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x95c39f97 # initialize rs1
li x12, 0x80000001 # initialize rs2
bne x16, x12, some_label_for_btype_31924383280 # perform operation 
addi x0, x1, 1
some_label_for_btype_31924383280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x80000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
bne x16, x12, some_label_for_btype_31924383281 # perform operation 
addi x0, x1, 1
some_label_for_btype_31924383281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x22, 0x8d2b5de2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x17f79ed3 # initialize rs1
li x17, 0x7fffffff # initialize rs2
bne x7, x17, some_label_for_btype_33040316290 # perform operation 
addi x0, x1, 1
some_label_for_btype_33040316290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x7fffffff # initialize rs1
li x17, 0x7fffffff # initialize rs2
bne x7, x17, some_label_for_btype_33040316291 # perform operation 
addi x0, x1, 1
some_label_for_btype_33040316291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x18, 0x8fea19ab # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x9f8889c2 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
bne x16, x14, some_label_for_btype_23721052180 # perform operation 
addi x0, x1, 1
some_label_for_btype_23721052180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x7ffffffe # initialize rs1
li x14, 0x7ffffffe # initialize rs2
bne x16, x14, some_label_for_btype_23721052181 # perform operation 
addi x0, x1, 1
some_label_for_btype_23721052181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0xf96a4735 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xfbced796 # initialize rs1
li x11, 0xffffffff # initialize rs2
bne x17, x11, some_label_for_btype_3527036470 # perform operation 
addi x0, x1, 1
some_label_for_btype_3527036470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xffffffff # initialize rs1
li x11, 0xffffffff # initialize rs2
bne x17, x11, some_label_for_btype_3527036471 # perform operation 
addi x0, x1, 1
some_label_for_btype_3527036471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x20, 0xf44d08b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x5d8928af # initialize rs1
li x7, 0xfffffffe # initialize rs2
bne x31, x7, some_label_for_btype_10258459150 # perform operation 
addi x0, x1, 1
some_label_for_btype_10258459150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xfffffffe # initialize rs1
li x7, 0xfffffffe # initialize rs2
bne x31, x7, some_label_for_btype_10258459151 # perform operation 
addi x0, x1, 1
some_label_for_btype_10258459151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x8, 0xd9f1e070 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x83cfb784 # initialize rs1
li x3, 0x5bbc8877 # initialize rs2
bne x13, x3, some_label_for_btype_21581023760 # perform operation 
addi x0, x1, 1
some_label_for_btype_21581023760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x5bbc8877 # initialize rs1
li x3, 0x5bbc8877 # initialize rs2
bne x13, x3, some_label_for_btype_21581023761 # perform operation 
addi x0, x1, 1
some_label_for_btype_21581023761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x15, 0xc87437a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x849fb0ca # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
bne x16, x21, some_label_for_btype_34761547870 # perform operation 
addi x0, x1, 1
some_label_for_btype_34761547870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
bne x16, x21, some_label_for_btype_34761547871 # perform operation 
addi x0, x1, 1
some_label_for_btype_34761547871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x18, 0x339308dd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xcaa20dbd # initialize rs1
li x15, 0x55555555 # initialize rs2
bne x17, x15, some_label_for_btype_12867626090 # perform operation 
addi x0, x1, 1
some_label_for_btype_12867626090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x55555555 # initialize rs1
li x15, 0x55555555 # initialize rs2
bne x17, x15, some_label_for_btype_12867626091 # perform operation 
addi x0, x1, 1
some_label_for_btype_12867626091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0xd2d6c763 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x00000000 # initialize rs1
li x30, 0x00000000 # initialize rs2
bne x5, x30, some_label_for_btype_28877331190 # perform operation 
addi x0, x1, 1
some_label_for_btype_28877331190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x00000000 # initialize rs1
li x30, 0x00000000 # initialize rs2
bne x5, x30, some_label_for_btype_28877331191 # perform operation 
addi x0, x1, 1
some_label_for_btype_28877331191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x4, 0x3e429eb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000000 # initialize rs1
li x8, 0x00000001 # initialize rs2
bne x19, x8, some_label_for_btype_7782812210 # perform operation 
addi x0, x1, 1
some_label_for_btype_7782812210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
bne x19, x8, some_label_for_btype_7782812211 # perform operation 
addi x0, x1, 1
some_label_for_btype_7782812211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x20, 0x7b4950ca # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000000 # initialize rs1
li x22, 0x00000002 # initialize rs2
bne x13, x22, some_label_for_btype_694136670 # perform operation 
addi x0, x1, 1
some_label_for_btype_694136670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000002 # initialize rs1
li x22, 0x00000002 # initialize rs2
bne x13, x22, some_label_for_btype_694136671 # perform operation 
addi x0, x1, 1
some_label_for_btype_694136671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x26, 0x0640133b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000000 # initialize rs1
li x22, 0x80000000 # initialize rs2
bne x27, x22, some_label_for_btype_21537361850 # perform operation 
addi x0, x1, 1
some_label_for_btype_21537361850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x80000000 # initialize rs1
li x22, 0x80000000 # initialize rs2
bne x27, x22, some_label_for_btype_21537361851 # perform operation 
addi x0, x1, 1
some_label_for_btype_21537361851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x1, 0x26850be6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x00000000 # initialize rs1
li x2, 0x80000001 # initialize rs2
bne x7, x2, some_label_for_btype_35103350840 # perform operation 
addi x0, x1, 1
some_label_for_btype_35103350840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x80000001 # initialize rs1
li x2, 0x80000001 # initialize rs2
bne x7, x2, some_label_for_btype_35103350841 # perform operation 
addi x0, x1, 1
some_label_for_btype_35103350841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x25, 0xb106ada1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000000 # initialize rs1
li x19, 0x7fffffff # initialize rs2
bne x30, x19, some_label_for_btype_32811209210 # perform operation 
addi x0, x1, 1
some_label_for_btype_32811209210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7fffffff # initialize rs1
li x19, 0x7fffffff # initialize rs2
bne x30, x19, some_label_for_btype_32811209211 # perform operation 
addi x0, x1, 1
some_label_for_btype_32811209211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x12, 0x68fe59df # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x00000000 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
bne x10, x1, some_label_for_btype_36800563480 # perform operation 
addi x0, x1, 1
some_label_for_btype_36800563480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x7ffffffe # initialize rs1
li x1, 0x7ffffffe # initialize rs2
bne x10, x1, some_label_for_btype_36800563481 # perform operation 
addi x0, x1, 1
some_label_for_btype_36800563481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x25, 0x38dedb21 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x00000000 # initialize rs1
li x6, 0xffffffff # initialize rs2
bne x1, x6, some_label_for_btype_32389885880 # perform operation 
addi x0, x1, 1
some_label_for_btype_32389885880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xffffffff # initialize rs1
li x6, 0xffffffff # initialize rs2
bne x1, x6, some_label_for_btype_32389885881 # perform operation 
addi x0, x1, 1
some_label_for_btype_32389885881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x31, 0xbd6175fb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000000 # initialize rs1
li x12, 0xfffffffe # initialize rs2
bne x14, x12, some_label_for_btype_5355268230 # perform operation 
addi x0, x1, 1
some_label_for_btype_5355268230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xfffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
bne x14, x12, some_label_for_btype_5355268231 # perform operation 
addi x0, x1, 1
some_label_for_btype_5355268231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x3, 0x00392a84 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x00000000 # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
bne x29, x20, some_label_for_btype_5269975430 # perform operation 
addi x0, x1, 1
some_label_for_btype_5269975430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x5bbc8877 # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
bne x29, x20, some_label_for_btype_5269975431 # perform operation 
addi x0, x1, 1
some_label_for_btype_5269975431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x25, 0x58fac3e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000000 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bne x30, x11, some_label_for_btype_1388790510 # perform operation 
addi x0, x1, 1
some_label_for_btype_1388790510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bne x30, x11, some_label_for_btype_1388790511 # perform operation 
addi x0, x1, 1
some_label_for_btype_1388790511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x7, 0x99a68e3c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x00000000 # initialize rs1
li x19, 0x55555555 # initialize rs2
bne x20, x19, some_label_for_btype_2361412300 # perform operation 
addi x0, x1, 1
some_label_for_btype_2361412300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x55555555 # initialize rs1
li x19, 0x55555555 # initialize rs2
bne x20, x19, some_label_for_btype_2361412301 # perform operation 
addi x0, x1, 1
some_label_for_btype_2361412301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x30, 0x01fce229 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000001 # initialize rs1
li x6, 0x00000000 # initialize rs2
bne x14, x6, some_label_for_btype_22753538750 # perform operation 
addi x0, x1, 1
some_label_for_btype_22753538750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
bne x14, x6, some_label_for_btype_22753538751 # perform operation 
addi x0, x1, 1
some_label_for_btype_22753538751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x12, 0x96ea6418 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000001 # initialize rs1
li x3, 0x00000001 # initialize rs2
bne x27, x3, some_label_for_btype_36966812630 # perform operation 
addi x0, x1, 1
some_label_for_btype_36966812630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x00000001 # initialize rs1
li x3, 0x00000001 # initialize rs2
bne x27, x3, some_label_for_btype_36966812631 # perform operation 
addi x0, x1, 1
some_label_for_btype_36966812631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x16, 0x929a7a5b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000001 # initialize rs1
li x27, 0x00000002 # initialize rs2
bne x31, x27, some_label_for_btype_6686810950 # perform operation 
addi x0, x1, 1
some_label_for_btype_6686810950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x00000002 # initialize rs1
li x27, 0x00000002 # initialize rs2
bne x31, x27, some_label_for_btype_6686810951 # perform operation 
addi x0, x1, 1
some_label_for_btype_6686810951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x31, 0x89e3ccf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x00000001 # initialize rs1
li x13, 0x80000000 # initialize rs2
bne x20, x13, some_label_for_btype_23131837940 # perform operation 
addi x0, x1, 1
some_label_for_btype_23131837940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x80000000 # initialize rs1
li x13, 0x80000000 # initialize rs2
bne x20, x13, some_label_for_btype_23131837941 # perform operation 
addi x0, x1, 1
some_label_for_btype_23131837941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x26, 0xcfec64e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
bne x2, x20, some_label_for_btype_42320101660 # perform operation 
addi x0, x1, 1
some_label_for_btype_42320101660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x80000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
bne x2, x20, some_label_for_btype_42320101661 # perform operation 
addi x0, x1, 1
some_label_for_btype_42320101661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x22, 0x88ee2897 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000001 # initialize rs1
li x10, 0x7fffffff # initialize rs2
bne x14, x10, some_label_for_btype_25102433270 # perform operation 
addi x0, x1, 1
some_label_for_btype_25102433270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
bne x14, x10, some_label_for_btype_25102433271 # perform operation 
addi x0, x1, 1
some_label_for_btype_25102433271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x31, 0x2502629d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x00000001 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
bne x6, x15, some_label_for_btype_37501746720 # perform operation 
addi x0, x1, 1
some_label_for_btype_37501746720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x7ffffffe # initialize rs1
li x15, 0x7ffffffe # initialize rs2
bne x6, x15, some_label_for_btype_37501746721 # perform operation 
addi x0, x1, 1
some_label_for_btype_37501746721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x17, 0x9f889566 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000001 # initialize rs1
li x26, 0xffffffff # initialize rs2
bne x15, x26, some_label_for_btype_1613673860 # perform operation 
addi x0, x1, 1
some_label_for_btype_1613673860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xffffffff # initialize rs1
li x26, 0xffffffff # initialize rs2
bne x15, x26, some_label_for_btype_1613673861 # perform operation 
addi x0, x1, 1
some_label_for_btype_1613673861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x29, 0x88def0fe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000001 # initialize rs1
li x20, 0xfffffffe # initialize rs2
bne x14, x20, some_label_for_btype_35238177250 # perform operation 
addi x0, x1, 1
some_label_for_btype_35238177250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xfffffffe # initialize rs1
li x20, 0xfffffffe # initialize rs2
bne x14, x20, some_label_for_btype_35238177251 # perform operation 
addi x0, x1, 1
some_label_for_btype_35238177251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x25, 0xf04e5f86 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x00000001 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
bne x7, x18, some_label_for_btype_37858502910 # perform operation 
addi x0, x1, 1
some_label_for_btype_37858502910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x5bbc8877 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
bne x7, x18, some_label_for_btype_37858502911 # perform operation 
addi x0, x1, 1
some_label_for_btype_37858502911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x5, 0x534a62de # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000001 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
bne x18, x30, some_label_for_btype_35766277160 # perform operation 
addi x0, x1, 1
some_label_for_btype_35766277160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
bne x18, x30, some_label_for_btype_35766277161 # perform operation 
addi x0, x1, 1
some_label_for_btype_35766277161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x14, 0x46bbd147 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000001 # initialize rs1
li x27, 0x55555555 # initialize rs2
bne x31, x27, some_label_for_btype_5814842350 # perform operation 
addi x0, x1, 1
some_label_for_btype_5814842350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x55555555 # initialize rs1
li x27, 0x55555555 # initialize rs2
bne x31, x27, some_label_for_btype_5814842351 # perform operation 
addi x0, x1, 1
some_label_for_btype_5814842351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x31, 0xcb02727a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x00000002 # initialize rs1
li x22, 0x00000000 # initialize rs2
bne x21, x22, some_label_for_btype_28911386730 # perform operation 
addi x0, x1, 1
some_label_for_btype_28911386730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000000 # initialize rs1
li x22, 0x00000000 # initialize rs2
bne x21, x22, some_label_for_btype_28911386731 # perform operation 
addi x0, x1, 1
some_label_for_btype_28911386731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x26, 0x1ea930aa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x00000002 # initialize rs1
li x23, 0x00000001 # initialize rs2
bne x24, x23, some_label_for_btype_38153065280 # perform operation 
addi x0, x1, 1
some_label_for_btype_38153065280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x00000001 # initialize rs1
li x23, 0x00000001 # initialize rs2
bne x24, x23, some_label_for_btype_38153065281 # perform operation 
addi x0, x1, 1
some_label_for_btype_38153065281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x28, 0x11f2f0dd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000002 # initialize rs1
li x23, 0x00000002 # initialize rs2
bne x14, x23, some_label_for_btype_23691414030 # perform operation 
addi x0, x1, 1
some_label_for_btype_23691414030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000002 # initialize rs1
li x23, 0x00000002 # initialize rs2
bne x14, x23, some_label_for_btype_23691414031 # perform operation 
addi x0, x1, 1
some_label_for_btype_23691414031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x3, 0x3372387a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x00000002 # initialize rs1
li x2, 0x80000000 # initialize rs2
bne x29, x2, some_label_for_btype_13079027570 # perform operation 
addi x0, x1, 1
some_label_for_btype_13079027570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x80000000 # initialize rs1
li x2, 0x80000000 # initialize rs2
bne x29, x2, some_label_for_btype_13079027571 # perform operation 
addi x0, x1, 1
some_label_for_btype_13079027571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x15, 0x39c9045b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000002 # initialize rs1
li x29, 0x80000001 # initialize rs2
bne x17, x29, some_label_for_btype_3575717530 # perform operation 
addi x0, x1, 1
some_label_for_btype_3575717530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x80000001 # initialize rs1
li x29, 0x80000001 # initialize rs2
bne x17, x29, some_label_for_btype_3575717531 # perform operation 
addi x0, x1, 1
some_label_for_btype_3575717531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x4, 0xef596e92 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x00000002 # initialize rs1
li x3, 0x7fffffff # initialize rs2
bne x9, x3, some_label_for_btype_16824515540 # perform operation 
addi x0, x1, 1
some_label_for_btype_16824515540:
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
bne x9, x3, some_label_for_btype_16824515541 # perform operation 
addi x0, x1, 1
some_label_for_btype_16824515541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x2, 0xde74c1cb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x00000002 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
bne x29, x27, some_label_for_btype_13313144000 # perform operation 
addi x0, x1, 1
some_label_for_btype_13313144000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x7ffffffe # initialize rs1
li x27, 0x7ffffffe # initialize rs2
bne x29, x27, some_label_for_btype_13313144001 # perform operation 
addi x0, x1, 1
some_label_for_btype_13313144001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x30, 0x1abee657 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x00000002 # initialize rs1
li x22, 0xffffffff # initialize rs2
bne x20, x22, some_label_for_btype_19194335820 # perform operation 
addi x0, x1, 1
some_label_for_btype_19194335820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xffffffff # initialize rs1
li x22, 0xffffffff # initialize rs2
bne x20, x22, some_label_for_btype_19194335821 # perform operation 
addi x0, x1, 1
some_label_for_btype_19194335821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x28, 0xa6043694 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000002 # initialize rs1
li x13, 0xfffffffe # initialize rs2
bne x15, x13, some_label_for_btype_28880184600 # perform operation 
addi x0, x1, 1
some_label_for_btype_28880184600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xfffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
bne x15, x13, some_label_for_btype_28880184601 # perform operation 
addi x0, x1, 1
some_label_for_btype_28880184601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x28, 0x6688b352 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000002 # initialize rs1
li x25, 0x5bbc8877 # initialize rs2
bne x12, x25, some_label_for_btype_15276372330 # perform operation 
addi x0, x1, 1
some_label_for_btype_15276372330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x5bbc8877 # initialize rs1
li x25, 0x5bbc8877 # initialize rs2
bne x12, x25, some_label_for_btype_15276372331 # perform operation 
addi x0, x1, 1
some_label_for_btype_15276372331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x20, 0xc33b4951 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000002 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
bne x18, x10, some_label_for_btype_37614368150 # perform operation 
addi x0, x1, 1
some_label_for_btype_37614368150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
bne x18, x10, some_label_for_btype_37614368151 # perform operation 
addi x0, x1, 1
some_label_for_btype_37614368151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x9, 0x62218de4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x00000002 # initialize rs1
li x5, 0x55555555 # initialize rs2
bne x24, x5, some_label_for_btype_32062260230 # perform operation 
addi x0, x1, 1
some_label_for_btype_32062260230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x55555555 # initialize rs1
li x5, 0x55555555 # initialize rs2
bne x24, x5, some_label_for_btype_32062260231 # perform operation 
addi x0, x1, 1
some_label_for_btype_32062260231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x24, 0x9fd89740 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x80000000 # initialize rs1
li x17, 0x00000000 # initialize rs2
bne x14, x17, some_label_for_btype_29801920750 # perform operation 
addi x0, x1, 1
some_label_for_btype_29801920750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000000 # initialize rs1
li x17, 0x00000000 # initialize rs2
bne x14, x17, some_label_for_btype_29801920751 # perform operation 
addi x0, x1, 1
some_label_for_btype_29801920751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x16, 0xa01f3eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x80000000 # initialize rs1
li x29, 0x00000001 # initialize rs2
bne x21, x29, some_label_for_btype_2603484410 # perform operation 
addi x0, x1, 1
some_label_for_btype_2603484410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000001 # initialize rs1
li x29, 0x00000001 # initialize rs2
bne x21, x29, some_label_for_btype_2603484411 # perform operation 
addi x0, x1, 1
some_label_for_btype_2603484411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x6, 0x51ae3897 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x80000000 # initialize rs1
li x15, 0x00000002 # initialize rs2
bne x7, x15, some_label_for_btype_36935061170 # perform operation 
addi x0, x1, 1
some_label_for_btype_36935061170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000002 # initialize rs1
li x15, 0x00000002 # initialize rs2
bne x7, x15, some_label_for_btype_36935061171 # perform operation 
addi x0, x1, 1
some_label_for_btype_36935061171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x18, 0x0d2a289b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x80000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
bne x2, x9, some_label_for_btype_23279509790 # perform operation 
addi x0, x1, 1
some_label_for_btype_23279509790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x80000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
bne x2, x9, some_label_for_btype_23279509791 # perform operation 
addi x0, x1, 1
some_label_for_btype_23279509791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x27, 0x50d1babc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x80000000 # initialize rs1
li x26, 0x80000001 # initialize rs2
bne x5, x26, some_label_for_btype_11204784110 # perform operation 
addi x0, x1, 1
some_label_for_btype_11204784110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x80000001 # initialize rs1
li x26, 0x80000001 # initialize rs2
bne x5, x26, some_label_for_btype_11204784111 # perform operation 
addi x0, x1, 1
some_label_for_btype_11204784111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x12, 0x8e3c92c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x80000000 # initialize rs1
li x19, 0x7fffffff # initialize rs2
bne x30, x19, some_label_for_btype_16375447790 # perform operation 
addi x0, x1, 1
some_label_for_btype_16375447790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7fffffff # initialize rs1
li x19, 0x7fffffff # initialize rs2
bne x30, x19, some_label_for_btype_16375447791 # perform operation 
addi x0, x1, 1
some_label_for_btype_16375447791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x14, 0xe5d780e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x80000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
bne x2, x23, some_label_for_btype_38176033860 # perform operation 
addi x0, x1, 1
some_label_for_btype_38176033860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x7ffffffe # initialize rs1
li x23, 0x7ffffffe # initialize rs2
bne x2, x23, some_label_for_btype_38176033861 # perform operation 
addi x0, x1, 1
some_label_for_btype_38176033861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x25, 0xb8940bee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x80000000 # initialize rs1
li x22, 0xffffffff # initialize rs2
bne x11, x22, some_label_for_btype_38951313030 # perform operation 
addi x0, x1, 1
some_label_for_btype_38951313030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xffffffff # initialize rs1
li x22, 0xffffffff # initialize rs2
bne x11, x22, some_label_for_btype_38951313031 # perform operation 
addi x0, x1, 1
some_label_for_btype_38951313031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x25, 0xc228cc9a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x80000000 # initialize rs1
li x13, 0xfffffffe # initialize rs2
bne x8, x13, some_label_for_btype_10819361880 # perform operation 
addi x0, x1, 1
some_label_for_btype_10819361880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xfffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
bne x8, x13, some_label_for_btype_10819361881 # perform operation 
addi x0, x1, 1
some_label_for_btype_10819361881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x6, 0x1f922a8e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x80000000 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
bne x12, x2, some_label_for_btype_32790186700 # perform operation 
addi x0, x1, 1
some_label_for_btype_32790186700:
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
bne x12, x2, some_label_for_btype_32790186701 # perform operation 
addi x0, x1, 1
some_label_for_btype_32790186701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x7, 0xe1bd5445 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x80000000 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
bne x20, x2, some_label_for_btype_13135129370 # perform operation 
addi x0, x1, 1
some_label_for_btype_13135129370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
bne x20, x2, some_label_for_btype_13135129371 # perform operation 
addi x0, x1, 1
some_label_for_btype_13135129371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x13, 0x14939221 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x80000000 # initialize rs1
li x5, 0x55555555 # initialize rs2
bne x22, x5, some_label_for_btype_12609744930 # perform operation 
addi x0, x1, 1
some_label_for_btype_12609744930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x55555555 # initialize rs1
li x5, 0x55555555 # initialize rs2
bne x22, x5, some_label_for_btype_12609744931 # perform operation 
addi x0, x1, 1
some_label_for_btype_12609744931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x29, 0xeb51a5fe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x80000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
bne x10, x18, some_label_for_btype_39635144580 # perform operation 
addi x0, x1, 1
some_label_for_btype_39635144580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x00000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
bne x10, x18, some_label_for_btype_39635144581 # perform operation 
addi x0, x1, 1
some_label_for_btype_39635144581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x3, 0x31575232 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x80000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
bne x4, x16, some_label_for_btype_29984165950 # perform operation 
addi x0, x1, 1
some_label_for_btype_29984165950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
bne x4, x16, some_label_for_btype_29984165951 # perform operation 
addi x0, x1, 1
some_label_for_btype_29984165951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x13, 0x06099f49 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x80000001 # initialize rs1
li x10, 0x00000002 # initialize rs2
bne x14, x10, some_label_for_btype_12312559800 # perform operation 
addi x0, x1, 1
some_label_for_btype_12312559800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000002 # initialize rs1
li x10, 0x00000002 # initialize rs2
bne x14, x10, some_label_for_btype_12312559801 # perform operation 
addi x0, x1, 1
some_label_for_btype_12312559801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x15, 0x15a06477 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x80000001 # initialize rs1
li x29, 0x80000000 # initialize rs2
bne x8, x29, some_label_for_btype_12442696430 # perform operation 
addi x0, x1, 1
some_label_for_btype_12442696430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x80000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
bne x8, x29, some_label_for_btype_12442696431 # perform operation 
addi x0, x1, 1
some_label_for_btype_12442696431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x12, 0x80bc3723 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x80000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
bne x19, x7, some_label_for_btype_18428788960 # perform operation 
addi x0, x1, 1
some_label_for_btype_18428788960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x80000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
bne x19, x7, some_label_for_btype_18428788961 # perform operation 
addi x0, x1, 1
some_label_for_btype_18428788961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x5, 0xd6cc9786 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x80000001 # initialize rs1
li x17, 0x7fffffff # initialize rs2
bne x22, x17, some_label_for_btype_39510172100 # perform operation 
addi x0, x1, 1
some_label_for_btype_39510172100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x7fffffff # initialize rs1
li x17, 0x7fffffff # initialize rs2
bne x22, x17, some_label_for_btype_39510172101 # perform operation 
addi x0, x1, 1
some_label_for_btype_39510172101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x4, 0xed772695 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x80000001 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
bne x17, x10, some_label_for_btype_6648693530 # perform operation 
addi x0, x1, 1
some_label_for_btype_6648693530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x7ffffffe # initialize rs1
li x10, 0x7ffffffe # initialize rs2
bne x17, x10, some_label_for_btype_6648693531 # perform operation 
addi x0, x1, 1
some_label_for_btype_6648693531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x8, 0x5287924c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x80000001 # initialize rs1
li x15, 0xffffffff # initialize rs2
bne x5, x15, some_label_for_btype_14169749080 # perform operation 
addi x0, x1, 1
some_label_for_btype_14169749080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
bne x5, x15, some_label_for_btype_14169749081 # perform operation 
addi x0, x1, 1
some_label_for_btype_14169749081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x25, 0xbf2a5565 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x80000001 # initialize rs1
li x11, 0xfffffffe # initialize rs2
bne x4, x11, some_label_for_btype_11842568430 # perform operation 
addi x0, x1, 1
some_label_for_btype_11842568430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xfffffffe # initialize rs1
li x11, 0xfffffffe # initialize rs2
bne x4, x11, some_label_for_btype_11842568431 # perform operation 
addi x0, x1, 1
some_label_for_btype_11842568431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x15, 0x4a1cb316 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x80000001 # initialize rs1
li x3, 0x5bbc8877 # initialize rs2
bne x11, x3, some_label_for_btype_1528412670 # perform operation 
addi x0, x1, 1
some_label_for_btype_1528412670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x5bbc8877 # initialize rs1
li x3, 0x5bbc8877 # initialize rs2
bne x11, x3, some_label_for_btype_1528412671 # perform operation 
addi x0, x1, 1
some_label_for_btype_1528412671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x25, 0xb13fbb56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x80000001 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
bne x24, x16, some_label_for_btype_42313721340 # perform operation 
addi x0, x1, 1
some_label_for_btype_42313721340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
bne x24, x16, some_label_for_btype_42313721341 # perform operation 
addi x0, x1, 1
some_label_for_btype_42313721341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x1, 0x9dfe2920 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x80000001 # initialize rs1
li x28, 0x55555555 # initialize rs2
bne x25, x28, some_label_for_btype_39350869850 # perform operation 
addi x0, x1, 1
some_label_for_btype_39350869850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
bne x25, x28, some_label_for_btype_39350869851 # perform operation 
addi x0, x1, 1
some_label_for_btype_39350869851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x5, 0x4dea25d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x7fffffff # initialize rs1
li x8, 0x00000000 # initialize rs2
bne x2, x8, some_label_for_btype_4826390830 # perform operation 
addi x0, x1, 1
some_label_for_btype_4826390830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x00000000 # initialize rs1
li x8, 0x00000000 # initialize rs2
bne x2, x8, some_label_for_btype_4826390831 # perform operation 
addi x0, x1, 1
some_label_for_btype_4826390831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x1, 0x28633193 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x7fffffff # initialize rs1
li x12, 0x00000001 # initialize rs2
bne x26, x12, some_label_for_btype_27611424550 # perform operation 
addi x0, x1, 1
some_label_for_btype_27611424550:
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
bne x26, x12, some_label_for_btype_27611424551 # perform operation 
addi x0, x1, 1
some_label_for_btype_27611424551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x26, 0x8a89fe40 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7fffffff # initialize rs1
li x27, 0x00000002 # initialize rs2
bne x24, x27, some_label_for_btype_28621144630 # perform operation 
addi x0, x1, 1
some_label_for_btype_28621144630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x00000002 # initialize rs1
li x27, 0x00000002 # initialize rs2
bne x24, x27, some_label_for_btype_28621144631 # perform operation 
addi x0, x1, 1
some_label_for_btype_28621144631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x4, 0x24826766 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x7fffffff # initialize rs1
li x23, 0x80000000 # initialize rs2
bne x16, x23, some_label_for_btype_19719071420 # perform operation 
addi x0, x1, 1
some_label_for_btype_19719071420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x80000000 # initialize rs1
li x23, 0x80000000 # initialize rs2
bne x16, x23, some_label_for_btype_19719071421 # perform operation 
addi x0, x1, 1
some_label_for_btype_19719071421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x12, 0x45f856d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x7fffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
bne x1, x9, some_label_for_btype_18255416010 # perform operation 
addi x0, x1, 1
some_label_for_btype_18255416010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x80000001 # initialize rs1
li x9, 0x80000001 # initialize rs2
bne x1, x9, some_label_for_btype_18255416011 # perform operation 
addi x0, x1, 1
some_label_for_btype_18255416011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x22, 0x2dad698c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
bne x31, x10, some_label_for_btype_41478870090 # perform operation 
addi x0, x1, 1
some_label_for_btype_41478870090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
bne x31, x10, some_label_for_btype_41478870091 # perform operation 
addi x0, x1, 1
some_label_for_btype_41478870091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x23, 0x725745bd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7fffffff # initialize rs1
li x21, 0x7ffffffe # initialize rs2
bne x28, x21, some_label_for_btype_7144249280 # perform operation 
addi x0, x1, 1
some_label_for_btype_7144249280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7ffffffe # initialize rs1
li x21, 0x7ffffffe # initialize rs2
bne x28, x21, some_label_for_btype_7144249281 # perform operation 
addi x0, x1, 1
some_label_for_btype_7144249281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x30, 0xe65b1084 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7fffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
bne x24, x14, some_label_for_btype_26835436580 # perform operation 
addi x0, x1, 1
some_label_for_btype_26835436580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xffffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
bne x24, x14, some_label_for_btype_26835436581 # perform operation 
addi x0, x1, 1
some_label_for_btype_26835436581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x21, 0xb557db84 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x7fffffff # initialize rs1
li x10, 0xfffffffe # initialize rs2
bne x30, x10, some_label_for_btype_38172021660 # perform operation 
addi x0, x1, 1
some_label_for_btype_38172021660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xfffffffe # initialize rs1
li x10, 0xfffffffe # initialize rs2
bne x30, x10, some_label_for_btype_38172021661 # perform operation 
addi x0, x1, 1
some_label_for_btype_38172021661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x9, 0xbf9a5e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7fffffff # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
bne x17, x21, some_label_for_btype_17570759990 # perform operation 
addi x0, x1, 1
some_label_for_btype_17570759990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x5bbc8877 # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
bne x17, x21, some_label_for_btype_17570759991 # perform operation 
addi x0, x1, 1
some_label_for_btype_17570759991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x29, 0x7370f118 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x7fffffff # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
bne x13, x14, some_label_for_btype_1333550430 # perform operation 
addi x0, x1, 1
some_label_for_btype_1333550430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
bne x13, x14, some_label_for_btype_1333550431 # perform operation 
addi x0, x1, 1
some_label_for_btype_1333550431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x3, 0x6a5c623e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7fffffff # initialize rs1
li x29, 0x55555555 # initialize rs2
bne x17, x29, some_label_for_btype_42639952660 # perform operation 
addi x0, x1, 1
some_label_for_btype_42639952660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x55555555 # initialize rs1
li x29, 0x55555555 # initialize rs2
bne x17, x29, some_label_for_btype_42639952661 # perform operation 
addi x0, x1, 1
some_label_for_btype_42639952661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x13, 0x9233031b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7ffffffe # initialize rs1
li x21, 0x00000000 # initialize rs2
bne x28, x21, some_label_for_btype_26434829340 # perform operation 
addi x0, x1, 1
some_label_for_btype_26434829340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x00000000 # initialize rs1
li x21, 0x00000000 # initialize rs2
bne x28, x21, some_label_for_btype_26434829341 # perform operation 
addi x0, x1, 1
some_label_for_btype_26434829341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x12, 0xce86de4a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x7ffffffe # initialize rs1
li x29, 0x00000001 # initialize rs2
bne x2, x29, some_label_for_btype_3031170760 # perform operation 
addi x0, x1, 1
some_label_for_btype_3031170760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x00000001 # initialize rs1
li x29, 0x00000001 # initialize rs2
bne x2, x29, some_label_for_btype_3031170761 # perform operation 
addi x0, x1, 1
some_label_for_btype_3031170761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x25, 0x09f3213e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x7ffffffe # initialize rs1
li x11, 0x00000002 # initialize rs2
bne x8, x11, some_label_for_btype_17272015680 # perform operation 
addi x0, x1, 1
some_label_for_btype_17272015680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x00000002 # initialize rs1
li x11, 0x00000002 # initialize rs2
bne x8, x11, some_label_for_btype_17272015681 # perform operation 
addi x0, x1, 1
some_label_for_btype_17272015681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x13, 0x3cdcdf53 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7ffffffe # initialize rs1
li x19, 0x80000000 # initialize rs2
bne x28, x19, some_label_for_btype_22386637170 # perform operation 
addi x0, x1, 1
some_label_for_btype_22386637170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x80000000 # initialize rs1
li x19, 0x80000000 # initialize rs2
bne x28, x19, some_label_for_btype_22386637171 # perform operation 
addi x0, x1, 1
some_label_for_btype_22386637171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x2, 0x4600fbde # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7ffffffe # initialize rs1
li x24, 0x80000001 # initialize rs2
bne x28, x24, some_label_for_btype_14493116870 # perform operation 
addi x0, x1, 1
some_label_for_btype_14493116870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x80000001 # initialize rs1
li x24, 0x80000001 # initialize rs2
bne x28, x24, some_label_for_btype_14493116871 # perform operation 
addi x0, x1, 1
some_label_for_btype_14493116871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x20, 0x9f84cd65 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x7ffffffe # initialize rs1
li x18, 0x7fffffff # initialize rs2
bne x9, x18, some_label_for_btype_3735600480 # perform operation 
addi x0, x1, 1
some_label_for_btype_3735600480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x7fffffff # initialize rs1
li x18, 0x7fffffff # initialize rs2
bne x9, x18, some_label_for_btype_3735600481 # perform operation 
addi x0, x1, 1
some_label_for_btype_3735600481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x9, 0x3d99ed24 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x7ffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
bne x13, x26, some_label_for_btype_11050554150 # perform operation 
addi x0, x1, 1
some_label_for_btype_11050554150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x7ffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
bne x13, x26, some_label_for_btype_11050554151 # perform operation 
addi x0, x1, 1
some_label_for_btype_11050554151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x8, 0x4f73a57d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7ffffffe # initialize rs1
li x30, 0xffffffff # initialize rs2
bne x29, x30, some_label_for_btype_30247194140 # perform operation 
addi x0, x1, 1
some_label_for_btype_30247194140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xffffffff # initialize rs1
li x30, 0xffffffff # initialize rs2
bne x29, x30, some_label_for_btype_30247194141 # perform operation 
addi x0, x1, 1
some_label_for_btype_30247194141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x23, 0x431b6b88 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x7ffffffe # initialize rs1
li x31, 0xfffffffe # initialize rs2
bne x1, x31, some_label_for_btype_22302489540 # perform operation 
addi x0, x1, 1
some_label_for_btype_22302489540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xfffffffe # initialize rs1
li x31, 0xfffffffe # initialize rs2
bne x1, x31, some_label_for_btype_22302489541 # perform operation 
addi x0, x1, 1
some_label_for_btype_22302489541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x9, 0x4954d927 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7ffffffe # initialize rs1
li x23, 0x5bbc8877 # initialize rs2
bne x29, x23, some_label_for_btype_42137062330 # perform operation 
addi x0, x1, 1
some_label_for_btype_42137062330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x5bbc8877 # initialize rs1
li x23, 0x5bbc8877 # initialize rs2
bne x29, x23, some_label_for_btype_42137062331 # perform operation 
addi x0, x1, 1
some_label_for_btype_42137062331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x27, 0x3093a02e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x7ffffffe # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
bne x9, x5, some_label_for_btype_20782249680 # perform operation 
addi x0, x1, 1
some_label_for_btype_20782249680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
bne x9, x5, some_label_for_btype_20782249681 # perform operation 
addi x0, x1, 1
some_label_for_btype_20782249681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x5, 0xb10ef07d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x7ffffffe # initialize rs1
li x25, 0x55555555 # initialize rs2
bne x30, x25, some_label_for_btype_27145321920 # perform operation 
addi x0, x1, 1
some_label_for_btype_27145321920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x55555555 # initialize rs1
li x25, 0x55555555 # initialize rs2
bne x30, x25, some_label_for_btype_27145321921 # perform operation 
addi x0, x1, 1
some_label_for_btype_27145321921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x30, 0x39505995 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xffffffff # initialize rs1
li x29, 0x00000000 # initialize rs2
bne x17, x29, some_label_for_btype_862899160 # perform operation 
addi x0, x1, 1
some_label_for_btype_862899160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
bne x17, x29, some_label_for_btype_862899161 # perform operation 
addi x0, x1, 1
some_label_for_btype_862899161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x6, 0x7e8757fd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xffffffff # initialize rs1
li x15, 0x00000001 # initialize rs2
bne x28, x15, some_label_for_btype_41025111920 # perform operation 
addi x0, x1, 1
some_label_for_btype_41025111920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
bne x28, x15, some_label_for_btype_41025111921 # perform operation 
addi x0, x1, 1
some_label_for_btype_41025111921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x14, 0x681fcefb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xffffffff # initialize rs1
li x8, 0x00000002 # initialize rs2
bne x20, x8, some_label_for_btype_18599295600 # perform operation 
addi x0, x1, 1
some_label_for_btype_18599295600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000002 # initialize rs1
li x8, 0x00000002 # initialize rs2
bne x20, x8, some_label_for_btype_18599295601 # perform operation 
addi x0, x1, 1
some_label_for_btype_18599295601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x17, 0xdbc6f34e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xffffffff # initialize rs1
li x5, 0x80000000 # initialize rs2
bne x12, x5, some_label_for_btype_25321824590 # perform operation 
addi x0, x1, 1
some_label_for_btype_25321824590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x80000000 # initialize rs1
li x5, 0x80000000 # initialize rs2
bne x12, x5, some_label_for_btype_25321824591 # perform operation 
addi x0, x1, 1
some_label_for_btype_25321824591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x13, 0x5b909e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xffffffff # initialize rs1
li x26, 0x80000001 # initialize rs2
bne x25, x26, some_label_for_btype_35361574180 # perform operation 
addi x0, x1, 1
some_label_for_btype_35361574180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x80000001 # initialize rs1
li x26, 0x80000001 # initialize rs2
bne x25, x26, some_label_for_btype_35361574181 # perform operation 
addi x0, x1, 1
some_label_for_btype_35361574181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x18, 0xbc10fa65 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xffffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
bne x5, x9, some_label_for_btype_18382487140 # perform operation 
addi x0, x1, 1
some_label_for_btype_18382487140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x7fffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
bne x5, x9, some_label_for_btype_18382487141 # perform operation 
addi x0, x1, 1
some_label_for_btype_18382487141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x17, 0x2bc06490 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xffffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
bne x4, x16, some_label_for_btype_36552885020 # perform operation 
addi x0, x1, 1
some_label_for_btype_36552885020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x7ffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
bne x4, x16, some_label_for_btype_36552885021 # perform operation 
addi x0, x1, 1
some_label_for_btype_36552885021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x5, 0x9d5101a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
bne x27, x15, some_label_for_btype_11626961210 # perform operation 
addi x0, x1, 1
some_label_for_btype_11626961210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
bne x27, x15, some_label_for_btype_11626961211 # perform operation 
addi x0, x1, 1
some_label_for_btype_11626961211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x23, 0xcf0ca0de # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xffffffff # initialize rs1
li x26, 0xfffffffe # initialize rs2
bne x8, x26, some_label_for_btype_25506925840 # perform operation 
addi x0, x1, 1
some_label_for_btype_25506925840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xfffffffe # initialize rs1
li x26, 0xfffffffe # initialize rs2
bne x8, x26, some_label_for_btype_25506925841 # perform operation 
addi x0, x1, 1
some_label_for_btype_25506925841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x5, 0x840d0bc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xffffffff # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
bne x15, x20, some_label_for_btype_41268789330 # perform operation 
addi x0, x1, 1
some_label_for_btype_41268789330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x5bbc8877 # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
bne x15, x20, some_label_for_btype_41268789331 # perform operation 
addi x0, x1, 1
some_label_for_btype_41268789331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x27, 0x8d973ec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xffffffff # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
bne x28, x8, some_label_for_btype_19695551980 # perform operation 
addi x0, x1, 1
some_label_for_btype_19695551980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
bne x28, x8, some_label_for_btype_19695551981 # perform operation 
addi x0, x1, 1
some_label_for_btype_19695551981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x28, 0x7bac4814 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xffffffff # initialize rs1
li x13, 0x55555555 # initialize rs2
bne x17, x13, some_label_for_btype_25663799290 # perform operation 
addi x0, x1, 1
some_label_for_btype_25663799290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x55555555 # initialize rs1
li x13, 0x55555555 # initialize rs2
bne x17, x13, some_label_for_btype_25663799291 # perform operation 
addi x0, x1, 1
some_label_for_btype_25663799291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x9, 0x2115960a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xfffffffe # initialize rs1
li x5, 0x00000000 # initialize rs2
bne x3, x5, some_label_for_btype_32599588040 # perform operation 
addi x0, x1, 1
some_label_for_btype_32599588040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000000 # initialize rs1
li x5, 0x00000000 # initialize rs2
bne x3, x5, some_label_for_btype_32599588041 # perform operation 
addi x0, x1, 1
some_label_for_btype_32599588041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x23, 0xd0ee260c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xfffffffe # initialize rs1
li x22, 0x00000001 # initialize rs2
bne x18, x22, some_label_for_btype_34833793570 # perform operation 
addi x0, x1, 1
some_label_for_btype_34833793570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x00000001 # initialize rs1
li x22, 0x00000001 # initialize rs2
bne x18, x22, some_label_for_btype_34833793571 # perform operation 
addi x0, x1, 1
some_label_for_btype_34833793571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x8, 0x83ea72a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xfffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
bne x29, x13, some_label_for_btype_21923136310 # perform operation 
addi x0, x1, 1
some_label_for_btype_21923136310:
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
bne x29, x13, some_label_for_btype_21923136311 # perform operation 
addi x0, x1, 1
some_label_for_btype_21923136311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x24, 0xe1df21b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xfffffffe # initialize rs1
li x12, 0x80000000 # initialize rs2
bne x15, x12, some_label_for_btype_40567424320 # perform operation 
addi x0, x1, 1
some_label_for_btype_40567424320:
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
bne x15, x12, some_label_for_btype_40567424321 # perform operation 
addi x0, x1, 1
some_label_for_btype_40567424321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x24, 0x46a0ec33 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xfffffffe # initialize rs1
li x12, 0x80000001 # initialize rs2
bne x9, x12, some_label_for_btype_42183032280 # perform operation 
addi x0, x1, 1
some_label_for_btype_42183032280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x80000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
bne x9, x12, some_label_for_btype_42183032281 # perform operation 
addi x0, x1, 1
some_label_for_btype_42183032281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x19, 0x1ef14c5b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xfffffffe # initialize rs1
li x8, 0x7fffffff # initialize rs2
bne x22, x8, some_label_for_btype_22929324310 # perform operation 
addi x0, x1, 1
some_label_for_btype_22929324310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x7fffffff # initialize rs1
li x8, 0x7fffffff # initialize rs2
bne x22, x8, some_label_for_btype_22929324311 # perform operation 
addi x0, x1, 1
some_label_for_btype_22929324311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x18, 0xffab38de # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xfffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
bne x24, x26, some_label_for_btype_36822288700 # perform operation 
addi x0, x1, 1
some_label_for_btype_36822288700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x7ffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
bne x24, x26, some_label_for_btype_36822288701 # perform operation 
addi x0, x1, 1
some_label_for_btype_36822288701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x5, 0x05b03e40 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xfffffffe # initialize rs1
li x24, 0xffffffff # initialize rs2
bne x25, x24, some_label_for_btype_24857377290 # perform operation 
addi x0, x1, 1
some_label_for_btype_24857377290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xffffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
bne x25, x24, some_label_for_btype_24857377291 # perform operation 
addi x0, x1, 1
some_label_for_btype_24857377291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x4, 0x857c840f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xfffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
bne x3, x6, some_label_for_btype_32460976780 # perform operation 
addi x0, x1, 1
some_label_for_btype_32460976780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xfffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
bne x3, x6, some_label_for_btype_32460976781 # perform operation 
addi x0, x1, 1
some_label_for_btype_32460976781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x25, 0xe0de4ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xfffffffe # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
bne x10, x5, some_label_for_btype_15366678410 # perform operation 
addi x0, x1, 1
some_label_for_btype_15366678410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x5bbc8877 # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
bne x10, x5, some_label_for_btype_15366678411 # perform operation 
addi x0, x1, 1
some_label_for_btype_15366678411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x9, 0xff93fb78 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xfffffffe # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
bne x12, x19, some_label_for_btype_36367988230 # perform operation 
addi x0, x1, 1
some_label_for_btype_36367988230:
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
bne x12, x19, some_label_for_btype_36367988231 # perform operation 
addi x0, x1, 1
some_label_for_btype_36367988231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x5, 0x3ad43dff # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xfffffffe # initialize rs1
li x24, 0x55555555 # initialize rs2
bne x4, x24, some_label_for_btype_18105127960 # perform operation 
addi x0, x1, 1
some_label_for_btype_18105127960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x55555555 # initialize rs1
li x24, 0x55555555 # initialize rs2
bne x4, x24, some_label_for_btype_18105127961 # perform operation 
addi x0, x1, 1
some_label_for_btype_18105127961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x10, 0x55623519 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x5bbc8877 # initialize rs1
li x21, 0x00000000 # initialize rs2
bne x30, x21, some_label_for_btype_41649472850 # perform operation 
addi x0, x1, 1
some_label_for_btype_41649472850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x00000000 # initialize rs1
li x21, 0x00000000 # initialize rs2
bne x30, x21, some_label_for_btype_41649472851 # perform operation 
addi x0, x1, 1
some_label_for_btype_41649472851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x26, 0x7fb58382 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x5bbc8877 # initialize rs1
li x9, 0x00000001 # initialize rs2
bne x17, x9, some_label_for_btype_2980997310 # perform operation 
addi x0, x1, 1
some_label_for_btype_2980997310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000001 # initialize rs1
li x9, 0x00000001 # initialize rs2
bne x17, x9, some_label_for_btype_2980997311 # perform operation 
addi x0, x1, 1
some_label_for_btype_2980997311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x10, 0x6809b14f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x5bbc8877 # initialize rs1
li x31, 0x00000002 # initialize rs2
bne x20, x31, some_label_for_btype_4310748540 # perform operation 
addi x0, x1, 1
some_label_for_btype_4310748540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000002 # initialize rs1
li x31, 0x00000002 # initialize rs2
bne x20, x31, some_label_for_btype_4310748541 # perform operation 
addi x0, x1, 1
some_label_for_btype_4310748541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x12, 0x24185d7f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x5bbc8877 # initialize rs1
li x26, 0x80000000 # initialize rs2
bne x31, x26, some_label_for_btype_32330698380 # perform operation 
addi x0, x1, 1
some_label_for_btype_32330698380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x80000000 # initialize rs1
li x26, 0x80000000 # initialize rs2
bne x31, x26, some_label_for_btype_32330698381 # perform operation 
addi x0, x1, 1
some_label_for_btype_32330698381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x20, 0xb77f8769 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x5bbc8877 # initialize rs1
li x3, 0x80000001 # initialize rs2
bne x26, x3, some_label_for_btype_14259986460 # perform operation 
addi x0, x1, 1
some_label_for_btype_14259986460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x80000001 # initialize rs1
li x3, 0x80000001 # initialize rs2
bne x26, x3, some_label_for_btype_14259986461 # perform operation 
addi x0, x1, 1
some_label_for_btype_14259986461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x18, 0x1f278aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x5bbc8877 # initialize rs1
li x26, 0x7fffffff # initialize rs2
bne x20, x26, some_label_for_btype_164497490 # perform operation 
addi x0, x1, 1
some_label_for_btype_164497490:
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
bne x20, x26, some_label_for_btype_164497491 # perform operation 
addi x0, x1, 1
some_label_for_btype_164497491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x12, 0x87635e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x5bbc8877 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
bne x22, x6, some_label_for_btype_5647409710 # perform operation 
addi x0, x1, 1
some_label_for_btype_5647409710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x7ffffffe # initialize rs1
li x6, 0x7ffffffe # initialize rs2
bne x22, x6, some_label_for_btype_5647409711 # perform operation 
addi x0, x1, 1
some_label_for_btype_5647409711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x6, 0x2600d1cb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x5bbc8877 # initialize rs1
li x24, 0xffffffff # initialize rs2
bne x22, x24, some_label_for_btype_22500495610 # perform operation 
addi x0, x1, 1
some_label_for_btype_22500495610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xffffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
bne x22, x24, some_label_for_btype_22500495611 # perform operation 
addi x0, x1, 1
some_label_for_btype_22500495611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x4, 0xd5ca5819 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x5bbc8877 # initialize rs1
li x5, 0xfffffffe # initialize rs2
bne x12, x5, some_label_for_btype_11032982860 # perform operation 
addi x0, x1, 1
some_label_for_btype_11032982860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xfffffffe # initialize rs1
li x5, 0xfffffffe # initialize rs2
bne x12, x5, some_label_for_btype_11032982861 # perform operation 
addi x0, x1, 1
some_label_for_btype_11032982861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x24, 0xb7ed2d6e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x5bbc8877 # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
bne x22, x19, some_label_for_btype_39360269590 # perform operation 
addi x0, x1, 1
some_label_for_btype_39360269590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x5bbc8877 # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
bne x22, x19, some_label_for_btype_39360269591 # perform operation 
addi x0, x1, 1
some_label_for_btype_39360269591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x16, 0x14484df1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x5bbc8877 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
bne x15, x14, some_label_for_btype_4775614970 # perform operation 
addi x0, x1, 1
some_label_for_btype_4775614970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
bne x15, x14, some_label_for_btype_4775614971 # perform operation 
addi x0, x1, 1
some_label_for_btype_4775614971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x12, 0x4dcff06b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x5bbc8877 # initialize rs1
li x1, 0x55555555 # initialize rs2
bne x20, x1, some_label_for_btype_38877978030 # perform operation 
addi x0, x1, 1
some_label_for_btype_38877978030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x55555555 # initialize rs1
li x1, 0x55555555 # initialize rs2
bne x20, x1, some_label_for_btype_38877978031 # perform operation 
addi x0, x1, 1
some_label_for_btype_38877978031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x26, 0xc00fece5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xaaaaaaaa # initialize rs1
li x20, 0x00000000 # initialize rs2
bne x27, x20, some_label_for_btype_42127711530 # perform operation 
addi x0, x1, 1
some_label_for_btype_42127711530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x00000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
bne x27, x20, some_label_for_btype_42127711531 # perform operation 
addi x0, x1, 1
some_label_for_btype_42127711531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x20, 0x92114f32 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xaaaaaaaa # initialize rs1
li x6, 0x00000001 # initialize rs2
bne x29, x6, some_label_for_btype_25861547780 # perform operation 
addi x0, x1, 1
some_label_for_btype_25861547780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x00000001 # initialize rs1
li x6, 0x00000001 # initialize rs2
bne x29, x6, some_label_for_btype_25861547781 # perform operation 
addi x0, x1, 1
some_label_for_btype_25861547781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x5, 0x68ad1327 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xaaaaaaaa # initialize rs1
li x16, 0x00000002 # initialize rs2
bne x7, x16, some_label_for_btype_14216531760 # perform operation 
addi x0, x1, 1
some_label_for_btype_14216531760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000002 # initialize rs1
li x16, 0x00000002 # initialize rs2
bne x7, x16, some_label_for_btype_14216531761 # perform operation 
addi x0, x1, 1
some_label_for_btype_14216531761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x7, 0x5f23d371 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xaaaaaaaa # initialize rs1
li x6, 0x80000000 # initialize rs2
bne x15, x6, some_label_for_btype_20340776620 # perform operation 
addi x0, x1, 1
some_label_for_btype_20340776620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x80000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
bne x15, x6, some_label_for_btype_20340776621 # perform operation 
addi x0, x1, 1
some_label_for_btype_20340776621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x25, 0x9b53c67f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xaaaaaaaa # initialize rs1
li x16, 0x80000001 # initialize rs2
bne x19, x16, some_label_for_btype_21169263950 # perform operation 
addi x0, x1, 1
some_label_for_btype_21169263950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x80000001 # initialize rs1
li x16, 0x80000001 # initialize rs2
bne x19, x16, some_label_for_btype_21169263951 # perform operation 
addi x0, x1, 1
some_label_for_btype_21169263951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x12, 0xb842f67c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xaaaaaaaa # initialize rs1
li x2, 0x7fffffff # initialize rs2
bne x31, x2, some_label_for_btype_6513254410 # perform operation 
addi x0, x1, 1
some_label_for_btype_6513254410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
bne x31, x2, some_label_for_btype_6513254411 # perform operation 
addi x0, x1, 1
some_label_for_btype_6513254411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x30, 0x093cf8a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xaaaaaaaa # initialize rs1
li x14, 0x7ffffffe # initialize rs2
bne x11, x14, some_label_for_btype_42251564070 # perform operation 
addi x0, x1, 1
some_label_for_btype_42251564070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x7ffffffe # initialize rs1
li x14, 0x7ffffffe # initialize rs2
bne x11, x14, some_label_for_btype_42251564071 # perform operation 
addi x0, x1, 1
some_label_for_btype_42251564071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x10, 0xe0e152d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xaaaaaaaa # initialize rs1
li x18, 0xffffffff # initialize rs2
bne x12, x18, some_label_for_btype_30056774870 # perform operation 
addi x0, x1, 1
some_label_for_btype_30056774870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xffffffff # initialize rs1
li x18, 0xffffffff # initialize rs2
bne x12, x18, some_label_for_btype_30056774871 # perform operation 
addi x0, x1, 1
some_label_for_btype_30056774871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x27, 0xabf5db56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xaaaaaaaa # initialize rs1
li x18, 0xfffffffe # initialize rs2
bne x5, x18, some_label_for_btype_39252770910 # perform operation 
addi x0, x1, 1
some_label_for_btype_39252770910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xfffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
bne x5, x18, some_label_for_btype_39252770911 # perform operation 
addi x0, x1, 1
some_label_for_btype_39252770911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x19, 0xf6fd549c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xaaaaaaaa # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
bne x11, x20, some_label_for_btype_17688315630 # perform operation 
addi x0, x1, 1
some_label_for_btype_17688315630:
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
bne x11, x20, some_label_for_btype_17688315631 # perform operation 
addi x0, x1, 1
some_label_for_btype_17688315631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x4, 0x69f92aaf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
bne x22, x6, some_label_for_btype_32062145810 # perform operation 
addi x0, x1, 1
some_label_for_btype_32062145810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
bne x22, x6, some_label_for_btype_32062145811 # perform operation 
addi x0, x1, 1
some_label_for_btype_32062145811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x12, 0x5147b20c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xaaaaaaaa # initialize rs1
li x13, 0x55555555 # initialize rs2
bne x5, x13, some_label_for_btype_29950718910 # perform operation 
addi x0, x1, 1
some_label_for_btype_29950718910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x55555555 # initialize rs1
li x13, 0x55555555 # initialize rs2
bne x5, x13, some_label_for_btype_29950718911 # perform operation 
addi x0, x1, 1
some_label_for_btype_29950718911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x17, 0xfe845d97 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x55555555 # initialize rs1
li x14, 0x00000000 # initialize rs2
bne x26, x14, some_label_for_btype_6683985730 # perform operation 
addi x0, x1, 1
some_label_for_btype_6683985730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x00000000 # initialize rs1
li x14, 0x00000000 # initialize rs2
bne x26, x14, some_label_for_btype_6683985731 # perform operation 
addi x0, x1, 1
some_label_for_btype_6683985731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x26, 0xed953c7d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x55555555 # initialize rs1
li x18, 0x00000001 # initialize rs2
bne x2, x18, some_label_for_btype_24698606840 # perform operation 
addi x0, x1, 1
some_label_for_btype_24698606840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x00000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
bne x2, x18, some_label_for_btype_24698606841 # perform operation 
addi x0, x1, 1
some_label_for_btype_24698606841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x1, 0x63f933a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x55555555 # initialize rs1
li x30, 0x00000002 # initialize rs2
bne x29, x30, some_label_for_btype_34475242890 # perform operation 
addi x0, x1, 1
some_label_for_btype_34475242890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x00000002 # initialize rs1
li x30, 0x00000002 # initialize rs2
bne x29, x30, some_label_for_btype_34475242891 # perform operation 
addi x0, x1, 1
some_label_for_btype_34475242891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x30, 0x51d2f7b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x55555555 # initialize rs1
li x29, 0x80000000 # initialize rs2
bne x25, x29, some_label_for_btype_3512374660 # perform operation 
addi x0, x1, 1
some_label_for_btype_3512374660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x80000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
bne x25, x29, some_label_for_btype_3512374661 # perform operation 
addi x0, x1, 1
some_label_for_btype_3512374661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x25, 0x384f3ee8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x55555555 # initialize rs1
li x11, 0x80000001 # initialize rs2
bne x30, x11, some_label_for_btype_42559340610 # perform operation 
addi x0, x1, 1
some_label_for_btype_42559340610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x80000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
bne x30, x11, some_label_for_btype_42559340611 # perform operation 
addi x0, x1, 1
some_label_for_btype_42559340611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x9, 0x7f072b69 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x55555555 # initialize rs1
li x13, 0x7fffffff # initialize rs2
bne x16, x13, some_label_for_btype_39604540000 # perform operation 
addi x0, x1, 1
some_label_for_btype_39604540000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x7fffffff # initialize rs1
li x13, 0x7fffffff # initialize rs2
bne x16, x13, some_label_for_btype_39604540001 # perform operation 
addi x0, x1, 1
some_label_for_btype_39604540001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x31, 0x18d26fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x55555555 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
bne x29, x5, some_label_for_btype_22507059950 # perform operation 
addi x0, x1, 1
some_label_for_btype_22507059950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x7ffffffe # initialize rs1
li x5, 0x7ffffffe # initialize rs2
bne x29, x5, some_label_for_btype_22507059951 # perform operation 
addi x0, x1, 1
some_label_for_btype_22507059951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x7, 0xae74e8a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x55555555 # initialize rs1
li x28, 0xffffffff # initialize rs2
bne x30, x28, some_label_for_btype_11985275610 # perform operation 
addi x0, x1, 1
some_label_for_btype_11985275610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xffffffff # initialize rs1
li x28, 0xffffffff # initialize rs2
bne x30, x28, some_label_for_btype_11985275611 # perform operation 
addi x0, x1, 1
some_label_for_btype_11985275611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x20, 0x5b8fec75 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x55555555 # initialize rs1
li x19, 0xfffffffe # initialize rs2
bne x18, x19, some_label_for_btype_36122165440 # perform operation 
addi x0, x1, 1
some_label_for_btype_36122165440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xfffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
bne x18, x19, some_label_for_btype_36122165441 # perform operation 
addi x0, x1, 1
some_label_for_btype_36122165441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x24, 0x219ac9b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x55555555 # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
bne x18, x5, some_label_for_btype_23441133230 # perform operation 
addi x0, x1, 1
some_label_for_btype_23441133230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x5bbc8877 # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
bne x18, x5, some_label_for_btype_23441133231 # perform operation 
addi x0, x1, 1
some_label_for_btype_23441133231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x25, 0x8f08d88f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x55555555 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
bne x14, x24, some_label_for_btype_3577706230 # perform operation 
addi x0, x1, 1
some_label_for_btype_3577706230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
bne x14, x24, some_label_for_btype_3577706231 # perform operation 
addi x0, x1, 1
some_label_for_btype_3577706231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x1, 0xf7f53f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x55555555 # initialize rs1
li x19, 0x55555555 # initialize rs2
bne x4, x19, some_label_for_btype_8779016590 # perform operation 
addi x0, x1, 1
some_label_for_btype_8779016590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x55555555 # initialize rs1
li x19, 0x55555555 # initialize rs2
bne x4, x19, some_label_for_btype_8779016591 # perform operation 
addi x0, x1, 1
some_label_for_btype_8779016591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x16, 0x1884356c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x6e688693 # initialize rs1
li x0, 0x936c3a8c # initialize rs2
bne x0, x0, some_label_for_btype_18457215900 # perform operation 
addi x0, x1, 1
some_label_for_btype_18457215900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0x936c3a8c # initialize rs1
li x0, 0x936c3a8c # initialize rs2
bne x0, x0, some_label_for_btype_18457215901 # perform operation 
addi x0, x1, 1
some_label_for_btype_18457215901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x9, 0xe6a69ff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xf76cc513 # initialize rs1
li x1, 0xca77631f # initialize rs2
bne x1, x1, some_label_for_btype_15361789410 # perform operation 
addi x0, x1, 1
some_label_for_btype_15361789410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xca77631f # initialize rs1
li x1, 0xca77631f # initialize rs2
bne x1, x1, some_label_for_btype_15361789411 # perform operation 
addi x0, x1, 1
some_label_for_btype_15361789411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x31, 0x4e180c0a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x01ccb9ef # initialize rs1
li x2, 0x980b29bb # initialize rs2
bne x2, x2, some_label_for_btype_38756639940 # perform operation 
addi x0, x1, 1
some_label_for_btype_38756639940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x980b29bb # initialize rs1
li x2, 0x980b29bb # initialize rs2
bne x2, x2, some_label_for_btype_38756639941 # perform operation 
addi x0, x1, 1
some_label_for_btype_38756639941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x30, 0x3b1b62b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x2f967cba # initialize rs1
li x3, 0xacb6cd50 # initialize rs2
bne x3, x3, some_label_for_btype_36366230590 # perform operation 
addi x0, x1, 1
some_label_for_btype_36366230590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xacb6cd50 # initialize rs1
li x3, 0xacb6cd50 # initialize rs2
bne x3, x3, some_label_for_btype_36366230591 # perform operation 
addi x0, x1, 1
some_label_for_btype_36366230591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x15, 0xf6f7c816 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x800d2357 # initialize rs1
li x4, 0x618b1aec # initialize rs2
bne x4, x4, some_label_for_btype_18751165980 # perform operation 
addi x0, x1, 1
some_label_for_btype_18751165980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x618b1aec # initialize rs1
li x4, 0x618b1aec # initialize rs2
bne x4, x4, some_label_for_btype_18751165981 # perform operation 
addi x0, x1, 1
some_label_for_btype_18751165981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x11, 0x9771d1be # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xc7eb9d2c # initialize rs1
li x5, 0x187fdd03 # initialize rs2
bne x5, x5, some_label_for_btype_28660302620 # perform operation 
addi x0, x1, 1
some_label_for_btype_28660302620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x187fdd03 # initialize rs1
li x5, 0x187fdd03 # initialize rs2
bne x5, x5, some_label_for_btype_28660302621 # perform operation 
addi x0, x1, 1
some_label_for_btype_28660302621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x22, 0x1a44ce3d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xe5089c6d # initialize rs1
li x6, 0x4ee3bd79 # initialize rs2
bne x6, x6, some_label_for_btype_20336350000 # perform operation 
addi x0, x1, 1
some_label_for_btype_20336350000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x4ee3bd79 # initialize rs1
li x6, 0x4ee3bd79 # initialize rs2
bne x6, x6, some_label_for_btype_20336350001 # perform operation 
addi x0, x1, 1
some_label_for_btype_20336350001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x3, 0xbb96a4e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xbf8d9c13 # initialize rs1
li x7, 0x4ab46c64 # initialize rs2
bne x7, x7, some_label_for_btype_39384446290 # perform operation 
addi x0, x1, 1
some_label_for_btype_39384446290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x4ab46c64 # initialize rs1
li x7, 0x4ab46c64 # initialize rs2
bne x7, x7, some_label_for_btype_39384446291 # perform operation 
addi x0, x1, 1
some_label_for_btype_39384446291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x5, 0x9df90e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xaea5e396 # initialize rs1
li x8, 0x2fabaeaa # initialize rs2
bne x8, x8, some_label_for_btype_1118011450 # perform operation 
addi x0, x1, 1
some_label_for_btype_1118011450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x2fabaeaa # initialize rs1
li x8, 0x2fabaeaa # initialize rs2
bne x8, x8, some_label_for_btype_1118011451 # perform operation 
addi x0, x1, 1
some_label_for_btype_1118011451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x20, 0xf1431135 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x57e970c0 # initialize rs1
li x9, 0xd7978341 # initialize rs2
bne x9, x9, some_label_for_btype_770391330 # perform operation 
addi x0, x1, 1
some_label_for_btype_770391330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xd7978341 # initialize rs1
li x9, 0xd7978341 # initialize rs2
bne x9, x9, some_label_for_btype_770391331 # perform operation 
addi x0, x1, 1
some_label_for_btype_770391331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x13, 0x74dddfd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xb47d52e4 # initialize rs1
li x10, 0xaafc551c # initialize rs2
bne x10, x10, some_label_for_btype_351181260 # perform operation 
addi x0, x1, 1
some_label_for_btype_351181260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xaafc551c # initialize rs1
li x10, 0xaafc551c # initialize rs2
bne x10, x10, some_label_for_btype_351181261 # perform operation 
addi x0, x1, 1
some_label_for_btype_351181261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x15, 0x75b839bd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x6c9da470 # initialize rs1
li x11, 0x5908e4ea # initialize rs2
bne x11, x11, some_label_for_btype_3849735170 # perform operation 
addi x0, x1, 1
some_label_for_btype_3849735170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x5908e4ea # initialize rs1
li x11, 0x5908e4ea # initialize rs2
bne x11, x11, some_label_for_btype_3849735171 # perform operation 
addi x0, x1, 1
some_label_for_btype_3849735171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x22, 0x65fa08ff # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x93242b3a # initialize rs1
li x12, 0x8d291438 # initialize rs2
bne x12, x12, some_label_for_btype_13289623530 # perform operation 
addi x0, x1, 1
some_label_for_btype_13289623530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x8d291438 # initialize rs1
li x12, 0x8d291438 # initialize rs2
bne x12, x12, some_label_for_btype_13289623531 # perform operation 
addi x0, x1, 1
some_label_for_btype_13289623531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x16, 0x07d035ff # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xdf6995ce # initialize rs1
li x13, 0x41445638 # initialize rs2
bne x13, x13, some_label_for_btype_36133211120 # perform operation 
addi x0, x1, 1
some_label_for_btype_36133211120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x41445638 # initialize rs1
li x13, 0x41445638 # initialize rs2
bne x13, x13, some_label_for_btype_36133211121 # perform operation 
addi x0, x1, 1
some_label_for_btype_36133211121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x4, 0xd935a480 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x8a5f0861 # initialize rs1
li x14, 0x6cb8774a # initialize rs2
bne x14, x14, some_label_for_btype_6536884500 # perform operation 
addi x0, x1, 1
some_label_for_btype_6536884500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x6cb8774a # initialize rs1
li x14, 0x6cb8774a # initialize rs2
bne x14, x14, some_label_for_btype_6536884501 # perform operation 
addi x0, x1, 1
some_label_for_btype_6536884501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x26, 0x1dcfa5be # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x3fcb146b # initialize rs1
li x15, 0x226d40f6 # initialize rs2
bne x15, x15, some_label_for_btype_9757643680 # perform operation 
addi x0, x1, 1
some_label_for_btype_9757643680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x226d40f6 # initialize rs1
li x15, 0x226d40f6 # initialize rs2
bne x15, x15, some_label_for_btype_9757643681 # perform operation 
addi x0, x1, 1
some_label_for_btype_9757643681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x15, 0xaeb9e9c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xc3ecc90b # initialize rs1
li x16, 0xad91b804 # initialize rs2
bne x16, x16, some_label_for_btype_30530017700 # perform operation 
addi x0, x1, 1
some_label_for_btype_30530017700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xad91b804 # initialize rs1
li x16, 0xad91b804 # initialize rs2
bne x16, x16, some_label_for_btype_30530017701 # perform operation 
addi x0, x1, 1
some_label_for_btype_30530017701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x15, 0x38d33505 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xe7a4cb26 # initialize rs1
li x17, 0x432e2717 # initialize rs2
bne x17, x17, some_label_for_btype_22892101280 # perform operation 
addi x0, x1, 1
some_label_for_btype_22892101280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x432e2717 # initialize rs1
li x17, 0x432e2717 # initialize rs2
bne x17, x17, some_label_for_btype_22892101281 # perform operation 
addi x0, x1, 1
some_label_for_btype_22892101281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x11, 0x48cfd773 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x8299e38b # initialize rs1
li x18, 0x207eb1da # initialize rs2
bne x18, x18, some_label_for_btype_6226676290 # perform operation 
addi x0, x1, 1
some_label_for_btype_6226676290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x207eb1da # initialize rs1
li x18, 0x207eb1da # initialize rs2
bne x18, x18, some_label_for_btype_6226676291 # perform operation 
addi x0, x1, 1
some_label_for_btype_6226676291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x11, 0xa73e6aeb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x88df0e07 # initialize rs1
li x19, 0x26f08f27 # initialize rs2
bne x19, x19, some_label_for_btype_29819112980 # perform operation 
addi x0, x1, 1
some_label_for_btype_29819112980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x26f08f27 # initialize rs1
li x19, 0x26f08f27 # initialize rs2
bne x19, x19, some_label_for_btype_29819112981 # perform operation 
addi x0, x1, 1
some_label_for_btype_29819112981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x16, 0x296b82d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x59890462 # initialize rs1
li x20, 0x8571bdbe # initialize rs2
bne x20, x20, some_label_for_btype_6854691350 # perform operation 
addi x0, x1, 1
some_label_for_btype_6854691350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x8571bdbe # initialize rs1
li x20, 0x8571bdbe # initialize rs2
bne x20, x20, some_label_for_btype_6854691351 # perform operation 
addi x0, x1, 1
some_label_for_btype_6854691351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x2, 0x995e56c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x98ab3b1c # initialize rs1
li x21, 0x6610c605 # initialize rs2
bne x21, x21, some_label_for_btype_28018623240 # perform operation 
addi x0, x1, 1
some_label_for_btype_28018623240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x6610c605 # initialize rs1
li x21, 0x6610c605 # initialize rs2
bne x21, x21, some_label_for_btype_28018623241 # perform operation 
addi x0, x1, 1
some_label_for_btype_28018623241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x29, 0xfba680f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x16a80ef6 # initialize rs1
li x22, 0xbc3f7cc4 # initialize rs2
bne x22, x22, some_label_for_btype_7404156660 # perform operation 
addi x0, x1, 1
some_label_for_btype_7404156660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xbc3f7cc4 # initialize rs1
li x22, 0xbc3f7cc4 # initialize rs2
bne x22, x22, some_label_for_btype_7404156661 # perform operation 
addi x0, x1, 1
some_label_for_btype_7404156661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x22, 0xbf6c4706 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x07b92b18 # initialize rs1
li x23, 0xa99cc65b # initialize rs2
bne x23, x23, some_label_for_btype_14144925020 # perform operation 
addi x0, x1, 1
some_label_for_btype_14144925020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xa99cc65b # initialize rs1
li x23, 0xa99cc65b # initialize rs2
bne x23, x23, some_label_for_btype_14144925021 # perform operation 
addi x0, x1, 1
some_label_for_btype_14144925021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x31, 0xb7fc6276 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x18417cc3 # initialize rs1
li x24, 0x65847c9e # initialize rs2
bne x24, x24, some_label_for_btype_25340903290 # perform operation 
addi x0, x1, 1
some_label_for_btype_25340903290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x65847c9e # initialize rs1
li x24, 0x65847c9e # initialize rs2
bne x24, x24, some_label_for_btype_25340903291 # perform operation 
addi x0, x1, 1
some_label_for_btype_25340903291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x4aec2757 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x4e3dd5e3 # initialize rs1
li x25, 0xd96f9215 # initialize rs2
bne x25, x25, some_label_for_btype_27412112040 # perform operation 
addi x0, x1, 1
some_label_for_btype_27412112040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xd96f9215 # initialize rs1
li x25, 0xd96f9215 # initialize rs2
bne x25, x25, some_label_for_btype_27412112041 # perform operation 
addi x0, x1, 1
some_label_for_btype_27412112041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x16, 0xdeb32e83 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0be25a7e # initialize rs1
li x26, 0xd979efbd # initialize rs2
bne x26, x26, some_label_for_btype_35761836540 # perform operation 
addi x0, x1, 1
some_label_for_btype_35761836540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xd979efbd # initialize rs1
li x26, 0xd979efbd # initialize rs2
bne x26, x26, some_label_for_btype_35761836541 # perform operation 
addi x0, x1, 1
some_label_for_btype_35761836541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x20, 0xbec8b68c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x93f87bc0 # initialize rs1
li x27, 0xc05f5880 # initialize rs2
bne x27, x27, some_label_for_btype_24291775830 # perform operation 
addi x0, x1, 1
some_label_for_btype_24291775830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xc05f5880 # initialize rs1
li x27, 0xc05f5880 # initialize rs2
bne x27, x27, some_label_for_btype_24291775831 # perform operation 
addi x0, x1, 1
some_label_for_btype_24291775831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x1, 0xba86bb0c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x89c751ae # initialize rs1
li x28, 0x3c24aa16 # initialize rs2
bne x28, x28, some_label_for_btype_42140640240 # perform operation 
addi x0, x1, 1
some_label_for_btype_42140640240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x3c24aa16 # initialize rs1
li x28, 0x3c24aa16 # initialize rs2
bne x28, x28, some_label_for_btype_42140640241 # perform operation 
addi x0, x1, 1
some_label_for_btype_42140640241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x1, 0x04906cd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xd78b2276 # initialize rs1
li x29, 0xfa66efeb # initialize rs2
bne x29, x29, some_label_for_btype_39049538630 # perform operation 
addi x0, x1, 1
some_label_for_btype_39049538630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xfa66efeb # initialize rs1
li x29, 0xfa66efeb # initialize rs2
bne x29, x29, some_label_for_btype_39049538631 # perform operation 
addi x0, x1, 1
some_label_for_btype_39049538631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x24, 0x3a716f0c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xa27411d3 # initialize rs1
li x30, 0xb987cf34 # initialize rs2
bne x30, x30, some_label_for_btype_23501580900 # perform operation 
addi x0, x1, 1
some_label_for_btype_23501580900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xb987cf34 # initialize rs1
li x30, 0xb987cf34 # initialize rs2
bne x30, x30, some_label_for_btype_23501580901 # perform operation 
addi x0, x1, 1
some_label_for_btype_23501580901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x24, 0x9f8a216a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x84a046c9 # initialize rs1
li x31, 0xb750718c # initialize rs2
bne x31, x31, some_label_for_btype_34752073740 # perform operation 
addi x0, x1, 1
some_label_for_btype_34752073740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xb750718c # initialize rs1
li x31, 0xb750718c # initialize rs2
bne x31, x31, some_label_for_btype_34752073741 # perform operation 
addi x0, x1, 1
some_label_for_btype_34752073741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = 0x42ddb7c9)
li x21, 0xcda27111 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x42ddb7c9 # initialize rs1
li x8, 0x574c04ab # initialize rs2
bne x2, x8, some_label_for_btype_18551680020 # perform operation 
addi x0, x1, 1
some_label_for_btype_18551680020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x574c04ab # initialize rs1
li x8, 0x574c04ab # initialize rs2
bne x2, x8, some_label_for_btype_18551680021 # perform operation 
addi x0, x1, 1
some_label_for_btype_18551680021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x64a12888)
li x5, 0x5ff54929 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x9b5ed778 # initialize rs1
li x15, 0x48877865 # initialize rs2
bne x10, x15, some_label_for_btype_28325235410 # perform operation 
addi x0, x1, 1
some_label_for_btype_28325235410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x48877865 # initialize rs1
li x15, 0x48877865 # initialize rs2
bne x10, x15, some_label_for_btype_28325235411 # perform operation 
addi x0, x1, 1
some_label_for_btype_28325235411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = 0x5ac64ca2)
li x3, 0xb830f72b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xf4c9888d # initialize rs1
li x16, 0x5ac64ca2 # initialize rs2
bne x6, x16, some_label_for_btype_1264376940 # perform operation 
addi x0, x1, 1
some_label_for_btype_1264376940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x5ac64ca2 # initialize rs1
li x16, 0x5ac64ca2 # initialize rs2
bne x6, x16, some_label_for_btype_1264376941 # perform operation 
addi x0, x1, 1
some_label_for_btype_1264376941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = -0x5c254f0b)
li x8, 0x4105ed42 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x999de596 # initialize rs1
li x13, 0xa3dab0f5 # initialize rs2
bne x14, x13, some_label_for_btype_5865459900 # perform operation 
addi x0, x1, 1
some_label_for_btype_5865459900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xa3dab0f5 # initialize rs1
li x13, 0xa3dab0f5 # initialize rs2
bne x14, x13, some_label_for_btype_5865459901 # perform operation 
addi x0, x1, 1
some_label_for_btype_5865459901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: bne x0, x0, 1b # backward branch
3: nop # done with sequence

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
