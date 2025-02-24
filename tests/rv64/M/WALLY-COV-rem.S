///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/M//WALLY-COV-rem.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.670400
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x8d07bca1dd9ecc08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfa3026f73cf077c9 # initialize rs1
li x29, 0x594923ebbb00f30d # initialize rs2
rem x0, x16, x29 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xeb215281ea0e1db2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6be8b48a710a75c1 # initialize rs1
li x8, 0xcb3c9101beadd7f0 # initialize rs2
rem x1, x6, x8 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x0a8e5497ddaefbfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf159fa42de67a299 # initialize rs1
li x15, 0x8f8d9b34152d1e0a # initialize rs2
rem x2, x6, x15 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x86c530f5aa062636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe72798761bc87a32 # initialize rs1
li x22, 0x23a2dacfbc71b65b # initialize rs2
rem x3, x26, x22 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x220fcc0da01c9227 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00a79fe9043c78df # initialize rs1
li x14, 0x2b995a3608624017 # initialize rs2
rem x4, x13, x14 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xac1d96000dbeccc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x732c44d08d3b2b17 # initialize rs1
li x25, 0xa408774738dc70e2 # initialize rs2
rem x5, x14, x25 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x6c8bedca57245b51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1567403a113bf92b # initialize rs1
li x5, 0xb6894d210ff30711 # initialize rs2
rem x6, x15, x5 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x5c4f648e1e150b37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf13c1497f97a598f # initialize rs1
li x14, 0xd889d60ab2a8c637 # initialize rs2
rem x7, x15, x14 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xbec29abd89220ab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x36cf19c844667199 # initialize rs1
li x20, 0x9e0e411cc1a2b7be # initialize rs2
rem x8, x25, x20 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x7e7f36c08d0634d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc0e75f5b2a0adcae # initialize rs1
li x4, 0x6ea17113f0e506a3 # initialize rs2
rem x9, x9, x4 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xdd4fe9c854caae30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd06451e2b0e5b9d0 # initialize rs1
li x5, 0xb346d466a461f600 # initialize rs2
rem x10, x4, x5 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xffd9f31675dceecf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x429d6b3c0a8c7c6e # initialize rs1
li x20, 0xb559a812c26dde67 # initialize rs2
rem x11, x22, x20 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xd55db909031bd32b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf2fe7c0d093eaad5 # initialize rs1
li x2, 0x4f1f7032fa86554c # initialize rs2
rem x12, x22, x2 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xd68089990f0ad6ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf872d96297b80ca8 # initialize rs1
li x21, 0x3d83d1945fca8faa # initialize rs2
rem x13, x29, x21 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x5424d2735467490f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x26b0efbaf5bd24aa # initialize rs1
li x22, 0xf0fc86ccf492b00f # initialize rs2
rem x14, x31, x22 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x1b3969cff727c7f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x51abba547ea9b531 # initialize rs1
li x16, 0x3d9776df49121c74 # initialize rs2
rem x15, x18, x16 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xb8c460a3958952a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0b0b10532b4be806 # initialize rs1
li x18, 0x6a7b6202ec9915f2 # initialize rs2
rem x16, x28, x18 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xd50855ef9f649436 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x70e08d895b645fd7 # initialize rs1
li x2, 0x1f9f90ce11dbbb54 # initialize rs2
rem x17, x28, x2 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xf3d9505f679d6d2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc07c139061ebb7ec # initialize rs1
li x21, 0x76d32ff7f55264a2 # initialize rs2
rem x18, x30, x21 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x9fa265b7ffef066d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc3309718410660c0 # initialize rs1
li x23, 0xb7f9b71fe26c57b0 # initialize rs2
rem x19, x25, x23 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x1af6dd078122a463 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x73540086ef5d145a # initialize rs1
li x9, 0x3a37e6cad4da5a30 # initialize rs2
rem x20, x17, x9 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xd34ae795a8f1c596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x644c2f2d932571d5 # initialize rs1
li x24, 0xf177b09fc5566633 # initialize rs2
rem x21, x7, x24 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x591c060e122cdb7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xcd6b782b45499345 # initialize rs1
li x31, 0x31b11744203897a2 # initialize rs2
rem x22, x23, x31 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xda15d9a706f32884 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x3172b16619e217e2 # initialize rs1
li x12, 0x0ba26c667f226f72 # initialize rs2
rem x23, x25, x12 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x332f1e7bec5852c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xadc1659f075da8da # initialize rs1
li x31, 0xed573c98b47d102d # initialize rs2
rem x24, x18, x31 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x70b9039a090f81bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb213dd9cf8bcba3b # initialize rs1
li x1, 0x3af1e84c271873b0 # initialize rs2
rem x25, x4, x1 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x15f1f2a82319ec7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x05af3eafd1eb13d8 # initialize rs1
li x4, 0x2eb6108e5ea70543 # initialize rs2
rem x26, x8, x4 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x0ed4b401146039dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x254d24c75ebf6153 # initialize rs1
li x17, 0x5044d342ff6c61d3 # initialize rs2
rem x27, x4, x17 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x2f06f48ade17646b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x143e7b9b79884ed3 # initialize rs1
li x28, 0xb1f8160c2a21e79d # initialize rs2
rem x28, x5, x28 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x1ba1c58daf3fe36b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa3923932585afd3d # initialize rs1
li x10, 0x6486f4f63fbd20aa # initialize rs2
rem x29, x6, x10 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xd860cd53d001c11f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xdda4b58d800924ce # initialize rs1
li x12, 0x211f539060e8eb1c # initialize rs2
rem x30, x6, x12 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xa5129ad205ee06c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x426f60287b9522a6 # initialize rs1
li x25, 0x09f396c793ae3483 # initialize rs2
rem x31, x24, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x28, 0xe5675a1c75f70cbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x648c5db6c086b54b # initialize rs1
li x27, 0x1df8cfd454a6112f # initialize rs2
rem x28, x0, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x3, 0x90cb37cb3a8cb4a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7e812c4d76b82401 # initialize rs1
li x9, 0x652a9d3507d60f05 # initialize rs2
rem x3, x1, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x19, 0x7b8402436250d36d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xff16010652aa5e30 # initialize rs1
li x27, 0x9f1500e364ff2671 # initialize rs2
rem x19, x2, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x25, 0x8921e448050542a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd8624fb49c5494f2 # initialize rs1
li x20, 0xcf848f8f99b4b56f # initialize rs2
rem x25, x3, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x26, 0x03e079d051d30b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0f70bec9032f7926 # initialize rs1
li x5, 0x09dea27b9d5702b8 # initialize rs2
rem x26, x4, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x8, 0xaccb6ab3fad9a47b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8696b8a09f07bd96 # initialize rs1
li x9, 0x87fed33bb488699a # initialize rs2
rem x8, x5, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x19, 0xff4728f7c5b5d664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x83b21c68c896ec69 # initialize rs1
li x27, 0xfb0f410c04551dc0 # initialize rs2
rem x19, x6, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x27, 0xf7f6c8d5c5423379 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x72c02043d9aea7bf # initialize rs1
li x28, 0x0940750f8e3491ab # initialize rs2
rem x27, x7, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x5, 0xc60f10c32b785bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcad008c080564580 # initialize rs1
li x26, 0x2d9266895951a75e # initialize rs2
rem x5, x8, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x1, 0x867586fedac4abea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd692729f0ed14616 # initialize rs1
li x7, 0x4782dcd8009de36a # initialize rs2
rem x1, x9, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x19, 0xba0aa1fa5ecf382d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xad7c947ddcd1d526 # initialize rs1
li x5, 0xb12e98819e6c7b6b # initialize rs2
rem x19, x10, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0x8bdfe240f864a54c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8b7c2fde625633aa # initialize rs1
li x14, 0xc43eb9be7bab32fc # initialize rs2
rem x8, x11, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x4, 0x8145cb740dcc30fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x410a66bf0bc1170d # initialize rs1
li x11, 0x814950a3cde46be6 # initialize rs2
rem x4, x12, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x28, 0x7ae789e7f36e5768 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd585facfbd55bdf0 # initialize rs1
li x29, 0xf3b0f8d52e85e791 # initialize rs2
rem x28, x13, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x6, 0x17093d7f377088fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5525af54989bf911 # initialize rs1
li x31, 0x3ec1c4699788aa4d # initialize rs2
rem x6, x14, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0x103a7c894bea3092 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc770e1c5d18c860c # initialize rs1
li x6, 0x73ab2702d8a60a72 # initialize rs2
rem x10, x15, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x4, 0xc2160455d9d52d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa29c0be0a03307ed # initialize rs1
li x11, 0xfe6f7ef5a8807428 # initialize rs2
rem x4, x16, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x5, 0xa916dcd3bd90b042 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xedc18bd7efeceac7 # initialize rs1
li x14, 0x5b627274dcfacd3b # initialize rs2
rem x5, x17, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x30, 0x24a44b8c099e8b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xbee8301d1015052e # initialize rs1
li x29, 0x9981bd48f74e38c5 # initialize rs2
rem x30, x18, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x29, 0x8e26a3457af9a56d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xd5994560e75ec25e # initialize rs1
li x11, 0xac66852b9cff9b61 # initialize rs2
rem x29, x19, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x14, 0xfd9d9704a581f4fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9218dc31a716d480 # initialize rs1
li x15, 0xece74b19f4106c42 # initialize rs2
rem x14, x20, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x15, 0xf856c08340d61ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4fe19088188a96ed # initialize rs1
li x27, 0x8610aa8494d0999e # initialize rs2
rem x15, x21, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x26, 0x7506577d4313f07f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x62eaa935f8fc110e # initialize rs1
li x24, 0x9107c10ad7e0c82c # initialize rs2
rem x26, x22, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x30, 0x3931b7544bfe0d73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x52930d6477238d2f # initialize rs1
li x10, 0xa733b7ce705585d2 # initialize rs2
rem x30, x23, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x15, 0x2f5cba65b8e453af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd1a616aea7804fef # initialize rs1
li x25, 0x6a6ef6034eeaf6f4 # initialize rs2
rem x15, x24, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x15, 0x548b717019cd32a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x617f8c536de25259 # initialize rs1
li x19, 0x74fc59baee2b09f1 # initialize rs2
rem x15, x25, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x8, 0xdff554dd8921b30d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2789ad31ae834814 # initialize rs1
li x30, 0xa5477020b5aecece # initialize rs2
rem x8, x26, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x30, 0x60d3e70c4a190ada # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9206b254cd41c029 # initialize rs1
li x6, 0x1a1aa880fc28c147 # initialize rs2
rem x30, x27, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x7, 0xd5631c9de908a9b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x70f2d70d9479cb12 # initialize rs1
li x4, 0xc4a081978d58726c # initialize rs2
rem x7, x28, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x6, 0xa0705d5dad4dedaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd7ddc68ec752d90e # initialize rs1
li x27, 0x112e00aece6b2bed # initialize rs2
rem x6, x29, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x23, 0xc7cc210c15966556 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2f6ca6467cd8d795 # initialize rs1
li x27, 0x5101aa9198ce4ff9 # initialize rs2
rem x23, x30, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x6, 0x651fb65b2cd0fef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd796fc1080e7435e # initialize rs1
li x19, 0xc1f36d1a6776bfeb # initialize rs2
rem x6, x31, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x31, 0xddab3ea3a6095fde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x422fef3f826d2d6d # initialize rs1
li x0, 0xf28a21676134d450 # initialize rs2
rem x31, x12, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x14, 0x5e3d48e805b882b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x560272921577d521 # initialize rs1
li x1, 0xde172bb7a45b763b # initialize rs2
rem x14, x7, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x13, 0xd31dbfc7de42ab68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1b392442615fdcf8 # initialize rs1
li x2, 0x60c62c7963382694 # initialize rs2
rem x13, x25, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x1, 0xce22216b87615622 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x802c67ecd073d25b # initialize rs1
li x3, 0xff2dc50559d0068c # initialize rs2
rem x1, x30, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x14, 0xbca6f7e2faf8d1c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xda4abbe8b93b7d2c # initialize rs1
li x4, 0x8106edbd7fdfd114 # initialize rs2
rem x14, x25, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x21, 0x3c43103affe38139 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd1e8d43e27abb33c # initialize rs1
li x5, 0x02e24f3b02a6b236 # initialize rs2
rem x21, x29, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x3, 0xcb691b8049fb463b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x708957ff431d2c76 # initialize rs1
li x6, 0x0161e9b1f8832e20 # initialize rs2
rem x3, x21, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x25, 0x57f5c906a307dbe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6a6ee645a5e57e85 # initialize rs1
li x7, 0x158d61aff1e4a99d # initialize rs2
rem x25, x30, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0x4c73aecf15cdf4d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x48afae9a8809714d # initialize rs1
li x8, 0x2ac7fd7fc5f9e97e # initialize rs2
rem x2, x29, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x21, 0x3c37ca5e26cd36ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3511203469070ceb # initialize rs1
li x9, 0x16dd8e7ceb61bdfc # initialize rs2
rem x21, x6, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x8, 0xdca5cd760b2e54ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa9ae032dab94ba89 # initialize rs1
li x10, 0xdd3917c58318312b # initialize rs2
rem x8, x1, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x25, 0x2e7032722e7d1dea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd96cc8f25bbaccbc # initialize rs1
li x11, 0x2fa0a3ded4620b73 # initialize rs2
rem x25, x29, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x19, 0x7ae8fd8fb55bc4f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x30b216e1782667c4 # initialize rs1
li x12, 0x70a2e00c91ac233a # initialize rs2
rem x19, x6, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x30, 0xe13d542573a0b177 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3581ed5967ce30e3 # initialize rs1
li x13, 0x9dbb5cde64a4c3fa # initialize rs2
rem x30, x15, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x12, 0xbb93963134d8c58c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x53e1a7674641a381 # initialize rs1
li x14, 0x71cf66cbd6e49556 # initialize rs2
rem x12, x11, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x27, 0x37348f8a39e022d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8102d58e4ddb5d68 # initialize rs1
li x15, 0x30a6a809e64de06d # initialize rs2
rem x27, x3, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x20, 0xbb37c885f9173fc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x20234a972b40983f # initialize rs1
li x16, 0xc5b68b7f5626b777 # initialize rs2
rem x20, x1, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x28, 0x3435605017ae87b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6603747a46ea613a # initialize rs1
li x17, 0x4ca816fbd6cc3119 # initialize rs2
rem x28, x27, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x23, 0xec914c76c31dd4e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x94fd106d8fb494b6 # initialize rs1
li x18, 0x4e1e10c072667e5e # initialize rs2
rem x23, x5, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x10, 0xaf17e87d55123611 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xcf184b7a3389e676 # initialize rs1
li x19, 0x56b50ba30ac4569d # initialize rs2
rem x10, x13, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x13, 0x1d3da5420d6ff0d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb976a726e4cb4f16 # initialize rs1
li x20, 0x1d6b154e9bf70541 # initialize rs2
rem x13, x28, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x17, 0x87747e9996ddfcf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x975bc735bd50bf18 # initialize rs1
li x21, 0x91596cc98333fbc3 # initialize rs2
rem x17, x25, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x16, 0x1488fa27505d4747 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x71937ccc2d821164 # initialize rs1
li x22, 0x910f8c359e8c54f3 # initialize rs2
rem x16, x13, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x2, 0xa174f479b726c024 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x25a0f58ed831a8af # initialize rs1
li x23, 0xd08c02f2f740734f # initialize rs2
rem x2, x7, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x22, 0xf99602202c2df302 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa85869067688cc9d # initialize rs1
li x24, 0x335115dc0bd516bb # initialize rs2
rem x22, x18, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x15, 0xd3f7349589be24f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0329ff4a0ffa3f75 # initialize rs1
li x25, 0x451ea50084ed46dd # initialize rs2
rem x15, x29, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x3, 0x41a8f34bb46c8fec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5cb5ff3e224873c2 # initialize rs1
li x26, 0x64a6ea0bd74274b6 # initialize rs2
rem x3, x21, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x28, 0x505c271e0107652b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd04d356130baa9f9 # initialize rs1
li x27, 0x06b2bbf1115950b6 # initialize rs2
rem x28, x2, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x1, 0x1e95ff770a1c1357 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe7c4d52f62cd2848 # initialize rs1
li x28, 0xe96af0156ebd88e9 # initialize rs2
rem x1, x8, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x9, 0x32295b581ce8ae30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x41ed4a1a53bf28e0 # initialize rs1
li x29, 0xff6ce3473e869098 # initialize rs2
rem x9, x8, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x25, 0xa6bd331f1de1b981 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x246203b564e15b98 # initialize rs1
li x30, 0xb148571370efe0ac # initialize rs2
rem x25, x8, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x15, 0x311da4837d19b337 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd04600afc692a8dc # initialize rs1
li x31, 0x9ec6e9fbf65d4750 # initialize rs2
rem x15, x5, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xb080e991511b6a01)
li x27, 0x9c34756575836067 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9c34756575836067 # initialize rs1
li x0, 0xba023a0fd6903a1a # initialize rs2
rem x27, x3, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x6a0bcf04d8aba7bd)
li x23, 0x6a0bcf04d8aba7bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6a0bcf04d8aba7bd # initialize rs1
li x6, 0x6a0bcf04d8aba7bd # initialize rs2
rem x23, x0, x6 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x5252f30587c91599)
li x7, 0xc51bac49920ca97f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5252f30587c91599 # initialize rs1
li x15, 0x5252f30587c91599 # initialize rs2
rem x7, x5, x15 # perform operation

# Testcase cmp_gpr_hazard raw test
rem x9, x13, x28 # perform first operation
rem x17, x9, x22 # perform second operation

# Testcase cmp_gpr_hazard raw test
rem x28, x29, x14 # perform first operation
rem x12, x10, x28 # perform second operation

# Testcase cmp_gpr_hazard waw test
rem x15, x11, x18 # perform first operation
rem x15, x4, x8 # perform second operation

# Testcase cmp_gpr_hazard waw test
rem x29, x1, x12 # perform first operation
rem x29, x10, x30 # perform second operation

# Testcase cmp_gpr_hazard war test
rem x28, x5, x2 # perform first operation
rem x5, x22, x5 # perform second operation

# Testcase cmp_gpr_hazard war test
rem x6, x3, x30 # perform first operation
rem x30, x24, x4 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x8, 0xf22f2bef69fe29a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x0, 0x090e29ed4ea902e0 # initialize rs2
rem x8, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x15, 0xf80ca4ba72d2b4df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
rem x15, x3, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x18, 0x84897f6a2da3fbd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
rem x18, x7, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x16, 0x4307f794648f3611 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x0, 0xd7d0f3ea00ac185b # initialize rs2
rem x16, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0x1070627bd9b06f39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
rem x27, x10, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x21, 0x06b1ff8e113795c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
rem x21, x22, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0x98930413d537b131 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs1
li x0, 0x384a11c49e7d49ba # initialize rs2
rem x17, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x26, 0xc4f76a5a8137c90b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
rem x26, x9, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x12, 0xb373bc392303d297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
rem x12, x9, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x6, 0x34f2fd1ab9a7b267 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x0, 0x0cae5fe38b0afd6c # initialize rs2
rem x6, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x11, 0x8ca432e209b16238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
rem x11, x27, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x30, 0x0de3979d1956f6e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
rem x30, x1, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x1, 0x8d4b4a64222dae34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x0, 0x8a23e91e881a4c6e # initialize rs2
rem x1, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x7, 0x4ae8606b779d990b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
rem x7, x27, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x25, 0xcd7109bcd8c0c942 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
rem x25, x7, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x27, 0x1267cd27994548bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs1
li x0, 0x1d49eebf343eebe8 # initialize rs2
rem x27, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x20, 0xf9df2edc13851bce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
rem x20, x11, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x10, 0x75120ccfe7a6e9e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
rem x10, x24, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x21, 0x72a578d13b2e6377 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x0, 0x2f5c39c364d50863 # initialize rs2
rem x21, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x28, 0xd20206fd80ef6b8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
rem x28, x1, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x29, 0xfb0a14135aba9c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
rem x29, x12, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x28, 0xb9c6120f161d0e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x0, 0x513d7e7be7fa1c58 # initialize rs2
rem x28, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x24, 0x26ba39b0d179070f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
rem x24, x17, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x8, 0x5c61d6a092bef32a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
rem x8, x25, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x18, 0xe1ac41a7e062d3a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x0, 0x2672095b821af65c # initialize rs2
rem x18, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x27, 0x567bfb25d3fd985f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
rem x27, x17, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x22, 0xd8da6ab3448ab236 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
rem x22, x13, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x16, 0xa3e47c590709241b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x0, 0x1fd386ba4b731e4f # initialize rs2
rem x16, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x31, 0x015abdd75cc95daf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
rem x31, x6, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x19, 0x0400679120a1fbdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
rem x19, x30, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x9, 0x658ed9b7da3a320f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x0, 0x7e7e6ede81562f16 # initialize rs2
rem x9, x7, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xc7c0c8b839d68734 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x12, x5, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x23, 0x4807576a10d72f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x23, x4, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x10, 0x3d5604bb9d5811a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
li x0, 0xd3fb22c3dbcbc070 # initialize rs2
rem x10, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x1, 0x6721983ab8d8aeaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
rem x1, x6, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x23, 0xf9c7244fe1660add # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
rem x23, x10, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x5, 0x9349fabc69999246 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x0, 0x834c8fa7d9432b69 # initialize rs2
rem x5, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x8, 0x6361999718400dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
rem x8, x18, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x5, 0xa675d5033c1d2250 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
rem x5, x28, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x27, 0xf58f267941cf36c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
li x0, 0x64781b3ed47faa4c # initialize rs2
rem x27, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x21, 0xa79528ed740cd902 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
rem x21, x27, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x22, 0xda57853039e7fd70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
rem x22, x13, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x8, 0xbb8fca7d6b33d10c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x0, 0x4333cd773257ab87 # initialize rs2
rem x8, x16, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x31, 0xb5a38eb49538f505 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
rem x31, x25, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x13, 0x44ba988eba51c844 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
rem x13, x29, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x1, 0x5887c1924c68bfd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000001 # initialize rs1
li x0, 0x6f8367a11ac0eb67 # initialize rs2
rem x1, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x23, 0x2133a0e35526bd2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
rem x23, x30, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x6, 0x6e3ed6f5451f1e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
rem x6, x1, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0x5a23ad17e7d41bb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x19, 0x6c4df874845dc116 # initialize rs2
rem x25, x13, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0xf04ab8b40dfbb5fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000001 # initialize rs1
li x23, 0xd7e149c3c095f7b6 # initialize rs2
rem x30, x7, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0x4a55d4f7517bc6bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
li x1, 0xbf9d01121ef43e6e # initialize rs2
rem x31, x11, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x16, 0xdcfa7661605fca81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x5, 0xd1464c66ef526b89 # initialize rs2
rem x16, x23, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x30, 0xdc2e78f42f67c029 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x28, 0x2aeb3f18a8485733 # initialize rs2
rem x30, x20, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x26, 0x935d79a1160b05ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x8, 0xfc5f01d2b859b474 # initialize rs2
rem x26, x13, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x21, 0xfabc2ebde0a875e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs1
li x12, 0x803e12700a9a4d14 # initialize rs2
rem x21, x31, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x14, 0x4ee9af5ffaf4bb97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x3, 0xd9c730700fbbf68c # initialize rs2
rem x14, x11, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x7, 0x3406daf8425f772a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffffffffffe # initialize rs1
li x18, 0xc8e0748d7c8bea1b # initialize rs2
rem x7, x2, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x9, 0xe813443bc3176567 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0xf04f0370dd75f20e # initialize rs2
rem x9, x8, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x5, 0x035d3aec09912313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xb2bdf641d61baf30 # initialize rs2
rem x5, x2, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x21, 0x0ffa643663704c2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x11, 0xa1bf231c288a576c # initialize rs2
rem x21, x20, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x6, 0x2838616595c1a1aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs1
li x31, 0xebca5566ae9c8bc7 # initialize rs2
rem x6, x13, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x30, 0x669f74e129be214a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
li x28, 0x4dd5fbf4f85ac55d # initialize rs2
rem x30, x18, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x2, 0x29b2c48a3bfba9e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000000 # initialize rs1
li x19, 0x6130c3719be17057 # initialize rs2
rem x2, x8, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x24, 0x3d92cc6f46d6970d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
li x10, 0x195a2f0273011253 # initialize rs2
rem x24, x15, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x5, 0x24a7e7a7a74afd21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x58483cdbebc97df7 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
rem x5, x29, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x25, 0x5d7518c3faf47ea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb16a6fb4056e263f # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
rem x25, x30, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x5, 0x792171f92cfea4e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc6347f89015bc055 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
rem x5, x19, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x15, 0x2127cdaf4923d7e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc2b104844f17563c # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
rem x15, x18, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x9, 0x31530fce8bfef45c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x2538335809259ad1 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
rem x9, x6, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x22, 0x54361e220a441193 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x32579ccd5c84d4ec # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
rem x22, x13, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x25, 0x9b9f9a0cd9c33559 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xff612aa8641c6cb7 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
rem x25, x4, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x9, 0x106d63f23fe60ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc1ae8ffad528fbfb # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
rem x9, x14, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x8, 0xb65b3a664b6df10d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc6c5a76fd237d6b2 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
rem x8, x30, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x29, 0xf229b8beceb3f068 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fef8f8f92b93e9c # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
rem x29, x3, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0xa6508a3d064aca5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xdca24d9d623ad347 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x20, x25, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x14, 0xb2d93745ea890f38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5984e6bec663e7ca # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
rem x14, x3, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x28, 0x67296e4af8b3d35c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x28538150a4b656f5 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
rem x28, x2, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x21, 0xe756ec26f879181c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6fb6406d50fb467b # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
rem x21, x2, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x7, 0x2d2d5968648d7dcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4ddcdcd0c6bcd134 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
rem x7, x26, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x14, 0x8574b43e41133737 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4cf552a3b3905b14 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
rem x14, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x18, 0xde4b25c3db097944 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
rem x18, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x27, 0xe6871bf43e2cac5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
rem x27, x6, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x30, 0x1680ab89e2df8644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
rem x30, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x3, 0x5aaada1d78e2f915 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
rem x3, x4, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x30, 0xf7b3e704e900f7a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
rem x30, x18, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x31, 0x46a6ae85368db912 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
rem x31, x14, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x2, 0x262d7cff50a5969c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
rem x2, x29, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x24, 0x08793cbcc46b3f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
rem x24, x13, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x16, 0x4b9ab376a48c358e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
rem x16, x30, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x21, 0xfd451607a3ddafdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
rem x21, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x7fae83d55006bd37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x31, x12, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x3, 0xfcf46233cb1c81ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
rem x3, x11, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x5, 0x08b3bc195e1aaa8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000000 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
rem x5, x23, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x24, 0xd560b0ecd370f142 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000000 # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
rem x24, x3, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x15, 0xbcd2bf13488fa36b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
rem x15, x17, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x6, 0x0f0cece606ea9f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
rem x6, x28, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x28, 0xbd512a526c0b2589 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
rem x28, x16, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x1, 0x851d01fd1033a59f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
rem x1, x9, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x24, 0x2c5c5d36bc042d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
rem x24, x25, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x7, 0xd2a0712437f578b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
rem x7, x20, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x15, 0x840d6099c43decaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
rem x15, x2, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x21, 0x97c1359dd3836305 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
rem x21, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x12, 0x2606bbf0a174439e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
rem x12, x15, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x8, 0xdd31dd62138abc24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
rem x8, x30, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x20, 0xc689908c8bdefebe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
rem x20, x23, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x2, 0x47be4aa9bbe51ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
rem x2, x21, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xf8f6096284c77b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x3, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x16, 0xf86c493ec6e65e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
rem x16, x14, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x14, 0xdebf7cbf87d22fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
rem x14, x19, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0xb212db524e542da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
rem x20, x19, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x2, 0xe9d78317f2b17c18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
rem x2, x16, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x23, 0x4f927b31a770ac85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
rem x23, x7, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x16, 0x55770f691e6f64bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
rem x16, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x15, 0x0626367171a50c72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
rem x15, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x19, 0xefc0dc45696f8b5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
rem x19, x1, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x18, 0x6d127a0efd0e0738 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
rem x18, x29, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x15, 0xa2762bb980315e1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
rem x15, x29, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x17, 0x172e5aa7acaad313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
rem x17, x28, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x17, 0x51a79ad8f97b969c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
rem x17, x21, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x30, 0x180a7551b1a733d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
rem x30, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x18, 0x80a4993d80db081f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000002 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
rem x18, x16, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x22, 0x3e9449af2a1b9660 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
rem x22, x9, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x6e332d161ac301bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x18, x1, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x3, 0x10180e2d1f795c1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000002 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
rem x3, x10, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x11, 0x7abae240a8237d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
rem x11, x2, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x31, 0x8d9973bf95add090 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
rem x31, x20, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x13, 0xa93a5b1f86a0722f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
rem x13, x28, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x31, 0x157b11110c09cd00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
rem x31, x9, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x1, 0x74c65c0f60c2e620 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
rem x1, x3, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x17, 0x176d1c797c1ab311 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000000 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
rem x17, x4, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x25, 0x97e6ba9e79d7de1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
rem x25, x30, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x8, 0x26923ededdcc0113 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
rem x8, x24, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x5, 0xba65b8a1331e72a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
rem x5, x24, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x5, 0x33939be00ab3ec97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
rem x5, x2, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x15, 0xdfffca8a2a5d1ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000000 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
rem x15, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x11, 0xca98c4bc1f320240 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
rem x11, x6, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x21, 0x260a7fd3c28790df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
rem x21, x15, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x2, 0x07f9552971a3578c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
rem x2, x27, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0xba5a9d4fdc759d7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x13, x22, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x6, 0x3b30bdab3a7ac66b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
rem x6, x25, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x1, 0x9b65c1c703c793ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
rem x1, x26, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x28, 0x22bc1597d5231d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
rem x28, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x23, 0x37b74a284322e28a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
rem x23, x26, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x14, 0xa645d625ac6993d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
rem x14, x6, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x23, 0xfec5453a23f0280d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
rem x23, x29, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x4, 0x573ce24e184ba2f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
rem x4, x29, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x18, 0x3f86fdd8a563a990 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
rem x18, x9, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x28, 0x0f676934de9f534a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
rem x28, x1, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x14, 0x68ae82443c9b108e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
rem x14, x28, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x23, 0x0f7857cc53bb47cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
rem x23, x19, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x28, 0xd3a91e9726f196b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
rem x28, x6, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x13, 0xab4202a361e7cc16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
rem x13, x10, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x4, 0x3826d1901e8ddc96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
rem x4, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x27, 0x7b8672112f0fc580 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
rem x27, x13, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x6c60d668ad8a5137 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x5, x22, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x5, 0x32452f36ab5dec7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
rem x5, x21, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x3, 0xe1c9144f8ea974ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
rem x3, x1, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x17, 0xdbdac05869d2ae19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
rem x17, x6, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x18, 0xeeabc535af738480 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
rem x18, x20, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x14, 0x129e5ba7a1abaeca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
rem x14, x4, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x8, 0x3426ba6095af724f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
rem x8, x18, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x7, 0x7a33ab72a752914b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
rem x7, x6, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x13, 0x0935885cec8563e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
rem x13, x19, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x15, 0x3547292837f6f80f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
rem x15, x13, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x19, 0x1cccb369d0416039 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffffffffffff # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
rem x19, x28, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x3, 0x991ccea0daf77255 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
rem x3, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x17, 0xb00b9e3f1f6ab6ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
rem x17, x18, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x19, 0x1b51c0c48da41962 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
rem x19, x5, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x15, 0xc8469d442623d0e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
rem x15, x24, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x6, 0x99940cd40ebca361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
rem x6, x22, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x3fb1cc7a941fa51c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x7, x12, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x14, 0x24da083d1fe28ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffffffffffff # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
rem x14, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x5, 0x7d4fbfc9aa1b7c83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
rem x5, x2, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x19, 0x1f0a41b7e16d2ad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
rem x19, x1, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x18, 0x507ab2b5de58da26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
rem x18, x4, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x16, 0x9f7cc158b3980029 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
rem x16, x23, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x11, 0x12dbe8847d4675d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
rem x11, x18, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x8, 0xce7e631c909f55a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
rem x8, x13, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x17, 0x80565205e07b928e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
rem x17, x26, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x2, 0x6227ccc3c5732a49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
rem x2, x3, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x21, 0x30ce01798d66de68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
rem x21, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x16, 0xada883082aa0648b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
rem x16, x7, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x14, 0xb499b5a8fdcc1ed8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
rem x14, x5, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x29, 0xbd9a36caad838fec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffffffffffe # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
rem x29, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x30, 0x81c3aa7df80f1950 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
rem x30, x7, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x15, 0xd18d455d336f664c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
rem x15, x31, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x15f54d9a7e66a70f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x24, x5, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x21, 0xf72664b0a537a7c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffffffffffe # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
rem x21, x17, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x14, 0xedb33ce6c3dfcf80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffffffffffe # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
rem x14, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x13, 0x11f665c47baf4242 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
rem x13, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x2, 0x2097997bcb9538fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
rem x2, x16, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x29, 0xe39a66fc3beb98fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
rem x29, x28, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x2, 0x570c7cbd634c65d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
rem x2, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x29, 0x6e2c249b88446da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
rem x29, x13, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x9, 0x4482f3f56e44c73c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
rem x9, x22, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x31, 0x44286efe13f8347c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
rem x31, x28, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x23, 0xf32bc3dd997a1d58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
rem x23, x24, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x17, 0x571e4da623ae2871 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
rem x17, x9, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x31, 0x9149a087ca610d4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
rem x31, x2, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x2, 0xff8c689fa12fb248 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
rem x2, x26, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x14, 0x61953dd56651d26e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
rem x14, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x19, 0xf83a2e5ca2514c6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
rem x19, x31, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x8ecd20bccc327a4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x2, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x4, 0x7e1e0ff29664c842 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
rem x4, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x24, 0x25f1ad3cd66da240 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
rem x24, x9, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x10, 0x8ee79a71a3161bf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
rem x10, x16, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x16, 0x33cef36efb256f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
rem x16, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x28, 0xb190f99dfd20f2fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
rem x28, x4, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x18, 0x74636c79d3061658 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffffffffffe # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
rem x18, x25, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x3, 0x8832265c16b63b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
rem x3, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x20, 0xefa7c81b0976842f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
rem x20, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x15, 0xa0663b8a97916f3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffffffffffe # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
rem x15, x25, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x7, 0x77a50399eaf08755 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
rem x7, x19, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x26, 0x6aee9238463658f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
rem x26, x19, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x29, 0xd0a7586c3de52e1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
rem x29, x27, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x17, 0x78afa9c35c0acde7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
rem x17, x7, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x18, 0x3419c68e9f18169d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
rem x18, x22, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x28, 0x1d83b1a81ba81e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
rem x28, x1, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x68e50d0d88178cfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x22, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x12, 0x47023e97c2f43fb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffffffffffe # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
rem x12, x2, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x4, 0x186b9f81be99d2e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
rem x4, x14, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x10, 0x1f3cb0d6ea52b537 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
rem x10, x8, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x14, 0x79ad577d6f2c005a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
rem x14, x19, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x24, 0x3e66c713d4395b41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
rem x24, x13, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x24, 0xdb3876209c66eb58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
rem x24, x20, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x19, 0x60ad81cfc4c912db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
rem x19, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x9, 0xc9dd2fb2c4706c51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
rem x9, x17, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x19, 0x608b91802587f427 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
rem x19, x10, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x17, 0x0de5ef06cf600ed8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
rem x17, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x26, 0xde82ad7a75fe2abb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
rem x26, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x6, 0x1db8c1a42a29f3a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
rem x6, x5, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x25, 0xbbeb605ccd46b791 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
rem x25, x13, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x7, 0x8422228dede7ca50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
rem x7, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x7, 0xd28d951cb335bf19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
rem x7, x8, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x56f591ec949d98dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x3, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x14, 0x8dee6ece4cef2833 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
rem x14, x9, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x4, 0xaddd120e4f285bf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
rem x4, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x9, 0xa4cbd76788934755 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
rem x9, x12, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x9, 0x44a1c140f87487aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
rem x9, x5, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x6, 0x0d01e037496add0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
rem x6, x12, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x9, 0xbd656d8a27e4fdc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
rem x9, x12, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x25, 0x27bc551596e94adf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
rem x25, x26, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x5, 0x2d3517070d763fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
rem x5, x3, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x8, 0x9f1e5071738612c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
rem x8, x21, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x11, 0x90962620d69a5ec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
rem x11, x18, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x23, 0xfc63be00ac9a6b87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
rem x23, x18, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x4, 0x3960eabd4ba3b15c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
rem x4, x17, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x26, 0x9cfc3d7a3977d8e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
rem x26, x12, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x19, 0x299827b03c13abf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
rem x19, x13, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x17, 0x3c3c73cb0ab0b4f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
rem x17, x28, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0xce0054f09acb0f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x25, x11, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x1, 0x2159bc518eaf35c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
rem x1, x21, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x9, 0xed2dbe61880cb832 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
rem x9, x1, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x22, 0xfd20656cba22f453 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
rem x22, x4, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x21, 0xc958b0186c9bbedd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
rem x21, x10, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x31, 0x05c048ce0fdf9c57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
rem x31, x27, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x6, 0x3e267666ff083b52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
rem x6, x11, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x6, 0x3476de1dd6a3d757 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
rem x6, x2, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x17, 0x649443c50a35534f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
rem x17, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x13, 0xd4f6515f62b73887 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
rem x13, x17, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x4, 0x6319674020be2a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
rem x4, x23, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x5, 0xca620f4f0c41c21b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
rem x5, x18, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x19, 0x6d926e6aebeb1547 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
rem x19, x22, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x2, 0x05efb1eac9f9edc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
rem x2, x13, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x22, 0x2e2918d2defdec4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5555555555555555 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
rem x22, x9, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x5, 0x7177642d2556c777 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
rem x5, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x0f38dc066e28fb9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x10, x26, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x17, 0x407806c4f59ac4e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
rem x17, x18, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x29, 0xde0be3feb2a22283 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
rem x29, x15, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x29, 0xe2e5a7668be2e072 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
rem x29, x11, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x2, 0xf556936ea077cb14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
rem x2, x1, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x1, 0xd3179550d0a3c434 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
rem x1, x8, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x12, 0xdc385cfb73ab78fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
rem x12, x25, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x3, 0xbff642845cfff281 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
rem x3, x18, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x2, 0x364a099d47d02012 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
rem x2, x22, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x31, 0x78882bed64034aec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
rem x31, x20, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x2, 0x6c1601d11f3639fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000ffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
rem x2, x17, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x12, 0xbeb3d45a9ba69f38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
rem x12, x23, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x21, 0x5c2e7656212f72d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
rem x21, x5, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x27, 0x9a89804798eeec92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
rem x27, x10, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x24, 0x7630d65000152915 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
rem x24, x20, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x14, 0xd79127225a6ddf62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
rem x14, x5, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xec35befef9556274 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000ffffffff # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x21, x28, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x28, 0x387a2ce111f2bdeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
rem x28, x24, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x2, 0x1c91b0aabdb288b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
rem x2, x6, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x13, 0x10895b85c7ba3571 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
rem x13, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x2, 0xcabaff9e54c9c47a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
rem x2, x16, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x31, 0x9db3c92b6033ebc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
rem x31, x1, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x3, 0x4e3d05bf9656e329 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
rem x3, x5, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x23, 0xa4935f184be0c1e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
rem x23, x13, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x27, 0xb1a0be6f08180869 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
rem x27, x9, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x6, 0xe3e5876ec333a1a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
rem x6, x2, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x1, 0xb544a7da290453d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
rem x1, x7, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x12, 0xea0d5aaf60524fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
rem x12, x1, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x18, 0x7c6de574351c6f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
rem x18, x25, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x5, 0x0cd56b69c133fa57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
rem x5, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x17, 0x07b283be637d7464 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000fffffffe # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
rem x17, x8, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x18, 0x5d18ac2cf235dd9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
rem x18, x14, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x214ad825daabfb28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x3, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x4, 0xb335de18c2158baf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
rem x4, x23, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x8, 0xbd4dd5e3fdf13f66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
rem x8, x29, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x20, 0xece12bdf28848f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
rem x20, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x17, 0xa963716fe02f4367 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000fffffffe # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
rem x17, x22, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x25, 0x45879069e0c0a84d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
rem x25, x28, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x15, 0xf4c5ef36509588d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
rem x15, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x8, 0x4d3b858f11c4a035 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
rem x8, x6, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x13, 0x7f33353be739619e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
rem x13, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x26, 0x98b33dbd4607ec58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
rem x26, x30, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x22, 0x1e9ad36dd3e4bb3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
rem x22, x30, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x21, 0x64f38674520ed0de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
rem x21, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x17, 0x823c8d17c7a562c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
rem x17, x24, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x16, 0xafa77f69a955efc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000000 # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
rem x16, x3, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x7, 0x3dcd528054dcb189 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
rem x7, x14, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x26, 0xe8b7e6f1f2ce1323 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
rem x26, x24, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x67008a33eeb43f9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000000 # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x28, x3, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x16, 0x04dbcf6a59887d77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
rem x16, x27, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x16, 0xd37957e9a883e0a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
rem x16, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x22, 0xc1d91b79562b840c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000000 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
rem x22, x7, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x28, 0xd49556fb041d71ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
rem x28, x6, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x12, 0xd1f8af4304e110d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
rem x12, x18, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x13, 0x4e3e25984e192bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
rem x13, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x22, 0x5d79116ce3297593 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
rem x22, x21, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x15, 0xaf416cbd1d8e82a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
rem x15, x6, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x23, 0x2766039e61cd599f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
rem x23, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x17, 0x4f64430450f7798a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
rem x17, x27, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x20, 0x90a469cde5ca5a31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
rem x20, x27, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x14, 0x098557ef82ed663c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
rem x14, x23, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x3, 0x8895810d8fdfe0c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000001 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
rem x3, x29, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x17, 0x6ed70497856368ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
rem x17, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x2, 0xe3d9f8edf0b604ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
rem x2, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x2fd047d1e4435bab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x13, x14, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x10, 0x375dcc06224e22f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
rem x10, x17, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x25, 0x6bd8785de81d109c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
rem x25, x23, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x10, 0x2c68c675eb1b6f04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
rem x10, x14, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x23, 0x1588504c578b0826 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
rem x23, x4, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x5, 0xea8a895c789f2032 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
rem x5, x17, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x0a43d6378c651ec0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcfd5985b9a0dab95 # initialize rs1
li x29, 0xd5bf76fcd42f0594 # initialize rs2
rem x0, x0, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xf977acfb502ece8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2f6ee60ffb3bcd38 # initialize rs1
li x3, 0x8d642965212052ea # initialize rs2
rem x1, x1, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x1fce02df30d0d2ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x624ee27198ef8a5f # initialize rs1
li x22, 0xf7cffe281ca2b32d # initialize rs2
rem x2, x2, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xb7340ebd5725b9de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9998faf0950b09e0 # initialize rs1
li x5, 0x941fbb7e23866a29 # initialize rs2
rem x3, x3, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xd8afcc5d1663ed8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x15185dd9efe1505e # initialize rs1
li x25, 0x6a2fa12b56d52f62 # initialize rs2
rem x4, x4, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x2dedce12fd5ddfa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf63325b906a8ce5c # initialize rs1
li x3, 0x4601df228a822abe # initialize rs2
rem x5, x5, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xc9d27f1f7fe75424 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd42875576db9ccc7 # initialize rs1
li x19, 0x53f052ca0a5b6e18 # initialize rs2
rem x6, x6, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x7e42ca042237aef6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0a9159514d28dd17 # initialize rs1
li x30, 0xa8866debffc0df4b # initialize rs2
rem x7, x7, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x4a387a8822944ec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x12090146c0d9e1de # initialize rs1
li x31, 0xa5db6ebfb2d1dbd4 # initialize rs2
rem x8, x8, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x246c5116943a31de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x69a511593f77cd2a # initialize rs1
li x16, 0x799fdbbc595a298d # initialize rs2
rem x9, x9, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xf04bb7c78b2005c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa3591546ac42b475 # initialize rs1
li x20, 0xcd6c1149d44199d7 # initialize rs2
rem x10, x10, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xeac5b245bd11d694 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe86025051faedff8 # initialize rs1
li x10, 0xdc672cc8390420fe # initialize rs2
rem x11, x11, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x49d25250f8a69b03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd59580d0dd1901e3 # initialize rs1
li x6, 0x7120f677482beb2a # initialize rs2
rem x12, x12, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1413cc2c71fc7a2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xce68fb786ceabcb4 # initialize rs1
li x20, 0x9ef486df812a87b1 # initialize rs2
rem x13, x13, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x1b2cc235de699a78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa3e8b0a4c42778cc # initialize rs1
li x25, 0x399f635bd9265817 # initialize rs2
rem x14, x14, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x34da0c1819a9dbef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd7c78560791522a7 # initialize rs1
li x19, 0x63e7501f434cd5f7 # initialize rs2
rem x15, x15, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xbff340b117bbc3ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2858df55d1185729 # initialize rs1
li x11, 0xb8a37a0078875364 # initialize rs2
rem x16, x16, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xadb3719f4468cf06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x917c5740157b44c4 # initialize rs1
li x11, 0x31fdbf90a927b842 # initialize rs2
rem x17, x17, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xaed018c8655ad751 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4552e217483e4145 # initialize rs1
li x24, 0x800779f3ffa4e4f4 # initialize rs2
rem x18, x18, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x7af4781a6a117977 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8259f182152856d0 # initialize rs1
li x26, 0xd63d096d6155d6f7 # initialize rs2
rem x19, x19, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x8914764dc45a595c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd01f9b93a40f1322 # initialize rs1
li x9, 0xda1e8feab7865bfa # initialize rs2
rem x20, x20, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x282f0c20eca48f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1d0d2293c0e68a8c # initialize rs1
li x12, 0xa25254823451412d # initialize rs2
rem x21, x21, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x8a69231a664442c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xeb605fdd049c74b2 # initialize rs1
li x8, 0x888a7ca2301de396 # initialize rs2
rem x22, x22, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xda01c0ceb939e90c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdf30e9f71aae141f # initialize rs1
li x3, 0x4e91b813399fc0ab # initialize rs2
rem x23, x23, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xac2747102e28d975 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc4ef01729da28f2d # initialize rs1
li x7, 0x532723c7406ec467 # initialize rs2
rem x24, x24, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xbcb83881ff2ac055 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x98504fe5eb712faa # initialize rs1
li x4, 0x7793702043c1d442 # initialize rs2
rem x25, x25, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xef57fb561842d7d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x822d56d1bc91d191 # initialize rs1
li x4, 0x7a1f6e90a1e4af3d # initialize rs2
rem x26, x26, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb974a27fc1102a12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0ba0849361bce97a # initialize rs1
li x3, 0x4e47486249f652bd # initialize rs2
rem x27, x27, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x2609d909eba9f1df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2ba72aa987b458ca # initialize rs1
li x9, 0x9a80efd28b3233c1 # initialize rs2
rem x28, x28, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x366e9daa92d825b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbb8231734752e6f4 # initialize rs1
li x20, 0x871cf9dfe310ee26 # initialize rs2
rem x29, x29, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4d5a39bc298c70e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x260a5fc7aee2a2bb # initialize rs1
li x31, 0x9a5ac4c111a829ff # initialize rs2
rem x30, x30, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x19bf90eaa723931d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x36ee93838892e289 # initialize rs1
li x23, 0x544e9e9232731ed0 # initialize rs2
rem x31, x31, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x1016e6900c36961a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x363cf6ca1599b939 # initialize rs1
li x0, 0xc7250b4b04d483e9 # initialize rs2
rem x0, x13, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xcdf636964582e1e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4372e0c6d9fa0af2 # initialize rs1
li x1, 0xec730a373bc5e1ad # initialize rs2
rem x1, x21, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x31c1624753e34c5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7eaec89df43c7cfd # initialize rs1
li x2, 0x60bf77448eed6ce6 # initialize rs2
rem x2, x1, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x7dea93cfa25c9228 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0492fc3becfbe608 # initialize rs1
li x3, 0x22aeab03893d7d9c # initialize rs2
rem x3, x9, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x9f73800832bed251 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x12a90a53e5feb64b # initialize rs1
li x4, 0xd8fd6f9f931bb67b # initialize rs2
rem x4, x23, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xb6d6ff9ef15f7aad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xe36faf83444fed47 # initialize rs1
li x5, 0x3334925cc8d3229a # initialize rs2
rem x5, x25, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x065ba729776e15c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa56bc6cf3aa2d427 # initialize rs1
li x6, 0xa7ec8a45563ed754 # initialize rs2
rem x6, x31, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x7ee4ce4937a5bd40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdc9f9265df3bb687 # initialize rs1
li x7, 0xc67ef673233ac860 # initialize rs2
rem x7, x8, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x9801a862a94ca85a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2714376490f6b3a1 # initialize rs1
li x8, 0xbc4e1d57f81a8e80 # initialize rs2
rem x8, x7, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x6fd2f0df928aa55c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf3d54c9bee983409 # initialize rs1
li x9, 0xc08a8cf433550e75 # initialize rs2
rem x9, x12, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xbb0a954fd4deb0a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4e54b70dce24e70c # initialize rs1
li x10, 0x2ac978dd3579bd8b # initialize rs2
rem x10, x12, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xec949d71ca02c8ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x74a8e4407520f22c # initialize rs1
li x11, 0x3b0853e3a8627f76 # initialize rs2
rem x11, x13, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x6e686af725fc90ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x90e9c751051c2cbc # initialize rs1
li x12, 0xa8842bc10fd117c5 # initialize rs2
rem x12, x6, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x321c35050bb8fea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x55c7efc9d6516f52 # initialize rs1
li x13, 0xbee967533044f866 # initialize rs2
rem x13, x2, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xf48526d5bcd8ff92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf9d63bd132db9d67 # initialize rs1
li x14, 0x3e2e0e15ba013475 # initialize rs2
rem x14, x6, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x09215498c0908f81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9ef78245c0f6a956 # initialize rs1
li x15, 0xf5c4bd4c12dd5176 # initialize rs2
rem x15, x17, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x8aa3e88ab25b9897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x12a34b6c9c8568d2 # initialize rs1
li x16, 0x2928dc96aaab609b # initialize rs2
rem x16, x25, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x9856896eca631a86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd14695d12c88fd2f # initialize rs1
li x17, 0x17ce7ece96e4aeb9 # initialize rs2
rem x17, x1, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x5d7b182c23aed5aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x99693d2ab5ecaab6 # initialize rs1
li x18, 0x4e64cba1f30f883b # initialize rs2
rem x18, x14, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xa846125169630c92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd41d09b15e46fccb # initialize rs1
li x19, 0xbafc618d53845055 # initialize rs2
rem x19, x12, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x1f5db97b97f38be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0f05a036e0792570 # initialize rs1
li x20, 0x190f8d5abd976fbe # initialize rs2
rem x20, x6, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xf6bb639a2fbbc9fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x490710454eb45529 # initialize rs1
li x21, 0xd79d4e9807dfd0ea # initialize rs2
rem x21, x5, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x1cf915e417e51d68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbbb90b8bce44b85e # initialize rs1
li x22, 0xab743aee8ed9d999 # initialize rs2
rem x22, x10, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xeaa8a42fc9e9a048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x211ba303bb80f7e4 # initialize rs1
li x23, 0xc987598a47277b72 # initialize rs2
rem x23, x7, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x25fa47fd6c420b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe97522fddd3492d9 # initialize rs1
li x24, 0x650ba31f46a5a7a6 # initialize rs2
rem x24, x22, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x244131c117b7f9a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x21d616cf582fd346 # initialize rs1
li x25, 0x6c5bdd3f54a633ec # initialize rs2
rem x25, x13, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x38640c6479d4dae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x26d0bd4875c63613 # initialize rs1
li x26, 0x8c82e8bf9f666a64 # initialize rs2
rem x26, x22, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x772e14b354b08b2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb3e3a6beee9dbe84 # initialize rs1
li x27, 0x568768b0cb0ef65a # initialize rs2
rem x27, x5, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x405a64e6d43c6c02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x770622e9071b3cba # initialize rs1
li x28, 0x512799e07e20069e # initialize rs2
rem x28, x8, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x513cbdae4a3e04a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x05f4b3302a85e7a8 # initialize rs1
li x29, 0x0e3424b77d00e29f # initialize rs2
rem x29, x5, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x4d6e86570b9980c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x39e6f22d93bee8ad # initialize rs1
li x30, 0xacc031541482a51a # initialize rs2
rem x30, x29, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xa3f6f370dfc44822 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf372a408220dd862 # initialize rs1
li x31, 0x1cb9a17d6a2e4903 # initialize rs2
rem x31, x25, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xa2d4ed4f762dec6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4e328cbb3d8654ab # initialize rs1
li x0, 0x1187b5d90a87b0f3 # initialize rs2
rem x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x99584466799104a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc675e261875c26c7 # initialize rs1
li x1, 0xc148e010d19d6b85 # initialize rs2
rem x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x1e766b3b82f573c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb66d7b59ef53e6f0 # initialize rs1
li x2, 0xdecabc4dc534e9b9 # initialize rs2
rem x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x72c0194799567f9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x82ce5405357d1bd4 # initialize rs1
li x3, 0x82a144fb2a7ad480 # initialize rs2
rem x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x3fe9db3f0750d895 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6c67f9b5ef09b77f # initialize rs1
li x4, 0xa5fead7b0b07d53c # initialize rs2
rem x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0xeeaff64e03751ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2bdc51fbffc008bd # initialize rs1
li x5, 0x2fafa5e049e4062f # initialize rs2
rem x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xc484c8333cd2463b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x24cf8b4d1fe6ecec # initialize rs1
li x6, 0x1e7408281a0216e6 # initialize rs2
rem x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0xc487e16cb477ac2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb8ded5b00ffa391b # initialize rs1
li x7, 0xa1176c2f29dcef92 # initialize rs2
rem x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xe89b480d637dc4d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5e6950639c844c11 # initialize rs1
li x8, 0xd8b58695e7cdaffa # initialize rs2
rem x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x7651567c22086f32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfd5524cb8d497c69 # initialize rs1
li x9, 0x8b5f435ac092db32 # initialize rs2
rem x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xa8b5b338e3b6613f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80d84edd3f6eecb8 # initialize rs1
li x10, 0x66959991d5580ccf # initialize rs2
rem x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x18ad17688bd2f779 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6592e6cd9accc890 # initialize rs1
li x11, 0xdd11a5434659d8ba # initialize rs2
rem x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x72287edfec41a4ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3197591ffe80ae14 # initialize rs1
li x12, 0x9ad6f64db20c4e46 # initialize rs2
rem x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x43a2b600042fbca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3ed2763ef611ce98 # initialize rs1
li x13, 0x59fcc809fe5f92ae # initialize rs2
rem x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xbd94be21423e3175 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3f78a468ad1f0082 # initialize rs1
li x14, 0x8f77023d193c2942 # initialize rs2
rem x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xd8fc3070a70c2408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x54b7795e6007721a # initialize rs1
li x15, 0x2dfd0ff78d46383d # initialize rs2
rem x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x82950cb99cfb8f19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xce02d0d7ea8c5fbf # initialize rs1
li x16, 0xbeaefbdda03a23e5 # initialize rs2
rem x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xbc36fbd62bf4c49d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf90715522d98ad64 # initialize rs1
li x17, 0x86bcb3d453fcfbb2 # initialize rs2
rem x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x2a809269c5921326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe07d0620601f9482 # initialize rs1
li x18, 0x8f0c2ecb16ebcced # initialize rs2
rem x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x5898aae0dc1188fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xca911f44a8a9e21e # initialize rs1
li x19, 0x23f1e7798f9ac556 # initialize rs2
rem x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xa272b28e3b2adf7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3572ec721c0a97dc # initialize rs1
li x20, 0x69032eb3142ae7db # initialize rs2
rem x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xcb24b4ac63c6c20a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x25b698adffa6baa0 # initialize rs1
li x21, 0x4aceced1939d180d # initialize rs2
rem x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xfa1a1f74e2645fef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x22de7156f1fe7b9b # initialize rs1
li x22, 0x2a6c8657beb250e1 # initialize rs2
rem x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x8c47d64d618386e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc3655356fea8e86d # initialize rs1
li x23, 0xe1bb2d938f49ec50 # initialize rs2
rem x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x0f849eb7d642e17a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc86011c9e1fd45a9 # initialize rs1
li x24, 0xc5a4633d84658f21 # initialize rs2
rem x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xa20031fd895a99ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1a69e73133dcbd77 # initialize rs1
li x25, 0x8d516d7e705a5f42 # initialize rs2
rem x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xed89f3a3fe388c42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcd3f0c0983ae65a7 # initialize rs1
li x26, 0xdd8f5fd81fb562a7 # initialize rs2
rem x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x57182ec1496e37cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3a11015c36322856 # initialize rs1
li x27, 0xa3af4c82a2a67c4a # initialize rs2
rem x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x7ef39d2e84fdcf8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x922c8d2c6a6f37a8 # initialize rs1
li x28, 0x263e51ac9259f635 # initialize rs2
rem x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x880a9ce4f80bdf13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x53cde1f69b260c8b # initialize rs1
li x29, 0x4f42a11463076511 # initialize rs2
rem x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x81c226c2043ac61b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x71ae198d136fc8d4 # initialize rs1
li x30, 0x3450003c762b76d0 # initialize rs2
rem x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x981debd6d33ed6ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc805b5c127bc1162 # initialize rs1
li x31, 0xb649b75bb38fb513 # initialize rs2
rem x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x19, 0xb5936a2bd60f885d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7eb96d1166abc0d7 # initialize rs1
li x0, 0x1a6f7d48663cb148 # initialize rs2
rem x19, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x8fec3dec7c9af018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4100778febf3ba13 # initialize rs1
li x1, 0xd0a97647a705e878 # initialize rs2
rem x1, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x9, 0xdcf5946e09bdb871 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x320f5d36fd900b74 # initialize rs1
li x2, 0xae29c1d861ce809b # initialize rs2
rem x9, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x11, 0xe8dc0ad9bc95c810 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x023c13c620668842 # initialize rs1
li x3, 0xa3af1db3a3a17c02 # initialize rs2
rem x11, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x4, 0x0a2089416aba4389 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2b3654a22393c41b # initialize rs1
li x4, 0xd70bfe24ac69af05 # initialize rs2
rem x4, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x7, 0xb5a5f3002abc7568 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xdd0952ace2c55b53 # initialize rs1
li x5, 0x97fcc54fd25fdf2f # initialize rs2
rem x7, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x9, 0xcd78f4f47554c203 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4034d2f628f544f9 # initialize rs1
li x6, 0x2b94f010f2f81b65 # initialize rs2
rem x9, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x16, 0x3a992a430602553a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3bfbde5b1c641e40 # initialize rs1
li x7, 0x321ce9ebdaa9f171 # initialize rs2
rem x16, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x14, 0x64e03a8d2b154449 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf8d65cdf4cf2c604 # initialize rs1
li x8, 0x3b0e18455b83f235 # initialize rs2
rem x14, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x17, 0x7687c57c20e6397b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xba878db647c67884 # initialize rs1
li x9, 0xa45a15ec4458eed2 # initialize rs2
rem x17, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x1, 0x5b5108e4a9a5709e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x068b81f6cbf667de # initialize rs1
li x10, 0x95c6878982875512 # initialize rs2
rem x1, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x8, 0xf090288ebe55a338 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x77c59e8fa362da4f # initialize rs1
li x11, 0xcadc32af6cd813dc # initialize rs2
rem x8, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x1, 0xb8293ff5255ccc4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3b10aab471809d46 # initialize rs1
li x12, 0x7429639920be1714 # initialize rs2
rem x1, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x5, 0xd4d768ab288eccec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x63e1e8fd4c014bc9 # initialize rs1
li x13, 0x0d035f4b26979f74 # initialize rs2
rem x5, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x10, 0xbfd6e01151001d10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2ea972b2b33c389c # initialize rs1
li x14, 0x39198da8fa80b435 # initialize rs2
rem x10, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x28, 0xa92976c4dfab6ead # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9bb993f939d4a453 # initialize rs1
li x15, 0x987642bb8a149172 # initialize rs2
rem x28, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x5, 0x9a6b8a14da1fc990 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x10ccff78635c6bd2 # initialize rs1
li x16, 0x4d57ffec2cdf9b1e # initialize rs2
rem x5, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x24, 0xb19a7b042363a4b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xee724484afcd160a # initialize rs1
li x17, 0x496fc9f328f770eb # initialize rs2
rem x24, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x31, 0xab0c1c912e7824f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1693bdffb4dc0fe6 # initialize rs1
li x18, 0x4464e925b6ab589a # initialize rs2
rem x31, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x6, 0x33ff566eb56467b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa09c827bf258f1b9 # initialize rs1
li x19, 0xe9d73c172b04165e # initialize rs2
rem x6, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x27, 0x3d39e7c55cf82f43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xbcccb07006b9366e # initialize rs1
li x20, 0xc2197322babb6fd4 # initialize rs2
rem x27, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x29, 0xb4d01d13ea1d6031 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1e811f49de84c9b1 # initialize rs1
li x21, 0x40b9573fad43ba14 # initialize rs2
rem x29, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x23, 0x32da32c6742bf69c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa8eb17bc9bee3114 # initialize rs1
li x22, 0x1016d05f27c12d3c # initialize rs2
rem x23, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x16, 0xf80eddb30118136d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0107a9d16dea9fe2 # initialize rs1
li x23, 0x028268042ad90469 # initialize rs2
rem x16, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x12, 0x9ef7d7d1a20db703 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9013b63be03f7efa # initialize rs1
li x24, 0x975f7292b630b51b # initialize rs2
rem x12, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x31, 0xdd0e0b1d7126ef6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd088b01982dd2960 # initialize rs1
li x25, 0x4f069c74799acd81 # initialize rs2
rem x31, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xf721f9bb76a053c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd87818bf66a6f7a8 # initialize rs1
li x26, 0xcf01a34a8211144e # initialize rs2
rem x26, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x7, 0x5e992fca2548a4dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3f448d2a2defd387 # initialize rs1
li x27, 0xf0ac1b1b6dd09714 # initialize rs2
rem x7, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x2, 0x950eab40c064a123 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x45ddb0f793d4001a # initialize rs1
li x28, 0xeb0d09c2627e7665 # initialize rs2
rem x2, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x17, 0x75b2ea8d0685c39a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf83a2d580ae8d236 # initialize rs1
li x29, 0xe7c2dfc96c4d10c8 # initialize rs2
rem x17, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x6, 0x8ff77b44a9bad966 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xde631bb5a95a0fbe # initialize rs1
li x30, 0x6c28e45b3b2ca97d # initialize rs2
rem x6, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x20, 0x1faef227057163cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x406bb8e5d5349adf # initialize rs1
li x31, 0x53617b3de889030f # initialize rs2
rem x20, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x5cf570ce771552ee)
li x30, 0x81ddd052a66a629e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5cf570ce771552ee # initialize rs1
li x2, 0xe2a2b86b26642f62 # initialize rs2
rem x30, x22, x2 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0xddc115b5ee1d970)
li x20, 0xcc3fbcf7aa9ba256 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf223eea4a11e2690 # initialize rs1
li x23, 0xd93b72dfc933add0 # initialize rs2
rem x20, x12, x23 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x4b7e8a8c13f5a941)
li x6, 0x5646beb3b543321d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8d75bfb32abf0361 # initialize rs1
li x15, 0x4b7e8a8c13f5a941 # initialize rs2
rem x6, x9, x15 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x57c1f686f29f4a9d)
li x21, 0xe3ea47bbc3703c5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa78deaf7fe8728ee # initialize rs1
li x13, 0xa83e09790d60b563 # initialize rs2
rem x21, x1, x13 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
