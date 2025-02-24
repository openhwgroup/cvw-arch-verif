///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-sll.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.978864
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x95579b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x273176cb # initialize rs1
li x16, 0xec18b01a # initialize rs2
sll x0, x24, x16 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xccf3b134 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdfad3903 # initialize rs1
li x8, 0xcaf64550 # initialize rs2
sll x1, x7, x8 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x876d8f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xecf21007 # initialize rs1
li x13, 0x04519cec # initialize rs2
sll x2, x14, x13 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xc6449015 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa844f5b9 # initialize rs1
li x6, 0x04c9fa10 # initialize rs2
sll x3, x25, x6 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x842a0e49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5083c9e1 # initialize rs1
li x20, 0xf860308c # initialize rs2
sll x4, x11, x20 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x6a3089b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf253b83e # initialize rs1
li x8, 0xb7b738af # initialize rs2
sll x5, x7, x8 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x78cb4a52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd33a13e9 # initialize rs1
li x26, 0x0c9dfcd6 # initialize rs2
sll x6, x2, x26 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x01ae253d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x701354ad # initialize rs1
li x15, 0x070e4580 # initialize rs2
sll x7, x7, x15 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x1db3ded4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6998f30c # initialize rs1
li x7, 0xf81aa5cb # initialize rs2
sll x8, x28, x7 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xc2432597 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfba6f605 # initialize rs1
li x5, 0x365b231b # initialize rs2
sll x9, x27, x5 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x95c364be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6992708b # initialize rs1
li x20, 0x4b456148 # initialize rs2
sll x10, x29, x20 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x1860533e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaf5d7c04 # initialize rs1
li x18, 0x99f5e270 # initialize rs2
sll x11, x19, x18 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x846dbc57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3c590df3 # initialize rs1
li x18, 0x4a228842 # initialize rs2
sll x12, x2, x18 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x8db225f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xed05be95 # initialize rs1
li x11, 0x9a8c965f # initialize rs2
sll x13, x16, x11 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xc0c07501 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8d223d85 # initialize rs1
li x16, 0x4e55e5f2 # initialize rs2
sll x14, x22, x16 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xaca0e39d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x41104124 # initialize rs1
li x28, 0x41f95311 # initialize rs2
sll x15, x26, x28 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x1041025b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfe931be3 # initialize rs1
li x17, 0x525a1ac7 # initialize rs2
sll x16, x4, x17 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xa15be2f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x801fa45b # initialize rs1
li x31, 0x5f7c89b2 # initialize rs2
sll x17, x23, x31 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x547dc27b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2bc77867 # initialize rs1
li x28, 0xe2d3b6b6 # initialize rs2
sll x18, x2, x28 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x0ae42fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x60b30e5f # initialize rs1
li x29, 0xe7bbd6ce # initialize rs2
sll x19, x25, x29 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xdca0ada5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x85fa6194 # initialize rs1
li x25, 0x9b0e8de7 # initialize rs2
sll x20, x21, x25 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x58c9c3f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcc73ecaf # initialize rs1
li x18, 0x6fa9ed7c # initialize rs2
sll x21, x4, x18 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xcfb9c72f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x03c78597 # initialize rs1
li x16, 0x73d4e381 # initialize rs2
sll x22, x30, x16 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x9d1fba73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6ec62245 # initialize rs1
li x18, 0xece777dd # initialize rs2
sll x23, x2, x18 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x8089a2eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x538e26a4 # initialize rs1
li x2, 0x92bf45b7 # initialize rs2
sll x24, x19, x2 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x832693f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaefca453 # initialize rs1
li x16, 0x867ac33f # initialize rs2
sll x25, x12, x16 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x5b6feef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xe5645bd6 # initialize rs1
li x13, 0x29c6011f # initialize rs2
sll x26, x25, x13 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x6a66012b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x62261855 # initialize rs1
li x2, 0x5f9ace55 # initialize rs2
sll x27, x23, x2 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xa146ce1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4a456a14 # initialize rs1
li x5, 0xb2e9d654 # initialize rs2
sll x28, x8, x5 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x4bf11625 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xcdffd517 # initialize rs1
li x7, 0xd7b713fd # initialize rs2
sll x29, x30, x7 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xd35a6a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x925e29da # initialize rs1
li x4, 0x428bd6ff # initialize rs2
sll x30, x24, x4 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xaf609c4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2a2432c2 # initialize rs1
li x2, 0x96a8abe7 # initialize rs2
sll x31, x1, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x31, 0x19fcab36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0d7d7ed9 # initialize rs1
li x26, 0xa80d59a5 # initialize rs2
sll x31, x0, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x17, 0x6f2ac8ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb584e0c2 # initialize rs1
li x15, 0x0c4dd99e # initialize rs2
sll x17, x1, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x29, 0xd3631759 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xcd3f83c5 # initialize rs1
li x10, 0xcbc6610f # initialize rs2
sll x29, x2, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x17, 0x43f27cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5748a7e6 # initialize rs1
li x5, 0x1d796b58 # initialize rs2
sll x17, x3, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x27, 0x6d9e1b76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3da10bdc # initialize rs1
li x13, 0xc1c5ca9f # initialize rs2
sll x27, x4, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x24, 0x7bcc953b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb5bd24ff # initialize rs1
li x17, 0xda664063 # initialize rs2
sll x24, x5, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x1, 0x147e81da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x9621b30e # initialize rs1
li x13, 0xc1a43ade # initialize rs2
sll x1, x6, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x9, 0xe1c39a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa6840ab8 # initialize rs1
li x4, 0x49997414 # initialize rs2
sll x9, x7, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x14, 0xb59efaf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf865cf07 # initialize rs1
li x9, 0x16da4629 # initialize rs2
sll x14, x8, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x8, 0x434b0e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe23d2372 # initialize rs1
li x22, 0x2a926461 # initialize rs2
sll x8, x9, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x19, 0x3437011d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6074d960 # initialize rs1
li x20, 0x9f9aa7b1 # initialize rs2
sll x19, x10, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0xa1d79ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55495db9 # initialize rs1
li x20, 0xc6fd3722 # initialize rs2
sll x8, x11, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x5, 0x06e53660 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9fb2abff # initialize rs1
li x16, 0x16d02ed7 # initialize rs2
sll x5, x12, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x17, 0xd771a678 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x871ed145 # initialize rs1
li x29, 0xd22c8af0 # initialize rs2
sll x17, x13, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x15, 0x0236f7db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0825d0e5 # initialize rs1
li x6, 0x37489758 # initialize rs2
sll x15, x14, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x9, 0x65992a17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4378aac6 # initialize rs1
li x6, 0xc2bb0062 # initialize rs2
sll x9, x15, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x9, 0x606385df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7f15d03f # initialize rs1
li x19, 0x2d613a9c # initialize rs2
sll x9, x16, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x2, 0x9fcae52f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe5137e36 # initialize rs1
li x7, 0x1d98c03b # initialize rs2
sll x2, x17, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x30, 0xca406d57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5214231e # initialize rs1
li x20, 0x0e924c0a # initialize rs2
sll x30, x18, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x27, 0xb49bc625 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xca6d50eb # initialize rs1
li x26, 0x9f5c11ce # initialize rs2
sll x27, x19, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x25, 0xa6f59033 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb706373d # initialize rs1
li x22, 0x1674534d # initialize rs2
sll x25, x20, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x11, 0xfe97550e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6a11947c # initialize rs1
li x27, 0xe9cd3a35 # initialize rs2
sll x11, x21, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x18, 0xdf3dc088 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x789da043 # initialize rs1
li x17, 0x4f34664e # initialize rs2
sll x18, x22, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x26, 0xa6f73743 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x04208dfb # initialize rs1
li x3, 0x57bf6830 # initialize rs2
sll x26, x23, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x29, 0x8df04121 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xcec2eb6e # initialize rs1
li x17, 0x66a5b52b # initialize rs2
sll x29, x24, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x31, 0x1a700a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xeab8a2f1 # initialize rs1
li x16, 0xa5ee6b44 # initialize rs2
sll x31, x25, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x15, 0x0a9c9cad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x97fe6aac # initialize rs1
li x25, 0x56228882 # initialize rs2
sll x15, x26, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x4, 0x17f44e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6780cd3d # initialize rs1
li x26, 0x75a2eb82 # initialize rs2
sll x4, x27, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x11, 0x34d59dc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe3e1920f # initialize rs1
li x2, 0x282e79b1 # initialize rs2
sll x11, x28, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x4, 0x55d52fc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x99c0d478 # initialize rs1
li x27, 0x240efc74 # initialize rs2
sll x4, x29, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x17, 0x79335d23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x972cbe87 # initialize rs1
li x7, 0x6d1f667a # initialize rs2
sll x17, x30, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x10, 0xd2770cd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x71022088 # initialize rs1
li x6, 0x7c9fb9f3 # initialize rs2
sll x10, x31, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x4244d548 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x35635e71 # initialize rs1
li x0, 0x0ea4bd3a # initialize rs2
sll x20, x11, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x9, 0x58933b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x80d731d4 # initialize rs1
li x1, 0xf7262a25 # initialize rs2
sll x9, x25, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x16, 0xac96d8ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc3325bbd # initialize rs1
li x2, 0x62d865f7 # initialize rs2
sll x16, x11, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x13, 0x2c23a26f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x627e554e # initialize rs1
li x3, 0xfeaa8ff6 # initialize rs2
sll x13, x5, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x8, 0xd5c40e49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8841ca5a # initialize rs1
li x4, 0x3929064f # initialize rs2
sll x8, x24, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x23, 0xf7a26b22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x11606d53 # initialize rs1
li x5, 0xa831531a # initialize rs2
sll x23, x11, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x17, 0x6203a16a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe689bbc8 # initialize rs1
li x6, 0xc901422d # initialize rs2
sll x17, x23, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x26, 0x38d0103b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x28bdc56b # initialize rs1
li x7, 0x3488a6dc # initialize rs2
sll x26, x24, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0x18541c8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7a0ade24 # initialize rs1
li x8, 0x2d651cac # initialize rs2
sll x23, x3, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0x7d8463d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xcc32651a # initialize rs1
li x9, 0xddf20745 # initialize rs2
sll x3, x17, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x9, 0x67f81295 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x564c8b3b # initialize rs1
li x10, 0x8e9724d3 # initialize rs2
sll x9, x21, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x25, 0x29270a1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x13fe199a # initialize rs1
li x11, 0x93ffcc6f # initialize rs2
sll x25, x23, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x20, 0x7b7fa967 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd6e257f2 # initialize rs1
li x12, 0xbd4d72cc # initialize rs2
sll x20, x14, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x16, 0x103dd4dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3189cd9e # initialize rs1
li x13, 0xb1e33dc7 # initialize rs2
sll x16, x10, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x31, 0x387b7dbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7d1ab21a # initialize rs1
li x14, 0x6f72cbf2 # initialize rs2
sll x31, x10, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x23, 0x77bd79f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xbbc05565 # initialize rs1
li x15, 0x48932d01 # initialize rs2
sll x23, x18, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x20, 0x138a9885 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x925ac293 # initialize rs1
li x16, 0x1baa38d8 # initialize rs2
sll x20, x23, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x27, 0x2b0aa72a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x83d50c67 # initialize rs1
li x17, 0xc5f5dcaa # initialize rs2
sll x27, x20, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x15, 0x9280056a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf2f302b3 # initialize rs1
li x18, 0x9c92e3a7 # initialize rs2
sll x15, x2, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x29, 0x74345f3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd6db111d # initialize rs1
li x19, 0xedd810a0 # initialize rs2
sll x29, x22, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x13, 0x5b7622a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x31219ee4 # initialize rs1
li x20, 0xa470e90d # initialize rs2
sll x13, x5, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x4, 0x59d5d436 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc921fcb7 # initialize rs1
li x21, 0xa40e3ffe # initialize rs2
sll x4, x27, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0xaaa534a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x47a95ff0 # initialize rs1
li x22, 0x364d2d11 # initialize rs2
sll x28, x26, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x3, 0x440928a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x26be3f0a # initialize rs1
li x23, 0x497af3e5 # initialize rs2
sll x3, x31, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x30, 0xcb4f9ace # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbff6b824 # initialize rs1
li x24, 0xcca87ac5 # initialize rs2
sll x30, x7, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x11, 0x61032829 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2d8cde80 # initialize rs1
li x25, 0x2a754bf7 # initialize rs2
sll x11, x14, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x2, 0xb13a3858 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa7c57309 # initialize rs1
li x26, 0xbee25561 # initialize rs2
sll x2, x1, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x18, 0xbc1ee30b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x83a34ca5 # initialize rs1
li x27, 0xbf6864ee # initialize rs2
sll x18, x5, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x13, 0x22e5cfd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5f21fba3 # initialize rs1
li x28, 0xb0d790f4 # initialize rs2
sll x13, x27, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x22, 0xa789fe5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x37521160 # initialize rs1
li x29, 0x52580b59 # initialize rs2
sll x22, x9, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x11, 0xae533cf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xcb80014f # initialize rs1
li x30, 0xaddfc8f6 # initialize rs2
sll x11, x3, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x23, 0xbbbe31b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x56c82a7c # initialize rs1
li x31, 0xc35b5f05 # initialize rs2
sll x23, x16, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x2ff86496)
li x7, 0x88f6b581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x88f6b581 # initialize rs1
li x0, 0x60d97b73 # initialize rs2
sll x7, x18, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x8fcbc2c1)
li x20, 0x8fcbc2c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8fcbc2c1 # initialize rs1
li x3, 0x8fcbc2c1 # initialize rs2
sll x20, x0, x3 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x73db75f5)
li x15, 0xae3ac188 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x73db75f5 # initialize rs1
li x14, 0x73db75f5 # initialize rs2
sll x15, x24, x14 # perform operation

# Testcase cmp_gpr_hazard raw test
sll x8, x31, x15 # perform first operation
sll x15, x8, x3 # perform second operation

# Testcase cmp_gpr_hazard raw test
sll x10, x22, x1 # perform first operation
sll x3, x27, x10 # perform second operation

# Testcase cmp_gpr_hazard waw test
sll x26, x28, x7 # perform first operation
sll x26, x31, x3 # perform second operation

# Testcase cmp_gpr_hazard waw test
sll x10, x29, x11 # perform first operation
sll x10, x7, x17 # perform second operation

# Testcase cmp_gpr_hazard war test
sll x20, x8, x25 # perform first operation
sll x8, x24, x26 # perform second operation

# Testcase cmp_gpr_hazard war test
sll x12, x27, x21 # perform first operation
sll x21, x5, x4 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0x715bca02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000 # initialize rs1
li x0, 0xfa847dab # initialize rs2
sll x22, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x7, 0xa77e85f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
sll x7, x13, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x1, 0xf14c05d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x29, 0x00000000 # initialize rs2
sll x1, x8, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0xefb1132c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000001 # initialize rs1
li x0, 0x683043d7 # initialize rs2
sll x2, x17, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0x2a374f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x9, 0x00000001 # initialize rs2
sll x2, x10, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x17, 0x5217e318 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffff # initialize rs1
li x16, 0x00000001 # initialize rs2
sll x17, x5, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x24, 0xc78f9651 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000002 # initialize rs1
li x0, 0x4cf6d976 # initialize rs2
sll x24, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0x396a126a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs1
li x25, 0x00000002 # initialize rs2
sll x31, x12, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0xa8a5e787 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x28, 0x00000002 # initialize rs2
sll x1, x26, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x12, 0x192a7c8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x0, 0xb61cba38 # initialize rs2
sll x12, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x3, 0x178e1396 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
li x13, 0x80000000 # initialize rs2
sll x3, x11, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x16, 0xe431f452 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x1, 0x80000000 # initialize rs2
sll x16, x13, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x8, 0x6bc588a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000001 # initialize rs1
li x0, 0x8de49489 # initialize rs2
sll x8, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x29, 0xf92b14e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000001 # initialize rs1
li x27, 0x80000001 # initialize rs2
sll x29, x3, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x19, 0x18523006 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x30, 0x80000001 # initialize rs2
sll x19, x3, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x1, 0x070a87ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
li x0, 0x23935153 # initialize rs2
sll x1, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x19, 0xfb7378d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffff # initialize rs1
li x17, 0x7fffffff # initialize rs2
sll x19, x26, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x16, 0x58f4eea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
sll x16, x31, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x27, 0xd3866dd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffe # initialize rs1
li x0, 0xb362d311 # initialize rs2
sll x27, x7, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x23, 0x3c631297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
sll x23, x5, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x23, 0x445ed50b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sll x23, x26, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x16, 0x580b4e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
li x0, 0xa901035b # initialize rs2
sll x16, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x19, 0x5a6338b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
sll x19, x14, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x30, 0x7a3e601c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x1, 0xffffffff # initialize rs2
sll x30, x31, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x19, 0x749880a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffe # initialize rs1
li x0, 0x1bb52f22 # initialize rs2
sll x19, x7, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x14, 0xbdd3a0da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffe # initialize rs1
li x8, 0xfffffffe # initialize rs2
sll x14, x12, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x15, 0x8c15612e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x4, 0xfffffffe # initialize rs2
sll x15, x26, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x14, 0xe4d84f9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc8877 # initialize rs1
li x0, 0x261933fa # initialize rs2
sll x14, x24, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x26, 0xdcc911fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc8877 # initialize rs1
li x16, 0x5bbc8877 # initialize rs2
sll x26, x28, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x31, 0xee9c27ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
sll x31, x22, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x12, 0x9a3268c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaa # initialize rs1
li x0, 0xa05b77fe # initialize rs2
sll x12, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x10, 0x6910ccfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
sll x10, x11, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x30, 0x396f3235 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
sll x30, x3, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x15, 0xf5e6a226 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x0, 0xe6893528 # initialize rs2
sll x15, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x6, 0xc3422157 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x55555555 # initialize rs1
li x20, 0x55555555 # initialize rs2
sll x6, x5, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x17, 0xb0b15078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x27, 0x55555555 # initialize rs2
sll x17, x14, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0xa84080cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x16, 0xb7c8c9b3 # initialize rs2
sll x3, x28, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0xc3d3f87f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000001 # initialize rs1
li x21, 0xe8db0163 # initialize rs2
sll x6, x18, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x3ce460ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000002 # initialize rs1
li x4, 0x9d638b2d # initialize rs2
sll x16, x26, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x8, 0xc940af32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80000000 # initialize rs1
li x30, 0xb78a4530 # initialize rs2
sll x8, x17, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0xb33066d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000001 # initialize rs1
li x24, 0xd2551ef1 # initialize rs2
sll x13, x29, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x18, 0xa6ec19ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
li x4, 0x3a000e37 # initialize rs2
sll x18, x1, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x1, 0x06680f41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs1
li x15, 0xa6e3ceab # initialize rs2
sll x1, x12, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x30, 0x8f24ad77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x25, 0xa923eb50 # initialize rs2
sll x30, x4, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x969acb78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffe # initialize rs1
li x22, 0x39a402b1 # initialize rs2
sll x6, x17, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x13, 0xeeef77d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc8877 # initialize rs1
li x3, 0x8b0f48e0 # initialize rs2
sll x13, x19, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0xa5caf349 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaa # initialize rs1
li x1, 0x0affa705 # initialize rs2
sll x25, x15, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x17, 0x46b68a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
li x25, 0x64e238cc # initialize rs2
sll x17, x27, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x5, 0xa3f2c196 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6a64ad5c # initialize rs1
li x31, 0x00000000 # initialize rs2
sll x5, x23, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0xaa1f1b12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x18034231 # initialize rs1
li x19, 0x00000001 # initialize rs2
sll x13, x4, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0x6959fd92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7b37c515 # initialize rs1
li x14, 0x00000002 # initialize rs2
sll x24, x16, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x7, 0xcc4312d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xac598257 # initialize rs1
li x8, 0x80000000 # initialize rs2
sll x7, x25, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x9, 0x4b596772 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x549186d6 # initialize rs1
li x15, 0x80000001 # initialize rs2
sll x9, x22, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x24, 0xbf62e75d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1807a7a6 # initialize rs1
li x13, 0x7fffffff # initialize rs2
sll x24, x26, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x5, 0xea8637bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x42d4bc99 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
sll x5, x20, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x1, 0x113aeda1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x754df302 # initialize rs1
li x25, 0xffffffff # initialize rs2
sll x1, x14, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x25, 0x0122f951 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x56091a33 # initialize rs1
li x3, 0xfffffffe # initialize rs2
sll x25, x29, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x13, 0xc410ed77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7e6f7f27 # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
sll x13, x23, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x21, 0x9ad7cc10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xda0f83d2 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
sll x21, x29, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x28, 0x472f7896 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb03fcd86 # initialize rs1
li x21, 0x55555555 # initialize rs2
sll x28, x18, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x8, 0x6ea498d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
sll x8, x30, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x9, 0x7151657b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
li x2, 0x00000001 # initialize rs2
sll x9, x17, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x20, 0xbb016b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x9, 0x00000002 # initialize rs2
sll x20, x28, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x1, 0xdec63644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000 # initialize rs1
li x3, 0x80000000 # initialize rs2
sll x1, x22, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x28, 0x27a2a8ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs1
li x12, 0x80000001 # initialize rs2
sll x28, x15, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x6, 0x623f3279 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000 # initialize rs1
li x19, 0x7fffffff # initialize rs2
sll x6, x24, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x2, 0x8a655004 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
sll x2, x3, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x19, 0xc49e3b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x28, 0xffffffff # initialize rs2
sll x19, x7, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x15, 0x5d8bb2f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
li x1, 0xfffffffe # initialize rs2
sll x15, x27, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x18, 0xb123f6b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000 # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
sll x18, x25, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x25, 0x6c080b87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
sll x25, x18, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x11, 0x10fae43f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000 # initialize rs1
li x4, 0x55555555 # initialize rs2
sll x11, x5, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x8, 0x03be2697 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x7, 0x00000000 # initialize rs2
sll x8, x26, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0xcd7c6b09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize rs1
li x1, 0x00000001 # initialize rs2
sll x16, x12, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x21, 0xa78a70e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x6, 0x00000002 # initialize rs2
sll x21, x10, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x12, 0x644e5f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # initialize rs1
li x1, 0x80000000 # initialize rs2
sll x12, x25, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x2, 0x75b098d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
sll x2, x24, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x20, 0xe20ad8b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000001 # initialize rs1
li x9, 0x7fffffff # initialize rs2
sll x20, x3, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x6, 0x7c37dae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
sll x6, x27, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x12, 0x731aba85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000001 # initialize rs1
li x20, 0xffffffff # initialize rs2
sll x12, x3, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x11, 0x4833ce2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rs1
li x26, 0xfffffffe # initialize rs2
sll x11, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x5, 0x8c2e8006 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
sll x5, x21, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x31, 0xefe0aa7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000001 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sll x31, x24, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x26, 0xfeae4e90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize rs1
li x28, 0x55555555 # initialize rs2
sll x26, x8, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x10, 0xa99be8da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x11, 0x00000000 # initialize rs2
sll x10, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x24, 0xc9d32f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000002 # initialize rs1
li x9, 0x00000001 # initialize rs2
sll x24, x29, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x7, 0xcc7780e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x31, 0x00000002 # initialize rs2
sll x7, x6, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x9, 0x38c8e3ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000002 # initialize rs1
li x25, 0x80000000 # initialize rs2
sll x9, x5, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x16, 0x26271848 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002 # initialize rs1
li x1, 0x80000001 # initialize rs2
sll x16, x2, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x23, 0x5d1f5cec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000002 # initialize rs1
li x19, 0x7fffffff # initialize rs2
sll x23, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x18, 0x3a01a173 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
sll x18, x19, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x10, 0x593d4cb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000002 # initialize rs1
li x8, 0xffffffff # initialize rs2
sll x10, x5, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x1, 0x0080d59b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000002 # initialize rs1
li x9, 0xfffffffe # initialize rs2
sll x1, x22, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x16, 0xead32952 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
sll x16, x6, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x22, 0x331a81bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
sll x22, x3, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x5, 0xa32cf504 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000002 # initialize rs1
li x29, 0x55555555 # initialize rs2
sll x5, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x12, 0x9cedbba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
li x24, 0x00000000 # initialize rs2
sll x12, x11, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x25, 0xd2861e96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000000 # initialize rs1
li x14, 0x00000001 # initialize rs2
sll x25, x3, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x6, 0xef231932 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
li x1, 0x00000002 # initialize rs2
sll x6, x21, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x28, 0xa4cea2fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x23, 0x80000000 # initialize rs2
sll x28, x29, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x1, 0xd91bee4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs1
li x28, 0x80000001 # initialize rs2
sll x1, x26, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x24, 0x0b944897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
li x4, 0x7fffffff # initialize rs2
sll x24, x30, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x11, 0x9e2a6f9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000000 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
sll x11, x6, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x29, 0x7dbb30d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
li x5, 0xffffffff # initialize rs2
sll x29, x27, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x18, 0x03cc613d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x28, 0xfffffffe # initialize rs2
sll x18, x13, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x24, 0x45fb240a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000000 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
sll x24, x16, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x13, 0xb114598f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sll x13, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x22, 0xa514c8d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000000 # initialize rs1
li x9, 0x55555555 # initialize rs2
sll x22, x15, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x12, 0x44568e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize rs1
li x16, 0x00000000 # initialize rs2
sll x12, x8, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x14, 0xaff354ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
li x2, 0x00000001 # initialize rs2
sll x14, x12, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x26, 0xb51cce01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs1
li x16, 0x00000002 # initialize rs2
sll x26, x13, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x11, 0x15ebe8f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000001 # initialize rs1
li x8, 0x80000000 # initialize rs2
sll x11, x1, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x24, 0xc833e565 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000001 # initialize rs1
li x3, 0x80000001 # initialize rs2
sll x24, x2, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x17, 0xa0d1987a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000001 # initialize rs1
li x14, 0x7fffffff # initialize rs2
sll x17, x26, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x8, 0x708ad2e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000001 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
sll x8, x30, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x11, 0x60496170 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x24, 0xffffffff # initialize rs2
sll x11, x23, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x15, 0xc1930b87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000001 # initialize rs1
li x8, 0xfffffffe # initialize rs2
sll x15, x29, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x22, 0xf7f33f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000001 # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
sll x22, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x5, 0x5206b508 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000001 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
sll x5, x28, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x5, 0x5ea51a92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000001 # initialize rs1
li x15, 0x55555555 # initialize rs2
sll x5, x10, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x23, 0xfeb2062d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
li x26, 0x00000000 # initialize rs2
sll x23, x1, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x14, 0x1faaa5a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
li x24, 0x00000001 # initialize rs2
sll x14, x17, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x20, 0xb01aa16b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffff # initialize rs1
li x27, 0x00000002 # initialize rs2
sll x20, x2, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x7, 0x555bb2c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x18, 0x80000000 # initialize rs2
sll x7, x29, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x24, 0xd74364eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
sll x24, x15, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x6, 0xe35fe9e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
sll x6, x30, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x1, 0x2680e774 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
li x22, 0x7ffffffe # initialize rs2
sll x1, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x29, 0xaed08458 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffff # initialize rs1
li x18, 0xffffffff # initialize rs2
sll x29, x10, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x10, 0x7c2dc595 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x3, 0xfffffffe # initialize rs2
sll x10, x16, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x11, 0x9a8f750a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
li x3, 0x5bbc8877 # initialize rs2
sll x11, x1, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x26, 0x0cb0545a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffff # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sll x26, x18, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x1, 0x41a11dbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffff # initialize rs1
li x15, 0x55555555 # initialize rs2
sll x1, x12, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x12, 0x20978c1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffe # initialize rs1
li x26, 0x00000000 # initialize rs2
sll x12, x29, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x25, 0x5675af84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffe # initialize rs1
li x2, 0x00000001 # initialize rs2
sll x25, x24, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x21, 0x728bff53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffe # initialize rs1
li x17, 0x00000002 # initialize rs2
sll x21, x6, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x18, 0xce9fa976 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x9, 0x80000000 # initialize rs2
sll x18, x20, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x10, 0x1a6ea5ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffe # initialize rs1
li x20, 0x80000001 # initialize rs2
sll x10, x2, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x26, 0x640241d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs1
li x22, 0x7fffffff # initialize rs2
sll x26, x12, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x28, 0xa5cc9412 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
sll x28, x6, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x26, 0xebba61e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffe # initialize rs1
li x12, 0xffffffff # initialize rs2
sll x26, x17, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x1, 0x552e4ada # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs1
li x11, 0xfffffffe # initialize rs2
sll x1, x22, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x24, 0x8161ea12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffe # initialize rs1
li x9, 0x5bbc8877 # initialize rs2
sll x24, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x27, 0x6f2b848e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffe # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
sll x27, x29, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x27, 0x3799bdd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffe # initialize rs1
li x9, 0x55555555 # initialize rs2
sll x27, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x23, 0x81ed1f11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x20, 0x00000000 # initialize rs2
sll x23, x3, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x25, 0x59a32ab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
li x19, 0x00000001 # initialize rs2
sll x25, x24, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x9, 0x3dae6a8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
li x10, 0x00000002 # initialize rs2
sll x9, x15, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x26, 0xb4bde4a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x27, 0x80000000 # initialize rs2
sll x26, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x11, 0x4475d0cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x24, 0x80000001 # initialize rs2
sll x11, x26, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x11, 0xdcc5b77c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x21, 0x7fffffff # initialize rs2
sll x11, x8, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x10, 0x2d01fea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x8, 0x7ffffffe # initialize rs2
sll x10, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x11, 0x0ed7a5d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
sll x11, x5, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0xad26cbaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
li x30, 0xfffffffe # initialize rs2
sll x20, x19, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x30, 0xb546b3da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x24, 0x5bbc8877 # initialize rs2
sll x30, x2, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x3, 0xac70916c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
sll x3, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x30, 0x47f625be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x4, 0x55555555 # initialize rs2
sll x30, x25, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x7, 0x1f472c09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x5, 0x00000000 # initialize rs2
sll x7, x15, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x20, 0xaed6b331 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs1
li x11, 0x00000001 # initialize rs2
sll x20, x13, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x2, 0xa6477714 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffe # initialize rs1
li x27, 0x00000002 # initialize rs2
sll x2, x28, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x17, 0x66e8265f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
li x7, 0x80000000 # initialize rs2
sll x17, x23, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x1, 0x43d080cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffe # initialize rs1
li x20, 0x80000001 # initialize rs2
sll x1, x19, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x8, 0x5641e6b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffe # initialize rs1
li x27, 0x7fffffff # initialize rs2
sll x8, x24, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x26, 0xa43c609f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x1, 0x7ffffffe # initialize rs2
sll x26, x16, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x27, 0x8112059e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffe # initialize rs1
li x16, 0xffffffff # initialize rs2
sll x27, x14, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x20, 0x6a52f5e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
sll x20, x24, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x3, 0xdf9d55ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
sll x3, x1, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x23, 0x83b4264f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sll x23, x21, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x22, 0x846b5b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x13, 0x55555555 # initialize rs2
sll x22, x5, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x19, 0x10b0852a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc8877 # initialize rs1
li x27, 0x00000000 # initialize rs2
sll x19, x3, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x16, 0xc0f8a364 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc8877 # initialize rs1
li x14, 0x00000001 # initialize rs2
sll x16, x26, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x24, 0x0bf13bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x27, 0x00000002 # initialize rs2
sll x24, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x3, 0x3931f0f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs1
li x15, 0x80000000 # initialize rs2
sll x3, x9, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x24, 0xe278b8c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
li x14, 0x80000001 # initialize rs2
sll x24, x23, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x21, 0x0bd5579c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
li x1, 0x7fffffff # initialize rs2
sll x21, x4, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x8, 0x92b9173e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
sll x8, x7, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x4, 0x6b59f659 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc8877 # initialize rs1
li x20, 0xffffffff # initialize rs2
sll x4, x16, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x9, 0x97846015 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc8877 # initialize rs1
li x7, 0xfffffffe # initialize rs2
sll x9, x5, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x27, 0x295e3278 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
sll x27, x14, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x29, 0x46f38408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
sll x29, x13, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x8, 0x8aca48b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc8877 # initialize rs1
li x17, 0x55555555 # initialize rs2
sll x8, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x4, 0x7b0a3594 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaa # initialize rs1
li x23, 0x00000000 # initialize rs2
sll x4, x22, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x30, 0x6d2f5aee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaa # initialize rs1
li x26, 0x00000001 # initialize rs2
sll x30, x24, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x10, 0x2625f099 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
li x23, 0x00000002 # initialize rs2
sll x10, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x12, 0x7dcd0ab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x20, 0x80000000 # initialize rs2
sll x12, x23, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x22, 0x79e7ea2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaa # initialize rs1
li x14, 0x80000001 # initialize rs2
sll x22, x25, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x22, 0xd425d79f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x15, 0x7fffffff # initialize rs2
sll x22, x17, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x7, 0x12f2e8aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
li x9, 0x7ffffffe # initialize rs2
sll x7, x21, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x19, 0xb8327126 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x26, 0xffffffff # initialize rs2
sll x19, x20, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x21, 0x932d5c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaa # initialize rs1
li x1, 0xfffffffe # initialize rs2
sll x21, x16, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x24, 0xab93b04b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaa # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
sll x24, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x4, 0xb61e3803 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
sll x4, x21, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x12, 0x1f97047d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaa # initialize rs1
li x25, 0x55555555 # initialize rs2
sll x12, x9, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x22, 0x4284bac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x55555555 # initialize rs1
li x2, 0x00000000 # initialize rs2
sll x22, x20, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x3, 0x98432d1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x55555555 # initialize rs1
li x10, 0x00000001 # initialize rs2
sll x3, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x24, 0x1aea08d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x55555555 # initialize rs1
li x25, 0x00000002 # initialize rs2
sll x24, x19, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x5, 0x2ff72734 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x3, 0x80000000 # initialize rs2
sll x5, x29, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x9, 0x98a4c481 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x55555555 # initialize rs1
li x29, 0x80000001 # initialize rs2
sll x9, x30, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x27, 0x47f83a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555 # initialize rs1
li x23, 0x7fffffff # initialize rs2
sll x27, x6, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x16, 0xb73d1257 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sll x16, x4, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x27, 0x7b4c43ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x55555555 # initialize rs1
li x23, 0xffffffff # initialize rs2
sll x27, x2, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x14, 0xbede7042 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x55555555 # initialize rs1
li x20, 0xfffffffe # initialize rs2
sll x14, x10, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x30, 0x4b22bfe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x55555555 # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
sll x30, x3, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x15, 0x60acf05f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
sll x15, x1, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x29, 0x035059f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x55555555 # initialize rs1
li x26, 0x55555555 # initialize rs2
sll x29, x19, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa6bf3062 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x699e4b5d # initialize rs1
li x13, 0x3dc34a2d # initialize rs2
sll x0, x0, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x2c0575d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x52e354aa # initialize rs1
li x3, 0xd3e6be63 # initialize rs2
sll x1, x1, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x2c52cd7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1013effc # initialize rs1
li x1, 0x22bfe218 # initialize rs2
sll x2, x2, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xb233cb2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x95c21b8e # initialize rs1
li x23, 0x3bfd6dbb # initialize rs2
sll x3, x3, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xab0a5211 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x52deb1fe # initialize rs1
li x27, 0x366ecad9 # initialize rs2
sll x4, x4, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xa41898da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa4116163 # initialize rs1
li x31, 0xcf14da18 # initialize rs2
sll x5, x5, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x6f1140e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8eaa07ff # initialize rs1
li x22, 0xc8996a4d # initialize rs2
sll x6, x6, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x9dd9f5ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9610d25f # initialize rs1
li x11, 0xca06d395 # initialize rs2
sll x7, x7, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x2c72bb5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc89f9b83 # initialize rs1
li x14, 0x1667c278 # initialize rs2
sll x8, x8, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x5141143a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5dd0d494 # initialize rs1
li x15, 0x84aa5ba7 # initialize rs2
sll x9, x9, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x1a2c1fce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9d28f298 # initialize rs1
li x13, 0x4569a91a # initialize rs2
sll x10, x10, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x8b73c990 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55638245 # initialize rs1
li x8, 0xc4839b2e # initialize rs2
sll x11, x11, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd560bf98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf803edce # initialize rs1
li x9, 0x105518f4 # initialize rs2
sll x12, x12, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xeb1bae43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x123cd537 # initialize rs1
li x12, 0x8664d07a # initialize rs2
sll x13, x13, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x64cca6b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa659e243 # initialize rs1
li x31, 0xf234af77 # initialize rs2
sll x14, x14, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xbd40d95c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfe3c0928 # initialize rs1
li x2, 0x34f4f962 # initialize rs2
sll x15, x15, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x3e4dcc66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x95d0be71 # initialize rs1
li x25, 0x393be3e2 # initialize rs2
sll x16, x16, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x96b52fd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x57a85d49 # initialize rs1
li x5, 0x401db21d # initialize rs2
sll x17, x17, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6c1fd6b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xda2385e8 # initialize rs1
li x16, 0x98874385 # initialize rs2
sll x18, x18, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x871aba5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf98e3583 # initialize rs1
li x21, 0x5e204928 # initialize rs2
sll x19, x19, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3a895a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd58c3def # initialize rs1
li x10, 0xd12f464c # initialize rs2
sll x20, x20, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xc3384d3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xee2c247a # initialize rs1
li x22, 0x50380cc3 # initialize rs2
sll x21, x21, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x95f1c6fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc668274e # initialize rs1
li x25, 0x04cb09ef # initialize rs2
sll x22, x22, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x69a5a161 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x131c28c6 # initialize rs1
li x28, 0x9718e873 # initialize rs2
sll x23, x23, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0aaaf881 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x39e92f0a # initialize rs1
li x11, 0x2c3241d1 # initialize rs2
sll x24, x24, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xd4c028e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xff8f260e # initialize rs1
li x13, 0x010e32e7 # initialize rs2
sll x25, x25, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xacb7c8da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7e2654f5 # initialize rs1
li x12, 0x51328383 # initialize rs2
sll x26, x26, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf73bc546 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2f1118b2 # initialize rs1
li x1, 0xfa145d89 # initialize rs2
sll x27, x27, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xd3ba8ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xca652c24 # initialize rs1
li x14, 0x6b123348 # initialize rs2
sll x28, x28, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x106c1eae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa0be8cf3 # initialize rs1
li x30, 0x8c971839 # initialize rs2
sll x29, x29, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xba33e732 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xbf027499 # initialize rs1
li x4, 0xf5c4b777 # initialize rs2
sll x30, x30, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x95e14d4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x19c0f597 # initialize rs1
li x28, 0xc197f4bb # initialize rs2
sll x31, x31, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xcd3fbfef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x39038b60 # initialize rs1
li x0, 0x191c4a93 # initialize rs2
sll x0, x15, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xcbbaa235 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1e002e27 # initialize rs1
li x1, 0x3ea20ab4 # initialize rs2
sll x1, x3, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xc0468509 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe0d3d95a # initialize rs1
li x2, 0x6e3485be # initialize rs2
sll x2, x4, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x076ffa81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb62142f9 # initialize rs1
li x3, 0xc8dca312 # initialize rs2
sll x3, x20, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x167a2d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x29175c84 # initialize rs1
li x4, 0x2c350ed3 # initialize rs2
sll x4, x15, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xb52fbfe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1b9635de # initialize rs1
li x5, 0x9ead0a79 # initialize rs2
sll x5, x21, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x684ba167 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x86b9cf04 # initialize rs1
li x6, 0xe80dfc4f # initialize rs2
sll x6, x13, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x24b16f21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0235fadc # initialize rs1
li x7, 0xb953fee5 # initialize rs2
sll x7, x8, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x7d148c76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8856005e # initialize rs1
li x8, 0xd5748ef9 # initialize rs2
sll x8, x29, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x3398ce4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xeb778291 # initialize rs1
li x9, 0x260c93ec # initialize rs2
sll x9, x31, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xa22eceac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7392252b # initialize rs1
li x10, 0x924f4e68 # initialize rs2
sll x10, x25, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x123326e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb32249a8 # initialize rs1
li x11, 0x7b4a768c # initialize rs2
sll x11, x21, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x2a46cfb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x18183e27 # initialize rs1
li x12, 0x7c76efa2 # initialize rs2
sll x12, x25, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xf035718b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xca3b2650 # initialize rs1
li x13, 0x4fd3d859 # initialize rs2
sll x13, x22, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xc5ba9a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe104e36c # initialize rs1
li x14, 0xfe8822d8 # initialize rs2
sll x14, x16, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x4ae22f8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x67bc9c8f # initialize rs1
li x15, 0x997d2127 # initialize rs2
sll x15, x16, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x04aa6b59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5f6aa4e6 # initialize rs1
li x16, 0x76ad12e0 # initialize rs2
sll x16, x6, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x2339be79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x625e44ca # initialize rs1
li x17, 0xd360ad8b # initialize rs2
sll x17, x18, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x038dcb8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x65d22f04 # initialize rs1
li x18, 0xe81a9bb3 # initialize rs2
sll x18, x26, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x4ef1a4e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1f9e8b1d # initialize rs1
li x19, 0xecfdc419 # initialize rs2
sll x19, x27, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xbb3ae976 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc1c39452 # initialize rs1
li x20, 0xa6aac01d # initialize rs2
sll x20, x14, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x424a3c88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x13fb2d6b # initialize rs1
li x21, 0xf6ac83cc # initialize rs2
sll x21, x19, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xbc33a686 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x189e0f01 # initialize rs1
li x22, 0x84f919b0 # initialize rs2
sll x22, x30, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xb51cd5b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00cc1465 # initialize rs1
li x23, 0xc87f13cf # initialize rs2
sll x23, x31, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xab1acaa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x68e9552d # initialize rs1
li x24, 0xcc213a6b # initialize rs2
sll x24, x2, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xeb804333 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9ef26655 # initialize rs1
li x25, 0x744c0e5f # initialize rs2
sll x25, x29, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xa15562a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x32b819ff # initialize rs1
li x26, 0xf5fe78f1 # initialize rs2
sll x26, x14, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xea67ea8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd7213a54 # initialize rs1
li x27, 0x930d8b1d # initialize rs2
sll x27, x11, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xf52f1395 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bb178ba # initialize rs1
li x28, 0x522d3ee6 # initialize rs2
sll x28, x28, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x74c43b2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0ae3adbc # initialize rs1
li x29, 0xd698b33f # initialize rs2
sll x29, x8, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0xe6744486 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb22c4e95 # initialize rs1
li x30, 0x69f92e4e # initialize rs2
sll x30, x20, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x41af73b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3cee88d3 # initialize rs1
li x31, 0x98caa907 # initialize rs2
sll x31, x29, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x15152e6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc3bd35cc # initialize rs1
li x0, 0xb710d8ad # initialize rs2
sll x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x5d98e28f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc13bde35 # initialize rs1
li x1, 0xef1c8607 # initialize rs2
sll x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xdf4e8980 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc1a93ce8 # initialize rs1
li x2, 0xf8a4f0e0 # initialize rs2
sll x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x0632e7db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf5ef68f8 # initialize rs1
li x3, 0x92522f34 # initialize rs2
sll x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x6d224d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x42b199fc # initialize rs1
li x4, 0x861f6991 # initialize rs2
sll x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x17eed788 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf0c7cdef # initialize rs1
li x5, 0xb6a5626c # initialize rs2
sll x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x76d03562 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x85d1c315 # initialize rs1
li x6, 0xa4f38848 # initialize rs2
sll x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0xacdd11dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x76dcd0ae # initialize rs1
li x7, 0xd7a5e3e5 # initialize rs2
sll x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xa4ccab85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x950a44b8 # initialize rs1
li x8, 0x0c7410c2 # initialize rs2
sll x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x9819572d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x73a1557b # initialize rs1
li x9, 0x02571c28 # initialize rs2
sll x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x3ba8f89a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd6476912 # initialize rs1
li x10, 0xd62f63f1 # initialize rs2
sll x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xb6365eb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6ce2b32d # initialize rs1
li x11, 0xec247313 # initialize rs2
sll x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x4c219e2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1de1351c # initialize rs1
li x12, 0x2a4a9438 # initialize rs2
sll x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x2dcda704 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6c9e9b5b # initialize rs1
li x13, 0xea21eda7 # initialize rs2
sll x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x272f2cb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb7790e04 # initialize rs1
li x14, 0x79dd3128 # initialize rs2
sll x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xd070a7d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa2668650 # initialize rs1
li x15, 0x16f27b9a # initialize rs2
sll x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x28d6afb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5f3dcdfc # initialize rs1
li x16, 0xf2a41e0c # initialize rs2
sll x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe25121d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe50690f0 # initialize rs1
li x17, 0x1e2cf903 # initialize rs2
sll x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xa3d870d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7db3191d # initialize rs1
li x18, 0x51b1d4d0 # initialize rs2
sll x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x3ddda475 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf2f36e0f # initialize rs1
li x19, 0x637695db # initialize rs2
sll x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x02fe8374 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb99eecc6 # initialize rs1
li x20, 0x768c652d # initialize rs2
sll x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xd94da858 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x68125081 # initialize rs1
li x21, 0x43697828 # initialize rs2
sll x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xfcb5cbb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa074cf3f # initialize rs1
li x22, 0x931a8951 # initialize rs2
sll x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x60b6f092 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x70084b61 # initialize rs1
li x23, 0x9a641af4 # initialize rs2
sll x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x90db6a57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5c67830e # initialize rs1
li x24, 0x549c42a1 # initialize rs2
sll x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xdd9abda8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x36bf85d1 # initialize rs1
li x25, 0xb25d2505 # initialize rs2
sll x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x53821fb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe243cd9e # initialize rs1
li x26, 0x028e5f86 # initialize rs2
sll x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xac9f933a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x046629b2 # initialize rs1
li x27, 0xa27c8949 # initialize rs2
sll x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x076dbbf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8f268d80 # initialize rs1
li x28, 0xe368ad19 # initialize rs2
sll x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xb1c360c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xdea38f79 # initialize rs1
li x29, 0xdcf09d5c # initialize rs2
sll x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xce69c8e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdbb47616 # initialize rs1
li x30, 0xfcea0643 # initialize rs2
sll x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xe1005041 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x41d5dc13 # initialize rs1
li x31, 0xf17e844d # initialize rs2
sll x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x2, 0x55a6ee8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x763b782a # initialize rs1
li x0, 0x33b142d2 # initialize rs2
sll x2, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x11, 0x6d253365 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x68801a9f # initialize rs1
li x1, 0x785af67f # initialize rs2
sll x11, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x16, 0x5800d819 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3a293dda # initialize rs1
li x2, 0xb895c056 # initialize rs2
sll x16, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x18, 0x6ae26c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xbbde5d8a # initialize rs1
li x3, 0xcc10946c # initialize rs2
sll x18, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x22, 0x52eb22b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x9111d521 # initialize rs1
li x4, 0xce8029fd # initialize rs2
sll x22, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x13, 0x570d32b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf8a6a54b # initialize rs1
li x5, 0x18d221ab # initialize rs2
sll x13, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x17, 0xe28b04dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6cafc364 # initialize rs1
li x6, 0x5b113b52 # initialize rs2
sll x17, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x19, 0xc4010ff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb9f1625e # initialize rs1
li x7, 0x308aef02 # initialize rs2
sll x19, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x14, 0xe65e98ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf485d813 # initialize rs1
li x8, 0x92260ee2 # initialize rs2
sll x14, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x29, 0xa95991de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x38946586 # initialize rs1
li x9, 0x2b34c97f # initialize rs2
sll x29, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x3, 0xda635bea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfec7a232 # initialize rs1
li x10, 0xa8227f70 # initialize rs2
sll x3, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x6, 0xdf9680bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2d420c0c # initialize rs1
li x11, 0x1d88b058 # initialize rs2
sll x6, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x6f18f841 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe389254f # initialize rs1
li x12, 0x011ecd32 # initialize rs2
sll x12, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x24, 0x8e839388 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8e6de4b1 # initialize rs1
li x13, 0xd43de128 # initialize rs2
sll x24, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x24, 0xef5e4758 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5adf4a2e # initialize rs1
li x14, 0xddcbf584 # initialize rs2
sll x24, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x4b247ceb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3aea5127 # initialize rs1
li x15, 0x82b38c23 # initialize rs2
sll x15, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x2, 0xc54d0401 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4b80bea4 # initialize rs1
li x16, 0x5025d747 # initialize rs2
sll x2, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x10, 0x52d47d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd222f2c1 # initialize rs1
li x17, 0x2362f38c # initialize rs2
sll x10, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x8, 0xfa55bc19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x530bd151 # initialize rs1
li x18, 0x76d2a08e # initialize rs2
sll x8, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x2, 0x8cccc750 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6e64a7d6 # initialize rs1
li x19, 0xe9b6b34b # initialize rs2
sll x2, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x24, 0xc7d9b03f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf3d4c187 # initialize rs1
li x20, 0x27f83d27 # initialize rs2
sll x24, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x11, 0x9395c596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa8d13966 # initialize rs1
li x21, 0x959cafe9 # initialize rs2
sll x11, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x29, 0xb9cae2d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2712bff5 # initialize rs1
li x22, 0x9f86d4b5 # initialize rs2
sll x29, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x17, 0x071cf1fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xda3333b2 # initialize rs1
li x23, 0x927666f0 # initialize rs2
sll x17, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x19, 0x852c4afe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x954c9bdc # initialize rs1
li x24, 0x4536178a # initialize rs2
sll x19, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x12, 0x0952f669 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x59212828 # initialize rs1
li x25, 0x57e7edf7 # initialize rs2
sll x12, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x1, 0x757574d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3d4eb21e # initialize rs1
li x26, 0xb201bfda # initialize rs2
sll x1, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x30, 0x932b320f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xff44dd44 # initialize rs1
li x27, 0x0d1cb766 # initialize rs2
sll x30, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x27, 0xd15a6935 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x313bdb87 # initialize rs1
li x28, 0x9b10badf # initialize rs2
sll x27, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x14, 0xbe214687 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x328ce2cf # initialize rs1
li x29, 0xbcb5213a # initialize rs2
sll x14, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x16, 0x96657c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x97ea36b8 # initialize rs1
li x30, 0x9291d162 # initialize rs2
sll x16, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x5, 0x6bc7b508 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x82519063 # initialize rs1
li x31, 0xcb928caa # initialize rs2
sll x5, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x14cb3c1e)
li x2, 0xbac6358e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x14cb3c1e # initialize rs1
li x12, 0xe6b0753e # initialize rs2
sll x2, x5, x12 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x5844b44d)
li x18, 0x4f8cfe25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa7bb4bb3 # initialize rs1
li x22, 0x6664e222 # initialize rs2
sll x18, x28, x22 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x43301e57)
li x2, 0x3aa952cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x72b8cef8 # initialize rs1
li x12, 0x43301e57 # initialize rs2
sll x2, x31, x12 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x16fe0804)
li x17, 0x5f54db3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa37068b7 # initialize rs1
li x25, 0xe901f7fc # initialize rs2
sll x17, x9, x25 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
