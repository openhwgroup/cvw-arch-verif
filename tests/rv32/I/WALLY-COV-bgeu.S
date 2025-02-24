///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-bgeu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.942970
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x20, 0x601e6607 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x7de511cd # initialize rs1
li x24, 0xbd9d8f79 # initialize rs2
bgeu x0, x24, some_label_for_btype_40986718160 # perform operation 
addi x0, x1, 1
some_label_for_btype_40986718160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0xbd9d8f79 # initialize rs1
li x24, 0xbd9d8f79 # initialize rs2
bgeu x0, x24, some_label_for_btype_40986718161 # perform operation 
addi x0, x1, 1
some_label_for_btype_40986718161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x1)
li x3, 0xc7b32a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xe4b435e0 # initialize rs1
li x8, 0x3fe15422 # initialize rs2
bgeu x1, x8, some_label_for_btype_8214741280 # perform operation 
addi x0, x1, 1
some_label_for_btype_8214741280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x3fe15422 # initialize rs1
li x8, 0x3fe15422 # initialize rs2
bgeu x1, x8, some_label_for_btype_8214741281 # perform operation 
addi x0, x1, 1
some_label_for_btype_8214741281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x2)
li x14, 0x73418c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xd41f791d # initialize rs1
li x5, 0xd1541792 # initialize rs2
bgeu x2, x5, some_label_for_btype_40382455760 # perform operation 
addi x0, x1, 1
some_label_for_btype_40382455760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xd1541792 # initialize rs1
li x5, 0xd1541792 # initialize rs2
bgeu x2, x5, some_label_for_btype_40382455761 # perform operation 
addi x0, x1, 1
some_label_for_btype_40382455761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x3)
li x19, 0x00bfb653 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0b59e25c # initialize rs1
li x11, 0xef2d4623 # initialize rs2
bgeu x3, x11, some_label_for_btype_16886994720 # perform operation 
addi x0, x1, 1
some_label_for_btype_16886994720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xef2d4623 # initialize rs1
li x11, 0xef2d4623 # initialize rs2
bgeu x3, x11, some_label_for_btype_16886994721 # perform operation 
addi x0, x1, 1
some_label_for_btype_16886994721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x4)
li x29, 0xb808a30c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x3486964b # initialize rs1
li x5, 0x08f3d0b5 # initialize rs2
bgeu x4, x5, some_label_for_btype_13274406430 # perform operation 
addi x0, x1, 1
some_label_for_btype_13274406430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x08f3d0b5 # initialize rs1
li x5, 0x08f3d0b5 # initialize rs2
bgeu x4, x5, some_label_for_btype_13274406431 # perform operation 
addi x0, x1, 1
some_label_for_btype_13274406431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x5)
li x15, 0x38dcae7c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5a9acb9c # initialize rs1
li x7, 0xcb833fc9 # initialize rs2
bgeu x5, x7, some_label_for_btype_11060988550 # perform operation 
addi x0, x1, 1
some_label_for_btype_11060988550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xcb833fc9 # initialize rs1
li x7, 0xcb833fc9 # initialize rs2
bgeu x5, x7, some_label_for_btype_11060988551 # perform operation 
addi x0, x1, 1
some_label_for_btype_11060988551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x6)
li x14, 0xd498792a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x5731599f # initialize rs1
li x18, 0x45f2ffb4 # initialize rs2
bgeu x6, x18, some_label_for_btype_29072934160 # perform operation 
addi x0, x1, 1
some_label_for_btype_29072934160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x45f2ffb4 # initialize rs1
li x18, 0x45f2ffb4 # initialize rs2
bgeu x6, x18, some_label_for_btype_29072934161 # perform operation 
addi x0, x1, 1
some_label_for_btype_29072934161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x7)
li x14, 0x30c86488 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x6703bfaf # initialize rs1
li x21, 0xfc4d841a # initialize rs2
bgeu x7, x21, some_label_for_btype_21077759380 # perform operation 
addi x0, x1, 1
some_label_for_btype_21077759380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xfc4d841a # initialize rs1
li x21, 0xfc4d841a # initialize rs2
bgeu x7, x21, some_label_for_btype_21077759381 # perform operation 
addi x0, x1, 1
some_label_for_btype_21077759381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x8)
li x4, 0x50ece3ec # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x13e718d1 # initialize rs1
li x13, 0x7ee132a3 # initialize rs2
bgeu x8, x13, some_label_for_btype_13678501070 # perform operation 
addi x0, x1, 1
some_label_for_btype_13678501070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x7ee132a3 # initialize rs1
li x13, 0x7ee132a3 # initialize rs2
bgeu x8, x13, some_label_for_btype_13678501071 # perform operation 
addi x0, x1, 1
some_label_for_btype_13678501071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x28, 0x29cb3c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x3a90b5c8 # initialize rs1
li x7, 0x61bf776f # initialize rs2
bgeu x9, x7, some_label_for_btype_40640996520 # perform operation 
addi x0, x1, 1
some_label_for_btype_40640996520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x61bf776f # initialize rs1
li x7, 0x61bf776f # initialize rs2
bgeu x9, x7, some_label_for_btype_40640996521 # perform operation 
addi x0, x1, 1
some_label_for_btype_40640996521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x27, 0x1475161e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xbf0780d2 # initialize rs1
li x31, 0x109ef2e7 # initialize rs2
bgeu x10, x31, some_label_for_btype_1289771440 # perform operation 
addi x0, x1, 1
some_label_for_btype_1289771440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x109ef2e7 # initialize rs1
li x31, 0x109ef2e7 # initialize rs2
bgeu x10, x31, some_label_for_btype_1289771441 # perform operation 
addi x0, x1, 1
some_label_for_btype_1289771441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x9d6f40ae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x86364fba # initialize rs1
li x13, 0x86dc64b4 # initialize rs2
bgeu x11, x13, some_label_for_btype_26323692980 # perform operation 
addi x0, x1, 1
some_label_for_btype_26323692980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x86dc64b4 # initialize rs1
li x13, 0x86dc64b4 # initialize rs2
bgeu x11, x13, some_label_for_btype_26323692981 # perform operation 
addi x0, x1, 1
some_label_for_btype_26323692981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x22, 0x1a5ba8a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x6a9c25ca # initialize rs1
li x25, 0x21e3ee50 # initialize rs2
bgeu x12, x25, some_label_for_btype_12544897330 # perform operation 
addi x0, x1, 1
some_label_for_btype_12544897330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x21e3ee50 # initialize rs1
li x25, 0x21e3ee50 # initialize rs2
bgeu x12, x25, some_label_for_btype_12544897331 # perform operation 
addi x0, x1, 1
some_label_for_btype_12544897331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x27, 0x7a254687 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x826b6848 # initialize rs1
li x20, 0x3b6b7446 # initialize rs2
bgeu x13, x20, some_label_for_btype_28711919750 # perform operation 
addi x0, x1, 1
some_label_for_btype_28711919750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x3b6b7446 # initialize rs1
li x20, 0x3b6b7446 # initialize rs2
bgeu x13, x20, some_label_for_btype_28711919751 # perform operation 
addi x0, x1, 1
some_label_for_btype_28711919751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x31, 0x3de94ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xdc1277ef # initialize rs1
li x22, 0xe72e381b # initialize rs2
bgeu x14, x22, some_label_for_btype_17621861170 # perform operation 
addi x0, x1, 1
some_label_for_btype_17621861170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xe72e381b # initialize rs1
li x22, 0xe72e381b # initialize rs2
bgeu x14, x22, some_label_for_btype_17621861171 # perform operation 
addi x0, x1, 1
some_label_for_btype_17621861171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x8, 0x94d2630e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x7bbc90b7 # initialize rs1
li x10, 0x598c26f6 # initialize rs2
bgeu x15, x10, some_label_for_btype_12982782910 # perform operation 
addi x0, x1, 1
some_label_for_btype_12982782910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x598c26f6 # initialize rs1
li x10, 0x598c26f6 # initialize rs2
bgeu x15, x10, some_label_for_btype_12982782911 # perform operation 
addi x0, x1, 1
some_label_for_btype_12982782911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x16)
li x13, 0x5950a488 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x3fbfaffa # initialize rs1
li x29, 0x36a7f383 # initialize rs2
bgeu x16, x29, some_label_for_btype_38061159440 # perform operation 
addi x0, x1, 1
some_label_for_btype_38061159440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x36a7f383 # initialize rs1
li x29, 0x36a7f383 # initialize rs2
bgeu x16, x29, some_label_for_btype_38061159441 # perform operation 
addi x0, x1, 1
some_label_for_btype_38061159441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x17)
li x29, 0xeb193fd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x1bac75b8 # initialize rs1
li x12, 0x25ff2fca # initialize rs2
bgeu x17, x12, some_label_for_btype_33801231150 # perform operation 
addi x0, x1, 1
some_label_for_btype_33801231150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x25ff2fca # initialize rs1
li x12, 0x25ff2fca # initialize rs2
bgeu x17, x12, some_label_for_btype_33801231151 # perform operation 
addi x0, x1, 1
some_label_for_btype_33801231151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x18)
li x6, 0x3ea559a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xd981923a # initialize rs1
li x1, 0x93ae532d # initialize rs2
bgeu x18, x1, some_label_for_btype_14972411360 # perform operation 
addi x0, x1, 1
some_label_for_btype_14972411360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x93ae532d # initialize rs1
li x1, 0x93ae532d # initialize rs2
bgeu x18, x1, some_label_for_btype_14972411361 # perform operation 
addi x0, x1, 1
some_label_for_btype_14972411361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x19)
li x7, 0xcd459492 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xbbff023b # initialize rs1
li x23, 0xf5e648f0 # initialize rs2
bgeu x19, x23, some_label_for_btype_5292516240 # perform operation 
addi x0, x1, 1
some_label_for_btype_5292516240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xf5e648f0 # initialize rs1
li x23, 0xf5e648f0 # initialize rs2
bgeu x19, x23, some_label_for_btype_5292516241 # perform operation 
addi x0, x1, 1
some_label_for_btype_5292516241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x20)
li x8, 0xdddc61aa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x105ecec4 # initialize rs1
li x21, 0xed3ee310 # initialize rs2
bgeu x20, x21, some_label_for_btype_13566551210 # perform operation 
addi x0, x1, 1
some_label_for_btype_13566551210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xed3ee310 # initialize rs1
li x21, 0xed3ee310 # initialize rs2
bgeu x20, x21, some_label_for_btype_13566551211 # perform operation 
addi x0, x1, 1
some_label_for_btype_13566551211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x21)
li x8, 0xb60698df # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xfc9fd2fc # initialize rs1
li x18, 0x5bef396d # initialize rs2
bgeu x21, x18, some_label_for_btype_29858625080 # perform operation 
addi x0, x1, 1
some_label_for_btype_29858625080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x5bef396d # initialize rs1
li x18, 0x5bef396d # initialize rs2
bgeu x21, x18, some_label_for_btype_29858625081 # perform operation 
addi x0, x1, 1
some_label_for_btype_29858625081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x22)
li x9, 0x5ec7d271 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0a829165 # initialize rs1
li x8, 0xedcc350e # initialize rs2
bgeu x22, x8, some_label_for_btype_23924828640 # perform operation 
addi x0, x1, 1
some_label_for_btype_23924828640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xedcc350e # initialize rs1
li x8, 0xedcc350e # initialize rs2
bgeu x22, x8, some_label_for_btype_23924828641 # perform operation 
addi x0, x1, 1
some_label_for_btype_23924828641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x23)
li x5, 0x45bdc4c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x6576dc04 # initialize rs1
li x1, 0x18f9ae8d # initialize rs2
bgeu x23, x1, some_label_for_btype_1885377380 # perform operation 
addi x0, x1, 1
some_label_for_btype_1885377380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x18f9ae8d # initialize rs1
li x1, 0x18f9ae8d # initialize rs2
bgeu x23, x1, some_label_for_btype_1885377381 # perform operation 
addi x0, x1, 1
some_label_for_btype_1885377381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x24)
li x23, 0xa934b325 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x8f71c060 # initialize rs1
li x25, 0xa19dd457 # initialize rs2
bgeu x24, x25, some_label_for_btype_31367006490 # perform operation 
addi x0, x1, 1
some_label_for_btype_31367006490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xa19dd457 # initialize rs1
li x25, 0xa19dd457 # initialize rs2
bgeu x24, x25, some_label_for_btype_31367006491 # perform operation 
addi x0, x1, 1
some_label_for_btype_31367006491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x25)
li x14, 0x9d169ee0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xe4fa786e # initialize rs1
li x18, 0x65d7befe # initialize rs2
bgeu x25, x18, some_label_for_btype_12181986340 # perform operation 
addi x0, x1, 1
some_label_for_btype_12181986340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x65d7befe # initialize rs1
li x18, 0x65d7befe # initialize rs2
bgeu x25, x18, some_label_for_btype_12181986341 # perform operation 
addi x0, x1, 1
some_label_for_btype_12181986341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x26)
li x29, 0x5210917f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x5ae8b802 # initialize rs1
li x2, 0xe72df0f8 # initialize rs2
bgeu x26, x2, some_label_for_btype_9796708880 # perform operation 
addi x0, x1, 1
some_label_for_btype_9796708880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xe72df0f8 # initialize rs1
li x2, 0xe72df0f8 # initialize rs2
bgeu x26, x2, some_label_for_btype_9796708881 # perform operation 
addi x0, x1, 1
some_label_for_btype_9796708881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x27)
li x9, 0xfa68b9a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x8f4a3366 # initialize rs1
li x2, 0x728849bf # initialize rs2
bgeu x27, x2, some_label_for_btype_24307461440 # perform operation 
addi x0, x1, 1
some_label_for_btype_24307461440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x728849bf # initialize rs1
li x2, 0x728849bf # initialize rs2
bgeu x27, x2, some_label_for_btype_24307461441 # perform operation 
addi x0, x1, 1
some_label_for_btype_24307461441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x28)
li x21, 0x1ca44641 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x44900cf7 # initialize rs1
li x12, 0xde42a5f4 # initialize rs2
bgeu x28, x12, some_label_for_btype_14617320450 # perform operation 
addi x0, x1, 1
some_label_for_btype_14617320450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xde42a5f4 # initialize rs1
li x12, 0xde42a5f4 # initialize rs2
bgeu x28, x12, some_label_for_btype_14617320451 # perform operation 
addi x0, x1, 1
some_label_for_btype_14617320451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x29)
li x23, 0xcd315201 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xc037c27f # initialize rs1
li x7, 0xc571e7e5 # initialize rs2
bgeu x29, x7, some_label_for_btype_26110609610 # perform operation 
addi x0, x1, 1
some_label_for_btype_26110609610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xc571e7e5 # initialize rs1
li x7, 0xc571e7e5 # initialize rs2
bgeu x29, x7, some_label_for_btype_26110609611 # perform operation 
addi x0, x1, 1
some_label_for_btype_26110609611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x30)
li x13, 0xc28450d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x02b479e1 # initialize rs1
li x8, 0x3aabfb82 # initialize rs2
bgeu x30, x8, some_label_for_btype_42374538410 # perform operation 
addi x0, x1, 1
some_label_for_btype_42374538410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x3aabfb82 # initialize rs1
li x8, 0x3aabfb82 # initialize rs2
bgeu x30, x8, some_label_for_btype_42374538411 # perform operation 
addi x0, x1, 1
some_label_for_btype_42374538411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x31)
li x20, 0xdc1149d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xd7fe4574 # initialize rs1
li x19, 0x2c37d027 # initialize rs2
bgeu x31, x19, some_label_for_btype_24384593820 # perform operation 
addi x0, x1, 1
some_label_for_btype_24384593820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x2c37d027 # initialize rs1
li x19, 0x2c37d027 # initialize rs2
bgeu x31, x19, some_label_for_btype_24384593821 # perform operation 
addi x0, x1, 1
some_label_for_btype_24384593821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x0)
li x14, 0x04f695e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x9d36ac5f # initialize rs1
li x0, 0x6aa6897a # initialize rs2
bgeu x3, x0, some_label_for_btype_1825803960 # perform operation 
addi x0, x1, 1
some_label_for_btype_1825803960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x6aa6897a # initialize rs1
li x0, 0x6aa6897a # initialize rs2
bgeu x3, x0, some_label_for_btype_1825803961 # perform operation 
addi x0, x1, 1
some_label_for_btype_1825803961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x1)
li x27, 0xf1f31bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x3c67d50f # initialize rs1
li x1, 0xca0fc364 # initialize rs2
bgeu x23, x1, some_label_for_btype_4099155910 # perform operation 
addi x0, x1, 1
some_label_for_btype_4099155910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xca0fc364 # initialize rs1
li x1, 0xca0fc364 # initialize rs2
bgeu x23, x1, some_label_for_btype_4099155911 # perform operation 
addi x0, x1, 1
some_label_for_btype_4099155911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x2)
li x9, 0x80425958 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x13b76328 # initialize rs1
li x2, 0xcc1fd99b # initialize rs2
bgeu x13, x2, some_label_for_btype_32729326720 # perform operation 
addi x0, x1, 1
some_label_for_btype_32729326720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xcc1fd99b # initialize rs1
li x2, 0xcc1fd99b # initialize rs2
bgeu x13, x2, some_label_for_btype_32729326721 # perform operation 
addi x0, x1, 1
some_label_for_btype_32729326721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x3)
li x27, 0x70a63517 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x26f75cca # initialize rs1
li x3, 0xaefd8c0c # initialize rs2
bgeu x29, x3, some_label_for_btype_18331354690 # perform operation 
addi x0, x1, 1
some_label_for_btype_18331354690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xaefd8c0c # initialize rs1
li x3, 0xaefd8c0c # initialize rs2
bgeu x29, x3, some_label_for_btype_18331354691 # perform operation 
addi x0, x1, 1
some_label_for_btype_18331354691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x4)
li x17, 0xa8bcdadf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xdcbf27a9 # initialize rs1
li x4, 0xe2710d8d # initialize rs2
bgeu x16, x4, some_label_for_btype_39068160100 # perform operation 
addi x0, x1, 1
some_label_for_btype_39068160100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xe2710d8d # initialize rs1
li x4, 0xe2710d8d # initialize rs2
bgeu x16, x4, some_label_for_btype_39068160101 # perform operation 
addi x0, x1, 1
some_label_for_btype_39068160101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x5)
li x27, 0x7beef784 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xa12916b5 # initialize rs1
li x5, 0xd5f7fd54 # initialize rs2
bgeu x7, x5, some_label_for_btype_24810086860 # perform operation 
addi x0, x1, 1
some_label_for_btype_24810086860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xd5f7fd54 # initialize rs1
li x5, 0xd5f7fd54 # initialize rs2
bgeu x7, x5, some_label_for_btype_24810086861 # perform operation 
addi x0, x1, 1
some_label_for_btype_24810086861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x6)
li x23, 0xfc7ae3ce # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xb9bc3bb4 # initialize rs1
li x6, 0xbe690f26 # initialize rs2
bgeu x20, x6, some_label_for_btype_12870248750 # perform operation 
addi x0, x1, 1
some_label_for_btype_12870248750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xbe690f26 # initialize rs1
li x6, 0xbe690f26 # initialize rs2
bgeu x20, x6, some_label_for_btype_12870248751 # perform operation 
addi x0, x1, 1
some_label_for_btype_12870248751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x7)
li x26, 0xddb8478f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xfa06d4c1 # initialize rs1
li x7, 0x36b372c1 # initialize rs2
bgeu x8, x7, some_label_for_btype_23364696350 # perform operation 
addi x0, x1, 1
some_label_for_btype_23364696350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x36b372c1 # initialize rs1
li x7, 0x36b372c1 # initialize rs2
bgeu x8, x7, some_label_for_btype_23364696351 # perform operation 
addi x0, x1, 1
some_label_for_btype_23364696351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x8)
li x25, 0xf545d83f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x924c38e5 # initialize rs1
li x8, 0x5ab9c945 # initialize rs2
bgeu x6, x8, some_label_for_btype_27999553930 # perform operation 
addi x0, x1, 1
some_label_for_btype_27999553930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x5ab9c945 # initialize rs1
li x8, 0x5ab9c945 # initialize rs2
bgeu x6, x8, some_label_for_btype_27999553931 # perform operation 
addi x0, x1, 1
some_label_for_btype_27999553931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x9)
li x22, 0x141acd50 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0e9fb733 # initialize rs1
li x9, 0xdf9aa645 # initialize rs2
bgeu x1, x9, some_label_for_btype_20077516360 # perform operation 
addi x0, x1, 1
some_label_for_btype_20077516360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xdf9aa645 # initialize rs1
li x9, 0xdf9aa645 # initialize rs2
bgeu x1, x9, some_label_for_btype_20077516361 # perform operation 
addi x0, x1, 1
some_label_for_btype_20077516361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x10)
li x9, 0x7ea2a75f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xdc32424f # initialize rs1
li x10, 0x5bee3e0f # initialize rs2
bgeu x14, x10, some_label_for_btype_27085889540 # perform operation 
addi x0, x1, 1
some_label_for_btype_27085889540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x5bee3e0f # initialize rs1
li x10, 0x5bee3e0f # initialize rs2
bgeu x14, x10, some_label_for_btype_27085889541 # perform operation 
addi x0, x1, 1
some_label_for_btype_27085889541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x11)
li x21, 0x3984106e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xe53c5dce # initialize rs1
li x11, 0x5c5bf958 # initialize rs2
bgeu x3, x11, some_label_for_btype_40633171410 # perform operation 
addi x0, x1, 1
some_label_for_btype_40633171410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x5c5bf958 # initialize rs1
li x11, 0x5c5bf958 # initialize rs2
bgeu x3, x11, some_label_for_btype_40633171411 # perform operation 
addi x0, x1, 1
some_label_for_btype_40633171411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x12)
li x8, 0xf075009a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xc5c7a4e5 # initialize rs1
li x12, 0x135c9198 # initialize rs2
bgeu x3, x12, some_label_for_btype_37160547670 # perform operation 
addi x0, x1, 1
some_label_for_btype_37160547670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x135c9198 # initialize rs1
li x12, 0x135c9198 # initialize rs2
bgeu x3, x12, some_label_for_btype_37160547671 # perform operation 
addi x0, x1, 1
some_label_for_btype_37160547671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x13)
li x15, 0xde33df88 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7cca6ec4 # initialize rs1
li x13, 0x496a8ea0 # initialize rs2
bgeu x29, x13, some_label_for_btype_13391239880 # perform operation 
addi x0, x1, 1
some_label_for_btype_13391239880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x496a8ea0 # initialize rs1
li x13, 0x496a8ea0 # initialize rs2
bgeu x29, x13, some_label_for_btype_13391239881 # perform operation 
addi x0, x1, 1
some_label_for_btype_13391239881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x14)
li x7, 0xdc3dcd8b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xb55ba97a # initialize rs1
li x14, 0xd804d6cf # initialize rs2
bgeu x27, x14, some_label_for_btype_1486551800 # perform operation 
addi x0, x1, 1
some_label_for_btype_1486551800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xd804d6cf # initialize rs1
li x14, 0xd804d6cf # initialize rs2
bgeu x27, x14, some_label_for_btype_1486551801 # perform operation 
addi x0, x1, 1
some_label_for_btype_1486551801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x15)
li x5, 0x6cf0072d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x53b9bf8c # initialize rs1
li x15, 0xe836331d # initialize rs2
bgeu x26, x15, some_label_for_btype_3967509390 # perform operation 
addi x0, x1, 1
some_label_for_btype_3967509390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xe836331d # initialize rs1
li x15, 0xe836331d # initialize rs2
bgeu x26, x15, some_label_for_btype_3967509391 # perform operation 
addi x0, x1, 1
some_label_for_btype_3967509391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x16)
li x8, 0x41cfa1a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x6ad7b4a9 # initialize rs1
li x16, 0xe6584826 # initialize rs2
bgeu x19, x16, some_label_for_btype_9759160110 # perform operation 
addi x0, x1, 1
some_label_for_btype_9759160110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xe6584826 # initialize rs1
li x16, 0xe6584826 # initialize rs2
bgeu x19, x16, some_label_for_btype_9759160111 # perform operation 
addi x0, x1, 1
some_label_for_btype_9759160111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x17)
li x7, 0x84e83ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xfe96ff2e # initialize rs1
li x17, 0xe61abf8e # initialize rs2
bgeu x2, x17, some_label_for_btype_28181630950 # perform operation 
addi x0, x1, 1
some_label_for_btype_28181630950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xe61abf8e # initialize rs1
li x17, 0xe61abf8e # initialize rs2
bgeu x2, x17, some_label_for_btype_28181630951 # perform operation 
addi x0, x1, 1
some_label_for_btype_28181630951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x18)
li x30, 0x2afddb9b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x9235c2d4 # initialize rs1
li x18, 0x99adabab # initialize rs2
bgeu x5, x18, some_label_for_btype_29611727930 # perform operation 
addi x0, x1, 1
some_label_for_btype_29611727930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x99adabab # initialize rs1
li x18, 0x99adabab # initialize rs2
bgeu x5, x18, some_label_for_btype_29611727931 # perform operation 
addi x0, x1, 1
some_label_for_btype_29611727931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x19)
li x21, 0x9f467190 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xd9640e22 # initialize rs1
li x19, 0x5ed8cf72 # initialize rs2
bgeu x16, x19, some_label_for_btype_27473309890 # perform operation 
addi x0, x1, 1
some_label_for_btype_27473309890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5ed8cf72 # initialize rs1
li x19, 0x5ed8cf72 # initialize rs2
bgeu x16, x19, some_label_for_btype_27473309891 # perform operation 
addi x0, x1, 1
some_label_for_btype_27473309891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x20)
li x27, 0xac948efe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x85048d9b # initialize rs1
li x20, 0x471c44de # initialize rs2
bgeu x30, x20, some_label_for_btype_10247107110 # perform operation 
addi x0, x1, 1
some_label_for_btype_10247107110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x471c44de # initialize rs1
li x20, 0x471c44de # initialize rs2
bgeu x30, x20, some_label_for_btype_10247107111 # perform operation 
addi x0, x1, 1
some_label_for_btype_10247107111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x21)
li x30, 0xf8b9654c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x31a53328 # initialize rs1
li x21, 0xf0acc028 # initialize rs2
bgeu x31, x21, some_label_for_btype_25342595990 # perform operation 
addi x0, x1, 1
some_label_for_btype_25342595990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xf0acc028 # initialize rs1
li x21, 0xf0acc028 # initialize rs2
bgeu x31, x21, some_label_for_btype_25342595991 # perform operation 
addi x0, x1, 1
some_label_for_btype_25342595991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x22)
li x27, 0x4dddc0a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xff8f9d51 # initialize rs1
li x22, 0x23e2d6ac # initialize rs2
bgeu x29, x22, some_label_for_btype_26172567120 # perform operation 
addi x0, x1, 1
some_label_for_btype_26172567120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x23e2d6ac # initialize rs1
li x22, 0x23e2d6ac # initialize rs2
bgeu x29, x22, some_label_for_btype_26172567121 # perform operation 
addi x0, x1, 1
some_label_for_btype_26172567121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x23)
li x4, 0x20e9e2a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x1ef1a823 # initialize rs1
li x23, 0xb821c896 # initialize rs2
bgeu x16, x23, some_label_for_btype_25723198820 # perform operation 
addi x0, x1, 1
some_label_for_btype_25723198820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xb821c896 # initialize rs1
li x23, 0xb821c896 # initialize rs2
bgeu x16, x23, some_label_for_btype_25723198821 # perform operation 
addi x0, x1, 1
some_label_for_btype_25723198821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0xa89b3e94 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x4132d2ac # initialize rs1
li x24, 0x075dc4c3 # initialize rs2
bgeu x26, x24, some_label_for_btype_32097097400 # perform operation 
addi x0, x1, 1
some_label_for_btype_32097097400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x075dc4c3 # initialize rs1
li x24, 0x075dc4c3 # initialize rs2
bgeu x26, x24, some_label_for_btype_32097097401 # perform operation 
addi x0, x1, 1
some_label_for_btype_32097097401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x25)
li x20, 0x4faad08e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xb0977121 # initialize rs1
li x25, 0x9ef435a6 # initialize rs2
bgeu x26, x25, some_label_for_btype_27531601690 # perform operation 
addi x0, x1, 1
some_label_for_btype_27531601690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x9ef435a6 # initialize rs1
li x25, 0x9ef435a6 # initialize rs2
bgeu x26, x25, some_label_for_btype_27531601691 # perform operation 
addi x0, x1, 1
some_label_for_btype_27531601691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x26)
li x16, 0xbc3de2bb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xcfe5b6aa # initialize rs1
li x26, 0xf0fc6adb # initialize rs2
bgeu x28, x26, some_label_for_btype_6543726070 # perform operation 
addi x0, x1, 1
some_label_for_btype_6543726070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xf0fc6adb # initialize rs1
li x26, 0xf0fc6adb # initialize rs2
bgeu x28, x26, some_label_for_btype_6543726071 # perform operation 
addi x0, x1, 1
some_label_for_btype_6543726071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x27)
li x30, 0xcceb86b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x32315900 # initialize rs1
li x27, 0xc558cc74 # initialize rs2
bgeu x4, x27, some_label_for_btype_8477894310 # perform operation 
addi x0, x1, 1
some_label_for_btype_8477894310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xc558cc74 # initialize rs1
li x27, 0xc558cc74 # initialize rs2
bgeu x4, x27, some_label_for_btype_8477894311 # perform operation 
addi x0, x1, 1
some_label_for_btype_8477894311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x28)
li x17, 0xc1d8fabb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xfd37729e # initialize rs1
li x28, 0xcfb3b917 # initialize rs2
bgeu x29, x28, some_label_for_btype_26417914050 # perform operation 
addi x0, x1, 1
some_label_for_btype_26417914050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xcfb3b917 # initialize rs1
li x28, 0xcfb3b917 # initialize rs2
bgeu x29, x28, some_label_for_btype_26417914051 # perform operation 
addi x0, x1, 1
some_label_for_btype_26417914051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x29)
li x20, 0xc95ae1fa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x9cd90676 # initialize rs1
li x29, 0xf4a507b1 # initialize rs2
bgeu x5, x29, some_label_for_btype_4031660890 # perform operation 
addi x0, x1, 1
some_label_for_btype_4031660890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xf4a507b1 # initialize rs1
li x29, 0xf4a507b1 # initialize rs2
bgeu x5, x29, some_label_for_btype_4031660891 # perform operation 
addi x0, x1, 1
some_label_for_btype_4031660891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x30)
li x28, 0xe889d880 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x94882dec # initialize rs1
li x30, 0xd141aeb1 # initialize rs2
bgeu x25, x30, some_label_for_btype_21451924560 # perform operation 
addi x0, x1, 1
some_label_for_btype_21451924560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xd141aeb1 # initialize rs1
li x30, 0xd141aeb1 # initialize rs2
bgeu x25, x30, some_label_for_btype_21451924561 # perform operation 
addi x0, x1, 1
some_label_for_btype_21451924561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x31)
li x3, 0x9c43a7a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x7150edcc # initialize rs1
li x31, 0x1840a1ee # initialize rs2
bgeu x25, x31, some_label_for_btype_22363620490 # perform operation 
addi x0, x1, 1
some_label_for_btype_22363620490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x1840a1ee # initialize rs1
li x31, 0x1840a1ee # initialize rs2
bgeu x25, x31, some_label_for_btype_22363620491 # perform operation 
addi x0, x1, 1
some_label_for_btype_22363620491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x1b36d3c4)
li x31, 0x330e8d8e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x330e8d8e # initialize rs1
li x0, 0xf40d0f12 # initialize rs2
bgeu x3, x0, some_label_for_btype_15449805710 # perform operation 
addi x0, x1, 1
some_label_for_btype_15449805710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xf40d0f12 # initialize rs1
li x0, 0xf40d0f12 # initialize rs2
bgeu x3, x0, some_label_for_btype_15449805711 # perform operation 
addi x0, x1, 1
some_label_for_btype_15449805711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0xb1c2a90f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x00000000 # initialize rs1
li x26, 0x1f870447 # initialize rs2
bgeu x5, x26, some_label_for_btype_5497803730 # perform operation 
addi x0, x1, 1
some_label_for_btype_5497803730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x1f870447 # initialize rs1
li x26, 0x1f870447 # initialize rs2
bgeu x5, x26, some_label_for_btype_5497803731 # perform operation 
addi x0, x1, 1
some_label_for_btype_5497803731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x972c6ae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000001 # initialize rs1
li x21, 0x1c05863a # initialize rs2
bgeu x18, x21, some_label_for_btype_38802396930 # perform operation 
addi x0, x1, 1
some_label_for_btype_38802396930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x1c05863a # initialize rs1
li x21, 0x1c05863a # initialize rs2
bgeu x18, x21, some_label_for_btype_38802396931 # perform operation 
addi x0, x1, 1
some_label_for_btype_38802396931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0x6e01b07d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000002 # initialize rs1
li x17, 0x5e5cfe61 # initialize rs2
bgeu x18, x17, some_label_for_btype_24069058860 # perform operation 
addi x0, x1, 1
some_label_for_btype_24069058860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x5e5cfe61 # initialize rs1
li x17, 0x5e5cfe61 # initialize rs2
bgeu x18, x17, some_label_for_btype_24069058861 # perform operation 
addi x0, x1, 1
some_label_for_btype_24069058861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x2, 0x93564e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x80000000 # initialize rs1
li x31, 0x08bd4713 # initialize rs2
bgeu x6, x31, some_label_for_btype_32314070180 # perform operation 
addi x0, x1, 1
some_label_for_btype_32314070180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x08bd4713 # initialize rs1
li x31, 0x08bd4713 # initialize rs2
bgeu x6, x31, some_label_for_btype_32314070181 # perform operation 
addi x0, x1, 1
some_label_for_btype_32314070181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x7, 0xed811dcd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x80000001 # initialize rs1
li x25, 0x458b382a # initialize rs2
bgeu x6, x25, some_label_for_btype_24170629110 # perform operation 
addi x0, x1, 1
some_label_for_btype_24170629110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x458b382a # initialize rs1
li x25, 0x458b382a # initialize rs2
bgeu x6, x25, some_label_for_btype_24170629111 # perform operation 
addi x0, x1, 1
some_label_for_btype_24170629111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x5, 0xddb2af28 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x7fffffff # initialize rs1
li x12, 0x329899ff # initialize rs2
bgeu x26, x12, some_label_for_btype_22790504620 # perform operation 
addi x0, x1, 1
some_label_for_btype_22790504620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x329899ff # initialize rs1
li x12, 0x329899ff # initialize rs2
bgeu x26, x12, some_label_for_btype_22790504621 # perform operation 
addi x0, x1, 1
some_label_for_btype_22790504621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x7, 0x77d4f87e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x7ffffffe # initialize rs1
li x22, 0x2a2e7026 # initialize rs2
bgeu x5, x22, some_label_for_btype_42463041250 # perform operation 
addi x0, x1, 1
some_label_for_btype_42463041250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x2a2e7026 # initialize rs1
li x22, 0x2a2e7026 # initialize rs2
bgeu x5, x22, some_label_for_btype_42463041251 # perform operation 
addi x0, x1, 1
some_label_for_btype_42463041251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0xe9d33ce3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xffffffff # initialize rs1
li x23, 0xcd7061fc # initialize rs2
bgeu x9, x23, some_label_for_btype_16527584070 # perform operation 
addi x0, x1, 1
some_label_for_btype_16527584070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xcd7061fc # initialize rs1
li x23, 0xcd7061fc # initialize rs2
bgeu x9, x23, some_label_for_btype_16527584071 # perform operation 
addi x0, x1, 1
some_label_for_btype_16527584071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x1, 0x3ce25637 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xfffffffe # initialize rs1
li x29, 0xa1961415 # initialize rs2
bgeu x20, x29, some_label_for_btype_30331776420 # perform operation 
addi x0, x1, 1
some_label_for_btype_30331776420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xa1961415 # initialize rs1
li x29, 0xa1961415 # initialize rs2
bgeu x20, x29, some_label_for_btype_30331776421 # perform operation 
addi x0, x1, 1
some_label_for_btype_30331776421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x8, 0xfca5b563 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x5bbc8877 # initialize rs1
li x10, 0xdac1442b # initialize rs2
bgeu x12, x10, some_label_for_btype_16527006170 # perform operation 
addi x0, x1, 1
some_label_for_btype_16527006170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xdac1442b # initialize rs1
li x10, 0xdac1442b # initialize rs2
bgeu x12, x10, some_label_for_btype_16527006171 # perform operation 
addi x0, x1, 1
some_label_for_btype_16527006171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x14, 0xbfba2aaf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xaaaaaaaa # initialize rs1
li x29, 0xbeffb5eb # initialize rs2
bgeu x28, x29, some_label_for_btype_23855270880 # perform operation 
addi x0, x1, 1
some_label_for_btype_23855270880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xbeffb5eb # initialize rs1
li x29, 0xbeffb5eb # initialize rs2
bgeu x28, x29, some_label_for_btype_23855270881 # perform operation 
addi x0, x1, 1
some_label_for_btype_23855270881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x16, 0x720c5bf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x55555555 # initialize rs1
li x7, 0x6dc67412 # initialize rs2
bgeu x20, x7, some_label_for_btype_30456627270 # perform operation 
addi x0, x1, 1
some_label_for_btype_30456627270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x6dc67412 # initialize rs1
li x7, 0x6dc67412 # initialize rs2
bgeu x20, x7, some_label_for_btype_30456627271 # perform operation 
addi x0, x1, 1
some_label_for_btype_30456627271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0x62639aad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x259ef6d7 # initialize rs1
li x12, 0x00000000 # initialize rs2
bgeu x15, x12, some_label_for_btype_20368084240 # perform operation 
addi x0, x1, 1
some_label_for_btype_20368084240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x00000000 # initialize rs1
li x12, 0x00000000 # initialize rs2
bgeu x15, x12, some_label_for_btype_20368084241 # perform operation 
addi x0, x1, 1
some_label_for_btype_20368084241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x29, 0x05a75a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x05f7638f # initialize rs1
li x7, 0x00000001 # initialize rs2
bgeu x17, x7, some_label_for_btype_30260365570 # perform operation 
addi x0, x1, 1
some_label_for_btype_30260365570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
bgeu x17, x7, some_label_for_btype_30260365571 # perform operation 
addi x0, x1, 1
some_label_for_btype_30260365571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x27, 0xa2255a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xd559b1d4 # initialize rs1
li x17, 0x00000002 # initialize rs2
bgeu x8, x17, some_label_for_btype_40412998670 # perform operation 
addi x0, x1, 1
some_label_for_btype_40412998670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x00000002 # initialize rs1
li x17, 0x00000002 # initialize rs2
bgeu x8, x17, some_label_for_btype_40412998671 # perform operation 
addi x0, x1, 1
some_label_for_btype_40412998671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x13, 0x001cfd71 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x406d8d65 # initialize rs1
li x14, 0x80000000 # initialize rs2
bgeu x28, x14, some_label_for_btype_35485323480 # perform operation 
addi x0, x1, 1
some_label_for_btype_35485323480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x80000000 # initialize rs1
li x14, 0x80000000 # initialize rs2
bgeu x28, x14, some_label_for_btype_35485323481 # perform operation 
addi x0, x1, 1
some_label_for_btype_35485323481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x9, 0x4afbd99c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xe9f9cbb4 # initialize rs1
li x12, 0x80000001 # initialize rs2
bgeu x20, x12, some_label_for_btype_39391133710 # perform operation 
addi x0, x1, 1
some_label_for_btype_39391133710:
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
bgeu x20, x12, some_label_for_btype_39391133711 # perform operation 
addi x0, x1, 1
some_label_for_btype_39391133711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x23, 0xeb6f1279 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x2dcfea01 # initialize rs1
li x31, 0x7fffffff # initialize rs2
bgeu x12, x31, some_label_for_btype_36272519340 # perform operation 
addi x0, x1, 1
some_label_for_btype_36272519340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7fffffff # initialize rs1
li x31, 0x7fffffff # initialize rs2
bgeu x12, x31, some_label_for_btype_36272519341 # perform operation 
addi x0, x1, 1
some_label_for_btype_36272519341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x27, 0x0b3a3e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x1aaa01e7 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
bgeu x18, x28, some_label_for_btype_23124787530 # perform operation 
addi x0, x1, 1
some_label_for_btype_23124787530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x7ffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
bgeu x18, x28, some_label_for_btype_23124787531 # perform operation 
addi x0, x1, 1
some_label_for_btype_23124787531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x1, 0x803db7cb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x6ca14c64 # initialize rs1
li x14, 0xffffffff # initialize rs2
bgeu x5, x14, some_label_for_btype_9339542170 # perform operation 
addi x0, x1, 1
some_label_for_btype_9339542170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xffffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
bgeu x5, x14, some_label_for_btype_9339542171 # perform operation 
addi x0, x1, 1
some_label_for_btype_9339542171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x26, 0x62cee864 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xca9eef3e # initialize rs1
li x29, 0xfffffffe # initialize rs2
bgeu x30, x29, some_label_for_btype_3204290930 # perform operation 
addi x0, x1, 1
some_label_for_btype_3204290930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xfffffffe # initialize rs1
li x29, 0xfffffffe # initialize rs2
bgeu x30, x29, some_label_for_btype_3204290931 # perform operation 
addi x0, x1, 1
some_label_for_btype_3204290931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x20, 0xdeb26469 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xe2a5f0cb # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
bgeu x29, x27, some_label_for_btype_840624900 # perform operation 
addi x0, x1, 1
some_label_for_btype_840624900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x5bbc8877 # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
bgeu x29, x27, some_label_for_btype_840624901 # perform operation 
addi x0, x1, 1
some_label_for_btype_840624901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x19, 0xb25f0394 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x6ddabc9e # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
bgeu x21, x5, some_label_for_btype_23636310010 # perform operation 
addi x0, x1, 1
some_label_for_btype_23636310010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
bgeu x21, x5, some_label_for_btype_23636310011 # perform operation 
addi x0, x1, 1
some_label_for_btype_23636310011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x14, 0x2f777b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x2c08c30b # initialize rs1
li x17, 0x55555555 # initialize rs2
bgeu x5, x17, some_label_for_btype_8957614560 # perform operation 
addi x0, x1, 1
some_label_for_btype_8957614560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x55555555 # initialize rs1
li x17, 0x55555555 # initialize rs2
bgeu x5, x17, some_label_for_btype_8957614561 # perform operation 
addi x0, x1, 1
some_label_for_btype_8957614561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x9, 0x3d061738 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x00000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
bgeu x1, x6, some_label_for_btype_22527555800 # perform operation 
addi x0, x1, 1
some_label_for_btype_22527555800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x00000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
bgeu x1, x6, some_label_for_btype_22527555801 # perform operation 
addi x0, x1, 1
some_label_for_btype_22527555801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x22, 0x6f8c9548 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x00000000 # initialize rs1
li x3, 0x00000001 # initialize rs2
bgeu x7, x3, some_label_for_btype_23145694260 # perform operation 
addi x0, x1, 1
some_label_for_btype_23145694260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000001 # initialize rs1
li x3, 0x00000001 # initialize rs2
bgeu x7, x3, some_label_for_btype_23145694261 # perform operation 
addi x0, x1, 1
some_label_for_btype_23145694261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x19, 0xa7542293 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x00000000 # initialize rs1
li x14, 0x00000002 # initialize rs2
bgeu x29, x14, some_label_for_btype_32806856020 # perform operation 
addi x0, x1, 1
some_label_for_btype_32806856020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x00000002 # initialize rs1
li x14, 0x00000002 # initialize rs2
bgeu x29, x14, some_label_for_btype_32806856021 # perform operation 
addi x0, x1, 1
some_label_for_btype_32806856021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x5, 0x28239a1a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
bgeu x30, x29, some_label_for_btype_23062749030 # perform operation 
addi x0, x1, 1
some_label_for_btype_23062749030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x80000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
bgeu x30, x29, some_label_for_btype_23062749031 # perform operation 
addi x0, x1, 1
some_label_for_btype_23062749031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x24, 0x50ac60b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000000 # initialize rs1
li x5, 0x80000001 # initialize rs2
bgeu x18, x5, some_label_for_btype_10264327880 # perform operation 
addi x0, x1, 1
some_label_for_btype_10264327880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x80000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
bgeu x18, x5, some_label_for_btype_10264327881 # perform operation 
addi x0, x1, 1
some_label_for_btype_10264327881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x24, 0x7cf962b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x00000000 # initialize rs1
li x27, 0x7fffffff # initialize rs2
bgeu x29, x27, some_label_for_btype_42915059240 # perform operation 
addi x0, x1, 1
some_label_for_btype_42915059240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x7fffffff # initialize rs1
li x27, 0x7fffffff # initialize rs2
bgeu x29, x27, some_label_for_btype_42915059241 # perform operation 
addi x0, x1, 1
some_label_for_btype_42915059241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x21, 0xd670a1ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000000 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
bgeu x13, x14, some_label_for_btype_36958950790 # perform operation 
addi x0, x1, 1
some_label_for_btype_36958950790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x7ffffffe # initialize rs1
li x14, 0x7ffffffe # initialize rs2
bgeu x13, x14, some_label_for_btype_36958950791 # perform operation 
addi x0, x1, 1
some_label_for_btype_36958950791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x5, 0x73d95fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000000 # initialize rs1
li x27, 0xffffffff # initialize rs2
bgeu x15, x27, some_label_for_btype_41761045090 # perform operation 
addi x0, x1, 1
some_label_for_btype_41761045090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xffffffff # initialize rs1
li x27, 0xffffffff # initialize rs2
bgeu x15, x27, some_label_for_btype_41761045091 # perform operation 
addi x0, x1, 1
some_label_for_btype_41761045091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x10, 0x17aea1be # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x00000000 # initialize rs1
li x20, 0xfffffffe # initialize rs2
bgeu x9, x20, some_label_for_btype_22832098350 # perform operation 
addi x0, x1, 1
some_label_for_btype_22832098350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xfffffffe # initialize rs1
li x20, 0xfffffffe # initialize rs2
bgeu x9, x20, some_label_for_btype_22832098351 # perform operation 
addi x0, x1, 1
some_label_for_btype_22832098351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x12, 0x78034b81 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x00000000 # initialize rs1
li x25, 0x5bbc8877 # initialize rs2
bgeu x24, x25, some_label_for_btype_5586541460 # perform operation 
addi x0, x1, 1
some_label_for_btype_5586541460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5bbc8877 # initialize rs1
li x25, 0x5bbc8877 # initialize rs2
bgeu x24, x25, some_label_for_btype_5586541461 # perform operation 
addi x0, x1, 1
some_label_for_btype_5586541461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x26, 0x1b328f28 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x00000000 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
bgeu x7, x10, some_label_for_btype_39525841480 # perform operation 
addi x0, x1, 1
some_label_for_btype_39525841480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
bgeu x7, x10, some_label_for_btype_39525841481 # perform operation 
addi x0, x1, 1
some_label_for_btype_39525841481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x24, 0xbbf41172 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x00000000 # initialize rs1
li x20, 0x55555555 # initialize rs2
bgeu x29, x20, some_label_for_btype_4073523130 # perform operation 
addi x0, x1, 1
some_label_for_btype_4073523130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x55555555 # initialize rs1
li x20, 0x55555555 # initialize rs2
bgeu x29, x20, some_label_for_btype_4073523131 # perform operation 
addi x0, x1, 1
some_label_for_btype_4073523131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x5, 0x621154c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x00000001 # initialize rs1
li x9, 0x00000000 # initialize rs2
bgeu x6, x9, some_label_for_btype_31808175220 # perform operation 
addi x0, x1, 1
some_label_for_btype_31808175220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x00000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
bgeu x6, x9, some_label_for_btype_31808175221 # perform operation 
addi x0, x1, 1
some_label_for_btype_31808175221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x19, 0x1fa0ab14 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000001 # initialize rs1
li x11, 0x00000001 # initialize rs2
bgeu x17, x11, some_label_for_btype_19526921480 # perform operation 
addi x0, x1, 1
some_label_for_btype_19526921480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000001 # initialize rs1
li x11, 0x00000001 # initialize rs2
bgeu x17, x11, some_label_for_btype_19526921481 # perform operation 
addi x0, x1, 1
some_label_for_btype_19526921481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x28, 0x79bdd5b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000001 # initialize rs1
li x16, 0x00000002 # initialize rs2
bgeu x14, x16, some_label_for_btype_29236142680 # perform operation 
addi x0, x1, 1
some_label_for_btype_29236142680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000002 # initialize rs1
li x16, 0x00000002 # initialize rs2
bgeu x14, x16, some_label_for_btype_29236142681 # perform operation 
addi x0, x1, 1
some_label_for_btype_29236142681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x20, 0xf9c69026 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x00000001 # initialize rs1
li x23, 0x80000000 # initialize rs2
bgeu x22, x23, some_label_for_btype_15711913820 # perform operation 
addi x0, x1, 1
some_label_for_btype_15711913820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x80000000 # initialize rs1
li x23, 0x80000000 # initialize rs2
bgeu x22, x23, some_label_for_btype_15711913821 # perform operation 
addi x0, x1, 1
some_label_for_btype_15711913821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x7, 0x60ff2c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
bgeu x31, x12, some_label_for_btype_2296657000 # perform operation 
addi x0, x1, 1
some_label_for_btype_2296657000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x80000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
bgeu x31, x12, some_label_for_btype_2296657001 # perform operation 
addi x0, x1, 1
some_label_for_btype_2296657001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x20, 0x22b55a17 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x00000001 # initialize rs1
li x10, 0x7fffffff # initialize rs2
bgeu x21, x10, some_label_for_btype_42565473880 # perform operation 
addi x0, x1, 1
some_label_for_btype_42565473880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
bgeu x21, x10, some_label_for_btype_42565473881 # perform operation 
addi x0, x1, 1
some_label_for_btype_42565473881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x30, 0x5a33fa01 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x00000001 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
bgeu x5, x24, some_label_for_btype_32806033780 # perform operation 
addi x0, x1, 1
some_label_for_btype_32806033780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x7ffffffe # initialize rs1
li x24, 0x7ffffffe # initialize rs2
bgeu x5, x24, some_label_for_btype_32806033781 # perform operation 
addi x0, x1, 1
some_label_for_btype_32806033781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x22, 0x41934243 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000001 # initialize rs1
li x18, 0xffffffff # initialize rs2
bgeu x13, x18, some_label_for_btype_18553194080 # perform operation 
addi x0, x1, 1
some_label_for_btype_18553194080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xffffffff # initialize rs1
li x18, 0xffffffff # initialize rs2
bgeu x13, x18, some_label_for_btype_18553194081 # perform operation 
addi x0, x1, 1
some_label_for_btype_18553194081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x2, 0xbb6a1441 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x00000001 # initialize rs1
li x24, 0xfffffffe # initialize rs2
bgeu x8, x24, some_label_for_btype_22366967480 # perform operation 
addi x0, x1, 1
some_label_for_btype_22366967480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xfffffffe # initialize rs1
li x24, 0xfffffffe # initialize rs2
bgeu x8, x24, some_label_for_btype_22366967481 # perform operation 
addi x0, x1, 1
some_label_for_btype_22366967481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x8, 0x70d0ac89 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000001 # initialize rs1
li x9, 0x5bbc8877 # initialize rs2
bgeu x14, x9, some_label_for_btype_21728112340 # perform operation 
addi x0, x1, 1
some_label_for_btype_21728112340:
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
bgeu x14, x9, some_label_for_btype_21728112341 # perform operation 
addi x0, x1, 1
some_label_for_btype_21728112341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x20, 0x65b02fe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000001 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
bgeu x15, x1, some_label_for_btype_42297494230 # perform operation 
addi x0, x1, 1
some_label_for_btype_42297494230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
bgeu x15, x1, some_label_for_btype_42297494231 # perform operation 
addi x0, x1, 1
some_label_for_btype_42297494231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x21, 0x20327fe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000001 # initialize rs1
li x5, 0x55555555 # initialize rs2
bgeu x19, x5, some_label_for_btype_9086563540 # perform operation 
addi x0, x1, 1
some_label_for_btype_9086563540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x55555555 # initialize rs1
li x5, 0x55555555 # initialize rs2
bgeu x19, x5, some_label_for_btype_9086563541 # perform operation 
addi x0, x1, 1
some_label_for_btype_9086563541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x8, 0xf8dc6dfd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000002 # initialize rs1
li x23, 0x00000000 # initialize rs2
bgeu x30, x23, some_label_for_btype_20454932170 # perform operation 
addi x0, x1, 1
some_label_for_btype_20454932170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x00000000 # initialize rs1
li x23, 0x00000000 # initialize rs2
bgeu x30, x23, some_label_for_btype_20454932171 # perform operation 
addi x0, x1, 1
some_label_for_btype_20454932171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x8, 0xe35e3a3e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x00000002 # initialize rs1
li x7, 0x00000001 # initialize rs2
bgeu x20, x7, some_label_for_btype_7378574700 # perform operation 
addi x0, x1, 1
some_label_for_btype_7378574700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
bgeu x20, x7, some_label_for_btype_7378574701 # perform operation 
addi x0, x1, 1
some_label_for_btype_7378574701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0x83196fea # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x00000002 # initialize rs1
li x27, 0x00000002 # initialize rs2
bgeu x24, x27, some_label_for_btype_11215508380 # perform operation 
addi x0, x1, 1
some_label_for_btype_11215508380:
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
bgeu x24, x27, some_label_for_btype_11215508381 # perform operation 
addi x0, x1, 1
some_label_for_btype_11215508381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x23, 0x0af76da1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x00000002 # initialize rs1
li x4, 0x80000000 # initialize rs2
bgeu x11, x4, some_label_for_btype_16571316140 # perform operation 
addi x0, x1, 1
some_label_for_btype_16571316140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x80000000 # initialize rs1
li x4, 0x80000000 # initialize rs2
bgeu x11, x4, some_label_for_btype_16571316141 # perform operation 
addi x0, x1, 1
some_label_for_btype_16571316141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x28, 0xd0d21057 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x00000002 # initialize rs1
li x18, 0x80000001 # initialize rs2
bgeu x8, x18, some_label_for_btype_20425093810 # perform operation 
addi x0, x1, 1
some_label_for_btype_20425093810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x80000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
bgeu x8, x18, some_label_for_btype_20425093811 # perform operation 
addi x0, x1, 1
some_label_for_btype_20425093811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x8, 0x83cd9057 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x00000002 # initialize rs1
li x10, 0x7fffffff # initialize rs2
bgeu x3, x10, some_label_for_btype_21757692060 # perform operation 
addi x0, x1, 1
some_label_for_btype_21757692060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
bgeu x3, x10, some_label_for_btype_21757692061 # perform operation 
addi x0, x1, 1
some_label_for_btype_21757692061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x10, 0xc2ef78a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000002 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
bgeu x30, x29, some_label_for_btype_12532912500 # perform operation 
addi x0, x1, 1
some_label_for_btype_12532912500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7ffffffe # initialize rs1
li x29, 0x7ffffffe # initialize rs2
bgeu x30, x29, some_label_for_btype_12532912501 # perform operation 
addi x0, x1, 1
some_label_for_btype_12532912501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x25, 0xbda30e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x00000002 # initialize rs1
li x22, 0xffffffff # initialize rs2
bgeu x18, x22, some_label_for_btype_28081935430 # perform operation 
addi x0, x1, 1
some_label_for_btype_28081935430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xffffffff # initialize rs1
li x22, 0xffffffff # initialize rs2
bgeu x18, x22, some_label_for_btype_28081935431 # perform operation 
addi x0, x1, 1
some_label_for_btype_28081935431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x17, 0x6dd1cae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000002 # initialize rs1
li x25, 0xfffffffe # initialize rs2
bgeu x12, x25, some_label_for_btype_38091017870 # perform operation 
addi x0, x1, 1
some_label_for_btype_38091017870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xfffffffe # initialize rs1
li x25, 0xfffffffe # initialize rs2
bgeu x12, x25, some_label_for_btype_38091017871 # perform operation 
addi x0, x1, 1
some_label_for_btype_38091017871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x24, 0x05e72a36 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x00000002 # initialize rs1
li x12, 0x5bbc8877 # initialize rs2
bgeu x6, x12, some_label_for_btype_581077970 # perform operation 
addi x0, x1, 1
some_label_for_btype_581077970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x5bbc8877 # initialize rs1
li x12, 0x5bbc8877 # initialize rs2
bgeu x6, x12, some_label_for_btype_581077971 # perform operation 
addi x0, x1, 1
some_label_for_btype_581077971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x6, 0xbaa9e1bd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x00000002 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
bgeu x3, x23, some_label_for_btype_21622146500 # perform operation 
addi x0, x1, 1
some_label_for_btype_21622146500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
bgeu x3, x23, some_label_for_btype_21622146501 # perform operation 
addi x0, x1, 1
some_label_for_btype_21622146501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x31, 0x0fd33636 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x00000002 # initialize rs1
li x4, 0x55555555 # initialize rs2
bgeu x20, x4, some_label_for_btype_18002722620 # perform operation 
addi x0, x1, 1
some_label_for_btype_18002722620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x55555555 # initialize rs1
li x4, 0x55555555 # initialize rs2
bgeu x20, x4, some_label_for_btype_18002722621 # perform operation 
addi x0, x1, 1
some_label_for_btype_18002722621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x9, 0x373def54 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x80000000 # initialize rs1
li x21, 0x00000000 # initialize rs2
bgeu x6, x21, some_label_for_btype_13763665740 # perform operation 
addi x0, x1, 1
some_label_for_btype_13763665740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x00000000 # initialize rs1
li x21, 0x00000000 # initialize rs2
bgeu x6, x21, some_label_for_btype_13763665741 # perform operation 
addi x0, x1, 1
some_label_for_btype_13763665741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x29, 0x77ba4c3b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x80000000 # initialize rs1
li x1, 0x00000001 # initialize rs2
bgeu x2, x1, some_label_for_btype_31535779690 # perform operation 
addi x0, x1, 1
some_label_for_btype_31535779690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x00000001 # initialize rs1
li x1, 0x00000001 # initialize rs2
bgeu x2, x1, some_label_for_btype_31535779691 # perform operation 
addi x0, x1, 1
some_label_for_btype_31535779691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x17, 0x83b951f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x80000000 # initialize rs1
li x7, 0x00000002 # initialize rs2
bgeu x19, x7, some_label_for_btype_4001490670 # perform operation 
addi x0, x1, 1
some_label_for_btype_4001490670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000002 # initialize rs1
li x7, 0x00000002 # initialize rs2
bgeu x19, x7, some_label_for_btype_4001490671 # perform operation 
addi x0, x1, 1
some_label_for_btype_4001490671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x5, 0x90a68172 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x80000000 # initialize rs1
li x14, 0x80000000 # initialize rs2
bgeu x9, x14, some_label_for_btype_21282230850 # perform operation 
addi x0, x1, 1
some_label_for_btype_21282230850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x80000000 # initialize rs1
li x14, 0x80000000 # initialize rs2
bgeu x9, x14, some_label_for_btype_21282230851 # perform operation 
addi x0, x1, 1
some_label_for_btype_21282230851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x3, 0x41da1cf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x80000000 # initialize rs1
li x11, 0x80000001 # initialize rs2
bgeu x25, x11, some_label_for_btype_21053343310 # perform operation 
addi x0, x1, 1
some_label_for_btype_21053343310:
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
bgeu x25, x11, some_label_for_btype_21053343311 # perform operation 
addi x0, x1, 1
some_label_for_btype_21053343311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x31, 0x8e56f251 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x80000000 # initialize rs1
li x10, 0x7fffffff # initialize rs2
bgeu x5, x10, some_label_for_btype_30401810360 # perform operation 
addi x0, x1, 1
some_label_for_btype_30401810360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
bgeu x5, x10, some_label_for_btype_30401810361 # perform operation 
addi x0, x1, 1
some_label_for_btype_30401810361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x20, 0x0ef8e629 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x80000000 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
bgeu x11, x16, some_label_for_btype_1939824360 # perform operation 
addi x0, x1, 1
some_label_for_btype_1939824360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x7ffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
bgeu x11, x16, some_label_for_btype_1939824361 # perform operation 
addi x0, x1, 1
some_label_for_btype_1939824361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x30, 0x611c8ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x80000000 # initialize rs1
li x21, 0xffffffff # initialize rs2
bgeu x28, x21, some_label_for_btype_18214061310 # perform operation 
addi x0, x1, 1
some_label_for_btype_18214061310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
bgeu x28, x21, some_label_for_btype_18214061311 # perform operation 
addi x0, x1, 1
some_label_for_btype_18214061311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x29, 0x5cd5a2c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x80000000 # initialize rs1
li x1, 0xfffffffe # initialize rs2
bgeu x8, x1, some_label_for_btype_38882101670 # perform operation 
addi x0, x1, 1
some_label_for_btype_38882101670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xfffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
bgeu x8, x1, some_label_for_btype_38882101671 # perform operation 
addi x0, x1, 1
some_label_for_btype_38882101671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x8, 0x3779f15b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x80000000 # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
bgeu x28, x13, some_label_for_btype_3290213850 # perform operation 
addi x0, x1, 1
some_label_for_btype_3290213850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x5bbc8877 # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
bgeu x28, x13, some_label_for_btype_3290213851 # perform operation 
addi x0, x1, 1
some_label_for_btype_3290213851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x1, 0x35bba6f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x80000000 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
bgeu x4, x16, some_label_for_btype_9253358930 # perform operation 
addi x0, x1, 1
some_label_for_btype_9253358930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
bgeu x4, x16, some_label_for_btype_9253358931 # perform operation 
addi x0, x1, 1
some_label_for_btype_9253358931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x20, 0xb6605c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x80000000 # initialize rs1
li x10, 0x55555555 # initialize rs2
bgeu x25, x10, some_label_for_btype_9227866470 # perform operation 
addi x0, x1, 1
some_label_for_btype_9227866470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x55555555 # initialize rs1
li x10, 0x55555555 # initialize rs2
bgeu x25, x10, some_label_for_btype_9227866471 # perform operation 
addi x0, x1, 1
some_label_for_btype_9227866471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x6, 0x9d38a996 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x80000001 # initialize rs1
li x4, 0x00000000 # initialize rs2
bgeu x14, x4, some_label_for_btype_18680162080 # perform operation 
addi x0, x1, 1
some_label_for_btype_18680162080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000000 # initialize rs1
li x4, 0x00000000 # initialize rs2
bgeu x14, x4, some_label_for_btype_18680162081 # perform operation 
addi x0, x1, 1
some_label_for_btype_18680162081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x6, 0xc46b3233 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x80000001 # initialize rs1
li x31, 0x00000001 # initialize rs2
bgeu x3, x31, some_label_for_btype_32564525150 # perform operation 
addi x0, x1, 1
some_label_for_btype_32564525150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000001 # initialize rs1
li x31, 0x00000001 # initialize rs2
bgeu x3, x31, some_label_for_btype_32564525151 # perform operation 
addi x0, x1, 1
some_label_for_btype_32564525151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x21, 0x8a513cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x80000001 # initialize rs1
li x22, 0x00000002 # initialize rs2
bgeu x6, x22, some_label_for_btype_386198250 # perform operation 
addi x0, x1, 1
some_label_for_btype_386198250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x00000002 # initialize rs1
li x22, 0x00000002 # initialize rs2
bgeu x6, x22, some_label_for_btype_386198251 # perform operation 
addi x0, x1, 1
some_label_for_btype_386198251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x18, 0x6862e03f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x80000001 # initialize rs1
li x9, 0x80000000 # initialize rs2
bgeu x21, x9, some_label_for_btype_5229537050 # perform operation 
addi x0, x1, 1
some_label_for_btype_5229537050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x80000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
bgeu x21, x9, some_label_for_btype_5229537051 # perform operation 
addi x0, x1, 1
some_label_for_btype_5229537051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x5, 0xef9d2194 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x80000001 # initialize rs1
li x9, 0x80000001 # initialize rs2
bgeu x11, x9, some_label_for_btype_11973309990 # perform operation 
addi x0, x1, 1
some_label_for_btype_11973309990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x80000001 # initialize rs1
li x9, 0x80000001 # initialize rs2
bgeu x11, x9, some_label_for_btype_11973309991 # perform operation 
addi x0, x1, 1
some_label_for_btype_11973309991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x1, 0xb36d1c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x80000001 # initialize rs1
li x21, 0x7fffffff # initialize rs2
bgeu x16, x21, some_label_for_btype_6594630240 # perform operation 
addi x0, x1, 1
some_label_for_btype_6594630240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x7fffffff # initialize rs1
li x21, 0x7fffffff # initialize rs2
bgeu x16, x21, some_label_for_btype_6594630241 # perform operation 
addi x0, x1, 1
some_label_for_btype_6594630241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x24, 0xb9ba2541 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x80000001 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
bgeu x14, x10, some_label_for_btype_28641200970 # perform operation 
addi x0, x1, 1
some_label_for_btype_28641200970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x7ffffffe # initialize rs1
li x10, 0x7ffffffe # initialize rs2
bgeu x14, x10, some_label_for_btype_28641200971 # perform operation 
addi x0, x1, 1
some_label_for_btype_28641200971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x25, 0xd0320a3b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x80000001 # initialize rs1
li x14, 0xffffffff # initialize rs2
bgeu x16, x14, some_label_for_btype_28873845690 # perform operation 
addi x0, x1, 1
some_label_for_btype_28873845690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xffffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
bgeu x16, x14, some_label_for_btype_28873845691 # perform operation 
addi x0, x1, 1
some_label_for_btype_28873845691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x27, 0xaa741eb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x80000001 # initialize rs1
li x30, 0xfffffffe # initialize rs2
bgeu x19, x30, some_label_for_btype_25005146620 # perform operation 
addi x0, x1, 1
some_label_for_btype_25005146620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xfffffffe # initialize rs1
li x30, 0xfffffffe # initialize rs2
bgeu x19, x30, some_label_for_btype_25005146621 # perform operation 
addi x0, x1, 1
some_label_for_btype_25005146621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x23, 0xd9852311 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x80000001 # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
bgeu x25, x7, some_label_for_btype_12067206970 # perform operation 
addi x0, x1, 1
some_label_for_btype_12067206970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x5bbc8877 # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
bgeu x25, x7, some_label_for_btype_12067206971 # perform operation 
addi x0, x1, 1
some_label_for_btype_12067206971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x10, 0x822161c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x80000001 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
bgeu x6, x4, some_label_for_btype_21583999690 # perform operation 
addi x0, x1, 1
some_label_for_btype_21583999690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xaaaaaaaa # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
bgeu x6, x4, some_label_for_btype_21583999691 # perform operation 
addi x0, x1, 1
some_label_for_btype_21583999691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x15, 0x2848213e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x80000001 # initialize rs1
li x21, 0x55555555 # initialize rs2
bgeu x4, x21, some_label_for_btype_31581963050 # perform operation 
addi x0, x1, 1
some_label_for_btype_31581963050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x55555555 # initialize rs1
li x21, 0x55555555 # initialize rs2
bgeu x4, x21, some_label_for_btype_31581963051 # perform operation 
addi x0, x1, 1
some_label_for_btype_31581963051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x5, 0x26f101d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x7fffffff # initialize rs1
li x18, 0x00000000 # initialize rs2
bgeu x21, x18, some_label_for_btype_5020312020 # perform operation 
addi x0, x1, 1
some_label_for_btype_5020312020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
bgeu x21, x18, some_label_for_btype_5020312021 # perform operation 
addi x0, x1, 1
some_label_for_btype_5020312021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x15, 0x3bc96c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x7fffffff # initialize rs1
li x12, 0x00000001 # initialize rs2
bgeu x31, x12, some_label_for_btype_23643369950 # perform operation 
addi x0, x1, 1
some_label_for_btype_23643369950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x00000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
bgeu x31, x12, some_label_for_btype_23643369951 # perform operation 
addi x0, x1, 1
some_label_for_btype_23643369951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x24, 0xbd95d5b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x7fffffff # initialize rs1
li x8, 0x00000002 # initialize rs2
bgeu x13, x8, some_label_for_btype_7884577870 # perform operation 
addi x0, x1, 1
some_label_for_btype_7884577870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000002 # initialize rs1
li x8, 0x00000002 # initialize rs2
bgeu x13, x8, some_label_for_btype_7884577871 # perform operation 
addi x0, x1, 1
some_label_for_btype_7884577871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x26, 0x0ddf8e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x7fffffff # initialize rs1
li x10, 0x80000000 # initialize rs2
bgeu x12, x10, some_label_for_btype_3527974520 # perform operation 
addi x0, x1, 1
some_label_for_btype_3527974520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x80000000 # initialize rs1
li x10, 0x80000000 # initialize rs2
bgeu x12, x10, some_label_for_btype_3527974521 # perform operation 
addi x0, x1, 1
some_label_for_btype_3527974521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x1, 0xee2a6d3f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x7fffffff # initialize rs1
li x20, 0x80000001 # initialize rs2
bgeu x8, x20, some_label_for_btype_22879094350 # perform operation 
addi x0, x1, 1
some_label_for_btype_22879094350:
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
bgeu x8, x20, some_label_for_btype_22879094351 # perform operation 
addi x0, x1, 1
some_label_for_btype_22879094351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x12, 0x14fc02f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x7fffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
bgeu x30, x29, some_label_for_btype_5726897280 # perform operation 
addi x0, x1, 1
some_label_for_btype_5726897280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7fffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
bgeu x30, x29, some_label_for_btype_5726897281 # perform operation 
addi x0, x1, 1
some_label_for_btype_5726897281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x21, 0xc62338f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x7fffffff # initialize rs1
li x3, 0x7ffffffe # initialize rs2
bgeu x27, x3, some_label_for_btype_23851276490 # perform operation 
addi x0, x1, 1
some_label_for_btype_23851276490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x7ffffffe # initialize rs1
li x3, 0x7ffffffe # initialize rs2
bgeu x27, x3, some_label_for_btype_23851276491 # perform operation 
addi x0, x1, 1
some_label_for_btype_23851276491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x23, 0xaa1fbae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x7fffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
bgeu x8, x7, some_label_for_btype_16541501430 # perform operation 
addi x0, x1, 1
some_label_for_btype_16541501430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xffffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
bgeu x8, x7, some_label_for_btype_16541501431 # perform operation 
addi x0, x1, 1
some_label_for_btype_16541501431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x7, 0x9dd10b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x7fffffff # initialize rs1
li x11, 0xfffffffe # initialize rs2
bgeu x6, x11, some_label_for_btype_35592739160 # perform operation 
addi x0, x1, 1
some_label_for_btype_35592739160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xfffffffe # initialize rs1
li x11, 0xfffffffe # initialize rs2
bgeu x6, x11, some_label_for_btype_35592739161 # perform operation 
addi x0, x1, 1
some_label_for_btype_35592739161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x24, 0x34c4a9f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x7fffffff # initialize rs1
li x30, 0x5bbc8877 # initialize rs2
bgeu x25, x30, some_label_for_btype_31940866810 # perform operation 
addi x0, x1, 1
some_label_for_btype_31940866810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x5bbc8877 # initialize rs1
li x30, 0x5bbc8877 # initialize rs2
bgeu x25, x30, some_label_for_btype_31940866811 # perform operation 
addi x0, x1, 1
some_label_for_btype_31940866811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x28, 0x5e158bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7fffffff # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
bgeu x11, x27, some_label_for_btype_29954382010 # perform operation 
addi x0, x1, 1
some_label_for_btype_29954382010:
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
bgeu x11, x27, some_label_for_btype_29954382011 # perform operation 
addi x0, x1, 1
some_label_for_btype_29954382011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x15, 0x3d197890 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x7fffffff # initialize rs1
li x26, 0x55555555 # initialize rs2
bgeu x27, x26, some_label_for_btype_16044636260 # perform operation 
addi x0, x1, 1
some_label_for_btype_16044636260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x55555555 # initialize rs1
li x26, 0x55555555 # initialize rs2
bgeu x27, x26, some_label_for_btype_16044636261 # perform operation 
addi x0, x1, 1
some_label_for_btype_16044636261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x17, 0x73c94950 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x7ffffffe # initialize rs1
li x21, 0x00000000 # initialize rs2
bgeu x20, x21, some_label_for_btype_19891430990 # perform operation 
addi x0, x1, 1
some_label_for_btype_19891430990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000000 # initialize rs1
li x21, 0x00000000 # initialize rs2
bgeu x20, x21, some_label_for_btype_19891430991 # perform operation 
addi x0, x1, 1
some_label_for_btype_19891430991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x4, 0x213e85ea # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x7ffffffe # initialize rs1
li x16, 0x00000001 # initialize rs2
bgeu x23, x16, some_label_for_btype_25515282220 # perform operation 
addi x0, x1, 1
some_label_for_btype_25515282220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
bgeu x23, x16, some_label_for_btype_25515282221 # perform operation 
addi x0, x1, 1
some_label_for_btype_25515282221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x5, 0x58c05823 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x7ffffffe # initialize rs1
li x27, 0x00000002 # initialize rs2
bgeu x22, x27, some_label_for_btype_16070122580 # perform operation 
addi x0, x1, 1
some_label_for_btype_16070122580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x00000002 # initialize rs1
li x27, 0x00000002 # initialize rs2
bgeu x22, x27, some_label_for_btype_16070122581 # perform operation 
addi x0, x1, 1
some_label_for_btype_16070122581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x28, 0xeaa17ede # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x7ffffffe # initialize rs1
li x3, 0x80000000 # initialize rs2
bgeu x5, x3, some_label_for_btype_11317145910 # perform operation 
addi x0, x1, 1
some_label_for_btype_11317145910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x80000000 # initialize rs1
li x3, 0x80000000 # initialize rs2
bgeu x5, x3, some_label_for_btype_11317145911 # perform operation 
addi x0, x1, 1
some_label_for_btype_11317145911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x29, 0xc8fb72aa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x7ffffffe # initialize rs1
li x18, 0x80000001 # initialize rs2
bgeu x12, x18, some_label_for_btype_15711076040 # perform operation 
addi x0, x1, 1
some_label_for_btype_15711076040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x80000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
bgeu x12, x18, some_label_for_btype_15711076041 # perform operation 
addi x0, x1, 1
some_label_for_btype_15711076041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x4, 0x243f498a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x7ffffffe # initialize rs1
li x6, 0x7fffffff # initialize rs2
bgeu x21, x6, some_label_for_btype_28331453450 # perform operation 
addi x0, x1, 1
some_label_for_btype_28331453450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x7fffffff # initialize rs1
li x6, 0x7fffffff # initialize rs2
bgeu x21, x6, some_label_for_btype_28331453451 # perform operation 
addi x0, x1, 1
some_label_for_btype_28331453451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x2, 0x9bbd13c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x7ffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
bgeu x3, x28, some_label_for_btype_18804655850 # perform operation 
addi x0, x1, 1
some_label_for_btype_18804655850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x7ffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
bgeu x3, x28, some_label_for_btype_18804655851 # perform operation 
addi x0, x1, 1
some_label_for_btype_18804655851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x7, 0x7a9bfff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x7ffffffe # initialize rs1
li x29, 0xffffffff # initialize rs2
bgeu x5, x29, some_label_for_btype_40168267150 # perform operation 
addi x0, x1, 1
some_label_for_btype_40168267150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xffffffff # initialize rs1
li x29, 0xffffffff # initialize rs2
bgeu x5, x29, some_label_for_btype_40168267151 # perform operation 
addi x0, x1, 1
some_label_for_btype_40168267151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x28, 0xa7300fed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x7ffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
bgeu x31, x13, some_label_for_btype_23415283760 # perform operation 
addi x0, x1, 1
some_label_for_btype_23415283760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xfffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
bgeu x31, x13, some_label_for_btype_23415283761 # perform operation 
addi x0, x1, 1
some_label_for_btype_23415283761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x20, 0x8081ca19 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x7ffffffe # initialize rs1
li x23, 0x5bbc8877 # initialize rs2
bgeu x15, x23, some_label_for_btype_37789203160 # perform operation 
addi x0, x1, 1
some_label_for_btype_37789203160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x5bbc8877 # initialize rs1
li x23, 0x5bbc8877 # initialize rs2
bgeu x15, x23, some_label_for_btype_37789203161 # perform operation 
addi x0, x1, 1
some_label_for_btype_37789203161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x13, 0xe8176f9b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x7ffffffe # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
bgeu x6, x30, some_label_for_btype_19716115750 # perform operation 
addi x0, x1, 1
some_label_for_btype_19716115750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
bgeu x6, x30, some_label_for_btype_19716115751 # perform operation 
addi x0, x1, 1
some_label_for_btype_19716115751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x4, 0x84517d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x7ffffffe # initialize rs1
li x31, 0x55555555 # initialize rs2
bgeu x26, x31, some_label_for_btype_14755373950 # perform operation 
addi x0, x1, 1
some_label_for_btype_14755373950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x55555555 # initialize rs1
li x31, 0x55555555 # initialize rs2
bgeu x26, x31, some_label_for_btype_14755373951 # perform operation 
addi x0, x1, 1
some_label_for_btype_14755373951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x25, 0x028b4601 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xffffffff # initialize rs1
li x26, 0x00000000 # initialize rs2
bgeu x2, x26, some_label_for_btype_34302708370 # perform operation 
addi x0, x1, 1
some_label_for_btype_34302708370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x00000000 # initialize rs1
li x26, 0x00000000 # initialize rs2
bgeu x2, x26, some_label_for_btype_34302708371 # perform operation 
addi x0, x1, 1
some_label_for_btype_34302708371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x30, 0x20828e07 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xffffffff # initialize rs1
li x29, 0x00000001 # initialize rs2
bgeu x21, x29, some_label_for_btype_188989860 # perform operation 
addi x0, x1, 1
some_label_for_btype_188989860:
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
bgeu x21, x29, some_label_for_btype_188989861 # perform operation 
addi x0, x1, 1
some_label_for_btype_188989861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x26, 0x88245966 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xffffffff # initialize rs1
li x16, 0x00000002 # initialize rs2
bgeu x28, x16, some_label_for_btype_34195756520 # perform operation 
addi x0, x1, 1
some_label_for_btype_34195756520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x00000002 # initialize rs1
li x16, 0x00000002 # initialize rs2
bgeu x28, x16, some_label_for_btype_34195756521 # perform operation 
addi x0, x1, 1
some_label_for_btype_34195756521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x4, 0x4a8384cd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xffffffff # initialize rs1
li x20, 0x80000000 # initialize rs2
bgeu x17, x20, some_label_for_btype_35253525900 # perform operation 
addi x0, x1, 1
some_label_for_btype_35253525900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x80000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
bgeu x17, x20, some_label_for_btype_35253525901 # perform operation 
addi x0, x1, 1
some_label_for_btype_35253525901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x19, 0x51239e5f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xffffffff # initialize rs1
li x22, 0x80000001 # initialize rs2
bgeu x31, x22, some_label_for_btype_20345838250 # perform operation 
addi x0, x1, 1
some_label_for_btype_20345838250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x80000001 # initialize rs1
li x22, 0x80000001 # initialize rs2
bgeu x31, x22, some_label_for_btype_20345838251 # perform operation 
addi x0, x1, 1
some_label_for_btype_20345838251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x12, 0x2baf1975 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xffffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
bgeu x25, x29, some_label_for_btype_35747466280 # perform operation 
addi x0, x1, 1
some_label_for_btype_35747466280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x7fffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
bgeu x25, x29, some_label_for_btype_35747466281 # perform operation 
addi x0, x1, 1
some_label_for_btype_35747466281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x28, 0xa4cf75f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xffffffff # initialize rs1
li x12, 0x7ffffffe # initialize rs2
bgeu x3, x12, some_label_for_btype_4702615410 # perform operation 
addi x0, x1, 1
some_label_for_btype_4702615410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x7ffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
bgeu x3, x12, some_label_for_btype_4702615411 # perform operation 
addi x0, x1, 1
some_label_for_btype_4702615411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x10, 0xe23e4a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xffffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
bgeu x22, x7, some_label_for_btype_32187839680 # perform operation 
addi x0, x1, 1
some_label_for_btype_32187839680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xffffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
bgeu x22, x7, some_label_for_btype_32187839681 # perform operation 
addi x0, x1, 1
some_label_for_btype_32187839681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x31, 0x0a5d8c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xffffffff # initialize rs1
li x2, 0xfffffffe # initialize rs2
bgeu x6, x2, some_label_for_btype_39155677670 # perform operation 
addi x0, x1, 1
some_label_for_btype_39155677670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xfffffffe # initialize rs1
li x2, 0xfffffffe # initialize rs2
bgeu x6, x2, some_label_for_btype_39155677671 # perform operation 
addi x0, x1, 1
some_label_for_btype_39155677671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x7, 0xcabc9486 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xffffffff # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
bgeu x10, x2, some_label_for_btype_15161831790 # perform operation 
addi x0, x1, 1
some_label_for_btype_15161831790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x5bbc8877 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
bgeu x10, x2, some_label_for_btype_15161831791 # perform operation 
addi x0, x1, 1
some_label_for_btype_15161831791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x29, 0xdb6f5979 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xffffffff # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
bgeu x20, x4, some_label_for_btype_23350471030 # perform operation 
addi x0, x1, 1
some_label_for_btype_23350471030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xaaaaaaaa # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
bgeu x20, x4, some_label_for_btype_23350471031 # perform operation 
addi x0, x1, 1
some_label_for_btype_23350471031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x6, 0xb1311705 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xffffffff # initialize rs1
li x31, 0x55555555 # initialize rs2
bgeu x29, x31, some_label_for_btype_9608341290 # perform operation 
addi x0, x1, 1
some_label_for_btype_9608341290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x55555555 # initialize rs1
li x31, 0x55555555 # initialize rs2
bgeu x29, x31, some_label_for_btype_9608341291 # perform operation 
addi x0, x1, 1
some_label_for_btype_9608341291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x19, 0x61004785 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xfffffffe # initialize rs1
li x13, 0x00000000 # initialize rs2
bgeu x15, x13, some_label_for_btype_26169205480 # perform operation 
addi x0, x1, 1
some_label_for_btype_26169205480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x00000000 # initialize rs1
li x13, 0x00000000 # initialize rs2
bgeu x15, x13, some_label_for_btype_26169205481 # perform operation 
addi x0, x1, 1
some_label_for_btype_26169205481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x17, 0xa46dfd05 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xfffffffe # initialize rs1
li x19, 0x00000001 # initialize rs2
bgeu x13, x19, some_label_for_btype_18977709790 # perform operation 
addi x0, x1, 1
some_label_for_btype_18977709790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000001 # initialize rs1
li x19, 0x00000001 # initialize rs2
bgeu x13, x19, some_label_for_btype_18977709791 # perform operation 
addi x0, x1, 1
some_label_for_btype_18977709791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x13, 0x4f1728e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xfffffffe # initialize rs1
li x2, 0x00000002 # initialize rs2
bgeu x14, x2, some_label_for_btype_13171318040 # perform operation 
addi x0, x1, 1
some_label_for_btype_13171318040:
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
bgeu x14, x2, some_label_for_btype_13171318041 # perform operation 
addi x0, x1, 1
some_label_for_btype_13171318041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x22, 0xbf275b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xfffffffe # initialize rs1
li x19, 0x80000000 # initialize rs2
bgeu x24, x19, some_label_for_btype_16839963210 # perform operation 
addi x0, x1, 1
some_label_for_btype_16839963210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x80000000 # initialize rs1
li x19, 0x80000000 # initialize rs2
bgeu x24, x19, some_label_for_btype_16839963211 # perform operation 
addi x0, x1, 1
some_label_for_btype_16839963211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x17, 0xc8db89df # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xfffffffe # initialize rs1
li x23, 0x80000001 # initialize rs2
bgeu x22, x23, some_label_for_btype_20098245550 # perform operation 
addi x0, x1, 1
some_label_for_btype_20098245550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x80000001 # initialize rs1
li x23, 0x80000001 # initialize rs2
bgeu x22, x23, some_label_for_btype_20098245551 # perform operation 
addi x0, x1, 1
some_label_for_btype_20098245551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x21, 0xc95c910e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xfffffffe # initialize rs1
li x19, 0x7fffffff # initialize rs2
bgeu x10, x19, some_label_for_btype_22753534200 # perform operation 
addi x0, x1, 1
some_label_for_btype_22753534200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x7fffffff # initialize rs1
li x19, 0x7fffffff # initialize rs2
bgeu x10, x19, some_label_for_btype_22753534201 # perform operation 
addi x0, x1, 1
some_label_for_btype_22753534201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x5, 0xa786760a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xfffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
bgeu x2, x16, some_label_for_btype_22179156380 # perform operation 
addi x0, x1, 1
some_label_for_btype_22179156380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x7ffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
bgeu x2, x16, some_label_for_btype_22179156381 # perform operation 
addi x0, x1, 1
some_label_for_btype_22179156381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x5, 0xabd73cf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xfffffffe # initialize rs1
li x15, 0xffffffff # initialize rs2
bgeu x10, x15, some_label_for_btype_15961313700 # perform operation 
addi x0, x1, 1
some_label_for_btype_15961313700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
bgeu x10, x15, some_label_for_btype_15961313701 # perform operation 
addi x0, x1, 1
some_label_for_btype_15961313701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x17, 0x1768ffd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xfffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
bgeu x11, x13, some_label_for_btype_11425919800 # perform operation 
addi x0, x1, 1
some_label_for_btype_11425919800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xfffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
bgeu x11, x13, some_label_for_btype_11425919801 # perform operation 
addi x0, x1, 1
some_label_for_btype_11425919801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x11, 0x40b411ce # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xfffffffe # initialize rs1
li x31, 0x5bbc8877 # initialize rs2
bgeu x12, x31, some_label_for_btype_6776191950 # perform operation 
addi x0, x1, 1
some_label_for_btype_6776191950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x5bbc8877 # initialize rs1
li x31, 0x5bbc8877 # initialize rs2
bgeu x12, x31, some_label_for_btype_6776191951 # perform operation 
addi x0, x1, 1
some_label_for_btype_6776191951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x11, 0xffa2ec7f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xfffffffe # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
bgeu x6, x1, some_label_for_btype_41951095540 # perform operation 
addi x0, x1, 1
some_label_for_btype_41951095540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
bgeu x6, x1, some_label_for_btype_41951095541 # perform operation 
addi x0, x1, 1
some_label_for_btype_41951095541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x20, 0x9346a9a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xfffffffe # initialize rs1
li x23, 0x55555555 # initialize rs2
bgeu x6, x23, some_label_for_btype_22243272070 # perform operation 
addi x0, x1, 1
some_label_for_btype_22243272070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x55555555 # initialize rs1
li x23, 0x55555555 # initialize rs2
bgeu x6, x23, some_label_for_btype_22243272071 # perform operation 
addi x0, x1, 1
some_label_for_btype_22243272071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x11, 0x7e775795 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x5bbc8877 # initialize rs1
li x1, 0x00000000 # initialize rs2
bgeu x6, x1, some_label_for_btype_22599552460 # perform operation 
addi x0, x1, 1
some_label_for_btype_22599552460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x00000000 # initialize rs1
li x1, 0x00000000 # initialize rs2
bgeu x6, x1, some_label_for_btype_22599552461 # perform operation 
addi x0, x1, 1
some_label_for_btype_22599552461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x12, 0x2d0942a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x5bbc8877 # initialize rs1
li x17, 0x00000001 # initialize rs2
bgeu x23, x17, some_label_for_btype_20102308230 # perform operation 
addi x0, x1, 1
some_label_for_btype_20102308230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000001 # initialize rs1
li x17, 0x00000001 # initialize rs2
bgeu x23, x17, some_label_for_btype_20102308231 # perform operation 
addi x0, x1, 1
some_label_for_btype_20102308231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x13, 0x16a9e120 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x5bbc8877 # initialize rs1
li x9, 0x00000002 # initialize rs2
bgeu x14, x9, some_label_for_btype_39729383070 # perform operation 
addi x0, x1, 1
some_label_for_btype_39729383070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000002 # initialize rs1
li x9, 0x00000002 # initialize rs2
bgeu x14, x9, some_label_for_btype_39729383071 # perform operation 
addi x0, x1, 1
some_label_for_btype_39729383071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x9, 0x4c3b5608 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x5bbc8877 # initialize rs1
li x21, 0x80000000 # initialize rs2
bgeu x20, x21, some_label_for_btype_32384824630 # perform operation 
addi x0, x1, 1
some_label_for_btype_32384824630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x80000000 # initialize rs1
li x21, 0x80000000 # initialize rs2
bgeu x20, x21, some_label_for_btype_32384824631 # perform operation 
addi x0, x1, 1
some_label_for_btype_32384824631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x31, 0xacc814f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x5bbc8877 # initialize rs1
li x18, 0x80000001 # initialize rs2
bgeu x9, x18, some_label_for_btype_17261542360 # perform operation 
addi x0, x1, 1
some_label_for_btype_17261542360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x80000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
bgeu x9, x18, some_label_for_btype_17261542361 # perform operation 
addi x0, x1, 1
some_label_for_btype_17261542361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x23, 0x12e5b4a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x5bbc8877 # initialize rs1
li x14, 0x7fffffff # initialize rs2
bgeu x19, x14, some_label_for_btype_31818733370 # perform operation 
addi x0, x1, 1
some_label_for_btype_31818733370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x7fffffff # initialize rs1
li x14, 0x7fffffff # initialize rs2
bgeu x19, x14, some_label_for_btype_31818733371 # perform operation 
addi x0, x1, 1
some_label_for_btype_31818733371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x28, 0xbc5479e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x5bbc8877 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
bgeu x31, x24, some_label_for_btype_17145313570 # perform operation 
addi x0, x1, 1
some_label_for_btype_17145313570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7ffffffe # initialize rs1
li x24, 0x7ffffffe # initialize rs2
bgeu x31, x24, some_label_for_btype_17145313571 # perform operation 
addi x0, x1, 1
some_label_for_btype_17145313571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x7, 0xae44d4bf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x5bbc8877 # initialize rs1
li x19, 0xffffffff # initialize rs2
bgeu x15, x19, some_label_for_btype_33200890140 # perform operation 
addi x0, x1, 1
some_label_for_btype_33200890140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xffffffff # initialize rs1
li x19, 0xffffffff # initialize rs2
bgeu x15, x19, some_label_for_btype_33200890141 # perform operation 
addi x0, x1, 1
some_label_for_btype_33200890141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x19, 0xd495410f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x5bbc8877 # initialize rs1
li x14, 0xfffffffe # initialize rs2
bgeu x30, x14, some_label_for_btype_37716948420 # perform operation 
addi x0, x1, 1
some_label_for_btype_37716948420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xfffffffe # initialize rs1
li x14, 0xfffffffe # initialize rs2
bgeu x30, x14, some_label_for_btype_37716948421 # perform operation 
addi x0, x1, 1
some_label_for_btype_37716948421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x11, 0x4ab4f878 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x5bbc8877 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
bgeu x29, x18, some_label_for_btype_13856768310 # perform operation 
addi x0, x1, 1
some_label_for_btype_13856768310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x5bbc8877 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
bgeu x29, x18, some_label_for_btype_13856768311 # perform operation 
addi x0, x1, 1
some_label_for_btype_13856768311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x20, 0x6c6f2700 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x5bbc8877 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
bgeu x25, x26, some_label_for_btype_29368588370 # perform operation 
addi x0, x1, 1
some_label_for_btype_29368588370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
bgeu x25, x26, some_label_for_btype_29368588371 # perform operation 
addi x0, x1, 1
some_label_for_btype_29368588371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x7, 0x9778d6eb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x5bbc8877 # initialize rs1
li x16, 0x55555555 # initialize rs2
bgeu x26, x16, some_label_for_btype_20393005160 # perform operation 
addi x0, x1, 1
some_label_for_btype_20393005160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x55555555 # initialize rs1
li x16, 0x55555555 # initialize rs2
bgeu x26, x16, some_label_for_btype_20393005161 # perform operation 
addi x0, x1, 1
some_label_for_btype_20393005161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x2, 0x25768565 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xaaaaaaaa # initialize rs1
li x12, 0x00000000 # initialize rs2
bgeu x27, x12, some_label_for_btype_12545286970 # perform operation 
addi x0, x1, 1
some_label_for_btype_12545286970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x00000000 # initialize rs1
li x12, 0x00000000 # initialize rs2
bgeu x27, x12, some_label_for_btype_12545286971 # perform operation 
addi x0, x1, 1
some_label_for_btype_12545286971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x24, 0x8fa83b04 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaa # initialize rs1
li x31, 0x00000001 # initialize rs2
bgeu x13, x31, some_label_for_btype_14937738330 # perform operation 
addi x0, x1, 1
some_label_for_btype_14937738330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000001 # initialize rs1
li x31, 0x00000001 # initialize rs2
bgeu x13, x31, some_label_for_btype_14937738331 # perform operation 
addi x0, x1, 1
some_label_for_btype_14937738331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x21, 0x843e08e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xaaaaaaaa # initialize rs1
li x23, 0x00000002 # initialize rs2
bgeu x3, x23, some_label_for_btype_39055932340 # perform operation 
addi x0, x1, 1
some_label_for_btype_39055932340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000002 # initialize rs1
li x23, 0x00000002 # initialize rs2
bgeu x3, x23, some_label_for_btype_39055932341 # perform operation 
addi x0, x1, 1
some_label_for_btype_39055932341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x26, 0xbf9fc94b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xaaaaaaaa # initialize rs1
li x1, 0x80000000 # initialize rs2
bgeu x22, x1, some_label_for_btype_6494745280 # perform operation 
addi x0, x1, 1
some_label_for_btype_6494745280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x80000000 # initialize rs1
li x1, 0x80000000 # initialize rs2
bgeu x22, x1, some_label_for_btype_6494745281 # perform operation 
addi x0, x1, 1
some_label_for_btype_6494745281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x28, 0x9c1940e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xaaaaaaaa # initialize rs1
li x1, 0x80000001 # initialize rs2
bgeu x24, x1, some_label_for_btype_21417362920 # perform operation 
addi x0, x1, 1
some_label_for_btype_21417362920:
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
bgeu x24, x1, some_label_for_btype_21417362921 # perform operation 
addi x0, x1, 1
some_label_for_btype_21417362921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x13, 0xc78dc24d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xaaaaaaaa # initialize rs1
li x8, 0x7fffffff # initialize rs2
bgeu x19, x8, some_label_for_btype_9776791900 # perform operation 
addi x0, x1, 1
some_label_for_btype_9776791900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x7fffffff # initialize rs1
li x8, 0x7fffffff # initialize rs2
bgeu x19, x8, some_label_for_btype_9776791901 # perform operation 
addi x0, x1, 1
some_label_for_btype_9776791901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x24, 0x94653bda # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xaaaaaaaa # initialize rs1
li x10, 0x7ffffffe # initialize rs2
bgeu x22, x10, some_label_for_btype_11515937340 # perform operation 
addi x0, x1, 1
some_label_for_btype_11515937340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x7ffffffe # initialize rs1
li x10, 0x7ffffffe # initialize rs2
bgeu x22, x10, some_label_for_btype_11515937341 # perform operation 
addi x0, x1, 1
some_label_for_btype_11515937341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x9, 0x2ebdb2dc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xaaaaaaaa # initialize rs1
li x24, 0xffffffff # initialize rs2
bgeu x15, x24, some_label_for_btype_28675984980 # perform operation 
addi x0, x1, 1
some_label_for_btype_28675984980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xffffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
bgeu x15, x24, some_label_for_btype_28675984981 # perform operation 
addi x0, x1, 1
some_label_for_btype_28675984981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x1, 0x09fc7de9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xaaaaaaaa # initialize rs1
li x30, 0xfffffffe # initialize rs2
bgeu x12, x30, some_label_for_btype_18207759490 # perform operation 
addi x0, x1, 1
some_label_for_btype_18207759490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xfffffffe # initialize rs1
li x30, 0xfffffffe # initialize rs2
bgeu x12, x30, some_label_for_btype_18207759491 # perform operation 
addi x0, x1, 1
some_label_for_btype_18207759491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x21, 0x213afa5f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xaaaaaaaa # initialize rs1
li x22, 0x5bbc8877 # initialize rs2
bgeu x3, x22, some_label_for_btype_11912436490 # perform operation 
addi x0, x1, 1
some_label_for_btype_11912436490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x5bbc8877 # initialize rs1
li x22, 0x5bbc8877 # initialize rs2
bgeu x3, x22, some_label_for_btype_11912436491 # perform operation 
addi x0, x1, 1
some_label_for_btype_11912436491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x6, 0x0e2181ee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
bgeu x25, x23, some_label_for_btype_28692850490 # perform operation 
addi x0, x1, 1
some_label_for_btype_28692850490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
bgeu x25, x23, some_label_for_btype_28692850491 # perform operation 
addi x0, x1, 1
some_label_for_btype_28692850491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x21, 0xa0727777 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xaaaaaaaa # initialize rs1
li x5, 0x55555555 # initialize rs2
bgeu x3, x5, some_label_for_btype_27852092760 # perform operation 
addi x0, x1, 1
some_label_for_btype_27852092760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x55555555 # initialize rs1
li x5, 0x55555555 # initialize rs2
bgeu x3, x5, some_label_for_btype_27852092761 # perform operation 
addi x0, x1, 1
some_label_for_btype_27852092761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x17, 0x0e69c7d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x55555555 # initialize rs1
li x27, 0x00000000 # initialize rs2
bgeu x20, x27, some_label_for_btype_16894579300 # perform operation 
addi x0, x1, 1
some_label_for_btype_16894579300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
bgeu x20, x27, some_label_for_btype_16894579301 # perform operation 
addi x0, x1, 1
some_label_for_btype_16894579301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x5, 0xd26fd8ff # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x55555555 # initialize rs1
li x23, 0x00000001 # initialize rs2
bgeu x30, x23, some_label_for_btype_21916391390 # perform operation 
addi x0, x1, 1
some_label_for_btype_21916391390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x00000001 # initialize rs1
li x23, 0x00000001 # initialize rs2
bgeu x30, x23, some_label_for_btype_21916391391 # perform operation 
addi x0, x1, 1
some_label_for_btype_21916391391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x29, 0x469e5ab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x55555555 # initialize rs1
li x18, 0x00000002 # initialize rs2
bgeu x3, x18, some_label_for_btype_40954270070 # perform operation 
addi x0, x1, 1
some_label_for_btype_40954270070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000002 # initialize rs1
li x18, 0x00000002 # initialize rs2
bgeu x3, x18, some_label_for_btype_40954270071 # perform operation 
addi x0, x1, 1
some_label_for_btype_40954270071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x3, 0x3dad8bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x55555555 # initialize rs1
li x16, 0x80000000 # initialize rs2
bgeu x15, x16, some_label_for_btype_5921664890 # perform operation 
addi x0, x1, 1
some_label_for_btype_5921664890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x80000000 # initialize rs1
li x16, 0x80000000 # initialize rs2
bgeu x15, x16, some_label_for_btype_5921664891 # perform operation 
addi x0, x1, 1
some_label_for_btype_5921664891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x27, 0xf0465c31 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x55555555 # initialize rs1
li x15, 0x80000001 # initialize rs2
bgeu x14, x15, some_label_for_btype_37137418840 # perform operation 
addi x0, x1, 1
some_label_for_btype_37137418840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x80000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
bgeu x14, x15, some_label_for_btype_37137418841 # perform operation 
addi x0, x1, 1
some_label_for_btype_37137418841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x8, 0x7ab3a70b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x55555555 # initialize rs1
li x15, 0x7fffffff # initialize rs2
bgeu x20, x15, some_label_for_btype_25296529660 # perform operation 
addi x0, x1, 1
some_label_for_btype_25296529660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x7fffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
bgeu x20, x15, some_label_for_btype_25296529661 # perform operation 
addi x0, x1, 1
some_label_for_btype_25296529661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x29, 0x390836e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x55555555 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
bgeu x19, x3, some_label_for_btype_33846463260 # perform operation 
addi x0, x1, 1
some_label_for_btype_33846463260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x7ffffffe # initialize rs1
li x3, 0x7ffffffe # initialize rs2
bgeu x19, x3, some_label_for_btype_33846463261 # perform operation 
addi x0, x1, 1
some_label_for_btype_33846463261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x9, 0xf5abeba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x55555555 # initialize rs1
li x28, 0xffffffff # initialize rs2
bgeu x2, x28, some_label_for_btype_36805693920 # perform operation 
addi x0, x1, 1
some_label_for_btype_36805693920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xffffffff # initialize rs1
li x28, 0xffffffff # initialize rs2
bgeu x2, x28, some_label_for_btype_36805693921 # perform operation 
addi x0, x1, 1
some_label_for_btype_36805693921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x16, 0x3e716b09 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x55555555 # initialize rs1
li x31, 0xfffffffe # initialize rs2
bgeu x5, x31, some_label_for_btype_8749908010 # perform operation 
addi x0, x1, 1
some_label_for_btype_8749908010:
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
bgeu x5, x31, some_label_for_btype_8749908011 # perform operation 
addi x0, x1, 1
some_label_for_btype_8749908011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x2, 0x90660b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x55555555 # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
bgeu x23, x5, some_label_for_btype_30082562550 # perform operation 
addi x0, x1, 1
some_label_for_btype_30082562550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x5bbc8877 # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
bgeu x23, x5, some_label_for_btype_30082562551 # perform operation 
addi x0, x1, 1
some_label_for_btype_30082562551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x4, 0xcf5284b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x55555555 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
bgeu x7, x22, some_label_for_btype_37761839790 # perform operation 
addi x0, x1, 1
some_label_for_btype_37761839790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
bgeu x7, x22, some_label_for_btype_37761839791 # perform operation 
addi x0, x1, 1
some_label_for_btype_37761839791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x27, 0x9675c080 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x55555555 # initialize rs1
li x30, 0x55555555 # initialize rs2
bgeu x17, x30, some_label_for_btype_9364276640 # perform operation 
addi x0, x1, 1
some_label_for_btype_9364276640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x55555555 # initialize rs1
li x30, 0x55555555 # initialize rs2
bgeu x17, x30, some_label_for_btype_9364276641 # perform operation 
addi x0, x1, 1
some_label_for_btype_9364276641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x20, 0x9e5c191b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0xa35bca77 # initialize rs1
li x0, 0xb891b8ae # initialize rs2
bgeu x0, x0, some_label_for_btype_12874785930 # perform operation 
addi x0, x1, 1
some_label_for_btype_12874785930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0xb891b8ae # initialize rs1
li x0, 0xb891b8ae # initialize rs2
bgeu x0, x0, some_label_for_btype_12874785931 # perform operation 
addi x0, x1, 1
some_label_for_btype_12874785931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x21, 0x986cbbc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x6267f089 # initialize rs1
li x1, 0x07b0cd36 # initialize rs2
bgeu x1, x1, some_label_for_btype_18970490780 # perform operation 
addi x0, x1, 1
some_label_for_btype_18970490780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x07b0cd36 # initialize rs1
li x1, 0x07b0cd36 # initialize rs2
bgeu x1, x1, some_label_for_btype_18970490781 # perform operation 
addi x0, x1, 1
some_label_for_btype_18970490781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x15, 0x19b776c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x9f7170e4 # initialize rs1
li x2, 0x8cc272f6 # initialize rs2
bgeu x2, x2, some_label_for_btype_4264581460 # perform operation 
addi x0, x1, 1
some_label_for_btype_4264581460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x8cc272f6 # initialize rs1
li x2, 0x8cc272f6 # initialize rs2
bgeu x2, x2, some_label_for_btype_4264581461 # perform operation 
addi x0, x1, 1
some_label_for_btype_4264581461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x5, 0xe95a4187 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x32fa2d91 # initialize rs1
li x3, 0x652c941b # initialize rs2
bgeu x3, x3, some_label_for_btype_24477332520 # perform operation 
addi x0, x1, 1
some_label_for_btype_24477332520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x652c941b # initialize rs1
li x3, 0x652c941b # initialize rs2
bgeu x3, x3, some_label_for_btype_24477332521 # perform operation 
addi x0, x1, 1
some_label_for_btype_24477332521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x22, 0xd28a450b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xd0991391 # initialize rs1
li x4, 0xf8a292be # initialize rs2
bgeu x4, x4, some_label_for_btype_39929505310 # perform operation 
addi x0, x1, 1
some_label_for_btype_39929505310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xf8a292be # initialize rs1
li x4, 0xf8a292be # initialize rs2
bgeu x4, x4, some_label_for_btype_39929505311 # perform operation 
addi x0, x1, 1
some_label_for_btype_39929505311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x11, 0x9a0c3761 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x1b60b9ef # initialize rs1
li x5, 0x1cf06542 # initialize rs2
bgeu x5, x5, some_label_for_btype_27783811650 # perform operation 
addi x0, x1, 1
some_label_for_btype_27783811650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x1cf06542 # initialize rs1
li x5, 0x1cf06542 # initialize rs2
bgeu x5, x5, some_label_for_btype_27783811651 # perform operation 
addi x0, x1, 1
some_label_for_btype_27783811651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x9, 0xd77a7525 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xc8166c68 # initialize rs1
li x6, 0x97da03ce # initialize rs2
bgeu x6, x6, some_label_for_btype_33655587730 # perform operation 
addi x0, x1, 1
some_label_for_btype_33655587730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x97da03ce # initialize rs1
li x6, 0x97da03ce # initialize rs2
bgeu x6, x6, some_label_for_btype_33655587731 # perform operation 
addi x0, x1, 1
some_label_for_btype_33655587731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x14, 0x88262933 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x1372c380 # initialize rs1
li x7, 0x6d65767a # initialize rs2
bgeu x7, x7, some_label_for_btype_13897222310 # perform operation 
addi x0, x1, 1
some_label_for_btype_13897222310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x6d65767a # initialize rs1
li x7, 0x6d65767a # initialize rs2
bgeu x7, x7, some_label_for_btype_13897222311 # perform operation 
addi x0, x1, 1
some_label_for_btype_13897222311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x27, 0xa69e49b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x01978560 # initialize rs1
li x8, 0x8bf8d6f2 # initialize rs2
bgeu x8, x8, some_label_for_btype_25383569150 # perform operation 
addi x0, x1, 1
some_label_for_btype_25383569150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x8bf8d6f2 # initialize rs1
li x8, 0x8bf8d6f2 # initialize rs2
bgeu x8, x8, some_label_for_btype_25383569151 # perform operation 
addi x0, x1, 1
some_label_for_btype_25383569151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x6, 0xdb0f0720 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x4d668618 # initialize rs1
li x9, 0x43b17f71 # initialize rs2
bgeu x9, x9, some_label_for_btype_10615525420 # perform operation 
addi x0, x1, 1
some_label_for_btype_10615525420:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x43b17f71 # initialize rs1
li x9, 0x43b17f71 # initialize rs2
bgeu x9, x9, some_label_for_btype_10615525421 # perform operation 
addi x0, x1, 1
some_label_for_btype_10615525421:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x12, 0x5bf42cae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x4742adef # initialize rs1
li x10, 0xa43cf05a # initialize rs2
bgeu x10, x10, some_label_for_btype_3467833350 # perform operation 
addi x0, x1, 1
some_label_for_btype_3467833350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xa43cf05a # initialize rs1
li x10, 0xa43cf05a # initialize rs2
bgeu x10, x10, some_label_for_btype_3467833351 # perform operation 
addi x0, x1, 1
some_label_for_btype_3467833351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x2, 0xd6a1ce06 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xcb132fa0 # initialize rs1
li x11, 0x5b89860d # initialize rs2
bgeu x11, x11, some_label_for_btype_897310830 # perform operation 
addi x0, x1, 1
some_label_for_btype_897310830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x5b89860d # initialize rs1
li x11, 0x5b89860d # initialize rs2
bgeu x11, x11, some_label_for_btype_897310831 # perform operation 
addi x0, x1, 1
some_label_for_btype_897310831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x11, 0xed3adabb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x200d3f4d # initialize rs1
li x12, 0xc8f90585 # initialize rs2
bgeu x12, x12, some_label_for_btype_3490656200 # perform operation 
addi x0, x1, 1
some_label_for_btype_3490656200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xc8f90585 # initialize rs1
li x12, 0xc8f90585 # initialize rs2
bgeu x12, x12, some_label_for_btype_3490656201 # perform operation 
addi x0, x1, 1
some_label_for_btype_3490656201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x25, 0x6678b0c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x5aa128f8 # initialize rs1
li x13, 0xe1f496d1 # initialize rs2
bgeu x13, x13, some_label_for_btype_11106332090 # perform operation 
addi x0, x1, 1
some_label_for_btype_11106332090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xe1f496d1 # initialize rs1
li x13, 0xe1f496d1 # initialize rs2
bgeu x13, x13, some_label_for_btype_11106332091 # perform operation 
addi x0, x1, 1
some_label_for_btype_11106332091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x23, 0x4b20e116 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x6e09ff08 # initialize rs1
li x14, 0xe311da73 # initialize rs2
bgeu x14, x14, some_label_for_btype_15073553290 # perform operation 
addi x0, x1, 1
some_label_for_btype_15073553290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xe311da73 # initialize rs1
li x14, 0xe311da73 # initialize rs2
bgeu x14, x14, some_label_for_btype_15073553291 # perform operation 
addi x0, x1, 1
some_label_for_btype_15073553291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x18, 0x8edadd69 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xef2ceb95 # initialize rs1
li x15, 0xdeae11e3 # initialize rs2
bgeu x15, x15, some_label_for_btype_20607697980 # perform operation 
addi x0, x1, 1
some_label_for_btype_20607697980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xdeae11e3 # initialize rs1
li x15, 0xdeae11e3 # initialize rs2
bgeu x15, x15, some_label_for_btype_20607697981 # perform operation 
addi x0, x1, 1
some_label_for_btype_20607697981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x18, 0xfe597ccb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x61c365dd # initialize rs1
li x16, 0xf85cc2f4 # initialize rs2
bgeu x16, x16, some_label_for_btype_19790666670 # perform operation 
addi x0, x1, 1
some_label_for_btype_19790666670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xf85cc2f4 # initialize rs1
li x16, 0xf85cc2f4 # initialize rs2
bgeu x16, x16, some_label_for_btype_19790666671 # perform operation 
addi x0, x1, 1
some_label_for_btype_19790666671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x16, 0x38d603a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xa0375c1a # initialize rs1
li x17, 0x48b9c111 # initialize rs2
bgeu x17, x17, some_label_for_btype_29237842520 # perform operation 
addi x0, x1, 1
some_label_for_btype_29237842520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x48b9c111 # initialize rs1
li x17, 0x48b9c111 # initialize rs2
bgeu x17, x17, some_label_for_btype_29237842521 # perform operation 
addi x0, x1, 1
some_label_for_btype_29237842521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x24, 0x6fd6f23f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xc254d151 # initialize rs1
li x18, 0x07bc5630 # initialize rs2
bgeu x18, x18, some_label_for_btype_25532540570 # perform operation 
addi x0, x1, 1
some_label_for_btype_25532540570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x07bc5630 # initialize rs1
li x18, 0x07bc5630 # initialize rs2
bgeu x18, x18, some_label_for_btype_25532540571 # perform operation 
addi x0, x1, 1
some_label_for_btype_25532540571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x10, 0xaf6ffe8d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x58128635 # initialize rs1
li x19, 0x1c264c56 # initialize rs2
bgeu x19, x19, some_label_for_btype_8577119130 # perform operation 
addi x0, x1, 1
some_label_for_btype_8577119130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x1c264c56 # initialize rs1
li x19, 0x1c264c56 # initialize rs2
bgeu x19, x19, some_label_for_btype_8577119131 # perform operation 
addi x0, x1, 1
some_label_for_btype_8577119131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x30, 0x0ce70215 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x9d81268c # initialize rs1
li x20, 0x7ebe037b # initialize rs2
bgeu x20, x20, some_label_for_btype_32877371260 # perform operation 
addi x0, x1, 1
some_label_for_btype_32877371260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x7ebe037b # initialize rs1
li x20, 0x7ebe037b # initialize rs2
bgeu x20, x20, some_label_for_btype_32877371261 # perform operation 
addi x0, x1, 1
some_label_for_btype_32877371261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x28, 0xf93a0f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x5ae83c9a # initialize rs1
li x21, 0x81867a79 # initialize rs2
bgeu x21, x21, some_label_for_btype_30306571600 # perform operation 
addi x0, x1, 1
some_label_for_btype_30306571600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x81867a79 # initialize rs1
li x21, 0x81867a79 # initialize rs2
bgeu x21, x21, some_label_for_btype_30306571601 # perform operation 
addi x0, x1, 1
some_label_for_btype_30306571601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x20, 0x1aac21c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x4a5f7899 # initialize rs1
li x22, 0x4fcd9a15 # initialize rs2
bgeu x22, x22, some_label_for_btype_31806787620 # perform operation 
addi x0, x1, 1
some_label_for_btype_31806787620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x4fcd9a15 # initialize rs1
li x22, 0x4fcd9a15 # initialize rs2
bgeu x22, x22, some_label_for_btype_31806787621 # perform operation 
addi x0, x1, 1
some_label_for_btype_31806787621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x14, 0xb7ddeba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x94d0d262 # initialize rs1
li x23, 0x8968e5e1 # initialize rs2
bgeu x23, x23, some_label_for_btype_25839660830 # perform operation 
addi x0, x1, 1
some_label_for_btype_25839660830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x8968e5e1 # initialize rs1
li x23, 0x8968e5e1 # initialize rs2
bgeu x23, x23, some_label_for_btype_25839660831 # perform operation 
addi x0, x1, 1
some_label_for_btype_25839660831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x7, 0xed73013a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x9fc221a9 # initialize rs1
li x24, 0xc29d6457 # initialize rs2
bgeu x24, x24, some_label_for_btype_22708489320 # perform operation 
addi x0, x1, 1
some_label_for_btype_22708489320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xc29d6457 # initialize rs1
li x24, 0xc29d6457 # initialize rs2
bgeu x24, x24, some_label_for_btype_22708489321 # perform operation 
addi x0, x1, 1
some_label_for_btype_22708489321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x29, 0xbb0180ca # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x4ca5db45 # initialize rs1
li x25, 0xe1a3c32f # initialize rs2
bgeu x25, x25, some_label_for_btype_25054182710 # perform operation 
addi x0, x1, 1
some_label_for_btype_25054182710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xe1a3c32f # initialize rs1
li x25, 0xe1a3c32f # initialize rs2
bgeu x25, x25, some_label_for_btype_25054182711 # perform operation 
addi x0, x1, 1
some_label_for_btype_25054182711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x4, 0x33d32fcf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x46e164de # initialize rs1
li x26, 0x6adf2832 # initialize rs2
bgeu x26, x26, some_label_for_btype_27636894730 # perform operation 
addi x0, x1, 1
some_label_for_btype_27636894730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x6adf2832 # initialize rs1
li x26, 0x6adf2832 # initialize rs2
bgeu x26, x26, some_label_for_btype_27636894731 # perform operation 
addi x0, x1, 1
some_label_for_btype_27636894731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x2, 0x785156ac # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x963d8714 # initialize rs1
li x27, 0x09dc46f2 # initialize rs2
bgeu x27, x27, some_label_for_btype_38621760650 # perform operation 
addi x0, x1, 1
some_label_for_btype_38621760650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x09dc46f2 # initialize rs1
li x27, 0x09dc46f2 # initialize rs2
bgeu x27, x27, some_label_for_btype_38621760651 # perform operation 
addi x0, x1, 1
some_label_for_btype_38621760651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x16, 0xd4c2e1d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x179688e7 # initialize rs1
li x28, 0x72686416 # initialize rs2
bgeu x28, x28, some_label_for_btype_31330182460 # perform operation 
addi x0, x1, 1
some_label_for_btype_31330182460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x72686416 # initialize rs1
li x28, 0x72686416 # initialize rs2
bgeu x28, x28, some_label_for_btype_31330182461 # perform operation 
addi x0, x1, 1
some_label_for_btype_31330182461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x4, 0xf9d871ad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x8dd74323 # initialize rs1
li x29, 0xa74a4354 # initialize rs2
bgeu x29, x29, some_label_for_btype_23135311220 # perform operation 
addi x0, x1, 1
some_label_for_btype_23135311220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xa74a4354 # initialize rs1
li x29, 0xa74a4354 # initialize rs2
bgeu x29, x29, some_label_for_btype_23135311221 # perform operation 
addi x0, x1, 1
some_label_for_btype_23135311221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x10, 0xa0d9ba7a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xc58ffcbe # initialize rs1
li x30, 0xafc5017d # initialize rs2
bgeu x30, x30, some_label_for_btype_7455856630 # perform operation 
addi x0, x1, 1
some_label_for_btype_7455856630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xafc5017d # initialize rs1
li x30, 0xafc5017d # initialize rs2
bgeu x30, x30, some_label_for_btype_7455856631 # perform operation 
addi x0, x1, 1
some_label_for_btype_7455856631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x10, 0x914b6ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x950490a1 # initialize rs1
li x31, 0xe80249a1 # initialize rs2
bgeu x31, x31, some_label_for_btype_8198536300 # perform operation 
addi x0, x1, 1
some_label_for_btype_8198536300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xe80249a1 # initialize rs1
li x31, 0xe80249a1 # initialize rs2
bgeu x31, x31, some_label_for_btype_8198536301 # perform operation 
addi x0, x1, 1
some_label_for_btype_8198536301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = 0x28eb4f1a)
li x1, 0x46bcc5bc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x28eb4f1a # initialize rs1
li x16, 0xccda4a75 # initialize rs2
bgeu x9, x16, some_label_for_btype_21711534310 # perform operation 
addi x0, x1, 1
some_label_for_btype_21711534310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xccda4a75 # initialize rs1
li x16, 0xccda4a75 # initialize rs2
bgeu x9, x16, some_label_for_btype_21711534311 # perform operation 
addi x0, x1, 1
some_label_for_btype_21711534311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x49e86c3b)
li x23, 0x80cb3fd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xb61793c5 # initialize rs1
li x21, 0xa51904db # initialize rs2
bgeu x7, x21, some_label_for_btype_30981739480 # perform operation 
addi x0, x1, 1
some_label_for_btype_30981739480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xa51904db # initialize rs1
li x21, 0xa51904db # initialize rs2
bgeu x7, x21, some_label_for_btype_30981739481 # perform operation 
addi x0, x1, 1
some_label_for_btype_30981739481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = 0x4492b0fb)
li x12, 0x62b7e142 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xa2e31f81 # initialize rs1
li x2, 0x4492b0fb # initialize rs2
bgeu x21, x2, some_label_for_btype_17097597810 # perform operation 
addi x0, x1, 1
some_label_for_btype_17097597810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x4492b0fb # initialize rs1
li x2, 0x4492b0fb # initialize rs2
bgeu x21, x2, some_label_for_btype_17097597811 # perform operation 
addi x0, x1, 1
some_label_for_btype_17097597811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = -0x5239cd7a)
li x30, 0x4e210d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x543c6c18 # initialize rs1
li x22, 0xadc63286 # initialize rs2
bgeu x4, x22, some_label_for_btype_14538669690 # perform operation 
addi x0, x1, 1
some_label_for_btype_14538669690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xadc63286 # initialize rs1
li x22, 0xadc63286 # initialize rs2
bgeu x4, x22, some_label_for_btype_14538669691 # perform operation 
addi x0, x1, 1
some_label_for_btype_14538669691:
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
