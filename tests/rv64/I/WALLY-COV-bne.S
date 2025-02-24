///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-bne.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.476526
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x29, 0x865b7d8befea1608 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x2d8cf836ae04b9ba # initialize rs1
li x28, 0x54b41c09cd90ce0a # initialize rs2
bne x0, x28, some_label_for_btype_149118419563006226120 # perform operation 
addi x0, x1, 1
some_label_for_btype_149118419563006226120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0x54b41c09cd90ce0a # initialize rs1
li x28, 0x54b41c09cd90ce0a # initialize rs2
bne x0, x28, some_label_for_btype_149118419563006226121 # perform operation 
addi x0, x1, 1
some_label_for_btype_149118419563006226121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x1)
li x12, 0xa1e69be0105862d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xc2e9bc693a1a5c69 # initialize rs1
li x26, 0xcdef808c5f87931a # initialize rs2
bne x1, x26, some_label_for_btype_137890436740598073150 # perform operation 
addi x0, x1, 1
some_label_for_btype_137890436740598073150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xcdef808c5f87931a # initialize rs1
li x26, 0xcdef808c5f87931a # initialize rs2
bne x1, x26, some_label_for_btype_137890436740598073151 # perform operation 
addi x0, x1, 1
some_label_for_btype_137890436740598073151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x2)
li x23, 0x37ac4591962b2381 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xdad15ba51c5e1ff1 # initialize rs1
li x6, 0x285bd3a457510885 # initialize rs2
bne x2, x6, some_label_for_btype_36104793354942019500 # perform operation 
addi x0, x1, 1
some_label_for_btype_36104793354942019500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x285bd3a457510885 # initialize rs1
li x6, 0x285bd3a457510885 # initialize rs2
bne x2, x6, some_label_for_btype_36104793354942019501 # perform operation 
addi x0, x1, 1
some_label_for_btype_36104793354942019501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x3)
li x5, 0x8842397c7b8131f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x97469074b0a816d4 # initialize rs1
li x21, 0x155b5b0d62484764 # initialize rs2
bne x3, x21, some_label_for_btype_96889811069521341230 # perform operation 
addi x0, x1, 1
some_label_for_btype_96889811069521341230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x155b5b0d62484764 # initialize rs1
li x21, 0x155b5b0d62484764 # initialize rs2
bne x3, x21, some_label_for_btype_96889811069521341231 # perform operation 
addi x0, x1, 1
some_label_for_btype_96889811069521341231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x4)
li x19, 0x162e3d93372ce445 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xe437dd0edea057ed # initialize rs1
li x22, 0x92908962c26f1428 # initialize rs2
bne x4, x22, some_label_for_btype_45782934591938349270 # perform operation 
addi x0, x1, 1
some_label_for_btype_45782934591938349270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x92908962c26f1428 # initialize rs1
li x22, 0x92908962c26f1428 # initialize rs2
bne x4, x22, some_label_for_btype_45782934591938349271 # perform operation 
addi x0, x1, 1
some_label_for_btype_45782934591938349271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x5)
li x18, 0x68433cf220419cb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xe7319350c51328f8 # initialize rs1
li x16, 0xa1ad4dbcbb674b37 # initialize rs2
bne x5, x16, some_label_for_btype_3269687551734713280 # perform operation 
addi x0, x1, 1
some_label_for_btype_3269687551734713280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xa1ad4dbcbb674b37 # initialize rs1
li x16, 0xa1ad4dbcbb674b37 # initialize rs2
bne x5, x16, some_label_for_btype_3269687551734713281 # perform operation 
addi x0, x1, 1
some_label_for_btype_3269687551734713281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x6)
li x12, 0x3c1a4448d5cebe9b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0a7f2160a00421c3 # initialize rs1
li x21, 0x09e822bd85c8ff6d # initialize rs2
bne x6, x21, some_label_for_btype_166381729399270935990 # perform operation 
addi x0, x1, 1
some_label_for_btype_166381729399270935990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x09e822bd85c8ff6d # initialize rs1
li x21, 0x09e822bd85c8ff6d # initialize rs2
bne x6, x21, some_label_for_btype_166381729399270935991 # perform operation 
addi x0, x1, 1
some_label_for_btype_166381729399270935991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x7)
li x21, 0x230faaa62db055c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x74fe61e7096e80f5 # initialize rs1
li x24, 0x18a8b5681f9c6ba5 # initialize rs2
bne x7, x24, some_label_for_btype_73110353337789144230 # perform operation 
addi x0, x1, 1
some_label_for_btype_73110353337789144230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x18a8b5681f9c6ba5 # initialize rs1
li x24, 0x18a8b5681f9c6ba5 # initialize rs2
bne x7, x24, some_label_for_btype_73110353337789144231 # perform operation 
addi x0, x1, 1
some_label_for_btype_73110353337789144231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x8)
li x5, 0x733f29cab548516b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x30eba7ea62432a84 # initialize rs1
li x11, 0x222b638a21e5808e # initialize rs2
bne x8, x11, some_label_for_btype_133141704538194717790 # perform operation 
addi x0, x1, 1
some_label_for_btype_133141704538194717790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x222b638a21e5808e # initialize rs1
li x11, 0x222b638a21e5808e # initialize rs2
bne x8, x11, some_label_for_btype_133141704538194717791 # perform operation 
addi x0, x1, 1
some_label_for_btype_133141704538194717791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x1, 0x763def7ff912210d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x368856ca56c0de6d # initialize rs1
li x20, 0x389d1674c8f7d154 # initialize rs2
bne x9, x20, some_label_for_btype_45027761343405318670 # perform operation 
addi x0, x1, 1
some_label_for_btype_45027761343405318670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x389d1674c8f7d154 # initialize rs1
li x20, 0x389d1674c8f7d154 # initialize rs2
bne x9, x20, some_label_for_btype_45027761343405318671 # perform operation 
addi x0, x1, 1
some_label_for_btype_45027761343405318671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x21, 0x3731f5b706e003bf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x8951879206274e0a # initialize rs1
li x5, 0x2ea1e4c153832b6e # initialize rs2
bne x10, x5, some_label_for_btype_69596810448521966070 # perform operation 
addi x0, x1, 1
some_label_for_btype_69596810448521966070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x2ea1e4c153832b6e # initialize rs1
li x5, 0x2ea1e4c153832b6e # initialize rs2
bne x10, x5, some_label_for_btype_69596810448521966071 # perform operation 
addi x0, x1, 1
some_label_for_btype_69596810448521966071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x3, 0xf08cdf280e9a33ff # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x0c60dd28a1bcc00e # initialize rs1
li x2, 0x0a46d23f36dc4fcb # initialize rs2
bne x11, x2, some_label_for_btype_72348358663464042470 # perform operation 
addi x0, x1, 1
some_label_for_btype_72348358663464042470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0a46d23f36dc4fcb # initialize rs1
li x2, 0x0a46d23f36dc4fcb # initialize rs2
bne x11, x2, some_label_for_btype_72348358663464042471 # perform operation 
addi x0, x1, 1
some_label_for_btype_72348358663464042471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x22, 0x445e8c82f73b8a4f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x262176177cedd5e5 # initialize rs1
li x13, 0x460d66f109334273 # initialize rs2
bne x12, x13, some_label_for_btype_28640565796289783880 # perform operation 
addi x0, x1, 1
some_label_for_btype_28640565796289783880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x460d66f109334273 # initialize rs1
li x13, 0x460d66f109334273 # initialize rs2
bne x12, x13, some_label_for_btype_28640565796289783881 # perform operation 
addi x0, x1, 1
some_label_for_btype_28640565796289783881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0x2e5776b5a3b2cc06 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x6829a2cbedb8aad8 # initialize rs1
li x24, 0xe9c394e612d14c84 # initialize rs2
bne x13, x24, some_label_for_btype_176082579400251689330 # perform operation 
addi x0, x1, 1
some_label_for_btype_176082579400251689330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xe9c394e612d14c84 # initialize rs1
li x24, 0xe9c394e612d14c84 # initialize rs2
bne x13, x24, some_label_for_btype_176082579400251689331 # perform operation 
addi x0, x1, 1
some_label_for_btype_176082579400251689331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0xbcfa0b0ac0aa2891 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x2b6b113e4bf0b5ad # initialize rs1
li x4, 0x74d87ee9f72c42d3 # initialize rs2
bne x14, x4, some_label_for_btype_49811530589695561380 # perform operation 
addi x0, x1, 1
some_label_for_btype_49811530589695561380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x74d87ee9f72c42d3 # initialize rs1
li x4, 0x74d87ee9f72c42d3 # initialize rs2
bne x14, x4, some_label_for_btype_49811530589695561381 # perform operation 
addi x0, x1, 1
some_label_for_btype_49811530589695561381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x19, 0x1081a056a523dc44 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xa6f1ba266ea9720a # initialize rs1
li x8, 0xc139384a7085818f # initialize rs2
bne x15, x8, some_label_for_btype_98581033557029548980 # perform operation 
addi x0, x1, 1
some_label_for_btype_98581033557029548980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xc139384a7085818f # initialize rs1
li x8, 0xc139384a7085818f # initialize rs2
bne x15, x8, some_label_for_btype_98581033557029548981 # perform operation 
addi x0, x1, 1
some_label_for_btype_98581033557029548981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x16)
li x15, 0x299fbfba9cf50c94 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x7c940e69ef7d3db4 # initialize rs1
li x30, 0xb2217731f3ebfa67 # initialize rs2
bne x16, x30, some_label_for_btype_183497128337015830170 # perform operation 
addi x0, x1, 1
some_label_for_btype_183497128337015830170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xb2217731f3ebfa67 # initialize rs1
li x30, 0xb2217731f3ebfa67 # initialize rs2
bne x16, x30, some_label_for_btype_183497128337015830171 # perform operation 
addi x0, x1, 1
some_label_for_btype_183497128337015830171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x17)
li x15, 0x3cec58bbe5dca7b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xc1fa0a1d2c0361e6 # initialize rs1
li x16, 0xd96bc3c2ad08b1ea # initialize rs2
bne x17, x16, some_label_for_btype_125019889171342568050 # perform operation 
addi x0, x1, 1
some_label_for_btype_125019889171342568050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xd96bc3c2ad08b1ea # initialize rs1
li x16, 0xd96bc3c2ad08b1ea # initialize rs2
bne x17, x16, some_label_for_btype_125019889171342568051 # perform operation 
addi x0, x1, 1
some_label_for_btype_125019889171342568051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x18)
li x22, 0x8012a86503979a19 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x07fca2d9be71822f # initialize rs1
li x15, 0x2ec826c066bbeedc # initialize rs2
bne x18, x15, some_label_for_btype_183751368622589929820 # perform operation 
addi x0, x1, 1
some_label_for_btype_183751368622589929820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x2ec826c066bbeedc # initialize rs1
li x15, 0x2ec826c066bbeedc # initialize rs2
bne x18, x15, some_label_for_btype_183751368622589929821 # perform operation 
addi x0, x1, 1
some_label_for_btype_183751368622589929821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x19)
li x29, 0xb8445ecb3f3a6434 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0473bfac72349c24 # initialize rs1
li x28, 0xddaeb8b6fb0b998d # initialize rs2
bne x19, x28, some_label_for_btype_178900706893183869950 # perform operation 
addi x0, x1, 1
some_label_for_btype_178900706893183869950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xddaeb8b6fb0b998d # initialize rs1
li x28, 0xddaeb8b6fb0b998d # initialize rs2
bne x19, x28, some_label_for_btype_178900706893183869951 # perform operation 
addi x0, x1, 1
some_label_for_btype_178900706893183869951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x20)
li x10, 0x704bf3430601a4ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x1021210ee474536c # initialize rs1
li x29, 0x5c918817d18a475e # initialize rs2
bne x20, x29, some_label_for_btype_97294968071700499170 # perform operation 
addi x0, x1, 1
some_label_for_btype_97294968071700499170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x5c918817d18a475e # initialize rs1
li x29, 0x5c918817d18a475e # initialize rs2
bne x20, x29, some_label_for_btype_97294968071700499171 # perform operation 
addi x0, x1, 1
some_label_for_btype_97294968071700499171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x21)
li x22, 0xe99e47f3c541c089 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xd808f14aa255664a # initialize rs1
li x27, 0x82f63e795e3b95a4 # initialize rs2
bne x21, x27, some_label_for_btype_121850129422204907990 # perform operation 
addi x0, x1, 1
some_label_for_btype_121850129422204907990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x82f63e795e3b95a4 # initialize rs1
li x27, 0x82f63e795e3b95a4 # initialize rs2
bne x21, x27, some_label_for_btype_121850129422204907991 # perform operation 
addi x0, x1, 1
some_label_for_btype_121850129422204907991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x22)
li x26, 0xa68250f4e5c1a729 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xd12d4a9bf885640a # initialize rs1
li x12, 0xafe1558b986c5929 # initialize rs2
bne x22, x12, some_label_for_btype_26186428772926089590 # perform operation 
addi x0, x1, 1
some_label_for_btype_26186428772926089590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xafe1558b986c5929 # initialize rs1
li x12, 0xafe1558b986c5929 # initialize rs2
bne x22, x12, some_label_for_btype_26186428772926089591 # perform operation 
addi x0, x1, 1
some_label_for_btype_26186428772926089591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x23)
li x28, 0x3f1e1a7c1c24b73a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x924bab82d605a895 # initialize rs1
li x10, 0x4888f7e79ed85305 # initialize rs2
bne x23, x10, some_label_for_btype_23294912723026425550 # perform operation 
addi x0, x1, 1
some_label_for_btype_23294912723026425550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x4888f7e79ed85305 # initialize rs1
li x10, 0x4888f7e79ed85305 # initialize rs2
bne x23, x10, some_label_for_btype_23294912723026425551 # perform operation 
addi x0, x1, 1
some_label_for_btype_23294912723026425551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x24)
li x16, 0xfdcb0eeb2ad0173c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x7469a07c1ad34b46 # initialize rs1
li x26, 0x2dc8e1a9d7e0ddf4 # initialize rs2
bne x24, x26, some_label_for_btype_133894491961519726730 # perform operation 
addi x0, x1, 1
some_label_for_btype_133894491961519726730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x2dc8e1a9d7e0ddf4 # initialize rs1
li x26, 0x2dc8e1a9d7e0ddf4 # initialize rs2
bne x24, x26, some_label_for_btype_133894491961519726731 # perform operation 
addi x0, x1, 1
some_label_for_btype_133894491961519726731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x25)
li x8, 0x407c37e96310a479 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xb0602edb9290c70a # initialize rs1
li x18, 0x844f21d1ca969eae # initialize rs2
bne x25, x18, some_label_for_btype_144361243175322748890 # perform operation 
addi x0, x1, 1
some_label_for_btype_144361243175322748890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x844f21d1ca969eae # initialize rs1
li x18, 0x844f21d1ca969eae # initialize rs2
bne x25, x18, some_label_for_btype_144361243175322748891 # perform operation 
addi x0, x1, 1
some_label_for_btype_144361243175322748891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x26)
li x9, 0x39862674184e870a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xab92b302d9016e49 # initialize rs1
li x5, 0xe409c781c87e788c # initialize rs2
bne x26, x5, some_label_for_btype_135172835013248954290 # perform operation 
addi x0, x1, 1
some_label_for_btype_135172835013248954290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xe409c781c87e788c # initialize rs1
li x5, 0xe409c781c87e788c # initialize rs2
bne x26, x5, some_label_for_btype_135172835013248954291 # perform operation 
addi x0, x1, 1
some_label_for_btype_135172835013248954291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x27)
li x12, 0x466a455836784130 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xa3b14ac58951f397 # initialize rs1
li x28, 0xa62939ad1015f110 # initialize rs2
bne x27, x28, some_label_for_btype_22229763514906451520 # perform operation 
addi x0, x1, 1
some_label_for_btype_22229763514906451520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xa62939ad1015f110 # initialize rs1
li x28, 0xa62939ad1015f110 # initialize rs2
bne x27, x28, some_label_for_btype_22229763514906451521 # perform operation 
addi x0, x1, 1
some_label_for_btype_22229763514906451521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x28)
li x20, 0x8a4d008736dcbd9f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x5f6b89b9d6fe9a2c # initialize rs1
li x21, 0xd84c0c883e5367f8 # initialize rs2
bne x28, x21, some_label_for_btype_20207665191990459070 # perform operation 
addi x0, x1, 1
some_label_for_btype_20207665191990459070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xd84c0c883e5367f8 # initialize rs1
li x21, 0xd84c0c883e5367f8 # initialize rs2
bne x28, x21, some_label_for_btype_20207665191990459071 # perform operation 
addi x0, x1, 1
some_label_for_btype_20207665191990459071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x29)
li x21, 0xb02f993e8f0343be # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x3b64f49af3583af8 # initialize rs1
li x15, 0x5925e963b4c1c687 # initialize rs2
bne x29, x15, some_label_for_btype_9128096327875980470 # perform operation 
addi x0, x1, 1
some_label_for_btype_9128096327875980470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x5925e963b4c1c687 # initialize rs1
li x15, 0x5925e963b4c1c687 # initialize rs2
bne x29, x15, some_label_for_btype_9128096327875980471 # perform operation 
addi x0, x1, 1
some_label_for_btype_9128096327875980471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x30)
li x3, 0x04cd973f2538a71e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x9c0ccfac38f40641 # initialize rs1
li x22, 0x596010f795fdeb63 # initialize rs2
bne x30, x22, some_label_for_btype_42874816459810278530 # perform operation 
addi x0, x1, 1
some_label_for_btype_42874816459810278530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x596010f795fdeb63 # initialize rs1
li x22, 0x596010f795fdeb63 # initialize rs2
bne x30, x22, some_label_for_btype_42874816459810278531 # perform operation 
addi x0, x1, 1
some_label_for_btype_42874816459810278531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x31)
li x2, 0xeb01bbda4f7fc112 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x5cf8293c06a0279e # initialize rs1
li x28, 0xf4717494df08101f # initialize rs2
bne x31, x28, some_label_for_btype_46335741951490649120 # perform operation 
addi x0, x1, 1
some_label_for_btype_46335741951490649120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xf4717494df08101f # initialize rs1
li x28, 0xf4717494df08101f # initialize rs2
bne x31, x28, some_label_for_btype_46335741951490649121 # perform operation 
addi x0, x1, 1
some_label_for_btype_46335741951490649121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x0)
li x25, 0x94fc04f41a243c09 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xe1da6df7e7a3f5e8 # initialize rs1
li x0, 0x3c001e0cd3f0ac92 # initialize rs2
bne x10, x0, some_label_for_btype_143675722856727509680 # perform operation 
addi x0, x1, 1
some_label_for_btype_143675722856727509680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x3c001e0cd3f0ac92 # initialize rs1
li x0, 0x3c001e0cd3f0ac92 # initialize rs2
bne x10, x0, some_label_for_btype_143675722856727509681 # perform operation 
addi x0, x1, 1
some_label_for_btype_143675722856727509681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x1)
li x23, 0x6bf28244ef8806d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xb7f055ad4fa55dba # initialize rs1
li x1, 0xc0806b670738aa6f # initialize rs2
bne x30, x1, some_label_for_btype_95949403388515912110 # perform operation 
addi x0, x1, 1
some_label_for_btype_95949403388515912110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xc0806b670738aa6f # initialize rs1
li x1, 0xc0806b670738aa6f # initialize rs2
bne x30, x1, some_label_for_btype_95949403388515912111 # perform operation 
addi x0, x1, 1
some_label_for_btype_95949403388515912111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0x48240d30ee1a6543 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x2ad052cbef5c4daf # initialize rs1
li x2, 0x1d1cb234509dd4e1 # initialize rs2
bne x31, x2, some_label_for_btype_79261104585903643450 # perform operation 
addi x0, x1, 1
some_label_for_btype_79261104585903643450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x1d1cb234509dd4e1 # initialize rs1
li x2, 0x1d1cb234509dd4e1 # initialize rs2
bne x31, x2, some_label_for_btype_79261104585903643451 # perform operation 
addi x0, x1, 1
some_label_for_btype_79261104585903643451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x3)
li x22, 0x65eedfa5655c1c79 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xa5b00ed04e097efd # initialize rs1
li x3, 0xaf7065b96379ca1c # initialize rs2
bne x20, x3, some_label_for_btype_28073057963496095340 # perform operation 
addi x0, x1, 1
some_label_for_btype_28073057963496095340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xaf7065b96379ca1c # initialize rs1
li x3, 0xaf7065b96379ca1c # initialize rs2
bne x20, x3, some_label_for_btype_28073057963496095341 # perform operation 
addi x0, x1, 1
some_label_for_btype_28073057963496095341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x4)
li x16, 0x3e2bc36f0fef8612 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xf470d5f40b6fa301 # initialize rs1
li x4, 0x528348e88dd5ed89 # initialize rs2
bne x31, x4, some_label_for_btype_105886733132538918130 # perform operation 
addi x0, x1, 1
some_label_for_btype_105886733132538918130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x528348e88dd5ed89 # initialize rs1
li x4, 0x528348e88dd5ed89 # initialize rs2
bne x31, x4, some_label_for_btype_105886733132538918131 # perform operation 
addi x0, x1, 1
some_label_for_btype_105886733132538918131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x5)
li x14, 0x432d48f87a11a602 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x96d8b8941931ed34 # initialize rs1
li x5, 0x4c2c0fb58b42965b # initialize rs2
bne x4, x5, some_label_for_btype_11696555032361586430 # perform operation 
addi x0, x1, 1
some_label_for_btype_11696555032361586430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x4c2c0fb58b42965b # initialize rs1
li x5, 0x4c2c0fb58b42965b # initialize rs2
bne x4, x5, some_label_for_btype_11696555032361586431 # perform operation 
addi x0, x1, 1
some_label_for_btype_11696555032361586431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x6)
li x28, 0x5de9f77f41bb4795 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x4fc7076ac476f07d # initialize rs1
li x6, 0x2111aa72bcffd599 # initialize rs2
bne x29, x6, some_label_for_btype_158010658606963146680 # perform operation 
addi x0, x1, 1
some_label_for_btype_158010658606963146680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x2111aa72bcffd599 # initialize rs1
li x6, 0x2111aa72bcffd599 # initialize rs2
bne x29, x6, some_label_for_btype_158010658606963146681 # perform operation 
addi x0, x1, 1
some_label_for_btype_158010658606963146681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x7)
li x8, 0xdd9411c6fb978d38 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x4b40636fb14568a1 # initialize rs1
li x7, 0x43c98665b52346bf # initialize rs2
bne x1, x7, some_label_for_btype_14110864450105519160 # perform operation 
addi x0, x1, 1
some_label_for_btype_14110864450105519160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x43c98665b52346bf # initialize rs1
li x7, 0x43c98665b52346bf # initialize rs2
bne x1, x7, some_label_for_btype_14110864450105519161 # perform operation 
addi x0, x1, 1
some_label_for_btype_14110864450105519161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x8)
li x27, 0x40a8ba717ae46548 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x97124254abcdfa4c # initialize rs1
li x8, 0x2c1b9ad0dbc32f3f # initialize rs2
bne x26, x8, some_label_for_btype_162546137909519519910 # perform operation 
addi x0, x1, 1
some_label_for_btype_162546137909519519910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x2c1b9ad0dbc32f3f # initialize rs1
li x8, 0x2c1b9ad0dbc32f3f # initialize rs2
bne x26, x8, some_label_for_btype_162546137909519519911 # perform operation 
addi x0, x1, 1
some_label_for_btype_162546137909519519911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x9)
li x16, 0x135d8225531a7288 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x1b4afeed42a36f39 # initialize rs1
li x9, 0xd76410994244ea0e # initialize rs2
bne x21, x9, some_label_for_btype_94863284759373120590 # perform operation 
addi x0, x1, 1
some_label_for_btype_94863284759373120590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xd76410994244ea0e # initialize rs1
li x9, 0xd76410994244ea0e # initialize rs2
bne x21, x9, some_label_for_btype_94863284759373120591 # perform operation 
addi x0, x1, 1
some_label_for_btype_94863284759373120591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x10)
li x17, 0x2e96bed07863ac8b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x9065dcc6cc8be4f3 # initialize rs1
li x10, 0x8f11cc52d3665409 # initialize rs2
bne x26, x10, some_label_for_btype_58705415978994656060 # perform operation 
addi x0, x1, 1
some_label_for_btype_58705415978994656060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x8f11cc52d3665409 # initialize rs1
li x10, 0x8f11cc52d3665409 # initialize rs2
bne x26, x10, some_label_for_btype_58705415978994656061 # perform operation 
addi x0, x1, 1
some_label_for_btype_58705415978994656061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x11)
li x18, 0x5d53079a70e0b6b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xe154cc6c560ec233 # initialize rs1
li x11, 0xe86ccd515a88725b # initialize rs2
bne x4, x11, some_label_for_btype_44606432826862464840 # perform operation 
addi x0, x1, 1
some_label_for_btype_44606432826862464840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xe86ccd515a88725b # initialize rs1
li x11, 0xe86ccd515a88725b # initialize rs2
bne x4, x11, some_label_for_btype_44606432826862464841 # perform operation 
addi x0, x1, 1
some_label_for_btype_44606432826862464841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x12)
li x11, 0xa9107e8543d27d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xc92e6a294c29ae81 # initialize rs1
li x12, 0x85d618d5c6a1427c # initialize rs2
bne x22, x12, some_label_for_btype_52649761871024944570 # perform operation 
addi x0, x1, 1
some_label_for_btype_52649761871024944570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x85d618d5c6a1427c # initialize rs1
li x12, 0x85d618d5c6a1427c # initialize rs2
bne x22, x12, some_label_for_btype_52649761871024944571 # perform operation 
addi x0, x1, 1
some_label_for_btype_52649761871024944571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x13)
li x5, 0x1c9f44362932404e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x6502f04f093e41ac # initialize rs1
li x13, 0x2aa1cc7701ecaefd # initialize rs2
bne x1, x13, some_label_for_btype_24866854274185758770 # perform operation 
addi x0, x1, 1
some_label_for_btype_24866854274185758770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x2aa1cc7701ecaefd # initialize rs1
li x13, 0x2aa1cc7701ecaefd # initialize rs2
bne x1, x13, some_label_for_btype_24866854274185758771 # perform operation 
addi x0, x1, 1
some_label_for_btype_24866854274185758771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0x18ec977666a5bb40 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x97689282f5df3d00 # initialize rs1
li x14, 0x31eb4da0eb921ac3 # initialize rs2
bne x1, x14, some_label_for_btype_20980420963844874330 # perform operation 
addi x0, x1, 1
some_label_for_btype_20980420963844874330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x31eb4da0eb921ac3 # initialize rs1
li x14, 0x31eb4da0eb921ac3 # initialize rs2
bne x1, x14, some_label_for_btype_20980420963844874331 # perform operation 
addi x0, x1, 1
some_label_for_btype_20980420963844874331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x15)
li x19, 0xb488f3c3e3e1f1b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0ca2a6f521a8662c # initialize rs1
li x15, 0x763515e71bd7b0d8 # initialize rs2
bne x10, x15, some_label_for_btype_163284633837237160460 # perform operation 
addi x0, x1, 1
some_label_for_btype_163284633837237160460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x763515e71bd7b0d8 # initialize rs1
li x15, 0x763515e71bd7b0d8 # initialize rs2
bne x10, x15, some_label_for_btype_163284633837237160461 # perform operation 
addi x0, x1, 1
some_label_for_btype_163284633837237160461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x16)
li x3, 0x7d5bb746c654b929 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x89218779ed75739c # initialize rs1
li x16, 0x654a9d9dcd41d4e1 # initialize rs2
bne x9, x16, some_label_for_btype_2179263393937449310 # perform operation 
addi x0, x1, 1
some_label_for_btype_2179263393937449310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x654a9d9dcd41d4e1 # initialize rs1
li x16, 0x654a9d9dcd41d4e1 # initialize rs2
bne x9, x16, some_label_for_btype_2179263393937449311 # perform operation 
addi x0, x1, 1
some_label_for_btype_2179263393937449311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x17)
li x1, 0x19021fdc2145d5e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xa11f3556960003ce # initialize rs1
li x17, 0x4e970abc2c69babd # initialize rs2
bne x24, x17, some_label_for_btype_108582326250322810720 # perform operation 
addi x0, x1, 1
some_label_for_btype_108582326250322810720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x4e970abc2c69babd # initialize rs1
li x17, 0x4e970abc2c69babd # initialize rs2
bne x24, x17, some_label_for_btype_108582326250322810721 # perform operation 
addi x0, x1, 1
some_label_for_btype_108582326250322810721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0x03115eabb205aedb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xf60c74b4cccb7be2 # initialize rs1
li x18, 0x45e000926bf04e29 # initialize rs2
bne x4, x18, some_label_for_btype_134785458475532402520 # perform operation 
addi x0, x1, 1
some_label_for_btype_134785458475532402520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x45e000926bf04e29 # initialize rs1
li x18, 0x45e000926bf04e29 # initialize rs2
bne x4, x18, some_label_for_btype_134785458475532402521 # perform operation 
addi x0, x1, 1
some_label_for_btype_134785458475532402521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0x369b073f85619163 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xc5612b1506619fdf # initialize rs1
li x19, 0x51945ce3566f3069 # initialize rs2
bne x6, x19, some_label_for_btype_104270569651639875480 # perform operation 
addi x0, x1, 1
some_label_for_btype_104270569651639875480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x51945ce3566f3069 # initialize rs1
li x19, 0x51945ce3566f3069 # initialize rs2
bne x6, x19, some_label_for_btype_104270569651639875481 # perform operation 
addi x0, x1, 1
some_label_for_btype_104270569651639875481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x20)
li x2, 0xdc41b53ff95aeb08 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xaaf750b07d4cacb0 # initialize rs1
li x20, 0xbf3524477799c901 # initialize rs2
bne x11, x20, some_label_for_btype_148370114909078773470 # perform operation 
addi x0, x1, 1
some_label_for_btype_148370114909078773470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xbf3524477799c901 # initialize rs1
li x20, 0xbf3524477799c901 # initialize rs2
bne x11, x20, some_label_for_btype_148370114909078773471 # perform operation 
addi x0, x1, 1
some_label_for_btype_148370114909078773471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0x7a8ce2d414627fa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xc66152f243bc41a9 # initialize rs1
li x21, 0xb6ae87c33729c037 # initialize rs2
bne x13, x21, some_label_for_btype_81952892178970761660 # perform operation 
addi x0, x1, 1
some_label_for_btype_81952892178970761660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xb6ae87c33729c037 # initialize rs1
li x21, 0xb6ae87c33729c037 # initialize rs2
bne x13, x21, some_label_for_btype_81952892178970761661 # perform operation 
addi x0, x1, 1
some_label_for_btype_81952892178970761661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x22)
li x12, 0x54aba33b208fffe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xdb2a74dcf938e3dd # initialize rs1
li x22, 0xfec55fcdf57747cf # initialize rs2
bne x6, x22, some_label_for_btype_33684974797823899640 # perform operation 
addi x0, x1, 1
some_label_for_btype_33684974797823899640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xfec55fcdf57747cf # initialize rs1
li x22, 0xfec55fcdf57747cf # initialize rs2
bne x6, x22, some_label_for_btype_33684974797823899641 # perform operation 
addi x0, x1, 1
some_label_for_btype_33684974797823899641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x23)
li x26, 0x6b9ab12fb9b5d49b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xedae9c3630b7eb7a # initialize rs1
li x23, 0x6906f5736f9524a4 # initialize rs2
bne x30, x23, some_label_for_btype_172247790358660585400 # perform operation 
addi x0, x1, 1
some_label_for_btype_172247790358660585400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x6906f5736f9524a4 # initialize rs1
li x23, 0x6906f5736f9524a4 # initialize rs2
bne x30, x23, some_label_for_btype_172247790358660585401 # perform operation 
addi x0, x1, 1
some_label_for_btype_172247790358660585401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x24)
li x4, 0x86073fca3dacbbd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x9f67c77e27639c93 # initialize rs1
li x24, 0x9332c2a8592e16d5 # initialize rs2
bne x21, x24, some_label_for_btype_164746446289786806980 # perform operation 
addi x0, x1, 1
some_label_for_btype_164746446289786806980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x9332c2a8592e16d5 # initialize rs1
li x24, 0x9332c2a8592e16d5 # initialize rs2
bne x21, x24, some_label_for_btype_164746446289786806981 # perform operation 
addi x0, x1, 1
some_label_for_btype_164746446289786806981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x25)
li x1, 0x11b7582abfeff96e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xe251c179682cded1 # initialize rs1
li x25, 0xfdef70e49327f320 # initialize rs2
bne x21, x25, some_label_for_btype_80666387052956852340 # perform operation 
addi x0, x1, 1
some_label_for_btype_80666387052956852340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xfdef70e49327f320 # initialize rs1
li x25, 0xfdef70e49327f320 # initialize rs2
bne x21, x25, some_label_for_btype_80666387052956852341 # perform operation 
addi x0, x1, 1
some_label_for_btype_80666387052956852341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x26)
li x31, 0x52368e02ad447044 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xabf560ede1a1fca4 # initialize rs1
li x26, 0x8d796cbc434da57b # initialize rs2
bne x31, x26, some_label_for_btype_130392238846573328320 # perform operation 
addi x0, x1, 1
some_label_for_btype_130392238846573328320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x8d796cbc434da57b # initialize rs1
li x26, 0x8d796cbc434da57b # initialize rs2
bne x31, x26, some_label_for_btype_130392238846573328321 # perform operation 
addi x0, x1, 1
some_label_for_btype_130392238846573328321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x27)
li x8, 0x8875a5fd21359d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x429625b79b835232 # initialize rs1
li x27, 0xbd63d935318b5ed6 # initialize rs2
bne x17, x27, some_label_for_btype_37690931849582094830 # perform operation 
addi x0, x1, 1
some_label_for_btype_37690931849582094830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xbd63d935318b5ed6 # initialize rs1
li x27, 0xbd63d935318b5ed6 # initialize rs2
bne x17, x27, some_label_for_btype_37690931849582094831 # perform operation 
addi x0, x1, 1
some_label_for_btype_37690931849582094831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x28)
li x21, 0x39eaa8b3dcaa081d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xf6a784cabc34b47c # initialize rs1
li x28, 0xeacdab2de0d0abfd # initialize rs2
bne x18, x28, some_label_for_btype_103055234140794106170 # perform operation 
addi x0, x1, 1
some_label_for_btype_103055234140794106170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xeacdab2de0d0abfd # initialize rs1
li x28, 0xeacdab2de0d0abfd # initialize rs2
bne x18, x28, some_label_for_btype_103055234140794106171 # perform operation 
addi x0, x1, 1
some_label_for_btype_103055234140794106171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x29)
li x31, 0xde85d39bd11fe244 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xa4d5fac20b97d013 # initialize rs1
li x29, 0x5f354b54155a29cb # initialize rs2
bne x6, x29, some_label_for_btype_87347062403796443330 # perform operation 
addi x0, x1, 1
some_label_for_btype_87347062403796443330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x5f354b54155a29cb # initialize rs1
li x29, 0x5f354b54155a29cb # initialize rs2
bne x6, x29, some_label_for_btype_87347062403796443331 # perform operation 
addi x0, x1, 1
some_label_for_btype_87347062403796443331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x30)
li x15, 0x182a5b7dd2bce2ec # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x67e0441e91090e8a # initialize rs1
li x30, 0xd238bc520a0404d5 # initialize rs2
bne x3, x30, some_label_for_btype_17738832089767577570 # perform operation 
addi x0, x1, 1
some_label_for_btype_17738832089767577570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xd238bc520a0404d5 # initialize rs1
li x30, 0xd238bc520a0404d5 # initialize rs2
bne x3, x30, some_label_for_btype_17738832089767577571 # perform operation 
addi x0, x1, 1
some_label_for_btype_17738832089767577571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x31)
li x12, 0x5bdb1171e978b664 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x38212e3835a497a1 # initialize rs1
li x31, 0xb5315463550fc8a6 # initialize rs2
bne x5, x31, some_label_for_btype_156733605459660272080 # perform operation 
addi x0, x1, 1
some_label_for_btype_156733605459660272080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xb5315463550fc8a6 # initialize rs1
li x31, 0xb5315463550fc8a6 # initialize rs2
bne x5, x31, some_label_for_btype_156733605459660272081 # perform operation 
addi x0, x1, 1
some_label_for_btype_156733605459660272081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xeeb9641aa97c4b38)
li x22, 0xb04713ee47e486e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xb04713ee47e486e1 # initialize rs1
li x0, 0x7868b87aa37c321f # initialize rs2
bne x28, x0, some_label_for_btype_92169619075666437100 # perform operation 
addi x0, x1, 1
some_label_for_btype_92169619075666437100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7868b87aa37c321f # initialize rs1
li x0, 0x7868b87aa37c321f # initialize rs2
bne x28, x0, some_label_for_btype_92169619075666437101 # perform operation 
addi x0, x1, 1
some_label_for_btype_92169619075666437101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x17, 0xce2f278508f1f095 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000000000000 # initialize rs1
li x3, 0x14ddbacf4e715d24 # initialize rs2
bne x31, x3, some_label_for_btype_37212532838499339820 # perform operation 
addi x0, x1, 1
some_label_for_btype_37212532838499339820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x14ddbacf4e715d24 # initialize rs1
li x3, 0x14ddbacf4e715d24 # initialize rs2
bne x31, x3, some_label_for_btype_37212532838499339821 # perform operation 
addi x0, x1, 1
some_label_for_btype_37212532838499339821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x20, 0xf169acb5b4d7456a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000000000001 # initialize rs1
li x25, 0xae7cd51ea83b2171 # initialize rs2
bne x2, x25, some_label_for_btype_102831442991558762900 # perform operation 
addi x0, x1, 1
some_label_for_btype_102831442991558762900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xae7cd51ea83b2171 # initialize rs1
li x25, 0xae7cd51ea83b2171 # initialize rs2
bne x2, x25, some_label_for_btype_102831442991558762901 # perform operation 
addi x0, x1, 1
some_label_for_btype_102831442991558762901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x4, 0x207ea0ec32cc9e18 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000000000002 # initialize rs1
li x20, 0xffdd15b551b3e155 # initialize rs2
bne x21, x20, some_label_for_btype_63071049275581680120 # perform operation 
addi x0, x1, 1
some_label_for_btype_63071049275581680120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xffdd15b551b3e155 # initialize rs1
li x20, 0xffdd15b551b3e155 # initialize rs2
bne x21, x20, some_label_for_btype_63071049275581680121 # perform operation 
addi x0, x1, 1
some_label_for_btype_63071049275581680121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x23, 0x1c7746728a9c43d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x8000000000000000 # initialize rs1
li x27, 0x9e6493f1f4426771 # initialize rs2
bne x18, x27, some_label_for_btype_42379355451837231590 # perform operation 
addi x0, x1, 1
some_label_for_btype_42379355451837231590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x9e6493f1f4426771 # initialize rs1
li x27, 0x9e6493f1f4426771 # initialize rs2
bne x18, x27, some_label_for_btype_42379355451837231591 # perform operation 
addi x0, x1, 1
some_label_for_btype_42379355451837231591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x6, 0xbfaeb0d98f21e0a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x8000000000000001 # initialize rs1
li x28, 0xb8ac16961e71c75b # initialize rs2
bne x14, x28, some_label_for_btype_135118557020893695730 # perform operation 
addi x0, x1, 1
some_label_for_btype_135118557020893695730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xb8ac16961e71c75b # initialize rs1
li x28, 0xb8ac16961e71c75b # initialize rs2
bne x14, x28, some_label_for_btype_135118557020893695731 # perform operation 
addi x0, x1, 1
some_label_for_btype_135118557020893695731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x8, 0x6005675a0e44a716 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x7fffffffffffffff # initialize rs1
li x21, 0xe1db528e844cb63f # initialize rs2
bne x7, x21, some_label_for_btype_69008586657281268130 # perform operation 
addi x0, x1, 1
some_label_for_btype_69008586657281268130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xe1db528e844cb63f # initialize rs1
li x21, 0xe1db528e844cb63f # initialize rs2
bne x7, x21, some_label_for_btype_69008586657281268131 # perform operation 
addi x0, x1, 1
some_label_for_btype_69008586657281268131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0xdf9f10e32f1d6e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x7ffffffffffffffe # initialize rs1
li x18, 0xd88b1a7ffd2c05ae # initialize rs2
bne x2, x18, some_label_for_btype_11134749508236921090 # perform operation 
addi x0, x1, 1
some_label_for_btype_11134749508236921090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xd88b1a7ffd2c05ae # initialize rs1
li x18, 0xd88b1a7ffd2c05ae # initialize rs2
bne x2, x18, some_label_for_btype_11134749508236921091 # perform operation 
addi x0, x1, 1
some_label_for_btype_11134749508236921091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x3, 0x50625cb414677048 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xffffffffffffffff # initialize rs1
li x31, 0x5dedc62ba13e34f1 # initialize rs2
bne x26, x31, some_label_for_btype_94761666724470955110 # perform operation 
addi x0, x1, 1
some_label_for_btype_94761666724470955110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x5dedc62ba13e34f1 # initialize rs1
li x31, 0x5dedc62ba13e34f1 # initialize rs2
bne x26, x31, some_label_for_btype_94761666724470955111 # perform operation 
addi x0, x1, 1
some_label_for_btype_94761666724470955111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x30, 0x861dc906fb532ea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0xfffffffffffffffe # initialize rs1
li x10, 0x249a1a571ee3bea9 # initialize rs2
bne x2, x10, some_label_for_btype_171427182937743520470 # perform operation 
addi x0, x1, 1
some_label_for_btype_171427182937743520470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x249a1a571ee3bea9 # initialize rs1
li x10, 0x249a1a571ee3bea9 # initialize rs2
bne x2, x10, some_label_for_btype_171427182937743520471 # perform operation 
addi x0, x1, 1
some_label_for_btype_171427182937743520471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x6, 0x3ee5b06ce83b0489 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x488900cc02369d42 # initialize rs2
bne x22, x31, some_label_for_btype_90054564525658634370 # perform operation 
addi x0, x1, 1
some_label_for_btype_90054564525658634370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x488900cc02369d42 # initialize rs1
li x31, 0x488900cc02369d42 # initialize rs2
bne x22, x31, some_label_for_btype_90054564525658634371 # perform operation 
addi x0, x1, 1
some_label_for_btype_90054564525658634371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0x7b1016220debe8b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x2b8432d4f0fd4de5 # initialize rs2
bne x4, x2, some_label_for_btype_22050125159475938580 # perform operation 
addi x0, x1, 1
some_label_for_btype_22050125159475938580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x2b8432d4f0fd4de5 # initialize rs1
li x2, 0x2b8432d4f0fd4de5 # initialize rs2
bne x4, x2, some_label_for_btype_22050125159475938581 # perform operation 
addi x0, x1, 1
some_label_for_btype_22050125159475938581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x18, 0x1a6d270fb157b890 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x5555555555555555 # initialize rs1
li x8, 0x867e24c561749877 # initialize rs2
bne x26, x8, some_label_for_btype_123472040461319435100 # perform operation 
addi x0, x1, 1
some_label_for_btype_123472040461319435100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x867e24c561749877 # initialize rs1
li x8, 0x867e24c561749877 # initialize rs2
bne x26, x8, some_label_for_btype_123472040461319435101 # perform operation 
addi x0, x1, 1
some_label_for_btype_123472040461319435101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x21, 0x724fce25bdb4a028 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000ffffffff # initialize rs1
li x10, 0xa0bda8156a36f0a6 # initialize rs2
bne x28, x10, some_label_for_btype_85647117560355806530 # perform operation 
addi x0, x1, 1
some_label_for_btype_85647117560355806530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xa0bda8156a36f0a6 # initialize rs1
li x10, 0xa0bda8156a36f0a6 # initialize rs2
bne x28, x10, some_label_for_btype_85647117560355806531 # perform operation 
addi x0, x1, 1
some_label_for_btype_85647117560355806531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x10, 0x95f89403827d7f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000000fffffffe # initialize rs1
li x18, 0x1f23f384d4201d6c # initialize rs2
bne x14, x18, some_label_for_btype_135616284228053333590 # perform operation 
addi x0, x1, 1
some_label_for_btype_135616284228053333590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x1f23f384d4201d6c # initialize rs1
li x18, 0x1f23f384d4201d6c # initialize rs2
bne x14, x18, some_label_for_btype_135616284228053333591 # perform operation 
addi x0, x1, 1
some_label_for_btype_135616284228053333591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x12, 0x77335aeaa89b8bdc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000100000000 # initialize rs1
li x7, 0x191d8e837a24863e # initialize rs2
bne x27, x7, some_label_for_btype_41059738160700799800 # perform operation 
addi x0, x1, 1
some_label_for_btype_41059738160700799800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x191d8e837a24863e # initialize rs1
li x7, 0x191d8e837a24863e # initialize rs2
bne x27, x7, some_label_for_btype_41059738160700799801 # perform operation 
addi x0, x1, 1
some_label_for_btype_41059738160700799801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x18, 0xf18f0037258208a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000100000001 # initialize rs1
li x26, 0x6e5306c7221dce9e # initialize rs2
bne x12, x26, some_label_for_btype_7785764290896750410 # perform operation 
addi x0, x1, 1
some_label_for_btype_7785764290896750410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x6e5306c7221dce9e # initialize rs1
li x26, 0x6e5306c7221dce9e # initialize rs2
bne x12, x26, some_label_for_btype_7785764290896750411 # perform operation 
addi x0, x1, 1
some_label_for_btype_7785764290896750411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x31, 0x2d14a80bc0bd8781 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xa8d8c1d8ca1e80c3 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bne x20, x8, some_label_for_btype_49937833175638259770 # perform operation 
addi x0, x1, 1
some_label_for_btype_49937833175638259770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bne x20, x8, some_label_for_btype_49937833175638259771 # perform operation 
addi x0, x1, 1
some_label_for_btype_49937833175638259771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x12, 0xba719d66c20ae9cf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x5affbae1413810b8 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
bne x26, x14, some_label_for_btype_97921867739520134560 # perform operation 
addi x0, x1, 1
some_label_for_btype_97921867739520134560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
bne x26, x14, some_label_for_btype_97921867739520134561 # perform operation 
addi x0, x1, 1
some_label_for_btype_97921867739520134561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x16, 0xa31af7e5e0ca830e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x909ef29840411884 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
bne x21, x7, some_label_for_btype_112933901196652124890 # perform operation 
addi x0, x1, 1
some_label_for_btype_112933901196652124890:
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
bne x21, x7, some_label_for_btype_112933901196652124891 # perform operation 
addi x0, x1, 1
some_label_for_btype_112933901196652124891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x5, 0xc1ff315e98e1a915 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x058895701b8826d4 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
bne x9, x22, some_label_for_btype_76144998366531747460 # perform operation 
addi x0, x1, 1
some_label_for_btype_76144998366531747460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x8000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
bne x9, x22, some_label_for_btype_76144998366531747461 # perform operation 
addi x0, x1, 1
some_label_for_btype_76144998366531747461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x27, 0x596150ed6e766426 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x2323b39c314c2bc7 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
bne x2, x8, some_label_for_btype_92931928040814500140 # perform operation 
addi x0, x1, 1
some_label_for_btype_92931928040814500140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x8000000000000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
bne x2, x8, some_label_for_btype_92931928040814500141 # perform operation 
addi x0, x1, 1
some_label_for_btype_92931928040814500141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x1, 0x0be3f217a77db711 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x9d46c6b399c66910 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
bne x25, x21, some_label_for_btype_81458669879917456130 # perform operation 
addi x0, x1, 1
some_label_for_btype_81458669879917456130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x7fffffffffffffff # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
bne x25, x21, some_label_for_btype_81458669879917456131 # perform operation 
addi x0, x1, 1
some_label_for_btype_81458669879917456131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x15, 0xc0390ee4e64a0e04 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x9f498593cc9a3b67 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
bne x24, x14, some_label_for_btype_182947722213210225300 # perform operation 
addi x0, x1, 1
some_label_for_btype_182947722213210225300:
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
bne x24, x14, some_label_for_btype_182947722213210225301 # perform operation 
addi x0, x1, 1
some_label_for_btype_182947722213210225301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x13, 0x0e962acc93baaea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xd8c8e7ca9930d87e # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
bne x31, x6, some_label_for_btype_163379537064422353970 # perform operation 
addi x0, x1, 1
some_label_for_btype_163379537064422353970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xffffffffffffffff # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
bne x31, x6, some_label_for_btype_163379537064422353971 # perform operation 
addi x0, x1, 1
some_label_for_btype_163379537064422353971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x5, 0x470658e1183fbcaf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x34f02da1a940e08b # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
bne x10, x27, some_label_for_btype_165036950784878157870 # perform operation 
addi x0, x1, 1
some_label_for_btype_165036950784878157870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xfffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
bne x10, x27, some_label_for_btype_165036950784878157871 # perform operation 
addi x0, x1, 1
some_label_for_btype_165036950784878157871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x10, 0x0564726ea7010c9b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x8f4dd5cb1173d96e # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
bne x29, x31, some_label_for_btype_160283816479422956550 # perform operation 
addi x0, x1, 1
some_label_for_btype_160283816479422956550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
bne x29, x31, some_label_for_btype_160283816479422956551 # perform operation 
addi x0, x1, 1
some_label_for_btype_160283816479422956551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0xd04141e88376bd81 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xa9d758b6627bf7b7 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x11, x17, some_label_for_btype_152363165582777661380 # perform operation 
addi x0, x1, 1
some_label_for_btype_152363165582777661380:
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
bne x11, x17, some_label_for_btype_152363165582777661381 # perform operation 
addi x0, x1, 1
some_label_for_btype_152363165582777661381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x8, 0x20f15c9dc7c6d350 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xfbc8db6892e3f3a4 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
bne x3, x20, some_label_for_btype_72846196303247712110 # perform operation 
addi x0, x1, 1
some_label_for_btype_72846196303247712110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x5555555555555555 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
bne x3, x20, some_label_for_btype_72846196303247712111 # perform operation 
addi x0, x1, 1
some_label_for_btype_72846196303247712111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x10, 0x4d41acaeca15e6a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x596de09fbf86d147 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bne x27, x12, some_label_for_btype_127589345423484530870 # perform operation 
addi x0, x1, 1
some_label_for_btype_127589345423484530870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bne x27, x12, some_label_for_btype_127589345423484530871 # perform operation 
addi x0, x1, 1
some_label_for_btype_127589345423484530871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x3, 0x4edacf03020edc15 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x16d87119e4e6e5bc # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
bne x15, x22, some_label_for_btype_8580379604449488100 # perform operation 
addi x0, x1, 1
some_label_for_btype_8580379604449488100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x00000000fffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
bne x15, x22, some_label_for_btype_8580379604449488101 # perform operation 
addi x0, x1, 1
some_label_for_btype_8580379604449488101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x28, 0xa68188cb8ec0cfd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x546588fd84e88953 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bne x3, x8, some_label_for_btype_156004017037351379810 # perform operation 
addi x0, x1, 1
some_label_for_btype_156004017037351379810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bne x3, x8, some_label_for_btype_156004017037351379811 # perform operation 
addi x0, x1, 1
some_label_for_btype_156004017037351379811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x24, 0xb1ce178d8b3ae026 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x02896ec220c868cc # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
bne x1, x11, some_label_for_btype_7922573787705757270 # perform operation 
addi x0, x1, 1
some_label_for_btype_7922573787705757270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000100000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
bne x1, x11, some_label_for_btype_7922573787705757271 # perform operation 
addi x0, x1, 1
some_label_for_btype_7922573787705757271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x26, 0x8e830b3613b77aee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
bne x17, x21, some_label_for_btype_130393911005777748290 # perform operation 
addi x0, x1, 1
some_label_for_btype_130393911005777748290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
bne x17, x21, some_label_for_btype_130393911005777748291 # perform operation 
addi x0, x1, 1
some_label_for_btype_130393911005777748291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x6, 0x6f325e1e99ffe09f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bne x27, x29, some_label_for_btype_152183165013603717570 # perform operation 
addi x0, x1, 1
some_label_for_btype_152183165013603717570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bne x27, x29, some_label_for_btype_152183165013603717571 # perform operation 
addi x0, x1, 1
some_label_for_btype_152183165013603717571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x24, 0xeb523faacb3c3bf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000000000000 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bne x21, x16, some_label_for_btype_7296036712983916240 # perform operation 
addi x0, x1, 1
some_label_for_btype_7296036712983916240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bne x21, x16, some_label_for_btype_7296036712983916241 # perform operation 
addi x0, x1, 1
some_label_for_btype_7296036712983916241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x7, 0xd363d2e29bd524d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
bne x6, x3, some_label_for_btype_88944175232525298100 # perform operation 
addi x0, x1, 1
some_label_for_btype_88944175232525298100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
bne x6, x3, some_label_for_btype_88944175232525298101 # perform operation 
addi x0, x1, 1
some_label_for_btype_88944175232525298101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x14, 0xb1abaa2b32b8b697 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x0000000000000000 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
bne x17, x22, some_label_for_btype_52270426412003738450 # perform operation 
addi x0, x1, 1
some_label_for_btype_52270426412003738450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x8000000000000001 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
bne x17, x22, some_label_for_btype_52270426412003738451 # perform operation 
addi x0, x1, 1
some_label_for_btype_52270426412003738451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x16, 0x6edac41feda19acd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x0000000000000000 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
bne x23, x31, some_label_for_btype_89900036770597368740 # perform operation 
addi x0, x1, 1
some_label_for_btype_89900036770597368740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x7fffffffffffffff # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
bne x23, x31, some_label_for_btype_89900036770597368741 # perform operation 
addi x0, x1, 1
some_label_for_btype_89900036770597368741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x27, 0x9de6f62456c27ece # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x0000000000000000 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
bne x23, x30, some_label_for_btype_166945467637418691620 # perform operation 
addi x0, x1, 1
some_label_for_btype_166945467637418691620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
bne x23, x30, some_label_for_btype_166945467637418691621 # perform operation 
addi x0, x1, 1
some_label_for_btype_166945467637418691621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x29, 0x4c22c05e0f07b715 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x0000000000000000 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
bne x5, x21, some_label_for_btype_113789514849939425620 # perform operation 
addi x0, x1, 1
some_label_for_btype_113789514849939425620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xffffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
bne x5, x21, some_label_for_btype_113789514849939425621 # perform operation 
addi x0, x1, 1
some_label_for_btype_113789514849939425621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x10, 0xaa33120aa3661ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000000000000 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
bne x4, x18, some_label_for_btype_45569213855210128840 # perform operation 
addi x0, x1, 1
some_label_for_btype_45569213855210128840:
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
bne x4, x18, some_label_for_btype_45569213855210128841 # perform operation 
addi x0, x1, 1
some_label_for_btype_45569213855210128841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x28, 0x342ba6553c3d85e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x0000000000000000 # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
bne x5, x18, some_label_for_btype_96738048478555679380 # perform operation 
addi x0, x1, 1
some_label_for_btype_96738048478555679380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
bne x5, x18, some_label_for_btype_96738048478555679381 # perform operation 
addi x0, x1, 1
some_label_for_btype_96738048478555679381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x8c4087d115de98ca # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x0000000000000000 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x23, x18, some_label_for_btype_103176387626606043120 # perform operation 
addi x0, x1, 1
some_label_for_btype_103176387626606043120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x23, x18, some_label_for_btype_103176387626606043121 # perform operation 
addi x0, x1, 1
some_label_for_btype_103176387626606043121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x5, 0xea7beb03b123ad48 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000000000000 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
bne x19, x26, some_label_for_btype_102705964552913313770 # perform operation 
addi x0, x1, 1
some_label_for_btype_102705964552913313770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x5555555555555555 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
bne x19, x26, some_label_for_btype_102705964552913313771 # perform operation 
addi x0, x1, 1
some_label_for_btype_102705964552913313771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x20, 0x9e9307ccca4ce17d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000000000000 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
bne x9, x1, some_label_for_btype_16512608782243465250 # perform operation 
addi x0, x1, 1
some_label_for_btype_16512608782243465250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x00000000ffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
bne x9, x1, some_label_for_btype_16512608782243465251 # perform operation 
addi x0, x1, 1
some_label_for_btype_16512608782243465251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x14, 0x54b2e1dcccc4b8c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x0000000000000000 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bne x23, x13, some_label_for_btype_132233416588039898910 # perform operation 
addi x0, x1, 1
some_label_for_btype_132233416588039898910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bne x23, x13, some_label_for_btype_132233416588039898911 # perform operation 
addi x0, x1, 1
some_label_for_btype_132233416588039898911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x14, 0x8957c847785efab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000000000000 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
bne x18, x22, some_label_for_btype_9127269651598502930 # perform operation 
addi x0, x1, 1
some_label_for_btype_9127269651598502930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000100000000 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
bne x18, x22, some_label_for_btype_9127269651598502931 # perform operation 
addi x0, x1, 1
some_label_for_btype_9127269651598502931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x31, 0xbe5e445ec1153039 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000000000000 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
bne x22, x20, some_label_for_btype_55970170972955047700 # perform operation 
addi x0, x1, 1
some_label_for_btype_55970170972955047700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
bne x22, x20, some_label_for_btype_55970170972955047701 # perform operation 
addi x0, x1, 1
some_label_for_btype_55970170972955047701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x9, 0x355d8a4424a7abab # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x0000000000000001 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bne x23, x7, some_label_for_btype_82927135583532317150 # perform operation 
addi x0, x1, 1
some_label_for_btype_82927135583532317150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bne x23, x7, some_label_for_btype_82927135583532317151 # perform operation 
addi x0, x1, 1
some_label_for_btype_82927135583532317151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x30, 0xd598f4976c39b96b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
bne x10, x13, some_label_for_btype_58232433433432915040 # perform operation 
addi x0, x1, 1
some_label_for_btype_58232433433432915040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
bne x10, x13, some_label_for_btype_58232433433432915041 # perform operation 
addi x0, x1, 1
some_label_for_btype_58232433433432915041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x31, 0xe0b8e48814a8ab92 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bne x3, x15, some_label_for_btype_97560784834121767800 # perform operation 
addi x0, x1, 1
some_label_for_btype_97560784834121767800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x0000000000000002 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bne x3, x15, some_label_for_btype_97560784834121767801 # perform operation 
addi x0, x1, 1
some_label_for_btype_97560784834121767801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x15, 0x96b270e023b49e4b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000000000001 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
bne x6, x23, some_label_for_btype_26751099965472820390 # perform operation 
addi x0, x1, 1
some_label_for_btype_26751099965472820390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x8000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
bne x6, x23, some_label_for_btype_26751099965472820391 # perform operation 
addi x0, x1, 1
some_label_for_btype_26751099965472820391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x22, 0x81548cedbab17aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
bne x21, x3, some_label_for_btype_41765872108506988180 # perform operation 
addi x0, x1, 1
some_label_for_btype_41765872108506988180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x8000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
bne x21, x3, some_label_for_btype_41765872108506988181 # perform operation 
addi x0, x1, 1
some_label_for_btype_41765872108506988181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x21, 0x813b4a87ea15a79a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000000000001 # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
bne x22, x4, some_label_for_btype_128311235371241473050 # perform operation 
addi x0, x1, 1
some_label_for_btype_128311235371241473050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x7fffffffffffffff # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
bne x22, x4, some_label_for_btype_128311235371241473051 # perform operation 
addi x0, x1, 1
some_label_for_btype_128311235371241473051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x23, 0x0d3e35f7b1d85b56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0000000000000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
bne x10, x17, some_label_for_btype_64643193716169382940 # perform operation 
addi x0, x1, 1
some_label_for_btype_64643193716169382940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x7ffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
bne x10, x17, some_label_for_btype_64643193716169382941 # perform operation 
addi x0, x1, 1
some_label_for_btype_64643193716169382941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x29, 0xec50d2bd4ac3e228 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0000000000000001 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bne x15, x12, some_label_for_btype_106802076153461426460 # perform operation 
addi x0, x1, 1
some_label_for_btype_106802076153461426460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xffffffffffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bne x15, x12, some_label_for_btype_106802076153461426461 # perform operation 
addi x0, x1, 1
some_label_for_btype_106802076153461426461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x23, 0x32ebdd2e6f903acf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000000000001 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
bne x12, x31, some_label_for_btype_125478311084540890140 # perform operation 
addi x0, x1, 1
some_label_for_btype_125478311084540890140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xfffffffffffffffe # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
bne x12, x31, some_label_for_btype_125478311084540890141 # perform operation 
addi x0, x1, 1
some_label_for_btype_125478311084540890141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x12, 0xe7aeef983e7b1d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x0000000000000001 # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
bne x23, x4, some_label_for_btype_126817913247962543060 # perform operation 
addi x0, x1, 1
some_label_for_btype_126817913247962543060:
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
bne x23, x4, some_label_for_btype_126817913247962543061 # perform operation 
addi x0, x1, 1
some_label_for_btype_126817913247962543061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x6c80162d75377bae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0000000000000001 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x26, x25, some_label_for_btype_64316402652761295160 # perform operation 
addi x0, x1, 1
some_label_for_btype_64316402652761295160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x26, x25, some_label_for_btype_64316402652761295161 # perform operation 
addi x0, x1, 1
some_label_for_btype_64316402652761295161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x10, 0x37741e2704d94d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000000000001 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
bne x6, x5, some_label_for_btype_24072736336394292680 # perform operation 
addi x0, x1, 1
some_label_for_btype_24072736336394292680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x5555555555555555 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
bne x6, x5, some_label_for_btype_24072736336394292681 # perform operation 
addi x0, x1, 1
some_label_for_btype_24072736336394292681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x20, 0x88ff1f91e9953e9b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000000000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
bne x21, x19, some_label_for_btype_128592892938343798610 # perform operation 
addi x0, x1, 1
some_label_for_btype_128592892938343798610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000000ffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
bne x21, x19, some_label_for_btype_128592892938343798611 # perform operation 
addi x0, x1, 1
some_label_for_btype_128592892938343798611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x1, 0x694d16f6aaedd5c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000000000001 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
bne x19, x30, some_label_for_btype_71549125438886189290 # perform operation 
addi x0, x1, 1
some_label_for_btype_71549125438886189290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000000fffffffe # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
bne x19, x30, some_label_for_btype_71549125438886189291 # perform operation 
addi x0, x1, 1
some_label_for_btype_71549125438886189291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x29, 0xe9e0fc87a588555b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0000000000000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
bne x14, x27, some_label_for_btype_15413658926427034010 # perform operation 
addi x0, x1, 1
some_label_for_btype_15413658926427034010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000100000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
bne x14, x27, some_label_for_btype_15413658926427034011 # perform operation 
addi x0, x1, 1
some_label_for_btype_15413658926427034011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x27, 0x8cd6b8aa81bbaab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000000000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
bne x6, x29, some_label_for_btype_100625674544748183560 # perform operation 
addi x0, x1, 1
some_label_for_btype_100625674544748183560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
bne x6, x29, some_label_for_btype_100625674544748183561 # perform operation 
addi x0, x1, 1
some_label_for_btype_100625674544748183561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x12, 0x7fd3b44069b5f62e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
bne x18, x19, some_label_for_btype_50855586126457037990 # perform operation 
addi x0, x1, 1
some_label_for_btype_50855586126457037990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
bne x18, x19, some_label_for_btype_50855586126457037991 # perform operation 
addi x0, x1, 1
some_label_for_btype_50855586126457037991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x18, 0x668ce5561ce3c05e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000000000002 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bne x21, x26, some_label_for_btype_19238894163420614520 # perform operation 
addi x0, x1, 1
some_label_for_btype_19238894163420614520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bne x21, x26, some_label_for_btype_19238894163420614521 # perform operation 
addi x0, x1, 1
some_label_for_btype_19238894163420614521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x21, 0x817d32851bbbde8d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bne x22, x9, some_label_for_btype_118624265398940349080 # perform operation 
addi x0, x1, 1
some_label_for_btype_118624265398940349080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bne x22, x9, some_label_for_btype_118624265398940349081 # perform operation 
addi x0, x1, 1
some_label_for_btype_118624265398940349081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x20, 0x57bba6153103cf95 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000000000002 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
bne x6, x12, some_label_for_btype_102960677144302015720 # perform operation 
addi x0, x1, 1
some_label_for_btype_102960677144302015720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x8000000000000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
bne x6, x12, some_label_for_btype_102960677144302015721 # perform operation 
addi x0, x1, 1
some_label_for_btype_102960677144302015721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x17, 0xc4b98571dd10c660 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x0000000000000002 # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
bne x20, x4, some_label_for_btype_48269757461261455150 # perform operation 
addi x0, x1, 1
some_label_for_btype_48269757461261455150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x8000000000000001 # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
bne x20, x4, some_label_for_btype_48269757461261455151 # perform operation 
addi x0, x1, 1
some_label_for_btype_48269757461261455151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x10, 0x8a08237b3207ce24 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0000000000000002 # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
bne x30, x4, some_label_for_btype_62658553881283205640 # perform operation 
addi x0, x1, 1
some_label_for_btype_62658553881283205640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7fffffffffffffff # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
bne x30, x4, some_label_for_btype_62658553881283205641 # perform operation 
addi x0, x1, 1
some_label_for_btype_62658553881283205641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x12, 0x61f22b132c5e38ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x0000000000000002 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
bne x29, x2, some_label_for_btype_126103140016879759180 # perform operation 
addi x0, x1, 1
some_label_for_btype_126103140016879759180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
bne x29, x2, some_label_for_btype_126103140016879759181 # perform operation 
addi x0, x1, 1
some_label_for_btype_126103140016879759181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x5, 0x326915811d41fd49 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x0000000000000002 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
bne x11, x8, some_label_for_btype_112825894349574621730 # perform operation 
addi x0, x1, 1
some_label_for_btype_112825894349574621730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xffffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
bne x11, x8, some_label_for_btype_112825894349574621731 # perform operation 
addi x0, x1, 1
some_label_for_btype_112825894349574621731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x10, 0xe1ce062600ca4f9b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000000000002 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bne x27, x30, some_label_for_btype_141349912243118779210 # perform operation 
addi x0, x1, 1
some_label_for_btype_141349912243118779210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bne x27, x30, some_label_for_btype_141349912243118779211 # perform operation 
addi x0, x1, 1
some_label_for_btype_141349912243118779211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x23, 0x587158962115a65d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000000000002 # initialize rs1
li x26, 0x5bbc887763ae86f7 # initialize rs2
bne x1, x26, some_label_for_btype_46015594603687417930 # perform operation 
addi x0, x1, 1
some_label_for_btype_46015594603687417930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x5bbc887763ae86f7 # initialize rs2
bne x1, x26, some_label_for_btype_46015594603687417931 # perform operation 
addi x0, x1, 1
some_label_for_btype_46015594603687417931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x67881cab7e2509f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x0000000000000002 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x13, x26, some_label_for_btype_5667764836193669450 # perform operation 
addi x0, x1, 1
some_label_for_btype_5667764836193669450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x13, x26, some_label_for_btype_5667764836193669451 # perform operation 
addi x0, x1, 1
some_label_for_btype_5667764836193669451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x15, 0x21ff61bfe1a5fdfb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000000000002 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
bne x9, x12, some_label_for_btype_154310539465431467900 # perform operation 
addi x0, x1, 1
some_label_for_btype_154310539465431467900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x5555555555555555 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
bne x9, x12, some_label_for_btype_154310539465431467901 # perform operation 
addi x0, x1, 1
some_label_for_btype_154310539465431467901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x15, 0x14731b9f9560cbac # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000000000002 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bne x24, x17, some_label_for_btype_73588875127364510190 # perform operation 
addi x0, x1, 1
some_label_for_btype_73588875127364510190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bne x24, x17, some_label_for_btype_73588875127364510191 # perform operation 
addi x0, x1, 1
some_label_for_btype_73588875127364510191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x1, 0xcb216454f8b12f2c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000000000002 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
bne x7, x21, some_label_for_btype_107130617602661270820 # perform operation 
addi x0, x1, 1
some_label_for_btype_107130617602661270820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000000fffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
bne x7, x21, some_label_for_btype_107130617602661270821 # perform operation 
addi x0, x1, 1
some_label_for_btype_107130617602661270821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x1, 0xe83b6449b8506c8b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000000000002 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
bne x9, x10, some_label_for_btype_31853979849626286020 # perform operation 
addi x0, x1, 1
some_label_for_btype_31853979849626286020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000100000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
bne x9, x10, some_label_for_btype_31853979849626286021 # perform operation 
addi x0, x1, 1
some_label_for_btype_31853979849626286021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x27, 0x828e57ffccb7782d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0000000000000002 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bne x26, x7, some_label_for_btype_119209291125079068770 # perform operation 
addi x0, x1, 1
some_label_for_btype_119209291125079068770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bne x26, x7, some_label_for_btype_119209291125079068771 # perform operation 
addi x0, x1, 1
some_label_for_btype_119209291125079068771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x14, 0xefcf9ab5b9c0f345 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bne x23, x2, some_label_for_btype_33283150238151307390 # perform operation 
addi x0, x1, 1
some_label_for_btype_33283150238151307390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bne x23, x2, some_label_for_btype_33283150238151307391 # perform operation 
addi x0, x1, 1
some_label_for_btype_33283150238151307391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x26, 0xc16f62ba60808aa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x8000000000000000 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
bne x27, x12, some_label_for_btype_11101605659217317620 # perform operation 
addi x0, x1, 1
some_label_for_btype_11101605659217317620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
bne x27, x12, some_label_for_btype_11101605659217317621 # perform operation 
addi x0, x1, 1
some_label_for_btype_11101605659217317621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x13, 0x90159a98b7338c03 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x8000000000000000 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
bne x29, x26, some_label_for_btype_77994000546358933260 # perform operation 
addi x0, x1, 1
some_label_for_btype_77994000546358933260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x0000000000000002 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
bne x29, x26, some_label_for_btype_77994000546358933261 # perform operation 
addi x0, x1, 1
some_label_for_btype_77994000546358933261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x18, 0x10577d5a48800624 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x8000000000000000 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bne x12, x8, some_label_for_btype_166271576861173360590 # perform operation 
addi x0, x1, 1
some_label_for_btype_166271576861173360590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x8000000000000000 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bne x12, x8, some_label_for_btype_166271576861173360591 # perform operation 
addi x0, x1, 1
some_label_for_btype_166271576861173360591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x23, 0x2fdb3765e1304180 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x8000000000000000 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bne x12, x24, some_label_for_btype_111402842899905485050 # perform operation 
addi x0, x1, 1
some_label_for_btype_111402842899905485050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bne x12, x24, some_label_for_btype_111402842899905485051 # perform operation 
addi x0, x1, 1
some_label_for_btype_111402842899905485051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x15, 0xa260bc2d12cd6c98 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x8000000000000000 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
bne x25, x9, some_label_for_btype_107522536304044911000 # perform operation 
addi x0, x1, 1
some_label_for_btype_107522536304044911000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x7fffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
bne x25, x9, some_label_for_btype_107522536304044911001 # perform operation 
addi x0, x1, 1
some_label_for_btype_107522536304044911001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x27, 0x8eef8e0dc91e09da # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x8000000000000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bne x10, x22, some_label_for_btype_87193257014851497720 # perform operation 
addi x0, x1, 1
some_label_for_btype_87193257014851497720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bne x10, x22, some_label_for_btype_87193257014851497721 # perform operation 
addi x0, x1, 1
some_label_for_btype_87193257014851497721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x9, 0xb9559943ddb4e5be # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x8000000000000000 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
bne x21, x5, some_label_for_btype_26766670692056184820 # perform operation 
addi x0, x1, 1
some_label_for_btype_26766670692056184820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xffffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
bne x21, x5, some_label_for_btype_26766670692056184821 # perform operation 
addi x0, x1, 1
some_label_for_btype_26766670692056184821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x21, 0x1542261f9c689078 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x8000000000000000 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
bne x25, x7, some_label_for_btype_92104335789208668260 # perform operation 
addi x0, x1, 1
some_label_for_btype_92104335789208668260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xfffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
bne x25, x7, some_label_for_btype_92104335789208668261 # perform operation 
addi x0, x1, 1
some_label_for_btype_92104335789208668261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x16, 0xca104d3828bc836a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x8000000000000000 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
bne x26, x1, some_label_for_btype_37860874332701965950 # perform operation 
addi x0, x1, 1
some_label_for_btype_37860874332701965950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
bne x26, x1, some_label_for_btype_37860874332701965951 # perform operation 
addi x0, x1, 1
some_label_for_btype_37860874332701965951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x914c6d9f96feae68 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x8000000000000000 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x9, x15, some_label_for_btype_65888680173530124740 # perform operation 
addi x0, x1, 1
some_label_for_btype_65888680173530124740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x9, x15, some_label_for_btype_65888680173530124741 # perform operation 
addi x0, x1, 1
some_label_for_btype_65888680173530124741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x21, 0xc9761503e6cd23ae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x8000000000000000 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
bne x2, x27, some_label_for_btype_11379946068694015180 # perform operation 
addi x0, x1, 1
some_label_for_btype_11379946068694015180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
bne x2, x27, some_label_for_btype_11379946068694015181 # perform operation 
addi x0, x1, 1
some_label_for_btype_11379946068694015181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x29, 0xc82ee67cbe86eb04 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x8000000000000000 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bne x4, x31, some_label_for_btype_118671425692510287100 # perform operation 
addi x0, x1, 1
some_label_for_btype_118671425692510287100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bne x4, x31, some_label_for_btype_118671425692510287101 # perform operation 
addi x0, x1, 1
some_label_for_btype_118671425692510287101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x9, 0x45633b8e971ee8bb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x8000000000000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
bne x11, x25, some_label_for_btype_18740546355821498430 # perform operation 
addi x0, x1, 1
some_label_for_btype_18740546355821498430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x00000000fffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
bne x11, x25, some_label_for_btype_18740546355821498431 # perform operation 
addi x0, x1, 1
some_label_for_btype_18740546355821498431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x13, 0x94caf5e47cd9a05f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x8000000000000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bne x9, x17, some_label_for_btype_81163987631055200260 # perform operation 
addi x0, x1, 1
some_label_for_btype_81163987631055200260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000100000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bne x9, x17, some_label_for_btype_81163987631055200261 # perform operation 
addi x0, x1, 1
some_label_for_btype_81163987631055200261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x5, 0x74c10def29b619a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x8000000000000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bne x29, x2, some_label_for_btype_1880058586062672230 # perform operation 
addi x0, x1, 1
some_label_for_btype_1880058586062672230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bne x29, x2, some_label_for_btype_1880058586062672231 # perform operation 
addi x0, x1, 1
some_label_for_btype_1880058586062672231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x26, 0xfe9d4c20e29396d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
bne x10, x5, some_label_for_btype_119595854553349991830 # perform operation 
addi x0, x1, 1
some_label_for_btype_119595854553349991830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
bne x10, x5, some_label_for_btype_119595854553349991831 # perform operation 
addi x0, x1, 1
some_label_for_btype_119595854553349991831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x25, 0x8290efdeaab1756c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x8000000000000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bne x2, x16, some_label_for_btype_88830409170319786570 # perform operation 
addi x0, x1, 1
some_label_for_btype_88830409170319786570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000000000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bne x2, x16, some_label_for_btype_88830409170319786571 # perform operation 
addi x0, x1, 1
some_label_for_btype_88830409170319786571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x13, 0x118572a63d5a76ae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x8000000000000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
bne x8, x20, some_label_for_btype_143206225944209334810 # perform operation 
addi x0, x1, 1
some_label_for_btype_143206225944209334810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
bne x8, x20, some_label_for_btype_143206225944209334811 # perform operation 
addi x0, x1, 1
some_label_for_btype_143206225944209334811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x11, 0xaf224a64acb499e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x8000000000000001 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
bne x22, x28, some_label_for_btype_150670444033088634490 # perform operation 
addi x0, x1, 1
some_label_for_btype_150670444033088634490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x8000000000000000 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
bne x22, x28, some_label_for_btype_150670444033088634491 # perform operation 
addi x0, x1, 1
some_label_for_btype_150670444033088634491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x22, 0x17253bf050d93188 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x8000000000000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
bne x25, x10, some_label_for_btype_66863312989008837610 # perform operation 
addi x0, x1, 1
some_label_for_btype_66863312989008837610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x8000000000000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
bne x25, x10, some_label_for_btype_66863312989008837611 # perform operation 
addi x0, x1, 1
some_label_for_btype_66863312989008837611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x21, 0xcfebf8aaa5b503d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x8000000000000001 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
bne x14, x11, some_label_for_btype_40754360847929092150 # perform operation 
addi x0, x1, 1
some_label_for_btype_40754360847929092150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x7fffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
bne x14, x11, some_label_for_btype_40754360847929092151 # perform operation 
addi x0, x1, 1
some_label_for_btype_40754360847929092151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x5, 0x6771942e486ade56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x8000000000000001 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bne x7, x10, some_label_for_btype_42187020827740208990 # perform operation 
addi x0, x1, 1
some_label_for_btype_42187020827740208990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bne x7, x10, some_label_for_btype_42187020827740208991 # perform operation 
addi x0, x1, 1
some_label_for_btype_42187020827740208991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x27, 0x12a42e5b6d5944eb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x8000000000000001 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bne x2, x11, some_label_for_btype_25308428828013776800 # perform operation 
addi x0, x1, 1
some_label_for_btype_25308428828013776800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xffffffffffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bne x2, x11, some_label_for_btype_25308428828013776801 # perform operation 
addi x0, x1, 1
some_label_for_btype_25308428828013776801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x19, 0x84ff08aa4402117b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x8000000000000001 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bne x15, x30, some_label_for_btype_180313114855994514510 # perform operation 
addi x0, x1, 1
some_label_for_btype_180313114855994514510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bne x15, x30, some_label_for_btype_180313114855994514511 # perform operation 
addi x0, x1, 1
some_label_for_btype_180313114855994514511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x1, 0xd3fa73cdae8d9c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x8000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
bne x30, x23, some_label_for_btype_150944701730233625770 # perform operation 
addi x0, x1, 1
some_label_for_btype_150944701730233625770:
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
bne x30, x23, some_label_for_btype_150944701730233625771 # perform operation 
addi x0, x1, 1
some_label_for_btype_150944701730233625771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xad0fea1c05245f7c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x8000000000000001 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x31, x23, some_label_for_btype_169574234668938841540 # perform operation 
addi x0, x1, 1
some_label_for_btype_169574234668938841540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x31, x23, some_label_for_btype_169574234668938841541 # perform operation 
addi x0, x1, 1
some_label_for_btype_169574234668938841541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x10, 0x9c2914064ef0e107 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x8000000000000001 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bne x27, x2, some_label_for_btype_163743930042552113120 # perform operation 
addi x0, x1, 1
some_label_for_btype_163743930042552113120:
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
bne x27, x2, some_label_for_btype_163743930042552113121 # perform operation 
addi x0, x1, 1
some_label_for_btype_163743930042552113121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x3, 0x13313a1e7fc575fa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x8000000000000001 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
bne x16, x8, some_label_for_btype_89743336945878623790 # perform operation 
addi x0, x1, 1
some_label_for_btype_89743336945878623790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x00000000ffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
bne x16, x8, some_label_for_btype_89743336945878623791 # perform operation 
addi x0, x1, 1
some_label_for_btype_89743336945878623791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x7, 0xab001ac9d46ff975 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x8000000000000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
bne x2, x9, some_label_for_btype_50317420877460152240 # perform operation 
addi x0, x1, 1
some_label_for_btype_50317420877460152240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
bne x2, x9, some_label_for_btype_50317420877460152241 # perform operation 
addi x0, x1, 1
some_label_for_btype_50317420877460152241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x25, 0xf7e747fb80195afc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
bne x28, x10, some_label_for_btype_18297235306452856810 # perform operation 
addi x0, x1, 1
some_label_for_btype_18297235306452856810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000100000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
bne x28, x10, some_label_for_btype_18297235306452856811 # perform operation 
addi x0, x1, 1
some_label_for_btype_18297235306452856811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x15, 0x3d9a4e662ae3d6dc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x8000000000000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
bne x20, x6, some_label_for_btype_57819954923476960630 # perform operation 
addi x0, x1, 1
some_label_for_btype_57819954923476960630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x0000000100000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
bne x20, x6, some_label_for_btype_57819954923476960631 # perform operation 
addi x0, x1, 1
some_label_for_btype_57819954923476960631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x31, 0x1336afc3c7791cba # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x7fffffffffffffff # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
bne x8, x30, some_label_for_btype_38832455368259790260 # perform operation 
addi x0, x1, 1
some_label_for_btype_38832455368259790260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000000000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
bne x8, x30, some_label_for_btype_38832455368259790261 # perform operation 
addi x0, x1, 1
some_label_for_btype_38832455368259790261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x9, 0xe71f9a33a6c1a63b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
bne x4, x20, some_label_for_btype_32889259090491699770 # perform operation 
addi x0, x1, 1
some_label_for_btype_32889259090491699770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
bne x4, x20, some_label_for_btype_32889259090491699771 # perform operation 
addi x0, x1, 1
some_label_for_btype_32889259090491699771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x5, 0xae8e6bffe59ec11e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bne x29, x16, some_label_for_btype_83593078640795892610 # perform operation 
addi x0, x1, 1
some_label_for_btype_83593078640795892610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bne x29, x16, some_label_for_btype_83593078640795892611 # perform operation 
addi x0, x1, 1
some_label_for_btype_83593078640795892611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x18, 0xa10b878ee468c2ad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x7fffffffffffffff # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
bne x25, x11, some_label_for_btype_142467807022205274930 # perform operation 
addi x0, x1, 1
some_label_for_btype_142467807022205274930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x8000000000000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
bne x25, x11, some_label_for_btype_142467807022205274931 # perform operation 
addi x0, x1, 1
some_label_for_btype_142467807022205274931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x15, 0x9c84b5b2c40dcbec # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x7fffffffffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bne x30, x19, some_label_for_btype_22124577589267303040 # perform operation 
addi x0, x1, 1
some_label_for_btype_22124577589267303040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x8000000000000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bne x30, x19, some_label_for_btype_22124577589267303041 # perform operation 
addi x0, x1, 1
some_label_for_btype_22124577589267303041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x24, 0x37fb1329398eaa16 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x7fffffffffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
bne x6, x20, some_label_for_btype_79999452607728629320 # perform operation 
addi x0, x1, 1
some_label_for_btype_79999452607728629320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x7fffffffffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
bne x6, x20, some_label_for_btype_79999452607728629321 # perform operation 
addi x0, x1, 1
some_label_for_btype_79999452607728629321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x25, 0xf7570dad4947693d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x7fffffffffffffff # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
bne x30, x18, some_label_for_btype_147773986668144636100 # perform operation 
addi x0, x1, 1
some_label_for_btype_147773986668144636100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7ffffffffffffffe # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
bne x30, x18, some_label_for_btype_147773986668144636101 # perform operation 
addi x0, x1, 1
some_label_for_btype_147773986668144636101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x17, 0xd106b5f63dc50a49 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x7fffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
bne x2, x5, some_label_for_btype_98055628920702522030 # perform operation 
addi x0, x1, 1
some_label_for_btype_98055628920702522030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xffffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
bne x2, x5, some_label_for_btype_98055628920702522031 # perform operation 
addi x0, x1, 1
some_label_for_btype_98055628920702522031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x21, 0x8f3e8f4a17aa12bd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7fffffffffffffff # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
bne x11, x5, some_label_for_btype_104494820043481804330 # perform operation 
addi x0, x1, 1
some_label_for_btype_104494820043481804330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xfffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
bne x11, x5, some_label_for_btype_104494820043481804331 # perform operation 
addi x0, x1, 1
some_label_for_btype_104494820043481804331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x31, 0x543a891dac4e3ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x7fffffffffffffff # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
bne x1, x2, some_label_for_btype_54299606680435418480 # perform operation 
addi x0, x1, 1
some_label_for_btype_54299606680435418480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
bne x1, x2, some_label_for_btype_54299606680435418481 # perform operation 
addi x0, x1, 1
some_label_for_btype_54299606680435418481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x32f6294b858477af # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x7fffffffffffffff # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x4, x27, some_label_for_btype_24232702351918812330 # perform operation 
addi x0, x1, 1
some_label_for_btype_24232702351918812330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x4, x27, some_label_for_btype_24232702351918812331 # perform operation 
addi x0, x1, 1
some_label_for_btype_24232702351918812331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x6, 0x173deb9a152b9167 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x7fffffffffffffff # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
bne x22, x1, some_label_for_btype_184093714180744210000 # perform operation 
addi x0, x1, 1
some_label_for_btype_184093714180744210000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
bne x22, x1, some_label_for_btype_184093714180744210001 # perform operation 
addi x0, x1, 1
some_label_for_btype_184093714180744210001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x11, 0xd69e0889f6d59f3c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x7fffffffffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bne x1, x23, some_label_for_btype_160662847136495064290 # perform operation 
addi x0, x1, 1
some_label_for_btype_160662847136495064290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bne x1, x23, some_label_for_btype_160662847136495064291 # perform operation 
addi x0, x1, 1
some_label_for_btype_160662847136495064291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x19, 0xbbc934c09940925a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x7fffffffffffffff # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bne x31, x16, some_label_for_btype_76640805557991740300 # perform operation 
addi x0, x1, 1
some_label_for_btype_76640805557991740300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bne x31, x16, some_label_for_btype_76640805557991740301 # perform operation 
addi x0, x1, 1
some_label_for_btype_76640805557991740301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x30, 0x2666cfb11a99b424 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bne x7, x17, some_label_for_btype_158783499646561513280 # perform operation 
addi x0, x1, 1
some_label_for_btype_158783499646561513280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000100000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bne x7, x17, some_label_for_btype_158783499646561513281 # perform operation 
addi x0, x1, 1
some_label_for_btype_158783499646561513281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x19, 0xa1cef393040d9b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x7fffffffffffffff # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
bne x20, x4, some_label_for_btype_47497128596481656550 # perform operation 
addi x0, x1, 1
some_label_for_btype_47497128596481656550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x0000000100000001 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
bne x20, x4, some_label_for_btype_47497128596481656551 # perform operation 
addi x0, x1, 1
some_label_for_btype_47497128596481656551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x6, 0x694dfb7e0f8d7387 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x7ffffffffffffffe # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
bne x7, x1, some_label_for_btype_96439655846630564580 # perform operation 
addi x0, x1, 1
some_label_for_btype_96439655846630564580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
bne x7, x1, some_label_for_btype_96439655846630564581 # perform operation 
addi x0, x1, 1
some_label_for_btype_96439655846630564581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x30, 0xd1d4b2ccb8074070 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bne x18, x29, some_label_for_btype_3880794308095249060 # perform operation 
addi x0, x1, 1
some_label_for_btype_3880794308095249060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bne x18, x29, some_label_for_btype_3880794308095249061 # perform operation 
addi x0, x1, 1
some_label_for_btype_3880794308095249061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x22, 0x854883cbe7bd9565 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bne x20, x21, some_label_for_btype_14090005306450571060 # perform operation 
addi x0, x1, 1
some_label_for_btype_14090005306450571060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bne x20, x21, some_label_for_btype_14090005306450571061 # perform operation 
addi x0, x1, 1
some_label_for_btype_14090005306450571061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x27, 0xb49fbd43f3ce75a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x7ffffffffffffffe # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
bne x13, x25, some_label_for_btype_79596231490115934930 # perform operation 
addi x0, x1, 1
some_label_for_btype_79596231490115934930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x8000000000000000 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
bne x13, x25, some_label_for_btype_79596231490115934931 # perform operation 
addi x0, x1, 1
some_label_for_btype_79596231490115934931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x4, 0xc743c1f50bc90635 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x7ffffffffffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
bne x12, x20, some_label_for_btype_12210879378453268620 # perform operation 
addi x0, x1, 1
some_label_for_btype_12210879378453268620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
bne x12, x20, some_label_for_btype_12210879378453268621 # perform operation 
addi x0, x1, 1
some_label_for_btype_12210879378453268621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x10, 0xacc96fe73fb032d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x7ffffffffffffffe # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bne x20, x18, some_label_for_btype_137515572073995194450 # perform operation 
addi x0, x1, 1
some_label_for_btype_137515572073995194450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x7fffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bne x20, x18, some_label_for_btype_137515572073995194451 # perform operation 
addi x0, x1, 1
some_label_for_btype_137515572073995194451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x4, 0xeac575650d41206c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bne x7, x22, some_label_for_btype_87102554028080696320 # perform operation 
addi x0, x1, 1
some_label_for_btype_87102554028080696320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bne x7, x22, some_label_for_btype_87102554028080696321 # perform operation 
addi x0, x1, 1
some_label_for_btype_87102554028080696321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x18, 0xc858e3b348aba4a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x7ffffffffffffffe # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bne x11, x15, some_label_for_btype_51803267591981657130 # perform operation 
addi x0, x1, 1
some_label_for_btype_51803267591981657130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xffffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bne x11, x15, some_label_for_btype_51803267591981657131 # perform operation 
addi x0, x1, 1
some_label_for_btype_51803267591981657131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x20, 0x45f02f24c49c68cc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x7ffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
bne x26, x24, some_label_for_btype_167423038607622305010 # perform operation 
addi x0, x1, 1
some_label_for_btype_167423038607622305010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xfffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
bne x26, x24, some_label_for_btype_167423038607622305011 # perform operation 
addi x0, x1, 1
some_label_for_btype_167423038607622305011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x7, 0x0885ef8c28528ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x7ffffffffffffffe # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
bne x26, x15, some_label_for_btype_60374668912591999330 # perform operation 
addi x0, x1, 1
some_label_for_btype_60374668912591999330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
bne x26, x15, some_label_for_btype_60374668912591999331 # perform operation 
addi x0, x1, 1
some_label_for_btype_60374668912591999331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x48c11d09fe0f801a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x7ffffffffffffffe # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x20, x23, some_label_for_btype_118770197832515285730 # perform operation 
addi x0, x1, 1
some_label_for_btype_118770197832515285730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x20, x23, some_label_for_btype_118770197832515285731 # perform operation 
addi x0, x1, 1
some_label_for_btype_118770197832515285731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x30, 0x0ba59a647b24a7da # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x7ffffffffffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
bne x7, x1, some_label_for_btype_103279888666234434230 # perform operation 
addi x0, x1, 1
some_label_for_btype_103279888666234434230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
bne x7, x1, some_label_for_btype_103279888666234434231 # perform operation 
addi x0, x1, 1
some_label_for_btype_103279888666234434231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x28, 0x8322cedfb08213e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x7ffffffffffffffe # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
bne x23, x29, some_label_for_btype_63644547428406732790 # perform operation 
addi x0, x1, 1
some_label_for_btype_63644547428406732790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000000ffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
bne x23, x29, some_label_for_btype_63644547428406732791 # perform operation 
addi x0, x1, 1
some_label_for_btype_63644547428406732791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x9, 0x3e33c8c3a4776743 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x7ffffffffffffffe # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
bne x7, x4, some_label_for_btype_102940368118854059110 # perform operation 
addi x0, x1, 1
some_label_for_btype_102940368118854059110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000000fffffffe # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
bne x7, x4, some_label_for_btype_102940368118854059111 # perform operation 
addi x0, x1, 1
some_label_for_btype_102940368118854059111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x5, 0xbf869db8e5b5c769 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7ffffffffffffffe # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
bne x29, x4, some_label_for_btype_85501244248599188470 # perform operation 
addi x0, x1, 1
some_label_for_btype_85501244248599188470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x0000000100000000 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
bne x29, x4, some_label_for_btype_85501244248599188471 # perform operation 
addi x0, x1, 1
some_label_for_btype_85501244248599188471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x23, 0xe5890e487fb6bb51 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
bne x15, x30, some_label_for_btype_112400926911402896940 # perform operation 
addi x0, x1, 1
some_label_for_btype_112400926911402896940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000100000001 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
bne x15, x30, some_label_for_btype_112400926911402896941 # perform operation 
addi x0, x1, 1
some_label_for_btype_112400926911402896941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x12, 0xd80c90d0d3dcf45f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
bne x17, x21, some_label_for_btype_80835448250556146630 # perform operation 
addi x0, x1, 1
some_label_for_btype_80835448250556146630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
bne x17, x21, some_label_for_btype_80835448250556146631 # perform operation 
addi x0, x1, 1
some_label_for_btype_80835448250556146631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x7, 0x98856c907cda9e83 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xffffffffffffffff # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
bne x31, x13, some_label_for_btype_104184640704302749130 # perform operation 
addi x0, x1, 1
some_label_for_btype_104184640704302749130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
bne x31, x13, some_label_for_btype_104184640704302749131 # perform operation 
addi x0, x1, 1
some_label_for_btype_104184640704302749131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x24, 0xff912574fddfb9be # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bne x14, x17, some_label_for_btype_95721253007445844340 # perform operation 
addi x0, x1, 1
some_label_for_btype_95721253007445844340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bne x14, x17, some_label_for_btype_95721253007445844341 # perform operation 
addi x0, x1, 1
some_label_for_btype_95721253007445844341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x3, 0xb70a80f9690cb20d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xffffffffffffffff # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bne x14, x5, some_label_for_btype_174595136594180525500 # perform operation 
addi x0, x1, 1
some_label_for_btype_174595136594180525500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x8000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bne x14, x5, some_label_for_btype_174595136594180525501 # perform operation 
addi x0, x1, 1
some_label_for_btype_174595136594180525501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x8, 0xc1f010bfc416fd49 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
bne x16, x21, some_label_for_btype_20823905827372250600 # perform operation 
addi x0, x1, 1
some_label_for_btype_20823905827372250600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x8000000000000001 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
bne x16, x21, some_label_for_btype_20823905827372250601 # perform operation 
addi x0, x1, 1
some_label_for_btype_20823905827372250601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x10, 0x9e6268352979295e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xffffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
bne x9, x24, some_label_for_btype_141959411932630969060 # perform operation 
addi x0, x1, 1
some_label_for_btype_141959411932630969060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x7fffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
bne x9, x24, some_label_for_btype_141959411932630969061 # perform operation 
addi x0, x1, 1
some_label_for_btype_141959411932630969061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x7, 0x16faeb16c80c7cce # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xffffffffffffffff # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
bne x4, x19, some_label_for_btype_2672680724399647460 # perform operation 
addi x0, x1, 1
some_label_for_btype_2672680724399647460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x7ffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
bne x4, x19, some_label_for_btype_2672680724399647461 # perform operation 
addi x0, x1, 1
some_label_for_btype_2672680724399647461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x16, 0x043b6f8e05f0b43a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xffffffffffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bne x10, x14, some_label_for_btype_127760308451274812490 # perform operation 
addi x0, x1, 1
some_label_for_btype_127760308451274812490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xffffffffffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bne x10, x14, some_label_for_btype_127760308451274812491 # perform operation 
addi x0, x1, 1
some_label_for_btype_127760308451274812491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0x413c8474795961ca # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xffffffffffffffff # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
bne x4, x3, some_label_for_btype_1283178626507689130 # perform operation 
addi x0, x1, 1
some_label_for_btype_1283178626507689130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xfffffffffffffffe # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
bne x4, x3, some_label_for_btype_1283178626507689131 # perform operation 
addi x0, x1, 1
some_label_for_btype_1283178626507689131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x27, 0x383f1aab6d0b71bf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xffffffffffffffff # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
bne x10, x12, some_label_for_btype_115937156512380088780 # perform operation 
addi x0, x1, 1
some_label_for_btype_115937156512380088780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
bne x10, x12, some_label_for_btype_115937156512380088781 # perform operation 
addi x0, x1, 1
some_label_for_btype_115937156512380088781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x1c279ec84b8ec6c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xffffffffffffffff # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x9, x30, some_label_for_btype_44587440920344951390 # perform operation 
addi x0, x1, 1
some_label_for_btype_44587440920344951390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x9, x30, some_label_for_btype_44587440920344951391 # perform operation 
addi x0, x1, 1
some_label_for_btype_44587440920344951391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x21, 0x212de68845dd55fb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xffffffffffffffff # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bne x26, x2, some_label_for_btype_52055997771259726520 # perform operation 
addi x0, x1, 1
some_label_for_btype_52055997771259726520:
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
bne x26, x2, some_label_for_btype_52055997771259726521 # perform operation 
addi x0, x1, 1
some_label_for_btype_52055997771259726521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x17, 0x8dc6e5aa2c55c540 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
bne x23, x21, some_label_for_btype_42022498094611667030 # perform operation 
addi x0, x1, 1
some_label_for_btype_42022498094611667030:
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
bne x23, x21, some_label_for_btype_42022498094611667031 # perform operation 
addi x0, x1, 1
some_label_for_btype_42022498094611667031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x9, 0xd07f3eab64697d5a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xffffffffffffffff # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bne x17, x11, some_label_for_btype_106308089550427814510 # perform operation 
addi x0, x1, 1
some_label_for_btype_106308089550427814510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bne x17, x11, some_label_for_btype_106308089550427814511 # perform operation 
addi x0, x1, 1
some_label_for_btype_106308089550427814511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x9, 0x52442d30e9d527c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
bne x16, x19, some_label_for_btype_54985097813992118060 # perform operation 
addi x0, x1, 1
some_label_for_btype_54985097813992118060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0000000100000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
bne x16, x19, some_label_for_btype_54985097813992118061 # perform operation 
addi x0, x1, 1
some_label_for_btype_54985097813992118061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x19, 0xeeabaef845ea5398 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bne x23, x2, some_label_for_btype_165479007331366421320 # perform operation 
addi x0, x1, 1
some_label_for_btype_165479007331366421320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bne x23, x2, some_label_for_btype_165479007331366421321 # perform operation 
addi x0, x1, 1
some_label_for_btype_165479007331366421321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x1, 0xfb0796f711969d1c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
bne x27, x16, some_label_for_btype_92282982785979459690 # perform operation 
addi x0, x1, 1
some_label_for_btype_92282982785979459690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000000000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
bne x27, x16, some_label_for_btype_92282982785979459691 # perform operation 
addi x0, x1, 1
some_label_for_btype_92282982785979459691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x1, 0x56bbe5e9d0c5d29e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
bne x21, x17, some_label_for_btype_158450824537836650230 # perform operation 
addi x0, x1, 1
some_label_for_btype_158450824537836650230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
bne x21, x17, some_label_for_btype_158450824537836650231 # perform operation 
addi x0, x1, 1
some_label_for_btype_158450824537836650231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x10, 0xe69944d82167aa9e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
bne x22, x28, some_label_for_btype_63716920429123378540 # perform operation 
addi x0, x1, 1
some_label_for_btype_63716920429123378540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
bne x22, x28, some_label_for_btype_63716920429123378541 # perform operation 
addi x0, x1, 1
some_label_for_btype_63716920429123378541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x23, 0xd55691ef3380bcd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xfffffffffffffffe # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bne x12, x16, some_label_for_btype_3733139565067573890 # perform operation 
addi x0, x1, 1
some_label_for_btype_3733139565067573890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bne x12, x16, some_label_for_btype_3733139565067573891 # perform operation 
addi x0, x1, 1
some_label_for_btype_3733139565067573891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x27, 0x7a6ac683ea533f99 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xfffffffffffffffe # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
bne x30, x11, some_label_for_btype_153512595781116331440 # perform operation 
addi x0, x1, 1
some_label_for_btype_153512595781116331440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x8000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
bne x30, x11, some_label_for_btype_153512595781116331441 # perform operation 
addi x0, x1, 1
some_label_for_btype_153512595781116331441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x24, 0xce4f2082f30b2d2e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xfffffffffffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
bne x19, x23, some_label_for_btype_35877859513235929310 # perform operation 
addi x0, x1, 1
some_label_for_btype_35877859513235929310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x7fffffffffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
bne x19, x23, some_label_for_btype_35877859513235929311 # perform operation 
addi x0, x1, 1
some_label_for_btype_35877859513235929311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x16, 0x0eef5ad86c0370c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xfffffffffffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
bne x11, x2, some_label_for_btype_170167193103984349770 # perform operation 
addi x0, x1, 1
some_label_for_btype_170167193103984349770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
bne x11, x2, some_label_for_btype_170167193103984349771 # perform operation 
addi x0, x1, 1
some_label_for_btype_170167193103984349771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x9, 0xd23bf7d512f2453e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xfffffffffffffffe # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
bne x10, x1, some_label_for_btype_97811295345345555510 # perform operation 
addi x0, x1, 1
some_label_for_btype_97811295345345555510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
bne x10, x1, some_label_for_btype_97811295345345555511 # perform operation 
addi x0, x1, 1
some_label_for_btype_97811295345345555511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0x587025a6bfac663f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xfffffffffffffffe # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
bne x15, x14, some_label_for_btype_125440699678075034290 # perform operation 
addi x0, x1, 1
some_label_for_btype_125440699678075034290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xfffffffffffffffe # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
bne x15, x14, some_label_for_btype_125440699678075034291 # perform operation 
addi x0, x1, 1
some_label_for_btype_125440699678075034291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x4, 0xbf86d95e05ac34f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xfffffffffffffffe # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
bne x26, x14, some_label_for_btype_7571599048191971330 # perform operation 
addi x0, x1, 1
some_label_for_btype_7571599048191971330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
bne x26, x14, some_label_for_btype_7571599048191971331 # perform operation 
addi x0, x1, 1
some_label_for_btype_7571599048191971331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xfa9fd9063378a52d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xfffffffffffffffe # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x20, x30, some_label_for_btype_136239730032694349220 # perform operation 
addi x0, x1, 1
some_label_for_btype_136239730032694349220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x20, x30, some_label_for_btype_136239730032694349221 # perform operation 
addi x0, x1, 1
some_label_for_btype_136239730032694349221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x31, 0xb1abbc08a29bfc8c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xfffffffffffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
bne x19, x24, some_label_for_btype_113309982486309924730 # perform operation 
addi x0, x1, 1
some_label_for_btype_113309982486309924730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x5555555555555555 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
bne x19, x24, some_label_for_btype_113309982486309924731 # perform operation 
addi x0, x1, 1
some_label_for_btype_113309982486309924731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x8, 0xac1f97bcb4fdf7fd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xfffffffffffffffe # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bne x24, x12, some_label_for_btype_168643605446798534190 # perform operation 
addi x0, x1, 1
some_label_for_btype_168643605446798534190:
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
bne x24, x12, some_label_for_btype_168643605446798534191 # perform operation 
addi x0, x1, 1
some_label_for_btype_168643605446798534191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x24, 0xcd1d368e52dde952 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xfffffffffffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bne x8, x15, some_label_for_btype_71742079385692511300 # perform operation 
addi x0, x1, 1
some_label_for_btype_71742079385692511300:
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
bne x8, x15, some_label_for_btype_71742079385692511301 # perform operation 
addi x0, x1, 1
some_label_for_btype_71742079385692511301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x3, 0x36ed38a7581b4970 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
bne x14, x5, some_label_for_btype_36296816892876320650 # perform operation 
addi x0, x1, 1
some_label_for_btype_36296816892876320650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000100000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
bne x14, x5, some_label_for_btype_36296816892876320651 # perform operation 
addi x0, x1, 1
some_label_for_btype_36296816892876320651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x5, 0x69d40f88e3e2f97c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
bne x3, x16, some_label_for_btype_144707211802376529090 # perform operation 
addi x0, x1, 1
some_label_for_btype_144707211802376529090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
bne x3, x16, some_label_for_btype_144707211802376529091 # perform operation 
addi x0, x1, 1
some_label_for_btype_144707211802376529091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x28, 0xe1cd134c92e6493c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bne x5, x18, some_label_for_btype_48463466658195095160 # perform operation 
addi x0, x1, 1
some_label_for_btype_48463466658195095160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bne x5, x18, some_label_for_btype_48463466658195095161 # perform operation 
addi x0, x1, 1
some_label_for_btype_48463466658195095161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x20, 0xba70175fedb2676c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
bne x26, x19, some_label_for_btype_11000263432450953960 # perform operation 
addi x0, x1, 1
some_label_for_btype_11000263432450953960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
bne x26, x19, some_label_for_btype_11000263432450953961 # perform operation 
addi x0, x1, 1
some_label_for_btype_11000263432450953961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x18, 0x544d533a77ed96b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bne x8, x29, some_label_for_btype_123566938448535381160 # perform operation 
addi x0, x1, 1
some_label_for_btype_123566938448535381160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bne x8, x29, some_label_for_btype_123566938448535381161 # perform operation 
addi x0, x1, 1
some_label_for_btype_123566938448535381161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x24, 0x63782e135b74f536 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bne x1, x19, some_label_for_btype_63526215656542797530 # perform operation 
addi x0, x1, 1
some_label_for_btype_63526215656542797530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bne x1, x19, some_label_for_btype_63526215656542797531 # perform operation 
addi x0, x1, 1
some_label_for_btype_63526215656542797531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x15, 0x8c3b4bb2c1059f16 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
bne x2, x7, some_label_for_btype_26073413970784831550 # perform operation 
addi x0, x1, 1
some_label_for_btype_26073413970784831550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
bne x2, x7, some_label_for_btype_26073413970784831551 # perform operation 
addi x0, x1, 1
some_label_for_btype_26073413970784831551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x14, 0x54671a6b7f7eced9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
bne x19, x2, some_label_for_btype_126868098719711937240 # perform operation 
addi x0, x1, 1
some_label_for_btype_126868098719711937240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x7fffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
bne x19, x2, some_label_for_btype_126868098719711937241 # perform operation 
addi x0, x1, 1
some_label_for_btype_126868098719711937241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x20, 0x8410c91d4c747e96 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
bne x22, x3, some_label_for_btype_99381330956392067020 # perform operation 
addi x0, x1, 1
some_label_for_btype_99381330956392067020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x7ffffffffffffffe # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
bne x22, x3, some_label_for_btype_99381330956392067021 # perform operation 
addi x0, x1, 1
some_label_for_btype_99381330956392067021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x11, 0x7fc9db473baa2bea # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
bne x7, x22, some_label_for_btype_15483746438025907340 # perform operation 
addi x0, x1, 1
some_label_for_btype_15483746438025907340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xffffffffffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
bne x7, x22, some_label_for_btype_15483746438025907341 # perform operation 
addi x0, x1, 1
some_label_for_btype_15483746438025907341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x7, 0xe53662b139bd0089 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bne x2, x11, some_label_for_btype_152792100122344372460 # perform operation 
addi x0, x1, 1
some_label_for_btype_152792100122344372460:
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
bne x2, x11, some_label_for_btype_152792100122344372461 # perform operation 
addi x0, x1, 1
some_label_for_btype_152792100122344372461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x11, 0x7d6d2a8f1e4dfc3b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
bne x4, x21, some_label_for_btype_44065377185559872940 # perform operation 
addi x0, x1, 1
some_label_for_btype_44065377185559872940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
bne x4, x21, some_label_for_btype_44065377185559872941 # perform operation 
addi x0, x1, 1
some_label_for_btype_44065377185559872941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x67068dc7680532be # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x15, x22, some_label_for_btype_4227208592731368140 # perform operation 
addi x0, x1, 1
some_label_for_btype_4227208592731368140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x15, x22, some_label_for_btype_4227208592731368141 # perform operation 
addi x0, x1, 1
some_label_for_btype_4227208592731368141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x21, 0x4facc1e0f6d8b32f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
bne x24, x17, some_label_for_btype_41197457377603018520 # perform operation 
addi x0, x1, 1
some_label_for_btype_41197457377603018520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5555555555555555 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
bne x24, x17, some_label_for_btype_41197457377603018521 # perform operation 
addi x0, x1, 1
some_label_for_btype_41197457377603018521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x18, 0x57517e1dea7f983e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bne x8, x30, some_label_for_btype_133635125157652267110 # perform operation 
addi x0, x1, 1
some_label_for_btype_133635125157652267110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bne x8, x30, some_label_for_btype_133635125157652267111 # perform operation 
addi x0, x1, 1
some_label_for_btype_133635125157652267111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x2, 0x5a794830ac2df918 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
bne x4, x10, some_label_for_btype_15464590282151277440 # perform operation 
addi x0, x1, 1
some_label_for_btype_15464590282151277440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x00000000fffffffe # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
bne x4, x10, some_label_for_btype_15464590282151277441 # perform operation 
addi x0, x1, 1
some_label_for_btype_15464590282151277441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x14, 0x4f03cbd3d89c3e76 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x5bbc887763ae86f7 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
bne x3, x11, some_label_for_btype_12809123173266787970 # perform operation 
addi x0, x1, 1
some_label_for_btype_12809123173266787970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
bne x3, x11, some_label_for_btype_12809123173266787971 # perform operation 
addi x0, x1, 1
some_label_for_btype_12809123173266787971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x31, 0x6513038c3d6e35c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
bne x6, x13, some_label_for_btype_10643445569875151650 # perform operation 
addi x0, x1, 1
some_label_for_btype_10643445569875151650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000100000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
bne x6, x13, some_label_for_btype_10643445569875151651 # perform operation 
addi x0, x1, 1
some_label_for_btype_10643445569875151651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x31, 0x2109b272948ce18b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bne x26, x2, some_label_for_btype_24960548141886109200 # perform operation 
addi x0, x1, 1
some_label_for_btype_24960548141886109200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bne x26, x2, some_label_for_btype_24960548141886109201 # perform operation 
addi x0, x1, 1
some_label_for_btype_24960548141886109201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x26, 0x652f6f77f8b23e1f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bne x13, x2, some_label_for_btype_180160881299342316480 # perform operation 
addi x0, x1, 1
some_label_for_btype_180160881299342316480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bne x13, x2, some_label_for_btype_180160881299342316481 # perform operation 
addi x0, x1, 1
some_label_for_btype_180160881299342316481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x19, 0x5c4955078db79610 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
bne x5, x1, some_label_for_btype_7157416250959882060 # perform operation 
addi x0, x1, 1
some_label_for_btype_7157416250959882060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
bne x5, x1, some_label_for_btype_7157416250959882061 # perform operation 
addi x0, x1, 1
some_label_for_btype_7157416250959882061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x3, 0x769a61fdec79c44d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bne x8, x26, some_label_for_btype_48982430974899589110 # perform operation 
addi x0, x1, 1
some_label_for_btype_48982430974899589110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bne x8, x26, some_label_for_btype_48982430974899589111 # perform operation 
addi x0, x1, 1
some_label_for_btype_48982430974899589111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x15, 0x869ee3febf13142d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
bne x3, x31, some_label_for_btype_45111242123509946080 # perform operation 
addi x0, x1, 1
some_label_for_btype_45111242123509946080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
bne x3, x31, some_label_for_btype_45111242123509946081 # perform operation 
addi x0, x1, 1
some_label_for_btype_45111242123509946081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x24, 0x7c307827fe525f55 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bne x20, x13, some_label_for_btype_11383134736041792890 # perform operation 
addi x0, x1, 1
some_label_for_btype_11383134736041792890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x7fffffffffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bne x20, x13, some_label_for_btype_11383134736041792891 # perform operation 
addi x0, x1, 1
some_label_for_btype_11383134736041792891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x2, 0x1578162846fdc370 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
bne x9, x17, some_label_for_btype_162750028407348595960 # perform operation 
addi x0, x1, 1
some_label_for_btype_162750028407348595960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x7ffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
bne x9, x17, some_label_for_btype_162750028407348595961 # perform operation 
addi x0, x1, 1
some_label_for_btype_162750028407348595961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x27, 0x217083692139a331 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bne x14, x15, some_label_for_btype_105568251090714180800 # perform operation 
addi x0, x1, 1
some_label_for_btype_105568251090714180800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xffffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bne x14, x15, some_label_for_btype_105568251090714180801 # perform operation 
addi x0, x1, 1
some_label_for_btype_105568251090714180801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x2, 0xdcde346805a86e73 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
bne x1, x15, some_label_for_btype_172406978415248661520 # perform operation 
addi x0, x1, 1
some_label_for_btype_172406978415248661520:
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
bne x1, x15, some_label_for_btype_172406978415248661521 # perform operation 
addi x0, x1, 1
some_label_for_btype_172406978415248661521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x18, 0x3d59a0f53cbfb0c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
bne x17, x25, some_label_for_btype_88853274700083743900 # perform operation 
addi x0, x1, 1
some_label_for_btype_88853274700083743900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
bne x17, x25, some_label_for_btype_88853274700083743901 # perform operation 
addi x0, x1, 1
some_label_for_btype_88853274700083743901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x6995f507be478dc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x12, x21, some_label_for_btype_64889502978372638460 # perform operation 
addi x0, x1, 1
some_label_for_btype_64889502978372638460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x12, x21, some_label_for_btype_64889502978372638461 # perform operation 
addi x0, x1, 1
some_label_for_btype_64889502978372638461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x26, 0x2562ac34b4dd2fda # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
bne x29, x20, some_label_for_btype_142559358737577632390 # perform operation 
addi x0, x1, 1
some_label_for_btype_142559358737577632390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x5555555555555555 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
bne x29, x20, some_label_for_btype_142559358737577632391 # perform operation 
addi x0, x1, 1
some_label_for_btype_142559358737577632391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x19, 0x9fa8af4a776ce76e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
bne x24, x4, some_label_for_btype_12300142776490184180 # perform operation 
addi x0, x1, 1
some_label_for_btype_12300142776490184180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x00000000ffffffff # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
bne x24, x4, some_label_for_btype_12300142776490184181 # perform operation 
addi x0, x1, 1
some_label_for_btype_12300142776490184181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x7, 0xf32b5a20be1f322f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
bne x13, x12, some_label_for_btype_152345902731987844670 # perform operation 
addi x0, x1, 1
some_label_for_btype_152345902731987844670:
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
bne x13, x12, some_label_for_btype_152345902731987844671 # perform operation 
addi x0, x1, 1
some_label_for_btype_152345902731987844671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x14, 0xe17040b665dc2d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
bne x21, x22, some_label_for_btype_14656009547190215210 # perform operation 
addi x0, x1, 1
some_label_for_btype_14656009547190215210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000100000000 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
bne x21, x22, some_label_for_btype_14656009547190215211 # perform operation 
addi x0, x1, 1
some_label_for_btype_14656009547190215211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x20, 0x0643f321d98a8171 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
bne x8, x16, some_label_for_btype_92310211571970923800 # perform operation 
addi x0, x1, 1
some_label_for_btype_92310211571970923800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
bne x8, x16, some_label_for_btype_92310211571970923801 # perform operation 
addi x0, x1, 1
some_label_for_btype_92310211571970923801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x21, 0xc906f4dc2b346fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x5555555555555555 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
bne x30, x15, some_label_for_btype_79980043338838215330 # perform operation 
addi x0, x1, 1
some_label_for_btype_79980043338838215330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0000000000000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
bne x30, x15, some_label_for_btype_79980043338838215331 # perform operation 
addi x0, x1, 1
some_label_for_btype_79980043338838215331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x29, 0x26eb491de4c1123a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
bne x7, x13, some_label_for_btype_46860532474677575760 # perform operation 
addi x0, x1, 1
some_label_for_btype_46860532474677575760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
bne x7, x13, some_label_for_btype_46860532474677575761 # perform operation 
addi x0, x1, 1
some_label_for_btype_46860532474677575761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x28, 0xc1adfa288e496240 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x5555555555555555 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bne x27, x9, some_label_for_btype_52654599404593295990 # perform operation 
addi x0, x1, 1
some_label_for_btype_52654599404593295990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bne x27, x9, some_label_for_btype_52654599404593295991 # perform operation 
addi x0, x1, 1
some_label_for_btype_52654599404593295991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x22, 0x93864cbf1dc68665 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x5555555555555555 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
bne x24, x6, some_label_for_btype_163619231063476857930 # perform operation 
addi x0, x1, 1
some_label_for_btype_163619231063476857930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x8000000000000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
bne x24, x6, some_label_for_btype_163619231063476857931 # perform operation 
addi x0, x1, 1
some_label_for_btype_163619231063476857931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x6, 0x1fe9ba987b18f437 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x5555555555555555 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bne x17, x24, some_label_for_btype_160399732970223107720 # perform operation 
addi x0, x1, 1
some_label_for_btype_160399732970223107720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bne x17, x24, some_label_for_btype_160399732970223107721 # perform operation 
addi x0, x1, 1
some_label_for_btype_160399732970223107721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x19, 0x363b9c0bdd9fe927 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x5555555555555555 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
bne x16, x1, some_label_for_btype_174517168542746275480 # perform operation 
addi x0, x1, 1
some_label_for_btype_174517168542746275480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x7fffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
bne x16, x1, some_label_for_btype_174517168542746275481 # perform operation 
addi x0, x1, 1
some_label_for_btype_174517168542746275481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x7, 0x260bd06ae2cc9e1e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x5555555555555555 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
bne x20, x2, some_label_for_btype_46897597957409373970 # perform operation 
addi x0, x1, 1
some_label_for_btype_46897597957409373970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
bne x20, x2, some_label_for_btype_46897597957409373971 # perform operation 
addi x0, x1, 1
some_label_for_btype_46897597957409373971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x11, 0x0e1f509d95607c41 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x5555555555555555 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bne x3, x14, some_label_for_btype_136761108117708027870 # perform operation 
addi x0, x1, 1
some_label_for_btype_136761108117708027870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xffffffffffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bne x3, x14, some_label_for_btype_136761108117708027871 # perform operation 
addi x0, x1, 1
some_label_for_btype_136761108117708027871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x9, 0x409a92ec0292c57a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x5555555555555555 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
bne x27, x24, some_label_for_btype_69380429423025579290 # perform operation 
addi x0, x1, 1
some_label_for_btype_69380429423025579290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xfffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
bne x27, x24, some_label_for_btype_69380429423025579291 # perform operation 
addi x0, x1, 1
some_label_for_btype_69380429423025579291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x6, 0xfef5a306cb140dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x5555555555555555 # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
bne x28, x2, some_label_for_btype_103901075843374273340 # perform operation 
addi x0, x1, 1
some_label_for_btype_103901075843374273340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
bne x28, x2, some_label_for_btype_103901075843374273341 # perform operation 
addi x0, x1, 1
some_label_for_btype_103901075843374273341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x63ceb77babe4850a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x5555555555555555 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x19, x17, some_label_for_btype_180410439254881895840 # perform operation 
addi x0, x1, 1
some_label_for_btype_180410439254881895840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x19, x17, some_label_for_btype_180410439254881895841 # perform operation 
addi x0, x1, 1
some_label_for_btype_180410439254881895841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x7, 0x29af62588cde1ab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x5555555555555555 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
bne x23, x17, some_label_for_btype_40765141060649314850 # perform operation 
addi x0, x1, 1
some_label_for_btype_40765141060649314850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x5555555555555555 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
bne x23, x17, some_label_for_btype_40765141060649314851 # perform operation 
addi x0, x1, 1
some_label_for_btype_40765141060649314851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x3, 0xa057e66ee5232a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5555555555555555 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
bne x5, x25, some_label_for_btype_150387246051149546150 # perform operation 
addi x0, x1, 1
some_label_for_btype_150387246051149546150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
bne x5, x25, some_label_for_btype_150387246051149546151 # perform operation 
addi x0, x1, 1
some_label_for_btype_150387246051149546151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x28, 0xb002f0595eedfdc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x5555555555555555 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
bne x23, x14, some_label_for_btype_68655665470363944410 # perform operation 
addi x0, x1, 1
some_label_for_btype_68655665470363944410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x00000000fffffffe # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
bne x23, x14, some_label_for_btype_68655665470363944411 # perform operation 
addi x0, x1, 1
some_label_for_btype_68655665470363944411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x16, 0xb5866b5c33ca2f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x5555555555555555 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bne x29, x30, some_label_for_btype_82779596696702537460 # perform operation 
addi x0, x1, 1
some_label_for_btype_82779596696702537460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x0000000100000000 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bne x29, x30, some_label_for_btype_82779596696702537461 # perform operation 
addi x0, x1, 1
some_label_for_btype_82779596696702537461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x28, 0x3734c75d573d2c07 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x5555555555555555 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
bne x9, x8, some_label_for_btype_54949069556160900080 # perform operation 
addi x0, x1, 1
some_label_for_btype_54949069556160900080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
bne x9, x8, some_label_for_btype_54949069556160900081 # perform operation 
addi x0, x1, 1
some_label_for_btype_54949069556160900081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x26, 0x730a93529c3a6a49 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
bne x6, x12, some_label_for_btype_36890506479559870970 # perform operation 
addi x0, x1, 1
some_label_for_btype_36890506479559870970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
bne x6, x12, some_label_for_btype_36890506479559870971 # perform operation 
addi x0, x1, 1
some_label_for_btype_36890506479559870971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x30, 0x67dcccfee7e2f5a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bne x8, x11, some_label_for_btype_155697464123127290700 # perform operation 
addi x0, x1, 1
some_label_for_btype_155697464123127290700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bne x8, x11, some_label_for_btype_155697464123127290701 # perform operation 
addi x0, x1, 1
some_label_for_btype_155697464123127290701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x27, 0x75e8f58d3dbf53be # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
bne x9, x31, some_label_for_btype_91455663083622468440 # perform operation 
addi x0, x1, 1
some_label_for_btype_91455663083622468440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
bne x9, x31, some_label_for_btype_91455663083622468441 # perform operation 
addi x0, x1, 1
some_label_for_btype_91455663083622468441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x22, 0xcf102efeb3cb18fc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000000ffffffff # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
bne x13, x4, some_label_for_btype_105068981117924571840 # perform operation 
addi x0, x1, 1
some_label_for_btype_105068981117924571840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x8000000000000000 # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
bne x13, x4, some_label_for_btype_105068981117924571841 # perform operation 
addi x0, x1, 1
some_label_for_btype_105068981117924571841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x12, 0x9ebd297a0bb55a87 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x00000000ffffffff # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
bne x3, x9, some_label_for_btype_20689900937165369740 # perform operation 
addi x0, x1, 1
some_label_for_btype_20689900937165369740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x8000000000000001 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
bne x3, x9, some_label_for_btype_20689900937165369741 # perform operation 
addi x0, x1, 1
some_label_for_btype_20689900937165369741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x5, 0xe1b3e9f3190fb43a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x00000000ffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
bne x10, x7, some_label_for_btype_21192591715524238840 # perform operation 
addi x0, x1, 1
some_label_for_btype_21192591715524238840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x7fffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
bne x10, x7, some_label_for_btype_21192591715524238841 # perform operation 
addi x0, x1, 1
some_label_for_btype_21192591715524238841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x1, 0x365110682b967860 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x00000000ffffffff # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bne x7, x10, some_label_for_btype_35646180447832988710 # perform operation 
addi x0, x1, 1
some_label_for_btype_35646180447832988710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bne x7, x10, some_label_for_btype_35646180447832988711 # perform operation 
addi x0, x1, 1
some_label_for_btype_35646180447832988711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x20, 0x2b87dfdffa86fe03 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x00000000ffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bne x21, x26, some_label_for_btype_37200916406317389940 # perform operation 
addi x0, x1, 1
some_label_for_btype_37200916406317389940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xffffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bne x21, x26, some_label_for_btype_37200916406317389941 # perform operation 
addi x0, x1, 1
some_label_for_btype_37200916406317389941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x6, 0x9ebef649a2b0852b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x00000000ffffffff # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
bne x11, x24, some_label_for_btype_145387644377863632140 # perform operation 
addi x0, x1, 1
some_label_for_btype_145387644377863632140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xfffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
bne x11, x24, some_label_for_btype_145387644377863632141 # perform operation 
addi x0, x1, 1
some_label_for_btype_145387644377863632141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x3, 0x09ca8333079f2fbb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x00000000ffffffff # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
bne x23, x10, some_label_for_btype_134957672778534426820 # perform operation 
addi x0, x1, 1
some_label_for_btype_134957672778534426820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
bne x23, x10, some_label_for_btype_134957672778534426821 # perform operation 
addi x0, x1, 1
some_label_for_btype_134957672778534426821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x793e804b9a2a44fb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x00000000ffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x22, x28, some_label_for_btype_74958544091603776670 # perform operation 
addi x0, x1, 1
some_label_for_btype_74958544091603776670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x22, x28, some_label_for_btype_74958544091603776671 # perform operation 
addi x0, x1, 1
some_label_for_btype_74958544091603776671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x26, 0xf129a44980bb676d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x00000000ffffffff # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
bne x5, x7, some_label_for_btype_114228127099041228750 # perform operation 
addi x0, x1, 1
some_label_for_btype_114228127099041228750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x5555555555555555 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
bne x5, x7, some_label_for_btype_114228127099041228751 # perform operation 
addi x0, x1, 1
some_label_for_btype_114228127099041228751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x20, 0x0348409463d02d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000000ffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
bne x2, x18, some_label_for_btype_101942417354881324250 # perform operation 
addi x0, x1, 1
some_label_for_btype_101942417354881324250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x00000000ffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
bne x2, x18, some_label_for_btype_101942417354881324251 # perform operation 
addi x0, x1, 1
some_label_for_btype_101942417354881324251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x24, 0x9aed1f0aeed377e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x00000000ffffffff # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
bne x20, x21, some_label_for_btype_59251410436538048130 # perform operation 
addi x0, x1, 1
some_label_for_btype_59251410436538048130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x00000000fffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
bne x20, x21, some_label_for_btype_59251410436538048131 # perform operation 
addi x0, x1, 1
some_label_for_btype_59251410436538048131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x5, 0x0a8278a6837d3f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x00000000ffffffff # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
bne x10, x4, some_label_for_btype_81130564242491582210 # perform operation 
addi x0, x1, 1
some_label_for_btype_81130564242491582210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000100000000 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
bne x10, x4, some_label_for_btype_81130564242491582211 # perform operation 
addi x0, x1, 1
some_label_for_btype_81130564242491582211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x14, 0x821b364032446656 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
bne x21, x1, some_label_for_btype_64026180096786589220 # perform operation 
addi x0, x1, 1
some_label_for_btype_64026180096786589220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000100000001 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
bne x21, x1, some_label_for_btype_64026180096786589221 # perform operation 
addi x0, x1, 1
some_label_for_btype_64026180096786589221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x30, 0xf5c5fdda38239678 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bne x27, x6, some_label_for_btype_108396056999975301230 # perform operation 
addi x0, x1, 1
some_label_for_btype_108396056999975301230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bne x27, x6, some_label_for_btype_108396056999975301231 # perform operation 
addi x0, x1, 1
some_label_for_btype_108396056999975301231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x25, 0x1f1878f9f8a10745 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x00000000fffffffe # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bne x16, x23, some_label_for_btype_56766308896869440340 # perform operation 
addi x0, x1, 1
some_label_for_btype_56766308896869440340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bne x16, x23, some_label_for_btype_56766308896869440341 # perform operation 
addi x0, x1, 1
some_label_for_btype_56766308896869440341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x28, 0x72a8ad6b27fb593f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
bne x21, x31, some_label_for_btype_168434046297905331870 # perform operation 
addi x0, x1, 1
some_label_for_btype_168434046297905331870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
bne x21, x31, some_label_for_btype_168434046297905331871 # perform operation 
addi x0, x1, 1
some_label_for_btype_168434046297905331871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x17, 0x3546b0030b6bb71b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x00000000fffffffe # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bne x29, x8, some_label_for_btype_113977475441415732440 # perform operation 
addi x0, x1, 1
some_label_for_btype_113977475441415732440:
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
bne x29, x8, some_label_for_btype_113977475441415732441 # perform operation 
addi x0, x1, 1
some_label_for_btype_113977475441415732441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x11, 0xe3813650d32d9d03 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x00000000fffffffe # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
bne x5, x25, some_label_for_btype_48555383107401898020 # perform operation 
addi x0, x1, 1
some_label_for_btype_48555383107401898020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
bne x5, x25, some_label_for_btype_48555383107401898021 # perform operation 
addi x0, x1, 1
some_label_for_btype_48555383107401898021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x24, 0x9b347ca205c04a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000000fffffffe # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bne x30, x25, some_label_for_btype_14202096662449930350 # perform operation 
addi x0, x1, 1
some_label_for_btype_14202096662449930350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bne x30, x25, some_label_for_btype_14202096662449930351 # perform operation 
addi x0, x1, 1
some_label_for_btype_14202096662449930351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x30, 0x2c228be1f62ed376 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x00000000fffffffe # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
bne x21, x18, some_label_for_btype_18390860414032219550 # perform operation 
addi x0, x1, 1
some_label_for_btype_18390860414032219550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x7ffffffffffffffe # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
bne x21, x18, some_label_for_btype_18390860414032219551 # perform operation 
addi x0, x1, 1
some_label_for_btype_18390860414032219551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x15, 0x7acec6733828363e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000000fffffffe # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
bne x2, x19, some_label_for_btype_178907242561697749620 # perform operation 
addi x0, x1, 1
some_label_for_btype_178907242561697749620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
bne x2, x19, some_label_for_btype_178907242561697749621 # perform operation 
addi x0, x1, 1
some_label_for_btype_178907242561697749621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x31, 0x010b83fb9ea918eb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x00000000fffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
bne x24, x7, some_label_for_btype_85688925711519444770 # perform operation 
addi x0, x1, 1
some_label_for_btype_85688925711519444770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xfffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
bne x24, x7, some_label_for_btype_85688925711519444771 # perform operation 
addi x0, x1, 1
some_label_for_btype_85688925711519444771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x30, 0x193937a55664a027 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000000fffffffe # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
bne x19, x3, some_label_for_btype_89479894130342219610 # perform operation 
addi x0, x1, 1
some_label_for_btype_89479894130342219610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
bne x19, x3, some_label_for_btype_89479894130342219611 # perform operation 
addi x0, x1, 1
some_label_for_btype_89479894130342219611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x3fcd36921de21960 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x00000000fffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x10, x31, some_label_for_btype_135254399240177017700 # perform operation 
addi x0, x1, 1
some_label_for_btype_135254399240177017700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x10, x31, some_label_for_btype_135254399240177017701 # perform operation 
addi x0, x1, 1
some_label_for_btype_135254399240177017701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x17, 0xf963a76d100ce3b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x00000000fffffffe # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
bne x24, x6, some_label_for_btype_155518219625486685670 # perform operation 
addi x0, x1, 1
some_label_for_btype_155518219625486685670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5555555555555555 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
bne x24, x6, some_label_for_btype_155518219625486685671 # perform operation 
addi x0, x1, 1
some_label_for_btype_155518219625486685671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x31, 0xa7a1cf9c43e85f69 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
bne x12, x20, some_label_for_btype_110099456990523602790 # perform operation 
addi x0, x1, 1
some_label_for_btype_110099456990523602790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
bne x12, x20, some_label_for_btype_110099456990523602791 # perform operation 
addi x0, x1, 1
some_label_for_btype_110099456990523602791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x25, 0x945863e57bdb0048 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bne x11, x3, some_label_for_btype_103255221896336165050 # perform operation 
addi x0, x1, 1
some_label_for_btype_103255221896336165050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bne x11, x3, some_label_for_btype_103255221896336165051 # perform operation 
addi x0, x1, 1
some_label_for_btype_103255221896336165051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x27, 0x500ef1fb766a9a4f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000000fffffffe # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
bne x14, x1, some_label_for_btype_52130206718268243130 # perform operation 
addi x0, x1, 1
some_label_for_btype_52130206718268243130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
bne x14, x1, some_label_for_btype_52130206718268243131 # perform operation 
addi x0, x1, 1
some_label_for_btype_52130206718268243131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x24, 0xdd0dbd3979d3d99d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bne x20, x28, some_label_for_btype_129006069944796764290 # perform operation 
addi x0, x1, 1
some_label_for_btype_129006069944796764290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bne x20, x28, some_label_for_btype_129006069944796764291 # perform operation 
addi x0, x1, 1
some_label_for_btype_129006069944796764291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x23, 0xb8d97750e61f3fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
bne x18, x1, some_label_for_btype_139410113145453183490 # perform operation 
addi x0, x1, 1
some_label_for_btype_139410113145453183490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
bne x18, x1, some_label_for_btype_139410113145453183491 # perform operation 
addi x0, x1, 1
some_label_for_btype_139410113145453183491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x2, 0x2a1642ec4b0c8fe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bne x30, x1, some_label_for_btype_117619703705147309050 # perform operation 
addi x0, x1, 1
some_label_for_btype_117619703705147309050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bne x30, x1, some_label_for_btype_117619703705147309051 # perform operation 
addi x0, x1, 1
some_label_for_btype_117619703705147309051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x19, 0x816419ea61e9daa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x0000000100000000 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bne x13, x16, some_label_for_btype_159556261283380285670 # perform operation 
addi x0, x1, 1
some_label_for_btype_159556261283380285670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bne x13, x16, some_label_for_btype_159556261283380285671 # perform operation 
addi x0, x1, 1
some_label_for_btype_159556261283380285671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x29, 0x9f4da4fc23fc056a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000100000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
bne x27, x31, some_label_for_btype_128779649285093562720 # perform operation 
addi x0, x1, 1
some_label_for_btype_128779649285093562720:
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
bne x27, x31, some_label_for_btype_128779649285093562721 # perform operation 
addi x0, x1, 1
some_label_for_btype_128779649285093562721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x8, 0x4b8547bff5a8214b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x0000000100000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
bne x20, x9, some_label_for_btype_122137719561872034110 # perform operation 
addi x0, x1, 1
some_label_for_btype_122137719561872034110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x8000000000000001 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
bne x20, x9, some_label_for_btype_122137719561872034111 # perform operation 
addi x0, x1, 1
some_label_for_btype_122137719561872034111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x21, 0x6e1377770478d628 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000100000000 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bne x12, x25, some_label_for_btype_53004827066247061150 # perform operation 
addi x0, x1, 1
some_label_for_btype_53004827066247061150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bne x12, x25, some_label_for_btype_53004827066247061151 # perform operation 
addi x0, x1, 1
some_label_for_btype_53004827066247061151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x1, 0x508af3b2460b4c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x0000000100000000 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
bne x25, x16, some_label_for_btype_24240109857525348260 # perform operation 
addi x0, x1, 1
some_label_for_btype_24240109857525348260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x7ffffffffffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
bne x25, x16, some_label_for_btype_24240109857525348261 # perform operation 
addi x0, x1, 1
some_label_for_btype_24240109857525348261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x23, 0xb122640c9c3f508b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x0000000100000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
bne x11, x19, some_label_for_btype_34855342755685719180 # perform operation 
addi x0, x1, 1
some_label_for_btype_34855342755685719180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
bne x11, x19, some_label_for_btype_34855342755685719181 # perform operation 
addi x0, x1, 1
some_label_for_btype_34855342755685719181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x11, 0x64409d5f49e95d38 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000100000000 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bne x31, x22, some_label_for_btype_92751743975272185380 # perform operation 
addi x0, x1, 1
some_label_for_btype_92751743975272185380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xfffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bne x31, x22, some_label_for_btype_92751743975272185381 # perform operation 
addi x0, x1, 1
some_label_for_btype_92751743975272185381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x10, 0xba7229c2c6cc993a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000100000000 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
bne x1, x31, some_label_for_btype_142718841587336199740 # perform operation 
addi x0, x1, 1
some_label_for_btype_142718841587336199740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
bne x1, x31, some_label_for_btype_142718841587336199741 # perform operation 
addi x0, x1, 1
some_label_for_btype_142718841587336199741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x2e1246e30b2faac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000100000000 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x27, x7, some_label_for_btype_24854599083085455520 # perform operation 
addi x0, x1, 1
some_label_for_btype_24854599083085455520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x27, x7, some_label_for_btype_24854599083085455521 # perform operation 
addi x0, x1, 1
some_label_for_btype_24854599083085455521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x12, 0xb3465160c8ebb005 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000100000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bne x24, x2, some_label_for_btype_179735026180287603880 # perform operation 
addi x0, x1, 1
some_label_for_btype_179735026180287603880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5555555555555555 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bne x24, x2, some_label_for_btype_179735026180287603881 # perform operation 
addi x0, x1, 1
some_label_for_btype_179735026180287603881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x1, 0x4df690e896769f5e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x0000000100000000 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
bne x16, x25, some_label_for_btype_60082072875867334640 # perform operation 
addi x0, x1, 1
some_label_for_btype_60082072875867334640:
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
bne x16, x25, some_label_for_btype_60082072875867334641 # perform operation 
addi x0, x1, 1
some_label_for_btype_60082072875867334641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x28, 0xece659eb2fef9296 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000100000000 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
bne x19, x18, some_label_for_btype_51301529759156874600 # perform operation 
addi x0, x1, 1
some_label_for_btype_51301529759156874600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x00000000fffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
bne x19, x18, some_label_for_btype_51301529759156874601 # perform operation 
addi x0, x1, 1
some_label_for_btype_51301529759156874601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x22, 0x03fccb35ce0de1f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
bne x5, x9, some_label_for_btype_95148456862472164020 # perform operation 
addi x0, x1, 1
some_label_for_btype_95148456862472164020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
bne x5, x9, some_label_for_btype_95148456862472164021 # perform operation 
addi x0, x1, 1
some_label_for_btype_95148456862472164021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x22, 0x1497bb79107e773a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
bne x19, x8, some_label_for_btype_151119446107268575580 # perform operation 
addi x0, x1, 1
some_label_for_btype_151119446107268575580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
bne x19, x8, some_label_for_btype_151119446107268575581 # perform operation 
addi x0, x1, 1
some_label_for_btype_151119446107268575581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x26, 0xf41b9cf1fae1fe75 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000100000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bne x12, x6, some_label_for_btype_172655614997443059070 # perform operation 
addi x0, x1, 1
some_label_for_btype_172655614997443059070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bne x12, x6, some_label_for_btype_172655614997443059071 # perform operation 
addi x0, x1, 1
some_label_for_btype_172655614997443059071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x24, 0xe4b6fadad0aa9c03 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bne x17, x11, some_label_for_btype_52807215406386697490 # perform operation 
addi x0, x1, 1
some_label_for_btype_52807215406386697490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bne x17, x11, some_label_for_btype_52807215406386697491 # perform operation 
addi x0, x1, 1
some_label_for_btype_52807215406386697491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x12, 0x67c27dd059c8ad29 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000100000001 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bne x6, x21, some_label_for_btype_97135645914073813860 # perform operation 
addi x0, x1, 1
some_label_for_btype_97135645914073813860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bne x6, x21, some_label_for_btype_97135645914073813861 # perform operation 
addi x0, x1, 1
some_label_for_btype_97135645914073813861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x27, 0x238523a38647e5e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000100000001 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bne x8, x16, some_label_for_btype_13914131416718626860 # perform operation 
addi x0, x1, 1
some_label_for_btype_13914131416718626860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bne x8, x16, some_label_for_btype_13914131416718626861 # perform operation 
addi x0, x1, 1
some_label_for_btype_13914131416718626861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x25, 0x1431dbc689ad5716 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000100000001 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
bne x3, x12, some_label_for_btype_41503586827276963220 # perform operation 
addi x0, x1, 1
some_label_for_btype_41503586827276963220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x8000000000000001 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
bne x3, x12, some_label_for_btype_41503586827276963221 # perform operation 
addi x0, x1, 1
some_label_for_btype_41503586827276963221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x16, 0xb3428a43bfc3dfc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000100000001 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bne x22, x17, some_label_for_btype_28414478798095867400 # perform operation 
addi x0, x1, 1
some_label_for_btype_28414478798095867400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x7fffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bne x22, x17, some_label_for_btype_28414478798095867401 # perform operation 
addi x0, x1, 1
some_label_for_btype_28414478798095867401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x17, 0x6784c6cbdf973a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000100000001 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
bne x8, x15, some_label_for_btype_164541010650246743580 # perform operation 
addi x0, x1, 1
some_label_for_btype_164541010650246743580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x7ffffffffffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
bne x8, x15, some_label_for_btype_164541010650246743581 # perform operation 
addi x0, x1, 1
some_label_for_btype_164541010650246743581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x16, 0xbf7527597554a2a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x0000000100000001 # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
bne x20, x4, some_label_for_btype_129489906418732682730 # perform operation 
addi x0, x1, 1
some_label_for_btype_129489906418732682730:
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
bne x20, x4, some_label_for_btype_129489906418732682731 # perform operation 
addi x0, x1, 1
some_label_for_btype_129489906418732682731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x1, 0x649da5f5e6a426cd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x0000000100000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
bne x29, x23, some_label_for_btype_89347508975970209770 # perform operation 
addi x0, x1, 1
some_label_for_btype_89347508975970209770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xfffffffffffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
bne x29, x23, some_label_for_btype_89347508975970209771 # perform operation 
addi x0, x1, 1
some_label_for_btype_89347508975970209771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x28, 0x2e187e524400129a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000100000001 # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
bne x24, x9, some_label_for_btype_49749222067204419950 # perform operation 
addi x0, x1, 1
some_label_for_btype_49749222067204419950:
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
bne x24, x9, some_label_for_btype_49749222067204419951 # perform operation 
addi x0, x1, 1
some_label_for_btype_49749222067204419951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x183120f4585c8181 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000100000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x8, x29, some_label_for_btype_52328656868029678380 # perform operation 
addi x0, x1, 1
some_label_for_btype_52328656868029678380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x8, x29, some_label_for_btype_52328656868029678381 # perform operation 
addi x0, x1, 1
some_label_for_btype_52328656868029678381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x9, 0x512e720239bef034 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000100000001 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
bne x8, x25, some_label_for_btype_166457944481593925470 # perform operation 
addi x0, x1, 1
some_label_for_btype_166457944481593925470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x5555555555555555 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
bne x8, x25, some_label_for_btype_166457944481593925471 # perform operation 
addi x0, x1, 1
some_label_for_btype_166457944481593925471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x25, 0xff8b00cce787ccde # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000100000001 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
bne x8, x22, some_label_for_btype_48244530165861924590 # perform operation 
addi x0, x1, 1
some_label_for_btype_48244530165861924590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x00000000ffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
bne x8, x22, some_label_for_btype_48244530165861924591 # perform operation 
addi x0, x1, 1
some_label_for_btype_48244530165861924591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x20, 0x5e3c8f391e2c1465 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000100000001 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
bne x4, x23, some_label_for_btype_24723734941532290790 # perform operation 
addi x0, x1, 1
some_label_for_btype_24723734941532290790:
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
bne x4, x23, some_label_for_btype_24723734941532290791 # perform operation 
addi x0, x1, 1
some_label_for_btype_24723734941532290791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x3, 0x7ca30df81ca5a6cd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000100000001 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bne x4, x30, some_label_for_btype_81478905773991166430 # perform operation 
addi x0, x1, 1
some_label_for_btype_81478905773991166430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000100000000 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bne x4, x30, some_label_for_btype_81478905773991166431 # perform operation 
addi x0, x1, 1
some_label_for_btype_81478905773991166431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x9, 0xbd2db1069952f040 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
bne x6, x29, some_label_for_btype_135294665736161740590 # perform operation 
addi x0, x1, 1
some_label_for_btype_135294665736161740590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
bne x6, x29, some_label_for_btype_135294665736161740591 # perform operation 
addi x0, x1, 1
some_label_for_btype_135294665736161740591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x23, 0xbe08817710025bd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x29c23e82dd05f682 # initialize rs1
li x0, 0x4d76c99272d1765d # initialize rs2
bne x0, x0, some_label_for_btype_8590385081636491810 # perform operation 
addi x0, x1, 1
some_label_for_btype_8590385081636491810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0x4d76c99272d1765d # initialize rs1
li x0, 0x4d76c99272d1765d # initialize rs2
bne x0, x0, some_label_for_btype_8590385081636491811 # perform operation 
addi x0, x1, 1
some_label_for_btype_8590385081636491811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x16, 0x786e1a5d3f8e069f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xbc8488d21c1b2420 # initialize rs1
li x1, 0x14725b876acf0243 # initialize rs2
bne x1, x1, some_label_for_btype_176657926922710897580 # perform operation 
addi x0, x1, 1
some_label_for_btype_176657926922710897580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x14725b876acf0243 # initialize rs1
li x1, 0x14725b876acf0243 # initialize rs2
bne x1, x1, some_label_for_btype_176657926922710897581 # perform operation 
addi x0, x1, 1
some_label_for_btype_176657926922710897581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x25, 0xe5810ae0e95735ac # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x01bd0132a986368c # initialize rs1
li x2, 0xa5dbdcf1b9998365 # initialize rs2
bne x2, x2, some_label_for_btype_58374728147057676250 # perform operation 
addi x0, x1, 1
some_label_for_btype_58374728147057676250:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xa5dbdcf1b9998365 # initialize rs1
li x2, 0xa5dbdcf1b9998365 # initialize rs2
bne x2, x2, some_label_for_btype_58374728147057676251 # perform operation 
addi x0, x1, 1
some_label_for_btype_58374728147057676251:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x19, 0x65a8f2b84626fb52 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x3701c1626c5accad # initialize rs1
li x3, 0x258861e4cf84495d # initialize rs2
bne x3, x3, some_label_for_btype_153606553771737299540 # perform operation 
addi x0, x1, 1
some_label_for_btype_153606553771737299540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x258861e4cf84495d # initialize rs1
li x3, 0x258861e4cf84495d # initialize rs2
bne x3, x3, some_label_for_btype_153606553771737299541 # perform operation 
addi x0, x1, 1
some_label_for_btype_153606553771737299541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x15, 0xe5b40beb3a4e4038 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xafc59b3187ceab13 # initialize rs1
li x4, 0xbff6293ba767b953 # initialize rs2
bne x4, x4, some_label_for_btype_31387114635288644060 # perform operation 
addi x0, x1, 1
some_label_for_btype_31387114635288644060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xbff6293ba767b953 # initialize rs1
li x4, 0xbff6293ba767b953 # initialize rs2
bne x4, x4, some_label_for_btype_31387114635288644061 # perform operation 
addi x0, x1, 1
some_label_for_btype_31387114635288644061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x17, 0x85382d2d4b72080e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xf6679116c145d0c4 # initialize rs1
li x5, 0xfee2c2b5a9025793 # initialize rs2
bne x5, x5, some_label_for_btype_19802440019470680160 # perform operation 
addi x0, x1, 1
some_label_for_btype_19802440019470680160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xfee2c2b5a9025793 # initialize rs1
li x5, 0xfee2c2b5a9025793 # initialize rs2
bne x5, x5, some_label_for_btype_19802440019470680161 # perform operation 
addi x0, x1, 1
some_label_for_btype_19802440019470680161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x27, 0x38d991cd9670560a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xb2043148c0803131 # initialize rs1
li x6, 0x174efd92f9fc74ae # initialize rs2
bne x6, x6, some_label_for_btype_114964435355170830260 # perform operation 
addi x0, x1, 1
some_label_for_btype_114964435355170830260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x174efd92f9fc74ae # initialize rs1
li x6, 0x174efd92f9fc74ae # initialize rs2
bne x6, x6, some_label_for_btype_114964435355170830261 # perform operation 
addi x0, x1, 1
some_label_for_btype_114964435355170830261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x27, 0x36a7c20d4c9e0969 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x24e88ac9fbffcafe # initialize rs1
li x7, 0x6fa2b5471ee9d172 # initialize rs2
bne x7, x7, some_label_for_btype_31362393852642332710 # perform operation 
addi x0, x1, 1
some_label_for_btype_31362393852642332710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x6fa2b5471ee9d172 # initialize rs1
li x7, 0x6fa2b5471ee9d172 # initialize rs2
bne x7, x7, some_label_for_btype_31362393852642332711 # perform operation 
addi x0, x1, 1
some_label_for_btype_31362393852642332711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x29, 0x85d072116a93263f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xdc090cf02ae2dd67 # initialize rs1
li x8, 0x37ab635fb94d3d89 # initialize rs2
bne x8, x8, some_label_for_btype_28810368455087483800 # perform operation 
addi x0, x1, 1
some_label_for_btype_28810368455087483800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x37ab635fb94d3d89 # initialize rs1
li x8, 0x37ab635fb94d3d89 # initialize rs2
bne x8, x8, some_label_for_btype_28810368455087483801 # perform operation 
addi x0, x1, 1
some_label_for_btype_28810368455087483801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x28, 0x4cf34a64a5c8e2d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xecc7877d57651fb9 # initialize rs1
li x9, 0xd3a138347c6be9c5 # initialize rs2
bne x9, x9, some_label_for_btype_164615988196011070020 # perform operation 
addi x0, x1, 1
some_label_for_btype_164615988196011070020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xd3a138347c6be9c5 # initialize rs1
li x9, 0xd3a138347c6be9c5 # initialize rs2
bne x9, x9, some_label_for_btype_164615988196011070021 # perform operation 
addi x0, x1, 1
some_label_for_btype_164615988196011070021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x2, 0xd55bf12740930878 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x157ede3dc3da3e4a # initialize rs1
li x10, 0x2b362f297735008e # initialize rs2
bne x10, x10, some_label_for_btype_91258965368225355980 # perform operation 
addi x0, x1, 1
some_label_for_btype_91258965368225355980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x2b362f297735008e # initialize rs1
li x10, 0x2b362f297735008e # initialize rs2
bne x10, x10, some_label_for_btype_91258965368225355981 # perform operation 
addi x0, x1, 1
some_label_for_btype_91258965368225355981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x24, 0xa70c94e95b983b6f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xa79353b174a5e78e # initialize rs1
li x11, 0x8337f068354852c5 # initialize rs2
bne x11, x11, some_label_for_btype_68817406803036193050 # perform operation 
addi x0, x1, 1
some_label_for_btype_68817406803036193050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x8337f068354852c5 # initialize rs1
li x11, 0x8337f068354852c5 # initialize rs2
bne x11, x11, some_label_for_btype_68817406803036193051 # perform operation 
addi x0, x1, 1
some_label_for_btype_68817406803036193051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x21, 0xd07098daebe4fe46 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xfb9fc79b290c3416 # initialize rs1
li x12, 0xb4540610bdaf52e0 # initialize rs2
bne x12, x12, some_label_for_btype_152644571645171481900 # perform operation 
addi x0, x1, 1
some_label_for_btype_152644571645171481900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xb4540610bdaf52e0 # initialize rs1
li x12, 0xb4540610bdaf52e0 # initialize rs2
bne x12, x12, some_label_for_btype_152644571645171481901 # perform operation 
addi x0, x1, 1
some_label_for_btype_152644571645171481901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x9, 0x1003243f56457b0b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x51cbc0a6b16ee328 # initialize rs1
li x13, 0x56c8a8782b220db7 # initialize rs2
bne x13, x13, some_label_for_btype_137712298400629950470 # perform operation 
addi x0, x1, 1
some_label_for_btype_137712298400629950470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x56c8a8782b220db7 # initialize rs1
li x13, 0x56c8a8782b220db7 # initialize rs2
bne x13, x13, some_label_for_btype_137712298400629950471 # perform operation 
addi x0, x1, 1
some_label_for_btype_137712298400629950471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x5, 0xd57d1ae195b71c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x11430828eab4fc31 # initialize rs1
li x14, 0x8bfffd5e2f83b729 # initialize rs2
bne x14, x14, some_label_for_btype_108410702076625916360 # perform operation 
addi x0, x1, 1
some_label_for_btype_108410702076625916360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x8bfffd5e2f83b729 # initialize rs1
li x14, 0x8bfffd5e2f83b729 # initialize rs2
bne x14, x14, some_label_for_btype_108410702076625916361 # perform operation 
addi x0, x1, 1
some_label_for_btype_108410702076625916361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x10, 0x05ac25ae623bfa58 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x739b6b04cf9a8487 # initialize rs1
li x15, 0x1a2c1319d1c4c003 # initialize rs2
bne x15, x15, some_label_for_btype_6388663034962362990 # perform operation 
addi x0, x1, 1
some_label_for_btype_6388663034962362990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x1a2c1319d1c4c003 # initialize rs1
li x15, 0x1a2c1319d1c4c003 # initialize rs2
bne x15, x15, some_label_for_btype_6388663034962362991 # perform operation 
addi x0, x1, 1
some_label_for_btype_6388663034962362991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x20, 0xf353ff1f4ce6152b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xc295b3c9cd0cc940 # initialize rs1
li x16, 0xe003dd609a01916d # initialize rs2
bne x16, x16, some_label_for_btype_3022832274744850970 # perform operation 
addi x0, x1, 1
some_label_for_btype_3022832274744850970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xe003dd609a01916d # initialize rs1
li x16, 0xe003dd609a01916d # initialize rs2
bne x16, x16, some_label_for_btype_3022832274744850971 # perform operation 
addi x0, x1, 1
some_label_for_btype_3022832274744850971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x20, 0x8862b8394a013e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x23d426f690f3cb47 # initialize rs1
li x17, 0x40781ff9ffca6f47 # initialize rs2
bne x17, x17, some_label_for_btype_89643477806060244660 # perform operation 
addi x0, x1, 1
some_label_for_btype_89643477806060244660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x40781ff9ffca6f47 # initialize rs1
li x17, 0x40781ff9ffca6f47 # initialize rs2
bne x17, x17, some_label_for_btype_89643477806060244661 # perform operation 
addi x0, x1, 1
some_label_for_btype_89643477806060244661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x23, 0xe482a67a21c7d1ee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x842b170d397c6ccb # initialize rs1
li x18, 0xa5cc658fdc52e7a1 # initialize rs2
bne x18, x18, some_label_for_btype_75489727485061525170 # perform operation 
addi x0, x1, 1
some_label_for_btype_75489727485061525170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xa5cc658fdc52e7a1 # initialize rs1
li x18, 0xa5cc658fdc52e7a1 # initialize rs2
bne x18, x18, some_label_for_btype_75489727485061525171 # perform operation 
addi x0, x1, 1
some_label_for_btype_75489727485061525171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x8, 0x794592730ebc59e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x5b47bf9b934f4ebc # initialize rs1
li x19, 0x8164c0f28d9bd1d0 # initialize rs2
bne x19, x19, some_label_for_btype_72731121870910740410 # perform operation 
addi x0, x1, 1
some_label_for_btype_72731121870910740410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x8164c0f28d9bd1d0 # initialize rs1
li x19, 0x8164c0f28d9bd1d0 # initialize rs2
bne x19, x19, some_label_for_btype_72731121870910740411 # perform operation 
addi x0, x1, 1
some_label_for_btype_72731121870910740411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x12, 0xf68ea2f3b256eff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xc2cfb4ab8902324a # initialize rs1
li x20, 0x30b25f144d5fec31 # initialize rs2
bne x20, x20, some_label_for_btype_140731222413379054210 # perform operation 
addi x0, x1, 1
some_label_for_btype_140731222413379054210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x30b25f144d5fec31 # initialize rs1
li x20, 0x30b25f144d5fec31 # initialize rs2
bne x20, x20, some_label_for_btype_140731222413379054211 # perform operation 
addi x0, x1, 1
some_label_for_btype_140731222413379054211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x29, 0x3ec2fe9d1abebd23 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xcf2079be01b77834 # initialize rs1
li x21, 0xbd2fa5c0aec35b77 # initialize rs2
bne x21, x21, some_label_for_btype_31117485181428086570 # perform operation 
addi x0, x1, 1
some_label_for_btype_31117485181428086570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xbd2fa5c0aec35b77 # initialize rs1
li x21, 0xbd2fa5c0aec35b77 # initialize rs2
bne x21, x21, some_label_for_btype_31117485181428086571 # perform operation 
addi x0, x1, 1
some_label_for_btype_31117485181428086571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x27, 0x02055af9c6d4f8cf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x2fdff6e6bedddac1 # initialize rs1
li x22, 0x493f4f08ded6a1b1 # initialize rs2
bne x22, x22, some_label_for_btype_107931351900497928360 # perform operation 
addi x0, x1, 1
some_label_for_btype_107931351900497928360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x493f4f08ded6a1b1 # initialize rs1
li x22, 0x493f4f08ded6a1b1 # initialize rs2
bne x22, x22, some_label_for_btype_107931351900497928361 # perform operation 
addi x0, x1, 1
some_label_for_btype_107931351900497928361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x21, 0xd551c808cda69dff # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xb021c345c742f558 # initialize rs1
li x23, 0x664b80d7a485b5fc # initialize rs2
bne x23, x23, some_label_for_btype_152511352958293966580 # perform operation 
addi x0, x1, 1
some_label_for_btype_152511352958293966580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x664b80d7a485b5fc # initialize rs1
li x23, 0x664b80d7a485b5fc # initialize rs2
bne x23, x23, some_label_for_btype_152511352958293966581 # perform operation 
addi x0, x1, 1
some_label_for_btype_152511352958293966581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x16, 0xe97e3b824777497d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x4bc02d2cc1563257 # initialize rs1
li x24, 0xdd0933cad2419f1a # initialize rs2
bne x24, x24, some_label_for_btype_23986504397082473220 # perform operation 
addi x0, x1, 1
some_label_for_btype_23986504397082473220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xdd0933cad2419f1a # initialize rs1
li x24, 0xdd0933cad2419f1a # initialize rs2
bne x24, x24, some_label_for_btype_23986504397082473221 # perform operation 
addi x0, x1, 1
some_label_for_btype_23986504397082473221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x6, 0x2dc9977478aa57f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xd0e824793c97539a # initialize rs1
li x25, 0x86d1d3ff4ad16172 # initialize rs2
bne x25, x25, some_label_for_btype_99993866342942368010 # perform operation 
addi x0, x1, 1
some_label_for_btype_99993866342942368010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x86d1d3ff4ad16172 # initialize rs1
li x25, 0x86d1d3ff4ad16172 # initialize rs2
bne x25, x25, some_label_for_btype_99993866342942368011 # perform operation 
addi x0, x1, 1
some_label_for_btype_99993866342942368011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x8, 0xd65f2ad2a62eac8d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x024292e23431a249 # initialize rs1
li x26, 0x553185e5f4dae9bd # initialize rs2
bne x26, x26, some_label_for_btype_34808603356720015300 # perform operation 
addi x0, x1, 1
some_label_for_btype_34808603356720015300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x553185e5f4dae9bd # initialize rs1
li x26, 0x553185e5f4dae9bd # initialize rs2
bne x26, x26, some_label_for_btype_34808603356720015301 # perform operation 
addi x0, x1, 1
some_label_for_btype_34808603356720015301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x15, 0x3f85830e8bfdc356 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xcf03a4d2b84d76a2 # initialize rs1
li x27, 0x0381650cd4ad33f4 # initialize rs2
bne x27, x27, some_label_for_btype_128907941165343480640 # perform operation 
addi x0, x1, 1
some_label_for_btype_128907941165343480640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x0381650cd4ad33f4 # initialize rs1
li x27, 0x0381650cd4ad33f4 # initialize rs2
bne x27, x27, some_label_for_btype_128907941165343480641 # perform operation 
addi x0, x1, 1
some_label_for_btype_128907941165343480641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x11, 0x66f94a526bd82ad5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x82fdb4a5a81a549d # initialize rs1
li x28, 0x99e48d52858e70af # initialize rs2
bne x28, x28, some_label_for_btype_182431488857554727720 # perform operation 
addi x0, x1, 1
some_label_for_btype_182431488857554727720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x99e48d52858e70af # initialize rs1
li x28, 0x99e48d52858e70af # initialize rs2
bne x28, x28, some_label_for_btype_182431488857554727721 # perform operation 
addi x0, x1, 1
some_label_for_btype_182431488857554727721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x4, 0x6d9efb968cb04a89 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xad26e5037986d5c0 # initialize rs1
li x29, 0x1b1f52ea03f6aa36 # initialize rs2
bne x29, x29, some_label_for_btype_6110085543373100750 # perform operation 
addi x0, x1, 1
some_label_for_btype_6110085543373100750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x1b1f52ea03f6aa36 # initialize rs1
li x29, 0x1b1f52ea03f6aa36 # initialize rs2
bne x29, x29, some_label_for_btype_6110085543373100751 # perform operation 
addi x0, x1, 1
some_label_for_btype_6110085543373100751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x25, 0x59441bb6643465aa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x40f1d6aa44d29fa9 # initialize rs1
li x30, 0x2bb3cc99ea07d4bf # initialize rs2
bne x30, x30, some_label_for_btype_48537896050805474880 # perform operation 
addi x0, x1, 1
some_label_for_btype_48537896050805474880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x2bb3cc99ea07d4bf # initialize rs1
li x30, 0x2bb3cc99ea07d4bf # initialize rs2
bne x30, x30, some_label_for_btype_48537896050805474881 # perform operation 
addi x0, x1, 1
some_label_for_btype_48537896050805474881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x7, 0x6384d1d33e11d1fc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x662835356ae39124 # initialize rs1
li x31, 0xab83b5921f43ab18 # initialize rs2
bne x31, x31, some_label_for_btype_8957740838811461760 # perform operation 
addi x0, x1, 1
some_label_for_btype_8957740838811461760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xab83b5921f43ab18 # initialize rs1
li x31, 0xab83b5921f43ab18 # initialize rs2
bne x31, x31, some_label_for_btype_8957740838811461761 # perform operation 
addi x0, x1, 1
some_label_for_btype_8957740838811461761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = 0x6adbc02ee1d2ab64)
li x12, 0x3baa147f79b971c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x6adbc02ee1d2ab64 # initialize rs1
li x1, 0x5b22853274a4dc55 # initialize rs2
bne x10, x1, some_label_for_btype_14377071010846356730 # perform operation 
addi x0, x1, 1
some_label_for_btype_14377071010846356730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x5b22853274a4dc55 # initialize rs1
li x1, 0x5b22853274a4dc55 # initialize rs2
bne x10, x1, some_label_for_btype_14377071010846356731 # perform operation 
addi x0, x1, 1
some_label_for_btype_14377071010846356731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x7606c96f9897f1cb)
li x9, 0x386583e46c844a3d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x89f9369067680e35 # initialize rs1
li x27, 0x8a6b61368f08c43e # initialize rs2
bne x30, x27, some_label_for_btype_22984390735372493570 # perform operation 
addi x0, x1, 1
some_label_for_btype_22984390735372493570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x8a6b61368f08c43e # initialize rs1
li x27, 0x8a6b61368f08c43e # initialize rs2
bne x30, x27, some_label_for_btype_22984390735372493571 # perform operation 
addi x0, x1, 1
some_label_for_btype_22984390735372493571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = 0x610428a03ff333d4)
li x10, 0xe4130ff38022e152 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x89a6fc047760aeb7 # initialize rs1
li x7, 0x610428a03ff333d4 # initialize rs2
bne x2, x7, some_label_for_btype_65572413809720131280 # perform operation 
addi x0, x1, 1
some_label_for_btype_65572413809720131280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x610428a03ff333d4 # initialize rs1
li x7, 0x610428a03ff333d4 # initialize rs2
bne x2, x7, some_label_for_btype_65572413809720131281 # perform operation 
addi x0, x1, 1
some_label_for_btype_65572413809720131281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = -0x48702ab3069b0fe2)
li x1, 0x55630e3bcfbf1716 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xa6c8b1e1fe92ab43 # initialize rs1
li x29, 0xb78fd54cf964f01e # initialize rs2
bne x24, x29, some_label_for_btype_160529014790747440220 # perform operation 
addi x0, x1, 1
some_label_for_btype_160529014790747440220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xb78fd54cf964f01e # initialize rs1
li x29, 0xb78fd54cf964f01e # initialize rs2
bne x24, x29, some_label_for_btype_160529014790747440221 # perform operation 
addi x0, x1, 1
some_label_for_btype_160529014790747440221:
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
