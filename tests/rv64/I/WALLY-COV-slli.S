///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-slli.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.493127
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x66e037d420beac38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x14ab8a1c043f75e4 # initialize rs1
slli x0, x10, 4 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x06f2b92306f380af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd4725ee06c568bb4 # initialize rs1
slli x1, x31, 44 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xd3f8dedac31bd62a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x895fbfe883c66f68 # initialize rs1
slli x2, x10, 1 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x991833ecb2cc4ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x25ad882ad7a6f4b0 # initialize rs1
slli x3, x4, 29 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x1e7212674c545c94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xde072aa525377dc0 # initialize rs1
slli x4, x23, 11 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xb807309095d49b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4d7d489c543fdbf3 # initialize rs1
slli x5, x25, 60 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x0976cc282a358e9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x37323cdcd7492516 # initialize rs1
slli x6, x3, 19 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xe3a3b1468ac428fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4c8a2467506b811e # initialize rs1
slli x7, x7, 27 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xdbc897af8f910879 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x566aefd8c5ebbd26 # initialize rs1
slli x8, x19, 17 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x8ca34aed2af8476f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbffee126a7ac11 # initialize rs1
slli x9, x24, 41 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xc5012642fe128df7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2faf55c063183540 # initialize rs1
slli x10, x25, 58 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x81139db7b636d2af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1f5aa0fe54080603 # initialize rs1
slli x11, x30, 0 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x5f02c3a663759913 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x32a66212c4fc6747 # initialize rs1
slli x12, x11, 50 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x18387617428a9e4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x72f11cffdd7b7a69 # initialize rs1
slli x13, x12, 40 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xb74c8689300a6273 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9de9b42f0fdd2f30 # initialize rs1
slli x14, x3, 3 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x8ef21bbb89cd68c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x433925b3eea1c0c8 # initialize rs1
slli x15, x1, 28 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x14d66e29a57cf354 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5892c9c169b0a48c # initialize rs1
slli x16, x3, 17 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xd65e2680b1531d2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9c87258bff09170c # initialize rs1
slli x17, x7, 59 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x78217db3aa25d6a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5d77442321842cc9 # initialize rs1
slli x18, x26, 60 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x17f369e0c0942e20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf0034bf3c800d839 # initialize rs1
slli x19, x5, 62 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x2589fe48de4e6561 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x37d60393914d717a # initialize rs1
slli x20, x16, 57 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x6bb0c49025523361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe438abe8427ab4ca # initialize rs1
slli x21, x27, 2 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xbaf5ce86568ebf08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb38dd067deb64ff0 # initialize rs1
slli x22, x8, 27 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xf81c15d313537d6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0dacffe90863f72c # initialize rs1
slli x23, x14, 63 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x5d7780e3be7a799d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x08499e734775b748 # initialize rs1
slli x24, x17, 58 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x69031043118d3b8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x90d2a6a3df6bfb48 # initialize rs1
slli x25, x13, 63 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xd6a056a75e50f8eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x15a5632dde268c7f # initialize rs1
slli x26, x10, 2 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x6426e0b3791d88f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf8e8052ac9b40102 # initialize rs1
slli x27, x4, 45 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xd533840c53fb7529 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xcd014b3a18a24788 # initialize rs1
slli x28, x29, 55 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x27f399e901213660 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x64a9f37ccd17ff22 # initialize rs1
slli x29, x22, 61 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x2dcf8190838baadd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5745d710119e5ad5 # initialize rs1
slli x30, x16, 17 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x7655b0b9e533d6b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4b63fab8139118a8 # initialize rs1
slli x31, x16, 5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x23, 0x47ce4c927e9f69da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x40c2742f18cb81cd # initialize rs1
slli x23, x0, 42 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x26, 0xa224f4001e70a23c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe5b47d8af5266872 # initialize rs1
slli x26, x1, 34 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x13, 0x401dd9d46c01cb1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x56a07ab0c2868c4f # initialize rs1
slli x13, x2, 0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x26, 0xc3d7db579c85de02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe8ed6ca1dfd9c3fd # initialize rs1
slli x26, x3, 5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x20, 0x5052f1d67e336806 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd37fe68a6c28ee77 # initialize rs1
slli x20, x4, 38 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x2, 0xf43883633100edb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc6d274e712721399 # initialize rs1
slli x2, x5, 52 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x26, 0xdcc1ed3e9720dc47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x96b9082d1ded6ae6 # initialize rs1
slli x26, x6, 62 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x29, 0x3ca5f2041f754717 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x27661aaa7e748713 # initialize rs1
slli x29, x7, 10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x6, 0xf74ce5872e867bf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc12fdbc45a933f76 # initialize rs1
slli x6, x8, 16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x24, 0x55469f15f965b157 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc4757299da70f924 # initialize rs1
slli x24, x9, 9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x17, 0xcc276105c16c88c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9fbbbaf25985a3f4 # initialize rs1
slli x17, x10, 62 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x12, 0x7200047ec4139702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6cd3f5fb4feb0eb7 # initialize rs1
slli x12, x11, 60 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x10, 0xb92a6f8a2def0f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8eb3d09cc090e1d9 # initialize rs1
slli x10, x12, 21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x21, 0xab4c79d7a10de6cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9dae2c67eb4ac901 # initialize rs1
slli x21, x13, 49 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x24, 0x71beaaf460a0cf4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc91667ac94dadcab # initialize rs1
slli x24, x14, 26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x2, 0x2fe4a93b5de32c0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfdd9ed1af3b86184 # initialize rs1
slli x2, x15, 60 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x18, 0x7b70744261ea6153 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x157f4b83ac1819d9 # initialize rs1
slli x18, x16, 30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x26, 0x207e925c629276f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x51edfc45f086ea4a # initialize rs1
slli x26, x17, 38 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x23, 0x72a732ada9fb8bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x90b2b163a7841b73 # initialize rs1
slli x23, x18, 37 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x29, 0x8b59994ba47f16c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe8e2ad2fabb383d1 # initialize rs1
slli x29, x19, 41 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x12, 0xbc494218947d1e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2d115556cfde73bf # initialize rs1
slli x12, x20, 33 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x29, 0x17b4cd231faa8897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x54359185acaaaf1c # initialize rs1
slli x29, x21, 13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x9, 0x480756bda3c90ab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7f0f5ad231636ce6 # initialize rs1
slli x9, x22, 2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x4, 0xeab5cbe1786d60be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x975646cea0d7d85a # initialize rs1
slli x4, x23, 15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x20, 0x6785e6832a8745bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x534b6c741c91e142 # initialize rs1
slli x20, x24, 28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x15, 0xe60aecba3cd7f50d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb3b45716b69d60b8 # initialize rs1
slli x15, x25, 0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x25, 0x53ae5954d8058ad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x71dd4a7f402f72bf # initialize rs1
slli x25, x26, 16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x16, 0x56509a20f3836467 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xec427e7538b0a77e # initialize rs1
slli x16, x27, 49 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x24, 0xb3f337b6a7d4a5be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc363958eb0bcfcd6 # initialize rs1
slli x24, x28, 30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x21, 0x82857bbf700a6633 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6f3fc0efafc25053 # initialize rs1
slli x21, x29, 2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x5, 0xd6524a013d0b2597 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6e747c06bcdfa000 # initialize rs1
slli x5, x30, 23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x6, 0x6de49ba37ff15afc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x654a367928842c1e # initialize rs1
slli x6, x31, 7 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x90522236b014d80)
li x16, 0x3ed98d74d4045844 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3ed98d74d4045844 # initialize rs1
slli x16, x17, 6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x14, 0x9185682028a8a056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
slli x14, x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0x10c7c974946c205d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
slli x12, x27, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x11, 0x33b30013be3f7d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
slli x11, x3, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0x24e811a12933b866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
slli x5, x17, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x3, 0x8b28d60dfb405769 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001 # initialize rs1
slli x3, x23, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x7, 0xcf636108074a0753 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
slli x7, x22, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0xe842179ee3cd0b1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
slli x1, x3, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x6, 0x3249afccb50f690b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
slli x6, x21, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x2, 0xb52c9e8189fa9dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
slli x2, x13, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x24, 0x976ec57e935796f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000000 # initialize rs1
slli x24, x3, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x14, 0xd05e8f2e5bcf5e77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
slli x14, x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x9, 0xeb1b929dae1f3312 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
slli x9, x25, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x7, 0x7f6677125dc9d152 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000001 # initialize rs1
slli x7, x8, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x19, 0xbc41d4bd2dee6229 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
slli x19, x11, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x24, 0xebce319eacc2d7f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
slli x24, x3, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x22, 0x1faed31dcf33b007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
slli x22, x3, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x24, 0xeed384ec0fb119bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffffffffffff # initialize rs1
slli x24, x17, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x8, 0x776d500e4171d6f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
slli x8, x29, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x3, 0xdaf4a9a4315c3f21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
slli x3, x22, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x24, 0x8ba91fd49c747220 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
slli x24, x27, 62 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x9, 0x0bff57319913370f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
slli x9, x11, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x8, 0x6136b4fe43c5efac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
slli x8, x24, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x11, 0xbb4e56b2ef0ee4f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
slli x11, x9, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x20, 0xd134c7799fef4018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
slli x20, x3, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x26, 0x4caacf5bab5df8d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
slli x26, x9, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x17, 0xcc74745a6c7a179a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
slli x17, x19, 62 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x13, 0x45707a4d5de4abb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
slli x13, x10, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x1, 0x405d1890e1211c81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
slli x1, x19, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x9, 0x9e4380ef9f8f4100 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
slli x9, x11, 55 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x23, 0x267f81faa585638a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
slli x23, x25, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x6, 0x0739df719ab252c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
slli x6, x11, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x20, 0xf7a0dce1fc96f568 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
slli x20, x23, 42 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x25, 0xa49e7fd9603aace8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
slli x25, x1, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x20, 0x9f5758b210389880 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
slli x20, x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x15, 0x33111bded16895c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # initialize rs1
slli x15, x16, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x21, 0x7719943742ddd5df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
slli x21, x5, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x4, 0x2e9498631672e090 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
slli x4, x19, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x19, 0x20f11f6dbb3a702b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
slli x19, x3, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x3, 0x6bd12a10c54b5c9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
slli x3, x8, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0x12d6a88167fab599 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
slli x11, x3, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x7, 0x0b71e1747955270b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
slli x7, x19, 62 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x10, 0x8a398b7c72ad6039 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
slli x10, x6, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x12, 0xdbe2ed1a211c8d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
slli x12, x15, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x27, 0x3df1654e5f5b1066 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
slli x27, x16, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x4, 0x82d4f764b0a7c258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
slli x4, x6, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x28, 0xbd384e88ace85ced # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
slli x28, x7, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x11, 0x154624ed4f8fd783 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
slli x11, x19, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x2, 0x8d3fa9eb2d8f68a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
slli x2, x28, 63 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x89d0ca6d71840771 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
slli x23, x27, 60 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x23, 0x47a79e3465e90692 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
slli x23, x15, 1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0x25b6ac47788cb67c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
slli x27, x29, 13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x30, 0xc341cc843a52b207 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
slli x30, x28, 26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x24, 0x21629b282faf2764 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
slli x24, x11, 27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x9, 0xea19a541a1db336b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
slli x9, x26, 57 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x26, 0xb9a175c2850a8934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
slli x26, x3, 56 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x27, 0xe76542bc2e4bfd7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
slli x27, x1, 10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x17, 0x556dd2c12e0f76fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffffffffffe # initialize rs1
slli x17, x26, 42 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x22, 0xe3c24363f951aebc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
slli x22, x11, 11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0x061ad50d8420598f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
slli x12, x22, 11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x4e51107ec44530bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
slli x26, x18, 12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x8dfdc25c92e77afd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
slli x18, x15, 55 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0xfb52f70ccc36593f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # initialize rs1
slli x29, x31, 49 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x5, 0xd76bb142ccf29da3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
slli x5, x1, 22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x22, 0x73ef3e3a22b500ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000001 # initialize rs1
slli x22, x20, 17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xfa40bea04ba58575 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xfa66d819a6e39d91 # initialize rs1
slli x0, x0, 52 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7c1128920fa42dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe42cc4f802b0aeca # initialize rs1
slli x1, x1, 17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x05d723006fb120b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8fe85f41b04c9f3b # initialize rs1
slli x2, x2, 7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x21579af0fd949050 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x60edabf20a940d1c # initialize rs1
slli x3, x3, 0 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xe4155be14612ed9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2ac2959f06d90ef5 # initialize rs1
slli x4, x4, 21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x63044d6fc1d45f8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd111a3789f8b2644 # initialize rs1
slli x5, x5, 60 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x113986665cb13daa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x493a16a8f92b0148 # initialize rs1
slli x6, x6, 28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x4960a7b64dc82352 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffff8cec30edd16d # initialize rs1
slli x7, x7, 48 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x2c67b5c071cea47c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x63c378d7aaef74e6 # initialize rs1
slli x8, x8, 13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xe8a4f4c9b048560e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x933dda754ffa09a5 # initialize rs1
slli x9, x9, 32 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x8cc2be69ecd375f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x75ccf07f88735097 # initialize rs1
slli x10, x10, 33 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x7cb9b48e5f544ab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x39f975637e7ab900 # initialize rs1
slli x11, x11, 5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb840e1283404dd3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x48ebf380e47c5b63 # initialize rs1
slli x12, x12, 57 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe32bc9164afd6c7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf8cce6f45bac4797 # initialize rs1
slli x13, x13, 50 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xf58cb4b7900510fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2768e65321ffaef9 # initialize rs1
slli x14, x14, 5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x3670a377fbfbfa7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbf119bb50b56e66f # initialize rs1
slli x15, x15, 41 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x26010ac30c233237 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xba480000f531267a # initialize rs1
slli x16, x16, 38 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x37a93d32f915d0ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd65345a67802defd # initialize rs1
slli x17, x17, 54 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x126fe7484f4c2dc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x02451e60d360b9e5 # initialize rs1
slli x18, x18, 24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x62d5ad804575183d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x61cd714b45fd868e # initialize rs1
slli x19, x19, 57 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x8af98de87cd5487b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xeb1f11da3303abc3 # initialize rs1
slli x20, x20, 54 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xa9c9b479dca9658c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4bb5bbbf4a0c7b10 # initialize rs1
slli x21, x21, 0 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x7383195815020f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5164b98ba372e7b2 # initialize rs1
slli x22, x22, 25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x4953bbdd867a6a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4774ae6105183884 # initialize rs1
slli x23, x23, 20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x03717d249efbe29b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8bd83f482e538235 # initialize rs1
slli x24, x24, 17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x6c75233999379546 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xefe44899f1a80c29 # initialize rs1
slli x25, x25, 16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xbb9d4598e9cd29e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb22a075e0f13a889 # initialize rs1
slli x26, x26, 29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x4e4e919bb936848b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa4d9ad2d5536a362 # initialize rs1
slli x27, x27, 10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x274302a916c4ffc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x05ff31c6168c3775 # initialize rs1
slli x28, x28, 34 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x2c972a974bdc74e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x25e33918f7b5151e # initialize rs1
slli x29, x29, 5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x664b5a100be21c20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x85769f50a147d2c2 # initialize rs1
slli x30, x30, 32 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x77ea97e693788b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc0302e8988adbeeb # initialize rs1
slli x31, x31, 53 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x5e8183b0d6da840b)
li x17, 0xb16af96af4360f1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5e8183b0d6da840b # initialize rs1
slli x17, x5, 32 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x44f20bbf18765c27)
li x12, 0xe0643825fe397b68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xbb0df440e789a3d9 # initialize rs1
slli x12, x3, 48 # perform operation

# Testcase cp_imm_shift
li x21, 0xc2bf479abff92378 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x267708f97fcc4361 # initialize rs1
slli x21, x8, 0 # perform operation

# Testcase cp_imm_shift
li x25, 0xeb78cee2fb0d9be7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x91497025348f5b15 # initialize rs1
slli x25, x12, 1 # perform operation

# Testcase cp_imm_shift
li x18, 0x6c93c114f85872ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7f41ad6d67c4b7a3 # initialize rs1
slli x18, x8, 2 # perform operation

# Testcase cp_imm_shift
li x5, 0x864f55f550f63d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4ea8c9015664b124 # initialize rs1
slli x5, x16, 3 # perform operation

# Testcase cp_imm_shift
li x25, 0xa6da8d2731b6fa2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe1d868263cf918e8 # initialize rs1
slli x25, x12, 4 # perform operation

# Testcase cp_imm_shift
li x20, 0xd74edd5333348ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7596155332d75d68 # initialize rs1
slli x20, x2, 5 # perform operation

# Testcase cp_imm_shift
li x30, 0x380e480a1444a1ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x27ee39be19d40954 # initialize rs1
slli x30, x14, 6 # perform operation

# Testcase cp_imm_shift
li x22, 0x5305b122cc112f69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe7a0397fe1ec1f9f # initialize rs1
slli x22, x19, 7 # perform operation

# Testcase cp_imm_shift
li x9, 0xd00d1df00a29f287 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb80f2cef6df15d2d # initialize rs1
slli x9, x3, 8 # perform operation

# Testcase cp_imm_shift
li x23, 0x53aa8bac0f9804a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x27304a6ae7577d2d # initialize rs1
slli x23, x6, 9 # perform operation

# Testcase cp_imm_shift
li x8, 0xdacd661f13b06a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa1ef745bb4fef6e8 # initialize rs1
slli x8, x28, 10 # perform operation

# Testcase cp_imm_shift
li x2, 0x9a189be596e601be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x10e77bcc6756d55d # initialize rs1
slli x2, x3, 11 # perform operation

# Testcase cp_imm_shift
li x4, 0xf245592cb40d3271 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2c4dcfb3a4517874 # initialize rs1
slli x4, x30, 12 # perform operation

# Testcase cp_imm_shift
li x27, 0xbbd6689db73a0a9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x39139d1ff1940e79 # initialize rs1
slli x27, x4, 13 # perform operation

# Testcase cp_imm_shift
li x24, 0xaa486684a82f17be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6fa4ced5e2acf534 # initialize rs1
slli x24, x26, 14 # perform operation

# Testcase cp_imm_shift
li x3, 0x10e607843f445894 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x52ed3e2582684b85 # initialize rs1
slli x3, x15, 15 # perform operation

# Testcase cp_imm_shift
li x27, 0x22ca20110be503bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbf7e5763df37bc58 # initialize rs1
slli x27, x10, 16 # perform operation

# Testcase cp_imm_shift
li x27, 0xa2a8124dc1ee4092 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x15441b9df6e5c5f5 # initialize rs1
slli x27, x24, 17 # perform operation

# Testcase cp_imm_shift
li x7, 0x90b7cc1917fd0377 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x75a4e296caedb6a2 # initialize rs1
slli x7, x3, 18 # perform operation

# Testcase cp_imm_shift
li x27, 0xebf891e0cf1e4d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5ee1d013be0a2bd6 # initialize rs1
slli x27, x15, 19 # perform operation

# Testcase cp_imm_shift
li x7, 0xdc33f872c24d04f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1173cbe9b5be766c # initialize rs1
slli x7, x18, 20 # perform operation

# Testcase cp_imm_shift
li x6, 0xf8ae2f2ba5195d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3dfddd0df50a89e2 # initialize rs1
slli x6, x9, 21 # perform operation

# Testcase cp_imm_shift
li x29, 0x03d7d900faf03132 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc82cc67803bde2ea # initialize rs1
slli x29, x31, 22 # perform operation

# Testcase cp_imm_shift
li x24, 0xe0dae20ede060cb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7df82c45b06f72e4 # initialize rs1
slli x24, x12, 23 # perform operation

# Testcase cp_imm_shift
li x27, 0x7171679a0fc6e4d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe5adbae06f8b0177 # initialize rs1
slli x27, x28, 24 # perform operation

# Testcase cp_imm_shift
li x4, 0x4c57ed630cf9fc1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x52c5fb9876f91fed # initialize rs1
slli x4, x25, 25 # perform operation

# Testcase cp_imm_shift
li x9, 0x2e9cf277e0b6a09d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1496b0a8836f07b3 # initialize rs1
slli x9, x15, 26 # perform operation

# Testcase cp_imm_shift
li x22, 0x6ea161a62f88adf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc64909486188a0dd # initialize rs1
slli x22, x13, 27 # perform operation

# Testcase cp_imm_shift
li x4, 0x54774dc14fc00536 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf6afca659accae32 # initialize rs1
slli x4, x19, 28 # perform operation

# Testcase cp_imm_shift
li x7, 0xaecfc3548fca1d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x286799ab889da3ef # initialize rs1
slli x7, x10, 29 # perform operation

# Testcase cp_imm_shift
li x1, 0xe07c514fd2b8bffb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaac989f6571b6a36 # initialize rs1
slli x1, x3, 30 # perform operation

# Testcase cp_imm_shift
li x9, 0x7a638305d4e3b5ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd0227fe7d6770a89 # initialize rs1
slli x9, x12, 31 # perform operation

# Testcase cp_imm_shift
li x4, 0x2169280534366702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x63ed1c752f5d1b3b # initialize rs1
slli x4, x17, 32 # perform operation

# Testcase cp_imm_shift
li x20, 0x30d0da679f259109 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf50976bf37322c70 # initialize rs1
slli x20, x21, 33 # perform operation

# Testcase cp_imm_shift
li x6, 0xee33d72d8766dbd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x2dd4cb1c9c29408d # initialize rs1
slli x6, x29, 34 # perform operation

# Testcase cp_imm_shift
li x20, 0xfefc5333df63ac18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xacb4afa8d64fbd4e # initialize rs1
slli x20, x16, 35 # perform operation

# Testcase cp_imm_shift
li x10, 0xa889c2c47ab59e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xea5b4157c92bd5a5 # initialize rs1
slli x10, x30, 36 # perform operation

# Testcase cp_imm_shift
li x14, 0x0b782d8364ef6be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0db7fb2b9e40ef80 # initialize rs1
slli x14, x2, 37 # perform operation

# Testcase cp_imm_shift
li x5, 0xb54191e7353e52b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x353df3a10900f1f8 # initialize rs1
slli x5, x11, 38 # perform operation

# Testcase cp_imm_shift
li x19, 0x23320669f6bff807 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfa0d45ae2c358992 # initialize rs1
slli x19, x10, 39 # perform operation

# Testcase cp_imm_shift
li x17, 0x282086be2ed19a74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe4e6caac4cd85455 # initialize rs1
slli x17, x14, 40 # perform operation

# Testcase cp_imm_shift
li x31, 0xe97791a6812f45f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x96e0d64e94977b62 # initialize rs1
slli x31, x7, 41 # perform operation

# Testcase cp_imm_shift
li x31, 0x9f1ffc623770e885 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xcfd7a7f59c519213 # initialize rs1
slli x31, x22, 42 # perform operation

# Testcase cp_imm_shift
li x18, 0x3f2c4bbd3ff9f91d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x164a86c9eb2b0421 # initialize rs1
slli x18, x4, 43 # perform operation

# Testcase cp_imm_shift
li x19, 0x73e726d0a818f9b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb22fcdc150602c4b # initialize rs1
slli x19, x22, 44 # perform operation

# Testcase cp_imm_shift
li x26, 0xe7c95a053696e9d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6335bd389a243780 # initialize rs1
slli x26, x9, 45 # perform operation

# Testcase cp_imm_shift
li x27, 0xc4b778f879f7e7ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0f0db07d6350e424 # initialize rs1
slli x27, x30, 46 # perform operation

# Testcase cp_imm_shift
li x7, 0x4a27559412a3158f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3526873a8962f22a # initialize rs1
slli x7, x8, 47 # perform operation

# Testcase cp_imm_shift
li x9, 0x64ad4f01f1dffac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb14bb9871647165d # initialize rs1
slli x9, x27, 48 # perform operation

# Testcase cp_imm_shift
li x25, 0x7909cb552ccc4591 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x91fc2e86ed819cd9 # initialize rs1
slli x25, x18, 49 # perform operation

# Testcase cp_imm_shift
li x8, 0x211e0c6849add14e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x98947193d5ad6b09 # initialize rs1
slli x8, x17, 50 # perform operation

# Testcase cp_imm_shift
li x10, 0x70191c6fff4c21c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x506ba2892244abca # initialize rs1
slli x10, x22, 51 # perform operation

# Testcase cp_imm_shift
li x16, 0x8ca34a9907eed9ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9a9f57f8d405fc71 # initialize rs1
slli x16, x13, 52 # perform operation

# Testcase cp_imm_shift
li x8, 0xa9fac10d3085f75a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5396c4d14f994e16 # initialize rs1
slli x8, x28, 53 # perform operation

# Testcase cp_imm_shift
li x3, 0xd7613f1da67e1aae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xcb122038581014f8 # initialize rs1
slli x3, x20, 54 # perform operation

# Testcase cp_imm_shift
li x27, 0x5c50c05051e4e5b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2f8a4272cac968b6 # initialize rs1
slli x27, x5, 55 # perform operation

# Testcase cp_imm_shift
li x30, 0xb22ab0ee3a6fdd28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x01f09ad8b95251cd # initialize rs1
slli x30, x20, 56 # perform operation

# Testcase cp_imm_shift
li x26, 0xae43be9e569335e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd811b54bf482dfaf # initialize rs1
slli x26, x14, 57 # perform operation

# Testcase cp_imm_shift
li x4, 0xcb30ae12d547ad12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf2a5f69872dfe16a # initialize rs1
slli x4, x11, 58 # perform operation

# Testcase cp_imm_shift
li x26, 0x5cf43f3373295420 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8fab520b105c747e # initialize rs1
slli x26, x1, 59 # perform operation

# Testcase cp_imm_shift
li x3, 0x1913fd21067dfbd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x72b671da1d5a8cca # initialize rs1
slli x3, x25, 60 # perform operation

# Testcase cp_imm_shift
li x11, 0x0c62a0edd7215f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x69156088cfaddd9e # initialize rs1
slli x11, x8, 61 # perform operation

# Testcase cp_imm_shift
li x7, 0x7480cd01eae9a05b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3b06f1fa783a3047 # initialize rs1
slli x7, x13, 62 # perform operation

# Testcase cp_imm_shift
li x24, 0x3e323cd74041e422 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x85cc1ae16a9192ca # initialize rs1
slli x24, x31, 63 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
