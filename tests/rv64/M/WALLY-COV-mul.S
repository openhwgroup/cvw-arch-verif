///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/M//WALLY-COV-mul.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.657598
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x068979bb861ff7c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x814b254efe56d17f # initialize rs1
li x9, 0x322d237571eaa882 # initialize rs2
mul x0, x18, x9 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xf68ee295bfa57d97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x57ba8f498156a77e # initialize rs1
li x5, 0xa129a0949c32712c # initialize rs2
mul x1, x20, x5 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x09b290f51ffef972 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x71745f74c8a58eee # initialize rs1
li x2, 0x4581d14a98573b5b # initialize rs2
mul x2, x22, x2 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x92416cd2207c74fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2211c831567f750c # initialize rs1
li x20, 0xe6fa8944ab22d11e # initialize rs2
mul x3, x4, x20 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xbce9bcd8c4224672 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdf93580183dcf1a7 # initialize rs1
li x31, 0x81e90d9c179691fb # initialize rs2
mul x4, x18, x31 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xdec1fe2fc4a08ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5768fe290e72648b # initialize rs1
li x5, 0xc324ee3672fa2f25 # initialize rs2
mul x5, x26, x5 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x24c4db8821fb9884 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x93c796ee16ec3316 # initialize rs1
li x26, 0x4bf0862692e50cd1 # initialize rs2
mul x6, x25, x26 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x15f888598c0fa864 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x67c382d96085cf8c # initialize rs1
li x17, 0xf451e31bd7a1bef0 # initialize rs2
mul x7, x1, x17 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x26081d2178d85efd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x69bc6860728100ba # initialize rs1
li x31, 0x5fd8f253b01066eb # initialize rs2
mul x8, x19, x31 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x2e7dae2592fa804f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x10f83345374d41df # initialize rs1
li x14, 0x618e9dafad346960 # initialize rs2
mul x9, x24, x14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xcff348e046b9819d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf7b002f5bc7c3695 # initialize rs1
li x9, 0x805e983c7dffa98b # initialize rs2
mul x10, x30, x9 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x06ed999728c72e0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x498145996fed3fd1 # initialize rs1
li x13, 0xa1efe18263991452 # initialize rs2
mul x11, x19, x13 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xd7b35f50e2305658 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8676fc5ee85966b2 # initialize rs1
li x4, 0x037c91f825de7dda # initialize rs2
mul x12, x28, x4 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x6849b5634ab61e95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa226c28cfbd08d49 # initialize rs1
li x26, 0xebdaee16c6234add # initialize rs2
mul x13, x20, x26 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x29bb143815eceda4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8a4fb3a2395e72c6 # initialize rs1
li x22, 0xcc9c91aae4ef48bb # initialize rs2
mul x14, x31, x22 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xdaadd6aed5c81572 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x84f2f4bbc1523aad # initialize rs1
li x9, 0x8b9a9459a105a797 # initialize rs2
mul x15, x26, x9 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xef66e87e029f832c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x502fe982e6059864 # initialize rs1
li x13, 0x01d1ecfd40cb5426 # initialize rs2
mul x16, x28, x13 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xf9acda7806e8f664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x941293399ab42634 # initialize rs1
li x12, 0x76d9fc75e9603726 # initialize rs2
mul x17, x2, x12 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x99623a9f7da379bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80a1ae1b12fa4653 # initialize rs1
li x27, 0xbfffa97884e2cf04 # initialize rs2
mul x18, x23, x27 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x917e47fcca9e3970 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xab13ceee20365fe4 # initialize rs1
li x25, 0x9efbacd59f4c962f # initialize rs2
mul x19, x31, x25 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x769bd051aa664323 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x660a340d4c436e65 # initialize rs1
li x26, 0x9f82f3102170b477 # initialize rs2
mul x20, x30, x26 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xae2c4409d6a69303 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x25d8479c34205dcd # initialize rs1
li x27, 0x4465ced263dbe204 # initialize rs2
mul x21, x2, x27 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xa53d2df320128073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5e4a606669756b74 # initialize rs1
li x29, 0xd25493b38ac5c234 # initialize rs2
mul x22, x31, x29 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xffcf6330a1da38e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x249cb3ff947f6ff5 # initialize rs1
li x9, 0x8e7a337493582537 # initialize rs2
mul x23, x6, x9 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x520fa8dc74bd85fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x865f51e35a5a2860 # initialize rs1
li x26, 0x8dbc27f8ae0d86a9 # initialize rs2
mul x24, x6, x26 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x9dde07f7a49997d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xabb6b09774a24c57 # initialize rs1
li x7, 0x0370a7e132bb3e54 # initialize rs2
mul x25, x8, x7 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x5e78227c89c6fed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd76909c6c96c2581 # initialize rs1
li x22, 0xd959d9b67769763d # initialize rs2
mul x26, x18, x22 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xbafe52d41efdbd21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x56e06be635bf17d7 # initialize rs1
li x28, 0x86a6f85d3ac9ed52 # initialize rs2
mul x27, x9, x28 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x2d0e814613946dcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf4690bd0b781e4d2 # initialize rs1
li x18, 0x5be11629ab629399 # initialize rs2
mul x28, x24, x18 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x1175ed2b530c1c3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd7ddd350bb39a060 # initialize rs1
li x10, 0x77eb4c5c8088718e # initialize rs2
mul x29, x17, x10 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x6af34d0de043d8c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3a52f11da29d692e # initialize rs1
li x31, 0x3181c53173194e5d # initialize rs2
mul x30, x4, x31 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x6bec37e33e6a6f4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa2371f8124e54c83 # initialize rs1
li x1, 0xc97a257766b4b51f # initialize rs2
mul x31, x15, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x17, 0x094b23722c3b2a68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3803f411e7f6d1af # initialize rs1
li x1, 0x541670af24aaf1b5 # initialize rs2
mul x17, x0, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x8, 0x7ad98e9d83326459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8614a1c902eb341b # initialize rs1
li x13, 0x9f14d1734f3c72a5 # initialize rs2
mul x8, x1, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x25, 0xfff47c0b8eb284c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0e1ec87de90cdef3 # initialize rs1
li x18, 0xa915264d3b81d278 # initialize rs2
mul x25, x2, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x10, 0x6506edb5bdfc976f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x460904d7e854535f # initialize rs1
li x6, 0xd5b85e302a1ce290 # initialize rs2
mul x10, x3, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x15, 0x8b91ff079c359faf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdfd7d7a836e77b46 # initialize rs1
li x5, 0xe1bb6e6679ce16dc # initialize rs2
mul x15, x4, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x6, 0x21b2d1e29fec6f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x08f00853504a845a # initialize rs1
li x16, 0x69fa41b45df02da5 # initialize rs2
mul x6, x5, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x28, 0xee38d5aa5a9d594c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x276900fe04891962 # initialize rs1
li x17, 0x8e8d7d8cf2bee4cd # initialize rs2
mul x28, x6, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x18, 0xb6a6ce8f58338303 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xac6203f2f81d2a4f # initialize rs1
li x31, 0xfbf431b4a38cd5c1 # initialize rs2
mul x18, x7, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x23, 0x66cbab0b6be47e34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1fa666a4dbfc387b # initialize rs1
li x6, 0x67c871ac9505539d # initialize rs2
mul x23, x8, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x21, 0xf39624cf669026a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2f6b34d6c0bba448 # initialize rs1
li x15, 0xbe37f1c628a6af06 # initialize rs2
mul x21, x9, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x23, 0x4af744e920eb404e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbc80fc2525b090fa # initialize rs1
li x29, 0x7cd48d3bec7c3997 # initialize rs2
mul x23, x10, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x24, 0x4f4cd1f302f6bcfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7e8b653b8061167d # initialize rs1
li x13, 0xdaf61996f9fbaafb # initialize rs2
mul x24, x11, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x21, 0x0cd7ac478bd544f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1579113306c5093c # initialize rs1
li x25, 0x2a989406e6214411 # initialize rs2
mul x21, x12, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0x328b519543bbe111 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xad608c258c5c640d # initialize rs1
li x8, 0x1075d1ffa80b251f # initialize rs2
mul x14, x13, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x5, 0x6bdd6ed95067360a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80ffe55ce9318c66 # initialize rs1
li x29, 0x02268f3048ff3529 # initialize rs2
mul x5, x14, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x24, 0xd7ff855f38e9b1c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfc80c7dde8628e2e # initialize rs1
li x10, 0x09aa0c07563e2d03 # initialize rs2
mul x24, x15, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x12, 0x07aaf41fcdbf26c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x358ebc65ee485907 # initialize rs1
li x23, 0x40398a73777007c5 # initialize rs2
mul x12, x16, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x4, 0xddf24a1caafe56ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3b0d94dbaca0ca57 # initialize rs1
li x24, 0xc371f84f039578e3 # initialize rs2
mul x4, x17, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x25, 0x49b52be6b6da4477 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0dcfeb86013b4c66 # initialize rs1
li x16, 0x18fdc9f3c4f1ddff # initialize rs2
mul x25, x18, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x2, 0xdc7ca09393f5aff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa4e6d097dc3ed354 # initialize rs1
li x5, 0xb7ccfe418dc31a67 # initialize rs2
mul x2, x19, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x15, 0x719e4f2869fca4d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa782ece58155c77a # initialize rs1
li x27, 0xa851ea624a96e201 # initialize rs2
mul x15, x20, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x14, 0x58a07cb62f1e8d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6f689e631a82b40b # initialize rs1
li x4, 0xfbc69a47ec8f07e9 # initialize rs2
mul x14, x21, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x27, 0x829fb16231a30f53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd1b799a5a4f118bb # initialize rs1
li x7, 0x9b467214904427cc # initialize rs2
mul x27, x22, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x21, 0x4354f44467e585fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8efb0d320e5dc1f7 # initialize rs1
li x29, 0xab187a7668ef00bc # initialize rs2
mul x21, x23, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x16, 0x7be779f10e11215b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa38e2bfbc27c0aec # initialize rs1
li x8, 0x39bdce6a8708194d # initialize rs2
mul x16, x24, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x7, 0x6b721a0d1ae50b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc212f65a0b29eedc # initialize rs1
li x24, 0x49d7070ec3ed2aca # initialize rs2
mul x7, x25, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x7, 0x0e63cc28e7557907 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x43518c16b0a449b0 # initialize rs1
li x19, 0x20f922dff365256d # initialize rs2
mul x7, x26, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x9, 0x1d458051bd5dc5d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc215e9737c947ac5 # initialize rs1
li x10, 0x5e94bc30def9cfe9 # initialize rs2
mul x9, x27, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x11, 0x0b0c289ba12bcfb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x654f5f13cb5461c3 # initialize rs1
li x4, 0x529b4399c1b1c0dc # initialize rs2
mul x11, x28, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x22, 0xc897676749bb6371 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0fef30230a97011e # initialize rs1
li x27, 0x911b0c80f3662286 # initialize rs2
mul x22, x29, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x7, 0x47229b53d08c6a45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc42fbc7f750b5dc3 # initialize rs1
li x22, 0x79adc2f4da82024d # initialize rs2
mul x7, x30, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x25, 0x99f0fdeb78fa374d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4aebee0900902d4b # initialize rs1
li x1, 0xa4dae90781107d22 # initialize rs2
mul x25, x31, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x14, 0x1c504de174cfef27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3396b8fd85aa7460 # initialize rs1
li x0, 0xadae0474faa926af # initialize rs2
mul x14, x9, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x25, 0x3a7389d52cdd366f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xeabafc8a841d7d22 # initialize rs1
li x1, 0x098a463453281889 # initialize rs2
mul x25, x2, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x30, 0x6e67e704fc521b6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1287d28bfba44dce # initialize rs1
li x2, 0x273046c387e7be93 # initialize rs2
mul x30, x25, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x2, 0xecd085ef069c82be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf08677e290057b12 # initialize rs1
li x3, 0x621814d9eca54d6c # initialize rs2
mul x2, x10, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x31, 0x5041cf0abedc66e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x1e3ad424d23fba1c # initialize rs1
li x4, 0x728327ff72b9dc90 # initialize rs2
mul x31, x29, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x9, 0xf11b502a4d6370f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd2633405aa995509 # initialize rs1
li x5, 0x561be717df73795f # initialize rs2
mul x9, x1, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x20, 0x17249a360ee9f569 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7352b1d471be4812 # initialize rs1
li x6, 0xa63a1036f1c193b7 # initialize rs2
mul x20, x22, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x17, 0x46e01f1e68fd1939 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x66fc84b0210b2ca4 # initialize rs1
li x7, 0x97aaa11811ddb005 # initialize rs2
mul x17, x20, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0xbc1d4c1e5090c4c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd098f241c953de36 # initialize rs1
li x8, 0x713af38c352bb372 # initialize rs2
mul x23, x2, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x16, 0x2a8b361e65b9c657 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x889d45e78dd376e6 # initialize rs1
li x9, 0x31bbb30f0329c192 # initialize rs2
mul x16, x11, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x28, 0x4e2367b228a214a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaad2261474c564fa # initialize rs1
li x10, 0xb87621816b69b405 # initialize rs2
mul x28, x17, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x10, 0x7f9b30cf6775bc1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x11825097212c1a26 # initialize rs1
li x11, 0x3c1947e8711c734e # initialize rs2
mul x10, x30, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x18, 0x9f2b37f41ac26284 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9c2b6b9f4ade3332 # initialize rs1
li x12, 0xf6bab4c3c64179ad # initialize rs2
mul x18, x7, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x24, 0x1ac81e8b88e2bd67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf6187a103a82300c # initialize rs1
li x13, 0x3f1a5739a6fd3038 # initialize rs2
mul x24, x30, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x1, 0x3082e5e6de54371e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xba05737d42ca0cf8 # initialize rs1
li x14, 0x512b8530caeee648 # initialize rs2
mul x1, x5, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x3, 0x76a528cd9b5a2671 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xbb69255e9f4744aa # initialize rs1
li x15, 0xe3b4d28232a8af2b # initialize rs2
mul x3, x18, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x10, 0xadb75c23274c97c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xae12e658d3ba3d0e # initialize rs1
li x16, 0xf25d7f1130c7b6f5 # initialize rs2
mul x10, x4, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x31, 0x2df0db4510479887 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5d20602cd8aefeb9 # initialize rs1
li x17, 0xc03d48a4d0807dec # initialize rs2
mul x31, x28, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x31, 0xcfd699af89afaab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc5e2c94c8b9d6594 # initialize rs1
li x18, 0x6de237145f213eaa # initialize rs2
mul x31, x8, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x25, 0xbc623bda7d2ab580 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xab9e2b3fe2bf5e30 # initialize rs1
li x19, 0xc0e37b619104b98e # initialize rs2
mul x25, x23, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x26, 0xab8cbf5c55ef4683 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4741cef64136df5a # initialize rs1
li x20, 0x35b7f5140c472164 # initialize rs2
mul x26, x3, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x7, 0x7ccad3f4c75ca734 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4dde50eca4cde625 # initialize rs1
li x21, 0xbf0a247a3f8c1866 # initialize rs2
mul x7, x3, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x23, 0x5c1e237c3cb399c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x977fb6f8e56685f5 # initialize rs1
li x22, 0xb0edaf19d8152f20 # initialize rs2
mul x23, x19, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x8, 0xccf7117506472e2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x22e444b014b05352 # initialize rs1
li x23, 0xaba4f7ffe13c2de4 # initialize rs2
mul x8, x2, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0xb5d7aee253ae16e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9c80848186f14fd6 # initialize rs1
li x24, 0xcd9279638aec4a73 # initialize rs2
mul x18, x26, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x28, 0xec70551bf5a83e76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa4484156f0c9f172 # initialize rs1
li x25, 0x6c2811d480168fe9 # initialize rs2
mul x28, x24, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x1, 0x576ab566877741af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaf39794d8a7e772a # initialize rs1
li x26, 0x972c3206de4447b2 # initialize rs2
mul x1, x5, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x14, 0x62fa867f71b60eba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7a063c5b96fbfa98 # initialize rs1
li x27, 0x25cabcdc25c9deb4 # initialize rs2
mul x14, x21, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x16, 0x54d6c28c40e2f19b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xae7e815e09baf9b6 # initialize rs1
li x28, 0x8749ce481d580f53 # initialize rs2
mul x16, x27, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x1, 0x4db78fb940bfd583 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7122dfbdf80230db # initialize rs1
li x29, 0x43951687e395fd14 # initialize rs2
mul x1, x31, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x15, 0x7146cba3f1230be9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7e5b8f9fa4d9b1b8 # initialize rs1
li x30, 0xee7064faca937e52 # initialize rs2
mul x15, x24, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x23, 0xda1cd3b11ec9176b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9263c7f1460802eb # initialize rs1
li x31, 0x80c5e5f2bc31aac1 # initialize rs2
mul x23, x18, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x1745b31a4e297fce)
li x13, 0xb03f3ba5cee97eef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb03f3ba5cee97eef # initialize rs1
li x0, 0xd2fdf9f7d015d878 # initialize rs2
mul x13, x15, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xd071528e65ead8fc)
li x19, 0xd071528e65ead8fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd071528e65ead8fc # initialize rs1
li x2, 0xd071528e65ead8fc # initialize rs2
mul x19, x0, x2 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xf5d3a313a4c3a74a)
li x18, 0x7b8f9d622bf0937a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf5d3a313a4c3a74a # initialize rs1
li x2, 0xf5d3a313a4c3a74a # initialize rs2
mul x18, x23, x2 # perform operation

# Testcase cmp_gpr_hazard raw test
mul x14, x11, x9 # perform first operation
mul x8, x14, x24 # perform second operation

# Testcase cmp_gpr_hazard raw test
mul x29, x23, x4 # perform first operation
mul x30, x4, x29 # perform second operation

# Testcase cmp_gpr_hazard waw test
mul x19, x10, x2 # perform first operation
mul x19, x18, x20 # perform second operation

# Testcase cmp_gpr_hazard waw test
mul x15, x22, x21 # perform first operation
mul x15, x12, x31 # perform second operation

# Testcase cmp_gpr_hazard war test
mul x6, x18, x26 # perform first operation
mul x18, x20, x5 # perform second operation

# Testcase cmp_gpr_hazard war test
mul x16, x12, x29 # perform first operation
mul x29, x23, x12 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x9, 0x2a14f8bb2a74810f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
li x0, 0xa19e3c3bc15ad75a # initialize rs2
mul x9, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x9, 0x388d01a1e8323df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
mul x9, x30, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0xbd370892d0a35c3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
mul x12, x11, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x3, 0xdb20329537c44a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x0, 0x91cd845e6a1f6948 # initialize rs2
mul x3, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0x438287cb5da942ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
mul x19, x18, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x16, 0x8177e705849bff2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
mul x16, x20, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x22, 0xb132010a46fef88e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
li x0, 0x0dd33272d329feeb # initialize rs2
mul x22, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x19, 0x0336121b454c9f29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
mul x19, x30, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x20, 0x3d797dfa2274e431 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
mul x20, x13, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x16, 0x0e88664a41b1efb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x0, 0x397c6c767c2747c8 # initialize rs2
mul x16, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x17, 0x09b13e1b7610a6d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
mul x17, x14, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x12, 0x0813c19c66c8f4a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
mul x12, x5, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x6, 0x6362e099ad7167e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x0, 0x74ba41cf872f14f1 # initialize rs2
mul x6, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x12, 0xcde8db6b5d9f1146 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
mul x12, x21, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x7, 0xbe88ea0eb0213bd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
mul x7, x24, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x7, 0x7f167033c1d474ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffffffffffff # initialize rs1
li x0, 0x5e8407fd0d0402d0 # initialize rs2
mul x7, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x20, 0xf73209cdbd5197f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
mul x20, x4, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x10, 0x6acbd197e09597a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
mul x10, x21, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x30, 0x0729b205da7a9357 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffffffffffe # initialize rs1
li x0, 0xd04c238e6a13028b # initialize rs2
mul x30, x17, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x22, 0x8a596385251467eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
mul x22, x24, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x27, 0x6468c31475a56e0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
mul x27, x7, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x31, 0x08b86fbdc31bce40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x0, 0x602bbdcc764ddded # initialize rs2
mul x31, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x8, 0x067c50545066f430 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mul x8, x4, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x13, 0x4489ea70c3980366 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
mul x13, x23, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x27, 0xcde1a8d4eff3ecd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x0, 0x45a09f36d0180c71 # initialize rs2
mul x27, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x15, 0x44cb23eba887a993 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffffffffffe # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
mul x15, x28, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x25, 0xebca0e1d85f7fcfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
mul x25, x12, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x24, 0x5f5e4baabcd0c644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x0, 0x57d0a1e28d37378c # initialize rs2
mul x24, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x25, 0x940dcc81faf08161 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
mul x25, x20, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x10, 0x163a430e86f44715 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
mul x10, x20, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x10, 0x961dc430f6005da9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x0, 0x6df261844b603c9d # initialize rs2
mul x10, x26, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x15, 0x9e012ebb667db568 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x15, x5, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x26, 0x96527acc9359dbac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x26, x25, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x21, 0x6eea3d5f7feaaca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
li x0, 0x30a785bcc243e32e # initialize rs2
mul x21, x24, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x19, 0xd8d254b25646f893 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
mul x19, x8, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x19, 0xeb355d00b6e0269d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
mul x19, x16, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x25, 0xd00c136556d73f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x0, 0x4c7a911cc5bf32a1 # initialize rs2
mul x25, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0xd95feae5ea953e10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
mul x1, x29, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x21, 0xe75befec480ed063 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
mul x21, x23, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x31, 0x36fa0a98a6ea530e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x0, 0x80b9507520532c11 # initialize rs2
mul x31, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x12, 0x37a6ded30b0bffa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
mul x12, x26, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x13, 0xec12b1219506117b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
mul x13, x6, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x31, 0x576cb60c824cedcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000000 # initialize rs1
li x0, 0xf795ba1102d139a3 # initialize rs2
mul x31, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x30, 0xa41bfa90f1a1b3da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
mul x30, x10, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x28, 0xd20dd0dbba37cba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
mul x28, x27, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x10, 0xc482ba7c462118a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
li x0, 0x5fd8acded6034ca9 # initialize rs2
mul x10, x30, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x26, 0xf801692a1ad31fb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mul x26, x29, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x23, 0x39d5bd7fc88efb85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
mul x23, x21, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x2b059906cc681ac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x14, 0x1924792f1717208c # initialize rs2
mul x20, x11, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0xa72e9cf85329c475 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
li x31, 0x8a2c3ddadc5a9ce7 # initialize rs2
mul x21, x22, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0x1256dea6789b7b8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000002 # initialize rs1
li x10, 0x7fe0c3986ae9e658 # initialize rs2
mul x24, x5, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0xa1ab2818c7c250a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x14, 0xabb1d674ad2bd80d # initialize rs2
mul x13, x29, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x12, 0x1a6391103c6aac67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x7, 0x063635b917f23b2c # initialize rs2
mul x12, x11, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x22, 0x7014c7e6ddb83938 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x18, 0x8d778f4a41cb997d # initialize rs2
mul x22, x31, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x17, 0xd29e7cd975a4af72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x31, 0x9bce9dcb2908f210 # initialize rs2
mul x17, x20, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x5, 0x63906d433b616c7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x15, 0xee01f2901f2ede24 # initialize rs2
mul x5, x23, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x23, 0xaaa58ee6ed523aae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
li x16, 0x012e14678bfbbfc9 # initialize rs2
mul x23, x15, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x8, 0xfbd63f86aea423a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0xe3b26549c3120f05 # initialize rs2
mul x8, x29, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0x011e3ff39b3a2e3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xad485c98d48fe691 # initialize rs2
mul x1, x14, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x6, 0x3910ab88fa18c410 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs1
li x8, 0xdc2551c72782de1b # initialize rs2
mul x6, x17, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x3, 0x076ee8385f7a8690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
li x15, 0xe827f316a8b2b452 # initialize rs2
mul x3, x11, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x1, 0xe3c489c9664ca54c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x9, 0x14d5fec18ca0a5ba # initialize rs2
mul x1, x24, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x6, 0xeb78f76eb37c2a75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x11, 0x5fb7640ed163485f # initialize rs2
mul x6, x30, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x17, 0x65b99a4eebb3e2a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000001 # initialize rs1
li x27, 0x445e05adffcf9ae9 # initialize rs2
mul x17, x3, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x5, 0x38e1c8ded87dd5dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc5cd27c969fc6a8a # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
mul x5, x7, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x2, 0x7f01cfbd76aed1b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x898733b47335d099 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
mul x2, x4, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x23, 0xca0031ab050e43a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x16a5075f3a232128 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
mul x23, x12, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x25, 0xc853a4c1e050788d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdf264676087f567a # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
mul x25, x17, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x24, 0xffeda8a44ee0901a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcfd543d0f112fd15 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
mul x24, x14, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x8, 0x2f4a7a3de1a0fac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe018d753cfcf27c5 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
mul x8, x4, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x19, 0x405c02a997cbaa94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x20a596137f5176fb # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
mul x19, x27, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x15, 0x544246ae06bfb6df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x633d84df65811d90 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mul x15, x14, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x22, 0x2aa36e6cec9d83c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x92ff7903b35e420e # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
mul x22, x30, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x29, 0x314df0ea9fc1818f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7c03e29f20adb49c # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
mul x29, x5, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x28, 0xe8cde99bdc47b39c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x04c96d4d979ce896 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x28, x12, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x14, 0xb8f94f41b75a50f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9f2f41688dd2195e # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
mul x14, x3, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0xadbb0b1ba6f0159b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xbe618c02541e1735 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
mul x17, x2, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x24, 0x48d4aea65420f283 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xc7740c1a6340d0b3 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
mul x24, x17, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x15, 0xaac0811a1db46283 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb12c00f40fa0a141 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
mul x15, x14, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x13, 0x1d9bc166b70f0139 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8394cc48dd363126 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
mul x13, x30, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x1, 0x06bca6a59ae7656b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
mul x1, x29, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x30, 0x998d9c3f536cfcba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
mul x30, x8, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x26, 0x7288f67afae86261 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
mul x26, x9, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x6, 0x8867baf361c9b1e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
mul x6, x23, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x4, 0x0071ae5ec43cb169 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
mul x4, x21, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x1, 0xdc867d2bf25fd674 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
mul x1, x13, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x12, 0xaab0e689d3bb628e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
mul x12, x17, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x30, 0x7e064fef8bbba482 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
mul x30, x12, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x26, 0x5a4af6718b5b7043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
mul x26, x2, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x23, 0x84e19d93b100615c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
mul x23, x10, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x2a7891027af02748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x26, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x3, 0xd86a1b59b86bf16e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
mul x3, x21, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x2, 0xaa187b8e08f7e5ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
mul x2, x9, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x13, 0xe38a8288d3ae3bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
mul x13, x4, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x5, 0x9ebbfbfc750c244c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
mul x5, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x31, 0x1dfeec76de00dec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
mul x31, x5, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x30, 0x822b2072d0832d74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
mul x30, x1, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x6, 0x1137e2334e898a36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
mul x6, x10, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x30, 0x05e1d7bcc81def8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
mul x30, x27, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x29, 0xc2b5b8e9dc247d5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
mul x29, x31, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x27, 0xe9b5e836c84ef450 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
mul x27, x26, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x7, 0xecadd29640c3cf76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
mul x7, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x11, 0x1e5eb285d862fe09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
mul x11, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x6, 0x38fccc9a34b55291 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
mul x6, x23, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x20, 0xcd42d8fec86176db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
mul x20, x18, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x24, 0x8846b52ea1d94ee0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
mul x24, x12, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x547e44a8c1f59cc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x28, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x23, 0xed8bb7cd3e10a310 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
mul x23, x28, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x16, 0x6a312c0a0a41856a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
mul x16, x8, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x19, 0x0763fd9e7ba43a3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
mul x19, x8, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x10, 0x2c24227279c8b57e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
mul x10, x26, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x16, 0x3124b416fdb61074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
mul x16, x25, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x24, 0x72d7028f0bde6cab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
mul x24, x5, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x21, 0x6d99a2370a21c455 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
mul x21, x27, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0xf7c5bee00fbcd1d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000002 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
mul x23, x16, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x29, 0x1cec84827859b4cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
mul x29, x27, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x5, 0x9de8d9a61ac14086 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
mul x5, x22, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x22, 0xaf50f807c27c7195 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
mul x22, x20, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x31, 0x0bd6e00b287cab0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
mul x31, x4, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x16, 0x6bf8606fa147e762 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
mul x16, x21, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x20, 0xe35ae7ca8fe159d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
mul x20, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x2, 0xebd426a8c34137e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
li x22, 0x5bbc887763ae86f7 # initialize rs2
mul x2, x12, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x1009961afa19ffc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x14, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x5, 0xdec54851903068bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
mul x5, x1, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x5, 0x2a7f3e93cc9eef5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
mul x5, x11, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x8, 0xc24e4089f5c449eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
mul x8, x18, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x17, 0xcc1e45549fe2ae47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000002 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
mul x17, x5, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x14, 0x210a92345479b9f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
mul x14, x19, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x13, 0xf3a32572d5c528eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
mul x13, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x14, 0x86187e90d24b6116 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
mul x14, x7, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x29, 0x446ac9705c3ae24e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
mul x29, x18, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x5, 0x852501572252cd5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
mul x5, x17, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x24, 0x9189585085293fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
mul x24, x21, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x15, 0x9762a6a704f2a76f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000000 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
mul x15, x1, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x13, 0x58b939ef957b7c4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
mul x13, x2, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x8, 0x3a028660a4dee329 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
mul x8, x24, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x3, 0x284f44f1660c0cd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000000 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
mul x3, x17, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x25, 0x7320dafa48b2ffc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
mul x25, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x7984fb8afb278c3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x25, x31, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x4, 0x5a464f7febbc9e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
mul x4, x19, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x6, 0xcf8b79b89fc2d2d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
mul x6, x9, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x7, 0x770921f95f48c168 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
mul x7, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x19, 0xac94791397ddad45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
mul x19, x25, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x20, 0xdd36d439f475b4eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
mul x20, x28, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x7, 0x96a9c3bc713f7872 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
mul x7, x26, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x11, 0xd8cd2ea47f10cf24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
mul x11, x30, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x1, 0x0f4ea3f67f8c375d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
mul x1, x12, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x12, 0xbb79b72a4577410d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
mul x12, x20, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x15, 0x72296c6ae098e762 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
mul x15, x7, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x14, 0x8e33fa5e3a71b39f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
mul x14, x21, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x28, 0x80c0fda0ee00f090 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
mul x28, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x19, 0x20435f15d10b746e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
mul x19, x3, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x23, 0x47028ace398c7449 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
mul x23, x29, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x13, 0x3fd95cf611a69531 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000001 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
mul x13, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x3a50dcbe8b865cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x2, x13, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x28, 0xfd16517189fe3b23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
mul x28, x10, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x1, 0x887bb617f0f6e6bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000001 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
mul x1, x22, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x11, 0x1be6e9d086109d9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
mul x11, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x3, 0x734414a764a04c61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
mul x3, x19, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x25, 0x9161f529eac560a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
mul x25, x4, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x31, 0xc3232b892b371bec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
mul x31, x28, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x7, 0xeff587ef376ff370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
mul x7, x16, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x24, 0xacc8387c1d85efbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
mul x24, x14, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x10, 0x9e93188573d7bd4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
mul x10, x20, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x28, 0x2a5009e5209884a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
mul x28, x12, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x23, 0x1c95fbf15a7ac039 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
mul x23, x18, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0xf197e81e99a54984 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
mul x9, x19, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x20, 0x3c77594b48c25cda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
mul x20, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x16, 0xbcadf7edbb79804e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffffffffffff # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
mul x16, x21, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x12, 0xece801f177957050 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
mul x12, x15, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0xd5e7d04a39aea8cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffffffffffff # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x23, x30, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x4, 0x3414c73818b98515 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffffffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
mul x4, x21, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x7, 0x1133354308f03fef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffffffffffff # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
mul x7, x5, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x8, 0x8ea31538f8ecc979 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
mul x8, x18, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x7, 0xba9ac5e0e40b88db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
mul x7, x26, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x25, 0x9927113f091e6083 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
mul x25, x13, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x9, 0x679322cc350c30df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
mul x9, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x28, 0xb453255851c22d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
mul x28, x18, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x29, 0x5289a088b7f01824 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
mul x29, x12, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x12, 0x1b7413aa76242b7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffffffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mul x12, x21, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x8, 0xab1aeac594610447 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
mul x8, x9, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x17, 0x27dd8f4498bbfea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
mul x17, x13, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0x036f8b8e2c10488c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
mul x19, x6, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x14, 0x28cd8051d1790bb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffffffffffe # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
mul x14, x17, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x24, 0xaf589d0686deec1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
mul x24, x1, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x31, 0xf19da2992dd18476 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffffffffffe # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
mul x31, x25, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x7d53ea430c29aeca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x4, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x6, 0xcc370a6b8731ec4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
mul x6, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x1, 0xa32bac203856ee81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
mul x1, x15, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x6, 0x4aec695e227b7b41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
mul x6, x22, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x13, 0xc4a105daad2f4e65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
mul x13, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x26, 0x46168ccbd2d1b031 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
mul x26, x29, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x19, 0xce76c63cbca21246 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
mul x19, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x18, 0x724c9d34358c39f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
mul x18, x20, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x19, 0x56c7db24c7f6d2aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
mul x19, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x28, 0x68a77530281b0b9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
mul x28, x24, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x9, 0x3a4c65dd37f80f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
mul x9, x6, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x27, 0x644cdbdc5b8b11aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
mul x27, x9, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0xf7b79090dcb5dd72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
mul x27, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x14, 0x11ff609dd1bfab47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
mul x14, x7, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x7, 0xff373c8fd18d26dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
mul x7, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x11, 0x2397224238e54f4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
mul x11, x1, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0xc6db9888a7e4ca3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x15, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x20, 0xad29a465c5df6a2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
mul x20, x31, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x2, 0x5c848713813637a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
mul x2, x21, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x4, 0xe09a5bfbe1e538a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
mul x4, x3, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x21, 0x8a7720b3db95551e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
mul x21, x27, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x15, 0x65d68836a09aea43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
mul x15, x13, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x20, 0xf8ca54737a438d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
mul x20, x12, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x27, 0x15183635e35d929d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
mul x27, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x29, 0x5ed97dffecca9e60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
mul x29, x18, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x12, 0xd8976ea2c0daa8bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
mul x12, x30, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x8, 0x6c537f55658c288a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
mul x8, x13, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x7, 0xcb2056b9b1a46762 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
mul x7, x30, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x15, 0x5a892ab9512db8bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
mul x15, x20, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x28, 0xdff39e23e47b9898 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffffffffffe # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
mul x28, x5, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x22, 0x4e4683c0cdab1bf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
mul x22, x13, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x15, 0xffc9e849a4e95111 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffffffffffe # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
mul x15, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x045e239552c4a53a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x7, x11, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x6, 0x20ce98d3b61da596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
mul x6, x22, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x9, 0x456f8f8320761367 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
mul x9, x19, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x19, 0x41da31886be19eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mul x19, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x21, 0xda1bbf5c4decdb2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
mul x21, x11, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x26, 0x44ff0004a52df21d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
mul x26, x3, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x23, 0xd9056d5fbd092274 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
mul x23, x1, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x22, 0xe91945a3b5d1a227 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
mul x22, x3, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x3, 0xd9fc3d7cacb91b67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
mul x3, x13, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x16, 0xc28e7b3b765f6a28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mul x16, x7, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x7, 0x5a5a5fb3bd7a63c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
mul x7, x6, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x18, 0xd36149092dc23f4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
mul x18, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x3, 0xaf1f3248e4a159e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
mul x3, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x6, 0xb7c7c16dcd3d6cab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
mul x6, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x4, 0xbfc42135daaf534d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
mul x4, x25, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x6, 0x9be9a10ba8213b33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
mul x6, x31, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x8f269161ef4bf9cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x23, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x28, 0x31d6166e5f43e7e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
mul x28, x23, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x9, 0x923d92afccf20e90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
mul x9, x23, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x13, 0x293c1337717c82cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
mul x13, x22, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x17, 0xfbba8e9d987dcf6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
mul x17, x12, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x22, 0xe3e557be260c2c11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
mul x22, x9, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x6, 0xb9d23b28ca12c3dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
mul x6, x21, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x25, 0x7651878e4c377f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
mul x25, x17, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x14, 0x6647ed8d78e6bcc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
mul x14, x25, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x13, 0x2da7d76a4715c43e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
mul x13, x18, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x7, 0xfe48b9842b9c5b21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
mul x7, x6, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x19, 0x767338880a8d94f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
mul x19, x12, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x12, 0xf737551736310eac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
mul x12, x15, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x31, 0xd47a69b02b1f4883 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
mul x31, x30, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x11, 0xe6a1468e01ebbda9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
mul x11, x30, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x19, 0xaac482b9e49f4d62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
mul x19, x22, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x7100d42bbed39431 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x22, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x29, 0x946adf4192dc0167 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
mul x29, x24, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x31, 0x850b556ece278d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
mul x31, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x26, 0x47297d9d0b72b639 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
mul x26, x6, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x23, 0x220e459520fad75f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
mul x23, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x12, 0x0fd2b18fe182066b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
mul x12, x7, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x3, 0x026903a525d95316 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
mul x3, x4, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x24, 0x672ed92da16d8778 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
mul x24, x6, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x8, 0xc03305e69e712505 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5555555555555555 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
mul x8, x9, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x18, 0xa40b35b3a1b9e0f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
mul x18, x30, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x17, 0x6d48466b8560a849 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
mul x17, x4, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x31, 0xd990ba7b691debee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
mul x31, x23, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x5, 0xb5b47af149b13357 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5555555555555555 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
mul x5, x2, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x10, 0x18e76f78cd26bf71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
mul x10, x20, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x24, 0xbd969acb45e80a64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
mul x24, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x4, 0x2a4e22318f058c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
mul x4, x10, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x9dc11979e9bb87a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x6, x18, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x14, 0x37ac9a7944ecbf85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
mul x14, x25, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x4, 0x908b79a2c6cd25f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
mul x4, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x25, 0x71ce50a21e86756c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
mul x25, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x30, 0xc2a439a692018a74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
mul x30, x1, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x25, 0x36452a0624884cad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
mul x25, x8, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x18, 0xd49ac68830f10a67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
mul x18, x24, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x18, 0x028a6518f6ca9f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
mul x18, x11, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x7, 0x9b04e8a27a72590d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
mul x7, x15, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x2, 0xf49399586e2d886a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
mul x2, x15, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x10, 0x334fd022b1bc8074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
mul x10, x14, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x4, 0x4da630b82e3f10a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
mul x4, x1, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x18, 0x6ce9634e8e2d7feb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
mul x18, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x17, 0x1e56f9e3acbbac89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mul x17, x20, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x20, 0xabb526f1db3d5cac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
mul x20, x12, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x30, 0x13bf53ba3b0c3707 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
mul x30, x5, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x9c77252935440fee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x22, x26, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x8, 0x90c0b5353400b25c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
mul x8, x27, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x22, 0x13d58006b2b6aa8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
mul x22, x24, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x15, 0x5db459fa7d24fc7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
mul x15, x4, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x20, 0xe33bd5b7d1a0e675 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mul x20, x8, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x15, 0x829a4b6fe7cef6a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
mul x15, x31, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x7, 0x4b594707e895e74a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
mul x7, x1, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x21, 0xe81e273de7c3f309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
mul x21, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x17, 0x9de88a660af73d15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
mul x17, x7, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x4, 0xb1db2e92bb9dbcf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
mul x4, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x21, 0x7c4db4ca36587dd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
mul x21, x13, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x11, 0xca79edc0a0cee976 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
mul x11, x28, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x5, 0x4c0f6e6b6bce21b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
mul x5, x28, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x5, 0x1d6c6ed8ffc4e04a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
mul x5, x24, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x21, 0x4fd9eb3435ddf54b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
mul x21, x23, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x22, 0xc6f74aae4c658960 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
mul x22, x26, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0xe74af5ff866052cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x1, x24, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x3, 0x43ef3bcf5278a436 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
mul x3, x16, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x27, 0x977afda4306ef355 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
mul x27, x15, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x29, 0xb38e036d4d33def9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
mul x29, x20, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x11, 0x7539a25bf081d97c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
mul x11, x31, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x27, 0x764b8592d2e94eee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
mul x27, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x1, 0x561fc7b1622c9335 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
mul x1, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x31, 0xbecd32f8f71aa1d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
mul x31, x30, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x6, 0x17780ecbcb3c9f9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000000 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
mul x6, x23, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x26, 0x9b5e20be125bca22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
mul x26, x7, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x25, 0x2db385d2c357f894 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
mul x25, x24, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x31, 0xb46186129f7518d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000000 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
mul x31, x19, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x28, 0x6d066a2b247aaca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
mul x28, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x4, 0x62baf20302545148 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
mul x4, x24, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x27, 0x3557a581f97dc59b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000000 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
mul x27, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x23, 0x8f5f85f3230aac94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
mul x23, x12, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0xc017c4138c8dbb31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x31, x6, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x8, 0x24ada850b520b70f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
mul x8, x13, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x30, 0xf89095fa0816bfc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
mul x30, x14, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x2, 0x0768b854d9844a8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
mul x2, x11, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x19, 0xcd3d66eee3e11410 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
mul x19, x28, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x29, 0xaf65bc0f6b8f4b76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
mul x29, x30, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x12, 0xd5c75c39e0b9646e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
mul x12, x14, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x2, 0x571d82a81c115ecf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
mul x2, x4, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x10, 0x9c68b878a7a96dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
mul x10, x11, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x1, 0x2a67309c332128e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
mul x1, x30, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x26, 0x988dd69f4c6b94d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
mul x26, x27, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x6, 0xca7b94c4fd4d4ab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
mul x6, x27, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x22, 0xd4401ad60a47995e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
mul x22, x16, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x31, 0x7df55853d0dfe9c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
mul x31, x7, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x4, 0x701485f2eb1cfc1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
mul x4, x26, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x14, 0x4dc158b59373d945 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
mul x14, x17, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x14ef21f252fc89cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x23, x15, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x16, 0x2225b71775208a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
mul x16, x6, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x15, 0xa208a0e122113401 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
mul x15, x22, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x29, 0xe42e1fcca94f5447 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mul x29, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x6, 0xe67bd6d6518fc9ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
mul x6, x26, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x30, 0xd28dac3db1cd5021 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
mul x30, x19, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf72e424196e6a8bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1c445d154ec56362 # initialize rs1
li x3, 0x1dfef939ea2cf1bc # initialize rs2
mul x0, x0, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xe70e0b917db120a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf288a69be2eb3fb0 # initialize rs1
li x19, 0xdc79855ce77f5163 # initialize rs2
mul x1, x1, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x30b19e33dfb81a39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xdcdaec440491bab5 # initialize rs1
li x20, 0x008ab4dc6c4b0f10 # initialize rs2
mul x2, x2, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xb3fc1c022d55f555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x40989822e1c45137 # initialize rs1
li x11, 0x5a267c92784031d4 # initialize rs2
mul x3, x3, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x32da1891a711400c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x43fe75cedb931893 # initialize rs1
li x9, 0xf3c82e84d669c13f # initialize rs2
mul x4, x4, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x8f4f7c242853e8f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2764a77b29581d16 # initialize rs1
li x18, 0x850e8b49e36e667e # initialize rs2
mul x5, x5, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xf639395c7d1ed398 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x277b7076e5302244 # initialize rs1
li x9, 0xc5d1b6e8aec5d607 # initialize rs2
mul x6, x6, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x87f4cbb4c2b65e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x952570f176abdc8c # initialize rs1
li x28, 0x0eb447b38a5339e6 # initialize rs2
mul x7, x7, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xe7d2e32da2ea2433 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x26a0c96c8b179cab # initialize rs1
li x10, 0x6bbc0a2fa51e80a3 # initialize rs2
mul x8, x8, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xe40144cbd030fd90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7eb2a73bb7678f47 # initialize rs1
li x20, 0x4fad8414fb4f03aa # initialize rs2
mul x9, x9, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x8a23fb7cb6c4e37e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5f4ec83ef8822549 # initialize rs1
li x16, 0xfd6cc11caba80507 # initialize rs2
mul x10, x10, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x948e00e08d5ba3e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xbcb5b1e1fcae588e # initialize rs1
li x15, 0xf3b011897561f35b # initialize rs2
mul x11, x11, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3b8dfe49bd998999 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2b8d3ebd70994217 # initialize rs1
li x22, 0xf90b2a81ee13e0e9 # initialize rs2
mul x12, x12, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe0596960fe3d8c29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4ccccb107d9800a4 # initialize rs1
li x5, 0x3623c716b91d6ee9 # initialize rs2
mul x13, x13, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xe31fe526e5f6b7db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc1694a1cc98400e4 # initialize rs1
li x1, 0x9a1c21751180eba9 # initialize rs2
mul x14, x14, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x00a0db4b5b97e05f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8f10743a84ad7dd8 # initialize rs1
li x13, 0x4012f2ed4f7fd249 # initialize rs2
mul x15, x15, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xb3ac02497fa6cd4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xcc3067007ddce2d3 # initialize rs1
li x27, 0x14e25b03a9781fda # initialize rs2
mul x16, x16, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xb777cafce93c01ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbc82a8d99d2f399a # initialize rs1
li x25, 0xe917f3170ef56967 # initialize rs2
mul x17, x17, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xc582324fefd1f596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3cb1a72f179213e2 # initialize rs1
li x6, 0x93724302a604c613 # initialize rs2
mul x18, x18, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xebaa6ae07df8d3d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2456b4ba79f7d6ee # initialize rs1
li x13, 0xbbd3f81952a35ea9 # initialize rs2
mul x19, x19, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x647f9d1776993902 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0fbab55635d1fc35 # initialize rs1
li x1, 0xd9c8a596f114bcdd # initialize rs2
mul x20, x20, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xec68934f2f4ad067 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc4b183a120255456 # initialize rs1
li x29, 0x9b5d770a93c02e6d # initialize rs2
mul x21, x21, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3c0bfa127d4baf35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x81e3eb8f1dec86d5 # initialize rs1
li x27, 0x194ef28ff8389509 # initialize rs2
mul x22, x22, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xfd9100fced78af56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x08d320872913b906 # initialize rs1
li x27, 0x6b80253838b28e0d # initialize rs2
mul x23, x23, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe572f0398b66c2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x134f4b9587e93409 # initialize rs1
li x7, 0x159a3c8fd87d4f2c # initialize rs2
mul x24, x24, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x999436f4a06919ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x08b8cf7cdaa1def2 # initialize rs1
li x25, 0x2458cae82c65670d # initialize rs2
mul x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x49ddcb87ada1b680 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb1625330cc6d3f49 # initialize rs1
li x31, 0x0b40bc1cceeeffb5 # initialize rs2
mul x26, x26, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x9f0cbb2f1540979b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6eb6773ae9211955 # initialize rs1
li x22, 0xce892c2070a47bbd # initialize rs2
mul x27, x27, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x67d1ff2e4b1fa59f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x01a556e928492ddc # initialize rs1
li x1, 0x1ec10c12a6aa54a7 # initialize rs2
mul x28, x28, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x5a81084cce793fd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x821e6851c567fb75 # initialize rs1
li x11, 0xe74986f1803fd987 # initialize rs2
mul x29, x29, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x88ef35f4c37e4648 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9e8f23f7e46094a1 # initialize rs1
li x16, 0x3e401c7765f8babe # initialize rs2
mul x30, x30, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xfac9b9fa9a6969d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8d2e0fedaa199214 # initialize rs1
li x21, 0x0fb11438e4274f96 # initialize rs2
mul x31, x31, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x6240874ceb788b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x4dffeecaa4e60b15 # initialize rs1
li x0, 0xb77cd11608a3bdbc # initialize rs2
mul x0, x2, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x143f53dccc834256 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe04ac74821a93878 # initialize rs1
li x1, 0xb9205adea8a18580 # initialize rs2
mul x1, x29, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xdee061061e9ecb67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x20b72985df5ae104 # initialize rs1
li x2, 0x1f1cf4739034ffb9 # initialize rs2
mul x2, x9, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x9cabdd4e84971012 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd244d868e96c0010 # initialize rs1
li x3, 0xa691fbee08c38cea # initialize rs2
mul x3, x30, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x9941cf6e3362d66a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xec789df573a12949 # initialize rs1
li x4, 0xa31f50fc46da4d95 # initialize rs2
mul x4, x21, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xc0838423663c8e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4fa3e4b1502d2e12 # initialize rs1
li x5, 0x70398dda719d8935 # initialize rs2
mul x5, x27, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xe61d55d557afa063 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x04ddb85b202e6234 # initialize rs1
li x6, 0xc08e24949c34d5bc # initialize rs2
mul x6, x12, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xf0e54c40d9789cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xde6b5a40d4fbdf74 # initialize rs1
li x7, 0x30a579b2691e42be # initialize rs2
mul x7, x28, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x9e487043b6982b00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaf4dfa39aae6a478 # initialize rs1
li x8, 0xc319df1b92397c82 # initialize rs2
mul x8, x10, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x7cbad08622073680 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8de3885167e75d0e # initialize rs1
li x9, 0xbf0ae6a6212283ff # initialize rs2
mul x9, x30, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xef4acd5eff50d30e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5ce5fa011a023470 # initialize rs1
li x10, 0x54fd06a0cbf8dbe8 # initialize rs2
mul x10, x19, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x0dca7a1d00c1c275 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3cc6ac11dbc25ca8 # initialize rs1
li x11, 0xa987c6e5e245f9a4 # initialize rs2
mul x11, x30, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xc8742f8733f75265 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5d72430c765e608a # initialize rs1
li x12, 0x47da865cf03bc88e # initialize rs2
mul x12, x1, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x606c681493539b13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc5dc6bc5146bddaf # initialize rs1
li x13, 0xb4acdd6fd3422345 # initialize rs2
mul x13, x26, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x18781d17f09ec8d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8175ffb242423a65 # initialize rs1
li x14, 0x5c5619bc3dc340e8 # initialize rs2
mul x14, x24, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xb55971ffab0ce568 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9c9bdb016a1cf5dd # initialize rs1
li x15, 0x61e178833b093e88 # initialize rs2
mul x15, x8, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x5bc859061880b568 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9faac855abfccb13 # initialize rs1
li x16, 0x20942f43aaaccedc # initialize rs2
mul x16, x16, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x49588294828c5865 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd0598fb2923ba00f # initialize rs1
li x17, 0xdfbd30e1e33ab39e # initialize rs2
mul x17, x21, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xda872e4fab6138b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x467ddd3b71078494 # initialize rs1
li x18, 0x6a0856eb763d7002 # initialize rs2
mul x18, x5, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x2080c10bfad9ce0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2f1796464e1275f5 # initialize rs1
li x19, 0x4b999e3626287403 # initialize rs2
mul x19, x13, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xc52209c840bbe011 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd704d761c1d7b68b # initialize rs1
li x20, 0xaa173aafc13f621e # initialize rs2
mul x20, x6, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x9a978a14e818713a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3d41c446a0b70782 # initialize rs1
li x21, 0xf114e716e0a3e7b6 # initialize rs2
mul x21, x7, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x2331bd4beb66b148 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x703e58a8ccb58978 # initialize rs1
li x22, 0xe30f1ebb66b564d7 # initialize rs2
mul x22, x27, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x7a8fdb72b6bdc83d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xd924e135815bf4e0 # initialize rs1
li x23, 0x2780fe875d10d222 # initialize rs2
mul x23, x19, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x6a2487b8c446f3f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe34d01fc2a2c58ec # initialize rs1
li x24, 0xa7cbf1b1810f9a83 # initialize rs2
mul x24, x19, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xfc4803279a0bc15f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x45ad4c79a8d861db # initialize rs1
li x25, 0x4d5e40ed53e653be # initialize rs2
mul x25, x28, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xcf2209d03cbc2a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x42b3ef8a02c9d63d # initialize rs1
li x26, 0xb29156d3f9095239 # initialize rs2
mul x26, x6, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x3567e23e2f389dd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8fa060ecbe7534bf # initialize rs1
li x27, 0x1666de8ac3563ce6 # initialize rs2
mul x27, x16, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x9c6429d33836e7de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9fbab87c70bd53a4 # initialize rs1
li x28, 0x07e0b0c84c23f153 # initialize rs2
mul x28, x31, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xe4fbff6ea6ef61b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1fc29a0af48c5c5f # initialize rs1
li x29, 0xd866beef339e3102 # initialize rs2
mul x29, x21, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x456f35b38ef808e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x677577cc3821d6f7 # initialize rs1
li x30, 0xa9f9dd5c9f063bb5 # initialize rs2
mul x30, x16, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x06b56991e39be7e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb50ca90e5fea97e7 # initialize rs1
li x31, 0xf744ead238fb11f1 # initialize rs2
mul x31, x12, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xa1b82f3781a07ef2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x360cf959bfd434db # initialize rs1
li x0, 0xf04259d7ab560d3b # initialize rs2
mul x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xda77be53d2f6c451 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x51937b45a09e30c7 # initialize rs1
li x1, 0x230b7be4dfaf67a3 # initialize rs2
mul x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xd0aa59418a3f325f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x35492e7b10131a6c # initialize rs1
li x2, 0xc014e0a6af428352 # initialize rs2
mul x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xf16f0f4e1b6fa59d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x565aa6b9b73645b4 # initialize rs1
li x3, 0x595a11ea557bd552 # initialize rs2
mul x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x9096c5290d523b28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa6893cd99b834bb9 # initialize rs1
li x4, 0xc6a9bfc3aa11e850 # initialize rs2
mul x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x4ddfa67e9f5cb3c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x77c7b72d68ed2e2f # initialize rs1
li x5, 0xca4ce2b1b59471cf # initialize rs2
mul x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x8743d64815f364ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3ae89cef63d2ec21 # initialize rs1
li x6, 0x061b620a0b84a444 # initialize rs2
mul x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0xb649401d7f4fab43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x33e57661fedee02b # initialize rs1
li x7, 0x7394c2225ee16753 # initialize rs2
mul x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x3eab77ea8667d3e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2397616ec798b297 # initialize rs1
li x8, 0xbf7f5eee221ab4b8 # initialize rs2
mul x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x66f063b4d7a82067 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe5d81e193829ec19 # initialize rs1
li x9, 0x14b2d026d3e2dbdd # initialize rs2
mul x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x3f08213c9849cb7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9e955de459c19b43 # initialize rs1
li x10, 0x8150d8e03012c5c6 # initialize rs2
mul x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xbcb72dfa34c6761c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7699cb665e7d9640 # initialize rs1
li x11, 0x2cf870278094c504 # initialize rs2
mul x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x6faff8090d8d0be6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xce0fc30fc7bbd88d # initialize rs1
li x12, 0xf2c0335bc452b5f7 # initialize rs2
mul x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xe73085bebf601640 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x574f826a721d25a9 # initialize rs1
li x13, 0xe45d04b147ec99d5 # initialize rs2
mul x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x960da3520376e8f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x03bea8b41e5f2a86 # initialize rs1
li x14, 0x539e6d6a5148b437 # initialize rs2
mul x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x4d018930fba299fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3d69f637f9230b05 # initialize rs1
li x15, 0x8485499fe94c07e5 # initialize rs2
mul x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xf91cbdb14c5a56d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfea59ac59215d47b # initialize rs1
li x16, 0x4d581b40c2d3b1e8 # initialize rs2
mul x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xf2d89f08322b045b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xca12ec10b267134e # initialize rs1
li x17, 0xba45c8a7ffff9c70 # initialize rs2
mul x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xb3d2e7dbf6072230 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xde6cbf64ead7273c # initialize rs1
li x18, 0x2e14a213ee6d3433 # initialize rs2
mul x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x89180be44ef57add # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf3108ae63c9c3a24 # initialize rs1
li x19, 0xe317dd26b89d38b4 # initialize rs2
mul x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xb3cde9ec0d59b866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x02ca17ec403fb2e3 # initialize rs1
li x20, 0x9651bd1d14469209 # initialize rs2
mul x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x95503d591f2cbba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x35d80dff4591f401 # initialize rs1
li x21, 0xfd11256ffea43d88 # initialize rs2
mul x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x8a3a5767776a9818 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x91dabd1d4dc48032 # initialize rs1
li x22, 0x00ed27ed95c958fd # initialize rs2
mul x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xe65ca68ad7bb9e19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xec79a7beb0478fdc # initialize rs1
li x23, 0x15a3f40c1f23e98d # initialize rs2
mul x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x459291109bc523c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8641db59affc97a0 # initialize rs1
li x24, 0xf933454e68a36457 # initialize rs2
mul x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x6a7a37c9d23b21f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x45447aa17a125cc3 # initialize rs1
li x25, 0xbe4b2104d9873883 # initialize rs2
mul x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xba16e9445f28b386 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x894b59f85d27fbbb # initialize rs1
li x26, 0xea1c3294eff69309 # initialize rs2
mul x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xa86c4b341a9dfcaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x70b691946ccb7da3 # initialize rs1
li x27, 0xb249ff0f1b4e655c # initialize rs2
mul x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x2307089437a23c55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9a6a9ce88206fe9b # initialize rs1
li x28, 0x1652bd40c049e55a # initialize rs2
mul x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x500f33463db7e637 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5c25ad16ca5419a4 # initialize rs1
li x29, 0xd2c38a62ce10a402 # initialize rs2
mul x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xaff39c676ed5fe83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0ce8d393d9302e2a # initialize rs1
li x30, 0x46cfdba97d5f0b57 # initialize rs2
mul x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x32e190691c69884e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xdd0eb89a00cebdd4 # initialize rs1
li x31, 0x9108ae9228f55d9c # initialize rs2
mul x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x22, 0xda97f36af46b4b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2413fda5867bfb69 # initialize rs1
li x0, 0x4111bf3cf9a2568b # initialize rs2
mul x22, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x14, 0x3cacc4f80ce7ba95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7919d1822fd5167e # initialize rs1
li x1, 0xa67004ebb3f10090 # initialize rs2
mul x14, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x21, 0xaa935769c2773c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xefe0cc13e97bd4d9 # initialize rs1
li x2, 0x26b1432b51726541 # initialize rs2
mul x21, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x16, 0x14380267141efa8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd97950d4e787aa03 # initialize rs1
li x3, 0x6882f70248be9bda # initialize rs2
mul x16, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x7, 0xa9af8358bd521878 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdc2d90b040587fea # initialize rs1
li x4, 0xf2da90b0cd0207e2 # initialize rs2
mul x7, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x20, 0x95fea33066db2e51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x443a09d7d99e0cf5 # initialize rs1
li x5, 0x2d45db90bf2a0cf8 # initialize rs2
mul x20, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x13, 0x96f7103cf08beb0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x53cb27feb8ac0bc2 # initialize rs1
li x6, 0xf8ebb1419e3245c8 # initialize rs2
mul x13, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x26, 0x80e703e8d06fe690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfb44ec01a0ce9012 # initialize rs1
li x7, 0x66b536d73258d6f5 # initialize rs2
mul x26, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x23, 0xf3dcdbdf07a17c48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xde09d2a95f4d35aa # initialize rs1
li x8, 0xf1378f4721e96315 # initialize rs2
mul x23, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x27, 0xaed93134c627f1a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf629948e70011f73 # initialize rs1
li x9, 0xa6643716de3cefaa # initialize rs2
mul x27, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xff50a446909e35c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0d7dbcdd6e74115d # initialize rs1
li x10, 0x0b6fcaea9912afae # initialize rs2
mul x10, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x7, 0x391a90ba83b3d6d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb4b82c4bb922904c # initialize rs1
li x11, 0x49964a63af8c1705 # initialize rs2
mul x7, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x22, 0xbd339e53be4cd918 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x64c0283d41a71060 # initialize rs1
li x12, 0xdb31069d0e3e1a9c # initialize rs2
mul x22, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x22, 0x2703f9dc6f62af90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8ce411a38c5fb1f3 # initialize rs1
li x13, 0xd0c40c42609f5a42 # initialize rs2
mul x22, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x30, 0xae2fbff322244230 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xee77533e4e14cd62 # initialize rs1
li x14, 0xa03d32f1ea556a4b # initialize rs2
mul x30, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x14, 0xf14a34a44fcac3d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x96050e268273dcdb # initialize rs1
li x15, 0xab84bd758896c2f4 # initialize rs2
mul x14, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x27, 0x51921c56a183aa2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x18bee36f186b40d4 # initialize rs1
li x16, 0xb937a36565cdde2f # initialize rs2
mul x27, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x12, 0x2038617c106eccae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe4245acf6deb2c3e # initialize rs1
li x17, 0x3df2b03cca657b45 # initialize rs2
mul x12, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x21, 0x0a515ddc08dbd14b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0d6bb9080b2458da # initialize rs1
li x18, 0xf718aca08d7776f1 # initialize rs2
mul x21, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x24, 0x3beeb43b9d93c8b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7972a10436916e69 # initialize rs1
li x19, 0x818fba5771fa44c6 # initialize rs2
mul x24, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x11, 0x5550f2189812bdd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9c82bd558a621675 # initialize rs1
li x20, 0x780981354b4d97c3 # initialize rs2
mul x11, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x6, 0x44dfa56713341579 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8ed200070ba44be0 # initialize rs1
li x21, 0xd9d4ae7f1aa9fb02 # initialize rs2
mul x6, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x6, 0x9c75b7c650f05f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x23bf1edb2d856b5f # initialize rs1
li x22, 0x8819c3e25e05ae83 # initialize rs2
mul x6, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x4, 0xa9ba9caa80397f1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe6c08dfc666bf70e # initialize rs1
li x23, 0x8b9290b665d73b9b # initialize rs2
mul x4, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x30, 0x671ad4ebb6828c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x227e85876e106a1e # initialize rs1
li x24, 0x1b59175e7778f336 # initialize rs2
mul x30, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x23, 0xf111891a94106017 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4fedb846d9600e4d # initialize rs1
li x25, 0x170a47af4245c492 # initialize rs2
mul x23, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x24, 0x058e97c934bffdcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x995a68001a10e663 # initialize rs1
li x26, 0x0319e8830f11b1f1 # initialize rs2
mul x24, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x25, 0x49ec76443533f25f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2300031c372878cb # initialize rs1
li x27, 0x39553fff194f77fb # initialize rs2
mul x25, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x22, 0xe4cf773398376824 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xdd4584c3b688f93c # initialize rs1
li x28, 0x4d937fca30bf54b6 # initialize rs2
mul x22, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x23, 0xf4cf2c6edba47326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3fbe24bc77914239 # initialize rs1
li x29, 0x50d1e51c41022016 # initialize rs2
mul x23, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x22, 0x9d567e0cb365ac58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb2ee6535bc37e604 # initialize rs1
li x30, 0x5fee694ad7768886 # initialize rs2
mul x22, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xd75206341f596801 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd3610266a269a597 # initialize rs1
li x31, 0xe3e45033a62f3b04 # initialize rs2
mul x31, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x84a39c17978b95f)
li x31, 0xdb4b1c78131d86a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x084a39c17978b95f # initialize rs1
li x20, 0xeb41deb20e334bdf # initialize rs2
mul x31, x26, x20 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x1bb231f7f687049c)
li x30, 0x0f613f7a2239e118 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe44dce080978fb64 # initialize rs1
li x29, 0x4f3da04a363ed88f # initialize rs2
mul x30, x15, x29 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x596dc473f17c1929)
li x3, 0xd1c05951eca95877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9cbca6c4645e02ae # initialize rs1
li x1, 0x596dc473f17c1929 # initialize rs2
mul x3, x22, x1 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x3b2fbc030ab384df)
li x23, 0x54084b5171ee8ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x22d888baf978f5f8 # initialize rs1
li x9, 0xc4d043fcf54c7b21 # initialize rs2
mul x23, x21, x9 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
