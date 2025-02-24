///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-bge.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.463980
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x14, 0x8c81be8083342c0e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0x5b71f3604cbbde72 # initialize rs1
li x15, 0x2633efce67d52a1c # initialize rs2
bge x0, x15, some_label_for_btype_77000068734848736720 # perform operation 
addi x0, x1, 1
some_label_for_btype_77000068734848736720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0x2633efce67d52a1c # initialize rs1
li x15, 0x2633efce67d52a1c # initialize rs2
bge x0, x15, some_label_for_btype_77000068734848736721 # perform operation 
addi x0, x1, 1
some_label_for_btype_77000068734848736721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x1)
li x16, 0xe155d998ec7925eb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x64333cb58297f736 # initialize rs1
li x20, 0x9debf6431375adb7 # initialize rs2
bge x1, x20, some_label_for_btype_105827782573359010500 # perform operation 
addi x0, x1, 1
some_label_for_btype_105827782573359010500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x9debf6431375adb7 # initialize rs1
li x20, 0x9debf6431375adb7 # initialize rs2
bge x1, x20, some_label_for_btype_105827782573359010501 # perform operation 
addi x0, x1, 1
some_label_for_btype_105827782573359010501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x2)
li x17, 0x98ebe1d49af6f091 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x704447c6c8a1ea7e # initialize rs1
li x4, 0x361d6406aec4df6f # initialize rs2
bge x2, x4, some_label_for_btype_83677696346959626550 # perform operation 
addi x0, x1, 1
some_label_for_btype_83677696346959626550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x361d6406aec4df6f # initialize rs1
li x4, 0x361d6406aec4df6f # initialize rs2
bge x2, x4, some_label_for_btype_83677696346959626551 # perform operation 
addi x0, x1, 1
some_label_for_btype_83677696346959626551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x3)
li x30, 0x04e2d4d26c12ef60 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xe13b15feac7d9599 # initialize rs1
li x1, 0xaea33afc834c0328 # initialize rs2
bge x3, x1, some_label_for_btype_45816976429031571440 # perform operation 
addi x0, x1, 1
some_label_for_btype_45816976429031571440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xaea33afc834c0328 # initialize rs1
li x1, 0xaea33afc834c0328 # initialize rs2
bge x3, x1, some_label_for_btype_45816976429031571441 # perform operation 
addi x0, x1, 1
some_label_for_btype_45816976429031571441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x4)
li x11, 0x01226e3119704201 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x5e84d02e2cbf55a2 # initialize rs1
li x12, 0xdb91d9c3b4e68327 # initialize rs2
bge x4, x12, some_label_for_btype_2369377947224458720 # perform operation 
addi x0, x1, 1
some_label_for_btype_2369377947224458720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xdb91d9c3b4e68327 # initialize rs1
li x12, 0xdb91d9c3b4e68327 # initialize rs2
bge x4, x12, some_label_for_btype_2369377947224458721 # perform operation 
addi x0, x1, 1
some_label_for_btype_2369377947224458721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x5)
li x20, 0x10b5cb811c760356 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xebc75ef2044ce931 # initialize rs1
li x28, 0xa97a382fe00ea48d # initialize rs2
bge x5, x28, some_label_for_btype_9356114864030262800 # perform operation 
addi x0, x1, 1
some_label_for_btype_9356114864030262800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xa97a382fe00ea48d # initialize rs1
li x28, 0xa97a382fe00ea48d # initialize rs2
bge x5, x28, some_label_for_btype_9356114864030262801 # perform operation 
addi x0, x1, 1
some_label_for_btype_9356114864030262801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x6)
li x22, 0x0a0b17a802e00abe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xfb3ab10d8ba6e0df # initialize rs1
li x15, 0x1acaaefca7812363 # initialize rs2
bge x6, x15, some_label_for_btype_163248761929275930620 # perform operation 
addi x0, x1, 1
some_label_for_btype_163248761929275930620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x1acaaefca7812363 # initialize rs1
li x15, 0x1acaaefca7812363 # initialize rs2
bge x6, x15, some_label_for_btype_163248761929275930621 # perform operation 
addi x0, x1, 1
some_label_for_btype_163248761929275930621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x7)
li x15, 0x218e4b649abc9aee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x6edc3ad2a545a2fd # initialize rs1
li x21, 0x201853556d808d4d # initialize rs2
bge x7, x21, some_label_for_btype_132180530824520568360 # perform operation 
addi x0, x1, 1
some_label_for_btype_132180530824520568360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x201853556d808d4d # initialize rs1
li x21, 0x201853556d808d4d # initialize rs2
bge x7, x21, some_label_for_btype_132180530824520568361 # perform operation 
addi x0, x1, 1
some_label_for_btype_132180530824520568361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x8)
li x21, 0x2aa1b109f5236b35 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x4da673831506831b # initialize rs1
li x7, 0xbcbec2b325a21bf2 # initialize rs2
bge x8, x7, some_label_for_btype_89327937004392784350 # perform operation 
addi x0, x1, 1
some_label_for_btype_89327937004392784350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xbcbec2b325a21bf2 # initialize rs1
li x7, 0xbcbec2b325a21bf2 # initialize rs2
bge x8, x7, some_label_for_btype_89327937004392784351 # perform operation 
addi x0, x1, 1
some_label_for_btype_89327937004392784351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x22, 0xf2a45dc0a8409cad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xf71ad976220408fa # initialize rs1
li x11, 0x7014d1330aa15243 # initialize rs2
bge x9, x11, some_label_for_btype_87280961316109754230 # perform operation 
addi x0, x1, 1
some_label_for_btype_87280961316109754230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x7014d1330aa15243 # initialize rs1
li x11, 0x7014d1330aa15243 # initialize rs2
bge x9, x11, some_label_for_btype_87280961316109754231 # perform operation 
addi x0, x1, 1
some_label_for_btype_87280961316109754231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x21, 0xbc4c2afdd106b47c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x30b1f70c11735131 # initialize rs1
li x31, 0x13534fdf653bed27 # initialize rs2
bge x10, x31, some_label_for_btype_47450311398866543730 # perform operation 
addi x0, x1, 1
some_label_for_btype_47450311398866543730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x13534fdf653bed27 # initialize rs1
li x31, 0x13534fdf653bed27 # initialize rs2
bge x10, x31, some_label_for_btype_47450311398866543731 # perform operation 
addi x0, x1, 1
some_label_for_btype_47450311398866543731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x29, 0x12399757c17764b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xc9aac2c5a1ad8739 # initialize rs1
li x12, 0xdaf83942a195a169 # initialize rs2
bge x11, x12, some_label_for_btype_3723957141102141090 # perform operation 
addi x0, x1, 1
some_label_for_btype_3723957141102141090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0xdaf83942a195a169 # initialize rs1
li x12, 0xdaf83942a195a169 # initialize rs2
bge x11, x12, some_label_for_btype_3723957141102141091 # perform operation 
addi x0, x1, 1
some_label_for_btype_3723957141102141091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x22, 0x3f9a0975bf1be01f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x8101038645ecb792 # initialize rs1
li x5, 0x68f1414dd8135f4d # initialize rs2
bge x12, x5, some_label_for_btype_169596205762335025320 # perform operation 
addi x0, x1, 1
some_label_for_btype_169596205762335025320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x68f1414dd8135f4d # initialize rs1
li x5, 0x68f1414dd8135f4d # initialize rs2
bge x12, x5, some_label_for_btype_169596205762335025321 # perform operation 
addi x0, x1, 1
some_label_for_btype_169596205762335025321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x24, 0x80314026c7003863 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x54c0c360b1a2c8b0 # initialize rs1
li x25, 0x5471916d078533ac # initialize rs2
bge x13, x25, some_label_for_btype_42719653076099014860 # perform operation 
addi x0, x1, 1
some_label_for_btype_42719653076099014860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x5471916d078533ac # initialize rs1
li x25, 0x5471916d078533ac # initialize rs2
bge x13, x25, some_label_for_btype_42719653076099014861 # perform operation 
addi x0, x1, 1
some_label_for_btype_42719653076099014861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x16, 0x4c31fe6f356c637a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x95d089af2a206246 # initialize rs1
li x18, 0x43481ffd8ab8012d # initialize rs2
bge x14, x18, some_label_for_btype_171243943300983798620 # perform operation 
addi x0, x1, 1
some_label_for_btype_171243943300983798620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x43481ffd8ab8012d # initialize rs1
li x18, 0x43481ffd8ab8012d # initialize rs2
bge x14, x18, some_label_for_btype_171243943300983798621 # perform operation 
addi x0, x1, 1
some_label_for_btype_171243943300983798621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x21, 0xa8604d62fa6281bf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x9d4810b0344ee137 # initialize rs1
li x28, 0x471204388752d603 # initialize rs2
bge x15, x28, some_label_for_btype_145410666996609838400 # perform operation 
addi x0, x1, 1
some_label_for_btype_145410666996609838400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x471204388752d603 # initialize rs1
li x28, 0x471204388752d603 # initialize rs2
bge x15, x28, some_label_for_btype_145410666996609838401 # perform operation 
addi x0, x1, 1
some_label_for_btype_145410666996609838401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x16)
li x25, 0xc8c460cedfd4aef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x923bacfc74573bfe # initialize rs1
li x23, 0x5266441a6c34444c # initialize rs2
bge x16, x23, some_label_for_btype_144827359402462144340 # perform operation 
addi x0, x1, 1
some_label_for_btype_144827359402462144340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5266441a6c34444c # initialize rs1
li x23, 0x5266441a6c34444c # initialize rs2
bge x16, x23, some_label_for_btype_144827359402462144341 # perform operation 
addi x0, x1, 1
some_label_for_btype_144827359402462144341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x17)
li x19, 0xef8c0ef6298b636f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xb3e655cdef2f99c0 # initialize rs1
li x5, 0x5fb3e7cf554e63ad # initialize rs2
bge x17, x5, some_label_for_btype_159738286083980888070 # perform operation 
addi x0, x1, 1
some_label_for_btype_159738286083980888070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x5fb3e7cf554e63ad # initialize rs1
li x5, 0x5fb3e7cf554e63ad # initialize rs2
bge x17, x5, some_label_for_btype_159738286083980888071 # perform operation 
addi x0, x1, 1
some_label_for_btype_159738286083980888071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x18)
li x21, 0x1d7a4cc18473fdd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xd1805cbc23389ea3 # initialize rs1
li x3, 0xfdc9f92181154f12 # initialize rs2
bge x18, x3, some_label_for_btype_179054329832898938040 # perform operation 
addi x0, x1, 1
some_label_for_btype_179054329832898938040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xfdc9f92181154f12 # initialize rs1
li x3, 0xfdc9f92181154f12 # initialize rs2
bge x18, x3, some_label_for_btype_179054329832898938041 # perform operation 
addi x0, x1, 1
some_label_for_btype_179054329832898938041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x19)
li x11, 0x5193575043f7b3ee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x20881aaf4dcd724e # initialize rs1
li x21, 0x8455efe0e27eca26 # initialize rs2
bge x19, x21, some_label_for_btype_142384216532027642450 # perform operation 
addi x0, x1, 1
some_label_for_btype_142384216532027642450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x8455efe0e27eca26 # initialize rs1
li x21, 0x8455efe0e27eca26 # initialize rs2
bge x19, x21, some_label_for_btype_142384216532027642451 # perform operation 
addi x0, x1, 1
some_label_for_btype_142384216532027642451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x20)
li x25, 0x813e019a72f626c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x5a06c4f7ccff95d0 # initialize rs1
li x4, 0x31814d4a0f33a128 # initialize rs2
bge x20, x4, some_label_for_btype_139555559863626493920 # perform operation 
addi x0, x1, 1
some_label_for_btype_139555559863626493920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x31814d4a0f33a128 # initialize rs1
li x4, 0x31814d4a0f33a128 # initialize rs2
bge x20, x4, some_label_for_btype_139555559863626493921 # perform operation 
addi x0, x1, 1
some_label_for_btype_139555559863626493921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x21)
li x8, 0x986da36c06df36ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x1d08e873c7559bfc # initialize rs1
li x20, 0x140dac508276451e # initialize rs2
bge x21, x20, some_label_for_btype_149836955624941034780 # perform operation 
addi x0, x1, 1
some_label_for_btype_149836955624941034780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x140dac508276451e # initialize rs1
li x20, 0x140dac508276451e # initialize rs2
bge x21, x20, some_label_for_btype_149836955624941034781 # perform operation 
addi x0, x1, 1
some_label_for_btype_149836955624941034781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x22)
li x14, 0xf64b4abe2bccc2da # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x7b26d5d35e0454b2 # initialize rs1
li x4, 0xa4dc48cb73f405fe # initialize rs2
bge x22, x4, some_label_for_btype_164888938103576118530 # perform operation 
addi x0, x1, 1
some_label_for_btype_164888938103576118530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xa4dc48cb73f405fe # initialize rs1
li x4, 0xa4dc48cb73f405fe # initialize rs2
bge x22, x4, some_label_for_btype_164888938103576118531 # perform operation 
addi x0, x1, 1
some_label_for_btype_164888938103576118531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x23)
li x6, 0x40b494c0c026e71e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xac819890d337be67 # initialize rs1
li x15, 0x7d8f790809610460 # initialize rs2
bge x23, x15, some_label_for_btype_117253180310982113980 # perform operation 
addi x0, x1, 1
some_label_for_btype_117253180310982113980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x7d8f790809610460 # initialize rs1
li x15, 0x7d8f790809610460 # initialize rs2
bge x23, x15, some_label_for_btype_117253180310982113981 # perform operation 
addi x0, x1, 1
some_label_for_btype_117253180310982113981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x24)
li x22, 0x616c2be75ba7cb84 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xe5d4b426b4e30fce # initialize rs1
li x8, 0x301636914502de02 # initialize rs2
bge x24, x8, some_label_for_btype_44982398554821277720 # perform operation 
addi x0, x1, 1
some_label_for_btype_44982398554821277720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x301636914502de02 # initialize rs1
li x8, 0x301636914502de02 # initialize rs2
bge x24, x8, some_label_for_btype_44982398554821277721 # perform operation 
addi x0, x1, 1
some_label_for_btype_44982398554821277721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x25)
li x5, 0xe035f12147289f8d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x697798146597718c # initialize rs1
li x13, 0x8e11172c9cd4ef73 # initialize rs2
bge x25, x13, some_label_for_btype_72515317023438820230 # perform operation 
addi x0, x1, 1
some_label_for_btype_72515317023438820230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x8e11172c9cd4ef73 # initialize rs1
li x13, 0x8e11172c9cd4ef73 # initialize rs2
bge x25, x13, some_label_for_btype_72515317023438820231 # perform operation 
addi x0, x1, 1
some_label_for_btype_72515317023438820231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x26)
li x11, 0xb49900b090d58660 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x9d0f829a122f3d7b # initialize rs1
li x27, 0xce3d24db9a811f0b # initialize rs2
bge x26, x27, some_label_for_btype_168565697719415160610 # perform operation 
addi x0, x1, 1
some_label_for_btype_168565697719415160610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xce3d24db9a811f0b # initialize rs1
li x27, 0xce3d24db9a811f0b # initialize rs2
bge x26, x27, some_label_for_btype_168565697719415160611 # perform operation 
addi x0, x1, 1
some_label_for_btype_168565697719415160611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x27)
li x4, 0xe7d64c06b9b68e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xa868919bb340efc4 # initialize rs1
li x11, 0x17dca85f34c93be9 # initialize rs2
bge x27, x11, some_label_for_btype_88982437111321104230 # perform operation 
addi x0, x1, 1
some_label_for_btype_88982437111321104230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x17dca85f34c93be9 # initialize rs1
li x11, 0x17dca85f34c93be9 # initialize rs2
bge x27, x11, some_label_for_btype_88982437111321104231 # perform operation 
addi x0, x1, 1
some_label_for_btype_88982437111321104231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x28)
li x16, 0x8e1a4d5986e64c1f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xef930cd316e8b20c # initialize rs1
li x4, 0x5d55b4b6166c8a84 # initialize rs2
bge x28, x4, some_label_for_btype_25538810684447302030 # perform operation 
addi x0, x1, 1
some_label_for_btype_25538810684447302030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x5d55b4b6166c8a84 # initialize rs1
li x4, 0x5d55b4b6166c8a84 # initialize rs2
bge x28, x4, some_label_for_btype_25538810684447302031 # perform operation 
addi x0, x1, 1
some_label_for_btype_25538810684447302031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x29)
li x2, 0xcf620754faab56b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xccaccd1e3eb79d31 # initialize rs1
li x12, 0xb70a00603fc2d1e7 # initialize rs2
bge x29, x12, some_label_for_btype_111832209292626913850 # perform operation 
addi x0, x1, 1
some_label_for_btype_111832209292626913850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xb70a00603fc2d1e7 # initialize rs1
li x12, 0xb70a00603fc2d1e7 # initialize rs2
bge x29, x12, some_label_for_btype_111832209292626913851 # perform operation 
addi x0, x1, 1
some_label_for_btype_111832209292626913851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x30)
li x7, 0xc5fef817764684f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x4f54d209d272bf22 # initialize rs1
li x20, 0x483eddbdf53ae79f # initialize rs2
bge x30, x20, some_label_for_btype_66603087233280767080 # perform operation 
addi x0, x1, 1
some_label_for_btype_66603087233280767080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x483eddbdf53ae79f # initialize rs1
li x20, 0x483eddbdf53ae79f # initialize rs2
bge x30, x20, some_label_for_btype_66603087233280767081 # perform operation 
addi x0, x1, 1
some_label_for_btype_66603087233280767081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1 (Test source rs1 = x31)
li x10, 0xd8273dd749494518 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x46e88b617704e3c3 # initialize rs1
li x2, 0xa3afe2c477f6a843 # initialize rs2
bge x31, x2, some_label_for_btype_97899368216227194770 # perform operation 
addi x0, x1, 1
some_label_for_btype_97899368216227194770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xa3afe2c477f6a843 # initialize rs1
li x2, 0xa3afe2c477f6a843 # initialize rs2
bge x31, x2, some_label_for_btype_97899368216227194771 # perform operation 
addi x0, x1, 1
some_label_for_btype_97899368216227194771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x0)
li x16, 0x848e96f5da137476 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0xfe52dc5f064b1ce5 # initialize rs1
li x0, 0xb817f50d6abcd78a # initialize rs2
bge x29, x0, some_label_for_btype_165112008166312562400 # perform operation 
addi x0, x1, 1
some_label_for_btype_165112008166312562400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xb817f50d6abcd78a # initialize rs1
li x0, 0xb817f50d6abcd78a # initialize rs2
bge x29, x0, some_label_for_btype_165112008166312562401 # perform operation 
addi x0, x1, 1
some_label_for_btype_165112008166312562401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x1)
li x6, 0x9f92b1e16c6fa762 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xce78c6ac585ccbce # initialize rs1
li x1, 0x67241b0a86566b55 # initialize rs2
bge x20, x1, some_label_for_btype_42004071200911323880 # perform operation 
addi x0, x1, 1
some_label_for_btype_42004071200911323880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x67241b0a86566b55 # initialize rs1
li x1, 0x67241b0a86566b55 # initialize rs2
bge x20, x1, some_label_for_btype_42004071200911323881 # perform operation 
addi x0, x1, 1
some_label_for_btype_42004071200911323881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0x29fa5d389795745e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x1b1939f333a94af0 # initialize rs1
li x2, 0xd2e617a2d16b9177 # initialize rs2
bge x5, x2, some_label_for_btype_158188078270304538310 # perform operation 
addi x0, x1, 1
some_label_for_btype_158188078270304538310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xd2e617a2d16b9177 # initialize rs1
li x2, 0xd2e617a2d16b9177 # initialize rs2
bge x5, x2, some_label_for_btype_158188078270304538311 # perform operation 
addi x0, x1, 1
some_label_for_btype_158188078270304538311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x3)
li x5, 0x4f97ae23fed9d45c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xf997a43e41682109 # initialize rs1
li x3, 0xac354c2309b998e3 # initialize rs2
bge x20, x3, some_label_for_btype_99243819936926376800 # perform operation 
addi x0, x1, 1
some_label_for_btype_99243819936926376800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0xac354c2309b998e3 # initialize rs1
li x3, 0xac354c2309b998e3 # initialize rs2
bge x20, x3, some_label_for_btype_99243819936926376801 # perform operation 
addi x0, x1, 1
some_label_for_btype_99243819936926376801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x4)
li x24, 0x21e86cf799672894 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0xa30477b409b65953 # initialize rs1
li x4, 0x536ce1fc1443ded4 # initialize rs2
bge x6, x4, some_label_for_btype_50491647044425258650 # perform operation 
addi x0, x1, 1
some_label_for_btype_50491647044425258650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x536ce1fc1443ded4 # initialize rs1
li x4, 0x536ce1fc1443ded4 # initialize rs2
bge x6, x4, some_label_for_btype_50491647044425258651 # perform operation 
addi x0, x1, 1
some_label_for_btype_50491647044425258651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x5)
li x25, 0xd4efb46b7cf4b68d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xa1d23543756925d5 # initialize rs1
li x5, 0xb31797ac7d5ad533 # initialize rs2
bge x27, x5, some_label_for_btype_153514142684699976870 # perform operation 
addi x0, x1, 1
some_label_for_btype_153514142684699976870:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xb31797ac7d5ad533 # initialize rs1
li x5, 0xb31797ac7d5ad533 # initialize rs2
bge x27, x5, some_label_for_btype_153514142684699976871 # perform operation 
addi x0, x1, 1
some_label_for_btype_153514142684699976871:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x6)
li x31, 0xe17a48cf264e381a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xd2cae39575a7e644 # initialize rs1
li x6, 0x21483b940b812bbe # initialize rs2
bge x8, x6, some_label_for_btype_15435840681704398560 # perform operation 
addi x0, x1, 1
some_label_for_btype_15435840681704398560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x21483b940b812bbe # initialize rs1
li x6, 0x21483b940b812bbe # initialize rs2
bge x8, x6, some_label_for_btype_15435840681704398561 # perform operation 
addi x0, x1, 1
some_label_for_btype_15435840681704398561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x7)
li x15, 0xc34e38a013efab68 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x8a8110ca7de418ba # initialize rs1
li x7, 0x1cd1e0a9b59f2e75 # initialize rs2
bge x29, x7, some_label_for_btype_125861998845079213940 # perform operation 
addi x0, x1, 1
some_label_for_btype_125861998845079213940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x1cd1e0a9b59f2e75 # initialize rs1
li x7, 0x1cd1e0a9b59f2e75 # initialize rs2
bge x29, x7, some_label_for_btype_125861998845079213941 # perform operation 
addi x0, x1, 1
some_label_for_btype_125861998845079213941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x8)
li x1, 0x56c8382f3783144c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x4b49cb51da0a0f2d # initialize rs1
li x8, 0x02e7d039f3b4718f # initialize rs2
bge x2, x8, some_label_for_btype_112161441614187548740 # perform operation 
addi x0, x1, 1
some_label_for_btype_112161441614187548740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x02e7d039f3b4718f # initialize rs1
li x8, 0x02e7d039f3b4718f # initialize rs2
bge x2, x8, some_label_for_btype_112161441614187548741 # perform operation 
addi x0, x1, 1
some_label_for_btype_112161441614187548741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x9)
li x30, 0xfcb6d9320b9e3189 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0xa1f4b6cf267b4cda # initialize rs1
li x9, 0x174f9c406772ff43 # initialize rs2
bge x14, x9, some_label_for_btype_83624684893219331830 # perform operation 
addi x0, x1, 1
some_label_for_btype_83624684893219331830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x174f9c406772ff43 # initialize rs1
li x9, 0x174f9c406772ff43 # initialize rs2
bge x14, x9, some_label_for_btype_83624684893219331831 # perform operation 
addi x0, x1, 1
some_label_for_btype_83624684893219331831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x10)
li x1, 0x6407646da03608f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x57f89c8be0f11b75 # initialize rs1
li x10, 0x9b8f9f9b1de2e19e # initialize rs2
bge x21, x10, some_label_for_btype_171029740725865727800 # perform operation 
addi x0, x1, 1
some_label_for_btype_171029740725865727800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x9b8f9f9b1de2e19e # initialize rs1
li x10, 0x9b8f9f9b1de2e19e # initialize rs2
bge x21, x10, some_label_for_btype_171029740725865727801 # perform operation 
addi x0, x1, 1
some_label_for_btype_171029740725865727801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x11)
li x1, 0xce81521653a95a1e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x42f31fd6d0a5e3d0 # initialize rs1
li x11, 0x16f1315cef0e99b1 # initialize rs2
bge x17, x11, some_label_for_btype_135992717889818282970 # perform operation 
addi x0, x1, 1
some_label_for_btype_135992717889818282970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x16f1315cef0e99b1 # initialize rs1
li x11, 0x16f1315cef0e99b1 # initialize rs2
bge x17, x11, some_label_for_btype_135992717889818282971 # perform operation 
addi x0, x1, 1
some_label_for_btype_135992717889818282971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x12)
li x7, 0x837bb8be983ba9bc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x37c9fb805dcd6793 # initialize rs1
li x12, 0x5ab44ee598b28afa # initialize rs2
bge x1, x12, some_label_for_btype_128428575664974157400 # perform operation 
addi x0, x1, 1
some_label_for_btype_128428575664974157400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x5ab44ee598b28afa # initialize rs1
li x12, 0x5ab44ee598b28afa # initialize rs2
bge x1, x12, some_label_for_btype_128428575664974157401 # perform operation 
addi x0, x1, 1
some_label_for_btype_128428575664974157401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x13)
li x24, 0x7348618491664af8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xf4312fe1350a9963 # initialize rs1
li x13, 0x6a7dc598dec1d79a # initialize rs2
bge x21, x13, some_label_for_btype_44034935317399736410 # perform operation 
addi x0, x1, 1
some_label_for_btype_44034935317399736410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x6a7dc598dec1d79a # initialize rs1
li x13, 0x6a7dc598dec1d79a # initialize rs2
bge x21, x13, some_label_for_btype_44034935317399736411 # perform operation 
addi x0, x1, 1
some_label_for_btype_44034935317399736411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x14)
li x17, 0x593c8af9530947ba # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xa38f836dc29b4e32 # initialize rs1
li x14, 0x921b30ae9fd65640 # initialize rs2
bge x28, x14, some_label_for_btype_123987666475024262760 # perform operation 
addi x0, x1, 1
some_label_for_btype_123987666475024262760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x921b30ae9fd65640 # initialize rs1
li x14, 0x921b30ae9fd65640 # initialize rs2
bge x28, x14, some_label_for_btype_123987666475024262761 # perform operation 
addi x0, x1, 1
some_label_for_btype_123987666475024262761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x15)
li x9, 0x609a9aaadd6b1fa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5a4583327a0f4205 # initialize rs1
li x15, 0x4810d4dc32d2c080 # initialize rs2
bge x5, x15, some_label_for_btype_14298830564399780860 # perform operation 
addi x0, x1, 1
some_label_for_btype_14298830564399780860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x4810d4dc32d2c080 # initialize rs1
li x15, 0x4810d4dc32d2c080 # initialize rs2
bge x5, x15, some_label_for_btype_14298830564399780861 # perform operation 
addi x0, x1, 1
some_label_for_btype_14298830564399780861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x16)
li x3, 0x3236aaf2ad408796 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x842e4dac86e5b7a2 # initialize rs1
li x16, 0x7ea607c0189d4102 # initialize rs2
bge x4, x16, some_label_for_btype_120352176127370296820 # perform operation 
addi x0, x1, 1
some_label_for_btype_120352176127370296820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x7ea607c0189d4102 # initialize rs1
li x16, 0x7ea607c0189d4102 # initialize rs2
bge x4, x16, some_label_for_btype_120352176127370296821 # perform operation 
addi x0, x1, 1
some_label_for_btype_120352176127370296821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0x678123303a67249c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x6a64057ca4a2c42a # initialize rs1
li x17, 0xb237b7849b571096 # initialize rs2
bge x21, x17, some_label_for_btype_69703852503808559070 # perform operation 
addi x0, x1, 1
some_label_for_btype_69703852503808559070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0xb237b7849b571096 # initialize rs1
li x17, 0xb237b7849b571096 # initialize rs2
bge x21, x17, some_label_for_btype_69703852503808559071 # perform operation 
addi x0, x1, 1
some_label_for_btype_69703852503808559071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x18)
li x29, 0x210c9871294e3fb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x34b69413875226fd # initialize rs1
li x18, 0xaa75c13f952c39a1 # initialize rs2
bge x6, x18, some_label_for_btype_166070750401808600130 # perform operation 
addi x0, x1, 1
some_label_for_btype_166070750401808600130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xaa75c13f952c39a1 # initialize rs1
li x18, 0xaa75c13f952c39a1 # initialize rs2
bge x6, x18, some_label_for_btype_166070750401808600131 # perform operation 
addi x0, x1, 1
some_label_for_btype_166070750401808600131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x19)
li x16, 0xa3eadddd77684abb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x343d21e4424100fb # initialize rs1
li x19, 0x3d0075464a26815f # initialize rs2
bge x31, x19, some_label_for_btype_106342143845455537280 # perform operation 
addi x0, x1, 1
some_label_for_btype_106342143845455537280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x3d0075464a26815f # initialize rs1
li x19, 0x3d0075464a26815f # initialize rs2
bge x31, x19, some_label_for_btype_106342143845455537281 # perform operation 
addi x0, x1, 1
some_label_for_btype_106342143845455537281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x20)
li x19, 0x6f89f25d703bf9d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x8c4ba32fa15d176d # initialize rs1
li x20, 0x210cee7278aa0e1a # initialize rs2
bge x17, x20, some_label_for_btype_109831284755386366950 # perform operation 
addi x0, x1, 1
some_label_for_btype_109831284755386366950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x210cee7278aa0e1a # initialize rs1
li x20, 0x210cee7278aa0e1a # initialize rs2
bge x17, x20, some_label_for_btype_109831284755386366951 # perform operation 
addi x0, x1, 1
some_label_for_btype_109831284755386366951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x21)
li x31, 0xef05cbc0342ff16d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x55a3964acfdc3947 # initialize rs1
li x21, 0xbdabe331b8b265a6 # initialize rs2
bge x9, x21, some_label_for_btype_99705928478679214310 # perform operation 
addi x0, x1, 1
some_label_for_btype_99705928478679214310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xbdabe331b8b265a6 # initialize rs1
li x21, 0xbdabe331b8b265a6 # initialize rs2
bge x9, x21, some_label_for_btype_99705928478679214311 # perform operation 
addi x0, x1, 1
some_label_for_btype_99705928478679214311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x22)
li x19, 0x578c07a03a4d280e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0e419cce959bcf37 # initialize rs1
li x22, 0xbff0b156ef17b591 # initialize rs2
bge x8, x22, some_label_for_btype_144233456591033106060 # perform operation 
addi x0, x1, 1
some_label_for_btype_144233456591033106060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xbff0b156ef17b591 # initialize rs1
li x22, 0xbff0b156ef17b591 # initialize rs2
bge x8, x22, some_label_for_btype_144233456591033106061 # perform operation 
addi x0, x1, 1
some_label_for_btype_144233456591033106061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x23)
li x14, 0x1fc3f427cfc8bd63 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x9aa544137fc9ce86 # initialize rs1
li x23, 0x9ac76a718457b941 # initialize rs2
bge x6, x23, some_label_for_btype_175840145880230693530 # perform operation 
addi x0, x1, 1
some_label_for_btype_175840145880230693530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x9ac76a718457b941 # initialize rs1
li x23, 0x9ac76a718457b941 # initialize rs2
bge x6, x23, some_label_for_btype_175840145880230693531 # perform operation 
addi x0, x1, 1
some_label_for_btype_175840145880230693531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x24)
li x11, 0x22a7430d068e2651 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x463634454ec68775 # initialize rs1
li x24, 0x106ad48de552702f # initialize rs2
bge x30, x24, some_label_for_btype_70764758402096913390 # perform operation 
addi x0, x1, 1
some_label_for_btype_70764758402096913390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x106ad48de552702f # initialize rs1
li x24, 0x106ad48de552702f # initialize rs2
bge x30, x24, some_label_for_btype_70764758402096913391 # perform operation 
addi x0, x1, 1
some_label_for_btype_70764758402096913391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x25)
li x26, 0x11485db687518909 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x005a469aadb1512a # initialize rs1
li x25, 0xf34b957f5e42a590 # initialize rs2
bge x2, x25, some_label_for_btype_43123849552226378230 # perform operation 
addi x0, x1, 1
some_label_for_btype_43123849552226378230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xf34b957f5e42a590 # initialize rs1
li x25, 0xf34b957f5e42a590 # initialize rs2
bge x2, x25, some_label_for_btype_43123849552226378231 # perform operation 
addi x0, x1, 1
some_label_for_btype_43123849552226378231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x26)
li x9, 0xf00cd9738e41e26b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xc210f94dc5ace258 # initialize rs1
li x26, 0x4769927578ef1c99 # initialize rs2
bge x1, x26, some_label_for_btype_65536206303506179790 # perform operation 
addi x0, x1, 1
some_label_for_btype_65536206303506179790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x4769927578ef1c99 # initialize rs1
li x26, 0x4769927578ef1c99 # initialize rs2
bge x1, x26, some_label_for_btype_65536206303506179791 # perform operation 
addi x0, x1, 1
some_label_for_btype_65536206303506179791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x27)
li x14, 0xd1d69e11d71b5ebd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x8e50aaaa24081eed # initialize rs1
li x27, 0x119827e8b21f37e9 # initialize rs2
bge x9, x27, some_label_for_btype_80601701246649809300 # perform operation 
addi x0, x1, 1
some_label_for_btype_80601701246649809300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x119827e8b21f37e9 # initialize rs1
li x27, 0x119827e8b21f37e9 # initialize rs2
bge x9, x27, some_label_for_btype_80601701246649809301 # perform operation 
addi x0, x1, 1
some_label_for_btype_80601701246649809301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x28)
li x10, 0x222343f69215301f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xbaad615c2c67b463 # initialize rs1
li x28, 0x974c6f3bb79b5ed9 # initialize rs2
bge x13, x28, some_label_for_btype_139925232709586472110 # perform operation 
addi x0, x1, 1
some_label_for_btype_139925232709586472110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x974c6f3bb79b5ed9 # initialize rs1
li x28, 0x974c6f3bb79b5ed9 # initialize rs2
bge x13, x28, some_label_for_btype_139925232709586472111 # perform operation 
addi x0, x1, 1
some_label_for_btype_139925232709586472111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x29)
li x31, 0x64edbd0ea5fce862 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x965a0aa0203d21ae # initialize rs1
li x29, 0x815afe783e97340d # initialize rs2
bge x24, x29, some_label_for_btype_165424452282556688750 # perform operation 
addi x0, x1, 1
some_label_for_btype_165424452282556688750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x815afe783e97340d # initialize rs1
li x29, 0x815afe783e97340d # initialize rs2
bge x24, x29, some_label_for_btype_165424452282556688751 # perform operation 
addi x0, x1, 1
some_label_for_btype_165424452282556688751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x30)
li x14, 0xb533b4470c06c302 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x92ffd16f7083e877 # initialize rs1
li x30, 0x92255583a9a7e687 # initialize rs2
bge x11, x30, some_label_for_btype_23287626875940478330 # perform operation 
addi x0, x1, 1
some_label_for_btype_23287626875940478330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x92255583a9a7e687 # initialize rs1
li x30, 0x92255583a9a7e687 # initialize rs2
bge x11, x30, some_label_for_btype_23287626875940478331 # perform operation 
addi x0, x1, 1
some_label_for_btype_23287626875940478331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2 (Test source rs2 = x31)
li x28, 0xe23443428604f8c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x47f2b7864aab6fe6 # initialize rs1
li x31, 0xfc27f735b6de9207 # initialize rs2
bge x22, x31, some_label_for_btype_110444779903589399520 # perform operation 
addi x0, x1, 1
some_label_for_btype_110444779903589399520:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xfc27f735b6de9207 # initialize rs1
li x31, 0xfc27f735b6de9207 # initialize rs2
bge x22, x31, some_label_for_btype_110444779903589399521 # perform operation 
addi x0, x1, 1
some_label_for_btype_110444779903589399521:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xcf512147862b7e7a)
li x5, 0x5147152c80ca344f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x5147152c80ca344f # initialize rs1
li x0, 0x5fcf2f92f1fd0f13 # initialize rs2
bge x28, x0, some_label_for_btype_172380329852009888530 # perform operation 
addi x0, x1, 1
some_label_for_btype_172380329852009888530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x5fcf2f92f1fd0f13 # initialize rs1
li x0, 0x5fcf2f92f1fd0f13 # initialize rs2
bge x28, x0, some_label_for_btype_172380329852009888531 # perform operation 
addi x0, x1, 1
some_label_for_btype_172380329852009888531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x105e89807078b64e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000000000000 # initialize rs1
li x13, 0x03a1e7379d65337f # initialize rs2
bge x7, x13, some_label_for_btype_108028352790185195160 # perform operation 
addi x0, x1, 1
some_label_for_btype_108028352790185195160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x03a1e7379d65337f # initialize rs1
li x13, 0x03a1e7379d65337f # initialize rs2
bge x7, x13, some_label_for_btype_108028352790185195161 # perform operation 
addi x0, x1, 1
some_label_for_btype_108028352790185195161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x20, 0x605ff0fd5e9deec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000000000001 # initialize rs1
li x17, 0xfb3f61f137da16ad # initialize rs2
bge x1, x17, some_label_for_btype_45228998958054189090 # perform operation 
addi x0, x1, 1
some_label_for_btype_45228998958054189090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0xfb3f61f137da16ad # initialize rs1
li x17, 0xfb3f61f137da16ad # initialize rs2
bge x1, x17, some_label_for_btype_45228998958054189091 # perform operation 
addi x0, x1, 1
some_label_for_btype_45228998958054189091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0xf2937568806fab31 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000000000002 # initialize rs1
li x30, 0xe7a54022f8d9be5c # initialize rs2
bge x6, x30, some_label_for_btype_146299522573970972010 # perform operation 
addi x0, x1, 1
some_label_for_btype_146299522573970972010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xe7a54022f8d9be5c # initialize rs1
li x30, 0xe7a54022f8d9be5c # initialize rs2
bge x6, x30, some_label_for_btype_146299522573970972011 # perform operation 
addi x0, x1, 1
some_label_for_btype_146299522573970972011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x27, 0x5a807881d101668c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x8000000000000000 # initialize rs1
li x20, 0xb4b8b50367f03262 # initialize rs2
bge x8, x20, some_label_for_btype_15238438795061533230 # perform operation 
addi x0, x1, 1
some_label_for_btype_15238438795061533230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xb4b8b50367f03262 # initialize rs1
li x20, 0xb4b8b50367f03262 # initialize rs2
bge x8, x20, some_label_for_btype_15238438795061533231 # perform operation 
addi x0, x1, 1
some_label_for_btype_15238438795061533231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x8, 0x68ff0d897c6e5553 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x8000000000000001 # initialize rs1
li x14, 0x589e79cda69dcaca # initialize rs2
bge x12, x14, some_label_for_btype_97156696233166365910 # perform operation 
addi x0, x1, 1
some_label_for_btype_97156696233166365910:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x589e79cda69dcaca # initialize rs1
li x14, 0x589e79cda69dcaca # initialize rs2
bge x12, x14, some_label_for_btype_97156696233166365911 # perform operation 
addi x0, x1, 1
some_label_for_btype_97156696233166365911:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0x2722a311742e0a7a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x7fffffffffffffff # initialize rs1
li x21, 0xfc679ce8b9bae378 # initialize rs2
bge x3, x21, some_label_for_btype_167051690320253944390 # perform operation 
addi x0, x1, 1
some_label_for_btype_167051690320253944390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xfc679ce8b9bae378 # initialize rs1
li x21, 0xfc679ce8b9bae378 # initialize rs2
bge x3, x21, some_label_for_btype_167051690320253944391 # perform operation 
addi x0, x1, 1
some_label_for_btype_167051690320253944391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0xa9f5d1da27939fd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x7ffffffffffffffe # initialize rs1
li x18, 0xa3fa699677bcf360 # initialize rs2
bge x14, x18, some_label_for_btype_92685780396206673130 # perform operation 
addi x0, x1, 1
some_label_for_btype_92685780396206673130:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xa3fa699677bcf360 # initialize rs1
li x18, 0xa3fa699677bcf360 # initialize rs2
bge x14, x18, some_label_for_btype_92685780396206673131 # perform operation 
addi x0, x1, 1
some_label_for_btype_92685780396206673131:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x5, 0xc09062d17c97d8c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xffffffffffffffff # initialize rs1
li x31, 0xa0b6184a958d3498 # initialize rs2
bge x24, x31, some_label_for_btype_178766693479045767140 # perform operation 
addi x0, x1, 1
some_label_for_btype_178766693479045767140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0xa0b6184a958d3498 # initialize rs1
li x31, 0xa0b6184a958d3498 # initialize rs2
bge x24, x31, some_label_for_btype_178766693479045767141 # perform operation 
addi x0, x1, 1
some_label_for_btype_178766693479045767141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x24, 0xcc5c11f1e1d06809 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0xfffffffffffffffe # initialize rs1
li x22, 0x7e04102586116859 # initialize rs2
bge x5, x22, some_label_for_btype_129608749014344627340 # perform operation 
addi x0, x1, 1
some_label_for_btype_129608749014344627340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x7e04102586116859 # initialize rs1
li x22, 0x7e04102586116859 # initialize rs2
bge x5, x22, some_label_for_btype_129608749014344627341 # perform operation 
addi x0, x1, 1
some_label_for_btype_129608749014344627341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x29, 0x6c20b22d2f47e68b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0xf7db6322d6795930 # initialize rs2
bge x27, x30, some_label_for_btype_142028166108133815340 # perform operation 
addi x0, x1, 1
some_label_for_btype_142028166108133815340:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xf7db6322d6795930 # initialize rs1
li x30, 0xf7db6322d6795930 # initialize rs2
bge x27, x30, some_label_for_btype_142028166108133815341 # perform operation 
addi x0, x1, 1
some_label_for_btype_142028166108133815341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0b6ec63f50f78615 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x5f93123f1a4abaf8 # initialize rs2
bge x27, x5, some_label_for_btype_174510615789818129020 # perform operation 
addi x0, x1, 1
some_label_for_btype_174510615789818129020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x5f93123f1a4abaf8 # initialize rs1
li x5, 0x5f93123f1a4abaf8 # initialize rs2
bge x27, x5, some_label_for_btype_174510615789818129021 # perform operation 
addi x0, x1, 1
some_label_for_btype_174510615789818129021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x3, 0xc3d02135264d9a4c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x5555555555555555 # initialize rs1
li x28, 0x76fbf948346783a6 # initialize rs2
bge x26, x28, some_label_for_btype_117753075839853123310 # perform operation 
addi x0, x1, 1
some_label_for_btype_117753075839853123310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x76fbf948346783a6 # initialize rs1
li x28, 0x76fbf948346783a6 # initialize rs2
bge x26, x28, some_label_for_btype_117753075839853123311 # perform operation 
addi x0, x1, 1
some_label_for_btype_117753075839853123311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x4cb8f3488ea7ad94 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x00000000ffffffff # initialize rs1
li x5, 0x2c1e8f3bd6d57b74 # initialize rs2
bge x19, x5, some_label_for_btype_66829367866673359350 # perform operation 
addi x0, x1, 1
some_label_for_btype_66829367866673359350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x2c1e8f3bd6d57b74 # initialize rs1
li x5, 0x2c1e8f3bd6d57b74 # initialize rs2
bge x19, x5, some_label_for_btype_66829367866673359351 # perform operation 
addi x0, x1, 1
some_label_for_btype_66829367866673359351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x28, 0x66f9ad9596714393 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x00000000fffffffe # initialize rs1
li x13, 0x153dbe292dfeac69 # initialize rs2
bge x20, x13, some_label_for_btype_114571950815204391920 # perform operation 
addi x0, x1, 1
some_label_for_btype_114571950815204391920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x153dbe292dfeac69 # initialize rs1
li x13, 0x153dbe292dfeac69 # initialize rs2
bge x20, x13, some_label_for_btype_114571950815204391921 # perform operation 
addi x0, x1, 1
some_label_for_btype_114571950815204391921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x6, 0x958956f0e6d6b9ad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000100000000 # initialize rs1
li x29, 0xdb99d97af032132f # initialize rs2
bge x31, x29, some_label_for_btype_68587653793499850380 # perform operation 
addi x0, x1, 1
some_label_for_btype_68587653793499850380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xdb99d97af032132f # initialize rs1
li x29, 0xdb99d97af032132f # initialize rs2
bge x31, x29, some_label_for_btype_68587653793499850381 # perform operation 
addi x0, x1, 1
some_label_for_btype_68587653793499850381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x7, 0xed9912a0e0700ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x0000000100000001 # initialize rs1
li x5, 0x129620c27fae7712 # initialize rs2
bge x29, x5, some_label_for_btype_91715282592893272700 # perform operation 
addi x0, x1, 1
some_label_for_btype_91715282592893272700:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x129620c27fae7712 # initialize rs1
li x5, 0x129620c27fae7712 # initialize rs2
bge x29, x5, some_label_for_btype_91715282592893272701 # perform operation 
addi x0, x1, 1
some_label_for_btype_91715282592893272701:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x2, 0x1a2cf487fb44b992 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xefce2a2f261b174e # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
bge x9, x17, some_label_for_btype_135800293047918234240 # perform operation 
addi x0, x1, 1
some_label_for_btype_135800293047918234240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
bge x9, x17, some_label_for_btype_135800293047918234241 # perform operation 
addi x0, x1, 1
some_label_for_btype_135800293047918234241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x3, 0x2a4597951f4327e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x88bd4b50fab9fddc # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
bge x18, x10, some_label_for_btype_78325403159560200680 # perform operation 
addi x0, x1, 1
some_label_for_btype_78325403159560200680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
bge x18, x10, some_label_for_btype_78325403159560200681 # perform operation 
addi x0, x1, 1
some_label_for_btype_78325403159560200681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x31, 0x4f315ff8968b8b3d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x661836d616031c41 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
bge x28, x18, some_label_for_btype_38643769295229795150 # perform operation 
addi x0, x1, 1
some_label_for_btype_38643769295229795150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
bge x28, x18, some_label_for_btype_38643769295229795151 # perform operation 
addi x0, x1, 1
some_label_for_btype_38643769295229795151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x26, 0xcceba61299ccd297 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x29073e91efa2237a # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bge x19, x5, some_label_for_btype_98985964315269059270 # perform operation 
addi x0, x1, 1
some_label_for_btype_98985964315269059270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x8000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bge x19, x5, some_label_for_btype_98985964315269059271 # perform operation 
addi x0, x1, 1
some_label_for_btype_98985964315269059271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x23, 0xa63f3d55fe886d8b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xfa5dd49d5c3e2686 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
bge x31, x14, some_label_for_btype_153489307023756133220 # perform operation 
addi x0, x1, 1
some_label_for_btype_153489307023756133220:
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
bge x31, x14, some_label_for_btype_153489307023756133221 # perform operation 
addi x0, x1, 1
some_label_for_btype_153489307023756133221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x4, 0xe0f819883a63f42e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xdf4f5512880b4746 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
bge x17, x5, some_label_for_btype_49533518217943947550 # perform operation 
addi x0, x1, 1
some_label_for_btype_49533518217943947550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x7fffffffffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
bge x17, x5, some_label_for_btype_49533518217943947551 # perform operation 
addi x0, x1, 1
some_label_for_btype_49533518217943947551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x28, 0x9d90a8ca8e1432dc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x1e88e9bd4b012283 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
bge x9, x24, some_label_for_btype_37679019886242990860 # perform operation 
addi x0, x1, 1
some_label_for_btype_37679019886242990860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x7ffffffffffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
bge x9, x24, some_label_for_btype_37679019886242990861 # perform operation 
addi x0, x1, 1
some_label_for_btype_37679019886242990861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x1, 0xec84a1310fe93ab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x03512f30ff3ef8cd # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bge x12, x17, some_label_for_btype_98011715639629979410 # perform operation 
addi x0, x1, 1
some_label_for_btype_98011715639629979410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xffffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bge x12, x17, some_label_for_btype_98011715639629979411 # perform operation 
addi x0, x1, 1
some_label_for_btype_98011715639629979411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x24, 0xb96db510bfb68657 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0xcb6dde0edc2a9f91 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bge x27, x22, some_label_for_btype_122239762027172139110 # perform operation 
addi x0, x1, 1
some_label_for_btype_122239762027172139110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xfffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bge x27, x22, some_label_for_btype_122239762027172139111 # perform operation 
addi x0, x1, 1
some_label_for_btype_122239762027172139111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x22, 0xb4252049e45dcdb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x257eed996f29026e # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
bge x20, x17, some_label_for_btype_171413394611747626740 # perform operation 
addi x0, x1, 1
some_label_for_btype_171413394611747626740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
bge x20, x17, some_label_for_btype_171413394611747626741 # perform operation 
addi x0, x1, 1
some_label_for_btype_171413394611747626741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x5, 0x90c1aba72d1cf47f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x04ada9be92b14ded # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x30, x9, some_label_for_btype_113290057390305858590 # perform operation 
addi x0, x1, 1
some_label_for_btype_113290057390305858590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x30, x9, some_label_for_btype_113290057390305858591 # perform operation 
addi x0, x1, 1
some_label_for_btype_113290057390305858591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x29, 0x52cbc3ad679d750e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x578a7df89f2aa56c # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
bge x30, x22, some_label_for_btype_32136142569007097590 # perform operation 
addi x0, x1, 1
some_label_for_btype_32136142569007097590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x5555555555555555 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
bge x30, x22, some_label_for_btype_32136142569007097591 # perform operation 
addi x0, x1, 1
some_label_for_btype_32136142569007097591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x28, 0x580e8751e129d9df # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x83e434ba710e1287 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bge x22, x31, some_label_for_btype_161019224422557832090 # perform operation 
addi x0, x1, 1
some_label_for_btype_161019224422557832090:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bge x22, x31, some_label_for_btype_161019224422557832091 # perform operation 
addi x0, x1, 1
some_label_for_btype_161019224422557832091:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x14, 0xf3b2133081882146 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x2e82f1a37833fa7c # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
bge x29, x7, some_label_for_btype_112009029525818748580 # perform operation 
addi x0, x1, 1
some_label_for_btype_112009029525818748580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
bge x29, x7, some_label_for_btype_112009029525818748581 # perform operation 
addi x0, x1, 1
some_label_for_btype_112009029525818748581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x4, 0x65780069f59f7f21 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xbe69438659405eaa # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bge x23, x29, some_label_for_btype_134578071626351259640 # perform operation 
addi x0, x1, 1
some_label_for_btype_134578071626351259640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bge x23, x29, some_label_for_btype_134578071626351259641 # perform operation 
addi x0, x1, 1
some_label_for_btype_134578071626351259641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x4, 0x4364e841017d30d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x20b2c297fac45cd5 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bge x25, x10, some_label_for_btype_80751763738415434710 # perform operation 
addi x0, x1, 1
some_label_for_btype_80751763738415434710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bge x25, x10, some_label_for_btype_80751763738415434711 # perform operation 
addi x0, x1, 1
some_label_for_btype_80751763738415434711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x25, 0x283996226b504ac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bge x2, x8, some_label_for_btype_6963468328937183180 # perform operation 
addi x0, x1, 1
some_label_for_btype_6963468328937183180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bge x2, x8, some_label_for_btype_6963468328937183181 # perform operation 
addi x0, x1, 1
some_label_for_btype_6963468328937183181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x16, 0x352e86e192ced17d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bge x31, x25, some_label_for_btype_22990373524797703460 # perform operation 
addi x0, x1, 1
some_label_for_btype_22990373524797703460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bge x31, x25, some_label_for_btype_22990373524797703461 # perform operation 
addi x0, x1, 1
some_label_for_btype_22990373524797703461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x18, 0x0d5529ac2ed60a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0000000000000000 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
bge x26, x11, some_label_for_btype_157346841668923007620 # perform operation 
addi x0, x1, 1
some_label_for_btype_157346841668923007620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000000000002 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
bge x26, x11, some_label_for_btype_157346841668923007621 # perform operation 
addi x0, x1, 1
some_label_for_btype_157346841668923007621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x14, 0xdb57525f9c9b3948 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x0000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
bge x7, x21, some_label_for_btype_71674636178467603390 # perform operation 
addi x0, x1, 1
some_label_for_btype_71674636178467603390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
bge x7, x21, some_label_for_btype_71674636178467603391 # perform operation 
addi x0, x1, 1
some_label_for_btype_71674636178467603391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x2, 0x7f8f1785577a9eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x0000000000000000 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
bge x20, x16, some_label_for_btype_80163956793077153670 # perform operation 
addi x0, x1, 1
some_label_for_btype_80163956793077153670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x8000000000000001 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
bge x20, x16, some_label_for_btype_80163956793077153671 # perform operation 
addi x0, x1, 1
some_label_for_btype_80163956793077153671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x26, 0xe2055ab618e212ed # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000000000000 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bge x6, x22, some_label_for_btype_86364100861999649190 # perform operation 
addi x0, x1, 1
some_label_for_btype_86364100861999649190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bge x6, x22, some_label_for_btype_86364100861999649191 # perform operation 
addi x0, x1, 1
some_label_for_btype_86364100861999649191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x2, 0x5909759a77a0d2c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000000000000 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bge x27, x11, some_label_for_btype_98199395945364694680 # perform operation 
addi x0, x1, 1
some_label_for_btype_98199395945364694680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x7ffffffffffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bge x27, x11, some_label_for_btype_98199395945364694681 # perform operation 
addi x0, x1, 1
some_label_for_btype_98199395945364694681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x12, 0xf09caa28ebe93797 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000000000000 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bge x27, x28, some_label_for_btype_159315108877266848140 # perform operation 
addi x0, x1, 1
some_label_for_btype_159315108877266848140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xffffffffffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bge x27, x28, some_label_for_btype_159315108877266848141 # perform operation 
addi x0, x1, 1
some_label_for_btype_159315108877266848141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x21, 0xa616f8b3a27564fa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
bge x9, x25, some_label_for_btype_50494251894621568310 # perform operation 
addi x0, x1, 1
some_label_for_btype_50494251894621568310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xfffffffffffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
bge x9, x25, some_label_for_btype_50494251894621568311 # perform operation 
addi x0, x1, 1
some_label_for_btype_50494251894621568311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x11, 0x5976a1833d4a0d79 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000000000000 # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
bge x6, x14, some_label_for_btype_28658518162012390660 # perform operation 
addi x0, x1, 1
some_label_for_btype_28658518162012390660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
bge x6, x14, some_label_for_btype_28658518162012390661 # perform operation 
addi x0, x1, 1
some_label_for_btype_28658518162012390661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xcb6df3e0b1a0ca0a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x0000000000000000 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x16, x18, some_label_for_btype_127097045814000204840 # perform operation 
addi x0, x1, 1
some_label_for_btype_127097045814000204840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x16, x18, some_label_for_btype_127097045814000204841 # perform operation 
addi x0, x1, 1
some_label_for_btype_127097045814000204841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x6, 0x7e4393016e6d9f56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
bge x5, x18, some_label_for_btype_36504489704173459970 # perform operation 
addi x0, x1, 1
some_label_for_btype_36504489704173459970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x5555555555555555 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
bge x5, x18, some_label_for_btype_36504489704173459971 # perform operation 
addi x0, x1, 1
some_label_for_btype_36504489704173459971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x13, 0xf44703d510b35d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x0000000000000000 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
bge x29, x21, some_label_for_btype_110978884362091661960 # perform operation 
addi x0, x1, 1
some_label_for_btype_110978884362091661960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x00000000ffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
bge x29, x21, some_label_for_btype_110978884362091661961 # perform operation 
addi x0, x1, 1
some_label_for_btype_110978884362091661961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x1, 0x05b988c90779fabe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0000000000000000 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
bge x15, x10, some_label_for_btype_44556142288540724200 # perform operation 
addi x0, x1, 1
some_label_for_btype_44556142288540724200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x00000000fffffffe # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
bge x15, x10, some_label_for_btype_44556142288540724201 # perform operation 
addi x0, x1, 1
some_label_for_btype_44556142288540724201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x31, 0x6a3ce75402d0b4e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000000000000 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
bge x3, x28, some_label_for_btype_83278333281609871360 # perform operation 
addi x0, x1, 1
some_label_for_btype_83278333281609871360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x0000000100000000 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
bge x3, x28, some_label_for_btype_83278333281609871361 # perform operation 
addi x0, x1, 1
some_label_for_btype_83278333281609871361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x9, 0x852aa6feb6eeab1a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
bge x5, x29, some_label_for_btype_182820223714828411110 # perform operation 
addi x0, x1, 1
some_label_for_btype_182820223714828411110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
bge x5, x29, some_label_for_btype_182820223714828411111 # perform operation 
addi x0, x1, 1
some_label_for_btype_182820223714828411111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x14, 0x03d2f4e21cb0e209 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
bge x11, x29, some_label_for_btype_124004423377950117390 # perform operation 
addi x0, x1, 1
some_label_for_btype_124004423377950117390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
bge x11, x29, some_label_for_btype_124004423377950117391 # perform operation 
addi x0, x1, 1
some_label_for_btype_124004423377950117391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x20, 0xff54b2a996b0df3b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bge x19, x23, some_label_for_btype_79145193503480062260 # perform operation 
addi x0, x1, 1
some_label_for_btype_79145193503480062260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bge x19, x23, some_label_for_btype_79145193503480062261 # perform operation 
addi x0, x1, 1
some_label_for_btype_79145193503480062261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x14, 0x605ec0f002a2948c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
bge x22, x25, some_label_for_btype_169598036806317167760 # perform operation 
addi x0, x1, 1
some_label_for_btype_169598036806317167760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
bge x22, x25, some_label_for_btype_169598036806317167761 # perform operation 
addi x0, x1, 1
some_label_for_btype_169598036806317167761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x16, 0x00725e4a6b01a025 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x0000000000000001 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
bge x27, x31, some_label_for_btype_77109941919782901940 # perform operation 
addi x0, x1, 1
some_label_for_btype_77109941919782901940:
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
bge x27, x31, some_label_for_btype_77109941919782901941 # perform operation 
addi x0, x1, 1
some_label_for_btype_77109941919782901941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x22, 0x9b83b4c10c95f4f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
bge x19, x7, some_label_for_btype_148799258164064373860 # perform operation 
addi x0, x1, 1
some_label_for_btype_148799258164064373860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
bge x19, x7, some_label_for_btype_148799258164064373861 # perform operation 
addi x0, x1, 1
some_label_for_btype_148799258164064373861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x13, 0xe864721f794f92ac # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x0000000000000001 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bge x5, x14, some_label_for_btype_25218133361665943960 # perform operation 
addi x0, x1, 1
some_label_for_btype_25218133361665943960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x7fffffffffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bge x5, x14, some_label_for_btype_25218133361665943961 # perform operation 
addi x0, x1, 1
some_label_for_btype_25218133361665943961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x17, 0xfc40dacbb37344b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x0000000000000001 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bge x15, x23, some_label_for_btype_153775860789075251710 # perform operation 
addi x0, x1, 1
some_label_for_btype_153775860789075251710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bge x15, x23, some_label_for_btype_153775860789075251711 # perform operation 
addi x0, x1, 1
some_label_for_btype_153775860789075251711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x28, 0x5d56b2afb45ade13 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000000000001 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bge x12, x16, some_label_for_btype_126964899492060637720 # perform operation 
addi x0, x1, 1
some_label_for_btype_126964899492060637720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bge x12, x16, some_label_for_btype_126964899492060637721 # perform operation 
addi x0, x1, 1
some_label_for_btype_126964899492060637721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x16, 0x55f75150e9dce5da # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0000000000000001 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bge x10, x9, some_label_for_btype_92413723807772676460 # perform operation 
addi x0, x1, 1
some_label_for_btype_92413723807772676460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xfffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bge x10, x9, some_label_for_btype_92413723807772676461 # perform operation 
addi x0, x1, 1
some_label_for_btype_92413723807772676461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x19, 0x7cf65b11d2bbde71 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000000000001 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
bge x1, x20, some_label_for_btype_95265928668859163550 # perform operation 
addi x0, x1, 1
some_label_for_btype_95265928668859163550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
bge x1, x20, some_label_for_btype_95265928668859163551 # perform operation 
addi x0, x1, 1
some_label_for_btype_95265928668859163551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0xb362327cecb316f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000000000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x8, x29, some_label_for_btype_43533782209292091600 # perform operation 
addi x0, x1, 1
some_label_for_btype_43533782209292091600:
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
bge x8, x29, some_label_for_btype_43533782209292091601 # perform operation 
addi x0, x1, 1
some_label_for_btype_43533782209292091601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x16, 0x2fc19dd50268ebf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x0000000000000001 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
bge x17, x28, some_label_for_btype_84393863088998469370 # perform operation 
addi x0, x1, 1
some_label_for_btype_84393863088998469370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x5555555555555555 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
bge x17, x28, some_label_for_btype_84393863088998469371 # perform operation 
addi x0, x1, 1
some_label_for_btype_84393863088998469371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x24, 0x45cb6f2fb2a1fb58 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x0000000000000001 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
bge x13, x28, some_label_for_btype_104218245932024832460 # perform operation 
addi x0, x1, 1
some_label_for_btype_104218245932024832460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000000ffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
bge x13, x28, some_label_for_btype_104218245932024832461 # perform operation 
addi x0, x1, 1
some_label_for_btype_104218245932024832461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0x751d0afe768a8f62 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000000000001 # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
bge x31, x4, some_label_for_btype_143246606781171251390 # perform operation 
addi x0, x1, 1
some_label_for_btype_143246606781171251390:
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
bge x31, x4, some_label_for_btype_143246606781171251391 # perform operation 
addi x0, x1, 1
some_label_for_btype_143246606781171251391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x17, 0x29bc618985fe4a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0000000000000001 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bge x14, x30, some_label_for_btype_181493570428282314830 # perform operation 
addi x0, x1, 1
some_label_for_btype_181493570428282314830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000100000000 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bge x14, x30, some_label_for_btype_181493570428282314831 # perform operation 
addi x0, x1, 1
some_label_for_btype_181493570428282314831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x23, 0xc1860bc78b46ab63 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000000000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
bge x2, x19, some_label_for_btype_140204900517544357680 # perform operation 
addi x0, x1, 1
some_label_for_btype_140204900517544357680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000100000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
bge x2, x19, some_label_for_btype_140204900517544357681 # perform operation 
addi x0, x1, 1
some_label_for_btype_140204900517544357681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x12, 0x64c439df14288a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
bge x20, x25, some_label_for_btype_81137334487496387350 # perform operation 
addi x0, x1, 1
some_label_for_btype_81137334487496387350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
bge x20, x25, some_label_for_btype_81137334487496387351 # perform operation 
addi x0, x1, 1
some_label_for_btype_81137334487496387351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x15, 0xd892f102a67b6fe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000000000002 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bge x12, x11, some_label_for_btype_62789717188110447400 # perform operation 
addi x0, x1, 1
some_label_for_btype_62789717188110447400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bge x12, x11, some_label_for_btype_62789717188110447401 # perform operation 
addi x0, x1, 1
some_label_for_btype_62789717188110447401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x21, 0x9b616b2aeca4ac00 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bge x17, x29, some_label_for_btype_44401240131417482600 # perform operation 
addi x0, x1, 1
some_label_for_btype_44401240131417482600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bge x17, x29, some_label_for_btype_44401240131417482601 # perform operation 
addi x0, x1, 1
some_label_for_btype_44401240131417482601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x18, 0x8717c77b4bb39d81 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000000000002 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
bge x19, x9, some_label_for_btype_93550886704018123050 # perform operation 
addi x0, x1, 1
some_label_for_btype_93550886704018123050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
bge x19, x9, some_label_for_btype_93550886704018123051 # perform operation 
addi x0, x1, 1
some_label_for_btype_93550886704018123051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x7, 0xb1923c2ee9367636 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000000000002 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
bge x4, x5, some_label_for_btype_73906570042431538210 # perform operation 
addi x0, x1, 1
some_label_for_btype_73906570042431538210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
bge x4, x5, some_label_for_btype_73906570042431538211 # perform operation 
addi x0, x1, 1
some_label_for_btype_73906570042431538211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x6, 0xbb6d8e6cf60415e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000000000002 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bge x24, x17, some_label_for_btype_86659629490424483900 # perform operation 
addi x0, x1, 1
some_label_for_btype_86659629490424483900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x7fffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bge x24, x17, some_label_for_btype_86659629490424483901 # perform operation 
addi x0, x1, 1
some_label_for_btype_86659629490424483901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x9, 0x90b7e7a12f70f681 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000000000002 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
bge x18, x29, some_label_for_btype_141563106363227255270 # perform operation 
addi x0, x1, 1
some_label_for_btype_141563106363227255270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x7ffffffffffffffe # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
bge x18, x29, some_label_for_btype_141563106363227255271 # perform operation 
addi x0, x1, 1
some_label_for_btype_141563106363227255271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x14, 0xb019e00b0e22a601 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000000000002 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
bge x19, x13, some_label_for_btype_56124675122570936080 # perform operation 
addi x0, x1, 1
some_label_for_btype_56124675122570936080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xffffffffffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
bge x19, x13, some_label_for_btype_56124675122570936081 # perform operation 
addi x0, x1, 1
some_label_for_btype_56124675122570936081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x31, 0x1de19a70e5b8cdee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x0000000000000002 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
bge x3, x26, some_label_for_btype_116316911846810954880 # perform operation 
addi x0, x1, 1
some_label_for_btype_116316911846810954880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xfffffffffffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
bge x3, x26, some_label_for_btype_116316911846810954881 # perform operation 
addi x0, x1, 1
some_label_for_btype_116316911846810954881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x10, 0xbfa454284e5ba0d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x0000000000000002 # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
bge x2, x24, some_label_for_btype_167205974352986629880 # perform operation 
addi x0, x1, 1
some_label_for_btype_167205974352986629880:
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
bge x2, x24, some_label_for_btype_167205974352986629881 # perform operation 
addi x0, x1, 1
some_label_for_btype_167205974352986629881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0xa11dc82143cbd1c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0000000000000002 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x10, x31, some_label_for_btype_12192390546955323930 # perform operation 
addi x0, x1, 1
some_label_for_btype_12192390546955323930:
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
bge x10, x31, some_label_for_btype_12192390546955323931 # perform operation 
addi x0, x1, 1
some_label_for_btype_12192390546955323931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x1, 0x2dc0da6a82b4f877 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0x0000000000000002 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bge x24, x31, some_label_for_btype_161671048355783707610 # perform operation 
addi x0, x1, 1
some_label_for_btype_161671048355783707610:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5555555555555555 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bge x24, x31, some_label_for_btype_161671048355783707611 # perform operation 
addi x0, x1, 1
some_label_for_btype_161671048355783707611:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x18, 0x46c17c12e4ce7a06 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x0000000000000002 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bge x22, x12, some_label_for_btype_125574293438624674730 # perform operation 
addi x0, x1, 1
some_label_for_btype_125574293438624674730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bge x22, x12, some_label_for_btype_125574293438624674731 # perform operation 
addi x0, x1, 1
some_label_for_btype_125574293438624674731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x23, 0x5e5e805339491330 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000000000002 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
bge x8, x24, some_label_for_btype_158469973564094672730 # perform operation 
addi x0, x1, 1
some_label_for_btype_158469973564094672730:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
bge x8, x24, some_label_for_btype_158469973564094672731 # perform operation 
addi x0, x1, 1
some_label_for_btype_158469973564094672731:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x23, 0xf721182e3bcb9bb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0000000000000002 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
bge x14, x11, some_label_for_btype_218017964795803110 # perform operation 
addi x0, x1, 1
some_label_for_btype_218017964795803110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
bge x14, x11, some_label_for_btype_218017964795803111 # perform operation 
addi x0, x1, 1
some_label_for_btype_218017964795803111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x30, 0x5235e18a0273b7bd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x0000000000000002 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
bge x14, x22, some_label_for_btype_128786397698660779230 # perform operation 
addi x0, x1, 1
some_label_for_btype_128786397698660779230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
bge x14, x22, some_label_for_btype_128786397698660779231 # perform operation 
addi x0, x1, 1
some_label_for_btype_128786397698660779231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x4, 0x1a1db3cbd54b489e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
bge x16, x19, some_label_for_btype_68421585180828719680 # perform operation 
addi x0, x1, 1
some_label_for_btype_68421585180828719680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
bge x16, x19, some_label_for_btype_68421585180828719681 # perform operation 
addi x0, x1, 1
some_label_for_btype_68421585180828719681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x17, 0x3e842905d755c096 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x8000000000000000 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bge x22, x23, some_label_for_btype_179869387493639404580 # perform operation 
addi x0, x1, 1
some_label_for_btype_179869387493639404580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bge x22, x23, some_label_for_btype_179869387493639404581 # perform operation 
addi x0, x1, 1
some_label_for_btype_179869387493639404581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x29, 0x9ca4a2bf748b2549 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
bge x26, x25, some_label_for_btype_108580483334916085110 # perform operation 
addi x0, x1, 1
some_label_for_btype_108580483334916085110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
bge x26, x25, some_label_for_btype_108580483334916085111 # perform operation 
addi x0, x1, 1
some_label_for_btype_108580483334916085111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x14, 0x4ffa1e8b0edc81b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
bge x4, x9, some_label_for_btype_40990330395534090310 # perform operation 
addi x0, x1, 1
some_label_for_btype_40990330395534090310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
bge x4, x9, some_label_for_btype_40990330395534090311 # perform operation 
addi x0, x1, 1
some_label_for_btype_40990330395534090311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x17, 0x5ced9a8ed850c904 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
bge x8, x18, some_label_for_btype_34916235292916003810 # perform operation 
addi x0, x1, 1
some_label_for_btype_34916235292916003810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
bge x8, x18, some_label_for_btype_34916235292916003811 # perform operation 
addi x0, x1, 1
some_label_for_btype_34916235292916003811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x20, 0x63d5d8532ca0f4a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x8000000000000000 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
bge x26, x1, some_label_for_btype_129382755827352692140 # perform operation 
addi x0, x1, 1
some_label_for_btype_129382755827352692140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x7fffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
bge x26, x1, some_label_for_btype_129382755827352692141 # perform operation 
addi x0, x1, 1
some_label_for_btype_129382755827352692141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x4, 0x372cda232a40eab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x8000000000000000 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
bge x26, x24, some_label_for_btype_116907228328902114560 # perform operation 
addi x0, x1, 1
some_label_for_btype_116907228328902114560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x7ffffffffffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
bge x26, x24, some_label_for_btype_116907228328902114561 # perform operation 
addi x0, x1, 1
some_label_for_btype_116907228328902114561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x3, 0xf44cec14783a7c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x8000000000000000 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
bge x10, x8, some_label_for_btype_50104504800848783720 # perform operation 
addi x0, x1, 1
some_label_for_btype_50104504800848783720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0xffffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
bge x10, x8, some_label_for_btype_50104504800848783721 # perform operation 
addi x0, x1, 1
some_label_for_btype_50104504800848783721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x6, 0x32ca71bd2f9cc327 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x8000000000000000 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bge x30, x9, some_label_for_btype_11830504238356431860 # perform operation 
addi x0, x1, 1
some_label_for_btype_11830504238356431860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0xfffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bge x30, x9, some_label_for_btype_11830504238356431861 # perform operation 
addi x0, x1, 1
some_label_for_btype_11830504238356431861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x5, 0x7408587ba41759ec # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x8000000000000000 # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
bge x21, x14, some_label_for_btype_69512222682291204860 # perform operation 
addi x0, x1, 1
some_label_for_btype_69512222682291204860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
bge x21, x14, some_label_for_btype_69512222682291204861 # perform operation 
addi x0, x1, 1
some_label_for_btype_69512222682291204861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x7879fb627206a97d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x8000000000000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x8, x13, some_label_for_btype_16190893702314504550 # perform operation 
addi x0, x1, 1
some_label_for_btype_16190893702314504550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x8, x13, some_label_for_btype_16190893702314504551 # perform operation 
addi x0, x1, 1
some_label_for_btype_16190893702314504551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x18, 0x5476c0f6058f4529 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x8000000000000000 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
bge x2, x8, some_label_for_btype_33514764743808817630 # perform operation 
addi x0, x1, 1
some_label_for_btype_33514764743808817630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x5555555555555555 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
bge x2, x8, some_label_for_btype_33514764743808817631 # perform operation 
addi x0, x1, 1
some_label_for_btype_33514764743808817631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x15, 0xbf27050a2e1c2612 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x8000000000000000 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bge x17, x23, some_label_for_btype_114064219741132668740 # perform operation 
addi x0, x1, 1
some_label_for_btype_114064219741132668740:
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
bge x17, x23, some_label_for_btype_114064219741132668741 # perform operation 
addi x0, x1, 1
some_label_for_btype_114064219741132668741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x28, 0x4a05b11bead9edab # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x8000000000000000 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bge x14, x29, some_label_for_btype_77683201397955683110 # perform operation 
addi x0, x1, 1
some_label_for_btype_77683201397955683110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000000fffffffe # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bge x14, x29, some_label_for_btype_77683201397955683111 # perform operation 
addi x0, x1, 1
some_label_for_btype_77683201397955683111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x9, 0x0c0419e999fb2b56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x8000000000000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
bge x14, x12, some_label_for_btype_56593924576669597020 # perform operation 
addi x0, x1, 1
some_label_for_btype_56593924576669597020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000100000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
bge x14, x12, some_label_for_btype_56593924576669597021 # perform operation 
addi x0, x1, 1
some_label_for_btype_56593924576669597021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x16, 0xbccc64c39f36b741 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x8000000000000000 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
bge x5, x9, some_label_for_btype_155262808409266907630 # perform operation 
addi x0, x1, 1
some_label_for_btype_155262808409266907630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x0000000100000001 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
bge x5, x9, some_label_for_btype_155262808409266907631 # perform operation 
addi x0, x1, 1
some_label_for_btype_155262808409266907631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x12, 0xe9664a42115d3706 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x8000000000000001 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bge x15, x18, some_label_for_btype_152264373740034342630 # perform operation 
addi x0, x1, 1
some_label_for_btype_152264373740034342630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bge x15, x18, some_label_for_btype_152264373740034342631 # perform operation 
addi x0, x1, 1
some_label_for_btype_152264373740034342631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x15, 0x4727a1b757919e1c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bge x1, x5, some_label_for_btype_28235416511841476010 # perform operation 
addi x0, x1, 1
some_label_for_btype_28235416511841476010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x0000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bge x1, x5, some_label_for_btype_28235416511841476011 # perform operation 
addi x0, x1, 1
some_label_for_btype_28235416511841476011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x20, 0x5a55fe072fb3ea47 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x8000000000000001 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
bge x31, x19, some_label_for_btype_90201735194715080310 # perform operation 
addi x0, x1, 1
some_label_for_btype_90201735194715080310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
bge x31, x19, some_label_for_btype_90201735194715080311 # perform operation 
addi x0, x1, 1
some_label_for_btype_90201735194715080311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x26, 0xb3d69566ab2407f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bge x9, x20, some_label_for_btype_44845640299180635690 # perform operation 
addi x0, x1, 1
some_label_for_btype_44845640299180635690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x8000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bge x9, x20, some_label_for_btype_44845640299180635691 # perform operation 
addi x0, x1, 1
some_label_for_btype_44845640299180635691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x18, 0xfd01efca67cb392f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bge x25, x1, some_label_for_btype_118348046692700614000 # perform operation 
addi x0, x1, 1
some_label_for_btype_118348046692700614000:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bge x25, x1, some_label_for_btype_118348046692700614001 # perform operation 
addi x0, x1, 1
some_label_for_btype_118348046692700614001:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x13, 0xa8ebe34f02d542e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x8000000000000001 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
bge x17, x11, some_label_for_btype_90706599486066536570 # perform operation 
addi x0, x1, 1
some_label_for_btype_90706599486066536570:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x7fffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
bge x17, x11, some_label_for_btype_90706599486066536571 # perform operation 
addi x0, x1, 1
some_label_for_btype_90706599486066536571:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x9, 0xa33afe5b3dd13562 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x8000000000000001 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
bge x17, x26, some_label_for_btype_21855342409240929260 # perform operation 
addi x0, x1, 1
some_label_for_btype_21855342409240929260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
bge x17, x26, some_label_for_btype_21855342409240929261 # perform operation 
addi x0, x1, 1
some_label_for_btype_21855342409240929261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x6, 0x15d38626b1a9a18c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x8000000000000001 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
bge x5, x2, some_label_for_btype_101724267740732200580 # perform operation 
addi x0, x1, 1
some_label_for_btype_101724267740732200580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
bge x5, x2, some_label_for_btype_101724267740732200581 # perform operation 
addi x0, x1, 1
some_label_for_btype_101724267740732200581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x28, 0x033bf5d5fcf2afaa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x8000000000000001 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bge x14, x9, some_label_for_btype_27555990493454918200 # perform operation 
addi x0, x1, 1
some_label_for_btype_27555990493454918200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xfffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bge x14, x9, some_label_for_btype_27555990493454918201 # perform operation 
addi x0, x1, 1
some_label_for_btype_27555990493454918201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x12, 0x82b9ed6627cb2c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x8000000000000001 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
bge x14, x20, some_label_for_btype_148519203401799162190 # perform operation 
addi x0, x1, 1
some_label_for_btype_148519203401799162190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
bge x14, x20, some_label_for_btype_148519203401799162191 # perform operation 
addi x0, x1, 1
some_label_for_btype_148519203401799162191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xccda38312c6bb832 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x8000000000000001 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x2, x13, some_label_for_btype_44446418341542736110 # perform operation 
addi x0, x1, 1
some_label_for_btype_44446418341542736110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x2, x13, some_label_for_btype_44446418341542736111 # perform operation 
addi x0, x1, 1
some_label_for_btype_44446418341542736111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x7, 0x659c1c3eeff53702 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x8000000000000001 # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
bge x11, x4, some_label_for_btype_147866902822174527900 # perform operation 
addi x0, x1, 1
some_label_for_btype_147866902822174527900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x5555555555555555 # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
bge x11, x4, some_label_for_btype_147866902822174527901 # perform operation 
addi x0, x1, 1
some_label_for_btype_147866902822174527901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x16, 0x87f40b125636484b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x8000000000000001 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
bge x12, x10, some_label_for_btype_15631314285092948410 # perform operation 
addi x0, x1, 1
some_label_for_btype_15631314285092948410:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
bge x12, x10, some_label_for_btype_15631314285092948411 # perform operation 
addi x0, x1, 1
some_label_for_btype_15631314285092948411:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x31, 0x24b2ba5105efa4fb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x8000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bge x22, x13, some_label_for_btype_90576803581151854290 # perform operation 
addi x0, x1, 1
some_label_for_btype_90576803581151854290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bge x22, x13, some_label_for_btype_90576803581151854291 # perform operation 
addi x0, x1, 1
some_label_for_btype_90576803581151854291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x1, 0x8be79fecdaa4549c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x8000000000000001 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
bge x28, x31, some_label_for_btype_131579052851236756100 # perform operation 
addi x0, x1, 1
some_label_for_btype_131579052851236756100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000100000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
bge x28, x31, some_label_for_btype_131579052851236756101 # perform operation 
addi x0, x1, 1
some_label_for_btype_131579052851236756101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x11, 0xdbfdeb51c81fe535 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x8000000000000001 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
bge x7, x1, some_label_for_btype_121295683768683047830 # perform operation 
addi x0, x1, 1
some_label_for_btype_121295683768683047830:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x0000000100000001 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
bge x7, x1, some_label_for_btype_121295683768683047831 # perform operation 
addi x0, x1, 1
some_label_for_btype_121295683768683047831:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x7, 0x1b4989d23ca47187 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bge x17, x9, some_label_for_btype_167421422777353559470 # perform operation 
addi x0, x1, 1
some_label_for_btype_167421422777353559470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bge x17, x9, some_label_for_btype_167421422777353559471 # perform operation 
addi x0, x1, 1
some_label_for_btype_167421422777353559471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x13, 0x78804ad329f66bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bge x19, x1, some_label_for_btype_114051906188844511770 # perform operation 
addi x0, x1, 1
some_label_for_btype_114051906188844511770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bge x19, x1, some_label_for_btype_114051906188844511771 # perform operation 
addi x0, x1, 1
some_label_for_btype_114051906188844511771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x6, 0xaf16b3cf635ddc7b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bge x3, x9, some_label_for_btype_3514429125333907480 # perform operation 
addi x0, x1, 1
some_label_for_btype_3514429125333907480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bge x3, x9, some_label_for_btype_3514429125333907481 # perform operation 
addi x0, x1, 1
some_label_for_btype_3514429125333907481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x30, 0x26609cf7d87bd2ae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x7fffffffffffffff # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
bge x8, x27, some_label_for_btype_111480373376235588920 # perform operation 
addi x0, x1, 1
some_label_for_btype_111480373376235588920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x8000000000000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
bge x8, x27, some_label_for_btype_111480373376235588921 # perform operation 
addi x0, x1, 1
some_label_for_btype_111480373376235588921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x23, 0x72b6e5cbaf4df92b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x7fffffffffffffff # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bge x10, x24, some_label_for_btype_24960138910901466750 # perform operation 
addi x0, x1, 1
some_label_for_btype_24960138910901466750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bge x10, x24, some_label_for_btype_24960138910901466751 # perform operation 
addi x0, x1, 1
some_label_for_btype_24960138910901466751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x15, 0x43bd719ae3e588ee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7fffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
bge x28, x24, some_label_for_btype_75609682845589368670 # perform operation 
addi x0, x1, 1
some_label_for_btype_75609682845589368670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7fffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
bge x28, x24, some_label_for_btype_75609682845589368671 # perform operation 
addi x0, x1, 1
some_label_for_btype_75609682845589368671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x4917ec4134d8c411 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x7fffffffffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
bge x27, x31, some_label_for_btype_103911691511749324160 # perform operation 
addi x0, x1, 1
some_label_for_btype_103911691511749324160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
bge x27, x31, some_label_for_btype_103911691511749324161 # perform operation 
addi x0, x1, 1
some_label_for_btype_103911691511749324161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x24, 0xc6914361587c5312 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x7fffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
bge x25, x9, some_label_for_btype_64949729840314629720 # perform operation 
addi x0, x1, 1
some_label_for_btype_64949729840314629720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xffffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
bge x25, x9, some_label_for_btype_64949729840314629721 # perform operation 
addi x0, x1, 1
some_label_for_btype_64949729840314629721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x25, 0x88ca51ef00c64942 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x7fffffffffffffff # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
bge x14, x4, some_label_for_btype_124154456446404758470 # perform operation 
addi x0, x1, 1
some_label_for_btype_124154456446404758470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0xfffffffffffffffe # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
bge x14, x4, some_label_for_btype_124154456446404758471 # perform operation 
addi x0, x1, 1
some_label_for_btype_124154456446404758471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x27, 0x0ae9baec97d836dc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x7fffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
bge x9, x19, some_label_for_btype_11864906782864460470 # perform operation 
addi x0, x1, 1
some_label_for_btype_11864906782864460470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
bge x9, x19, some_label_for_btype_11864906782864460471 # perform operation 
addi x0, x1, 1
some_label_for_btype_11864906782864460471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x27a0920e065e4787 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7fffffffffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x18, x23, some_label_for_btype_149600218558392170670 # perform operation 
addi x0, x1, 1
some_label_for_btype_149600218558392170670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x18, x23, some_label_for_btype_149600218558392170671 # perform operation 
addi x0, x1, 1
some_label_for_btype_149600218558392170671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x27, 0x22da9707303264fe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x7fffffffffffffff # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bge x18, x21, some_label_for_btype_45788547402272159880 # perform operation 
addi x0, x1, 1
some_label_for_btype_45788547402272159880:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x5555555555555555 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bge x18, x21, some_label_for_btype_45788547402272159881 # perform operation 
addi x0, x1, 1
some_label_for_btype_45788547402272159881:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x31, 0xd080b01a1c748c18 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x7fffffffffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
bge x15, x18, some_label_for_btype_96885324242960492860 # perform operation 
addi x0, x1, 1
some_label_for_btype_96885324242960492860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x00000000ffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
bge x15, x18, some_label_for_btype_96885324242960492861 # perform operation 
addi x0, x1, 1
some_label_for_btype_96885324242960492861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x11, 0x3b7f389ae69b15ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x7fffffffffffffff # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
bge x13, x28, some_label_for_btype_133810628605594259750 # perform operation 
addi x0, x1, 1
some_label_for_btype_133810628605594259750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
bge x13, x28, some_label_for_btype_133810628605594259751 # perform operation 
addi x0, x1, 1
some_label_for_btype_133810628605594259751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x14, 0xb1563d818cb02e10 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
bge x19, x6, some_label_for_btype_157971138198538235790 # perform operation 
addi x0, x1, 1
some_label_for_btype_157971138198538235790:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000100000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
bge x19, x6, some_label_for_btype_157971138198538235791 # perform operation 
addi x0, x1, 1
some_label_for_btype_157971138198538235791:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x31, 0x418368fbe0f93157 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
bge x10, x12, some_label_for_btype_115881396637690513660 # perform operation 
addi x0, x1, 1
some_label_for_btype_115881396637690513660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000100000001 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
bge x10, x12, some_label_for_btype_115881396637690513661 # perform operation 
addi x0, x1, 1
some_label_for_btype_115881396637690513661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x13, 0x74ef4737d265fa6d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bge x14, x26, some_label_for_btype_82659820962443476060 # perform operation 
addi x0, x1, 1
some_label_for_btype_82659820962443476060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bge x14, x26, some_label_for_btype_82659820962443476061 # perform operation 
addi x0, x1, 1
some_label_for_btype_82659820962443476061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x30, 0xa1faff15f564c2e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bge x6, x22, some_label_for_btype_123626442331156743740 # perform operation 
addi x0, x1, 1
some_label_for_btype_123626442331156743740:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bge x6, x22, some_label_for_btype_123626442331156743741 # perform operation 
addi x0, x1, 1
some_label_for_btype_123626442331156743741:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x20, 0x2130acd963e2f905 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bge x2, x30, some_label_for_btype_48454471322871009980 # perform operation 
addi x0, x1, 1
some_label_for_btype_48454471322871009980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bge x2, x30, some_label_for_btype_48454471322871009981 # perform operation 
addi x0, x1, 1
some_label_for_btype_48454471322871009981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x12, 0x061133e06062ebb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x7ffffffffffffffe # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
bge x17, x9, some_label_for_btype_169683188004480546600 # perform operation 
addi x0, x1, 1
some_label_for_btype_169683188004480546600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
bge x17, x9, some_label_for_btype_169683188004480546601 # perform operation 
addi x0, x1, 1
some_label_for_btype_169683188004480546601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x23, 0x150360402bab7df9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x7ffffffffffffffe # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
bge x2, x29, some_label_for_btype_141884835303954954980 # perform operation 
addi x0, x1, 1
some_label_for_btype_141884835303954954980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
bge x2, x29, some_label_for_btype_141884835303954954981 # perform operation 
addi x0, x1, 1
some_label_for_btype_141884835303954954981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x12, 0xefa681730905f9db # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bge x4, x25, some_label_for_btype_101620335029659887720 # perform operation 
addi x0, x1, 1
some_label_for_btype_101620335029659887720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bge x4, x25, some_label_for_btype_101620335029659887721 # perform operation 
addi x0, x1, 1
some_label_for_btype_101620335029659887721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x4, 0xc1416078cdd2db94 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x7ffffffffffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bge x15, x11, some_label_for_btype_24224638461176550310 # perform operation 
addi x0, x1, 1
some_label_for_btype_24224638461176550310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x7ffffffffffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bge x15, x11, some_label_for_btype_24224638461176550311 # perform operation 
addi x0, x1, 1
some_label_for_btype_24224638461176550311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x26, 0x0d8980ffd6b166fe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x7ffffffffffffffe # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bge x30, x11, some_label_for_btype_66804048372496084230 # perform operation 
addi x0, x1, 1
some_label_for_btype_66804048372496084230:
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
bge x30, x11, some_label_for_btype_66804048372496084231 # perform operation 
addi x0, x1, 1
some_label_for_btype_66804048372496084231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x25, 0x1d56a5aadd3f6287 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x7ffffffffffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
bge x19, x18, some_label_for_btype_138062589570390641070 # perform operation 
addi x0, x1, 1
some_label_for_btype_138062589570390641070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0xfffffffffffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
bge x19, x18, some_label_for_btype_138062589570390641071 # perform operation 
addi x0, x1, 1
some_label_for_btype_138062589570390641071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x6, 0xf48e70ba5cef2184 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x7ffffffffffffffe # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
bge x16, x1, some_label_for_btype_30625238238502173320 # perform operation 
addi x0, x1, 1
some_label_for_btype_30625238238502173320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
bge x16, x1, some_label_for_btype_30625238238502173321 # perform operation 
addi x0, x1, 1
some_label_for_btype_30625238238502173321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x76d52fc5473bfaa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x7ffffffffffffffe # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x28, x4, some_label_for_btype_110589338074312597210 # perform operation 
addi x0, x1, 1
some_label_for_btype_110589338074312597210:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x28, x4, some_label_for_btype_110589338074312597211 # perform operation 
addi x0, x1, 1
some_label_for_btype_110589338074312597211:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x9, 0xed63815f71bb96fd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x7ffffffffffffffe # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
bge x2, x5, some_label_for_btype_71089744059812790220 # perform operation 
addi x0, x1, 1
some_label_for_btype_71089744059812790220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x5555555555555555 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
bge x2, x5, some_label_for_btype_71089744059812790221 # perform operation 
addi x0, x1, 1
some_label_for_btype_71089744059812790221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x27, 0x1030d1b1c221eb56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x7ffffffffffffffe # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
bge x14, x28, some_label_for_btype_179146933211056519110 # perform operation 
addi x0, x1, 1
some_label_for_btype_179146933211056519110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x00000000ffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
bge x14, x28, some_label_for_btype_179146933211056519111 # perform operation 
addi x0, x1, 1
some_label_for_btype_179146933211056519111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x24, 0x4e9061384bbc80e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x7ffffffffffffffe # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
bge x22, x4, some_label_for_btype_126214079957136983650 # perform operation 
addi x0, x1, 1
some_label_for_btype_126214079957136983650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x00000000fffffffe # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
bge x22, x4, some_label_for_btype_126214079957136983651 # perform operation 
addi x0, x1, 1
some_label_for_btype_126214079957136983651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x1, 0x329a27904de8dd01 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bge x29, x17, some_label_for_btype_50168242114935199070 # perform operation 
addi x0, x1, 1
some_label_for_btype_50168242114935199070:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0x0000000100000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bge x29, x17, some_label_for_btype_50168242114935199071 # perform operation 
addi x0, x1, 1
some_label_for_btype_50168242114935199071:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x29, 0x7cb9ccb1acd174a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
bge x25, x16, some_label_for_btype_49828288223854952590 # perform operation 
addi x0, x1, 1
some_label_for_btype_49828288223854952590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
bge x25, x16, some_label_for_btype_49828288223854952591 # perform operation 
addi x0, x1, 1
some_label_for_btype_49828288223854952591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x13, 0xb9e0b27e36d81b8f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
bge x31, x22, some_label_for_btype_33210307528293119690 # perform operation 
addi x0, x1, 1
some_label_for_btype_33210307528293119690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
bge x31, x22, some_label_for_btype_33210307528293119691 # perform operation 
addi x0, x1, 1
some_label_for_btype_33210307528293119691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x17, 0x67f59b2aa46ee984 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bge x24, x26, some_label_for_btype_101758370889486447640 # perform operation 
addi x0, x1, 1
some_label_for_btype_101758370889486447640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bge x24, x26, some_label_for_btype_101758370889486447641 # perform operation 
addi x0, x1, 1
some_label_for_btype_101758370889486447641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x5, 0x309e72cda280d24e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
bge x26, x4, some_label_for_btype_157822853983271449510 # perform operation 
addi x0, x1, 1
some_label_for_btype_157822853983271449510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000000000002 # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
bge x26, x4, some_label_for_btype_157822853983271449511 # perform operation 
addi x0, x1, 1
some_label_for_btype_157822853983271449511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x7, 0x5efdd1c3d13575cf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xffffffffffffffff # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
bge x18, x27, some_label_for_btype_77665153609094804860 # perform operation 
addi x0, x1, 1
some_label_for_btype_77665153609094804860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x8000000000000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
bge x18, x27, some_label_for_btype_77665153609094804861 # perform operation 
addi x0, x1, 1
some_label_for_btype_77665153609094804861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x16, 0x104afe58009d9dfa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0xffffffffffffffff # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
bge x10, x7, some_label_for_btype_172439239911317276400 # perform operation 
addi x0, x1, 1
some_label_for_btype_172439239911317276400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
bge x10, x7, some_label_for_btype_172439239911317276401 # perform operation 
addi x0, x1, 1
some_label_for_btype_172439239911317276401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x26, 0xaf03518b7dd66bfd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xffffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
bge x3, x24, some_label_for_btype_163253886708135934620 # perform operation 
addi x0, x1, 1
some_label_for_btype_163253886708135934620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x7fffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
bge x3, x24, some_label_for_btype_163253886708135934621 # perform operation 
addi x0, x1, 1
some_label_for_btype_163253886708135934621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x14, 0x3ede501b8c497a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xffffffffffffffff # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bge x8, x23, some_label_for_btype_58614393102291271320 # perform operation 
addi x0, x1, 1
some_label_for_btype_58614393102291271320:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bge x8, x23, some_label_for_btype_58614393102291271321 # perform operation 
addi x0, x1, 1
some_label_for_btype_58614393102291271321:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x19, 0xbcd267693bd5f6f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xffffffffffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
bge x8, x27, some_label_for_btype_146646427047723100850 # perform operation 
addi x0, x1, 1
some_label_for_btype_146646427047723100850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xffffffffffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
bge x8, x27, some_label_for_btype_146646427047723100851 # perform operation 
addi x0, x1, 1
some_label_for_btype_146646427047723100851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x3, 0x2ffa87be25fe3840 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xffffffffffffffff # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
bge x7, x28, some_label_for_btype_29664079841986342310 # perform operation 
addi x0, x1, 1
some_label_for_btype_29664079841986342310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xfffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
bge x7, x28, some_label_for_btype_29664079841986342311 # perform operation 
addi x0, x1, 1
some_label_for_btype_29664079841986342311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x31, 0x66eb7b58a2317602 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xffffffffffffffff # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
bge x4, x17, some_label_for_btype_122250718495826120540 # perform operation 
addi x0, x1, 1
some_label_for_btype_122250718495826120540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
bge x4, x17, some_label_for_btype_122250718495826120541 # perform operation 
addi x0, x1, 1
some_label_for_btype_122250718495826120541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x466d69f62a58e001 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xffffffffffffffff # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x3, x27, some_label_for_btype_86768254433564924140 # perform operation 
addi x0, x1, 1
some_label_for_btype_86768254433564924140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x3, x27, some_label_for_btype_86768254433564924141 # perform operation 
addi x0, x1, 1
some_label_for_btype_86768254433564924141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x24, 0x6b52ccdb93451735 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xffffffffffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
bge x19, x26, some_label_for_btype_57449955084454374040 # perform operation 
addi x0, x1, 1
some_label_for_btype_57449955084454374040:
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
bge x19, x26, some_label_for_btype_57449955084454374041 # perform operation 
addi x0, x1, 1
some_label_for_btype_57449955084454374041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x31, 0xd4f67bbca4d61552 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0xffffffffffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bge x3, x12, some_label_for_btype_164337266267981447580 # perform operation 
addi x0, x1, 1
some_label_for_btype_164337266267981447580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bge x3, x12, some_label_for_btype_164337266267981447581 # perform operation 
addi x0, x1, 1
some_label_for_btype_164337266267981447581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x7, 0xd41793850c1427f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xffffffffffffffff # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bge x24, x13, some_label_for_btype_169400429811083250930 # perform operation 
addi x0, x1, 1
some_label_for_btype_169400429811083250930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bge x24, x13, some_label_for_btype_169400429811083250931 # perform operation 
addi x0, x1, 1
some_label_for_btype_169400429811083250931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x5, 0x11d80da191fc848b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
bge x4, x20, some_label_for_btype_133779252474035599890 # perform operation 
addi x0, x1, 1
some_label_for_btype_133779252474035599890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
bge x4, x20, some_label_for_btype_133779252474035599891 # perform operation 
addi x0, x1, 1
some_label_for_btype_133779252474035599891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x20, 0x2a792850e2f339f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bge x18, x7, some_label_for_btype_179716465027997474080 # perform operation 
addi x0, x1, 1
some_label_for_btype_179716465027997474080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bge x18, x7, some_label_for_btype_179716465027997474081 # perform operation 
addi x0, x1, 1
some_label_for_btype_179716465027997474081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x12, 0x8cfd8df9ad7f28fc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bge x30, x18, some_label_for_btype_96479375484343159490 # perform operation 
addi x0, x1, 1
some_label_for_btype_96479375484343159490:
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
bge x30, x18, some_label_for_btype_96479375484343159491 # perform operation 
addi x0, x1, 1
some_label_for_btype_96479375484343159491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x1, 0x693703d38f6d27c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bge x9, x22, some_label_for_btype_180586634693006849510 # perform operation 
addi x0, x1, 1
some_label_for_btype_180586634693006849510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bge x9, x22, some_label_for_btype_180586634693006849511 # perform operation 
addi x0, x1, 1
some_label_for_btype_180586634693006849511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x23, 0x3177a6516d26cee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xfffffffffffffffe # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
bge x26, x8, some_label_for_btype_81539200063317637280 # perform operation 
addi x0, x1, 1
some_label_for_btype_81539200063317637280:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
bge x26, x8, some_label_for_btype_81539200063317637281 # perform operation 
addi x0, x1, 1
some_label_for_btype_81539200063317637281:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x9, 0x7f18a06120ae4045 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xfffffffffffffffe # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
bge x1, x23, some_label_for_btype_14609180000156252330 # perform operation 
addi x0, x1, 1
some_label_for_btype_14609180000156252330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x8000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
bge x1, x23, some_label_for_btype_14609180000156252331 # perform operation 
addi x0, x1, 1
some_label_for_btype_14609180000156252331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x4, 0x11e1cdb634ffc7da # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0xfffffffffffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
bge x21, x17, some_label_for_btype_117953147613670248240 # perform operation 
addi x0, x1, 1
some_label_for_btype_117953147613670248240:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
bge x21, x17, some_label_for_btype_117953147613670248241 # perform operation 
addi x0, x1, 1
some_label_for_btype_117953147613670248241:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x24, 0x54fa6c40522a36c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xfffffffffffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bge x1, x14, some_label_for_btype_95951424194781587260 # perform operation 
addi x0, x1, 1
some_label_for_btype_95951424194781587260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x7fffffffffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bge x1, x14, some_label_for_btype_95951424194781587261 # perform operation 
addi x0, x1, 1
some_label_for_btype_95951424194781587261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x20, 0xd9183d5f4e3ffc42 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xfffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bge x30, x25, some_label_for_btype_122103830181205183950 # perform operation 
addi x0, x1, 1
some_label_for_btype_122103830181205183950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bge x30, x25, some_label_for_btype_122103830181205183951 # perform operation 
addi x0, x1, 1
some_label_for_btype_122103830181205183951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x4, 0xedc4300f0cb5e019 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0xfffffffffffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bge x31, x16, some_label_for_btype_11119813340645167720 # perform operation 
addi x0, x1, 1
some_label_for_btype_11119813340645167720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bge x31, x16, some_label_for_btype_11119813340645167721 # perform operation 
addi x0, x1, 1
some_label_for_btype_11119813340645167721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x11, 0x356fb9c035eff228 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xfffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
bge x26, x19, some_label_for_btype_54311795706218825950 # perform operation 
addi x0, x1, 1
some_label_for_btype_54311795706218825950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xfffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
bge x26, x19, some_label_for_btype_54311795706218825951 # perform operation 
addi x0, x1, 1
some_label_for_btype_54311795706218825951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x14, 0xf1fbad875f2e657a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0xfffffffffffffffe # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
bge x8, x15, some_label_for_btype_65828960006410375960 # perform operation 
addi x0, x1, 1
some_label_for_btype_65828960006410375960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
bge x8, x15, some_label_for_btype_65828960006410375961 # perform operation 
addi x0, x1, 1
some_label_for_btype_65828960006410375961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x0a2eb8945e4a8476 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xfffffffffffffffe # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x26, x6, some_label_for_btype_150165056393865951440 # perform operation 
addi x0, x1, 1
some_label_for_btype_150165056393865951440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x26, x6, some_label_for_btype_150165056393865951441 # perform operation 
addi x0, x1, 1
some_label_for_btype_150165056393865951441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x18, 0x480b64037fa6e52e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xfffffffffffffffe # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
bge x24, x13, some_label_for_btype_79856339958765078580 # perform operation 
addi x0, x1, 1
some_label_for_btype_79856339958765078580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
bge x24, x13, some_label_for_btype_79856339958765078581 # perform operation 
addi x0, x1, 1
some_label_for_btype_79856339958765078581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x10, 0x29cf52021287ec8e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xfffffffffffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bge x7, x15, some_label_for_btype_114599374828283768110 # perform operation 
addi x0, x1, 1
some_label_for_btype_114599374828283768110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bge x7, x15, some_label_for_btype_114599374828283768111 # perform operation 
addi x0, x1, 1
some_label_for_btype_114599374828283768111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x10, 0x191127ff904e2da9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0xfffffffffffffffe # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bge x12, x29, some_label_for_btype_147801817997939239560 # perform operation 
addi x0, x1, 1
some_label_for_btype_147801817997939239560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000000fffffffe # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bge x12, x29, some_label_for_btype_147801817997939239561 # perform operation 
addi x0, x1, 1
some_label_for_btype_147801817997939239561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x19, 0x50a712dbe69cb6e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
bge x30, x22, some_label_for_btype_83608324649271441160 # perform operation 
addi x0, x1, 1
some_label_for_btype_83608324649271441160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0000000100000000 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
bge x30, x22, some_label_for_btype_83608324649271441161 # perform operation 
addi x0, x1, 1
some_label_for_btype_83608324649271441161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x7, 0x6dfe2d2e868c46ac # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bge x15, x2, some_label_for_btype_23956529987617692170 # perform operation 
addi x0, x1, 1
some_label_for_btype_23956529987617692170:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bge x15, x2, some_label_for_btype_23956529987617692171 # perform operation 
addi x0, x1, 1
some_label_for_btype_23956529987617692171:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x21, 0xfeae529329c9f7b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bge x8, x18, some_label_for_btype_139561404015412987030 # perform operation 
addi x0, x1, 1
some_label_for_btype_139561404015412987030:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bge x8, x18, some_label_for_btype_139561404015412987031 # perform operation 
addi x0, x1, 1
some_label_for_btype_139561404015412987031:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x6, 0x482e3fe6e117d1ff # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
bge x2, x24, some_label_for_btype_37443362041276015480 # perform operation 
addi x0, x1, 1
some_label_for_btype_37443362041276015480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
bge x2, x24, some_label_for_btype_37443362041276015481 # perform operation 
addi x0, x1, 1
some_label_for_btype_37443362041276015481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x22, 0x333c373f06426706 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
bge x6, x5, some_label_for_btype_77296499526211383660 # perform operation 
addi x0, x1, 1
some_label_for_btype_77296499526211383660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
bge x6, x5, some_label_for_btype_77296499526211383661 # perform operation 
addi x0, x1, 1
some_label_for_btype_77296499526211383661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x2, 0x9df962b4b81051fd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
bge x11, x22, some_label_for_btype_149365034564656212720 # perform operation 
addi x0, x1, 1
some_label_for_btype_149365034564656212720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x8000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
bge x11, x22, some_label_for_btype_149365034564656212721 # perform operation 
addi x0, x1, 1
some_label_for_btype_149365034564656212721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x31, 0x6164c43740deb26f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bge x15, x1, some_label_for_btype_18994165902337575470 # perform operation 
addi x0, x1, 1
some_label_for_btype_18994165902337575470:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bge x15, x1, some_label_for_btype_18994165902337575471 # perform operation 
addi x0, x1, 1
some_label_for_btype_18994165902337575471:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x3, 0x77c4ba945b99f314 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bge x20, x17, some_label_for_btype_54307735591804272040 # perform operation 
addi x0, x1, 1
some_label_for_btype_54307735591804272040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x7fffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bge x20, x17, some_label_for_btype_54307735591804272041 # perform operation 
addi x0, x1, 1
some_label_for_btype_54307735591804272041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x9, 0xdb58647f32072f02 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
bge x30, x29, some_label_for_btype_179464664539214441660 # perform operation 
addi x0, x1, 1
some_label_for_btype_179464664539214441660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x7ffffffffffffffe # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
bge x30, x29, some_label_for_btype_179464664539214441661 # perform operation 
addi x0, x1, 1
some_label_for_btype_179464664539214441661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x10, 0x2327dba551781bad # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
bge x5, x7, some_label_for_btype_100412027619608428860 # perform operation 
addi x0, x1, 1
some_label_for_btype_100412027619608428860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xffffffffffffffff # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
bge x5, x7, some_label_for_btype_100412027619608428861 # perform operation 
addi x0, x1, 1
some_label_for_btype_100412027619608428861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x30, 0x70af993d012a02a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
bge x7, x2, some_label_for_btype_103140927762976701590 # perform operation 
addi x0, x1, 1
some_label_for_btype_103140927762976701590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xfffffffffffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
bge x7, x2, some_label_for_btype_103140927762976701591 # perform operation 
addi x0, x1, 1
some_label_for_btype_103140927762976701591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x14, 0x314b78f311e34bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
bge x11, x20, some_label_for_btype_127719657232858047970 # perform operation 
addi x0, x1, 1
some_label_for_btype_127719657232858047970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
bge x11, x20, some_label_for_btype_127719657232858047971 # perform operation 
addi x0, x1, 1
some_label_for_btype_127719657232858047971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x953f442ab0663827 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x5, x24, some_label_for_btype_31652610827349664440 # perform operation 
addi x0, x1, 1
some_label_for_btype_31652610827349664440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x5, x24, some_label_for_btype_31652610827349664441 # perform operation 
addi x0, x1, 1
some_label_for_btype_31652610827349664441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x16, 0xb36a8b22ba4edf8c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
bge x1, x25, some_label_for_btype_88841484216583128230 # perform operation 
addi x0, x1, 1
some_label_for_btype_88841484216583128230:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x5555555555555555 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
bge x1, x25, some_label_for_btype_88841484216583128231 # perform operation 
addi x0, x1, 1
some_label_for_btype_88841484216583128231:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x7, 0xe97c68c25167ce34 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
bge x28, x13, some_label_for_btype_80758350931441988690 # perform operation 
addi x0, x1, 1
some_label_for_btype_80758350931441988690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x00000000ffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
bge x28, x13, some_label_for_btype_80758350931441988691 # perform operation 
addi x0, x1, 1
some_label_for_btype_80758350931441988691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x27, 0xd24f411ca662d31e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bge x31, x15, some_label_for_btype_120093550435340071590 # perform operation 
addi x0, x1, 1
some_label_for_btype_120093550435340071590:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x00000000fffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bge x31, x15, some_label_for_btype_120093550435340071591 # perform operation 
addi x0, x1, 1
some_label_for_btype_120093550435340071591:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x10, 0x8517054baa9ac2d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
bge x15, x14, some_label_for_btype_78951708483691380970 # perform operation 
addi x0, x1, 1
some_label_for_btype_78951708483691380970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000100000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
bge x15, x14, some_label_for_btype_78951708483691380971 # perform operation 
addi x0, x1, 1
some_label_for_btype_78951708483691380971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x11, 0xf98f81f289f89a9e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
bge x15, x21, some_label_for_btype_159983947194976666370 # perform operation 
addi x0, x1, 1
some_label_for_btype_159983947194976666370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
bge x15, x21, some_label_for_btype_159983947194976666371 # perform operation 
addi x0, x1, 1
some_label_for_btype_159983947194976666371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x17, 0xd01f02dd2f70f94c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bge x11, x7, some_label_for_btype_131168192387242077380 # perform operation 
addi x0, x1, 1
some_label_for_btype_131168192387242077380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bge x11, x7, some_label_for_btype_131168192387242077381 # perform operation 
addi x0, x1, 1
some_label_for_btype_131168192387242077381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x4, 0xa582d5328a6bc25d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bge x22, x25, some_label_for_btype_3465182359267397800 # perform operation 
addi x0, x1, 1
some_label_for_btype_3465182359267397800:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bge x22, x25, some_label_for_btype_3465182359267397801 # perform operation 
addi x0, x1, 1
some_label_for_btype_3465182359267397801:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x6, 0x66a1e898f5872367 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
bge x20, x5, some_label_for_btype_182182232702674241980 # perform operation 
addi x0, x1, 1
some_label_for_btype_182182232702674241980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
bge x20, x5, some_label_for_btype_182182232702674241981 # perform operation 
addi x0, x1, 1
some_label_for_btype_182182232702674241981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x8, 0xf777bdd3c859b828 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bge x26, x5, some_label_for_btype_16093229309832317200 # perform operation 
addi x0, x1, 1
some_label_for_btype_16093229309832317200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x8000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bge x26, x5, some_label_for_btype_16093229309832317201 # perform operation 
addi x0, x1, 1
some_label_for_btype_16093229309832317201:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x3, 0x3cb08643feec51dd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
bge x30, x26, some_label_for_btype_22969131373977191100 # perform operation 
addi x0, x1, 1
some_label_for_btype_22969131373977191100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
bge x30, x26, some_label_for_btype_22969131373977191101 # perform operation 
addi x0, x1, 1
some_label_for_btype_22969131373977191101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x15, 0xa01cf2a03243a940 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
bge x13, x16, some_label_for_btype_12394499446930041160 # perform operation 
addi x0, x1, 1
some_label_for_btype_12394499446930041160:
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
bge x13, x16, some_label_for_btype_12394499446930041161 # perform operation 
addi x0, x1, 1
some_label_for_btype_12394499446930041161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x16, 0x29e0cdd8ae9cb6a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
bge x22, x13, some_label_for_btype_180070421789180350180 # perform operation 
addi x0, x1, 1
some_label_for_btype_180070421789180350180:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x7ffffffffffffffe # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
bge x22, x13, some_label_for_btype_180070421789180350181 # perform operation 
addi x0, x1, 1
some_label_for_btype_180070421789180350181:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x4, 0x901035d3c21f3e97 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
bge x23, x5, some_label_for_btype_138428516770145302670 # perform operation 
addi x0, x1, 1
some_label_for_btype_138428516770145302670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xffffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
bge x23, x5, some_label_for_btype_138428516770145302671 # perform operation 
addi x0, x1, 1
some_label_for_btype_138428516770145302671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x24, 0x806caafb650afc8d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
bge x28, x21, some_label_for_btype_93602318098467525370 # perform operation 
addi x0, x1, 1
some_label_for_btype_93602318098467525370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xfffffffffffffffe # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
bge x28, x21, some_label_for_btype_93602318098467525371 # perform operation 
addi x0, x1, 1
some_label_for_btype_93602318098467525371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x11, 0x62c40bc907022a9d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
bge x16, x1, some_label_for_btype_168165293183591474370 # perform operation 
addi x0, x1, 1
some_label_for_btype_168165293183591474370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
bge x16, x1, some_label_for_btype_168165293183591474371 # perform operation 
addi x0, x1, 1
some_label_for_btype_168165293183591474371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x4bd4255657cce09b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x4, x13, some_label_for_btype_136923677630326746390 # perform operation 
addi x0, x1, 1
some_label_for_btype_136923677630326746390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x4, x13, some_label_for_btype_136923677630326746391 # perform operation 
addi x0, x1, 1
some_label_for_btype_136923677630326746391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x3, 0x4e329d83e46bf49c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bge x26, x2, some_label_for_btype_79919259748603872580 # perform operation 
addi x0, x1, 1
some_label_for_btype_79919259748603872580:
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
bge x26, x2, some_label_for_btype_79919259748603872581 # perform operation 
addi x0, x1, 1
some_label_for_btype_79919259748603872581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x9, 0x5f0f9a8c8536a625 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bge x26, x31, some_label_for_btype_148868007243237724450 # perform operation 
addi x0, x1, 1
some_label_for_btype_148868007243237724450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bge x26, x31, some_label_for_btype_148868007243237724451 # perform operation 
addi x0, x1, 1
some_label_for_btype_148868007243237724451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x31, 0x2dcd2e9359d27a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
bge x25, x20, some_label_for_btype_81942465194811825850 # perform operation 
addi x0, x1, 1
some_label_for_btype_81942465194811825850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
bge x25, x20, some_label_for_btype_81942465194811825851 # perform operation 
addi x0, x1, 1
some_label_for_btype_81942465194811825851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x29, 0xf71da3967a8c9cc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
bge x19, x13, some_label_for_btype_10885084568558182500 # perform operation 
addi x0, x1, 1
some_label_for_btype_10885084568558182500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
bge x19, x13, some_label_for_btype_10885084568558182501 # perform operation 
addi x0, x1, 1
some_label_for_btype_10885084568558182501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x24, 0x378e78a737490d06 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
bge x26, x25, some_label_for_btype_146921170496088947530 # perform operation 
addi x0, x1, 1
some_label_for_btype_146921170496088947530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
bge x26, x25, some_label_for_btype_146921170496088947531 # perform operation 
addi x0, x1, 1
some_label_for_btype_146921170496088947531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x23, 0x377c45a80dfea069 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x5555555555555555 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bge x4, x18, some_label_for_btype_103379258901053800390 # perform operation 
addi x0, x1, 1
some_label_for_btype_103379258901053800390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bge x4, x18, some_label_for_btype_103379258901053800391 # perform operation 
addi x0, x1, 1
some_label_for_btype_103379258901053800391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x28, 0x9a8f34417c9430e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bge x12, x26, some_label_for_btype_107079912846988058650 # perform operation 
addi x0, x1, 1
some_label_for_btype_107079912846988058650:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bge x12, x26, some_label_for_btype_107079912846988058651 # perform operation 
addi x0, x1, 1
some_label_for_btype_107079912846988058651:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x6, 0x9b3f2a9b445fd5db # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x5555555555555555 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
bge x9, x22, some_label_for_btype_181828143851316155980 # perform operation 
addi x0, x1, 1
some_label_for_btype_181828143851316155980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
bge x9, x22, some_label_for_btype_181828143851316155981 # perform operation 
addi x0, x1, 1
some_label_for_btype_181828143851316155981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x15, 0x6821cf3c14c90513 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x5555555555555555 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
bge x8, x22, some_label_for_btype_150036575376288739220 # perform operation 
addi x0, x1, 1
some_label_for_btype_150036575376288739220:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x8000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
bge x8, x22, some_label_for_btype_150036575376288739221 # perform operation 
addi x0, x1, 1
some_label_for_btype_150036575376288739221:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x5, 0xb20a1e8b3315a5bb # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x5555555555555555 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bge x28, x19, some_label_for_btype_38281547720895261970 # perform operation 
addi x0, x1, 1
some_label_for_btype_38281547720895261970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x8000000000000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bge x28, x19, some_label_for_btype_38281547720895261971 # perform operation 
addi x0, x1, 1
some_label_for_btype_38281547720895261971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x7, 0xb2dc29431de915ce # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x5555555555555555 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bge x8, x6, some_label_for_btype_172827146845642291080 # perform operation 
addi x0, x1, 1
some_label_for_btype_172827146845642291080:
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
bge x8, x6, some_label_for_btype_172827146845642291081 # perform operation 
addi x0, x1, 1
some_label_for_btype_172827146845642291081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x16, 0x1847a9c5d41cdb0c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x5555555555555555 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
bge x4, x13, some_label_for_btype_164051755338895966480 # perform operation 
addi x0, x1, 1
some_label_for_btype_164051755338895966480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x7ffffffffffffffe # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
bge x4, x13, some_label_for_btype_164051755338895966481 # perform operation 
addi x0, x1, 1
some_label_for_btype_164051755338895966481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x4, 0x35e2104963a2f453 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x5555555555555555 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bge x7, x14, some_label_for_btype_141260415618080185810 # perform operation 
addi x0, x1, 1
some_label_for_btype_141260415618080185810:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0xffffffffffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bge x7, x14, some_label_for_btype_141260415618080185811 # perform operation 
addi x0, x1, 1
some_label_for_btype_141260415618080185811:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x29, 0x487a0260d269a739 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x5555555555555555 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
bge x4, x15, some_label_for_btype_101839772973130459710 # perform operation 
addi x0, x1, 1
some_label_for_btype_101839772973130459710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0xfffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
bge x4, x15, some_label_for_btype_101839772973130459711 # perform operation 
addi x0, x1, 1
some_label_for_btype_101839772973130459711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x30, 0x77f8aceecfbefed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x5555555555555555 # initialize rs1
li x26, 0x5bbc887763ae86f7 # initialize rs2
bge x8, x26, some_label_for_btype_2862260243435204400 # perform operation 
addi x0, x1, 1
some_label_for_btype_2862260243435204400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x5bbc887763ae86f7 # initialize rs2
bge x8, x26, some_label_for_btype_2862260243435204401 # perform operation 
addi x0, x1, 1
some_label_for_btype_2862260243435204401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x78f080f2f3a12230 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x5555555555555555 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x27, x8, some_label_for_btype_122628991783673007330 # perform operation 
addi x0, x1, 1
some_label_for_btype_122628991783673007330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x27, x8, some_label_for_btype_122628991783673007331 # perform operation 
addi x0, x1, 1
some_label_for_btype_122628991783673007331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x12, 0xdc69e890fac41c18 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
bge x25, x13, some_label_for_btype_133104686491660845390 # perform operation 
addi x0, x1, 1
some_label_for_btype_133104686491660845390:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
bge x25, x13, some_label_for_btype_133104686491660845391 # perform operation 
addi x0, x1, 1
some_label_for_btype_133104686491660845391:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x1, 0x6725edd85e612a57 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x5555555555555555 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bge x9, x17, some_label_for_btype_165725120318211811310 # perform operation 
addi x0, x1, 1
some_label_for_btype_165725120318211811310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bge x9, x17, some_label_for_btype_165725120318211811311 # perform operation 
addi x0, x1, 1
some_label_for_btype_165725120318211811311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x23, 0x620f0acc5c7e0433 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x5555555555555555 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
bge x30, x1, some_label_for_btype_94705751842207645480 # perform operation 
addi x0, x1, 1
some_label_for_btype_94705751842207645480:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x00000000fffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
bge x30, x1, some_label_for_btype_94705751842207645481 # perform operation 
addi x0, x1, 1
some_label_for_btype_94705751842207645481:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x27, 0x4f5bea326fd4e213 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x5555555555555555 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bge x9, x17, some_label_for_btype_155172314808164159340 # perform operation 
addi x0, x1, 1
some_label_for_btype_155172314808164159340:
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
bge x9, x17, some_label_for_btype_155172314808164159341 # perform operation 
addi x0, x1, 1
some_label_for_btype_155172314808164159341:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x27, 0x7307b79377a4f098 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x5555555555555555 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bge x9, x7, some_label_for_btype_120528883621659264820 # perform operation 
addi x0, x1, 1
some_label_for_btype_120528883621659264820:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bge x9, x7, some_label_for_btype_120528883621659264821 # perform operation 
addi x0, x1, 1
some_label_for_btype_120528883621659264821:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x31, 0x05c584cab8e1789c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bge x22, x7, some_label_for_btype_105910830528487370540 # perform operation 
addi x0, x1, 1
some_label_for_btype_105910830528487370540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bge x22, x7, some_label_for_btype_105910830528487370541 # perform operation 
addi x0, x1, 1
some_label_for_btype_105910830528487370541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x7, 0x638ed6fac4a854b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
bge x4, x21, some_label_for_btype_55321279890546622530 # perform operation 
addi x0, x1, 1
some_label_for_btype_55321279890546622530:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000000000001 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
bge x4, x21, some_label_for_btype_55321279890546622531 # perform operation 
addi x0, x1, 1
some_label_for_btype_55321279890546622531:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x11, 0x01c2d29eff0bddf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
bge x30, x6, some_label_for_btype_101111700986746684450 # perform operation 
addi x0, x1, 1
some_label_for_btype_101111700986746684450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
bge x30, x6, some_label_for_btype_101111700986746684451 # perform operation 
addi x0, x1, 1
some_label_for_btype_101111700986746684451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x6, 0x6648cfc3e4df2227 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000000ffffffff # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
bge x13, x23, some_label_for_btype_73716748329915170190 # perform operation 
addi x0, x1, 1
some_label_for_btype_73716748329915170190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x8000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
bge x13, x23, some_label_for_btype_73716748329915170191 # perform operation 
addi x0, x1, 1
some_label_for_btype_73716748329915170191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x13, 0x738bccb6c7af17ba # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x00000000ffffffff # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bge x16, x1, some_label_for_btype_89972760520917798930 # perform operation 
addi x0, x1, 1
some_label_for_btype_89972760520917798930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bge x16, x1, some_label_for_btype_89972760520917798931 # perform operation 
addi x0, x1, 1
some_label_for_btype_89972760520917798931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x23, 0x5872466071d55322 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000000ffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
bge x31, x27, some_label_for_btype_106004107591320165360 # perform operation 
addi x0, x1, 1
some_label_for_btype_106004107591320165360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7fffffffffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
bge x31, x27, some_label_for_btype_106004107591320165361 # perform operation 
addi x0, x1, 1
some_label_for_btype_106004107591320165361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x19, 0x1765b4208a15c8e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x00000000ffffffff # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bge x26, x12, some_label_for_btype_69971782880546062720 # perform operation 
addi x0, x1, 1
some_label_for_btype_69971782880546062720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bge x26, x12, some_label_for_btype_69971782880546062721 # perform operation 
addi x0, x1, 1
some_label_for_btype_69971782880546062721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x12, 0xcb2f3caf0560b4ca # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000000ffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bge x2, x26, some_label_for_btype_142324029956938201600 # perform operation 
addi x0, x1, 1
some_label_for_btype_142324029956938201600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xffffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bge x2, x26, some_label_for_btype_142324029956938201601 # perform operation 
addi x0, x1, 1
some_label_for_btype_142324029956938201601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x4, 0xf9ae31ec10cf149d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000000ffffffff # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bge x17, x22, some_label_for_btype_140640260665919971900 # perform operation 
addi x0, x1, 1
some_label_for_btype_140640260665919971900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xfffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bge x17, x22, some_label_for_btype_140640260665919971901 # perform operation 
addi x0, x1, 1
some_label_for_btype_140640260665919971901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x29, 0xc1f89d66f5575ec5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x00000000ffffffff # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
bge x6, x30, some_label_for_btype_166999770623083542060 # perform operation 
addi x0, x1, 1
some_label_for_btype_166999770623083542060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
bge x6, x30, some_label_for_btype_166999770623083542061 # perform operation 
addi x0, x1, 1
some_label_for_btype_166999770623083542061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x48247e7105870745 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x00000000ffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x9, x29, some_label_for_btype_138747658025597267850 # perform operation 
addi x0, x1, 1
some_label_for_btype_138747658025597267850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x9, x29, some_label_for_btype_138747658025597267851 # perform operation 
addi x0, x1, 1
some_label_for_btype_138747658025597267851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x17, 0x81e9b13214ba016c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x00000000ffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
bge x14, x15, some_label_for_btype_147945399527535944550 # perform operation 
addi x0, x1, 1
some_label_for_btype_147945399527535944550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x5555555555555555 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
bge x14, x15, some_label_for_btype_147945399527535944551 # perform operation 
addi x0, x1, 1
some_label_for_btype_147945399527535944551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x11, 0xdaffbf6d9ef85c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bge x12, x31, some_label_for_btype_62878479100063218920 # perform operation 
addi x0, x1, 1
some_label_for_btype_62878479100063218920:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bge x12, x31, some_label_for_btype_62878479100063218921 # perform operation 
addi x0, x1, 1
some_label_for_btype_62878479100063218921:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0xfb5a4edabc2da402 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0x00000000ffffffff # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
bge x7, x14, some_label_for_btype_9567120223992318630 # perform operation 
addi x0, x1, 1
some_label_for_btype_9567120223992318630:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x00000000fffffffe # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
bge x7, x14, some_label_for_btype_9567120223992318631 # perform operation 
addi x0, x1, 1
some_label_for_btype_9567120223992318631:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x10, 0xce2111bba56e7a2f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
bge x8, x19, some_label_for_btype_79596746458677054310 # perform operation 
addi x0, x1, 1
some_label_for_btype_79596746458677054310:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x0000000100000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
bge x8, x19, some_label_for_btype_79596746458677054311 # perform operation 
addi x0, x1, 1
some_label_for_btype_79596746458677054311:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x16, 0xe511ce50b88a81ef # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
bge x11, x17, some_label_for_btype_111201866784609840110 # perform operation 
addi x0, x1, 1
some_label_for_btype_111201866784609840110:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
bge x11, x17, some_label_for_btype_111201866784609840111 # perform operation 
addi x0, x1, 1
some_label_for_btype_111201866784609840111:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x27, 0x2c877401091556c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
bge x12, x21, some_label_for_btype_72545915475375948490 # perform operation 
addi x0, x1, 1
some_label_for_btype_72545915475375948490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
bge x12, x21, some_label_for_btype_72545915475375948491 # perform operation 
addi x0, x1, 1
some_label_for_btype_72545915475375948491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x12, 0xe0cac605231b5e12 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000000fffffffe # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bge x17, x23, some_label_for_btype_9951621727618674120 # perform operation 
addi x0, x1, 1
some_label_for_btype_9951621727618674120:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bge x17, x23, some_label_for_btype_9951621727618674121 # perform operation 
addi x0, x1, 1
some_label_for_btype_9951621727618674121:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x1, 0x6a6a9d977ac5fc31 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
bge x28, x11, some_label_for_btype_77379181373349239560 # perform operation 
addi x0, x1, 1
some_label_for_btype_77379181373349239560:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000000000002 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
bge x28, x11, some_label_for_btype_77379181373349239561 # perform operation 
addi x0, x1, 1
some_label_for_btype_77379181373349239561:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x3, 0xeec7e3e0dd8342ae # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x00000000fffffffe # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
bge x17, x1, some_label_for_btype_144060192729061209780 # perform operation 
addi x0, x1, 1
some_label_for_btype_144060192729061209780:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
bge x17, x1, some_label_for_btype_144060192729061209781 # perform operation 
addi x0, x1, 1
some_label_for_btype_144060192729061209781:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x26, 0x10988c1786199a6c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x00000000fffffffe # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bge x15, x24, some_label_for_btype_178710651873417064380 # perform operation 
addi x0, x1, 1
some_label_for_btype_178710651873417064380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bge x15, x24, some_label_for_btype_178710651873417064381 # perform operation 
addi x0, x1, 1
some_label_for_btype_178710651873417064381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x21, 0xaa75d7f8b877a073 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x00000000fffffffe # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
bge x25, x2, some_label_for_btype_57789240850561138760 # perform operation 
addi x0, x1, 1
some_label_for_btype_57789240850561138760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x7fffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
bge x25, x2, some_label_for_btype_57789240850561138761 # perform operation 
addi x0, x1, 1
some_label_for_btype_57789240850561138761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x7, 0x85924610d1a63d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x00000000fffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
bge x31, x2, some_label_for_btype_113869130716760954940 # perform operation 
addi x0, x1, 1
some_label_for_btype_113869130716760954940:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
bge x31, x2, some_label_for_btype_113869130716760954941 # perform operation 
addi x0, x1, 1
some_label_for_btype_113869130716760954941:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x27, 0xbf010b7ac629d836 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x00000000fffffffe # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bge x2, x10, some_label_for_btype_167157381887934261990 # perform operation 
addi x0, x1, 1
some_label_for_btype_167157381887934261990:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0xffffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bge x2, x10, some_label_for_btype_167157381887934261991 # perform operation 
addi x0, x1, 1
some_label_for_btype_167157381887934261991:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x30, 0xbe540b66c80c52b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x00000000fffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
bge x6, x13, some_label_for_btype_10341444447958456660 # perform operation 
addi x0, x1, 1
some_label_for_btype_10341444447958456660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xfffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
bge x6, x13, some_label_for_btype_10341444447958456661 # perform operation 
addi x0, x1, 1
some_label_for_btype_10341444447958456661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x6, 0x1e63fbb78079872a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x00000000fffffffe # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
bge x23, x19, some_label_for_btype_76939305640787397260 # perform operation 
addi x0, x1, 1
some_label_for_btype_76939305640787397260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
bge x23, x19, some_label_for_btype_76939305640787397261 # perform operation 
addi x0, x1, 1
some_label_for_btype_76939305640787397261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0xc4acf2ceb6059882 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x00000000fffffffe # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x13, x25, some_label_for_btype_145758555301728754680 # perform operation 
addi x0, x1, 1
some_label_for_btype_145758555301728754680:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x13, x25, some_label_for_btype_145758555301728754681 # perform operation 
addi x0, x1, 1
some_label_for_btype_145758555301728754681:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x21, 0x6544fb584ab2fcc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x00000000fffffffe # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
bge x3, x7, some_label_for_btype_169786650877081126710 # perform operation 
addi x0, x1, 1
some_label_for_btype_169786650877081126710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x5555555555555555 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
bge x3, x7, some_label_for_btype_169786650877081126711 # perform operation 
addi x0, x1, 1
some_label_for_btype_169786650877081126711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x6, 0x380af750fd52e2ee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
bge x27, x11, some_label_for_btype_172095678677427903370 # perform operation 
addi x0, x1, 1
some_label_for_btype_172095678677427903370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x00000000ffffffff # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
bge x27, x11, some_label_for_btype_172095678677427903371 # perform operation 
addi x0, x1, 1
some_label_for_btype_172095678677427903371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x22, 0x2969b7dbe45d6b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x00000000fffffffe # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
bge x21, x30, some_label_for_btype_17193176967772206860 # perform operation 
addi x0, x1, 1
some_label_for_btype_17193176967772206860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x00000000fffffffe # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
bge x21, x30, some_label_for_btype_17193176967772206861 # perform operation 
addi x0, x1, 1
some_label_for_btype_17193176967772206861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x25, 0xdf2bf0cc7a30d369 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
bge x20, x12, some_label_for_btype_17856006188422484660 # perform operation 
addi x0, x1, 1
some_label_for_btype_17856006188422484660:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x0000000100000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
bge x20, x12, some_label_for_btype_17856006188422484661 # perform operation 
addi x0, x1, 1
some_label_for_btype_17856006188422484661:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x3, 0xc29c2fade36f28d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
bge x4, x21, some_label_for_btype_36034102531903850350 # perform operation 
addi x0, x1, 1
some_label_for_btype_36034102531903850350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
bge x4, x21, some_label_for_btype_36034102531903850351 # perform operation 
addi x0, x1, 1
some_label_for_btype_36034102531903850351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x12, 0x4c177708c665eb15 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x0000000100000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
bge x11, x3, some_label_for_btype_44936897700164764450 # perform operation 
addi x0, x1, 1
some_label_for_btype_44936897700164764450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
bge x11, x3, some_label_for_btype_44936897700164764451 # perform operation 
addi x0, x1, 1
some_label_for_btype_44936897700164764451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x13, 0x473fe93cb8c8551a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x0000000100000000 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
bge x31, x12, some_label_for_btype_53484040878048659980 # perform operation 
addi x0, x1, 1
some_label_for_btype_53484040878048659980:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
bge x31, x12, some_label_for_btype_53484040878048659981 # perform operation 
addi x0, x1, 1
some_label_for_btype_53484040878048659981:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x16, 0x81006d99ce4cde56 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bge x26, x27, some_label_for_btype_101232809094102607930 # perform operation 
addi x0, x1, 1
some_label_for_btype_101232809094102607930:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bge x26, x27, some_label_for_btype_101232809094102607931 # perform operation 
addi x0, x1, 1
some_label_for_btype_101232809094102607931:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x1, 0x692b93e0a2ac5109 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000100000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
bge x4, x3, some_label_for_btype_138410935178154618580 # perform operation 
addi x0, x1, 1
some_label_for_btype_138410935178154618580:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
bge x4, x3, some_label_for_btype_138410935178154618581 # perform operation 
addi x0, x1, 1
some_label_for_btype_138410935178154618581:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x6, 0xe61c226eb67dea93 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0x0000000100000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
bge x4, x14, some_label_for_btype_44345277223314569760 # perform operation 
addi x0, x1, 1
some_label_for_btype_44345277223314569760:
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
bge x4, x14, some_label_for_btype_44345277223314569761 # perform operation 
addi x0, x1, 1
some_label_for_btype_44345277223314569761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x30, 0x85956bb7da6647d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000100000000 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bge x28, x25, some_label_for_btype_133483200355078978710 # perform operation 
addi x0, x1, 1
some_label_for_btype_133483200355078978710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bge x28, x25, some_label_for_btype_133483200355078978711 # perform operation 
addi x0, x1, 1
some_label_for_btype_133483200355078978711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x19, 0x140f415530472b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000100000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bge x12, x22, some_label_for_btype_165057039059513034370 # perform operation 
addi x0, x1, 1
some_label_for_btype_165057039059513034370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bge x12, x22, some_label_for_btype_165057039059513034371 # perform operation 
addi x0, x1, 1
some_label_for_btype_165057039059513034371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x19, 0x1a6e293b9593e277 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000100000000 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
bge x8, x9, some_label_for_btype_114200861651803717350 # perform operation 
addi x0, x1, 1
some_label_for_btype_114200861651803717350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0xffffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
bge x8, x9, some_label_for_btype_114200861651803717351 # perform operation 
addi x0, x1, 1
some_label_for_btype_114200861651803717351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x2, 0x8d99b11536d4b18d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000100000000 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bge x6, x9, some_label_for_btype_94021299151656984370 # perform operation 
addi x0, x1, 1
some_label_for_btype_94021299151656984370:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0xfffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bge x6, x9, some_label_for_btype_94021299151656984371 # perform operation 
addi x0, x1, 1
some_label_for_btype_94021299151656984371:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x15, 0xd5489abc7b2456ce # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0x0000000100000000 # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
bge x30, x25, some_label_for_btype_78056046226459320040 # perform operation 
addi x0, x1, 1
some_label_for_btype_78056046226459320040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
bge x30, x25, some_label_for_btype_78056046226459320041 # perform operation 
addi x0, x1, 1
some_label_for_btype_78056046226459320041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x4a528c1fa0552f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0x0000000100000000 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x17, x24, some_label_for_btype_136875262377451449540 # perform operation 
addi x0, x1, 1
some_label_for_btype_136875262377451449540:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x17, x24, some_label_for_btype_136875262377451449541 # perform operation 
addi x0, x1, 1
some_label_for_btype_136875262377451449541:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x15, 0xb9b7b7da16a22251 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x0000000100000000 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bge x13, x11, some_label_for_btype_145168273578681333080 # perform operation 
addi x0, x1, 1
some_label_for_btype_145168273578681333080:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bge x13, x11, some_label_for_btype_145168273578681333081 # perform operation 
addi x0, x1, 1
some_label_for_btype_145168273578681333081:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x15, 0xbd0adc2dc5e2c2a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000100000000 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bge x6, x12, some_label_for_btype_109817396202612464890 # perform operation 
addi x0, x1, 1
some_label_for_btype_109817396202612464890:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bge x6, x12, some_label_for_btype_109817396202612464891 # perform operation 
addi x0, x1, 1
some_label_for_btype_109817396202612464891:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x7, 0x55c52daa17be0aee # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000100000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
bge x28, x23, some_label_for_btype_129314801750559048440 # perform operation 
addi x0, x1, 1
some_label_for_btype_129314801750559048440:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
bge x28, x23, some_label_for_btype_129314801750559048441 # perform operation 
addi x0, x1, 1
some_label_for_btype_129314801750559048441:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x3, 0x933da4a0ced15c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x0000000100000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
bge x10, x25, some_label_for_btype_151989716178093245720 # perform operation 
addi x0, x1, 1
some_label_for_btype_151989716178093245720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0000000100000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
bge x10, x25, some_label_for_btype_151989716178093245721 # perform operation 
addi x0, x1, 1
some_label_for_btype_151989716178093245721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x17, 0x4f46d4a52d201059 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
bge x18, x23, some_label_for_btype_137521437529908275710 # perform operation 
addi x0, x1, 1
some_label_for_btype_137521437529908275710:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0x0000000100000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
bge x18, x23, some_label_for_btype_137521437529908275711 # perform operation 
addi x0, x1, 1
some_label_for_btype_137521437529908275711:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x1, 0xaf3ecd2e009fe05f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
bge x28, x31, some_label_for_btype_49505016447842560550 # perform operation 
addi x0, x1, 1
some_label_for_btype_49505016447842560550:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
bge x28, x31, some_label_for_btype_49505016447842560551 # perform operation 
addi x0, x1, 1
some_label_for_btype_49505016447842560551:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x2, 0x3c823b38f8bbe202 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x0000000100000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
bge x5, x27, some_label_for_btype_54591250075050346380 # perform operation 
addi x0, x1, 1
some_label_for_btype_54591250075050346380:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
bge x5, x27, some_label_for_btype_54591250075050346381 # perform operation 
addi x0, x1, 1
some_label_for_btype_54591250075050346381:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x11, 0x79128b6b088af257 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000100000001 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
bge x19, x18, some_label_for_btype_172414868126451045350 # perform operation 
addi x0, x1, 1
some_label_for_btype_172414868126451045350:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
bge x19, x18, some_label_for_btype_172414868126451045351 # perform operation 
addi x0, x1, 1
some_label_for_btype_172414868126451045351:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x27, 0x14c0d96194ab7591 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x0000000100000001 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
bge x8, x18, some_label_for_btype_112961038779791723460 # perform operation 
addi x0, x1, 1
some_label_for_btype_112961038779791723460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
bge x8, x18, some_label_for_btype_112961038779791723461 # perform operation 
addi x0, x1, 1
some_label_for_btype_112961038779791723461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x30, 0xc1839e94c643a452 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000100000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
bge x28, x11, some_label_for_btype_16038682559922701190 # perform operation 
addi x0, x1, 1
some_label_for_btype_16038682559922701190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x8000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
bge x28, x11, some_label_for_btype_16038682559922701191 # perform operation 
addi x0, x1, 1
some_label_for_btype_16038682559922701191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x16, 0xc71610695e6a6c37 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x0000000100000001 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bge x12, x17, some_label_for_btype_155848314048818850500 # perform operation 
addi x0, x1, 1
some_label_for_btype_155848314048818850500:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0x7fffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bge x12, x17, some_label_for_btype_155848314048818850501 # perform operation 
addi x0, x1, 1
some_label_for_btype_155848314048818850501:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x25, 0x691a50729fe56ad3 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x0000000100000001 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bge x21, x12, some_label_for_btype_93279110392458842970 # perform operation 
addi x0, x1, 1
some_label_for_btype_93279110392458842970:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bge x21, x12, some_label_for_btype_93279110392458842971 # perform operation 
addi x0, x1, 1
some_label_for_btype_93279110392458842971:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x2, 0xdc8f8247c904c21c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000100000001 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
bge x28, x1, some_label_for_btype_81960579117967601010 # perform operation 
addi x0, x1, 1
some_label_for_btype_81960579117967601010:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
bge x28, x1, some_label_for_btype_81960579117967601011 # perform operation 
addi x0, x1, 1
some_label_for_btype_81960579117967601011:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x11, 0x1dfd5c7fe5ad768c # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000100000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
bge x28, x26, some_label_for_btype_52723324228726594060 # perform operation 
addi x0, x1, 1
some_label_for_btype_52723324228726594060:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xfffffffffffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
bge x28, x26, some_label_for_btype_52723324228726594061 # perform operation 
addi x0, x1, 1
some_label_for_btype_52723324228726594061:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x18, 0x568ba456b76b4dfa # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0x0000000100000001 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
bge x28, x20, some_label_for_btype_166996099707825830900 # perform operation 
addi x0, x1, 1
some_label_for_btype_166996099707825830900:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
bge x28, x20, some_label_for_btype_166996099707825830901 # perform operation 
addi x0, x1, 1
some_label_for_btype_166996099707825830901:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0xb1aebcfbac36a4a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x0000000100000001 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x9, x31, some_label_for_btype_44486778077464997850 # perform operation 
addi x0, x1, 1
some_label_for_btype_44486778077464997850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x9, x31, some_label_for_btype_44486778077464997851 # perform operation 
addi x0, x1, 1
some_label_for_btype_44486778077464997851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x13, 0x27447eca4f2e6916 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x0000000100000001 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bge x6, x21, some_label_for_btype_43413728053154455430 # perform operation 
addi x0, x1, 1
some_label_for_btype_43413728053154455430:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x5555555555555555 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bge x6, x21, some_label_for_btype_43413728053154455431 # perform operation 
addi x0, x1, 1
some_label_for_btype_43413728053154455431:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x30, 0x17b1ddb961fca4fe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0x0000000100000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bge x1, x12, some_label_for_btype_163062323451592117160 # perform operation 
addi x0, x1, 1
some_label_for_btype_163062323451592117160:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bge x1, x12, some_label_for_btype_163062323451592117161 # perform operation 
addi x0, x1, 1
some_label_for_btype_163062323451592117161:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x22, 0x2792681edc2693d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0x0000000100000001 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bge x25, x3, some_label_for_btype_32112567203119346020 # perform operation 
addi x0, x1, 1
some_label_for_btype_32112567203119346020:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bge x25, x3, some_label_for_btype_32112567203119346021 # perform operation 
addi x0, x1, 1
some_label_for_btype_32112567203119346021:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x6, 0xc902c7b505bb8ffc # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x0000000100000001 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
bge x11, x14, some_label_for_btype_122229529481580412290 # perform operation 
addi x0, x1, 1
some_label_for_btype_122229529481580412290:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x0000000100000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
bge x11, x14, some_label_for_btype_122229529481580412291 # perform operation 
addi x0, x1, 1
some_label_for_btype_122229529481580412291:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x15, 0xa845861a6021d924 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bge x19, x2, some_label_for_btype_178172902763637215860 # perform operation 
addi x0, x1, 1
some_label_for_btype_178172902763637215860:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bge x19, x2, some_label_for_btype_178172902763637215861 # perform operation 
addi x0, x1, 1
some_label_for_btype_178172902763637215861:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x16, 0x30bddfc61bbb4e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x0, 0xa35b9efc259808aa # initialize rs1
li x0, 0xb2861fa109f319d3 # initialize rs2
bge x0, x0, some_label_for_btype_171849869702898892490 # perform operation 
addi x0, x1, 1
some_label_for_btype_171849869702898892490:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x0, 0xb2861fa109f319d3 # initialize rs1
li x0, 0xb2861fa109f319d3 # initialize rs2
bge x0, x0, some_label_for_btype_171849869702898892491 # perform operation 
addi x0, x1, 1
some_label_for_btype_171849869702898892491:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x19, 0x54c8cc1d3aa729a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x1, 0xaf559534d928e550 # initialize rs1
li x1, 0x69049095644178e7 # initialize rs2
bge x1, x1, some_label_for_btype_72142622490111760360 # perform operation 
addi x0, x1, 1
some_label_for_btype_72142622490111760360:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x1, 0x69049095644178e7 # initialize rs1
li x1, 0x69049095644178e7 # initialize rs2
bge x1, x1, some_label_for_btype_72142622490111760361 # perform operation 
addi x0, x1, 1
some_label_for_btype_72142622490111760361:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x15, 0xf222f1cfde9507e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x2, 0x91b65260c6ea1505 # initialize rs1
li x2, 0x97b2b55f0e05cc1c # initialize rs2
bge x2, x2, some_label_for_btype_131429777500130846960 # perform operation 
addi x0, x1, 1
some_label_for_btype_131429777500130846960:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x2, 0x97b2b55f0e05cc1c # initialize rs1
li x2, 0x97b2b55f0e05cc1c # initialize rs2
bge x2, x2, some_label_for_btype_131429777500130846961 # perform operation 
addi x0, x1, 1
some_label_for_btype_131429777500130846961:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x29, 0xa07f96d5b1897f75 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x3, 0x793604815c2b6595 # initialize rs1
li x3, 0x9827696f44d07c9a # initialize rs2
bge x3, x3, some_label_for_btype_104662472751683516620 # perform operation 
addi x0, x1, 1
some_label_for_btype_104662472751683516620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x3, 0x9827696f44d07c9a # initialize rs1
li x3, 0x9827696f44d07c9a # initialize rs2
bge x3, x3, some_label_for_btype_104662472751683516621 # perform operation 
addi x0, x1, 1
some_label_for_btype_104662472751683516621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x7, 0xf9924d86019395c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xb977c7853546b0e9 # initialize rs1
li x4, 0x72ee0c9338b1ebdc # initialize rs2
bge x4, x4, some_label_for_btype_115223576843013009150 # perform operation 
addi x0, x1, 1
some_label_for_btype_115223576843013009150:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x72ee0c9338b1ebdc # initialize rs1
li x4, 0x72ee0c9338b1ebdc # initialize rs2
bge x4, x4, some_label_for_btype_115223576843013009151 # perform operation 
addi x0, x1, 1
some_label_for_btype_115223576843013009151:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x13, 0x46df7bfe46aaeb6a # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x5, 0x7d5c7f376d7b8370 # initialize rs1
li x5, 0xbe443dd36b953a2a # initialize rs2
bge x5, x5, some_label_for_btype_162957563672470044850 # perform operation 
addi x0, x1, 1
some_label_for_btype_162957563672470044850:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x5, 0xbe443dd36b953a2a # initialize rs1
li x5, 0xbe443dd36b953a2a # initialize rs2
bge x5, x5, some_label_for_btype_162957563672470044851 # perform operation 
addi x0, x1, 1
some_label_for_btype_162957563672470044851:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x7, 0x2a94e2f975d5c2fe # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x6, 0x9b80b304b49fa8b1 # initialize rs1
li x6, 0x97bdb4a1af6e8c03 # initialize rs2
bge x6, x6, some_label_for_btype_51999418397820098510 # perform operation 
addi x0, x1, 1
some_label_for_btype_51999418397820098510:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x6, 0x97bdb4a1af6e8c03 # initialize rs1
li x6, 0x97bdb4a1af6e8c03 # initialize rs2
bge x6, x6, some_label_for_btype_51999418397820098511 # perform operation 
addi x0, x1, 1
some_label_for_btype_51999418397820098511:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x8, 0x871a86686088afbf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x7, 0xbb1d91cf09a14440 # initialize rs1
li x7, 0x05a3fc0437834799 # initialize rs2
bge x7, x7, some_label_for_btype_7452609512608937760 # perform operation 
addi x0, x1, 1
some_label_for_btype_7452609512608937760:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x7, 0x05a3fc0437834799 # initialize rs1
li x7, 0x05a3fc0437834799 # initialize rs2
bge x7, x7, some_label_for_btype_7452609512608937761 # perform operation 
addi x0, x1, 1
some_label_for_btype_7452609512608937761:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x17, 0xdc7a67c49d218320 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x8, 0x9740477ec1a72170 # initialize rs1
li x8, 0x38a653e2cabed60a # initialize rs2
bge x8, x8, some_label_for_btype_101821675503751633950 # perform operation 
addi x0, x1, 1
some_label_for_btype_101821675503751633950:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x8, 0x38a653e2cabed60a # initialize rs1
li x8, 0x38a653e2cabed60a # initialize rs2
bge x8, x8, some_label_for_btype_101821675503751633951 # perform operation 
addi x0, x1, 1
some_label_for_btype_101821675503751633951:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x4, 0x618546d9e95aa356 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x9, 0x08ebe374b590b8f8 # initialize rs1
li x9, 0x283fb1dde402c177 # initialize rs2
bge x9, x9, some_label_for_btype_121921772298701555670 # perform operation 
addi x0, x1, 1
some_label_for_btype_121921772298701555670:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x9, 0x283fb1dde402c177 # initialize rs1
li x9, 0x283fb1dde402c177 # initialize rs2
bge x9, x9, some_label_for_btype_121921772298701555671 # perform operation 
addi x0, x1, 1
some_label_for_btype_121921772298701555671:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x18, 0x9993819872b31555 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x10, 0x1d390fd841e17e63 # initialize rs1
li x10, 0x0fb7e13ab5df2925 # initialize rs2
bge x10, x10, some_label_for_btype_50662113139610543190 # perform operation 
addi x0, x1, 1
some_label_for_btype_50662113139610543190:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x10, 0x0fb7e13ab5df2925 # initialize rs1
li x10, 0x0fb7e13ab5df2925 # initialize rs2
bge x10, x10, some_label_for_btype_50662113139610543191 # perform operation 
addi x0, x1, 1
some_label_for_btype_50662113139610543191:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x16, 0x1dd2f9d518aed933 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0xcbb32104011aec00 # initialize rs1
li x11, 0x65d2ed3b9dbc8a68 # initialize rs2
bge x11, x11, some_label_for_btype_101852776487344404750 # perform operation 
addi x0, x1, 1
some_label_for_btype_101852776487344404750:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x65d2ed3b9dbc8a68 # initialize rs1
li x11, 0x65d2ed3b9dbc8a68 # initialize rs2
bge x11, x11, some_label_for_btype_101852776487344404751 # perform operation 
addi x0, x1, 1
some_label_for_btype_101852776487344404751:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x18, 0xae58d17468da4704 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x12, 0x7e47eb7b89bed8dd # initialize rs1
li x12, 0xd3e7c764e6239bcd # initialize rs2
bge x12, x12, some_label_for_btype_99625618487988876620 # perform operation 
addi x0, x1, 1
some_label_for_btype_99625618487988876620:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x12, 0xd3e7c764e6239bcd # initialize rs1
li x12, 0xd3e7c764e6239bcd # initialize rs2
bge x12, x12, some_label_for_btype_99625618487988876621 # perform operation 
addi x0, x1, 1
some_label_for_btype_99625618487988876621:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x18, 0x59d6cbe1321ab483 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x2a43ab7911965cd7 # initialize rs1
li x13, 0xdfdb3725aaafc64c # initialize rs2
bge x13, x13, some_label_for_btype_133912422162173736460 # perform operation 
addi x0, x1, 1
some_label_for_btype_133912422162173736460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0xdfdb3725aaafc64c # initialize rs1
li x13, 0xdfdb3725aaafc64c # initialize rs2
bge x13, x13, some_label_for_btype_133912422162173736461 # perform operation 
addi x0, x1, 1
some_label_for_btype_133912422162173736461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x13, 0xfda64bc470bc5528 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x14, 0x894b0f8203a426eb # initialize rs1
li x14, 0x5de2bd04d8056050 # initialize rs2
bge x14, x14, some_label_for_btype_102304619083393221640 # perform operation 
addi x0, x1, 1
some_label_for_btype_102304619083393221640:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x14, 0x5de2bd04d8056050 # initialize rs1
li x14, 0x5de2bd04d8056050 # initialize rs2
bge x14, x14, some_label_for_btype_102304619083393221641 # perform operation 
addi x0, x1, 1
some_label_for_btype_102304619083393221641:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x11, 0x527db0fda12611fd # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x15, 0x22869154baf12ef4 # initialize rs1
li x15, 0x5395597f18d4e566 # initialize rs2
bge x15, x15, some_label_for_btype_164519970314685749260 # perform operation 
addi x0, x1, 1
some_label_for_btype_164519970314685749260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x15, 0x5395597f18d4e566 # initialize rs1
li x15, 0x5395597f18d4e566 # initialize rs2
bge x15, x15, some_label_for_btype_164519970314685749261 # perform operation 
addi x0, x1, 1
some_label_for_btype_164519970314685749261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x8, 0x0626561545cd05e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x16, 0x6097245ed0cb3d8c # initialize rs1
li x16, 0x839216426be30d17 # initialize rs2
bge x16, x16, some_label_for_btype_124382841666673732600 # perform operation 
addi x0, x1, 1
some_label_for_btype_124382841666673732600:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x16, 0x839216426be30d17 # initialize rs1
li x16, 0x839216426be30d17 # initialize rs2
bge x16, x16, some_label_for_btype_124382841666673732601 # perform operation 
addi x0, x1, 1
some_label_for_btype_124382841666673732601:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x8, 0x7e8da148f3aed5da # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x17, 0xaceede604181ae4a # initialize rs1
li x17, 0x741e8a5ce9a2ccb5 # initialize rs2
bge x17, x17, some_label_for_btype_25132502925772416050 # perform operation 
addi x0, x1, 1
some_label_for_btype_25132502925772416050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x17, 0x741e8a5ce9a2ccb5 # initialize rs1
li x17, 0x741e8a5ce9a2ccb5 # initialize rs2
bge x17, x17, some_label_for_btype_25132502925772416051 # perform operation 
addi x0, x1, 1
some_label_for_btype_25132502925772416051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x3, 0x7bd1ba428f855296 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x18, 0xab24989280b2753f # initialize rs1
li x18, 0xbb1395a14108348c # initialize rs2
bge x18, x18, some_label_for_btype_827662518570367840 # perform operation 
addi x0, x1, 1
some_label_for_btype_827662518570367840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x18, 0xbb1395a14108348c # initialize rs1
li x18, 0xbb1395a14108348c # initialize rs2
bge x18, x18, some_label_for_btype_827662518570367841 # perform operation 
addi x0, x1, 1
some_label_for_btype_827662518570367841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x15, 0xc0f13d409677344e # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x19, 0x1e11b087801740d7 # initialize rs1
li x19, 0x8772bea65fbdfb9e # initialize rs2
bge x19, x19, some_label_for_btype_85951843132593350260 # perform operation 
addi x0, x1, 1
some_label_for_btype_85951843132593350260:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x19, 0x8772bea65fbdfb9e # initialize rs1
li x19, 0x8772bea65fbdfb9e # initialize rs2
bge x19, x19, some_label_for_btype_85951843132593350261 # perform operation 
addi x0, x1, 1
some_label_for_btype_85951843132593350261:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x16, 0x39f499b875917909 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x20, 0x461cabff8f959c5b # initialize rs1
li x20, 0x524bbd05cc7c3efa # initialize rs2
bge x20, x20, some_label_for_btype_179698466643085744330 # perform operation 
addi x0, x1, 1
some_label_for_btype_179698466643085744330:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x20, 0x524bbd05cc7c3efa # initialize rs1
li x20, 0x524bbd05cc7c3efa # initialize rs2
bge x20, x20, some_label_for_btype_179698466643085744331 # perform operation 
addi x0, x1, 1
some_label_for_btype_179698466643085744331:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x27, 0xdf24988b50b2dc70 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x21, 0x5e7f987e6850150c # initialize rs1
li x21, 0x2e15af0ce4a4fba8 # initialize rs2
bge x21, x21, some_label_for_btype_61039761766409669690 # perform operation 
addi x0, x1, 1
some_label_for_btype_61039761766409669690:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x21, 0x2e15af0ce4a4fba8 # initialize rs1
li x21, 0x2e15af0ce4a4fba8 # initialize rs2
bge x21, x21, some_label_for_btype_61039761766409669691 # perform operation 
addi x0, x1, 1
some_label_for_btype_61039761766409669691:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x4, 0x1dbc31d2b03e6965 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xd0e9a23a47180a13 # initialize rs1
li x22, 0xdb2474898bf5e096 # initialize rs2
bge x22, x22, some_label_for_btype_154074089101949370140 # perform operation 
addi x0, x1, 1
some_label_for_btype_154074089101949370140:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0xdb2474898bf5e096 # initialize rs1
li x22, 0xdb2474898bf5e096 # initialize rs2
bge x22, x22, some_label_for_btype_154074089101949370141 # perform operation 
addi x0, x1, 1
some_label_for_btype_154074089101949370141:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x22, 0x4a094471558292cf # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x23, 0x4f85b4c1f06eeb91 # initialize rs1
li x23, 0xbdb0f8447a34a4f3 # initialize rs2
bge x23, x23, some_label_for_btype_71070579137248542450 # perform operation 
addi x0, x1, 1
some_label_for_btype_71070579137248542450:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x23, 0xbdb0f8447a34a4f3 # initialize rs1
li x23, 0xbdb0f8447a34a4f3 # initialize rs2
bge x23, x23, some_label_for_btype_71070579137248542451 # perform operation 
addi x0, x1, 1
some_label_for_btype_71070579137248542451:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x31, 0x331a12185c384d14 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x24, 0xc0a972b4cb469c0b # initialize rs1
li x24, 0x38e9a65e1bb1eb96 # initialize rs2
bge x24, x24, some_label_for_btype_75375667351957193770 # perform operation 
addi x0, x1, 1
some_label_for_btype_75375667351957193770:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x24, 0x38e9a65e1bb1eb96 # initialize rs1
li x24, 0x38e9a65e1bb1eb96 # initialize rs2
bge x24, x24, some_label_for_btype_75375667351957193771 # perform operation 
addi x0, x1, 1
some_label_for_btype_75375667351957193771:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x16, 0xe5642d786d025930 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x25, 0xc79b3089d4bc3e73 # initialize rs1
li x25, 0xbb1ee9b53bc0cb50 # initialize rs2
bge x25, x25, some_label_for_btype_166541600294235704270 # perform operation 
addi x0, x1, 1
some_label_for_btype_166541600294235704270:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x25, 0xbb1ee9b53bc0cb50 # initialize rs1
li x25, 0xbb1ee9b53bc0cb50 # initialize rs2
bge x25, x25, some_label_for_btype_166541600294235704271 # perform operation 
addi x0, x1, 1
some_label_for_btype_166541600294235704271:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x21, 0xfbe499ef7e026e0d # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x26, 0x6053037633f071ef # initialize rs1
li x26, 0x5457e55ff360bfdb # initialize rs2
bge x26, x26, some_label_for_btype_121317219922331057300 # perform operation 
addi x0, x1, 1
some_label_for_btype_121317219922331057300:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x26, 0x5457e55ff360bfdb # initialize rs1
li x26, 0x5457e55ff360bfdb # initialize rs2
bge x26, x26, some_label_for_btype_121317219922331057301 # perform operation 
addi x0, x1, 1
some_label_for_btype_121317219922331057301:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x10, 0x09666fa66df51413 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x27, 0x9d57fe70dc66dd4c # initialize rs1
li x27, 0x5807941a9ade399d # initialize rs2
bge x27, x27, some_label_for_btype_106549273895497320100 # perform operation 
addi x0, x1, 1
some_label_for_btype_106549273895497320100:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x27, 0x5807941a9ade399d # initialize rs1
li x27, 0x5807941a9ade399d # initialize rs2
bge x27, x27, some_label_for_btype_106549273895497320101 # perform operation 
addi x0, x1, 1
some_label_for_btype_106549273895497320101:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x1, 0x29cf74147d6511f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x28, 0xa73308e4efef9980 # initialize rs1
li x28, 0xe1b3e081e688e2de # initialize rs2
bge x28, x28, some_label_for_btype_108002573639293280840 # perform operation 
addi x0, x1, 1
some_label_for_btype_108002573639293280840:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x28, 0xe1b3e081e688e2de # initialize rs1
li x28, 0xe1b3e081e688e2de # initialize rs2
bge x28, x28, some_label_for_btype_108002573639293280841 # perform operation 
addi x0, x1, 1
some_label_for_btype_108002573639293280841:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x8, 0xd5dee0f36a95c4b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x29, 0x2c0f2389497fddd7 # initialize rs1
li x29, 0xbb78009b99290fa5 # initialize rs2
bge x29, x29, some_label_for_btype_21340506263671843040 # perform operation 
addi x0, x1, 1
some_label_for_btype_21340506263671843040:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x29, 0xbb78009b99290fa5 # initialize rs1
li x29, 0xbb78009b99290fa5 # initialize rs2
bge x29, x29, some_label_for_btype_21340506263671843041 # perform operation 
addi x0, x1, 1
some_label_for_btype_21340506263671843041:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x23, 0xcf11ec38fe4af313 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x30, 0xeb314019fe276b4d # initialize rs1
li x30, 0x9ac2028fcfa235fb # initialize rs2
bge x30, x30, some_label_for_btype_67820896091192958460 # perform operation 
addi x0, x1, 1
some_label_for_btype_67820896091192958460:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x30, 0x9ac2028fcfa235fb # initialize rs1
li x30, 0x9ac2028fcfa235fb # initialize rs2
bge x30, x30, some_label_for_btype_67820896091192958461 # perform operation 
addi x0, x1, 1
some_label_for_btype_67820896091192958461:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x11, 0xfc7b1ee135221627 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x31, 0x08a346b4762f5448 # initialize rs1
li x31, 0x60bb35fb5534f217 # initialize rs2
bge x31, x31, some_label_for_btype_98559544923490868720 # perform operation 
addi x0, x1, 1
some_label_for_btype_98559544923490868720:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x31, 0x60bb35fb5534f217 # initialize rs1
li x31, 0x60bb35fb5534f217 # initialize rs2
bge x31, x31, some_label_for_btype_98559544923490868721 # perform operation 
addi x0, x1, 1
some_label_for_btype_98559544923490868721:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = 0x5c3368acdf825893)
li x8, 0x2613dc7d854ac232 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x11, 0x5c3368acdf825893 # initialize rs1
li x7, 0x38351279c0eb49d7 # initialize rs2
bge x11, x7, some_label_for_btype_129699009170427575050 # perform operation 
addi x0, x1, 1
some_label_for_btype_129699009170427575050:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x11, 0x38351279c0eb49d7 # initialize rs1
li x7, 0x38351279c0eb49d7 # initialize rs2
bge x11, x7, some_label_for_btype_129699009170427575051 # perform operation 
addi x0, x1, 1
some_label_for_btype_129699009170427575051:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x30aced50b2f369c1)
li x1, 0xd47abe58d566e0e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x22, 0xcf5312af4d0c963f # initialize rs1
li x12, 0x4d4754501d4f2afa # initialize rs2
bge x22, x12, some_label_for_btype_125662699230989384400 # perform operation 
addi x0, x1, 1
some_label_for_btype_125662699230989384400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x22, 0x4d4754501d4f2afa # initialize rs1
li x12, 0x4d4754501d4f2afa # initialize rs2
bge x22, x12, some_label_for_btype_125662699230989384401 # perform operation 
addi x0, x1, 1
some_label_for_btype_125662699230989384401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = 0x3ebccb2777e4675a)
li x2, 0x112298ccc2de2a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x13, 0x2d4c4c09ffa44e3e # initialize rs1
li x28, 0x3ebccb2777e4675a # initialize rs2
bge x13, x28, some_label_for_btype_112069887360574929400 # perform operation 
addi x0, x1, 1
some_label_for_btype_112069887360574929400:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x13, 0x3ebccb2777e4675a # initialize rs1
li x28, 0x3ebccb2777e4675a # initialize rs2
bge x13, x28, some_label_for_btype_112069887360574929401 # perform operation 
addi x0, x1, 1
some_label_for_btype_112069887360574929401:
addi x0, x2, 2
nop
nop
nop
nop
nop

# Testcase cp_rs2_sign (Test source rs2 value = -0x6c11c996be15306f)
li x17, 0xbe9ec494abf3bd16 # initialize rd to a random value that should get changed; helps covering rd_toggle
nop
li x4, 0xfb355eaa86b2bdda # initialize rs1
li x1, 0x93ee366941eacf91 # initialize rs2
bge x4, x1, some_label_for_btype_130425048471238570200 # perform operation 
addi x0, x1, 1
some_label_for_btype_130425048471238570200:
addi x0, x2, 2
nop
nop
nop
nop
nop
# same values in both registers
nop
li x4, 0x93ee366941eacf91 # initialize rs1
li x1, 0x93ee366941eacf91 # initialize rs2
bge x4, x1, some_label_for_btype_130425048471238570201 # perform operation 
addi x0, x1, 1
some_label_for_btype_130425048471238570201:
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
