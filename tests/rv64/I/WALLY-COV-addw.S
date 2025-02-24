///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-addw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.455179
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x52b71ce54ca0b3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe4329a03b5e7c183 # initialize rs1
li x26, 0x847ddc101ee48ac0 # initialize rs2
addw x0, x31, x26 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x637ee4a79016707a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x329c6d1d2c05babe # initialize rs1
li x27, 0x1ada89c219fe6213 # initialize rs2
addw x1, x4, x27 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x2899c030d6f263de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4b34d6f1000d917a # initialize rs1
li x18, 0x4c0f7a036f435696 # initialize rs2
addw x2, x9, x18 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xd8b9ff3924f9aaa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1c3be899c82952a8 # initialize rs1
li x21, 0xc9398f508e5b487c # initialize rs2
addw x3, x27, x21 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x58bcc8b7275c6e72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xef54c20eaf9de9d6 # initialize rs1
li x16, 0x6a6ddc9bebcba7b4 # initialize rs2
addw x4, x12, x16 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xf74d58c2620a6220 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1c3951d233d13042 # initialize rs1
li x30, 0x288e278eb75fc376 # initialize rs2
addw x5, x13, x30 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x35937afcfe4c56ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9ca86654545f5177 # initialize rs1
li x25, 0x933a06e79c66dead # initialize rs2
addw x6, x30, x25 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xc7f2966722eeb4f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3f9402215b4aacec # initialize rs1
li x14, 0x9e74022e4ad4c521 # initialize rs2
addw x7, x21, x14 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xcd3eb2256a5a861d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x2d0c1400fd80607f # initialize rs1
li x1, 0x3d6af8f5ee402e36 # initialize rs2
addw x8, x17, x1 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x2018703c5397944e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xdc16bff8e90717ff # initialize rs1
li x22, 0xcbcacd67b45e3582 # initialize rs2
addw x9, x27, x22 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x5b62184f04f5817d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc5dfa4d6313ceca8 # initialize rs1
li x2, 0xe29ccb3d44856000 # initialize rs2
addw x10, x1, x2 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x81da85e6da51322a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbe2276ddd3c27887 # initialize rs1
li x24, 0x8990a4371681e1be # initialize rs2
addw x11, x22, x24 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xf4be5e1530f32043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe90a0247242f1c62 # initialize rs1
li x14, 0x1042f26c82ffcea1 # initialize rs2
addw x12, x5, x14 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa2eafe254dc3b22c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0cbbf1155be6af9b # initialize rs1
li x15, 0x464dccffe4ac648e # initialize rs2
addw x13, x11, x15 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xfac20f3a759cc8dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xcf4d5cb6a213a3ec # initialize rs1
li x29, 0x934650221d21583b # initialize rs2
addw x14, x25, x29 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x280e669ff1ef367b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x624d2b117d18575b # initialize rs1
li x10, 0xef9fa24f492cd0fc # initialize rs2
addw x15, x6, x10 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd7339a89546e864b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdaa1963e07f604c0 # initialize rs1
li x18, 0xa34af246fee05a64 # initialize rs2
addw x16, x15, x18 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xfd9b11f1d04201ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3417c8f8dfd44349 # initialize rs1
li x8, 0x685f80e1b796d339 # initialize rs2
addw x17, x28, x8 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xdc541a8027fa2b20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x243e1e6d5419c5d5 # initialize rs1
li x18, 0xae6e7d7e18869db5 # initialize rs2
addw x18, x1, x18 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xe7747c5854e63a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x99ee6749fe3472b1 # initialize rs1
li x16, 0x0999858db3618ed2 # initialize rs2
addw x19, x17, x16 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xefff1679d34ff6f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0aed0a24b1c63085 # initialize rs1
li x7, 0x0cd1abc711e6c474 # initialize rs2
addw x20, x11, x7 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x69fe7331fb37538f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4da3fee1692689f8 # initialize rs1
li x6, 0xa866991274f67426 # initialize rs2
addw x21, x15, x6 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x0db990e338c5328c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xcac6e0496b65d6d4 # initialize rs1
li x29, 0x18af6435146b84e1 # initialize rs2
addw x22, x22, x29 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x1e1953a2d9f29e0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4d14848d33f005a5 # initialize rs1
li x3, 0x668e098ca732e97b # initialize rs2
addw x23, x22, x3 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x2694d06294b6a86a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf3755098ddca2a8a # initialize rs1
li x6, 0x6a72849b65a1bab4 # initialize rs2
addw x24, x15, x6 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x9beef5780a0e1d12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x799c6a19aebabf2f # initialize rs1
li x4, 0x128f805c5263177e # initialize rs2
addw x25, x27, x4 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x5eec89e1aa2195ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc92975e24ec93e30 # initialize rs1
li x19, 0x64272c93a7130d3a # initialize rs2
addw x26, x13, x19 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x3f1ed390e7db68d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7b3605f3777880e2 # initialize rs1
li x1, 0xa6f0d9d217add75b # initialize rs2
addw x27, x4, x1 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x2666e8f2a79c8b72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x419a7d3aba76d850 # initialize rs1
li x25, 0x8835b5ee4764ebd0 # initialize rs2
addw x28, x20, x25 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xd7fd32136fceba0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xba6db18a1b34615b # initialize rs1
li x30, 0x8cdef541fee188e8 # initialize rs2
addw x29, x17, x30 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xefa64d361298b7c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9d9d5b0df17232b0 # initialize rs1
li x24, 0x2a74ac5171bb256a # initialize rs2
addw x30, x14, x24 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x0d94418a2b990e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe00c8fee55e19278 # initialize rs1
li x28, 0xa874ca09e45fbe3e # initialize rs2
addw x31, x21, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x30, 0x9eb8ea1f5888b6c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcbc3e4341ba269f9 # initialize rs1
li x27, 0xad7324556561eaf7 # initialize rs2
addw x30, x0, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x28, 0xd163b792f0c0923b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0cb52de65ce8f34e # initialize rs1
li x18, 0x95f3fc9732eab168 # initialize rs2
addw x28, x1, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x5, 0x5d15d61f96f5f093 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x553ab038ee78829d # initialize rs1
li x23, 0x8df9fd3670dcf05d # initialize rs2
addw x5, x2, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x12, 0xd45645732fdc7fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x78c052bd9067c343 # initialize rs1
li x29, 0x168500e00c75d7c4 # initialize rs2
addw x12, x3, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x24, 0x8be8d9eb5d51983b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdd3f8e908faa4407 # initialize rs1
li x18, 0x0901f1043cdd80ce # initialize rs2
addw x24, x4, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x14, 0x158e22b66fc3bc5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa78f48be63d64166 # initialize rs1
li x22, 0x456df964f1c4243f # initialize rs2
addw x14, x5, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x26, 0x9156e67062248c32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xca567fae68903f60 # initialize rs1
li x12, 0xf3c40c78f05a846e # initialize rs2
addw x26, x6, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x17, 0x7034e5ccd8007402 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb41566319647e1f9 # initialize rs1
li x15, 0xb95ae3e3fbee4647 # initialize rs2
addw x17, x7, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0xc148fef3c90c9e15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1eed3190600fc1fa # initialize rs1
li x19, 0xc5c681d52c8c6f3e # initialize rs2
addw x13, x8, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x26, 0x969c162da447d5c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2c698585d4280f29 # initialize rs1
li x19, 0x69b6e9b0c4a5ee85 # initialize rs2
addw x26, x9, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x5, 0x42196a85869c2d33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x11906808736c03ff # initialize rs1
li x29, 0x1dac7045ddec482d # initialize rs2
addw x5, x10, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0x936bafb629fa180f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf48319403637a9fa # initialize rs1
li x3, 0xfd567956dfb340dd # initialize rs2
addw x10, x11, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x2, 0xfc4d162e1d4c85ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x11dad2324ce0288c # initialize rs1
li x9, 0xfd32278e1867c657 # initialize rs2
addw x2, x12, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x2, 0xa978836ad75c2ec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4d490f40c730f9b0 # initialize rs1
li x3, 0x375ce0cb35aea9f8 # initialize rs2
addw x2, x13, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x26, 0xb3284d68a2a8eb8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0587061e1750f7fd # initialize rs1
li x12, 0xf3e402bb5d14311f # initialize rs2
addw x26, x14, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x43785bdd484048c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6258d311f823e82e # initialize rs1
li x8, 0xa7ec9c77f7ba2c45 # initialize rs2
addw x14, x15, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x28, 0xa538e6deb33f2b24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4d9a8a655047efbc # initialize rs1
li x4, 0xfa23bf6703572512 # initialize rs2
addw x28, x16, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x3, 0xaa2bfb80abc277bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdcf58a60e70b02ac # initialize rs1
li x19, 0x99be38ae2d98f786 # initialize rs2
addw x3, x17, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x26, 0x6a802c878a606bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x78b82d868d8acdad # initialize rs1
li x13, 0x337f61a2acc808a9 # initialize rs2
addw x26, x18, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x26, 0xfcee2a5395a28a9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x06d155fe894f66b1 # initialize rs1
li x5, 0xd31aae0419fe860c # initialize rs2
addw x26, x19, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x12, 0x061eb237be6d2724 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb5b129b29fb74064 # initialize rs1
li x1, 0x2c7464ed05957304 # initialize rs2
addw x12, x20, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x7, 0x3794d61381377058 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6f03c80dbe5f9ea0 # initialize rs1
li x27, 0xf76abb6da668327a # initialize rs2
addw x7, x21, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x9, 0x9816bcf2c2df9785 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdde8f78f74154f8c # initialize rs1
li x30, 0xa7f4f3505920b08d # initialize rs2
addw x9, x22, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x11, 0x17b10148f3179c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x552a050e4423442f # initialize rs1
li x21, 0x72a5d82e87763ce9 # initialize rs2
addw x11, x23, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x9, 0x486d3f2f90b3bf29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x120e77000faae57b # initialize rs1
li x20, 0x044f8a5504c2a219 # initialize rs2
addw x9, x24, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x20, 0x21d0d6f30e983a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x88b7365810dc3738 # initialize rs1
li x13, 0x3de059563fc5c5df # initialize rs2
addw x20, x25, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x1, 0xc52856b113f5918d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8b73ae11aead8322 # initialize rs1
li x4, 0x839ffa7bb880b540 # initialize rs2
addw x1, x26, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x24, 0xc6422204bdebac3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x18e91bac5136af08 # initialize rs1
li x21, 0xbe387a6be60993d3 # initialize rs2
addw x24, x27, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x10, 0x4ad91f2a562a661c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6624fdcd8f8d5f2a # initialize rs1
li x20, 0x5fa6e87a666acd32 # initialize rs2
addw x10, x28, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x27, 0xb9e5b97cba00130f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x61cc74f80befd209 # initialize rs1
li x7, 0x6eef78c8c26c2d7a # initialize rs2
addw x27, x29, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x24, 0x82b32b6b285dec35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdb34fae26788cd6b # initialize rs1
li x17, 0x44e20cfb757ac8ee # initialize rs2
addw x24, x30, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x1, 0x62eb96958438d077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5f0f03e01c9dc880 # initialize rs1
li x4, 0xc968a4c6e8acfa37 # initialize rs2
addw x1, x31, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x29, 0xb879136af3c3247d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc35e00f0c280fc84 # initialize rs1
li x0, 0x90a441943b19a6ad # initialize rs2
addw x29, x31, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x9, 0xb7d8d4c76e73fcea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x646e23600977d59c # initialize rs1
li x1, 0x7aedd56b23a4cd25 # initialize rs2
addw x9, x7, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x25, 0x65e6d12d0fc887d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2a91011b40a67b1f # initialize rs1
li x2, 0xb1932ddda5bc0996 # initialize rs2
addw x25, x20, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x4, 0x7d503bdf3d96ba66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe5cc4338e7ffeaea # initialize rs1
li x3, 0x5c33226b9c163eb6 # initialize rs2
addw x4, x31, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x28, 0xbacf3556ed8491af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6fa66b014d015a18 # initialize rs1
li x4, 0x329e7d6431bf84d6 # initialize rs2
addw x28, x26, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x9, 0x38443bcc7fb7f92a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9e2b8ed5916fdb2e # initialize rs1
li x5, 0x9eda86106a281ad9 # initialize rs2
addw x9, x16, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x2, 0x77e61cb3200d385e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3f09237abc871870 # initialize rs1
li x6, 0x072d665fe8ee5848 # initialize rs2
addw x2, x18, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x22, 0xb4807bfd184dc91e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x24afc9af5949e8dc # initialize rs1
li x7, 0x6885d966a3e80f23 # initialize rs2
addw x22, x11, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x11, 0xb479806e5958fc46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xbf919213a167a81c # initialize rs1
li x8, 0x2390d9552b5f7883 # initialize rs2
addw x11, x28, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x8, 0x1a0809c00cc2e848 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x744f56de90abbdef # initialize rs1
li x9, 0x7d8fa561e7646076 # initialize rs2
addw x8, x19, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x7, 0x73f0b47563c7d032 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6f13f4c27651987e # initialize rs1
li x10, 0x16b419f8713879a7 # initialize rs2
addw x7, x12, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x6, 0x66c17fc83e87a74d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf92dd06365317785 # initialize rs1
li x11, 0x825a4e480fa616d9 # initialize rs2
addw x6, x13, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x21, 0xdc8de027232cb65d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x26e85ce0daec4171 # initialize rs1
li x12, 0x2f542080d06987fb # initialize rs2
addw x21, x30, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0xa0f964afa2283383 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6459f14d6ac24d55 # initialize rs1
li x13, 0x52273e90e77eff30 # initialize rs2
addw x29, x21, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0x01bec12f7cce2de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x913faa9de669e978 # initialize rs1
li x14, 0x6519d2bf360c0172 # initialize rs2
addw x24, x18, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0xc9aa4e66e1ecc8bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x844dc786eca79481 # initialize rs1
li x15, 0x7bff268b0d99eb92 # initialize rs2
addw x30, x6, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x26, 0x33b406290b3b62f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x14697afa129b7ffc # initialize rs1
li x16, 0x21b54c14c373a9bb # initialize rs2
addw x26, x25, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x2, 0x62cc83d2b11bfeea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4148bc331c0a74f4 # initialize rs1
li x17, 0xfce3425d6b9f1b26 # initialize rs2
addw x2, x25, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x20, 0x97f8957a81354e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x584a8e945a99ec32 # initialize rs1
li x18, 0x00d2299856a5f9b0 # initialize rs2
addw x20, x5, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x4, 0x428802b1a9fe9e4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdcee668d6d8bcbac # initialize rs1
li x19, 0x24285467f407d87b # initialize rs2
addw x4, x9, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0x4ae0cd2f5f1287f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdd5f2e1e6b1be469 # initialize rs1
li x20, 0x493adb44a073bcce # initialize rs2
addw x21, x7, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x17, 0x50daf235523113c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x350783c81ed78635 # initialize rs1
li x21, 0x6c97ab1f1608ec94 # initialize rs2
addw x17, x3, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x21, 0x7378df230ddd5a3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5db0636e1fc32adc # initialize rs1
li x22, 0x63d44c960f90ada6 # initialize rs2
addw x21, x2, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x2, 0x4cffccdaeb493f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x1992a18d07403a7a # initialize rs1
li x23, 0x2401ae7e75a21be8 # initialize rs2
addw x2, x29, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x6, 0x56de33f936689492 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd0363db75d7fbb89 # initialize rs1
li x24, 0x4b3751cff17769c4 # initialize rs2
addw x6, x28, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x10, 0x70b1771976f4b065 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1f10caf8aaaf3371 # initialize rs1
li x25, 0x5936bdd57aaa317a # initialize rs2
addw x10, x1, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x5, 0x56a39b1dd0076d04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb930f62c9f164e35 # initialize rs1
li x26, 0xcf1669676e856e2a # initialize rs2
addw x5, x3, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x13, 0xe472c928b68e38d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x811c93328d19ffb5 # initialize rs1
li x27, 0x88dc5904b9638c47 # initialize rs2
addw x13, x15, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x12, 0x25b7d550599e3e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xeb4b1c91a3dcc6d5 # initialize rs1
li x28, 0xb01fb2d4ea1833cf # initialize rs2
addw x12, x23, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x17, 0xb813b5c35d4ea13b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa46b1d3b50f6f47a # initialize rs1
li x29, 0xcbfb18b085f3e076 # initialize rs2
addw x17, x10, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x4, 0x1818fd201c0ac95c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0e238ca7b1b4fc28 # initialize rs1
li x30, 0xc7936816ffbcfeb7 # initialize rs2
addw x4, x20, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x7, 0xf49ffae8d22e461f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x50ccd9483bc7b310 # initialize rs1
li x31, 0x8e70574c6c35e12d # initialize rs2
addw x7, x15, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xa4307c032963fd86)
li x21, 0xbb834f662b1b26e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xbb834f662b1b26e6 # initialize rs1
li x0, 0x56962e7f94c6d72b # initialize rs2
addw x21, x31, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xd6929b0f32bb99a3)
li x8, 0xd6929b0f32bb99a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd6929b0f32bb99a3 # initialize rs1
li x24, 0xd6929b0f32bb99a3 # initialize rs2
addw x8, x0, x24 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x254af94ec8a2a32c)
li x11, 0x55efbe942f5a3e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x254af94ec8a2a32c # initialize rs1
li x6, 0x254af94ec8a2a32c # initialize rs2
addw x11, x26, x6 # perform operation

# Testcase cmp_gpr_hazard raw test
addw x8, x6, x7 # perform first operation
addw x17, x8, x2 # perform second operation

# Testcase cmp_gpr_hazard raw test
addw x14, x9, x22 # perform first operation
addw x19, x22, x14 # perform second operation

# Testcase cmp_gpr_hazard waw test
addw x1, x24, x13 # perform first operation
addw x1, x24, x13 # perform second operation

# Testcase cmp_gpr_hazard waw test
addw x17, x7, x23 # perform first operation
addw x17, x30, x31 # perform second operation

# Testcase cmp_gpr_hazard war test
addw x4, x27, x11 # perform first operation
addw x27, x16, x4 # perform second operation

# Testcase cmp_gpr_hazard war test
addw x9, x2, x27 # perform first operation
addw x27, x7, x10 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0x06514ea6e2bf4fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x0, 0x61985338cec8b44c # initialize rs2
addw x21, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x11, 0xdaed921bd260f64a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
addw x11, x26, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x5, 0xb0739e86ac927e42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
addw x5, x25, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x23, 0x7e23c3e4b1943e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x0, 0xf4554365436f5c76 # initialize rs2
addw x23, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0x1a466fd289e0b959 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
addw x14, x25, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x21, 0xd2e4e8060fd412bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
addw x21, x5, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x22, 0x85ef37c125b939a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x0, 0x3305ad02f4c916d0 # initialize rs2
addw x22, x7, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0x3a6912fd9b0aabd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
addw x3, x23, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0x41fb36cb82fc60cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
addw x18, x25, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x3, 0xd4c874d24b8aaafe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000080000000 # initialize rs1
li x0, 0xe7f791cad74d32fb # initialize rs2
addw x3, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x6, 0xbaeb3400088f33d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000080000000 # initialize rs1
li x30, 0x0000000080000000 # initialize rs2
addw x6, x14, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x3, 0xd7b39d98c877bfa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000080000000 # initialize rs2
addw x3, x23, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x13, 0xb5910d9a5f56125c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000080000001 # initialize rs1
li x0, 0x058dd217992882e2 # initialize rs2
addw x13, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x15, 0x27a8b59df5041173 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000080000001 # initialize rs1
li x3, 0x0000000080000001 # initialize rs2
addw x15, x17, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x23, 0x2e25e765140aee5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000080000001 # initialize rs2
addw x23, x22, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x19, 0x57394134f15551ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000007fffffff # initialize rs1
li x0, 0x9cd97ebfbd14d92b # initialize rs2
addw x19, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x17, 0x8835ccda977e49b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x000000007fffffff # initialize rs1
li x18, 0x000000007fffffff # initialize rs2
addw x17, x26, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x23, 0x65fd34b7f7310cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x18, 0x000000007fffffff # initialize rs2
addw x23, x21, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x28, 0x65b576e70d7ff8d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x000000007ffffffe # initialize rs1
li x0, 0x1ab10d8948eb7bfd # initialize rs2
addw x28, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x22, 0xbfcb5ec7ef680533 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x000000007ffffffe # initialize rs1
li x21, 0x000000007ffffffe # initialize rs2
addw x22, x25, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x31, 0x4a94bc458bdf4443 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x19, 0x000000007ffffffe # initialize rs2
addw x31, x16, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x5, 0x559b7ccf0c14fc40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x0, 0x15f06163a11afd2b # initialize rs2
addw x5, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0x3ba1e19c0ad916f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
addw x1, x13, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x18, 0x2062a19dc4e2fc15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
addw x18, x31, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x28, 0xf03cae609b9ca494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x0, 0xc6e1b72d34c9879a # initialize rs2
addw x28, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x8, 0x08b953f7e6070224 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
addw x8, x14, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x20, 0xfac289ab19fbc8f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
addw x20, x27, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x4, 0xe5a64266884a49a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000aaaaaaaa # initialize rs1
li x0, 0x5b9e1aaa86d2292b # initialize rs2
addw x4, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x8, 0xb3f9aead34fad247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000aaaaaaaa # initialize rs1
li x4, 0x00000000aaaaaaaa # initialize rs2
addw x8, x10, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x22, 0x622dd0a23abba1b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x26, 0x00000000aaaaaaaa # initialize rs2
addw x22, x2, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x9, 0xe8cf1a1cf5a63679 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000055555555 # initialize rs1
li x0, 0xde0cec5657f1d959 # initialize rs2
addw x9, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x5, 0xad09c9daadb44059 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000055555555 # initialize rs1
li x15, 0x0000000055555555 # initialize rs2
addw x5, x30, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x25, 0xdff9d77004f8c102 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000055555555 # initialize rs2
addw x25, x6, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x29, 0xf72ac2de45f25223 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000063ae86f7 # initialize rs1
li x0, 0x419ecf3345c233f3 # initialize rs2
addw x29, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x4, 0xb40224c9772caf40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000063ae86f7 # initialize rs1
li x6, 0x0000000063ae86f7 # initialize rs2
addw x4, x15, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x29, 0x26bcdc68f7ffa457 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000063ae86f7 # initialize rs2
addw x29, x2, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x24, 0xa9260a3bce8384f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000e3ae86f7 # initialize rs1
li x0, 0xa49d46b46dc043ec # initialize rs2
addw x24, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x10, 0x408aab8a65e6377e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000e3ae86f7 # initialize rs1
li x18, 0x00000000e3ae86f7 # initialize rs2
addw x10, x29, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x31, 0x06d85a62594d27dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x26, 0x00000000e3ae86f7 # initialize rs2
addw x31, x2, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0x8c7594bb340829bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x5, 0x375999e725a14419 # initialize rs2
addw x26, x19, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x4bb9102e2a322a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x20, 0x58713aaf3fa5ec6d # initialize rs2
addw x8, x30, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x2176051015e3512e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x10, 0x6282430b6d303329 # initialize rs2
addw x8, x27, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x17, 0x3c9392fce6ba1484 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000000 # initialize rs1
li x7, 0x2301236f5bcf4530 # initialize rs2
addw x17, x16, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x24, 0xed3e2e67a597a6f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000001 # initialize rs1
li x13, 0xb64f2dab10d35151 # initialize rs2
addw x24, x5, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x2, 0x114fdadaf705ec9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x30, 0x02698991a87e5da3 # initialize rs2
addw x2, x23, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x18, 0x9a6b7c7f75cdbdb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x19, 0xffbc95f422e4a187 # initialize rs2
addw x18, x7, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x28, 0x7202e88dbff26a7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x19, 0xffb3c18ff478ad14 # initialize rs2
addw x28, x8, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x24, 0x1ef64b435a474ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x22, 0xc7eee89842e1baee # initialize rs2
addw x24, x14, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x3, 0x8411d7738c1a61a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x56a96eac9c7b0140 # initialize rs2
addw x3, x19, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x27, 0x1dcfff03011efae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x898481828d759965 # initialize rs2
addw x27, x20, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x9a4174dc7450b47b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5555555555555555 # initialize rs1
li x19, 0xa17016399f974806 # initialize rs2
addw x10, x28, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0x4aa6c8c0b6197550 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x22, 0x487795e2ef5a8c35 # initialize rs2
addw x13, x24, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x27, 0xcdde0577f377cf1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x28, 0x29d7ff79d4392121 # initialize rs2
addw x27, x7, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x31, 0x25977918c942a5a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x23, 0x76c4dec4c130deb2 # initialize rs2
addw x31, x18, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x31, 0xbcaa55db8a190942 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x2, 0x070dc42d1ab7a9e4 # initialize rs2
addw x31, x22, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0x818e330b7d3e2699 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd5db7e12ea23f33a # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
addw x20, x18, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0xa750b130ae373dd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4011dea4d0f41c53 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
addw x14, x13, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0xf760cedf9b8fc847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc3e8039a733150ec # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
addw x25, x12, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x15, 0xa07ff9733310152d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2ad5ef547682b375 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
addw x15, x25, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x1, 0x4d540fc38b4fa7b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9485db3b782c4e19 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
addw x1, x24, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x18, 0xd5756741ac27d834 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x2348aab95c34a2f4 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
addw x18, x29, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x9, 0x74b0ce7ca9883eb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6a391d0bf1e9bb81 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
addw x9, x27, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x12, 0x2850fa418886984d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe9572719ef8b26b6 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
addw x12, x22, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x14, 0x2bbd3e03c2126f20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x99be885f9ea0f581 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
addw x14, x27, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x4, 0x599e435dacc9576a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7c7f953467fea6f1 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
addw x4, x28, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x13, 0x7817ff0a93449ec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdf4fd759bd93c437 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
addw x13, x18, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x24, 0x7fc93f0ea73cb881 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfd96131931d6d30a # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
addw x24, x1, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x27, 0x770d9c1a90e8d6c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb0e71a862f053216 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
addw x27, x30, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x28, 0xe94cd5c5d9463421 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5680fb07d3f5f0db # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
addw x28, x16, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x19, 0x42d08e305ac9ae6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x29b3e6f7dc836651 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
addw x19, x12, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x7, 0x63e149deee7d860b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7b402a442bb718c0 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
addw x7, x14, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x545b87b3988a8252 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x04274f1ef2755631 # initialize rs1
li x4, 0xa8094edcdfac55dd # initialize rs2
addw x0, x0, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x8ba58e2ade968b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe149a5c3cc47ea2d # initialize rs1
li x25, 0xa816467b9a85cc51 # initialize rs2
addw x1, x1, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xda977c110e97fc53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc33c3daed4c7b411 # initialize rs1
li x15, 0x7a1c4bace4333572 # initialize rs2
addw x2, x2, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6b4c3bdfb1e4f3cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7a0ad132993303aa # initialize rs1
li x1, 0xbba53608a6ba5742 # initialize rs2
addw x3, x3, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x3336b3aa6c5ab3bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf625e5ce3af52acf # initialize rs1
li x28, 0xb88040b92ba01e35 # initialize rs2
addw x4, x4, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xb6f48f91ac8fce78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x92946fd8e75c3072 # initialize rs1
li x13, 0x1d6db00a1351bbae # initialize rs2
addw x5, x5, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xf47c59ecce29d122 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd962de212b8d0541 # initialize rs1
li x8, 0x50421e45374054d9 # initialize rs2
addw x6, x6, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x2fa9d7249adc41aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc9c469bf00f2c3c4 # initialize rs1
li x15, 0x4c6786e94809a364 # initialize rs2
addw x7, x7, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x91b41e5064e1f1df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x38e52bd0fc1f5f94 # initialize rs1
li x21, 0x5de9de342b178994 # initialize rs2
addw x8, x8, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xbce611c5870a7a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x73c5df79b01e43f0 # initialize rs1
li x24, 0x5bff986251012d3a # initialize rs2
addw x9, x9, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x68e8cc47cad58de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3e21d3d01ee4132e # initialize rs1
li x7, 0x0b21e2790f226772 # initialize rs2
addw x10, x10, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x9c7842906f5b5ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4fe83bb953743f4c # initialize rs1
li x24, 0x1eccce10449e257f # initialize rs2
addw x11, x11, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x09c9324ff56ee228 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xbf1b38de4daf3e49 # initialize rs1
li x2, 0xa3a739816a7be976 # initialize rs2
addw x12, x12, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xee522e5e5a752dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9684322f3d2d65b5 # initialize rs1
li x27, 0x5a001ab5df30a06f # initialize rs2
addw x13, x13, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x7b2973f8b2d106cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x934da2881c73a154 # initialize rs1
li x2, 0x4b581047e71baff9 # initialize rs2
addw x14, x14, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8816f8a102398753 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xef1884f088ba6397 # initialize rs1
li x11, 0x360f292d7dc1e128 # initialize rs2
addw x15, x15, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x2dea36e1a6b6944f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8727087fbb4533be # initialize rs1
li x22, 0x3ff0f3199d08d70c # initialize rs2
addw x16, x16, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xa95cc294b7614995 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x54ba9f4abd45de63 # initialize rs1
li x18, 0x6f42f96792e2cd5f # initialize rs2
addw x17, x17, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xc9a57c2b84a663da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4946cb791317cb9f # initialize rs1
li x29, 0xa89c031714cad0f4 # initialize rs2
addw x18, x18, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xbb6d4be9c46b85a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x62755d0c9b382e2c # initialize rs1
li x26, 0x5e1b953935b1fb3e # initialize rs2
addw x19, x19, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x0c8dcd158612fb92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9a4d22675db2eede # initialize rs1
li x30, 0x3e5e88dd5f9bfe56 # initialize rs2
addw x20, x20, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf98d5e69d9a160e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xabdbefe01fe3d219 # initialize rs1
li x20, 0x66110a29fccf118c # initialize rs2
addw x21, x21, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xc52ce87f55e16f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5b8f6625b0325aa6 # initialize rs1
li x29, 0x63d015525bf89e9c # initialize rs2
addw x22, x22, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x318f49df2b5d4f11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x83cf450a7aa57803 # initialize rs1
li x19, 0x5d64389a564af748 # initialize rs2
addw x23, x23, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x17ce79b2f2472b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6ef083ce1429a610 # initialize rs1
li x25, 0x3f711b7a66e3913c # initialize rs2
addw x24, x24, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x2e54d150a56c18b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8406897edddc99bb # initialize rs1
li x14, 0x504a60e8fbc64066 # initialize rs2
addw x25, x25, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x98141102943b9dab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xa135c53c2d263413 # initialize rs1
li x31, 0x93e7ff2f24922989 # initialize rs2
addw x26, x26, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x8a6c57816f59d36a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x532c12b12678ed1a # initialize rs1
li x30, 0xaa8b48b6634b23b5 # initialize rs2
addw x27, x27, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x59dea85a9a621565 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa7f996975d7ddb81 # initialize rs1
li x11, 0xe52f8f38d5bd42b8 # initialize rs2
addw x28, x28, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x9a70ea774935ef6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd1a797cc671341f1 # initialize rs1
li x23, 0xb96b43d255e2dfc9 # initialize rs2
addw x29, x29, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4a0e795e408ea9d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0b528a719e43e900 # initialize rs1
li x4, 0x7ed6eb94df258add # initialize rs2
addw x30, x30, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x42b99e56157d6e77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5a2a062d85341db0 # initialize rs1
li x11, 0xa9d3b0f66b6da189 # initialize rs2
addw x31, x31, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xacf4cec6e1fe4b63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8861dea9d64d5dd3 # initialize rs1
li x0, 0x0a6514a18a458544 # initialize rs2
addw x0, x21, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x382c5b3147b47de2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xcf76b429b4b7d2fb # initialize rs1
li x1, 0x50ba3034e77b31ff # initialize rs2
addw x1, x9, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x2d01b425357bc944 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xccfcc8217f282ded # initialize rs1
li x2, 0xf95356422efc75fa # initialize rs2
addw x2, x6, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x888ccdef00d46a19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdb11d9c1e4e00de3 # initialize rs1
li x3, 0xa439e19b552713db # initialize rs2
addw x3, x17, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xac4ddb2d62771135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfa8b9c3b27963560 # initialize rs1
li x4, 0xf58651467dc417dd # initialize rs2
addw x4, x30, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xda8ced22a70d6675 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8aea2b653a388a84 # initialize rs1
li x5, 0x8273499a0cd2084d # initialize rs2
addw x5, x21, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xd63b107acbe0d5c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe9720e8b0185a52d # initialize rs1
li x6, 0xd7081f64eff806a4 # initialize rs2
addw x6, x4, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x32dc59360072630e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x1a79ad67dfbd8103 # initialize rs1
li x7, 0xe3ab49f21f9aaadf # initialize rs2
addw x7, x23, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x76dfbf8f8e5411db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x94f548aef6eb1bba # initialize rs1
li x8, 0xab635dbe599f0f39 # initialize rs2
addw x8, x31, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x0fc52c12f53cd9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8b65aae6a717e3bd # initialize rs1
li x9, 0xcd770cf18d572013 # initialize rs2
addw x9, x1, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xd08495c48d43bc11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa9b43942fd42c3a2 # initialize rs1
li x10, 0x4481b2af8134e7ed # initialize rs2
addw x10, x23, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x6bb184320c041ecb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xcff6627fb3a78be8 # initialize rs1
li x11, 0x643e395ad4b1b8a4 # initialize rs2
addw x11, x10, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xff344cacbf0d0df3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe3df9789495c4b64 # initialize rs1
li x12, 0xc694275708472630 # initialize rs2
addw x12, x6, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x6ddd926de1238690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x628ad6e7cd6167ae # initialize rs1
li x13, 0x7d022eee8736aa1b # initialize rs2
addw x13, x14, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x3898649332c4f581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7dfc0becb00b5eaa # initialize rs1
li x14, 0x7e256ac4ec904911 # initialize rs2
addw x14, x5, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x8a67b52da59b5bd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x10fed529369a45b3 # initialize rs1
li x15, 0x5f876af265a883c4 # initialize rs2
addw x15, x27, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x3a9d1c701b1ae095 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa182ec2d884962ff # initialize rs1
li x16, 0x85afc4b5c6be1d51 # initialize rs2
addw x16, x16, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xbc52091a9c1b30f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x40af9b8db1b61e11 # initialize rs1
li x17, 0x4b567042515d7587 # initialize rs2
addw x17, x14, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x48c8e7227bb2ef5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x9e38a3296e08e374 # initialize rs1
li x18, 0xc4b175132530f1c7 # initialize rs2
addw x18, x2, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x339ec54121a72d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x85f2ecb3764bd420 # initialize rs1
li x19, 0x7fda73fc2d5c9cd5 # initialize rs2
addw x19, x8, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x41b804650941c1f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x07e9c87f5c0c6a89 # initialize rs1
li x20, 0xc79dbecdf75f8ae3 # initialize rs2
addw x20, x17, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x618e62cefe4ec4c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe2a94964dd4eabd1 # initialize rs1
li x21, 0x351961ac4c6d0600 # initialize rs2
addw x21, x13, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x203590ae887d985d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc7b4c83048e36d45 # initialize rs1
li x22, 0xe3794f30cc163418 # initialize rs2
addw x22, x21, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x0d3d2606da10ee18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb2bcf08e937becaf # initialize rs1
li x23, 0x5620ef75f347b8b0 # initialize rs2
addw x23, x13, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x9ab4acb0aa9b9419 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7c2d78b4ddf546da # initialize rs1
li x24, 0x12245e8aba596041 # initialize rs2
addw x24, x4, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x16383c7dcf4afca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x13bdb8870838f8b8 # initialize rs1
li x25, 0x9dcb8546fb5fc355 # initialize rs2
addw x25, x13, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x37f059550b9ec283 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9d3865ffd97e4ae7 # initialize rs1
li x26, 0xb58634abcabe56ec # initialize rs2
addw x26, x30, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x8ef96239964de069 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6dd8476db6d84b37 # initialize rs1
li x27, 0xe7bab25bfec25de2 # initialize rs2
addw x27, x8, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x8e59ca174b80cbe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x10d4f343dccb715b # initialize rs1
li x28, 0x2ae67825083d81fd # initialize rs2
addw x28, x28, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x47f64c7100853da4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x475076504c2276b6 # initialize rs1
li x29, 0x4729c92da73a12d1 # initialize rs2
addw x29, x3, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x832c630be19339ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfdb461b6e72ccb85 # initialize rs1
li x30, 0x69ebfbbcca222050 # initialize rs2
addw x30, x27, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xa6bbf5b6e72fdad1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x95d240f295266e1e # initialize rs1
li x31, 0xce2fa292ff1aa6c7 # initialize rs2
addw x31, x1, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x74615da628e2ac8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd87748b1b4dd8b00 # initialize rs1
li x0, 0x7e4742506a1f7807 # initialize rs2
addw x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd63f53b546422f28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x858c7e9f01ef68b6 # initialize rs1
li x1, 0x9f28042cf4f89342 # initialize rs2
addw x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x9a62174fbf78e49a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0f26db0b019045a0 # initialize rs1
li x2, 0xeff441b3d04714a3 # initialize rs2
addw x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x816cb17d4f411c3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x67811c140abb5a56 # initialize rs1
li x3, 0x71ba8b7b82788dd4 # initialize rs2
addw x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x93f98439737a8e0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8deedcde5e9e5d0c # initialize rs1
li x4, 0xbdaf752ea74dbeaf # initialize rs2
addw x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0xea1bdbc0f335b607 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x787230a66c38d823 # initialize rs1
li x5, 0x58c03fff30ac6e9b # initialize rs2
addw x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xb8cc833632cd5a03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa0cb2f92acd2f58b # initialize rs1
li x6, 0x63a5012ad77ec85d # initialize rs2
addw x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x1bf768e8f0829297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1189ce8427518738 # initialize rs1
li x7, 0xbabfb832203fce39 # initialize rs2
addw x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x3958fac1a99a6a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x68305e57448d63b9 # initialize rs1
li x8, 0x1abbcc7a7a7ba40d # initialize rs2
addw x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x7e85fd2265845f54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdff2c9c1399c6d63 # initialize rs1
li x9, 0xc5ce90f040cf8df7 # initialize rs2
addw x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xcd83c8c9df42c80c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2e87d7e4dbbb07e6 # initialize rs1
li x10, 0xfc82b1180226cc2d # initialize rs2
addw x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xd5f4e597e0758070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xde75e66647712713 # initialize rs1
li x11, 0xdbde5d71e68e8d91 # initialize rs2
addw x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x6e2a25e489c2cbe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2052433fd3a9c7ce # initialize rs1
li x12, 0x5fd54f50217a5489 # initialize rs2
addw x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xcbe90e5c748cf29f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x44e97f76892f2acf # initialize rs1
li x13, 0xfba1c0ede47dff57 # initialize rs2
addw x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x49b82b22b66a187b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcec335cf563300f4 # initialize rs1
li x14, 0xe2a111ad27166bdd # initialize rs2
addw x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x629183b54fa6b5cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc3ef53bc03e8b7d2 # initialize rs1
li x15, 0xf6c6ae9e1033a244 # initialize rs2
addw x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x0e56d64045610552 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xdbd5b5284e3dac82 # initialize rs1
li x16, 0xfcfe2e2fdeea27da # initialize rs2
addw x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x7601b27d88f9d682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x2a939ecea2c53e30 # initialize rs1
li x17, 0xa6e6c409c85599be # initialize rs2
addw x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x952a109689e826a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x155c29de35a4d4d2 # initialize rs1
li x18, 0x3080e0880cfb46aa # initialize rs2
addw x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x145f3694dcfe8c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa6bc2ed2cc160787 # initialize rs1
li x19, 0xc60353fc846d38b3 # initialize rs2
addw x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x033acd6252cc4e1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5de656e870f2d582 # initialize rs1
li x20, 0x32090359ab5a0d6f # initialize rs2
addw x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xd2f1826158967c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb866c2dcb67ee47a # initialize rs1
li x21, 0x7dba3765c0edee43 # initialize rs2
addw x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x331d8276e0500be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x81b826f164fe0dfb # initialize rs1
li x22, 0x401a32e71e9e2207 # initialize rs2
addw x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xb004ab9d4d34d895 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2ebd44a76e1150a3 # initialize rs1
li x23, 0x334fed18ac948bce # initialize rs2
addw x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x669ef8cf23a51ce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x3d961b53d899d011 # initialize rs1
li x24, 0xa61147f79269cb87 # initialize rs2
addw x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x74a4934d2a1cacfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc4a0e1aa6cc7692c # initialize rs1
li x25, 0x71e1ed40804dafed # initialize rs2
addw x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x3d63d999cb98faca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe2370a73d8710bdb # initialize rs1
li x26, 0x77c365e790248051 # initialize rs2
addw x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x30985020598efcf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x37be1d04de515b6c # initialize rs1
li x27, 0xf3397dde39229b8c # initialize rs2
addw x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xabf6333e985fc5d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1d4b75627e9cbb30 # initialize rs1
li x28, 0x32a00a9058be4042 # initialize rs2
addw x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xbfcc07f9a41adf14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x50a475ea7e306ee4 # initialize rs1
li x29, 0xfd6aa05fbe07ac71 # initialize rs2
addw x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xa8e64b999870fd28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe901750c94fb85b1 # initialize rs1
li x30, 0xb915739bc95f2487 # initialize rs2
addw x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x4f75c851bcdaa549 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x641b8ea1b7a99095 # initialize rs1
li x31, 0x1e297f6b62b79c4b # initialize rs2
addw x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x31, 0xfb684c080d03877d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x71eb9beea5d0b143 # initialize rs1
li x0, 0xe28ccd1cf7a4af6f # initialize rs2
addw x31, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x824f2698d1e1e449 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x14d22c835e2afb96 # initialize rs1
li x1, 0x693333bc288b0f56 # initialize rs2
addw x1, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x14, 0x17ab711067a7d976 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8fc3f5396fbd0878 # initialize rs1
li x2, 0x4d116582aa4cb80b # initialize rs2
addw x14, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x6, 0xb680e89fadd55869 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf397fc9442dc3d70 # initialize rs1
li x3, 0x6a2401b8846a4e98 # initialize rs2
addw x6, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x24, 0xece258bcfc817d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3172400d9e9f4ba7 # initialize rs1
li x4, 0x892a05dab5284b7a # initialize rs2
addw x24, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x17, 0xd6a84fe664679832 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8da46ec740987067 # initialize rs1
li x5, 0x3aea192ee91acf99 # initialize rs2
addw x17, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x28, 0x9584a70cb7e48516 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xab8fbaa8a7d82c90 # initialize rs1
li x6, 0xb867dd3c84e42965 # initialize rs2
addw x28, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x4, 0xe23adfc3f0163bdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6bf94456c48b1f67 # initialize rs1
li x7, 0x3f46389ec7a3a559 # initialize rs2
addw x4, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x2, 0xa4cd8738f0dc3e6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x368b9d761fd0eebe # initialize rs1
li x8, 0x6ee651f195744b64 # initialize rs2
addw x2, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x16, 0x9baea7cebcdb0d3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x09ee46200de863fe # initialize rs1
li x9, 0x531d96b257032261 # initialize rs2
addw x16, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x18, 0xff1787d00b7454d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb78cde205c9b2638 # initialize rs1
li x10, 0xf2873132878e714b # initialize rs2
addw x18, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x4, 0xbb559948590e6237 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x11f017d4c2ed33a7 # initialize rs1
li x11, 0x8c98d718b12d747e # initialize rs2
addw x4, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x13, 0xd64761fbef4bfb09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd41a0bc4441607ac # initialize rs1
li x12, 0x1fb16fe54ad0d29e # initialize rs2
addw x13, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x7, 0xb51b7cb2e7fa294d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x21a12d9cf20bdff1 # initialize rs1
li x13, 0xe75768302569fb8c # initialize rs2
addw x7, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x7, 0x9d69c92462ba3129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2328daac3a25db8e # initialize rs1
li x14, 0x74b6b0687e52f6f9 # initialize rs2
addw x7, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x23, 0xe6efc6e34189333e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x91b46b6d74e3b5b3 # initialize rs1
li x15, 0xd908871e0db0e715 # initialize rs2
addw x23, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x29, 0xfdeb7fc27939311c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x85b6674071d25235 # initialize rs1
li x16, 0x4cfc7c0a126c9135 # initialize rs2
addw x29, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x18, 0x4bedbda93fbb08f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x065839e2bd0d9c38 # initialize rs1
li x17, 0x9ccd8fa12b1e8ea5 # initialize rs2
addw x18, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x12, 0x360b00fb06705373 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x509ea1e74cf395ba # initialize rs1
li x18, 0x9951c2bf7eeb847a # initialize rs2
addw x12, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x26, 0x4176cac052f8ec90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x616124ae2b849c1d # initialize rs1
li x19, 0x621fbe2cfbb63323 # initialize rs2
addw x26, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x8, 0x7240dd87dd058320 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xccd5372ac801653a # initialize rs1
li x20, 0x355d4e1bfe85693b # initialize rs2
addw x8, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x7, 0x2b1393d6d33bfe48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x811b1b2b2b78d29a # initialize rs1
li x21, 0x4730e236da4fe188 # initialize rs2
addw x7, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x8, 0x8368c26455cf8205 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7bf1104feeb629ac # initialize rs1
li x22, 0xb02f069342c4e642 # initialize rs2
addw x8, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x19, 0xfe6a85a05a992ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfdb3bc56b6dd9a8a # initialize rs1
li x23, 0x2cf3e093147767d0 # initialize rs2
addw x19, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x12, 0xb54bdedaefe2dd13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x34c76c6e0138b846 # initialize rs1
li x24, 0xaf394da50a561302 # initialize rs2
addw x12, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x30, 0x902d696735ff8ead # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf6cef035b7998cb3 # initialize rs1
li x25, 0xcbbf3f1e00b05548 # initialize rs2
addw x30, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x12, 0xd165c59f42a6f8dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xed96ddf0682d637a # initialize rs1
li x26, 0x800e8baa6738b233 # initialize rs2
addw x12, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xe30566a651cb1e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xda30e88acb59f663 # initialize rs1
li x27, 0x64b794df65090c73 # initialize rs2
addw x27, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x30, 0x9478cac781b9b580 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x580f729b4fcf45e3 # initialize rs1
li x28, 0x805b2844ee341f4c # initialize rs2
addw x30, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x26, 0xa1cc29423526eff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x526fd98efa1d63c3 # initialize rs1
li x29, 0xd7d458912a4ab28c # initialize rs2
addw x26, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x5, 0x50203742c22bf776 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x067370a488830938 # initialize rs1
li x30, 0xdf4b25d133f6f7eb # initialize rs2
addw x5, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x12, 0xd70ade355a5a6fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0804ff36feec6bed # initialize rs1
li x31, 0xa00040f85e2d26d2 # initialize rs2
addw x12, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x19a42cbb090cd590)
li x14, 0xbe18c6b4472e6acd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x19a42cbb090cd590 # initialize rs1
li x26, 0x5474b322ba47c13a # initialize rs2
addw x14, x11, x26 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x53bd194efc9fe273)
li x24, 0x602f62617e575349 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xac42e6b103601d8d # initialize rs1
li x30, 0x940ff45b7e0db933 # initialize rs2
addw x24, x29, x30 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x3cf419eee9c47f9e)
li x8, 0x41fe1aed89253635 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x143d155d16833423 # initialize rs1
li x28, 0x3cf419eee9c47f9e # initialize rs2
addw x8, x16, x28 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x55bb0a45bb49262a)
li x5, 0xf799f71e4f6bc0b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x040c9df6c975f21e # initialize rs1
li x17, 0xaa44f5ba44b6d9d6 # initialize rs2
addw x5, x3, x17 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
