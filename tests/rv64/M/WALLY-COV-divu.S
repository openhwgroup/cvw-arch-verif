///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/M//WALLY-COV-divu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.649460
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x30c272e83bcedc8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe27e8d30522ae453 # initialize rs1
li x2, 0x96501ca00e66cb6a # initialize rs2
divu x0, x12, x2 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xda8fddd13fc33abf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5ba0a5a69b68e088 # initialize rs1
li x6, 0x5a42cbbcf6b3e466 # initialize rs2
divu x1, x11, x6 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xed2ed631e8c39588 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc252990a84734059 # initialize rs1
li x1, 0xfa6fa1bee7244347 # initialize rs2
divu x2, x5, x1 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x1c58fdbbb58461f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x386d9557484bfd10 # initialize rs1
li x22, 0xf0697a159a895da0 # initialize rs2
divu x3, x15, x22 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xe5f2f105909e93e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcf58cd483276e989 # initialize rs1
li x9, 0x3d124e30f428974f # initialize rs2
divu x4, x26, x9 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xf22decb60c8fa40d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2e2e67ca5fa56cb4 # initialize rs1
li x28, 0x42d781135066636f # initialize rs2
divu x5, x16, x28 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x6f65b5f2a063addc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa920629f88e91c4f # initialize rs1
li x12, 0x4b815d0b57a79757 # initialize rs2
divu x6, x16, x12 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x349f257ef6206430 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x2a60b9f23ee5021f # initialize rs1
li x5, 0x29de7325d80f3d56 # initialize rs2
divu x7, x6, x5 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9491cb14d1bf6222 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x31aa36ed477eb521 # initialize rs1
li x31, 0x93b164200c1b7318 # initialize rs2
divu x8, x3, x31 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xdd311ae475c89741 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8e03b537e658f773 # initialize rs1
li x21, 0xff1272ad45c32b7f # initialize rs2
divu x9, x9, x21 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x6d87b505c886f139 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb5aeda58e58b9ca3 # initialize rs1
li x28, 0x9890e0a3c2ca9370 # initialize rs2
divu x10, x17, x28 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x32b0c89a6fbce627 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd6461cdd3424549b # initialize rs1
li x28, 0x725a36e5488ff5f9 # initialize rs2
divu x11, x9, x28 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x4377edacb24b99f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5144d7e352274ebe # initialize rs1
li x17, 0x3ca4a404fc011634 # initialize rs2
divu x12, x8, x17 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x83ecc14d44ef5144 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1418c02b1bbabba1 # initialize rs1
li x8, 0x788b61f33817837d # initialize rs2
divu x13, x21, x8 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x4832a1893f823cc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x307ec5ed69708f28 # initialize rs1
li x15, 0xa527f595fe7affe5 # initialize rs2
divu x14, x27, x15 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x513bc563110e1ec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8b3bafd4b117168f # initialize rs1
li x25, 0x635c66df9dc359d0 # initialize rs2
divu x15, x27, x25 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x44b1cea951b29d76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0770a3b9699786e8 # initialize rs1
li x26, 0x8e9f78ca20273bfe # initialize rs2
divu x16, x30, x26 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xeeb4845f6ee613b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcbf02d4956e13f62 # initialize rs1
li x5, 0x9b4b7391ab30503f # initialize rs2
divu x17, x8, x5 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xfbd4dae46ec16c69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf475ab59a9781b28 # initialize rs1
li x31, 0x80febef3ea66b26a # initialize rs2
divu x18, x16, x31 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x0eb52c014dc31148 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x293ea1c40626a24b # initialize rs1
li x24, 0xe242d5ee509addfd # initialize rs2
divu x19, x19, x24 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xd2b17094b83cbcac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7853e1dc76e275ed # initialize rs1
li x13, 0x506c23c4c19119fc # initialize rs2
divu x20, x19, x13 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xcfc86f5dfbf0e757 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x611d921b64069cbe # initialize rs1
li x22, 0x28d9c08c0d6b690c # initialize rs2
divu x21, x12, x22 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xb8ee9672eb92b261 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x125263fd17176ec3 # initialize rs1
li x2, 0x757048cd555dcad1 # initialize rs2
divu x22, x5, x2 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xe8e90f26a8553887 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4193dab657b56037 # initialize rs1
li x19, 0x5d485513c7a3de44 # initialize rs2
divu x23, x25, x19 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xe78621474cd0a2cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3fc2bc0165b715b5 # initialize rs1
li x9, 0x07bd5c7dec391f19 # initialize rs2
divu x24, x21, x9 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x0856c65192c51ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x30808ee617619d0c # initialize rs1
li x5, 0xe944c4544d1b9e0f # initialize rs2
divu x25, x14, x5 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xbf6c163c6a0027ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfd0ba39c3c1a74b6 # initialize rs1
li x25, 0xf5c51801983294e3 # initialize rs2
divu x26, x20, x25 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xe12fd2a2564824d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf5f25aee0e0fa1ee # initialize rs1
li x8, 0xbd181670c796a209 # initialize rs2
divu x27, x28, x8 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xa19416629a640057 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55223877271d0ad5 # initialize rs1
li x26, 0x1ce2298a3d5b641a # initialize rs2
divu x28, x1, x26 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xe272676032c73755 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x59252999e7186222 # initialize rs1
li x4, 0xe8edc25cd3babfe4 # initialize rs2
divu x29, x20, x4 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x1538429d57fc697e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf0a2c586b1d8186f # initialize rs1
li x10, 0xc2b24fa1eefc2df3 # initialize rs2
divu x30, x3, x10 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x667413cd98abc94e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc4acf00fa868c7f2 # initialize rs1
li x23, 0x318c4aba874b8948 # initialize rs2
divu x31, x26, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x4, 0x53d39cb108712bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8397cee350e27025 # initialize rs1
li x30, 0x5720f6217b26c143 # initialize rs2
divu x4, x0, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x24, 0x9f467fa01b0f1c78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe78f4e649d45bd79 # initialize rs1
li x14, 0x2bdb20775fd5a576 # initialize rs2
divu x24, x1, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x4, 0x95d6378f08971289 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7cebe798bc1373c0 # initialize rs1
li x11, 0x34075b47af0afac5 # initialize rs2
divu x4, x2, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x6, 0xa8f3a3b2ad729af5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6b18705d56d9824e # initialize rs1
li x12, 0xbaebfa5fbcd5f122 # initialize rs2
divu x6, x3, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x5, 0x6a6fd07c55eeaded # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x279fa759b046ac17 # initialize rs1
li x13, 0xfcf4af711aca0ff1 # initialize rs2
divu x5, x4, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x27, 0x9753308a4a9f6741 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x646041d944c3afb0 # initialize rs1
li x26, 0x3516aa5a82804058 # initialize rs2
divu x27, x5, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x12, 0xd3b909e2513fd568 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa87511a8c1b33db5 # initialize rs1
li x27, 0xb2037119fb5b18e5 # initialize rs2
divu x12, x6, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x24, 0x391fcc3c3fcb169e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe9a9f0ccab6e9f7c # initialize rs1
li x12, 0xf615978766a58238 # initialize rs2
divu x24, x7, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x28, 0xc79f9d00e0037327 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1fa2704ca0fd6f18 # initialize rs1
li x25, 0x434252fff7fe7978 # initialize rs2
divu x28, x8, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x25, 0x69479cb82dfe43bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x30d05fa032fdf98a # initialize rs1
li x23, 0xb21998e8e51935ee # initialize rs2
divu x25, x9, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x3, 0x268b8b15e9cd4d88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x783662400c2cee78 # initialize rs1
li x6, 0x87f1d8f5b56ffca4 # initialize rs2
divu x3, x10, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x24, 0xb19add76790a442b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x183714e5b7846c84 # initialize rs1
li x30, 0xec735d77436300c7 # initialize rs2
divu x24, x11, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x3, 0xf440656fdccedfaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1a205a1152d0a945 # initialize rs1
li x21, 0x3c5b52b636716a7d # initialize rs2
divu x3, x12, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x2, 0x14c58248aa924fb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd0a1726027e7cf6a # initialize rs1
li x25, 0xb4610774ec1085b3 # initialize rs2
divu x2, x13, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x21, 0x9d9be96f02113059 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9eada0d988ef47db # initialize rs1
li x4, 0xde9df97ffbee2cdb # initialize rs2
divu x21, x14, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x7, 0x7ac28bab580c06ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5cc17176c932916e # initialize rs1
li x30, 0xf934c85d8464ad0f # initialize rs2
divu x7, x15, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x8, 0x3a1d0bee41258048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7d5664bc7bcf3538 # initialize rs1
li x1, 0x5d7f850edad4fee0 # initialize rs2
divu x8, x16, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x26, 0x76fe5f4f9f1811cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9362e49b2e32bc4a # initialize rs1
li x14, 0x6d33cea82a348a67 # initialize rs2
divu x26, x17, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x1, 0x76ab6678ddd6b002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdad4cf1f682854bb # initialize rs1
li x15, 0xc97ac816156c1969 # initialize rs2
divu x1, x18, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x21, 0x4c6d664d7166e5ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5a849ef23374291a # initialize rs1
li x3, 0xe30fdf0d623c7387 # initialize rs2
divu x21, x19, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x12, 0xb843184672b0ca89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6068ce508c190caf # initialize rs1
li x15, 0xf2cbb9c5360c41a1 # initialize rs2
divu x12, x20, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x28, 0xd3e1091eadcfd236 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xbc6492c5af9fc11a # initialize rs1
li x10, 0x4e91f8d65ffecb6b # initialize rs2
divu x28, x21, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x15, 0xdef0630571a5e976 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0996c46d1bc7e699 # initialize rs1
li x19, 0x8494a302a0246e8f # initialize rs2
divu x15, x22, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x13, 0xf89344809aaede55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x1170178daf4419d0 # initialize rs1
li x17, 0x8de07a8addbf40b3 # initialize rs2
divu x13, x23, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x10, 0x9cac5882b2a102e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe9c8247acea170fc # initialize rs1
li x21, 0x7be690f9f813b4b8 # initialize rs2
divu x10, x24, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x8, 0x12be4e8fee3b1653 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8547170400c9d503 # initialize rs1
li x30, 0x3d9ff75372e2343d # initialize rs2
divu x8, x25, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x13, 0x42a5f93613dd3091 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x24f3489abdb05e7b # initialize rs1
li x8, 0x976415fa6d6ec96f # initialize rs2
divu x13, x26, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x25, 0x6b8de6d32939a715 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x37b57439aa072aa1 # initialize rs1
li x10, 0x8349469e7b884d3d # initialize rs2
divu x25, x27, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x10, 0x98aca5d0caf61d02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa54a42912e072379 # initialize rs1
li x1, 0x241d9f0d9837b18b # initialize rs2
divu x10, x28, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x4, 0xf324bda5671fece1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5385fd7cb66148d2 # initialize rs1
li x9, 0xaad66908a0db3b1c # initialize rs2
divu x4, x29, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x8, 0x98b3473bf896cff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0b8d7d49d2b306f3 # initialize rs1
li x13, 0xeb0181e9bd83e928 # initialize rs2
divu x8, x30, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x14, 0x214ee6372a72d562 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5a37eec835b98d13 # initialize rs1
li x20, 0x923afa4c45cb26df # initialize rs2
divu x14, x31, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x13, 0x3244293a07e76839 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdceabbd0c689f0cf # initialize rs1
li x0, 0x28a0bdf923c7ab52 # initialize rs2
divu x13, x14, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x17, 0x7ea02aebbe56077a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x211c0af29584e18e # initialize rs1
li x1, 0xafdf5cdbf16670dd # initialize rs2
divu x17, x24, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x15, 0x7360d9db608df1af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9d00d41c43f66852 # initialize rs1
li x2, 0x2ca9b0cc810ab634 # initialize rs2
divu x15, x17, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x20, 0x0d52743effbe0d1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4e019dd2cb4dc606 # initialize rs1
li x3, 0xaae59e27bf56cad2 # initialize rs2
divu x20, x26, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x25, 0x6c9887d65e5934f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc26731c90c13d95f # initialize rs1
li x4, 0xe5b383f4df389dcd # initialize rs2
divu x25, x8, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x28, 0x4a35d783aa05276e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8c81dfe5310ce1f7 # initialize rs1
li x5, 0x86ac406dfb9ff657 # initialize rs2
divu x28, x16, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x7, 0x2b781981c260ed21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80d00cbb554da2cd # initialize rs1
li x6, 0xacc8719bb7133b29 # initialize rs2
divu x7, x11, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x8, 0x3d3accef47b54335 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x199d0d92aee6a6e1 # initialize rs1
li x7, 0x22140d97b09729c4 # initialize rs2
divu x8, x20, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x3, 0xef9da67cf873ed71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x019a13e8394470c5 # initialize rs1
li x8, 0x1d31c313d9db5e0a # initialize rs2
divu x3, x14, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x15, 0x5782a6e0c0d5e711 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb10f76edf99c10ee # initialize rs1
li x9, 0x998b5336c866f64c # initialize rs2
divu x15, x3, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x13, 0xec33e6cd1f42a1a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x885b6bee967e854d # initialize rs1
li x10, 0xda237358dc98ed64 # initialize rs2
divu x13, x3, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x8, 0xd4582bc17ae95ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc49d9c3e980f56eb # initialize rs1
li x11, 0x6d010d4fac012cf9 # initialize rs2
divu x8, x18, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x2, 0xa0b160e2e542415e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x02e279aef152dbed # initialize rs1
li x12, 0xf719a5b3b8c94468 # initialize rs2
divu x2, x24, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x22, 0x2cdc2d93e9f9eede # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8e26686d7b1503de # initialize rs1
li x13, 0xfbe951a1e3f04889 # initialize rs2
divu x22, x26, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x12, 0xb2b7ee89d31e1960 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc48eb40e4844818e # initialize rs1
li x14, 0xe3be3eb1208b158d # initialize rs2
divu x12, x10, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x3, 0x0029088e2141c948 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x45012eaed06ebaa2 # initialize rs1
li x15, 0xace6a42355146cd6 # initialize rs2
divu x3, x11, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x2, 0xa1767ef4e1a937ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa7176e06b38505b4 # initialize rs1
li x16, 0x8b8448efc86fb6c9 # initialize rs2
divu x2, x27, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x10, 0x9122f62f0a0536d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x321ab163197abd1f # initialize rs1
li x17, 0x4305f22bee510732 # initialize rs2
divu x10, x7, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x30, 0x735c005ba28ce94f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x27f2ea72cd10454b # initialize rs1
li x18, 0x7ce5eec1beb375fd # initialize rs2
divu x30, x3, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x3, 0xae629c98e388232a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x82e7e2d400966a4c # initialize rs1
li x19, 0x019f5175d5714481 # initialize rs2
divu x3, x31, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x6, 0xb15775892c49ad5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x15174dd5de9438d2 # initialize rs1
li x20, 0x703fd859ad371d93 # initialize rs2
divu x6, x14, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x25, 0x8fe406229f924de8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5dabd7abac60d8fd # initialize rs1
li x21, 0xe4dddafb11595e2c # initialize rs2
divu x25, x26, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x2, 0x3c8494cfe597d2fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x16f85a6df0b2d9d0 # initialize rs1
li x22, 0xd16cbe655fa12b3e # initialize rs2
divu x2, x30, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x30, 0xed78cd4ee6dcf9d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfccbbecc771a3fe9 # initialize rs1
li x23, 0x9d5ad2fc630e7fa2 # initialize rs2
divu x30, x31, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x10, 0xfe2c87786329a006 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x97fd899a6687c958 # initialize rs1
li x24, 0xf9ecf0a963416fe0 # initialize rs2
divu x10, x12, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x22, 0xcb2a66fef6d74feb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb8d114b748d5f3fe # initialize rs1
li x25, 0xc51f5ee3b10b6f6d # initialize rs2
divu x22, x20, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x19, 0xbbdbcbec421f40c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x186e701fbe4f1e57 # initialize rs1
li x26, 0x5150fbef10ac53cb # initialize rs2
divu x19, x3, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x7, 0xf75b0a5e13b94fc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x64482ebbd2fda913 # initialize rs1
li x27, 0x1e74f684146b2e6f # initialize rs2
divu x7, x4, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x9, 0xc246bfb4b850b2c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffd4ff8a91152f58 # initialize rs1
li x28, 0x171c46fde66d761a # initialize rs2
divu x9, x5, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x10, 0xc13ca9273b59df4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0c0d01294fa9dd8b # initialize rs1
li x29, 0x572b389a17593864 # initialize rs2
divu x10, x20, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x1, 0xd562a6db501ac3e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5455ec5b099190d7 # initialize rs1
li x30, 0xca26d9f9c52c9f47 # initialize rs2
divu x1, x27, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x15, 0xa0763436da5d7ea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xecba95fe9349a768 # initialize rs1
li x31, 0x1a0282cd149aa23f # initialize rs2
divu x15, x6, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xcfe9569780da4bd2)
li x28, 0x34dff1434fb4ba5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x34dff1434fb4ba5f # initialize rs1
li x0, 0xc758aff905380ecc # initialize rs2
divu x28, x8, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x2b53f00a88da9bf2)
li x4, 0x2b53f00a88da9bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2b53f00a88da9bf2 # initialize rs1
li x8, 0x2b53f00a88da9bf2 # initialize rs2
divu x4, x0, x8 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x836e52b6e3cca422)
li x24, 0x244da33c454972e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x836e52b6e3cca422 # initialize rs1
li x21, 0x836e52b6e3cca422 # initialize rs2
divu x24, x7, x21 # perform operation

# Testcase cmp_gpr_hazard raw test
divu x18, x15, x3 # perform first operation
divu x12, x18, x21 # perform second operation

# Testcase cmp_gpr_hazard raw test
divu x21, x5, x15 # perform first operation
divu x7, x6, x21 # perform second operation

# Testcase cmp_gpr_hazard waw test
divu x13, x14, x31 # perform first operation
divu x13, x1, x4 # perform second operation

# Testcase cmp_gpr_hazard waw test
divu x29, x30, x9 # perform first operation
divu x29, x22, x25 # perform second operation

# Testcase cmp_gpr_hazard war test
divu x23, x1, x9 # perform first operation
divu x1, x19, x21 # perform second operation

# Testcase cmp_gpr_hazard war test
divu x28, x5, x15 # perform first operation
divu x15, x16, x14 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x27, 0xeb969e76ec0c37c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x0, 0xf999f3f4dad4c7ee # initialize rs2
divu x27, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x13, 0x18e555889626d092 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
divu x13, x21, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0xbf07f51fb1c5876f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
divu x3, x14, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0xa772da67545ce85b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs1
li x0, 0x33961da0cd613b41 # initialize rs2
divu x6, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0xf0fecc79162f3184 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
divu x2, x26, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x4, 0xb678b969b5e131f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
divu x4, x22, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x26, 0x29bc29f912a62b33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
li x0, 0x7c6d625f6ec64690 # initialize rs2
divu x26, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x22, 0x54e08d2acc4a272d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
divu x22, x24, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x6, 0x135e918a04e696ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
divu x6, x14, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x23, 0x25ff068034d6a81e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000000 # initialize rs1
li x0, 0x4f1dc72865d2e7d3 # initialize rs2
divu x23, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x23, 0x18d5c77025d2a20e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
divu x23, x3, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x14, 0x594dd19d31d33a1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
divu x14, x6, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x27, 0xfe6aefe4b61709a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x0, 0x69da850a5cc4ef61 # initialize rs2
divu x27, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x23, 0x7ef076d28f45da86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
divu x23, x21, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x20, 0x98dd110da2fa953f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
divu x20, x16, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x5, 0xf0fe95a54926eff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x0, 0x987b614019c154ba # initialize rs2
divu x5, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x12, 0x3adcbaccffa4fc33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
divu x12, x18, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x29, 0x710a9ffc38a10775 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
divu x29, x31, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x14, 0xcaab30922c66073b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # initialize rs1
li x0, 0xe4cd1cb003175b4d # initialize rs2
divu x14, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x15, 0xda0de6453f73a4d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
divu x15, x29, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x17, 0x3304a06986afe0a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
divu x17, x18, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x30, 0xec1f5ae69f636d9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x0, 0xeb9d09c8eae99b7d # initialize rs2
divu x30, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x19, 0x501508acba3ae027 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
divu x19, x30, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x24, 0x9af78eac136dd471 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
divu x24, x17, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x5, 0x8f26c17abb5591ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x0, 0x4dea92847ab53694 # initialize rs2
divu x5, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x16, 0x728c81504d6d1469 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
divu x16, x3, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x2, 0x9f4a91ce5cc81900 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
divu x2, x12, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x18, 0xd0c8f9cb87683109 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x0, 0x98a3d5d6de024add # initialize rs2
divu x18, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x25, 0x125227185a156ca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
divu x25, x4, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x21, 0xc26117a45ace308c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
divu x21, x30, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x6, 0xbce6375716809ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x0, 0x6124e1a5db3f7631 # initialize rs2
divu x6, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x10, 0x1fc2f2818009041d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x10, x13, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x20, 0x41634b0d402b2665 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x20, x7, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x19, 0x8a8be877ea92c551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5555555555555555 # initialize rs1
li x0, 0x7ba04b75fb8af043 # initialize rs2
divu x19, x5, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x20, 0x7d9fb87ab3f77555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5555555555555555 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
divu x20, x7, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x24, 0x4c1da771d75e0fcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
divu x24, x4, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x7, 0xef4517a15d12b677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x0, 0x6fad0f256d7134f6 # initialize rs2
divu x7, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x31, 0xf5fa71ad4417dac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
divu x31, x4, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0x80b1bb505eb4e60a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
divu x1, x19, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x2, 0x25d7eaa383fdd655 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x0, 0x1801953824054793 # initialize rs2
divu x2, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x7, 0xa2797164caada144 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
divu x7, x14, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x21, 0x6a46faf4c212671a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
divu x21, x7, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x5, 0x4f926f1e271c91b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x0, 0x3008d60c24182a39 # initialize rs2
divu x5, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x7, 0x8f1fe4321e3787b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000000 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
divu x7, x8, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x18, 0xebd65227e28dedee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
divu x18, x14, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x20, 0x0db4b7cd127257bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
li x0, 0x1b44f841b815569f # initialize rs2
divu x20, x7, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x1, 0x1e498dd95c0cf262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
divu x1, x21, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x27, 0x00dc3dfff8a8de46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
divu x27, x4, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0xfb0ef263bbe23116 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
li x25, 0xd215ded40667d0a4 # initialize rs2
divu x3, x31, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x3d5fbd9858bc98fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
li x2, 0xaeab59bc7f7a03d6 # initialize rs2
divu x17, x6, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0xe9f8a96401ab29c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x7, 0xa3c37c6503cf0f88 # initialize rs2
divu x24, x21, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x28, 0x241086f68ea9dba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x26, 0x49c65bb8248728eb # initialize rs2
divu x28, x31, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x22, 0x7dd1b8f5ebb92962 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x16, 0x50379b8b00e507a4 # initialize rs2
divu x22, x19, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x9, 0xfb4d48c954c73432 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x29, 0x37a11fdb713f2c96 # initialize rs2
divu x9, x25, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x7, 0xdae4fc0d071bae70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
li x5, 0xdfc94a0302147945 # initialize rs2
divu x7, x18, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x30, 0x5fee8d2b10afb331 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x26, 0x1ce3b0383c659c71 # initialize rs2
divu x30, x15, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x4, 0x4ac23bb3f55dd288 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x9, 0xb75a34d33819aff4 # initialize rs2
divu x4, x3, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x25, 0xcea3c253e8c7e2ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x9f191b8d885108ca # initialize rs2
divu x25, x19, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x22, 0x61116b941810f280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xe3dd33e26556b60f # initialize rs2
divu x22, x4, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x071a2945bb355ece # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
li x2, 0xdba2f4417fa5684b # initialize rs2
divu x26, x10, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0xc6a81ccab6fb91c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x21, 0x6acbc57b682760ee # initialize rs2
divu x19, x3, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0xe4e6612ad6a834c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs1
li x25, 0xef25b895f8fbea5d # initialize rs2
divu x22, x16, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x15, 0x11765745a11822f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs1
li x23, 0x5f85c5a5c7e04213 # initialize rs2
divu x15, x17, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0xb977bcc35da1e365 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x30, 0x4a1088e382a07eb9 # initialize rs2
divu x15, x24, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0xd88d1f545165eb80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9ef3f17236e1335c # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
divu x17, x25, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x17, 0xa6bd0c803b40cc4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe02afa75e59d38b1 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
divu x17, x5, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0x5493fcf216cc8d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xee2d4075772fffcc # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
divu x24, x6, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x13, 0x61ed773c2607d2d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x90aa842e4372d89e # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
divu x13, x17, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x1, 0xff6da603a5d28665 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfcf49580111d3c8c # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
divu x1, x17, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x30, 0x1c00eca7efc73ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x46885f3bb17d5213 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
divu x30, x25, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x31, 0xe6d9c161d53710f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x60ed1ca0df8f2703 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
divu x31, x15, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x24, 0xb6ab172ed23a144c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x47fff85b006c3a32 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
divu x24, x20, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x13, 0xc6620684b6446c30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xefcd8d3d64c3f65f # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
divu x13, x28, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x21, 0xf9447ffc0639f6f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8bccac70515dfb0e # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
divu x21, x23, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x29, 0x74f9a39e6c77d5ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xdc907fe583c44177 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x29, x20, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x27, 0xf86ba57c29274407 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xcf8d3b7e6450438e # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
divu x27, x23, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x28, 0x7c4bb7cd0b44050b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x016a6774dff46f53 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
divu x28, x21, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x10, 0x4b7b4a89baae038c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x787d5928d6f904cb # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
divu x10, x28, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x1, 0xb4c901a11c3ebe29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3a631b79f48baca6 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
divu x1, x9, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x22, 0x1164311207747959 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x431b3dc69ffb9024 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
divu x22, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x10, 0xa408ec1cc0112aad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
divu x10, x26, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x28, 0x62716eb2e94de030 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
divu x28, x19, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x25, 0xdeffebb20cfb2e9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
divu x25, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x12, 0x453a99efadefd25a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
divu x12, x30, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x23, 0xcd490491f6523fd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
divu x23, x28, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x28, 0xfcf04e69f4159440 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
divu x28, x25, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x15, 0x3678b4c56ccc1a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
divu x15, x29, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x5, 0x6f7b811a89f4a10a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
divu x5, x22, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x25, 0xa9dc900b634e00e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
divu x25, x21, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x24, 0xddcb1784113c4701 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
divu x24, x9, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x987e8a79fc48362c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x15, x20, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x31, 0x43b73fdc9ab40b03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
divu x31, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x17, 0xc1357771182321cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
divu x17, x2, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x27, 0x0ea3ada1ddbbb941 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
divu x27, x2, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x5, 0xf4773824b737eaaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
divu x5, x23, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x10, 0x5bd4b25db6f39149 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
divu x10, x31, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x17, 0x297377fc02ebd1ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
divu x17, x9, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x17, 0x9dd8190552bb97e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
divu x17, x22, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x18, 0xf706f870a8c7516f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
divu x18, x17, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x3, 0x761d627036c504a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
divu x3, x17, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x25, 0x45fded57772aa842 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
divu x25, x1, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x30, 0xe75539f983970082 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
divu x30, x6, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x3, 0xcb29f8b869cfce8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000001 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
divu x3, x29, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x5, 0xef79e6fc8a6a2085 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
divu x5, x23, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x13, 0xc5780d83fa137192 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
divu x13, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x8, 0x4c0499ec64b06502 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
divu x8, x11, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0xc64573e5c85dfdcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x23, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x8, 0xc27324657b7002af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
divu x8, x30, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x19, 0x5522f3cd2d3b0a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
divu x19, x10, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x29, 0x936bc1086e5b523e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
divu x29, x12, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x30, 0x7f3822ab5f69a05e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
divu x30, x22, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x5, 0x8b030b4e5e9ee252 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
divu x5, x21, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x10, 0x24c7ab52a6c21439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
divu x10, x8, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x13, 0x848f6fd6dbe073bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
divu x13, x29, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x6, 0xfdeea910bd049610 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
divu x6, x3, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x8, 0xc985195aa11e4859 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
divu x8, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x24, 0x70bb43589a1a1208 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
divu x24, x3, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x6, 0x72f747b05851ea01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000002 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
divu x6, x16, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x17, 0x9a7c787b757ec23b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
divu x17, x26, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x29, 0xc570d7c6b1ebffa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
divu x29, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x24, 0x8c52f8a3f149dbb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
divu x24, x13, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x25, 0x8d6eec1d19a64900 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
divu x25, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0xa9ae9e42c001723e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x13, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x25, 0xbbed79fa4304bcbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
divu x25, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x19, 0x1cac38c1ac956fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
divu x19, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x26, 0x6caa30d3d7b02304 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
divu x26, x28, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x5, 0x4a3c899b74696f81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
divu x5, x29, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x20, 0xcf8495a0d65ca770 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
divu x20, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x12, 0x3bfd038eac4a1972 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
divu x12, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x16, 0x35ec9695b3257841 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
divu x16, x11, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x1, 0x7ff6ea4d15fe3519 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
divu x1, x24, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x2, 0xb0b2d429c8ede8b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
divu x2, x31, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x9, 0x170a0e8c33f26602 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
divu x9, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x1, 0x8b17d33940ac9e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
divu x1, x28, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x25, 0xbb97dcc0a28274d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
divu x25, x21, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x8, 0xebca19b11f37f1ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
divu x8, x31, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x13, 0x192eeff647e80391 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000000 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
divu x13, x3, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x4, 0xda3b6c9ed8077248 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
divu x4, x19, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0xd3af18852e737ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x15, x19, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x25, 0xed63f89ac2d28820 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
divu x25, x19, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x6, 0xed93d22300dedec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000000 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
divu x6, x17, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x1, 0x319dfb46eaa85a07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
divu x1, x22, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x18, 0x23e618d7a0257828 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
divu x18, x2, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x28, 0x787bf62c685c1f53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
divu x28, x13, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x14, 0xaaf9d4f2d9bdef50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
divu x14, x10, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x6, 0x1fbd3d5d80e25f7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
divu x6, x31, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x10, 0x297075004b2971d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
divu x10, x29, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x25, 0xf1e0b5539ff78bcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000001 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
divu x25, x8, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x10, 0x8f068e4d03799532 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
divu x10, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x2, 0x1e733dca4bed9e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
divu x2, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x27, 0xd91629499b8624ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
divu x27, x20, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x23, 0x171f189d477a0915 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
divu x23, x14, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x25, 0x94e410ae7ea044ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
divu x25, x18, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x9, 0xd807301f0177c045 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
divu x9, x23, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x35cabec23b8f6750 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x3, x23, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x25, 0x22bf308d2964d9d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
divu x25, x14, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x31, 0x68631cbbed16ff29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
divu x31, x21, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x30, 0x694be9d6fb6ff94e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000001 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
divu x30, x8, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x6, 0x1acc53b2035de233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
divu x6, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x28, 0x807b8d416ab65e07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
divu x28, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x29, 0x1667ba5d5d979578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
divu x29, x26, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x24, 0x463d199b26f3e54e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
divu x24, x15, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x24, 0xe8704d8a4860ed01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
divu x24, x7, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x30, 0x9d6ab7de64aeb39e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffffffffffff # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
divu x30, x7, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x4, 0x933466336ccff3d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
divu x4, x12, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x29, 0x0d8e349d55b36e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
divu x29, x7, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x18, 0x67876c4b59b612da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
divu x18, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x27, 0xf59138f141536efa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
divu x27, x14, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x15, 0x166c9d0857b0c438 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffffffffffff # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
divu x15, x28, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x14, 0xea340e7b751ed25d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffffffffffff # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
divu x14, x29, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x2c78fe5ed49d09ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x2, x26, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x26, 0x9c08994fffb69644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
divu x26, x20, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x11, 0x31d786c06df21ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
divu x11, x26, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x12, 0x1d846d3937cbdeab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
divu x12, x4, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x8, 0x71310441fa5bb29c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
divu x8, x12, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x22, 0xe8c12ad6199b7e3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
divu x22, x4, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x5, 0x124683bd15f7a560 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
divu x5, x27, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x25, 0x066535cc91bf53e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
divu x25, x13, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x26, 0x5181ab543e98976b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
divu x26, x10, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x8, 0x2f5a65110495ad67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
divu x8, x22, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x27, 0x7164fc5d04aeecef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
divu x27, x15, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x27, 0x380e9d19780c7110 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
divu x27, x5, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0x83ce34f8a051c273 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
divu x22, x27, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x21, 0x3c4409ae9e6a75e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
divu x21, x3, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x29, 0xeb1ad8b8cbf7a9e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
divu x29, x8, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x18, 0xb92c2d73536bb5cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
divu x18, x12, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0xd43c0e2e1bc7f500 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x28, x20, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x30, 0xac3c0db0d92c7275 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
divu x30, x8, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x15, 0xc50b0bfd3e54e67c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
divu x15, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x2, 0x92aebe9909173652 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
divu x2, x27, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x25, 0xc6c8e2fbdc862e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
divu x25, x16, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x10, 0x63f4efbffb9e08e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
divu x10, x22, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x12, 0x405821c21a4b3bfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
divu x12, x7, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x2, 0x9817464ceff55f80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
divu x2, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x12, 0xe9ecc10fe2bced1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
divu x12, x2, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x28, 0x7b724063801393fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
divu x28, x14, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x7, 0x6d8d3b08d110097f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
divu x7, x13, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x29, 0x25a7127a3765280e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
divu x29, x23, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x24, 0x5f643ac7edda1d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
divu x24, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x11, 0x73be5dfc6a6c5ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
divu x11, x30, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x19, 0x864df0f6f469cc95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
divu x19, x30, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x28, 0x5b382f92858df287 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
divu x28, x6, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x4593ac98d0906059 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x18, x28, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x23, 0x0cb193d117d6c0b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
divu x23, x9, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x31, 0x7c666bee7fa25c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
divu x31, x5, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x28, 0x7aa9e353a9ba280d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
divu x28, x3, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x6, 0x4edf7dea1be9e188 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
divu x6, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x18, 0x0ef0d1f8f5657f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
divu x18, x8, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x30, 0x3ce135eab6ef87be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
divu x30, x9, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x14, 0xdda26f2f56a1fe9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
divu x14, x13, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x12, 0xd39fb2e2f76e1d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
divu x12, x9, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x12, 0x350c75727587c01f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffffffffffe # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
divu x12, x21, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x11, 0xa57d2c4b5aca266d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffffffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
divu x11, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x28, 0x31563d399075e061 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
divu x28, x30, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x29, 0xe9f67388a8f3b181 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
divu x29, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x6, 0x220b86b9fb26b35c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
divu x6, x14, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x20, 0xa4af94212d8abbe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
divu x20, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x6, 0xf4808cfc3ad97a68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
divu x6, x24, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0xad0cede7f30f95f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x24, x12, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x7, 0xd68054edeaf0cc89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
divu x7, x9, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x10, 0x3170d408e566b0a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
divu x10, x8, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x29, 0xd0e8c67116fc08dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
divu x29, x19, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x30, 0x8ad33b2d681c5008 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
divu x30, x5, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x13, 0x5b5a5a44ec376d60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
divu x13, x21, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x15, 0x987a81724ac5936c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
divu x15, x25, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x21, 0x5940f568f72d63e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
divu x21, x7, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x11, 0x6dc7c6b89669226f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
divu x11, x18, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x24, 0x8537e96afadffc5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
divu x24, x1, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x5, 0x71c0bd9fc2c5fc9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
divu x5, x9, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x22, 0x8a8ae18f61acc1c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
divu x22, x5, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x14, 0x4b653fb3219ea5d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
divu x14, x16, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x26, 0x1ebc5e0f702f60f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
divu x26, x16, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x23, 0xdc5ff5cf1b4e7123 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
divu x23, x25, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x19, 0x9784cc0c1bfe9e3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
divu x19, x28, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xc984c7a03b68ad85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x3, x7, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x24, 0x1402f352c11a3839 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
divu x24, x14, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x9, 0x0e2e7f313ecee730 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
divu x9, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x8, 0x0615001ae23c3ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
divu x8, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x1, 0x729ea6051ee9cf44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
divu x1, x13, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x27, 0x3c4a1737c57d3c6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
divu x27, x15, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x20, 0x65d4aad54aac5e73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
divu x20, x23, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x23, 0xecce0921a55d1b63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
divu x23, x20, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x19, 0x11b5b8c0ec0e4e0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
divu x19, x21, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x21, 0x5894bba3fcc00451 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
divu x21, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x5, 0x5120e6e81d02844f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
divu x5, x7, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x24, 0xd04aa474351e8b20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
divu x24, x13, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x23, 0x692cfe7d9a34771b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
divu x23, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x2, 0x26e616ac7e294c91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
divu x2, x5, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x18, 0x96bdf69a1105ef3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
divu x18, x8, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x20, 0x27644818be1451e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
divu x20, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xb43738a7ae198aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x22, x3, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x14, 0xac80bcb5d5cc6f77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
divu x14, x6, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x10, 0xe84b605a0925968c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
divu x10, x13, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x6, 0x6eca9f445d4e3498 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
divu x6, x10, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x16, 0xf08a5000a2eb9797 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
divu x16, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x26, 0xa816e6fdae136e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
divu x26, x30, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x1, 0x26acfe362263a2a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5555555555555555 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
divu x1, x9, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x29, 0x339715602f2e22ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
divu x29, x18, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x29, 0xb0693c5a0350b38a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
divu x29, x4, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x1, 0x5fa43ab6de5f1eb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
divu x1, x30, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x25, 0xcb86c2f5bf56c272 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
divu x25, x1, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x25, 0x4c6e5e75f881debc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
divu x25, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x9, 0x7844bb75ad2071e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
divu x9, x8, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x25, 0x8bbbd8ae18e1584a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
divu x25, x10, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x17, 0x1c46403ae502e3ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5555555555555555 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
divu x17, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x14, 0xc29ae53f37373ea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5555555555555555 # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
divu x14, x28, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0a74827549d6eb83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x9, x22, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x9, 0xd8a16a7a4b32a798 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
divu x9, x26, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x9, 0xafc3d63afd40e764 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
divu x9, x20, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x9, 0xbafd0f36d0dc9207 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
divu x9, x13, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x23, 0xf9bcbbdbdd74b815 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
divu x23, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x10, 0xb012cc0190fc4377 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
divu x10, x23, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x2, 0x1ff25ba6aa14ff67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
divu x2, x10, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x24, 0x8e130438009614fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
divu x24, x14, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x4, 0x82029a92e8a51458 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
divu x4, x10, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x19, 0x0968064e4522e5db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000ffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
divu x19, x28, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x9, 0x1910f79370b789c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
divu x9, x1, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x7, 0xf5195fd0d2cf9eea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
divu x7, x12, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x19, 0x4c1c1e562cc8ecf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
divu x19, x16, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x20, 0x0fc38e194ce586b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
divu x20, x23, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x9, 0x99684ed26fb4c774 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
divu x9, x25, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x26, 0xa4f3b742fdfba35d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
divu x26, x20, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x89b7e15a24a4755b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x9, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x2, 0xa2cf7076eb2c2fab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
divu x2, x5, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x20, 0x705f0240f2015705 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
divu x20, x4, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x19, 0x04a3832ac0257b0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
divu x19, x2, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x21, 0x640f1406f2970d47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
divu x21, x17, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x13, 0x90f55a3ac7f535c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
divu x13, x19, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x5, 0x4e3adbfb28849e97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
divu x5, x21, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x5, 0x261ad30005f05e23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
divu x5, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x28, 0xb533d1bf84175858 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
divu x28, x15, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x6, 0xcdc1df191400c35e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
divu x6, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x14, 0x9b71245585e37aac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
divu x14, x30, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x11, 0x8a737666a8d8a1db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
divu x11, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x5, 0x368b9391c005b496 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
divu x5, x1, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x19, 0xdc27ebedf5833bd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
divu x19, x10, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x18, 0xe531e5a40131f282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
divu x18, x14, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x3, 0x988d20b4cd45d405 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
divu x3, x2, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x1a058aa89e4b5c69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000fffffffe # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x21, x22, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x4, 0x725dc81162437418 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
divu x4, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x31, 0xb1503f2c94600cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
divu x31, x9, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x25, 0x54889a62eff80847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
divu x25, x10, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x1, 0xc4287ec48473aa70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
divu x1, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x10, 0x3f822d0ba20e2c81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
divu x10, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x18, 0xfa331367f669d8a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
divu x18, x11, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x5, 0xae98efcfc9c01662 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000000 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
divu x5, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x29, 0x7c71723267c7d3de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000000 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
divu x29, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x27, 0x72460b481ddf3a00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
divu x27, x25, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x21, 0xc2a9acae2808adf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
divu x21, x28, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x10, 0x6c84abc0cf9e34a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
divu x10, x9, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x17, 0x406119f5a5bfca7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000000 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
divu x17, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x13, 0x22ff7984e7f0d657 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
divu x13, x1, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x12, 0xff35a483f7587990 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000000 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
divu x12, x21, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x24, 0xbd8da3138b9ff1aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
divu x24, x10, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xdd2f6fd64e20f19e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x6, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x22, 0x5a7897c1b3b50ee0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
divu x22, x16, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x16, 0x39eaaf835d6d202f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
divu x16, x1, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x11, 0x42716c1bd198b863 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
divu x11, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x11, 0x07d893c9a2f1f623 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
divu x11, x31, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x13, 0x54fad973192804f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
divu x13, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x28, 0x3ca38e27fa985291 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
divu x28, x23, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x2, 0xc89162e3d988e57d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
divu x2, x7, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x11, 0x1097f2f26850e43b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000001 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
divu x11, x10, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x10, 0x540d075d2a961293 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
divu x10, x11, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x16, 0x09f6862c8c0047d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
divu x16, x23, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x1, 0x4c8e7e22ba13f0af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
divu x1, x26, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x25, 0x4162d010428b2cff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
divu x25, x12, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x8, 0x0aec7bcf02c7905f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
divu x8, x21, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x14, 0x8a9bc79421d0a641 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
divu x14, x4, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x19, 0xaa18c9891bef6d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
divu x19, x24, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x8836cea90cb100b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x11, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x6, 0x82da9bffe5faf91c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
divu x6, x24, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x12, 0xa921268f36482a44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
divu x12, x22, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x14, 0xc28947e46005d812 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000001 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
divu x14, x3, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x31, 0x52bf1c9fa98fb3a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
divu x31, x1, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x7, 0x6c885dea83551b7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
divu x7, x13, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x4efb76434fa7043a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb953f78da9096410 # initialize rs1
li x13, 0x1a06b3ce84dd3367 # initialize rs2
divu x0, x0, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xd52f080a4a6f5738 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x763b9cbab272784a # initialize rs1
li x2, 0x7abd7a62dc76246f # initialize rs2
divu x1, x1, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x127d0ed2517f13ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x07a10b36aa6ad144 # initialize rs1
li x20, 0x59ab2e62e9058b62 # initialize rs2
divu x2, x2, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6161fa490b140986 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x553cf495810234af # initialize rs1
li x16, 0xf37ce59e62164f5d # initialize rs2
divu x3, x3, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xa2c62cd8d29a660a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x931e6f0ca88f4237 # initialize rs1
li x2, 0x41518a23277fc07c # initialize rs2
divu x4, x4, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x7ed8a4e9919b0459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xbcf01aff3d5b1296 # initialize rs1
li x23, 0xbb92938b9d682d1c # initialize rs2
divu x5, x5, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x87941fedb4d8cef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa2bd3cd5fa4ecd98 # initialize rs1
li x3, 0x7f2e711ae54ddfaf # initialize rs2
divu x6, x6, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xb0abb363cddfd1b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3d97504a2ca55cbe # initialize rs1
li x7, 0x5df62f18eb50dcb5 # initialize rs2
divu x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x896d5379c014945d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4102b125c771377f # initialize rs1
li x4, 0xd5f01a35749fe481 # initialize rs2
divu x8, x8, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xe437b2aa3719a71a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb27e176feeeda1b8 # initialize rs1
li x27, 0xe7eb6dbe45ad5c9b # initialize rs2
divu x9, x9, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x76f5743cdaba9726 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x43dd0ab5778988e5 # initialize rs1
li x29, 0x38334dbbcd1fcd07 # initialize rs2
divu x10, x10, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x1eacbd9744037db1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6d53a7c01c7150d0 # initialize rs1
li x7, 0xd0a6460616c50dcf # initialize rs2
divu x11, x11, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x96281ab687c39a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0c529524517e0dcb # initialize rs1
li x24, 0xc2fa63cab49ac585 # initialize rs2
divu x12, x12, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd54c3b0dcfba5b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2661c2b28cb792a2 # initialize rs1
li x2, 0x977089cf189e8acb # initialize rs2
divu x13, x13, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x447a6c0d225802cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0a82c32c3074a5f3 # initialize rs1
li x31, 0x371b1c83cd74e379 # initialize rs2
divu x14, x14, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xbe5021b776749e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb38a057fdb5cd58a # initialize rs1
li x3, 0xa7c04800be7bfe56 # initialize rs2
divu x15, x15, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xb0ec43b6c579cf9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc68cc8bdc463bced # initialize rs1
li x21, 0xfbcac80e4f465030 # initialize rs2
divu x16, x16, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x93f667fad8b09cf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbb49520a71f2cb66 # initialize rs1
li x21, 0xdc4c840b42e4e7fb # initialize rs2
divu x17, x17, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x4790f4e92edd3c1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6d3f0ee5cd29d40a # initialize rs1
li x23, 0x12590608d293de9c # initialize rs2
divu x18, x18, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x8667aa6a8f7606a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x10b056e0f687e485 # initialize rs1
li x27, 0x58b057a6abf88455 # initialize rs2
divu x19, x19, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x9901e49ad6a66799 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x166135de9b898fb8 # initialize rs1
li x9, 0xb5e13400630411de # initialize rs2
divu x20, x20, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x8c4eef6f11a24018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xbabbe8c68a2d5c13 # initialize rs1
li x25, 0x621c6f392b71b4f1 # initialize rs2
divu x21, x21, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x601c1f06b024f7ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x30f046b80773d0b4 # initialize rs1
li x6, 0xa658fe005469a221 # initialize rs2
divu x22, x22, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xc4b3bd43edd8bf62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf0d302542b01b512 # initialize rs1
li x16, 0xf0246ea0d59a54e9 # initialize rs2
divu x23, x23, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x59a4bc169fe103c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8d22feea43984450 # initialize rs1
li x22, 0x943421378d20cde7 # initialize rs2
divu x24, x24, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x2c76a202c3f4a542 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4b6328688cc1ae2b # initialize rs1
li x2, 0x1584b2ff703d9912 # initialize rs2
divu x25, x25, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x964821b766821cca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc17980c59bb614ef # initialize rs1
li x10, 0x0240c219a6ee0fab # initialize rs2
divu x26, x26, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb3ace320eaff1f76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7d8e3c065c9b56bd # initialize rs1
li x30, 0xf82e605f429683a4 # initialize rs2
divu x27, x27, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xe623748f0e469c3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd4d61f7183e8cff2 # initialize rs1
li x3, 0x59da0455658ac82f # initialize rs2
divu x28, x28, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x002a6b9ffa89a1eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9e5dec2cb507d57e # initialize rs1
li x8, 0x6e75a59daaaf4210 # initialize rs2
divu x29, x29, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xeb93314dbd770692 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xeaf8f436873dca83 # initialize rs1
li x4, 0x7df386463d9c7118 # initialize rs2
divu x30, x30, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xc91ef20f9a58bfc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9af73cbb5eb4b648 # initialize rs1
li x14, 0x9f89b789da42de6b # initialize rs2
divu x31, x31, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x4aaf6935ed8b07ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd9370dbd03809eaf # initialize rs1
li x0, 0x23c3cd7e36a142dc # initialize rs2
divu x0, x21, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xb18f9e73c13e1a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7def90e98504bf74 # initialize rs1
li x1, 0xb06f96afcee3c6d3 # initialize rs2
divu x1, x8, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xbe39dac9a9e59d85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9697ad3fcd9d8b9d # initialize rs1
li x2, 0x569e159a1c80efb2 # initialize rs2
divu x2, x22, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xc8e8ce430703e530 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3359f98fc59dcfe2 # initialize rs1
li x3, 0x7bd7546daef03f04 # initialize rs2
divu x3, x8, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x4f3900ff5cc2797a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xba02e746858fcebc # initialize rs1
li x4, 0x9e5caa5f3d0f40f0 # initialize rs2
divu x4, x7, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x41daa41dee3d650d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x110cc6d442885248 # initialize rs1
li x5, 0xaae380492b1fec55 # initialize rs2
divu x5, x21, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x1b96822d0f7a2dab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe26a89db8cd26eb1 # initialize rs1
li x6, 0x1ee75036551a69f6 # initialize rs2
divu x6, x9, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x5e2b0d55222d5dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x46e4645515866b4f # initialize rs1
li x7, 0xd582b0c7b76d7e0d # initialize rs2
divu x7, x8, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x56efaa37779c45c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9802abd4d8995809 # initialize rs1
li x8, 0x2771768eadb4540f # initialize rs2
divu x8, x25, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x056c6b1438fd63e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe5cd5be5f2a62d0c # initialize rs1
li x9, 0xee4c88334c7325de # initialize rs2
divu x9, x1, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xfe7d7d889f2c4111 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb3bb0a6d8190e234 # initialize rs1
li x10, 0xf6064a9529f94bce # initialize rs2
divu x10, x25, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xd530d4a2fba0830f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x39f47efeb91831ea # initialize rs1
li x11, 0x43e4022afd86a0cb # initialize rs2
divu x11, x28, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xde875f45f1d77ab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x22c79ece9e40907c # initialize rs1
li x12, 0x5cb94c34034e9c28 # initialize rs2
divu x12, x19, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x3913d2eff5fdf958 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x77c0bde3577c7c57 # initialize rs1
li x13, 0x1a7d4ecba3b71121 # initialize rs2
divu x13, x10, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xc75c89a5ad1c2aac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xdab32e1e205799cd # initialize rs1
li x14, 0x3686e7c03f7e0f8b # initialize rs2
divu x14, x31, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x4502c862897397ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7cafaddce0436198 # initialize rs1
li x15, 0x8bb6caa8a19cca85 # initialize rs2
divu x15, x21, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x8e1870c89b6a640b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x61955bdaa1699254 # initialize rs1
li x16, 0x386598241911712d # initialize rs2
divu x16, x4, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x85db2b61708e2342 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe162bf37f05c334e # initialize rs1
li x17, 0x44972dbc531981b0 # initialize rs2
divu x17, x12, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xd2f1fbec6f328796 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf9df25dcf4d4abd5 # initialize rs1
li x18, 0xb515ad551a0bb119 # initialize rs2
divu x18, x16, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x7f3d49112b34bfc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xced82ec4ef9ca494 # initialize rs1
li x19, 0x44c64c4dff9062e8 # initialize rs2
divu x19, x6, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x6af12eff1c2e7ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6b0c9836e29d7009 # initialize rs1
li x20, 0x4622f5670ef1dbb6 # initialize rs2
divu x20, x8, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x495ee9308ada90b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd35ea6d476cb4411 # initialize rs1
li x21, 0xc9d92e5cf5d55fb1 # initialize rs2
divu x21, x24, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x4096e96febe4d5c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x67538cb3f1ac7ff7 # initialize rs1
li x22, 0x81439fd26ce5655a # initialize rs2
divu x22, x22, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x46c6d8da11719b0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa894624c9009b922 # initialize rs1
li x23, 0x0072c2dc31ed3740 # initialize rs2
divu x23, x13, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x73c017dd7ed72251 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3142e49b7da171f9 # initialize rs1
li x24, 0x24af819c9d444ea0 # initialize rs2
divu x24, x28, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x6b7f185b478d971c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x84ec9d65f9ff59dd # initialize rs1
li x25, 0x833fd9adcb4e961f # initialize rs2
divu x25, x27, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x560e3b41f6b669f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa1f5a97eac780973 # initialize rs1
li x26, 0xdfd36b73e50e011c # initialize rs2
divu x26, x3, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x580a66d372fbdced # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x84f4d6939063ad85 # initialize rs1
li x27, 0xf4341593ef608b1f # initialize rs2
divu x27, x31, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xe56f7752838f32fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4519f7cae6a41e11 # initialize rs1
li x28, 0xcb4aa1decc9fdf23 # initialize rs2
divu x28, x16, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x81478c757b96567c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0b3812e1cbf41b9a # initialize rs1
li x29, 0x212bdfa9510a5fe0 # initialize rs2
divu x29, x2, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x6524d16eaf7d5b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8102727c036d2cd1 # initialize rs1
li x30, 0x2c6310f17f3ea7b1 # initialize rs2
divu x30, x25, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x4fab9569a2dd69f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x44af06b01afb6653 # initialize rs1
li x31, 0x7c78b8d9ea05f616 # initialize rs2
divu x31, x19, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xdc0294a48c41095e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xbf7b782cfc37db87 # initialize rs1
li x0, 0x7a4c1553df86d4b0 # initialize rs2
divu x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x4a202bed54e89805 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x34ec64a010ef84c0 # initialize rs1
li x1, 0xeecaacc25dd6971a # initialize rs2
divu x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x1039abf76e2cf9f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc6b881113faf8275 # initialize rs1
li x2, 0x7c7be70b0879c4c2 # initialize rs2
divu x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xb10d55ceb7a393c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc93ca4b1f927cbf6 # initialize rs1
li x3, 0xfa19a1d546d9335d # initialize rs2
divu x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x5641260ceadc04af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x42b22f35f86ef7d4 # initialize rs1
li x4, 0x08c620a8f1ef62eb # initialize rs2
divu x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x85a7bef3eb44a047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaae51ac477f7de35 # initialize rs1
li x5, 0x1cdf51f8236b2ed4 # initialize rs2
divu x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xb1a00d8f6f741c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3ccb6341292080cb # initialize rs1
li x6, 0xb84e04b274f3411b # initialize rs2
divu x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x285b3f35a8825045 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x63ba894a545d6035 # initialize rs1
li x7, 0xec7e324a3d698a1f # initialize rs2
divu x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x52188ae8e51eab0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd93b6bfc998a9a14 # initialize rs1
li x8, 0x15504acad5b3026c # initialize rs2
divu x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x3406bd47610cda2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6c119da3722a679a # initialize rs1
li x9, 0xdfa00692cb3e26c8 # initialize rs2
divu x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xbd987a8cfac64faa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf878cbfd30db8a37 # initialize rs1
li x10, 0xb344546c76bf60a2 # initialize rs2
divu x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x7be17cece5fbf9fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3866a4e3a60c5feb # initialize rs1
li x11, 0xfcdad07346665af3 # initialize rs2
divu x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xca924d96df328b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x483d31ea91c584ea # initialize rs1
li x12, 0xd39cbf4e0056bd57 # initialize rs2
divu x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x9a11892febe088c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2a82759642d7f018 # initialize rs1
li x13, 0xcaff1e56c928395b # initialize rs2
divu x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xf0431fc2dd923aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa3d2c9451ea46cd3 # initialize rs1
li x14, 0xe5887cd470715da2 # initialize rs2
divu x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x5271011b43fdfd02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3918a9ebca4d0380 # initialize rs1
li x15, 0xb445e8f6d1be1984 # initialize rs2
divu x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xec6f8bdd38c28688 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x310416b6aee9c427 # initialize rs1
li x16, 0x8bd9c5e5e067e80f # initialize rs2
divu x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xb2c94b99f968333b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xc1de43278214d27f # initialize rs1
li x17, 0x792aa0834b967c47 # initialize rs2
divu x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xf62b1f87c4ef66f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe575d42b9aa1ded5 # initialize rs1
li x18, 0x25139e234d9730f1 # initialize rs2
divu x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xfdd1de931cad0603 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x39464f64df6e48cc # initialize rs1
li x19, 0x78c3d97846fa2895 # initialize rs2
divu x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xa6e721e1b07c816f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf7714ec87d6292e4 # initialize rs1
li x20, 0x897bfec2d41f47dc # initialize rs2
divu x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xab8e119c2c0401a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x68d14154dab321d3 # initialize rs1
li x21, 0x4c2821ee2d51de37 # initialize rs2
divu x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x203dfae2923d3a64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x74f02da6a3ed0fc6 # initialize rs1
li x22, 0x8affe3042ef68868 # initialize rs2
divu x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xef023d3e40f67b00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfb82ee939dc5f9a6 # initialize rs1
li x23, 0x2bf033812ec1576f # initialize rs2
divu x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xd090ac625e169df3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe4793b505e824c2d # initialize rs1
li x24, 0x2b2d55d2046be3eb # initialize rs2
divu x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xcd99c10bb0586136 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc295c023c2279d1a # initialize rs1
li x25, 0xffc23ccedb01d075 # initialize rs2
divu x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x2fea7bf06bddc66d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xa4fb8f1ea4e5e7b9 # initialize rs1
li x26, 0x882b49d4008bc3ce # initialize rs2
divu x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xadfa438221ebd2b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xed9e73c63e3259fc # initialize rs1
li x27, 0x1b74c8c8bd374fad # initialize rs2
divu x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x3b303be976453400 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7e21fbc3d81dd8f4 # initialize rs1
li x28, 0xac8d847dfcbb1663 # initialize rs2
divu x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x720d91a40cb9a2b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8734a80e5d90cacb # initialize rs1
li x29, 0x9da63abf1fdcf7da # initialize rs2
divu x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x7d77b4ea030ad554 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa0525612b28754b0 # initialize rs1
li x30, 0x660b2bd7882426a5 # initialize rs2
divu x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xc4a669836765aa56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe33ffdbec2b62934 # initialize rs1
li x31, 0x57febd7d7eabb920 # initialize rs2
divu x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x17, 0x5f5051c93fe9999d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1b7528376ac73d94 # initialize rs1
li x0, 0xf3507efa7af93a21 # initialize rs2
divu x17, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x15, 0x7f715685f9a09eb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5190ec45ceb17c68 # initialize rs1
li x1, 0xd6248d5f6f05f310 # initialize rs2
divu x15, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x27, 0x1b89c03f94c36dc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5aec34856454f2c3 # initialize rs1
li x2, 0xe87d598f8cc59d24 # initialize rs2
divu x27, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x15, 0xf155435167afa1db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xdd3ac601b9a26993 # initialize rs1
li x3, 0x0c8b1475854c918c # initialize rs2
divu x15, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x11, 0x474a6ea86666ad25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x9babb28d56df439b # initialize rs1
li x4, 0xc46e24fab46f1596 # initialize rs2
divu x11, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x18, 0xb2ef8247ceab88fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x1f290f4686e33b30 # initialize rs1
li x5, 0xcbcedbbc3648bda0 # initialize rs2
divu x18, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x29, 0xd24251c342c3ac8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xca59157328a1e4d2 # initialize rs1
li x6, 0x7f60d833dcc31732 # initialize rs2
divu x29, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x13, 0x32aa593c920004a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfc3edf6df8590820 # initialize rs1
li x7, 0x4dc555f8df768834 # initialize rs2
divu x13, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x24, 0x1ac1eb65a53f664b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb89ea944028071bd # initialize rs1
li x8, 0xd08972dfbf0951db # initialize rs2
divu x24, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x21, 0x43fedaef7ed7967b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfae476207986fb75 # initialize rs1
li x9, 0x9d70a67a3fa5f0fd # initialize rs2
divu x21, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x5, 0x25f15bc8356acdc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7510acdfd7ea9971 # initialize rs1
li x10, 0xa74608db6f903435 # initialize rs2
divu x5, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x7, 0x5d55518dc0c4d1d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x535fb31161992228 # initialize rs1
li x11, 0x1468e0ab61dfa85e # initialize rs2
divu x7, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x11, 0x2900a5012f8d919b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe5c268454965479d # initialize rs1
li x12, 0xc8648a4acb7dc6d8 # initialize rs2
divu x11, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x31, 0xb59057fe75d13123 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4c64637466ad88f7 # initialize rs1
li x13, 0x9d8a3993007583d8 # initialize rs2
divu x31, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x10, 0x9727c463e641e88e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8e1d3b3e236ae0f8 # initialize rs1
li x14, 0xcaa61bdd1b27f244 # initialize rs2
divu x10, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x14, 0x39e3ca103dde5ba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x041caa19e08fa8dd # initialize rs1
li x15, 0x3634a7dd140908e2 # initialize rs2
divu x14, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x13, 0x3c1148b421d65654 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x282c1e3bb0128f40 # initialize rs1
li x16, 0x29cc7590e1d04a88 # initialize rs2
divu x13, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x2, 0xc3c189de3d889416 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xba90d95382c0b0f1 # initialize rs1
li x17, 0xd4f5e55e6c448eb1 # initialize rs2
divu x2, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x28, 0x606fc8fd53d33a3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc3e0f67ee308b783 # initialize rs1
li x18, 0x512d1d35029760c6 # initialize rs2
divu x28, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x5, 0xafb20a82aadb48c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe0cf947e53e830ed # initialize rs1
li x19, 0xd1bb68830d85d1f6 # initialize rs2
divu x5, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x21, 0xab0d8914f5b129b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf0a5ccf99dd6f9de # initialize rs1
li x20, 0x1a8057b24e49015a # initialize rs2
divu x21, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x19, 0x657f7469651e0be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4a5c58ad73cbdad7 # initialize rs1
li x21, 0x7a1999d22f1eeb17 # initialize rs2
divu x19, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x7, 0x63352ba5b39fbcac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaad495f153742b1a # initialize rs1
li x22, 0xf9facebc6ccbb732 # initialize rs2
divu x7, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x22, 0x508b7682bc806672 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3499c6162cbce4a4 # initialize rs1
li x23, 0xed5f4cd26d669fb8 # initialize rs2
divu x22, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x31, 0x3611f832485ae305 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x42b78306cd74b281 # initialize rs1
li x24, 0x0cecffb06b864d59 # initialize rs2
divu x31, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x8, 0xfd713e24b39e945f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x957f7a3987135209 # initialize rs1
li x25, 0x8783f808d9bd560b # initialize rs2
divu x8, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x30, 0x4260296bb8d92c4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5569b4a8fed69b3d # initialize rs1
li x26, 0x41a4f8c3f0fb8d0e # initialize rs2
divu x30, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x29, 0x55fb8ecec889fa69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaf663ce8fd523cce # initialize rs1
li x27, 0xfa2f5f6a2317e940 # initialize rs2
divu x29, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x14, 0x45a446b0ec6635a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1532b841af972291 # initialize rs1
li x28, 0x1464ec4d22f798b9 # initialize rs2
divu x14, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x5, 0x88b04b4b3b607825 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xda0f02ae9c0db208 # initialize rs1
li x29, 0xf678069ec6cee6f5 # initialize rs2
divu x5, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x1, 0x3252062b4cad97b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa00d83423712ac4f # initialize rs1
li x30, 0xf190124c1531855a # initialize rs2
divu x1, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x13, 0xa3ba5730f8c96823 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2d0c1931df849039 # initialize rs1
li x31, 0xb349b5fb978d99a4 # initialize rs2
divu x13, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x172544bb0ba2b9cc)
li x30, 0xfde78037ea516f1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x172544bb0ba2b9cc # initialize rs1
li x28, 0x329dcc344d009bf8 # initialize rs2
divu x30, x25, x28 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x7ce17716641de2b2)
li x11, 0x68b591f403b6f5ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x831e88e99be21d4e # initialize rs1
li x3, 0xf7a6ea2551e20575 # initialize rs2
divu x11, x8, x3 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x5adccf3737bb881)
li x13, 0xe8a028dd1b1e6518 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa8dcf04449dc8681 # initialize rs1
li x17, 0x05adccf3737bb881 # initialize rs2
divu x13, x11, x17 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x2157cc10d271645b)
li x27, 0xf1321ebb050abfc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8c6729e0e2c613d7 # initialize rs1
li x28, 0xdea833ef2d8e9ba5 # initialize rs2
divu x27, x31, x28 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
