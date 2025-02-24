///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-andi.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.459371
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x10bdc17177870ac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7e0b741270a41d9f # initialize rs1
andi x0, x20, 1726 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x7078a09cbc854e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1f73ffcf08385c6f # initialize rs1
andi x1, x17, -1402 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x536827869c22b8a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xeb7a415840acce71 # initialize rs1
andi x2, x19, 1743 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x1dc5b6ba10855653 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x155dac4859b05512 # initialize rs1
andi x3, x27, -1105 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xb26fdaa03e47754f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3a89281446eb5d0b # initialize rs1
andi x4, x23, -1107 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x8c9fca36a46a53b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe91f8edac852267a # initialize rs1
andi x5, x14, -1166 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xdc405ff445b15b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xecc99856bbc90617 # initialize rs1
andi x6, x19, 894 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xaefcf11e17b961d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdffd668daea658bf # initialize rs1
andi x7, x9, 430 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x43aadda1d41d1eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf0fe7815344faeb2 # initialize rs1
andi x8, x5, -1273 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x7de61db14ef3623e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xdaa75a354bed4db3 # initialize rs1
andi x9, x24, 693 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x51928b2bb56c798e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa0419183c744396c # initialize rs1
andi x10, x13, 56 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x90c407faafc1a28a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa765da4d487f8cba # initialize rs1
andi x11, x5, 388 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xa432b100de1e9ff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x371a45713806f736 # initialize rs1
andi x12, x4, -1988 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x064213728930055d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9aeb7de0d44004d6 # initialize rs1
andi x13, x7, -1086 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x78ade89a1b402ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe21a8472f144a141 # initialize rs1
andi x14, x17, 943 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x0a440d3e281754d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x84c9cbdaddf5bd05 # initialize rs1
andi x15, x28, 1448 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x6647730e6e0c9b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xee3fcd30607ee3af # initialize rs1
andi x16, x6, 23 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xadf56ef17e1407c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8d2bb22f761dbf97 # initialize rs1
andi x17, x14, 259 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0abfe09a4ff99d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7e8dc1dbcf131f39 # initialize rs1
andi x18, x18, -468 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x8f9ef1e3f24a0fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf8f3949562d8c16e # initialize rs1
andi x19, x16, 1736 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x6c3ea3da8c3ed487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe4724223dbd0879b # initialize rs1
andi x20, x11, 597 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x7790fde3010c2a35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb30d1718ae9dda5d # initialize rs1
andi x21, x3, 1187 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x52a564a3e4f17ceb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa729b05aeb44a35a # initialize rs1
andi x22, x16, 1931 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x1f7023787cef0409 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe415f8f73e4b194b # initialize rs1
andi x23, x12, -816 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x0c1b054b9b4edfbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xbfe778b50c9a6bbd # initialize rs1
andi x24, x31, 1228 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xacd6c2e26bf9623f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb4ed0a929f709557 # initialize rs1
andi x25, x3, -740 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x3f4106a0d0b9608b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x568b31c69da36a6e # initialize rs1
andi x26, x20, 1124 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xb78fe67549b3b083 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9ddad72ea471e4fb # initialize rs1
andi x27, x7, 55 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xf9c81fdbbeccd47a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x60f2042fd2c8fa73 # initialize rs1
andi x28, x2, 62 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x3d9bff81461d3270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa09cf93134547297 # initialize rs1
andi x29, x4, -840 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x0882ce36c16e5eb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x4d2224fc5d868e05 # initialize rs1
andi x30, x24, 488 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x114ccd282ea4f97d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe2fdb2c2ac149c2e # initialize rs1
andi x31, x24, 1320 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x18, 0x1894bdb1f340a9a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1efa96b8c977f288 # initialize rs1
andi x18, x0, 693 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x31, 0x3a2739ba77b674c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfc1fb0ea308b8c83 # initialize rs1
andi x31, x1, -1417 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x17, 0x82af4a849a71cfa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfa5d3227da7ae2b4 # initialize rs1
andi x17, x2, 1288 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x18, 0x826b5fdaddf82152 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x236140a03bebdd86 # initialize rs1
andi x18, x3, 8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x21, 0xa89b9bd00a0e62a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x88affd9e0631c270 # initialize rs1
andi x21, x4, 918 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x1, 0xab6e13d6d7ccf5d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x54c8aa1970a4e1a4 # initialize rs1
andi x1, x5, 620 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x12, 0xe112dedc85c06fdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc35eea3c8c50ab68 # initialize rs1
andi x12, x6, -1165 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x25, 0x62c473be79d78c15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9549c660bcc750ca # initialize rs1
andi x25, x7, 509 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0x5673e880abce529c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x14932fbaf2b66931 # initialize rs1
andi x11, x8, 378 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x7, 0xa549d7db9a45e3dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8f1dd892f64be933 # initialize rs1
andi x7, x9, -1997 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x6, 0x15449aade17655d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xcae203a47ceca3a1 # initialize rs1
andi x6, x10, -142 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x29, 0xb9462a261014cc45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe97bb05a68dad02f # initialize rs1
andi x29, x11, -939 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0x602622706839de1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x15906ff02459ed8f # initialize rs1
andi x15, x12, 78 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0x31301186c744832a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd71090170d3d7a14 # initialize rs1
andi x14, x13, 1613 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x3, 0xcca1b4c2d5501e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x38170661ef99e381 # initialize rs1
andi x3, x14, -1676 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0xf92b10199494335e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb67fe06c44f5ea86 # initialize rs1
andi x14, x15, -1298 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x8, 0x110e1c97d88dbd4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x714fe4f04ab477a8 # initialize rs1
andi x8, x16, 833 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x28, 0x6abd86ee9699503f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8b0261cf959ec20f # initialize rs1
andi x28, x17, 571 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x22, 0x9c4c3330f77a915e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x16fe099ef22e0231 # initialize rs1
andi x22, x18, 291 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x7, 0x05f78fe4abc52ac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaf9d5b4a497e2e5b # initialize rs1
andi x7, x19, -1274 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x12, 0xc6cb0e3cb8ff611f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xcd8dc00a0b127647 # initialize rs1
andi x12, x20, -774 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x9, 0x0cc000f9cefd121b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd070f25330119c0b # initialize rs1
andi x9, x21, 1985 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x24, 0x5a67a7f748faddec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xababca816aaafc64 # initialize rs1
andi x24, x22, 1743 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x3, 0x33ea135f136f1489 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xbbae3cdc63396d67 # initialize rs1
andi x3, x23, -480 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x1, 0xc92645be82127a4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbdee1f2521bee98d # initialize rs1
andi x1, x24, 268 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x1, 0x6f13f2f16f9cd504 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7da4661bed730c24 # initialize rs1
andi x1, x25, -218 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x28, 0x29eee74d4f180b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x83d51471a0edb1ed # initialize rs1
andi x28, x26, -282 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x2, 0xe2dd5ed3e944219d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x91ea84a92fab5edb # initialize rs1
andi x2, x27, -620 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x30, 0x69e139f7e67a5836 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xebbda1cc5834ac3b # initialize rs1
andi x30, x28, -2034 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x15, 0xcce8232349b90dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x1dd6bc2a23be95fc # initialize rs1
andi x15, x29, -34 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x11, 0x10bfdc7aef6637dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc6b25ebdadda1c95 # initialize rs1
andi x11, x30, -130 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x23, 0xe65f16cd1de9445f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc92529d1d7cb9b2f # initialize rs1
andi x23, x31, -1865 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x2859b848847317fe)
li x11, 0x7038add491c762e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7038add491c762e6 # initialize rs1
andi x11, x29, 1937 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x5, 0xa8f5d966af56dcff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
andi x5, x9, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x6, 0x89e2e1a9552a41c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
andi x6, x9, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x7, 0xc90d59a0803f86ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
andi x7, x26, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x24, 0x6a967128ba3f3915 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000001 # initialize rs1
andi x24, x3, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x15, 0x66e4a63dd6ea6007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
andi x15, x16, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x22, 0x6af1c5ede6c75297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
andi x22, x11, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x19, 0xfac9f608057546ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # initialize rs1
andi x19, x28, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x24, 0x0b8a1dc47ed0418c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
andi x24, x7, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x14, 0xe1dafa90967a6bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
andi x14, x25, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x14, 0xc1508ec2ac296e5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
andi x14, x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x14, 0x2f786fa7026d7513 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000000 # initialize rs1
andi x14, x5, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x1, 0x52839a25855ae9ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
andi x1, x11, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x25, 0x1d5b3295fa31517f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000001 # initialize rs1
andi x25, x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x14, 0x138e7d5b0dbdd07e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
andi x14, x4, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x23, 0x51339a15d1ac2b4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
andi x23, x10, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x21, 0x366c51da75c4244b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
andi x21, x13, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x15, 0xa6f519d77b14f184 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
andi x15, x31, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x16, 0x00da504c4d3e09ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
andi x16, x21, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x28, 0x2defb89821a455c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
andi x28, x2, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x28, 0x4cc8c5aab821ddfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
andi x28, x1, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x16, 0xe88fcc8db0f6c286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
andi x16, x11, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x30, 0x14aa1b432fa46b88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
andi x30, x28, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x21, 0xb1180505fd310113 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
andi x21, x20, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x6, 0x39e1032cbd333552 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
andi x6, x25, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x28, 0xe9a12c5ad3e31590 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
andi x28, x23, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x18, 0xbd0ec2b12fbee312 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
andi x18, x19, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x26, 0x977ae3ebe1e476d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
andi x26, x18, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x1, 0x3678b035116eebdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
andi x1, x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x10, 0xbcf307a3616a8cf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs1
andi x10, x4, 1783 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x8, 0x5f3852004142b89e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
andi x8, x14, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x9, 0x5da1f44f18b3d62d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x9, x22, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x3, 0x4099f5babb003cfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x3, x13, -1366 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x23, 0x15bafc79d22d706d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
andi x23, x3, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x30, 0xce2fbf99b31c8a88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
andi x30, x25, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x18, 0xf2ac5036615e5ff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
andi x18, x11, 1365 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x16, 0x61032d80e0f5f59e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
andi x16, x11, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x9, 0x378cdfab7ef61adb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
andi x9, x1, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x24, 0x15dfbe4e814e5ff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000ffffffff # initialize rs1
andi x24, x17, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x3, 0x40cc1cc270962d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
andi x3, x25, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x20, 0x4101ae5e54a85351 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
andi x20, x4, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x23, 0xce33a09af655c518 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
andi x23, x7, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x17, 0xc2bc38f478f7d54d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
andi x17, x4, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x24, 0xac6a24272f80b6a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000000 # initialize rs1
andi x24, x25, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x10, 0x1d721bf8c022ad2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
andi x10, x22, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x22, 0xab98fc4d857549ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
andi x22, x20, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x13, 0x553b5267aa480fff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000001 # initialize rs1
andi x13, x28, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x19, 0x087b65f1b3bfab42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000001 # initialize rs1
andi x19, x3, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x8, 0x8f45072c345f5ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
andi x8, x10, -1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x4, 0x1c8f2e0bee0cd686 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
andi x4, x15, -991 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x23, 0x43b2af6a576ac8bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
andi x23, x31, 100 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0xb1d7cac8e57ee847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
andi x11, x9, 723 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x24, 0xd911056f9da4555d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000000 # initialize rs1
andi x24, x7, 1037 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x9, 0x4a61950c58b521cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
andi x9, x15, -64 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x19, 0x9f1b856702958b29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
andi x19, x20, 293 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x20, 0x715506e97340e989 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
andi x20, x2, -521 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x9, 0x5be2a17d331efa98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
andi x9, x15, -1661 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x17, 0xdf86769ef518d22e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffffffffffe # initialize rs1
andi x17, x2, 511 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x11, 0x913da0d5894a9a2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
andi x11, x13, -1103 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x18, 0x102e5bb75ecf2500 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x18, x10, -1713 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0xe27dfc057574d893 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
andi x10, x8, 1910 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x27, 0x9292ce07eda75e52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
andi x27, x6, -650 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x24, 0xa8cdf11e1c117421 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
andi x24, x5, 1779 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x1, 0xb8cb715861dfba3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000000 # initialize rs1
andi x1, x9, -1476 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0x857caf94e86d44cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
andi x9, x23, -987 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc0ecb18554cd7cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x22e6c7060fe13275 # initialize rs1
andi x0, x0, -1715 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb4c83b1027a74a94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3013430266a74a06 # initialize rs1
andi x1, x1, -1777 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x9651a465e06c43f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc59b2c4351b8893f # initialize rs1
andi x2, x2, -753 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xde8f092632ff7391 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x361d7d30039de372 # initialize rs1
andi x3, x3, 1509 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x858c2fda3bc91aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80bb541ad40af944 # initialize rs1
andi x4, x4, 835 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x5198350471551b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0ecd470fb06efb21 # initialize rs1
andi x5, x5, -1752 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x2c2a3ea1d2a70262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x75551d9bae5a2b91 # initialize rs1
andi x6, x6, 353 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x6814f0ab962c6a4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7f9c98d686d47250 # initialize rs1
andi x7, x7, -158 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x2c7938f08614630c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb40ba74bbdebf35e # initialize rs1
andi x8, x8, 1996 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x473ab5b51f39a716 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6e4eda947edc469b # initialize rs1
andi x9, x9, -1733 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x1941d670ee7043e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x133a2fb84a33952c # initialize rs1
andi x10, x10, -1809 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x957ce91eeee1839a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa631f5673df1e4bd # initialize rs1
andi x11, x11, -248 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xc0981ab40d3cd648 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf183e1a012f963d0 # initialize rs1
andi x12, x12, 539 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xbb1cb1abb8411b4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4631aa9401712613 # initialize rs1
andi x13, x13, 616 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xaf8e570342258d94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x90cada691fa616f2 # initialize rs1
andi x14, x14, -918 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xcc5da2f4d60199cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf415b0fea4e882f7 # initialize rs1
andi x15, x15, 40 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x71b3df9353e9caeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9af472067ae97e74 # initialize rs1
andi x16, x16, 642 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xfa4bd22a2f3524df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xca80e6c443dbd47e # initialize rs1
andi x17, x17, 1794 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xc28c8a8f556b89eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5863004ab986a4cb # initialize rs1
andi x18, x18, 110 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x73e27c7a85e10af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x01c18b8668e7b922 # initialize rs1
andi x19, x19, 679 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x4eb888d3f42ccef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa0d7483f0f1a459d # initialize rs1
andi x20, x20, 1299 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xa91b50051ee39db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8c8501f3ce44c4d2 # initialize rs1
andi x21, x21, 1993 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x4245d4f2f08df0e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7d8e9377bdd29e66 # initialize rs1
andi x22, x22, -1646 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x9ef85b41b759e04d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x11f59a10abd72e2e # initialize rs1
andi x23, x23, 1266 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x163a393c3dfcc5ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6567fdd54899fe5d # initialize rs1
andi x24, x24, -1637 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x435ccbea794c3d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x47be7e628bd93ea7 # initialize rs1
andi x25, x25, 1284 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x4f910b7ed64ed552 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb81dea57f67f796d # initialize rs1
andi x26, x26, 604 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x4e74a08ab09400f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9af124c844ae09be # initialize rs1
andi x27, x27, -1751 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x646c12dd634dd1bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7b9e2ee7c16ca881 # initialize rs1
andi x28, x28, 810 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x3e9972be6b230595 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3b4d46f270f98144 # initialize rs1
andi x29, x29, -1964 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x11f0b626b47007fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe597fd970d331b02 # initialize rs1
andi x30, x30, -1907 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3918353f651f7ce3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd024f6b1d5e777d7 # initialize rs1
andi x31, x31, -1957 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x30efe1ec6950e29b)
li x19, 0x850965b69744aee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x30efe1ec6950e29b # initialize rs1
andi x19, x31, -1341 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x76244c9b23d030db)
li x10, 0x25742856be19d166 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x89dbb364dc2fcf25 # initialize rs1
andi x10, x2, -486 # perform operation

# Testcase cp_imm_zero
li x13, 0x0693f4a3af47d99a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6ea847b114d5b899 # initialize rs1
andi x13, x1, 0 # perform operation

# Testcase cp_imm_corners
li x15, 0xe14cdd00c7c74e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa506716a17d3763b # initialize rs1
andi x15, x28, 0 # perform operation

# Testcase cp_imm_corners
li x15, 0xe14cdd00c7c74e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa506716a17d3763b # initialize rs1
andi x15, x28, 1 # perform operation

# Testcase cp_imm_corners
li x15, 0xe14cdd00c7c74e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa506716a17d3763b # initialize rs1
andi x15, x28, 2 # perform operation

# Testcase cp_imm_corners
li x15, 0xe14cdd00c7c74e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa506716a17d3763b # initialize rs1
andi x15, x28, 1023 # perform operation

# Testcase cp_imm_corners
li x15, 0xe14cdd00c7c74e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa506716a17d3763b # initialize rs1
andi x15, x28, 1024 # perform operation

# Testcase cp_imm_corners
li x15, 0xe14cdd00c7c74e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa506716a17d3763b # initialize rs1
andi x15, x28, 2047 # perform operation

# Testcase cp_imm_corners
li x15, 0xe14cdd00c7c74e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa506716a17d3763b # initialize rs1
andi x15, x28, -2048 # perform operation

# Testcase cp_imm_corners
li x15, 0xe14cdd00c7c74e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa506716a17d3763b # initialize rs1
andi x15, x28, -2047 # perform operation

# Testcase cp_imm_corners
li x15, 0xe14cdd00c7c74e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa506716a17d3763b # initialize rs1
andi x15, x28, -2 # perform operation

# Testcase cp_imm_corners
li x15, 0xe14cdd00c7c74e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa506716a17d3763b # initialize rs1
andi x15, x28, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
andi x5, x12, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
andi x5, x12, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
andi x5, x12, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
andi x5, x12, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
andi x5, x12, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
andi x5, x12, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
andi x5, x12, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
andi x5, x12, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
andi x5, x12, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
andi x5, x12, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x5, x12, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
andi x5, x12, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
andi x5, x12, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
andi x5, x12, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
andi x5, x12, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
andi x5, x12, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
andi x5, x12, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
andi x5, x12, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
andi x5, x12, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
andi x5, x12, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
andi x5, x12, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
andi x5, x12, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
andi x5, x12, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x5, 0xa4d115a969c4f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
andi x5, x12, -1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
