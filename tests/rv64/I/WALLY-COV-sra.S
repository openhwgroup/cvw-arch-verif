///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-sra.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.503172
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x30d465c265e8b105 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x254aa365c562804e # initialize rs1
li x18, 0x5d6be853275f2f12 # initialize rs2
sra x0, x12, x18 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x3e208d355d21e84f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xec0608b279f6d9b2 # initialize rs1
li x6, 0x0b41ad75362ad53c # initialize rs2
sra x1, x31, x6 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x6eb07afb9d4f2b4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa04f8633fa354575 # initialize rs1
li x11, 0xd5bb2f9986c47c6f # initialize rs2
sra x2, x1, x11 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x5b6f9885f9e6b54f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xde8107ab5a580ba9 # initialize rs1
li x12, 0x7c2b9be4fb79d290 # initialize rs2
sra x3, x26, x12 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x54d059bb94a8e5f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x957b0ee13a4d83fe # initialize rs1
li x16, 0x4b1dd1d575531c48 # initialize rs2
sra x4, x4, x16 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xbdebe41285e5651e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc8869a1834ee1076 # initialize rs1
li x17, 0x886ed12018ba7f10 # initialize rs2
sra x5, x21, x17 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xdde0f117e9057007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8e1881e06c544ccc # initialize rs1
li x22, 0xf2f69cc57a914652 # initialize rs2
sra x6, x13, x22 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x8506d2140a721080 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xccc5c9bb2679dae8 # initialize rs1
li x6, 0x69ad9b3e6606b6fb # initialize rs2
sra x7, x19, x6 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x8ce9e2e09a849678 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x47370036328c2862 # initialize rs1
li x18, 0xa60f9c9824a0f568 # initialize rs2
sra x8, x26, x18 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x8c4a0ff95b0f795c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xdc1fa43d9f73ddef # initialize rs1
li x28, 0x8f0df3956d84e44a # initialize rs2
sra x9, x10, x28 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8bfa253176327e0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa43b306b5c075991 # initialize rs1
li x7, 0x83dc2f3c6df65941 # initialize rs2
sra x10, x1, x7 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x3ab3af4f5b9479ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x53ba2557be85c528 # initialize rs1
li x27, 0xaf7bfdae7214ba27 # initialize rs2
sra x11, x13, x27 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x77a6be0aacfb5d77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7482d19379723766 # initialize rs1
li x29, 0x6d83cb7a5c2e7de2 # initialize rs2
sra x12, x13, x29 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x7ecbc640de41360c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5e23d21f6b984cbd # initialize rs1
li x3, 0xd1b00d20ee69029c # initialize rs2
sra x13, x19, x3 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xe652b0cb8718fe3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd8f78a71a147a54b # initialize rs1
li x15, 0xe37a121af0e8343c # initialize rs2
sra x14, x3, x15 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x8b90dd3fda68ecf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8c33a02a3155848e # initialize rs1
li x17, 0x8d0f3895ee2c97ad # initialize rs2
sra x15, x30, x17 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xea3268cd472b6afb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd5e935fc303259c5 # initialize rs1
li x28, 0x1afd98cd5be80cb1 # initialize rs2
sra x16, x1, x28 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xed289dc7cce988aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x62411fe7b28f7903 # initialize rs1
li x1, 0x407d99d471431ea4 # initialize rs2
sra x17, x28, x1 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xd8b6f023e0186469 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaf993549e7aca9bd # initialize rs1
li x7, 0x5060370ae8d251c4 # initialize rs2
sra x18, x2, x7 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x0b5a47dfa0631a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd93f78862452c57f # initialize rs1
li x10, 0x27bd215eeaceabd0 # initialize rs2
sra x19, x12, x10 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x18fbe4483b069ece # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcb3db97b6891a2b2 # initialize rs1
li x6, 0xf716f3329920a5e1 # initialize rs2
sra x20, x4, x6 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xb43c3bb0c7bf4365 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2589ad927b4a7597 # initialize rs1
li x29, 0x5239f590e7a59a03 # initialize rs2
sra x21, x30, x29 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xcef7c68159298d5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcfe0c1b5dee0214b # initialize rs1
li x13, 0x55ae296f76690bb1 # initialize rs2
sra x22, x14, x13 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xa2a32220e81aa018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xde33b3dc913908b5 # initialize rs1
li x14, 0x5fd897fe1fdb7999 # initialize rs2
sra x23, x12, x14 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x458c0621b06b080d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6835942352260203 # initialize rs1
li x11, 0xde6bd9ca05414a6c # initialize rs2
sra x24, x25, x11 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x971c65dd48d5deb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xeb120e33d4e80f1e # initialize rs1
li x22, 0x6b1bee1a3049ae0b # initialize rs2
sra x25, x18, x22 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x193e1ea7ae4dc5ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x90543578be882836 # initialize rs1
li x24, 0x56c43445c0b74fdb # initialize rs2
sra x26, x28, x24 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xcf7e654a8f47fe3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaef0902c2d95a2fe # initialize rs1
li x15, 0xb7045fd561d74a86 # initialize rs2
sra x27, x29, x15 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xabe2e98a0b176765 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x675e4ba4a314cff4 # initialize rs1
li x13, 0x24ff4c3854eba9ab # initialize rs2
sra x28, x23, x13 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x1ad3dd5865bf2c95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfbc5ab590aa4b495 # initialize rs1
li x17, 0x345d9b3581e672ca # initialize rs2
sra x29, x20, x17 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x5ea9ea7403f7065b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x11881d5304b07fa2 # initialize rs1
li x11, 0x27b99f0007678580 # initialize rs2
sra x30, x17, x11 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x6f016b8043effa32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4438137db52cf051 # initialize rs1
li x19, 0x1d1e3fd823f1fb54 # initialize rs2
sra x31, x10, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x14, 0xe43c7268a3ef26b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6d5c6cf016958c2c # initialize rs1
li x4, 0x79eebedcf711413c # initialize rs2
sra x14, x0, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x10, 0x9219bfdbcf0b7851 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x13652b1283a51e79 # initialize rs1
li x21, 0x4586eb55020006ca # initialize rs2
sra x10, x1, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x24, 0x1cb3fbdb1cca6045 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe977469746c537e8 # initialize rs1
li x29, 0xeabca22b03b39318 # initialize rs2
sra x24, x2, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x1, 0x5139e7d43716535a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fb0bc700e556b06 # initialize rs1
li x14, 0x4cd48c6c4242f26a # initialize rs2
sra x1, x3, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x11, 0x85c96200b74b1841 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x03300a18379cc884 # initialize rs1
li x10, 0x358c2e20fd24c4a8 # initialize rs2
sra x11, x4, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x21, 0x86c98ede719cd4a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6e6b32d58247c165 # initialize rs1
li x12, 0x70868ea6574009a8 # initialize rs2
sra x21, x5, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x15, 0xed92da53e0612dcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8d3b59122e006fa2 # initialize rs1
li x14, 0x0c473d6f5555d8c5 # initialize rs2
sra x15, x6, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x28, 0xee5890f070abe89f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x79db35bc26fe2f97 # initialize rs1
li x23, 0x4c74372f9c02e525 # initialize rs2
sra x28, x7, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x28, 0xac0288dc69720130 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa78e639e7f4f7404 # initialize rs1
li x29, 0xa6492b198af2d9c8 # initialize rs2
sra x28, x8, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x3, 0x82793d0b8ac1db48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9a42849caee8b6ea # initialize rs1
li x14, 0x638edae591dc1c5d # initialize rs2
sra x3, x9, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x1, 0x3bc4104dc57dbe60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x441277d18d271eb2 # initialize rs1
li x25, 0x96d5113c139236b1 # initialize rs2
sra x1, x10, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x12, 0xe5db79bd5dd7f6c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf70e975c71e14f18 # initialize rs1
li x3, 0x572ccac2fd26cd3b # initialize rs2
sra x12, x11, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x30, 0xfeb0c9a1730b8ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6ab14cc5af67953d # initialize rs1
li x20, 0x29c602a3cd3c7682 # initialize rs2
sra x30, x12, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x5, 0x3f4adf16193b1ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x104e98e79e55c5c9 # initialize rs1
li x12, 0xd4c36cb313db4cdf # initialize rs2
sra x5, x13, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x16, 0x0ef1e91f523e79c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa3e39c7267f48bb7 # initialize rs1
li x3, 0xc1239c707e259392 # initialize rs2
sra x16, x14, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x23, 0x652b6313a6323364 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5c570d33dde15019 # initialize rs1
li x6, 0xfe9a3678c108f78a # initialize rs2
sra x23, x15, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x30, 0x97d0774d43f8c83a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x82defe8c698cef46 # initialize rs1
li x19, 0xc00548dc0046def5 # initialize rs2
sra x30, x16, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x25, 0x20753606f6afcf48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x785c70e735b075b2 # initialize rs1
li x26, 0x137dec84056a909a # initialize rs2
sra x25, x17, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x2, 0xf5e19dc3002d4368 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9369b7e0904d19bd # initialize rs1
li x8, 0x72ec56e3df59a396 # initialize rs2
sra x2, x18, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x20, 0x15ee38ad58428db2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xd3be97bc89ed302f # initialize rs1
li x22, 0xf859bd89a974a065 # initialize rs2
sra x20, x19, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x19, 0x563831a5e6ae0bb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe4d04b38f3238e87 # initialize rs1
li x8, 0xfe5f2b81f01e6c9f # initialize rs2
sra x19, x20, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x31, 0x498c62b906dbb696 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x135ea542adec5938 # initialize rs1
li x18, 0xdf02693fe397f4eb # initialize rs2
sra x31, x21, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x10, 0x4d60872604e268c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa4167b7fda4c8535 # initialize rs1
li x30, 0xfeb4dbffd70412b9 # initialize rs2
sra x10, x22, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x27, 0x2a406d326b409c28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x444b579dda2a8171 # initialize rs1
li x13, 0x6dfc9d51159b0751 # initialize rs2
sra x27, x23, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x9, 0xaaf68002b8aabf9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x1bb2e5bfa5006c42 # initialize rs1
li x15, 0x426550eec1926ddf # initialize rs2
sra x9, x24, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x3, 0xa3aab1efbf95d4b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xdc1d84a8a60ed79b # initialize rs1
li x12, 0x398701223f55464d # initialize rs2
sra x3, x25, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x16, 0xbc512ee5cae6a21f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6c5e8fe6023835c1 # initialize rs1
li x23, 0x89fee59e974fb0d0 # initialize rs2
sra x16, x26, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x13, 0x431b8697993a5051 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9de0366ca33cc8ba # initialize rs1
li x17, 0xb9119555037cc426 # initialize rs2
sra x13, x27, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x26, 0x27be75acd78bf38e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb5598b85a51dabde # initialize rs1
li x13, 0x3e13a4c52e823a68 # initialize rs2
sra x26, x28, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x10, 0xc630fc5d1ec9b19c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfdb440aa47e46c4c # initialize rs1
li x6, 0xdf69a7d64f3c5715 # initialize rs2
sra x10, x29, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x10, 0xb886ef73737af8c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x631a8a0fe7b33e6b # initialize rs1
li x9, 0xb28f8bb9dd6f1282 # initialize rs2
sra x10, x30, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x15, 0xd3fcaead296787fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0abe3b4e1d42660f # initialize rs1
li x14, 0x3b8c899b8f9298fc # initialize rs2
sra x15, x31, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x29, 0xe09b5078c98d4c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x046a8778796a84cf # initialize rs1
li x0, 0xa5b296fe5badeb6c # initialize rs2
sra x29, x24, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x12, 0xf5dd8b8e6c50c919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe24565ca3014e309 # initialize rs1
li x1, 0x974b427fecb50277 # initialize rs2
sra x12, x26, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x13, 0x3fc9c64d1fdf5d08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbbc858bc855a84db # initialize rs1
li x2, 0x11601f2c4ed8bef0 # initialize rs2
sra x13, x4, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x31, 0x70bdbb796f0f277f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5f70729cfd4ce8b0 # initialize rs1
li x3, 0xfa484669d51b1e6a # initialize rs2
sra x31, x23, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x12, 0x60b4fc793df9c64a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1bf0fbfe49ebf32e # initialize rs1
li x4, 0x7067366f0f854e74 # initialize rs2
sra x12, x9, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x29, 0x00dd117babd8c753 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x83c6cb7766695522 # initialize rs1
li x5, 0x231f573f067e7238 # initialize rs2
sra x29, x7, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x1, 0xa132452d05b0f949 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2f44e877180bd225 # initialize rs1
li x6, 0xfe236fac6ff3aa39 # initialize rs2
sra x1, x13, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x27, 0x9da081ecde601c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1d0c031e12cbc5ae # initialize rs1
li x7, 0x4d1f4353ace0787e # initialize rs2
sra x27, x14, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x20, 0x7116957877cfc930 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xbbe6189c72866699 # initialize rs1
li x8, 0x49c04cdcd61b0fcf # initialize rs2
sra x20, x16, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x16, 0x01d13839a77b801d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9e2ed59d2ac46e17 # initialize rs1
li x9, 0x01d9945a25e2c743 # initialize rs2
sra x16, x22, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x28, 0x688f3af640bffdbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x17c6b55097a80d53 # initialize rs1
li x10, 0x4927261a493fcbdd # initialize rs2
sra x28, x22, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0x3fbec799d2908b77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd8e6d4f42a7defdc # initialize rs1
li x11, 0xc54797a7b4139d5e # initialize rs2
sra x23, x26, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x20, 0x506fa0f4771584c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbda1e95036730cd1 # initialize rs1
li x12, 0x37c8243a380f2ccd # initialize rs2
sra x20, x6, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x28, 0x0df81de647f13254 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1dd48d7680090044 # initialize rs1
li x13, 0x1cacd44376b44510 # initialize rs2
sra x28, x7, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x9, 0x2e9d7be898336cad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x89c9ba2775e99035 # initialize rs1
li x14, 0x3781244aab098288 # initialize rs2
sra x9, x24, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x14, 0x1140c8d2c7ab873b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x21fcd44261f67a6e # initialize rs1
li x15, 0xf039c29c9674de98 # initialize rs2
sra x14, x3, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0xcb248852a443cd1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x105dbacea966a377 # initialize rs1
li x16, 0xeb753c36e680dfbd # initialize rs2
sra x7, x19, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x9, 0xbb5bffa93339a04e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x462681aef48b54e5 # initialize rs1
li x17, 0x94a39dceb3280d3b # initialize rs2
sra x9, x20, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x17, 0xf186bf5adfe7f04c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6d5e493ecdca4172 # initialize rs1
li x18, 0x87cd420937757f2d # initialize rs2
sra x17, x3, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x9, 0xcd02fac351a8ed9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffa6e3f0521e4f87 # initialize rs1
li x19, 0x2c40599d19e78739 # initialize rs2
sra x9, x28, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x1, 0xe960746d248442fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xbcbd0e6ba74a98cc # initialize rs1
li x20, 0xe9f7f27a5cdfc3fb # initialize rs2
sra x1, x25, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x15, 0xaaa128b53f507060 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00fb6d892e481bce # initialize rs1
li x21, 0x4ff358a930c6161e # initialize rs2
sra x15, x10, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x7, 0xa5bdd8186374ec17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xeda6f993c84335f2 # initialize rs1
li x22, 0x7af689e404ad55dc # initialize rs2
sra x7, x23, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x11, 0xd5e7e0bb7b4628db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc6512796e77892d1 # initialize rs1
li x23, 0xc243d88411e63124 # initialize rs2
sra x11, x24, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x11, 0x904cf6836c8995ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9861c0cd74d91361 # initialize rs1
li x24, 0xb6f1c598ade2e18e # initialize rs2
sra x11, x17, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x5, 0x878101b8900dc153 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x35d119358f26f386 # initialize rs1
li x25, 0x2cc8c0e02b3b19c6 # initialize rs2
sra x5, x27, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x20, 0x5e93b6b47a31d5bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa631e6f279848b7f # initialize rs1
li x26, 0x4300043d69a77f43 # initialize rs2
sra x20, x6, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x8, 0x56a95d9c33e95b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x89b1766b6c46fe30 # initialize rs1
li x27, 0x03d578084a80c857 # initialize rs2
sra x8, x24, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x18, 0xb0f294148273a2c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x332b477e4f306821 # initialize rs1
li x28, 0xf5bccf803daf106b # initialize rs2
sra x18, x31, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x17, 0x35b310d186f76019 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb7c010220875e393 # initialize rs1
li x29, 0x4c1c8a3792db5817 # initialize rs2
sra x17, x10, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x13, 0x7ced882999976e12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x98459d97108c3ecb # initialize rs1
li x30, 0x465a040d103efafc # initialize rs2
sra x13, x28, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x28, 0xa59078875eb2614d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe7e87e064a9fa9e3 # initialize rs1
li x31, 0x124ef1f6ef45ae63 # initialize rs2
sra x28, x29, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xd6cc1121ee6323c3)
li x2, 0x163962711ed70b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x163962711ed70b18 # initialize rs1
li x0, 0x2410cba5ef229d27 # initialize rs2
sra x2, x11, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x9a484d816d070dd)
li x12, 0x09a484d816d070dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x09a484d816d070dd # initialize rs1
li x1, 0x09a484d816d070dd # initialize rs2
sra x12, x0, x1 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x57bd491275164ce2)
li x11, 0xaa8c883c40e02296 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x57bd491275164ce2 # initialize rs1
li x22, 0x57bd491275164ce2 # initialize rs2
sra x11, x6, x22 # perform operation

# Testcase cmp_gpr_hazard raw test
sra x4, x1, x23 # perform first operation
sra x4, x4, x5 # perform second operation

# Testcase cmp_gpr_hazard raw test
sra x27, x16, x29 # perform first operation
sra x10, x16, x27 # perform second operation

# Testcase cmp_gpr_hazard waw test
sra x31, x15, x24 # perform first operation
sra x31, x11, x16 # perform second operation

# Testcase cmp_gpr_hazard waw test
sra x15, x9, x18 # perform first operation
sra x15, x21, x30 # perform second operation

# Testcase cmp_gpr_hazard war test
sra x1, x14, x3 # perform first operation
sra x14, x9, x26 # perform second operation

# Testcase cmp_gpr_hazard war test
sra x10, x1, x27 # perform first operation
sra x27, x21, x19 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x11, 0x721433d055a1da18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000000 # initialize rs1
li x0, 0x7f0e16b505dd0901 # initialize rs2
sra x11, x30, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0x636aa14f7a2f3dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sra x29, x17, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0x7f90debead8a2c1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
sra x21, x4, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x28, 0xec31d7ef99a1c888 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs1
li x0, 0x50c972e159b93066 # initialize rs2
sra x28, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x22, 0x0780fc8f48c0fdf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
sra x22, x20, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0xbcde01fb5aa26787 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
sra x27, x18, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0x0c794090a1a4ad66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
li x0, 0xbc2e563d0b8a802d # initialize rs2
sra x13, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0x383514f8c557ef49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
sra x18, x26, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0xb524e038b256e568 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sra x3, x30, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x14, 0x16c8ee0154ddb6b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000000 # initialize rs1
li x0, 0x3b21d4902b088d3a # initialize rs2
sra x14, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x26, 0x0d5ebe0d2ccecc2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
sra x26, x22, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x28, 0x87ba6197acd416e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
sra x28, x18, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x19, 0x0b94cc02e1392945 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x0, 0x6ddf2713b4ae546a # initialize rs2
sra x19, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x13, 0xcfedc736a96b7189 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
sra x13, x14, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x6, 0xe830c6d8c71e52d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sra x6, x12, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x11, 0x5876d156690f5685 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffffffffffff # initialize rs1
li x0, 0xd8307c798b8adad0 # initialize rs2
sra x11, x30, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x1, 0x6d2707f44a6074cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sra x1, x12, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x12, 0xdf037386fe72c754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
sra x12, x16, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x9, 0xabb42bb192ef3390 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x0, 0xc28bd1b9d7e9663f # initialize rs2
sra x9, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x4, 0x1739b445ae432a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
sra x4, x5, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x21, 0x6be846cfeb77d2f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sra x21, x5, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x15, 0x334deb314ef2660a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x0, 0xf7dd356ac1621a1b # initialize rs2
sra x15, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x11, 0xbb1513e88a52a6d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
sra x11, x4, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x26, 0xe1d684a64fdd1f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
sra x26, x29, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x26, 0x683ef8a69eebd4d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffffffffffe # initialize rs1
li x0, 0x4fb4c04385da57ee # initialize rs2
sra x26, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x18, 0x3acede0d52087469 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
sra x18, x24, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x12, 0x18e3e8561f2fc32b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
sra x12, x14, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x18, 0x05560cdea023aabf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x0, 0x181b8b9c193db76c # initialize rs2
sra x18, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x23, 0x11bd24b9118f9d0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
sra x23, x27, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x15, 0x461c28dc87ce49bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
sra x15, x16, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xc8704f43c65e6b35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x0, 0xd88615276fd49a8d # initialize rs2
sra x26, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x4, 0x31c0d31159d8a9ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x4, x22, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x2, 0x1b876581704bf9a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x2, x24, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x1, 0x238cd74af7954bca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x0, 0x67882c616c1041ff # initialize rs2
sra x1, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x21, 0x41d354414bc89e3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
sra x21, x22, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x8, 0xeab956b0a2ca944c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
sra x8, x4, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x4, 0x0f97ca1761aa6d18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
li x0, 0xca1170c985d0835e # initialize rs2
sra x4, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x13, 0x4a92998979eb34a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
sra x13, x16, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x9, 0x6e5a1bd75264b300 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sra x9, x28, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x15, 0x7cf5d6c1170d7e23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x0, 0x8821fe6aff274178 # initialize rs2
sra x15, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x28, 0x59bcb36420e7ec08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
sra x28, x23, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x7, 0x8fe9732538389659 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sra x7, x1, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x22, 0x7f0f13cca43f2302 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
li x0, 0x7caff0516a837b6f # initialize rs2
sra x22, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x31, 0x7c3297bb6e098c66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sra x31, x17, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x12, 0x9d15bc85633e85dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sra x12, x5, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x21, 0x364de97e64bc9d47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x0, 0x08957c195b034b57 # initialize rs2
sra x21, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x28, 0x913ba6ea5200fb97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
sra x28, x1, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x30, 0x1499a74ae3a2b069 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sra x30, x13, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x28, 0x700bb62c3cc09e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x4, 0x0c81b4da0617c0e9 # initialize rs2
sra x28, x25, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x9, 0x9197357ff6eba241 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
li x1, 0x9a2ed421a10de486 # initialize rs2
sra x9, x24, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x26, 0x8d5cf508b91abba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x31, 0x20f526f81fe13f6c # initialize rs2
sra x26, x21, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x5, 0x166eaef64ce5c30e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs1
li x1, 0x79396edd2e8f6bae # initialize rs2
sra x5, x14, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x25, 0x176459db6193ac36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x23, 0xc05f0dc218e7e917 # initialize rs2
sra x25, x11, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x9, 0x73607b57ad2784d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs1
li x23, 0x0550b91e53c6af86 # initialize rs2
sra x9, x19, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x16, 0xd20e41b766d5eaaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # initialize rs1
li x24, 0x2d78311bbf5465c9 # initialize rs2
sra x16, x9, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x23, 0x51a59602d7d964fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x6, 0x447720c19d24584b # initialize rs2
sra x23, x27, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x1, 0x5c729009ae412e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x2, 0xa73f2f5427a3a42d # initialize rs2
sra x1, x29, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x20, 0xf59468c7b3c46d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x06ed21c2e2bce7eb # initialize rs2
sra x20, x17, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xee110ccf7bab28e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x635c82a490fd7ca2 # initialize rs2
sra x8, x11, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x16, 0x5738b89080684764 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5555555555555555 # initialize rs1
li x2, 0x68a1c722f32d6766 # initialize rs2
sra x16, x7, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0xb5414ffafd58cacd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
li x12, 0x2e3ccf0ef30b4bef # initialize rs2
sra x26, x16, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x18, 0xbc2bc6ecaab0e802 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x26, 0xe3f29e17d2b40c31 # initialize rs2
sra x18, x7, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x26, 0x4e3b9e102144e0ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x18, 0x8e1dedcf5551e38d # initialize rs2
sra x26, x30, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x18, 0x093c6fbdb534d018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000001 # initialize rs1
li x13, 0x0afbd7486bb70830 # initialize rs2
sra x18, x10, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0xa4a800a16a5c1f59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x49dadf2bb460d1d3 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
sra x19, x1, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0x7a75a5b61fc2dcfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x976981f96e23963b # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
sra x6, x3, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x23, 0x5ce245c25355a2e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf659efe03fb18d46 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
sra x23, x17, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x31, 0x0d0c6a74029a5bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x317a7c28980ed183 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
sra x31, x11, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x28, 0x43369935f9f1fb41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x90326dd5106b03b5 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
sra x28, x23, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x12, 0x181fea06a50518d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x51140ad3d9afbb93 # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
sra x12, x2, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x24, 0xe2cbbc6fa4689596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9267800a1613aee6 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
sra x24, x17, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x1, 0x6d74d892a528d647 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x269827ef18c5a97f # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sra x1, x27, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x14, 0x763494c5b09a65e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6379d27a86bdaf23 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sra x14, x18, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x25, 0xf57006b5b318c8bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2c887bc0873803cf # initialize rs1
li x22, 0x5bbc887763ae86f7 # initialize rs2
sra x25, x9, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x22, 0x0c444f7ae2caad3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1c37f20395d4a1de # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x22, x11, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x19, 0x5d0d0616b138301a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1a99e3067c6a48bf # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
sra x19, x22, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x20, 0xea7ab86452e6afec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe15870ced87c7372 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
sra x20, x9, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x17, 0x8152f13b0cde108b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5ee8ac26a48883de # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
sra x17, x9, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x12, 0xc5dfba85ffbe1cde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xbb3728d00f1ec260 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
sra x12, x28, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x30, 0xdeeae486788a451a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x137a78c31c862b23 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
sra x30, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x12, 0x2a8443259e024e4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
sra x12, x10, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x9, 0xc2dc461a79cde97d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
sra x9, x11, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x22, 0xa7878f96d709ea2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
sra x22, x18, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x23, 0xc17419e9606c8585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
sra x23, x21, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x16, 0xd53661d3b78a0a39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000000 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
sra x16, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x7, 0xf97fb5fb46d4c724 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000000 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
sra x7, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x2, 0x9c00bcf594a38f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sra x2, x26, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x11, 0x62b70e88d153f29c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
sra x11, x19, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x13, 0x13550381b6e5b6b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
sra x13, x19, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x10, 0x82243cd9508fdd98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
sra x10, x8, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x6cc694389684edae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x6, x28, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x25, 0x78662555cf177903 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
sra x25, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x1, 0x600429a50a34e2aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
sra x1, x10, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x11, 0x0f83bc48876434ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sra x11, x29, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x15, 0xad70dbb14b0807b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
sra x15, x22, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x26, 0x3555b8a102d1ffab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
sra x26, x1, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x7, 0x4a1e8f441fb940d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sra x7, x17, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x14, 0x991a59690dd5f32d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sra x14, x16, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x14, 0xcad27fea574ca5ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
sra x14, x12, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x5, 0x4fb9339cbde50330 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
sra x5, x6, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x14, 0x6c323204ebd349bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
sra x14, x26, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x2, 0x1cba4c51efc82363 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
sra x2, x30, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x9, 0x8bd88e4174b4b54d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sra x9, x27, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x13, 0xba7d213aaa5ae8f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
sra x13, x12, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x4, 0xb901a9646a1e15e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
sra x4, x16, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x14, 0x09a493ee2ddceee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
sra x14, x9, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0xcdea6f92dc7066c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000001 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x11, x7, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x28, 0x354ea84a50284036 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sra x28, x17, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x23, 0x7837b434b73c0f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sra x23, x1, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x14, 0xa34ef2a0d68efc0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
sra x14, x22, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x4, 0xeeef521941382364 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
sra x4, x8, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x30, 0xe91afb6255f0c46e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
sra x30, x16, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x29, 0xe4d6ed6422adfcac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
sra x29, x25, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x7, 0x4283674d4e3cc070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
sra x7, x4, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x7, 0x740c6103ea231578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sra x7, x29, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x27, 0x3535682c23f751d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
sra x27, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x25, 0x664de3b9ece8fd02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
sra x25, x12, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x19, 0xafe9865408dfa813 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
sra x19, x13, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x7, 0x2591f7231722721b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
sra x7, x28, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x14, 0x58b7e3e465b26d48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
sra x14, x26, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x15, 0xeaa23b57a143fd7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
sra x15, x7, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x27, 0x6ad99e828336bb77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
sra x27, x29, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x487c37af8533eba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x19, x28, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x2, 0x0be4104947559cf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
sra x2, x15, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x16, 0x43f7d3a9986c7a40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sra x16, x14, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x1, 0xd4788d459c8d87dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
sra x1, x2, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x13, 0x41bc83ff6786c90b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
sra x13, x27, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x27, 0x7c2c054554118f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
sra x27, x24, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x24, 0xe03356482cbb36b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sra x24, x31, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x27, 0x18859c993a24db13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
sra x27, x28, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x26, 0xb0b78d322f5ae0a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
sra x26, x22, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x21, 0xf75ae664b20e1066 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
sra x21, x30, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x16, 0x7175f0fa5983d924 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
sra x16, x14, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x24, 0x8a13865eb7d0adc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
sra x24, x31, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x21, 0xccef08edc420dad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sra x21, x14, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x14, 0x02b149b8d5c19c4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
sra x14, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x2, 0x31ec1353080973ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000000 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sra x2, x3, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x12, 0x8b018a416cf66d91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000000 # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
sra x12, x4, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xaa2d2bd49f70fc06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x5, x11, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x12, 0x8c434b9194022ba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
sra x12, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x11, 0x7475bf71f6e4ad73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
sra x11, x26, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x30, 0xe33bcedad1e4d44a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sra x30, x14, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x31, 0xcf57fd07178053ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
sra x31, x5, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x19, 0x89a343fcf4e738ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
sra x19, x23, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x8, 0x291929b999525d63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
sra x8, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x19, 0x5665a9b1d4a0f0a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
sra x19, x3, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x15, 0x2c96912a0994c7a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
sra x15, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x31, 0xe52397bab06a185c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
sra x31, x18, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x11, 0x845e2ebc717afb3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
sra x11, x20, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x13, 0x13e1406034ac955f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
sra x13, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x12, 0x70c2fef4dc2e1692 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sra x12, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x29, 0xe77dc1c7cdadb459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sra x29, x4, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x25, 0xba4486cee685f83c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000001 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
sra x25, x5, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x31, 0x6fc043d8b7d509df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
sra x31, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xef5b37ef7a3477d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x8, x11, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x10, 0xff198d4fa3099004 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000001 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sra x10, x8, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x21, 0x37b71668037e31fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
sra x21, x19, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x22, 0x5f8786568aeda2ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
sra x22, x17, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x19, 0x85a84ec326748a29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
sra x19, x3, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x7, 0x98ddecfbd6e63951 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
sra x7, x19, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x25, 0x529194ee47ab236d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
sra x25, x6, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x10, 0x21341c0a46074ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
sra x10, x23, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x6, 0xf6033422f8a2ed4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
sra x6, x20, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x5, 0x69ec6b8e2932ac7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
sra x5, x25, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x26, 0x525585dabe9068da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
sra x26, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x11, 0x5b1f5a5b5808c28a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
sra x11, x16, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x36fb9c1be6ecc479 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
sra x9, x4, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x1, 0x317ba819eab200b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
sra x1, x15, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x4, 0xbd31c3e92dc4a181 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
sra x4, x10, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x30, 0x4c88fac0cfc43f20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x26, 0x5bbc887763ae86f7 # initialize rs2
sra x30, x4, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0xea5e471ae266a1ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x17, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x31, 0x933e00bb325f7c83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffffffffffff # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sra x31, x5, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x1, 0x89df72f2e0041609 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
sra x1, x19, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x1, 0xbea4b2e807544106 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
sra x1, x24, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x13, 0xc86827f7ea2e7b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sra x13, x29, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x9, 0x0b950d868675da40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
sra x9, x15, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x14, 0x1235d0c23e0921fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sra x14, x2, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x3, 0x0f12ac8a1b1e65dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sra x3, x15, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x16, 0x6a6fb8951308cb7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
sra x16, x12, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x17, 0x884c5e5a3923106d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
sra x17, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x24, 0x0ccbb1fe5bad4d2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
sra x24, x8, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x14, 0xb7956aac2734b262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
sra x14, x26, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x25, 0xfac660c76349a1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
sra x25, x13, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x7, 0x1a7a5b3af348c1e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffffffffffe # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
sra x7, x30, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x7, 0x28b507e3f3543108 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sra x7, x10, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x17, 0x00c617f7449d83c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
sra x17, x18, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0xfbef0b35ea46b45b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x30, x2, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x27, 0xa43e442b8b12f201 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
sra x27, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x16, 0xd198e558be433723 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
sra x16, x22, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x8, 0x1b96ea82d9cbbbc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
sra x8, x5, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x27, 0x049cb9443de8de0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
sra x27, x5, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x10, 0x51b0b0538fdde74a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
sra x10, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x8, 0xba1569be8d2263a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sra x8, x29, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x19, 0x1fa9d8ee03a6e4bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
sra x19, x24, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x21, 0x43e5030ffad1e97d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sra x21, x18, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x22, 0x44051ccb547835c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
sra x22, x28, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x20, 0x27efbcb8a25b33c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
sra x20, x16, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x29, 0x1e05a6558c203555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
sra x29, x14, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0x290b108eec78b936 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
sra x23, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x13, 0x2d059bce9d08db15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sra x13, x6, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x15, 0x5b12a3e79adbf2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sra x15, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x13, 0x0d0b287e76e25cff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
sra x13, x29, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x6462cbc7f0963998 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x31, x14, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x3, 0x2245e6b5d363ba6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sra x3, x22, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x30, 0x2d7c677434f1bc86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
sra x30, x2, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x24, 0x2e1713f8cc64f794 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
sra x24, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x21, 0x3b0f04703d631e4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
sra x21, x4, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x16, 0x0d616b6d9b478b00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sra x16, x21, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x7, 0xbddea470307cf86d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
sra x7, x30, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x25, 0x77175ceda1c258d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sra x25, x7, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x26, 0x394ec8619454d94d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
sra x26, x11, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x31, 0xb8844f533d79145a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sra x31, x29, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x1, 0xd90c44cfe1401f81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sra x1, x11, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x8, 0x6eb9e753886adb9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffffffffffe # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
sra x8, x21, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x20, 0x0614464fb83d2d00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
sra x20, x8, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x6, 0x2653df294ef17f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffffffffffe # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
sra x6, x17, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x19, 0x1b547c2ea798d4d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sra x19, x16, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x7, 0x308ec3327fbc43ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
sra x7, x19, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x964268bde6ad9b84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x18, x7, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x7, 0x7d594767423a46b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
sra x7, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x5, 0x256054dd425c4ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffffffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sra x5, x2, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x11, 0xe310fd3a6416aca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffffffffffe # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
sra x11, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x17, 0x3fa9159752e69021 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
sra x17, x8, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x11, 0x10d07cec4838499e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
sra x11, x21, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x5, 0x0fb07b5f93663ee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
sra x5, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x25, 0xbddaf4c65b447b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sra x25, x4, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x29, 0x3146c68ca1e4e89e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
sra x29, x14, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x10, 0x879cb28a3ed36d83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sra x10, x23, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x27, 0x4974ad72ac529c8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
sra x27, x29, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x22, 0xf47e7d557ec25d3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sra x22, x29, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x18, 0xae0710ebbc2c2d98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
sra x18, x24, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x15, 0x4e2f154442b4cf55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
sra x15, x19, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x24, 0x853b7a0dfcb8bb84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
sra x24, x21, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x21, 0x1b270ca7b8f367fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
sra x21, x24, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x60405998ba0e6981 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x9, x26, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x17, 0x821747edd10a934e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sra x17, x27, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x6, 0x5176d8a06b63cfaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
sra x6, x7, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x11, 0xa09ca33c8a3e3a91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
sra x11, x23, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x21, 0x884a0c82ca4b73f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
sra x21, x30, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x30, 0xfb99d6b03021b05e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
sra x30, x29, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x18, 0x056a7aa38faea359 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
sra x18, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x18, 0x1f6a9a9fdf828f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sra x18, x23, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x13, 0xbfea344a05b5ebc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
sra x13, x22, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x19, 0xda470ad5a6d63e99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
sra x19, x18, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x6, 0xe91382797fa8ffbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
sra x6, x24, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x3, 0x504ee9659792f9b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
sra x3, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x1, 0x6f98a3c222ec413e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
sra x1, x14, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x12, 0x16f50fd7d704570c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
sra x12, x9, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x5, 0x005374b4dcd8592d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sra x5, x29, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x4, 0xf3f5b2d76e86d88c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
sra x4, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0xb6fccb779fbcbfc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x23, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x27, 0xdb54f3b972a5dbb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
sra x27, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x13, 0xe89e95502c2d2d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
sra x13, x8, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x7, 0xa33212fcb7ff1eb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
sra x7, x24, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x21, 0xc31a65748dcd96a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
sra x21, x2, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x20, 0x553576c04ca6c601 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
sra x20, x29, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x15, 0xcd4f5ed38aadd4f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
sra x15, x26, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x25, 0x5e3053809d1a91e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
sra x25, x12, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x22, 0xb8c81198d611474f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
sra x22, x26, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x26, 0xedb0a7f4ae877b36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sra x26, x24, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x13, 0x3e0311ecc9d0923b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
sra x13, x26, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x13, 0x6f259a1de123749d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sra x13, x31, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x26, 0xc8b5e0e51e56f4ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sra x26, x12, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x20, 0xd62f661c9cf5a062 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
sra x20, x6, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x29, 0x344deeeac058c256 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
sra x29, x31, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x15, 0x79b9853bae11bd2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5555555555555555 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
sra x15, x2, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x003580d529dc5fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x22, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x4, 0x86ebb6cd0c2f49ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
sra x4, x8, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x11, 0x7ded3cc3abafa9ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
sra x11, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x22, 0xe5310d6be491ea3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
sra x22, x4, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x7, 0xfe4ea000b9fddf88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
sra x7, x13, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x2, 0xae49225909859bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sra x2, x12, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x15, 0x9fb9e2673f43b90d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
sra x15, x30, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x18, 0x1bdb392ef3c2a7e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
sra x18, x5, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x1, 0xa8ffa6ff4630e192 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sra x1, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x1, 0x726476991de06deb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
sra x1, x4, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x19, 0xc9911baad54b249e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000ffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sra x19, x2, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x26, 0x1953fe9eb4d9f205 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
sra x26, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x19, 0x58a50231c91e888a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sra x19, x12, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x21, 0x193ec91fcf24a487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
sra x21, x7, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x29, 0xd649f629402081ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
sra x29, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x30, 0xb4cef4a12adcbe8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
sra x30, x19, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x9d5cfa907f226258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x5, x24, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x16, 0x022e50cf1f00cf3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
sra x16, x10, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x6, 0xb052bcdf19484d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
sra x6, x5, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x14, 0xfc45e31bce5dbb99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
sra x14, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x17, 0x2bcd54a11527a6c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
sra x17, x1, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x11, 0x1fa2350738b29fec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sra x11, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x13, 0x0ab71adc05f46ea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sra x13, x16, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x2, 0x0a2fb93dfbd4448f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
sra x2, x17, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x24, 0x4b39e7a300639d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
sra x24, x6, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x27, 0x0e88618db3a5b67f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
sra x27, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x7, 0xf2721304a96ac9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
sra x7, x13, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x20, 0x36e3784fedc2a0e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sra x20, x19, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x6, 0xc83b3dd32a1af767 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
sra x6, x14, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x6, 0x219567cbae71525f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
sra x6, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x13, 0xf79a1f3977833ec5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
sra x13, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x9, 0x7f189ef11e9cc5eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
sra x9, x25, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x198b93f890bb56e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x4, x28, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x2, 0xdec69cf4805f32a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
sra x2, x6, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x30, 0x987f9c5fbf87079c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
sra x30, x16, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x3, 0x4f411801cddc5c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
sra x3, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x8, 0xb64237bb14e9d2cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sra x8, x12, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x8, 0xe32c53de20d20a03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sra x8, x20, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x20, 0x72013c885b0f67d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000000 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
sra x20, x9, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x16, 0xb38fd0d4a2154a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
sra x16, x14, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x10, 0x9cb625cf7444dea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
sra x10, x9, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x31, 0x00f5d179f1d7cb4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
sra x31, x18, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x5, 0xcc86951291140304 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sra x5, x3, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x18, 0x5a96bf58a276d3d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
sra x18, x10, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x7, 0x20379303734dbc6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sra x7, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x9, 0x46949d3ea0e81571 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
sra x9, x31, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x27, 0xbde5e6e9b521024e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
sra x27, x28, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x31, 0x8b9c8e1296b2c350 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
sra x31, x11, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0xa1db9a90f04b325a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x13, x24, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x13, 0x998e3a772ded95b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sra x13, x30, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x21, 0x29d944c1d384bbbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
sra x21, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x26, 0x2e029d254e2d3c95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000000 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
sra x26, x5, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x2, 0xcfaa71146dc63a8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
sra x2, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x7, 0xebcd7c2c5c82b1ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
sra x7, x17, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x13, 0xac1ea46e1e7788e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000001 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
sra x13, x2, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x5, 0x787fe42b78e56527 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
sra x5, x12, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x8, 0x1e9b68cf0e4d965e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000001 # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
sra x8, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x8, 0x62eaa50a8cfc3188 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sra x8, x23, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x8, 0xb7107185b040e8f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
sra x8, x11, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x5, 0x6fa2ef8942bab313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sra x5, x18, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x12, 0xfe85ce87e5cae047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
sra x12, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x15, 0xc771bbc721442b8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000001 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
sra x15, x5, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x31, 0x22bfb28a72868616 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
sra x31, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x27, 0x7e756136b1a440b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
sra x27, x8, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0xfea1338a884f68e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x11, x1, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x28, 0xcb06e2133670f936 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sra x28, x18, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x11, 0x4963f33902046200 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000001 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sra x11, x20, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x12, 0xcef1485b8f289e03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
sra x12, x8, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x13, 0x7c68057f01b216df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
sra x13, x26, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x15, 0x6deba1ee196d9c97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
sra x15, x24, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x8e6831e63461d25d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9887d5d9a6d5caf9 # initialize rs1
li x7, 0xec4d08f52ad7ff1c # initialize rs2
sra x0, x0, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x28a207c98096debd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x720e7ba7b91762b6 # initialize rs1
li x5, 0x8e16f78449fa7741 # initialize rs2
sra x1, x1, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7dfe6632f766d323 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xebe274906d56c938 # initialize rs1
li x31, 0xbfe5d8531f613b76 # initialize rs2
sra x2, x2, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd238ac70c54c44bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x02181a01bd560e63 # initialize rs1
li x1, 0xf1eb0d631c98dec3 # initialize rs2
sra x3, x3, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x2a11b96ad88e68ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x9237bda9bd22f823 # initialize rs1
li x25, 0x418984ed62ce5e98 # initialize rs2
sra x4, x4, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x9e4820d27b554b1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xbb32ec317027c186 # initialize rs1
li x9, 0xfdc4bc1696b2d329 # initialize rs2
sra x5, x5, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xc98a524844f9cb61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xae3a6251aea5e318 # initialize rs1
li x31, 0x6788a10e81576d57 # initialize rs2
sra x6, x6, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xf897a2a6cfbea036 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xde02c1cc35e83a58 # initialize rs1
li x23, 0x4c5c134506665a8a # initialize rs2
sra x7, x7, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x1e83082d9599a27d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x849acd0066d96a5e # initialize rs1
li x4, 0x608cb95eb98d9701 # initialize rs2
sra x8, x8, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xcd807ccc1fea08e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x911ec6bd92995ea0 # initialize rs1
li x2, 0xb9052433713d63af # initialize rs2
sra x9, x9, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc9c4efe3dd257fa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8d748e163ad11ed9 # initialize rs1
li x28, 0xb9c0e75dae945ab5 # initialize rs2
sra x10, x10, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x8f1f4f4beffa36b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5d8263c5dbefc3ad # initialize rs1
li x14, 0xb7bad6a92df536c3 # initialize rs2
sra x11, x11, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb0ec90dc000c9a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x17fe643d6f49e13f # initialize rs1
li x18, 0x503e41456f1de9d8 # initialize rs2
sra x12, x12, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xc9918094ad3c98e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x91e5e2df2998fce7 # initialize rs1
li x19, 0xed67404742ad77f7 # initialize rs2
sra x13, x13, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x86c63a7fb5d57e3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa100fb9db02818d8 # initialize rs1
li x22, 0xa5cfd5090f0a78ab # initialize rs2
sra x14, x14, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xdca4b4d75aa84a3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8a51235ee5b16816 # initialize rs1
li x11, 0x90d5e9806e2ea1c8 # initialize rs2
sra x15, x15, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x39c3a5e1c48ead62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6a55db452eba7bdf # initialize rs1
li x2, 0xbcf9addc8e299d07 # initialize rs2
sra x16, x16, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x064e76fc0aa392d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x842b2dbb32156820 # initialize rs1
li x18, 0x4ab1c4c93e040211 # initialize rs2
sra x17, x17, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x07e9c3701baf6189 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9f488ac8b9ace7a9 # initialize rs1
li x21, 0x71060a6e7d7988f3 # initialize rs2
sra x18, x18, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x4576c643f2f6aa9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x023522007a3b6d62 # initialize rs1
li x21, 0xda12887bd67ed175 # initialize rs2
sra x19, x19, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x25aebf40dbfe74b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x009653bbb594194c # initialize rs1
li x14, 0xcaa21d7bea37c910 # initialize rs2
sra x20, x20, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xc7abc730b2a68c78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3bbcdf6a2e82ade6 # initialize rs1
li x4, 0x7309472d8dd374d7 # initialize rs2
sra x21, x21, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x2d9bc54e31f370d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x61a329a126f5f763 # initialize rs1
li x19, 0xf50d9ee8a629a80a # initialize rs2
sra x22, x22, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd53a40e63ccca31e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7e5578cc80849391 # initialize rs1
li x22, 0xd5da375fd02d1b33 # initialize rs2
sra x23, x23, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xf7484920a54a1886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc0cc710ee45afec2 # initialize rs1
li x22, 0x8edf06e959b8fea7 # initialize rs2
sra x24, x24, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x7db194bb3b9870c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2afb6181d3928300 # initialize rs1
li x30, 0xae92d3553402a076 # initialize rs2
sra x25, x25, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x8352d4738c67ded8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x86a17bc1fb88dfdb # initialize rs1
li x23, 0x200b47f2ac7f7966 # initialize rs2
sra x26, x26, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xe96525d4647cdd33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4ef133195954cdf8 # initialize rs1
li x14, 0x055fa635a3580a99 # initialize rs2
sra x27, x27, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x4de61733731bd0a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa8080bb00e9347ba # initialize rs1
li x1, 0x631814a8dd49d14e # initialize rs2
sra x28, x28, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xd3d196eda2edc12e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3648e1ebb6dfe558 # initialize rs1
li x1, 0x76b6076bd74b3759 # initialize rs2
sra x29, x29, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x2f23d7dafb55e606 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb7db741b61c0fe4a # initialize rs1
li x4, 0x7b9b0d952dfd7cc8 # initialize rs2
sra x30, x30, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x23666fa79d2cae98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xbccc0274a66f1897 # initialize rs1
li x29, 0xbdeff74cbfd2bae2 # initialize rs2
sra x31, x31, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xd28af2aed492b8cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1716e90de1619724 # initialize rs1
li x0, 0xab670f6f34ffa7b9 # initialize rs2
sra x0, x7, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x7cc24bd825ed5fe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd135f4742e5f52d6 # initialize rs1
li x1, 0xe0f26d06f5e85255 # initialize rs2
sra x1, x25, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xaf8c729b93468245 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x01030b83f1204542 # initialize rs1
li x2, 0x75ab87e77dc35edb # initialize rs2
sra x2, x24, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x1c7e97a548ef5fce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xba85a6b1e5bc6ce3 # initialize rs1
li x3, 0x000291e441896149 # initialize rs2
sra x3, x10, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x787cea7e4c0213b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x52ee0bbd13e7fd56 # initialize rs1
li x4, 0x9e1da9191dede2e6 # initialize rs2
sra x4, x25, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xabad3e3ea093dd7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa9d4491ec4b2a418 # initialize rs1
li x5, 0x97ff595d1af56bbc # initialize rs2
sra x5, x27, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xe421cbe9b16d02ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4334d910644cc414 # initialize rs1
li x6, 0xdd69cf36517871f4 # initialize rs2
sra x6, x20, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x369eea204d67708c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x22a91c4e3191471c # initialize rs1
li x7, 0x61f2eeaf169e7add # initialize rs2
sra x7, x2, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xd3b758d88b54ef93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x89c3ef087eaeb095 # initialize rs1
li x8, 0x611f309312c611fe # initialize rs2
sra x8, x8, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x9ff236d7786403e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa8ea255d106fb6ca # initialize rs1
li x9, 0x761f8a61d1abfc27 # initialize rs2
sra x9, x13, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xce5116f16a188e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xedd469d9f97848b8 # initialize rs1
li x10, 0x58e1576fe2a461c4 # initialize rs2
sra x10, x15, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xe2c84c9a1de17db1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x942ff88b0ecd7547 # initialize rs1
li x11, 0x2879d35425b31fe2 # initialize rs2
sra x11, x7, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xf8e7ca00635ef5e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8208198b96c84abf # initialize rs1
li x12, 0x01bf7ab89778042e # initialize rs2
sra x12, x6, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x928968c352ae863b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd1a5042b7f0116da # initialize rs1
li x13, 0x2adec1c5d6927c49 # initialize rs2
sra x13, x31, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x5873d918845177b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x71963226bcf6c3c0 # initialize rs1
li x14, 0xc01c273926911640 # initialize rs2
sra x14, x10, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x20fa84d289f30b05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbd26dda9675845ab # initialize rs1
li x15, 0xc277e3559f39d39d # initialize rs2
sra x15, x10, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x6a44905e4bc4c1bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2441d0c728d57c36 # initialize rs1
li x16, 0xb3bde5f9640c50f3 # initialize rs2
sra x16, x2, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x12c3e6b16bc473d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc7e09f0df317d23e # initialize rs1
li x17, 0x66c0e1a2f8d19c2b # initialize rs2
sra x17, x16, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x85ef5022332a74e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x21333c1976447306 # initialize rs1
li x18, 0x341c3b3b6241be7d # initialize rs2
sra x18, x31, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x1d05b2e3880aaea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6d88d97b090319de # initialize rs1
li x19, 0xc397a06cc91cba28 # initialize rs2
sra x19, x7, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x8b281b18204f6037 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1803f6a1c961de64 # initialize rs1
li x20, 0x955d5fa3593ee914 # initialize rs2
sra x20, x10, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x80c352378757175c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6d997203c131f961 # initialize rs1
li x21, 0xfd62ffa7bad47871 # initialize rs2
sra x21, x16, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xf7d08ce7ba68715a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3af746e3dc6d78f5 # initialize rs1
li x22, 0xbe3e3a7feb10a578 # initialize rs2
sra x22, x22, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xc38fe62939e7a7f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa3e744b7d56c2e91 # initialize rs1
li x23, 0x702eb84449bcf175 # initialize rs2
sra x23, x1, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xeb2a0f148415ee68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xafff01c0c9d42fec # initialize rs1
li x24, 0x973c9c205774f89a # initialize rs2
sra x24, x20, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x9f05edc4a7acbf90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd3a0817ff54942b0 # initialize rs1
li x25, 0x43c54b75e975be8f # initialize rs2
sra x25, x7, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xd1903d83d270d735 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7b37c509efaeb7cb # initialize rs1
li x26, 0x1e1eab11e3368fad # initialize rs2
sra x26, x8, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x0bdc3cbf98e50bc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xcd6881a419133037 # initialize rs1
li x27, 0x817434015644ba7e # initialize rs2
sra x27, x2, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xd547ced1b8064869 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb67e477342db4433 # initialize rs1
li x28, 0x5e81ff5c1b2ccc55 # initialize rs2
sra x28, x31, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xa5d49a364ea1ae3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x79a9481e767729e6 # initialize rs1
li x29, 0xbc74ef2375ff2452 # initialize rs2
sra x29, x17, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0xaf1747cc5de1468b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x445273ceefa816fd # initialize rs1
li x30, 0xe995813ad045a5b2 # initialize rs2
sra x30, x29, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xf24fc51a8c7f8291 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8212152c4b3f9f4d # initialize rs1
li x31, 0x3a98fded1829f276 # initialize rs2
sra x31, x2, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x9d4c0b05a539ce2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa2680a2fbaadf4cf # initialize rs1
li x0, 0xef576f7631c1a9aa # initialize rs2
sra x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd9143f1b8092057a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x528de49fe3485ecb # initialize rs1
li x1, 0x0e6bdb2a7a72063b # initialize rs2
sra x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xb969f11216268ed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc30bf6d507ccc23f # initialize rs1
li x2, 0xbbe56fe0155c577c # initialize rs2
sra x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xa0948e96c2eec62f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1dcfe5cee4200d27 # initialize rs1
li x3, 0xa546acdf31c89c53 # initialize rs2
sra x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xcb8c8c14367f7dde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe03e841e00c97eeb # initialize rs1
li x4, 0x7e845b03e2603e34 # initialize rs2
sra x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x1486dfda5caab31f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc3748f5f06048a13 # initialize rs1
li x5, 0x1fbfd1e08cdc4bff # initialize rs2
sra x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x76593d7c5576a0f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x72d4cec806f58367 # initialize rs1
li x6, 0xf15f003b93cf2be8 # initialize rs2
sra x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x05ab5c6c0d3fc70b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6b18b151bcf27bc8 # initialize rs1
li x7, 0x1c7a013d0a6e292a # initialize rs2
sra x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x6aade6ac3a47a24e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x53fad9c218b79251 # initialize rs1
li x8, 0x2b2a64ae1a9b0db5 # initialize rs2
sra x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xbecd12b79f3650d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x286f791f1d59ffdb # initialize rs1
li x9, 0xa456c67e84231395 # initialize rs2
sra x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xfa54beac446b8841 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc20d53f90086e603 # initialize rs1
li x10, 0xe60b9da25c6af77a # initialize rs2
sra x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe6a324f18a4e839c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe89e13c1153e528d # initialize rs1
li x11, 0x44c26cf2c33a44a0 # initialize rs2
sra x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xdd10de579cff6247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4a2d4f51e352b622 # initialize rs1
li x12, 0x132643151fdf00ac # initialize rs2
sra x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xf6a10c6b3be298e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc884beab396f001e # initialize rs1
li x13, 0xdf6097666ceb3b00 # initialize rs2
sra x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x6a6400157f62374d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd4cdb9cd08d3ef79 # initialize rs1
li x14, 0x45fbf14b94351ee4 # initialize rs2
sra x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xb20419fc701539a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x605e8964e0649b23 # initialize rs1
li x15, 0x49d492d0b7d1d322 # initialize rs2
sra x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x2a2e3d9fb303d1df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x1cd2b3021a0ef01c # initialize rs1
li x16, 0xa592cbbbe7481ad5 # initialize rs2
sra x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xc94d08560bd15fad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbd8d186701e0df7e # initialize rs1
li x17, 0x8b0e598d6c501c21 # initialize rs2
sra x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xd581fcd64ecdc752 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb27c6faa0d5ee3be # initialize rs1
li x18, 0x93d0deb9e00e0da8 # initialize rs2
sra x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xae0ed7971f25c62b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xae6a4728495963f3 # initialize rs1
li x19, 0x9cccb9f44b767f4d # initialize rs2
sra x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x6eb17ec220dff85e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfdeacc56c1c6e924 # initialize rs1
li x20, 0x3f2c313c89c0779a # initialize rs2
sra x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xea2a12c5df012c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5d3176faa3c1bb72 # initialize rs1
li x21, 0x654c54b7abfa7012 # initialize rs2
sra x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xf15799ca92947222 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbdea3b55412d06ef # initialize rs1
li x22, 0xdfce39f21e1de74c # initialize rs2
sra x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xc39644d01f25c5a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4dd46b2334e9b0ed # initialize rs1
li x23, 0x68d2ab48d9eaf205 # initialize rs2
sra x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x3d4f1284b5454fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb0686e4a5d74b1c4 # initialize rs1
li x24, 0x9bbe05af6ee55b83 # initialize rs2
sra x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x7e7368bcc4d31fc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6579fbca89b7ff43 # initialize rs1
li x25, 0x96a0ba429fab894d # initialize rs2
sra x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x657229bdd49d12df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6e9e3550cf0b48d8 # initialize rs1
li x26, 0xf312125487f0d2e0 # initialize rs2
sra x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x4d728cabe744edac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9d1adc25f7795568 # initialize rs1
li x27, 0x6a5defa4ce2034fd # initialize rs2
sra x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xe61faaf86aa353fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb1a8f02e4cdfae52 # initialize rs1
li x28, 0x8663c1f36f84fab5 # initialize rs2
sra x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xa6ad7459df1d73b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd0906e4e374afa68 # initialize rs1
li x29, 0xc253c5ca39866ef6 # initialize rs2
sra x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xf9710ee7ea9bbd9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa8652f30981ef4dc # initialize rs1
li x30, 0x635fcfecb64da596 # initialize rs2
sra x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x403918ab7964abf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x14959257202aa8ec # initialize rs1
li x31, 0xc1b341bb1cac2d08 # initialize rs2
sra x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x9, 0x06f4d51d928b2af8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8d0d568db8f7d6e8 # initialize rs1
li x0, 0xc7736d6ae5b1810c # initialize rs2
sra x9, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x7e5689280aa59cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x67c20ba1212794ea # initialize rs1
li x1, 0x01c901b1121282bc # initialize rs2
sra x1, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x17, 0x37f556a0955c4ec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x954417aa2a844100 # initialize rs1
li x2, 0x64201cdeb055abb2 # initialize rs2
sra x17, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xb84617ea7df24588 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x926196c9c2f430a3 # initialize rs1
li x3, 0x3c7fae8dde0f2ebc # initialize rs2
sra x3, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x24, 0xa50a41c5297d78c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf4eeacae76e43125 # initialize rs1
li x4, 0xec1764330c577fb7 # initialize rs2
sra x24, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x15, 0x0969237e9f8524aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd812b3e7a1197304 # initialize rs1
li x5, 0x0f05d63a0b597da2 # initialize rs2
sra x15, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x11, 0x43064bea9e1ca689 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x11fe9e994b2eb729 # initialize rs1
li x6, 0x8935b67eaca60d52 # initialize rs2
sra x11, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x4, 0xbd03841c2a5dc08d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x01f20183bf7be6db # initialize rs1
li x7, 0x63c15df478ec4f89 # initialize rs2
sra x4, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x16, 0xe5d217382d7cec8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x39f9f8ff535b5e45 # initialize rs1
li x8, 0x25d9c91fe0641e73 # initialize rs2
sra x16, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x16, 0xb261a9018d09ccc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x209be8183d752a1b # initialize rs1
li x9, 0x0dd5e3fa88928306 # initialize rs2
sra x16, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x27, 0x2f8f148987b9c297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0743bb683ca70916 # initialize rs1
li x10, 0x84e056b671b3566d # initialize rs2
sra x27, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x25, 0x9e4980cff63ed037 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0318bc39b6959164 # initialize rs1
li x11, 0x74915300a38241ec # initialize rs2
sra x25, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x9, 0x6cc8c8998ed12fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf1f92b63da46534a # initialize rs1
li x12, 0x743d1e43bd90e2f6 # initialize rs2
sra x9, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x31, 0x79eb3c503b53a79d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd9c815149fcd253a # initialize rs1
li x13, 0x8fc878cec97db6f5 # initialize rs2
sra x31, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x15, 0x1d596b4df8b52fed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7cba089128aeed5c # initialize rs1
li x14, 0x470a7fa0586b49be # initialize rs2
sra x15, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x8, 0xddc3b776714719dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe8578c64df12821f # initialize rs1
li x15, 0x1e67d17d28cf9299 # initialize rs2
sra x8, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x23, 0x0d4038c4a360031a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x1010f8150eb08d88 # initialize rs1
li x16, 0xffc609e8c6a5eed9 # initialize rs2
sra x23, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x8, 0x3abdf0685dace20d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd9de8a91171de3d7 # initialize rs1
li x17, 0xf3dea1e99a743c7a # initialize rs2
sra x8, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x23, 0x37219417bb944b37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x958fa4be5ebaef76 # initialize rs1
li x18, 0x7512790053ffad1e # initialize rs2
sra x23, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x24, 0x0ae32f654755b8c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x86714021332358c8 # initialize rs1
li x19, 0xc80cbf9583efc4f9 # initialize rs2
sra x24, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x9, 0x40ff287807d314d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xca1f32874e4b78f7 # initialize rs1
li x20, 0x0669c5bea08fe3d5 # initialize rs2
sra x9, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x24, 0x354400ec9a9f0017 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x654567d88f49afb7 # initialize rs1
li x21, 0x8178080b8aafcbf7 # initialize rs2
sra x24, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x28, 0x31ebb399f4efe2f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x36dc999445dcfcfe # initialize rs1
li x22, 0x4178ba177b0beb31 # initialize rs2
sra x28, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x16, 0xfab42dc93f39e5b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa974737dfc484074 # initialize rs1
li x23, 0xc73d444337ff723a # initialize rs2
sra x16, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x21, 0x8f4caf6dbbb1cdff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xabfa984d7d01cd11 # initialize rs1
li x24, 0xe11324c5e1da2d27 # initialize rs2
sra x21, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x26, 0xf0eca28edec8a834 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8a36c956865d7978 # initialize rs1
li x25, 0x99cdafb0c8d1b53d # initialize rs2
sra x26, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x10, 0xf02135331fdb77d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x29007cc9671efd67 # initialize rs1
li x26, 0x13f693b065fb380d # initialize rs2
sra x10, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x22, 0xe39e092e0ab21586 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4ece82db774494b7 # initialize rs1
li x27, 0x5b7ad87d89668793 # initialize rs2
sra x22, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x14, 0x94574cf338947c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa7db4778666eda5b # initialize rs1
li x28, 0x7596c953f75dca3f # initialize rs2
sra x14, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x21, 0x83e39c1ff014b728 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00dca174db832c4f # initialize rs1
li x29, 0xd4ef387f39956081 # initialize rs2
sra x21, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x20, 0x0cc1b65e9c41d2ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3bc8f641106b53e8 # initialize rs1
li x30, 0xdfd8f9a74744cb16 # initialize rs2
sra x20, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x17, 0x49b00c06b18f1f9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf1f6b6c3d81c6c87 # initialize rs1
li x31, 0xb465ecddd58c3967 # initialize rs2
sra x17, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x3dff9d5adbb220a2)
li x5, 0xa1dd73d6982d3c32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3dff9d5adbb220a2 # initialize rs1
li x7, 0xd2d94eba12332857 # initialize rs2
sra x5, x4, x7 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x6fd81ef88ec535d4)
li x11, 0xd07ad2c370989949 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9027e107713aca2c # initialize rs1
li x23, 0xa3467e66ec89f814 # initialize rs2
sra x11, x18, x23 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x1d1b1faa7474fa7c)
li x5, 0x5a9a40b2e221424d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb1d5dd2628002a37 # initialize rs1
li x30, 0x1d1b1faa7474fa7c # initialize rs2
sra x5, x27, x30 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x25f96ac0e9bc0d2e)
li x31, 0x1f64f28f5c46a381 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x02b19219692025e7 # initialize rs1
li x10, 0xda06953f1643f2d2 # initialize rs2
sra x31, x19, x10 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
