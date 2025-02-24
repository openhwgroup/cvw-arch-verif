///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/M//WALLY-COV-div.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.646542
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x430ec9785a57ccff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe44fc9f3ec560404 # initialize rs1
li x24, 0xd3a34951f266b5df # initialize rs2
div x0, x17, x24 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x149ba44146922ef6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x447cf10d35fec559 # initialize rs1
li x1, 0x6463d30bf9c83958 # initialize rs2
div x1, x17, x1 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xc7b0446bba93d06b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1899876cb63485f7 # initialize rs1
li x27, 0xb0c96b03904cc378 # initialize rs2
div x2, x25, x27 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xecb1664ebae42f0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x34e0c5edee3a1ae2 # initialize rs1
li x13, 0x224f9c18b709dd1d # initialize rs2
div x3, x11, x13 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x8784502d530fc631 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xec93e53c0f4b534d # initialize rs1
li x1, 0xd78b2123614c7420 # initialize rs2
div x4, x14, x1 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x00c2c351566c8ce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x91b1ab95968d7178 # initialize rs1
li x16, 0x7d3929d432b9cffc # initialize rs2
div x5, x14, x16 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x7e7183969912bc97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x2f5a05d1ca8e6ce1 # initialize rs1
li x11, 0xf89c24bf1057b626 # initialize rs2
div x6, x29, x11 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x895fcfc9053bd319 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7b1fc9c4e310e57e # initialize rs1
li x13, 0x10f4ccdbfd7b6302 # initialize rs2
div x7, x5, x13 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x71bed827525da684 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x93d4de47829f1184 # initialize rs1
li x17, 0xe7757463654ec89b # initialize rs2
div x8, x14, x17 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x40daf93cc1c057d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbecf4deac5e9e6a1 # initialize rs1
li x27, 0xceb7e267f4ee1a6f # initialize rs2
div x9, x7, x27 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xaf97fbc18738ceaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5106d53bdc523b88 # initialize rs1
li x24, 0xbdd690c7f8105fa8 # initialize rs2
div x10, x28, x24 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x8826a4e71526c21d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xcd527e16aef81b70 # initialize rs1
li x26, 0x6e0d5f27a1cff8a7 # initialize rs2
div x11, x27, x26 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x1edddbac64484b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf48c1819860cd6e9 # initialize rs1
li x23, 0xdad3bf01f5c1977f # initialize rs2
div x12, x22, x23 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9e1fe10deb8bff91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc57e0790d192bc58 # initialize rs1
li x16, 0x901440dbc605af7b # initialize rs2
div x13, x11, x16 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xe01343a8b37e369a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcf343eaf693df60e # initialize rs1
li x30, 0xd17ce79b4fa235ac # initialize rs2
div x14, x15, x30 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xa9213073a2d07317 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfde0904956190524 # initialize rs1
li x31, 0x5041225c0a12f590 # initialize rs2
div x15, x14, x31 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x3eebf4c03bdcb468 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6bc8560a53da12d7 # initialize rs1
li x11, 0xd0a7b3b45a0cdcd1 # initialize rs2
div x16, x10, x11 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xf064cf17b065dfcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1588ab62190e051a # initialize rs1
li x18, 0xf043e44bad731ce7 # initialize rs2
div x17, x7, x18 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x59f09289028cbb44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x24ceb063124f3d7d # initialize rs1
li x3, 0xe9cf14ae9baa074b # initialize rs2
div x18, x7, x3 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x7ab0c20ea2077fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf1350fbfa93563d1 # initialize rs1
li x29, 0x9163e76f2ad62843 # initialize rs2
div x19, x15, x29 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x88f9934698801a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x97ae99a222380346 # initialize rs1
li x24, 0xb7bcccda907314c8 # initialize rs2
div x20, x1, x24 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x0b6fcb1a0dbc36de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x74b62b67959725c3 # initialize rs1
li x29, 0xcb56a543bc7e427e # initialize rs2
div x21, x30, x29 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x04e14c062e8167a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8071e54e64503fac # initialize rs1
li x27, 0x468b423ad24a86b5 # initialize rs2
div x22, x19, x27 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xe13da6c279021ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x83dfef48ed00072f # initialize rs1
li x26, 0x02a8ba41cde086b6 # initialize rs2
div x23, x28, x26 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x5ea306524d0d448a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4852e5d37bdccb19 # initialize rs1
li x16, 0x83114fbcc3457494 # initialize rs2
div x24, x23, x16 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x9653e042bde6fc35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcc45d45e1d68b6af # initialize rs1
li x28, 0xa3d8b2451154c107 # initialize rs2
div x25, x14, x28 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x7012a9f69a4259a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8c95e4cb25b49856 # initialize rs1
li x24, 0xe5766f17d56735af # initialize rs2
div x26, x26, x24 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x9efc56ae8ba4c0e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x514186276e085e24 # initialize rs1
li x27, 0xf1ada1998019da58 # initialize rs2
div x27, x2, x27 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xf9e1b39e1dfdf6f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdfb9fb40e064e40b # initialize rs1
li x13, 0x17212776ca4e1836 # initialize rs2
div x28, x21, x13 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x61e2be3ec5c0e191 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbe2f4787eeab4c26 # initialize rs1
li x29, 0x7c4f1f864fb51421 # initialize rs2
div x29, x14, x29 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x193b79b881ea34e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc77d3108df1f677d # initialize rs1
li x9, 0xd14658483d485297 # initialize rs2
div x30, x25, x9 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x28b9134f3b0161b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x82eb0fd79c0b1611 # initialize rs1
li x8, 0xe6ae9bed363f35d4 # initialize rs2
div x31, x3, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x10, 0xf7c4ca4aa827454f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9821709db3c9b766 # initialize rs1
li x30, 0x3aa653712e1c92bd # initialize rs2
div x10, x0, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x26, 0x282a83496967b80e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6df4d3e69c52b572 # initialize rs1
li x4, 0xe6a507279ab49a79 # initialize rs2
div x26, x1, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x25, 0xec8808795e1e3b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x89dca2160e088045 # initialize rs1
li x24, 0x5d7b44bc5a658942 # initialize rs2
div x25, x2, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x2, 0xf1109e637f1470ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5517e235434b9f1d # initialize rs1
li x17, 0x95cbfab53eb29c8c # initialize rs2
div x2, x3, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x2, 0x06550f35943486a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x073fe507bf58d847 # initialize rs1
li x15, 0x78064273873fbe4a # initialize rs2
div x2, x4, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x12, 0x65928cf74f035c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xbc19aadf44a3341a # initialize rs1
li x1, 0x92aa115805bb6327 # initialize rs2
div x12, x5, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x29, 0x1a7eb9688de80749 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb2b88db7350efc10 # initialize rs1
li x8, 0x6aa01984eb6e54dd # initialize rs2
div x29, x6, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x25, 0xee08ffb98df1d038 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7635a44943d86f97 # initialize rs1
li x23, 0xd91efabf6a8611c3 # initialize rs2
div x25, x7, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x16, 0x0c31935cf808a4ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3521e375b2b27c61 # initialize rs1
li x24, 0xf94f625f57b80a1b # initialize rs2
div x16, x8, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x17, 0x0d8173ba806d3733 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa772827dc93ec539 # initialize rs1
li x14, 0x55ba6332da359c1b # initialize rs2
div x17, x9, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x30, 0x2a90218fb2a9ab9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd69dc168d567dd4a # initialize rs1
li x20, 0x6a4e412a154e9289 # initialize rs2
div x30, x10, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x1, 0xd5e4572fc8f6f64d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x796c21f4a032eefe # initialize rs1
li x7, 0x10d11cd902d0824f # initialize rs2
div x1, x11, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0x5a46f76c240bf523 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xecc96d80a74fab0f # initialize rs1
li x28, 0x6ec7f4dbbdbab512 # initialize rs2
div x8, x12, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x31, 0xea0b6c224e40cac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3a43d66a08adc972 # initialize rs1
li x25, 0x399bc4eed49645b4 # initialize rs2
div x31, x13, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x20, 0x82bf46a4ee858abe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbb2873a2504dd13c # initialize rs1
li x19, 0x5de6336794e5edc9 # initialize rs2
div x20, x14, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x28, 0xa8523c9c704ba391 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0ed3ba9160988ae8 # initialize rs1
li x8, 0xa3d8e9e17beb3fb4 # initialize rs2
div x28, x15, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x20, 0x113afadb22f34911 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x89c4f5ea6694cebc # initialize rs1
li x2, 0x222a3e7739dfdc5d # initialize rs2
div x20, x16, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x23, 0xedea442fbdd08b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bda20eadcaa408d # initialize rs1
li x9, 0x0ccf2c35cec2bdf0 # initialize rs2
div x23, x17, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x22, 0xf3c906954fed0943 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3c968e2f507aac4e # initialize rs1
li x28, 0x45f7fbd9e85145e6 # initialize rs2
div x22, x18, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x13, 0x68b6d1ebfdaa1d9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2b457c729cb46b09 # initialize rs1
li x2, 0x893c507a77da2c98 # initialize rs2
div x13, x19, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x30, 0xd3051674b5188376 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9aed5f78085b9a91 # initialize rs1
li x13, 0x605cdd3405b6b7dd # initialize rs2
div x30, x20, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x14, 0x559cc746d557f1ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdd6c4b15b7e668cb # initialize rs1
li x27, 0x646b3367f4101c52 # initialize rs2
div x14, x21, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x14, 0x880f9ea4fb822864 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4d622a24bdd238cc # initialize rs1
li x17, 0x178ebb660d5416ff # initialize rs2
div x14, x22, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x4, 0xda8498d84553b786 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x72f99b7c973a12ef # initialize rs1
li x24, 0x4d9da1b7c0a52cb1 # initialize rs2
div x4, x23, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x16, 0xb3b23b438efca1c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x51a3fe229f1dc542 # initialize rs1
li x25, 0x04f36826e49b3b03 # initialize rs2
div x16, x24, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x11, 0x3866722b15da13e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x186ba5543260b2cb # initialize rs1
li x6, 0xec053c1255443c20 # initialize rs2
div x11, x25, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x31, 0x44583341118fa4f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8bad5d0152a4c1c4 # initialize rs1
li x12, 0x6c3662843f633fa9 # initialize rs2
div x31, x26, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x7, 0x8fcc0e3b8c749272 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4b3c4f3adc31142f # initialize rs1
li x29, 0xdbacf2c0f916f5b5 # initialize rs2
div x7, x27, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x3, 0xd9364a0d81720b83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf5418093bef19035 # initialize rs1
li x9, 0x68da056567ae91fe # initialize rs2
div x3, x28, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x7, 0xf37af2b2394870b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xdef709b2ab6a5cac # initialize rs1
li x16, 0xe0204e8c052cf30f # initialize rs2
div x7, x29, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x22, 0xae2514bc911fbe27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0245478b883e68ca # initialize rs1
li x27, 0x44df4dba915a161e # initialize rs2
div x22, x30, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x16, 0xda76f0c410cfc046 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x43cd8f24304df586 # initialize rs1
li x30, 0xe2f4681e57d12356 # initialize rs2
div x16, x31, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x7, 0x198b50f6f0d69da1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4cb8c8dd07873b9e # initialize rs1
li x0, 0x4780f3b019768b52 # initialize rs2
div x7, x13, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x4, 0x8fd16b69eb0ce52f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5e62d98daf23641f # initialize rs1
li x1, 0xe43e0252d378a08d # initialize rs2
div x4, x27, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0xbb7770baca989bca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0179832415d08460 # initialize rs1
li x2, 0x5b20845975906e22 # initialize rs2
div x28, x27, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x21, 0x0ff3e4586e0945c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3c653bb5f8f94e88 # initialize rs1
li x3, 0x57aafaa9784af131 # initialize rs2
div x21, x10, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x13, 0xef9e2b52bc7356b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0af8319d2504fc91 # initialize rs1
li x4, 0x1756f8f1208836e1 # initialize rs2
div x13, x19, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x15, 0xcaf0844a379a911e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6d2d02638e859788 # initialize rs1
li x5, 0x8fe04d717352df51 # initialize rs2
div x15, x16, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x13, 0xc972e55c667f39f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x24602dca61ee1efd # initialize rs1
li x6, 0x21e0a4403086ffa7 # initialize rs2
div x13, x22, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x10, 0x3dc24ec9904bb345 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x09cad2169f998c08 # initialize rs1
li x7, 0x1a83ce1c5e1919a7 # initialize rs2
div x10, x26, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x7, 0x956543e11719a7ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe4368b9958ce089f # initialize rs1
li x8, 0xced60a03a3a1dd78 # initialize rs2
div x7, x6, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x30, 0xe6b3e739f8380fbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe1aa1cd822d385cf # initialize rs1
li x9, 0x58852cc575ef517d # initialize rs2
div x30, x1, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x8, 0x3e5b3f9925313660 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x729efaaeb8122427 # initialize rs1
li x10, 0x48bbcedb8b70c422 # initialize rs2
div x8, x11, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x3, 0x1cf8df6ad8a3d91d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0bf1fb59b94c8100 # initialize rs1
li x11, 0xd3d81d58c97efa08 # initialize rs2
div x3, x18, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x9, 0xff4218dc6ef27479 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5fb0a69f5846ab21 # initialize rs1
li x12, 0x4291132b8ae83a2d # initialize rs2
div x9, x10, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x31, 0x0196bbeac1b3cf58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0dd052c4fc52b7a8 # initialize rs1
li x13, 0x52e77e4556813730 # initialize rs2
div x31, x1, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x16, 0xd169613f9ed49f8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x34a0ce4c6aa6b436 # initialize rs1
li x14, 0x3181c139ee787465 # initialize rs2
div x16, x6, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x11, 0x8d874444d38c9ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf18fe7ba14eb7896 # initialize rs1
li x15, 0xa2107f441c1b55d8 # initialize rs2
div x11, x17, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x15, 0x3dbac0063ca72788 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0d77462efdbb2cfd # initialize rs1
li x16, 0xebf18934ea609e9f # initialize rs2
div x15, x18, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x25, 0x1f4c25382d338197 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x873c2585d58c53eb # initialize rs1
li x17, 0x428dbe24585f3dbc # initialize rs2
div x25, x21, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x17, 0xf7661f6401fe5821 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x06b1516b184d823a # initialize rs1
li x18, 0xd3edd298db778107 # initialize rs2
div x17, x21, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x30, 0x304ae774524fbf48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x72eb3d21f47f1122 # initialize rs1
li x19, 0x44e176c8caea89a4 # initialize rs2
div x30, x29, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x15, 0x677d219c7bfff484 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x82dc4026dc1a6132 # initialize rs1
li x20, 0x442896da48987ba4 # initialize rs2
div x15, x2, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x28, 0x98794e794f4aad84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x96162b9cb92681f4 # initialize rs1
li x21, 0xb3c3e513d790c7dd # initialize rs2
div x28, x17, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x6, 0x2a8b09305dd5bb0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x75c24bf8b385bd21 # initialize rs1
li x22, 0x7e139f42b48c9dd0 # initialize rs2
div x6, x13, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x11, 0x1bc81937c6ecac20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6345c731ad879a86 # initialize rs1
li x23, 0xb4ac6c2ef1dc3f58 # initialize rs2
div x11, x25, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x15, 0x7b4edf56885b9130 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf705a037704ae3d1 # initialize rs1
li x24, 0x71aec31937992d97 # initialize rs2
div x15, x17, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x9, 0x48832d3b976077f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x13c22c9e5bb65bbd # initialize rs1
li x25, 0xfa921e5fb9447a2a # initialize rs2
div x9, x1, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x17, 0x01d27b46ca882729 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xbd9a751abbb73ad4 # initialize rs1
li x26, 0x59a95afd0385f16a # initialize rs2
div x17, x3, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x30, 0x22108b9ec4ea0bd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2662ab0b3e64860d # initialize rs1
li x27, 0x2517ede4edd909de # initialize rs2
div x30, x18, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x6, 0xc066cad754ce6065 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1d358565ca7bf03e # initialize rs1
li x28, 0xe803cd95874f5287 # initialize rs2
div x6, x12, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x8, 0x48bd521dfabcab4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xbdc97561908a15c4 # initialize rs1
li x29, 0x7214b7880cf369ac # initialize rs2
div x8, x25, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x28, 0x44402b00fd6d184b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa6705d29e78ce27a # initialize rs1
li x30, 0x2ac61df5c197aeaf # initialize rs2
div x28, x18, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x3, 0x877640c4d16561f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa9bf534f3f932b1a # initialize rs1
li x31, 0x10dd21d59402ebd7 # initialize rs2
div x3, x1, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xb05da62718a7899d)
li x1, 0x69f16d8312a3958f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x69f16d8312a3958f # initialize rs1
li x0, 0x1fd5da851abc168c # initialize rs2
div x1, x25, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xf3b8f2cf6866a9a)
li x31, 0x0f3b8f2cf6866a9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0f3b8f2cf6866a9a # initialize rs1
li x27, 0x0f3b8f2cf6866a9a # initialize rs2
div x31, x0, x27 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x37581f57c65a0f65)
li x13, 0x4c250bc6ba2f9adf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x37581f57c65a0f65 # initialize rs1
li x20, 0x37581f57c65a0f65 # initialize rs2
div x13, x8, x20 # perform operation

# Testcase cmp_gpr_hazard raw test
div x18, x15, x4 # perform first operation
div x17, x18, x9 # perform second operation

# Testcase cmp_gpr_hazard raw test
div x11, x2, x29 # perform first operation
div x13, x18, x11 # perform second operation

# Testcase cmp_gpr_hazard waw test
div x18, x24, x3 # perform first operation
div x18, x5, x11 # perform second operation

# Testcase cmp_gpr_hazard waw test
div x21, x7, x17 # perform first operation
div x21, x13, x19 # perform second operation

# Testcase cmp_gpr_hazard war test
div x5, x21, x1 # perform first operation
div x21, x11, x6 # perform second operation

# Testcase cmp_gpr_hazard war test
div x21, x19, x24 # perform first operation
div x24, x23, x14 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x7, 0x1d09571b6f1f3c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000000 # initialize rs1
li x0, 0xeda52ac97e68574f # initialize rs2
div x7, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0x30d8c22233ea91d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
div x3, x25, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x24, 0x97004c66ca4ba1cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
div x24, x30, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x7, 0x770990a36eabad6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x0, 0x50c4b2e9ee4ab2d7 # initialize rs2
div x7, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0xc2dc7a6781056344 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
div x19, x25, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x7, 0xfff9203c46a2378a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
div x7, x29, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x19, 0xdb3cd2ec080ad85a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
li x0, 0x4647d87e2c495a53 # initialize rs2
div x19, x24, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x7, 0xa0e7269341da4df3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
div x7, x8, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x22, 0xf2d95e490d437878 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
div x22, x30, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x2, 0x804866cb0fb6dea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
li x0, 0x8d8fa204d80d71e7 # initialize rs2
div x2, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x7, 0x0bb834c735e5db71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
div x7, x26, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x17, 0x5722a84210f3a3c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
div x17, x26, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x20, 0xde897436c0da7b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x0, 0x3b7de3eaf9f75363 # initialize rs2
div x20, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x27, 0x8d25643260df84ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
div x27, x22, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x27, 0x742ef2e2d90f285d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
div x27, x8, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x23, 0x6ed8e7e48fe87bfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x0, 0x394f250a120c9c8c # initialize rs2
div x23, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x16, 0xf4b652f049cfceee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
div x16, x4, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x12, 0x2371c76ccaa13e23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
div x12, x16, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x24, 0x261779bf1a725bd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs1
li x0, 0x370f4b4844d717f0 # initialize rs2
div x24, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x31, 0x8f00062a5ce8900c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
div x31, x20, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x24, 0xfa420f0eedec9dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
div x24, x18, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x19, 0x9b16e2c51d3b2eff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x0, 0x12e5b63b5252a5cd # initialize rs2
div x19, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x5, 0x0cbe95988a87685a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
div x5, x25, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x12, 0x8bb8b750eb6ee12b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
div x12, x23, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x21, 0xc89ab0d2d7161fc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x0, 0xb6b0a555a71c2627 # initialize rs2
div x21, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x27, 0x27a83b0901dd25bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffffffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
div x27, x5, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x28, 0x5bf56827be4b9b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
div x28, x9, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x22, 0xab25ad0f33327638 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x0, 0x49ced1d29ab7d5f1 # initialize rs2
div x22, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x26, 0x81afd568bf0475ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
div x26, x18, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x22, 0x433126b0d5d841f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
div x22, x26, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x30, 0xb4cc3ae753586fbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x0, 0x66da8422ef3b91ed # initialize rs2
div x30, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xfb6a12dacb883f8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x14, x22, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x28, 0x55d7f3c45c57fde5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x28, x19, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x2, 0xcbd40b0d0cd27f04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5555555555555555 # initialize rs1
li x0, 0xf3b5323fc425159d # initialize rs2
div x2, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x26, 0x82cec7bfbe32114b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
div x26, x18, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x14, 0xc980db319ab7ae27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
div x14, x22, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x27, 0x82ce9d2e2998c546 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x0, 0x55a15aac6858e904 # initialize rs2
div x27, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x29, 0x28ad72395ff588ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
div x29, x18, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x2, 0x9b295c31103f4d02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
div x2, x28, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x26, 0x6c11a98374fab6eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x0, 0x102c2a0848acd1a7 # initialize rs2
div x26, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x12, 0x4699d00a7430e9a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
div x12, x23, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x14, 0x418b23aadac3a9a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
div x14, x4, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x2, 0x1817eecb011969f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000000 # initialize rs1
li x0, 0x618b7d447c5d7d1e # initialize rs2
div x2, x26, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x5, 0x587d81c8c54a1301 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
div x5, x20, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x20, 0xfb640e7e3419a1aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
div x20, x14, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x14, 0xfe155b05b844add8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
li x0, 0x9ec3b0ca90763cdd # initialize rs2
div x14, x16, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x10, 0xa4c0064415c6057c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
div x10, x18, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x3, 0xff83a61992d0db5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
div x3, x29, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x18, 0x0d95ac242ea40ccd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
li x30, 0x7b2368e5dec7f25e # initialize rs2
div x18, x16, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0xeaf6bbed8aa16c91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x5, 0xbd668dea5ad5f343 # initialize rs2
div x22, x15, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x5f24619d71bc06de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # initialize rs1
li x22, 0xc72d6213f09634fc # initialize rs2
div x30, x28, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x31, 0x7d845ad0fcac4acc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000000 # initialize rs1
li x29, 0xe3e051402af43606 # initialize rs2
div x31, x17, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x27, 0xb6f7106732b6c091 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000001 # initialize rs1
li x14, 0x841840dafe4d5f7c # initialize rs2
div x27, x31, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x8, 0xdd5be85983fc27fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x26, 0x1271a209610017c3 # initialize rs2
div x8, x23, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x31, 0xc0602c6dfa5398c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x19, 0x9e31a4146c9ffc54 # initialize rs2
div x31, x24, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x27, 0x52c30a18172b87f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x18, 0x47d1fc7936481b3c # initialize rs2
div x27, x28, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x10, 0x9f259a0384302db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
li x13, 0x097a69cb0e538550 # initialize rs2
div x10, x18, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x14, 0xaa2b3ede19766080 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x2cf78a03e0347f40 # initialize rs2
div x14, x8, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x18, 0x5b7bcf1a4b08141e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x53a690b971cd3e96 # initialize rs2
div x18, x8, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x572b5ef0ce19a04a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x14, 0xc1b2355b68418f7c # initialize rs2
div x12, x11, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0x89a779af62a82fe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x12, 0xe9268034fd6059ab # initialize rs2
div x8, x5, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0x1c5ce51b127366fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x10, 0x88b2629e123638c6 # initialize rs2
div x3, x25, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x9, 0xd5ad69920049df8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x28, 0x21f50f4494181dab # initialize rs2
div x9, x16, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x26, 0x97e88146ccc770ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x21, 0x5bf5df5ef732f2c1 # initialize rs2
div x26, x6, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x11, 0xe22e11991a1668e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x32c478ffacccd0b9 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
div x11, x7, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0xb9c1ac9a0b4ad87a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe046363ed7fd8606 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
div x10, x31, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x7c5651409e309709 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa07e04a0dc420ffc # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
div x25, x17, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x4, 0x3f63f12eb0c4ac6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1f1f66d84d10dfb6 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
div x4, x3, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x23, 0x89faecdf1728002e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc5220a26d6dd91f5 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
div x23, x26, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x27, 0xeb10dbcd0950505e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x314f35b69cd4457c # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
div x27, x15, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x11, 0xe987b50746974b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x770a4ff1669e78e0 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
div x11, x4, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x20, 0xb1a2a91ae78bf0d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8fad2b2c742c4e9e # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
div x20, x17, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x6, 0x7676d5a2bd7a0dd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf383227b1ddeb11d # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
div x6, x24, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x23, 0x9563085d189a1038 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0bf27185c4c2b2dc # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
div x23, x9, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x23, 0x8da991fc1841f291 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7803493dd34a3c6b # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x23, x14, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x2, 0x61dd0208cd05edfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6dc02394428dc13b # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
div x2, x7, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x4, 0x3fd1cae93ae2e190 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x519e55a842b3fb82 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
div x4, x14, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x11, 0x1407b4895a88a974 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xea82c1281f20d97b # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
div x11, x19, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x6, 0xbfab4b4b5e6d81f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd07d0c9071dd37cc # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
div x6, x26, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x3, 0x7d2b30d523798f86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa8b8b233fd2934cf # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
div x3, x1, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0x412b5f406969f04a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
div x30, x12, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x16, 0xb82f58cd92f4812d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
div x16, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x29, 0xa9384f8fe9a227a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000000 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
div x29, x23, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x18, 0x0acfa88c7fe64bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
div x18, x19, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x20, 0x305b09c3c0edbdb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
div x20, x2, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x23, 0x71278f8341f0e654 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
div x23, x19, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x2, 0xd575a3f5326d2ffc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
div x2, x4, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x26, 0x02b13ecb40c29b1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
div x26, x5, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x17, 0x91e2f05d2a990897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
div x17, x16, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x7, 0xbf7a06e99a7db396 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x22, 0x5bbc887763ae86f7 # initialize rs2
div x7, x9, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0xb72076303e9f1160 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x30, x2, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x6, 0xd6276947b554e407 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
div x6, x24, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x5, 0x6a41ae24bf1f9730 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
div x5, x22, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x9d9fc2e0de468331 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
div x7, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x17, 0x0b88b9c1ed2c23e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
div x17, x18, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x19, 0x96b0ab5861d309a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
div x19, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x4, 0xe8925ae9d7bfad7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
div x4, x23, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x30, 0x91776dd993b78966 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
div x30, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x10, 0x0c3337d7663ee5d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
div x10, x7, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x24, 0xc396854f8a2110b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
div x24, x2, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x21, 0xea234869508f46e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
div x21, x13, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x24, 0x25d2ee4fad7c57fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
div x24, x12, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x27, 0xa6a2dd40dc3be106 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
div x27, x30, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x21, 0x26f5fa969c597c79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
div x21, x28, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x20, 0x3f903d92bdeec1cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
div x20, x6, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x27, 0xff572c27edccb313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
div x27, x15, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0xc908bb04d20d6fe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x27, x14, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x2, 0xeafefb4d7d00c374 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
div x2, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x6, 0x3e365e068ff6b868 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
div x6, x18, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x30, 0x29a5a79f7e0961f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
div x30, x12, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x31, 0x7bfcb83eea8c3900 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
div x31, x14, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x2, 0x7dadd8dbb97c39af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
div x2, x4, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x1, 0x5c6340c808a2bec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
div x1, x17, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x6, 0x0b4e0d3bdad4d7c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
div x6, x27, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x12, 0x5cf735de18bf92f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
div x12, x15, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x11, 0xd4435b617c81c7c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000002 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
div x11, x16, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x8, 0x9bd558d4af4b5a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
div x8, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x18, 0xc181864edfb7ff11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
div x18, x1, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x28, 0xb60f058ee3a6b7d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
div x28, x14, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x15, 0x830609930b1bdc3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000002 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
div x15, x31, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x21, 0x0bd137b829cd2a96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
div x21, x23, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x23, 0x7f93d1b7aaac993b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
div x23, x11, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0xadc0edbb74d3369c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x18, x27, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x17, 0xbcbb6e47e6525a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
div x17, x11, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x20, 0x8caed6f5932443c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
div x20, x8, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x30, 0x10b738de6b2c1b65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
div x30, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x2, 0x0af5b35c2521d6d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
div x2, x3, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x22, 0x4c55b7f69f76815f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
div x22, x25, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x24, 0xdf968b0a25dc9e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
div x24, x11, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x18, 0x4744ec795431a256 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
div x18, x10, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x25, 0xbaffd682b7888a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
div x25, x9, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x7, 0x1b45777e28d3af2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
div x7, x18, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x11, 0xf02c466d1fba2527 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
div x11, x1, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x7, 0xfd37c5a7a2928c6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
div x7, x6, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x6, 0x43acbd73f951a541 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
div x6, x18, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x24, 0xe64ed1e149609e7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
div x24, x15, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x7, 0xbd4e084a544b6605 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
div x7, x28, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x23, 0xd12f6c0c65db2f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x22, 0x5bbc887763ae86f7 # initialize rs2
div x23, x2, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x19d035aa5a6a8846 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x27, x21, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x21, 0x002dbceab814391d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000000 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
div x21, x5, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x2, 0x51a227597708d998 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
div x2, x15, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x25, 0x0d62dc1f41d6136e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
div x25, x2, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x19, 0xbd17621e8298ca1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
div x19, x31, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x10, 0x0e8b3cc6fb1a273c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
div x10, x18, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x7, 0x81f7d7e4bdef97a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000001 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
div x7, x28, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x21, 0xf3446bf53017acfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000001 # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
div x21, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x2, 0x206e0e0cc0a11631 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
div x2, x10, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x11, 0xa6793cc75c2c40f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
div x11, x20, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x28, 0x1589401ccfb7f8d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
div x28, x25, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x30, 0xc1e62c0da9835c47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
div x30, x9, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x18, 0xcae63efc4728f42d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000001 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
div x18, x28, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x4, 0xe937c59b00abe48f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
div x4, x23, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x4, 0x61ca77fbf6b1a6d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
div x4, x3, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x9, 0x1df968d456421644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
div x9, x10, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x519925a0322ecb2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x6, x4, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x1, 0xa34b88f53505427e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
div x1, x4, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x8, 0xe3c66337b1f66c99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
div x8, x13, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x25, 0xce4906e0a162ec60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
div x25, x9, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x4, 0x348901b1d16b0914 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
div x4, x13, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x10, 0xc86fe616583455d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
div x10, x3, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x16, 0x7830e86276cb9f02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
div x16, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x29, 0x7b4da5f2a45a0589 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
div x29, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x13, 0x303bfbd2fc1ab7d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
div x13, x25, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x22, 0x0f18cabcc9263e52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
div x22, x25, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x5, 0xc602774e984ad28b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
div x5, x12, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x16, 0x9a2851995cdc05ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
div x16, x30, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x1, 0x0204c0ea089c1e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
div x1, x4, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x11, 0xb7e86e7c5306d3d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
div x11, x8, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x31, 0x57598e7bd1f78a37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
div x31, x27, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x20, 0x4de2190e8077a795 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
div x20, x18, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x9679bcdd1addf36f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x19, x27, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x8, 0x8b267b2562190bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
div x8, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x22, 0x214ba71ea1ee8c3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
div x22, x31, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x26, 0x5c79705b7f5d7e28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
div x26, x10, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x10, 0xd08902992c387cc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
div x10, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x10, 0xdc6dc9cbee22c804 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
div x10, x16, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x25, 0x46dac9c0f9120bbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
div x25, x5, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x23, 0x7a1c17732024a83f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
div x23, x10, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x14, 0xfd2f0fc8a81189f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
div x14, x30, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x4, 0xbd2ee4569dbb254c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffffffffffe # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
div x4, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x9, 0x97ceb3b68f052c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffffffffffe # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
div x9, x4, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x25, 0x11020f4c0b38ce67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
div x25, x11, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x6, 0x2f407c7f9b217305 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
div x6, x20, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x8, 0x542389286f2ce128 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffffffffffe # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
div x8, x30, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x18, 0x44dcb08dadff87f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
div x18, x4, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x10, 0x70939bf96641b9a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffffffffffe # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
div x10, x28, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x33e5f7f456bdec08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x16, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x6, 0xf39b9f59a7570bf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
div x6, x13, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x2, 0x9b90b202981d7935 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
div x2, x23, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x12, 0xddd234e8a22c3b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
div x12, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x19, 0x6c2087d204837908 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
div x19, x22, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x25, 0x205a089db2dbc44b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
div x25, x7, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x26, 0xa9fde11f1e72a0ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
div x26, x25, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x18, 0x372db78c6d4df974 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
div x18, x4, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x4, 0x533549709be18664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
div x4, x7, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x16, 0x1264f4c5f8489751 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
div x16, x27, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x25, 0x0be3c0b140095515 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
div x25, x30, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x1, 0xa5f4930552c17194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
div x1, x3, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x28, 0x7a75852d1164afb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
div x28, x30, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x12, 0x5fabfd1156f8e692 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
div x12, x4, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x29, 0x3f2ed922eb224162 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
div x29, x7, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x1, 0xff7b51fb3e5df463 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
div x1, x21, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x63bb76120af0d558 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x22, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x6, 0x84988272129b6073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
div x6, x21, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x20, 0xc33247034db7bbb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
div x20, x18, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x8, 0xc958b59a380ccc6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
div x8, x5, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x26, 0xbd83784770510dcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
div x26, x2, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x3, 0x098aec4e3a052402 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
div x3, x15, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x8, 0x29126b529d34b3f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
div x8, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x21, 0xf1633e7740ed8e34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
div x21, x28, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x3, 0xe39041bf73fb5792 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
div x3, x21, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x3, 0x620af6780d3e9c42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
div x3, x7, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x7, 0x1c3462fa7afa4c79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffffffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
div x7, x4, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x5, 0xd1b83d619bd97f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
div x5, x7, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x10, 0x8fbab48fd9a00899 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
div x10, x20, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x24, 0xd7d0cbdd9fc9bbcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffffffffffe # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
div x24, x5, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x4, 0x9506743a5062a4cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffffffffffe # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
div x4, x25, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x25, 0x4fe0ad35ac09f694 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
div x25, x7, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x10ecdafec77dddcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x14, x19, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x12, 0xb06f98a2350f6fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffffffffffe # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
div x12, x2, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x25, 0xcda96d732d8253b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
div x25, x13, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x27, 0x63764f36c7298ad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffffffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
div x27, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x31, 0x5cdc5794fb46ce68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
div x31, x9, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x20, 0xb81414f1f4f9510e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
div x20, x9, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x7, 0xd09e04b69a4b7557 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
div x7, x18, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x9, 0xadd5c312a922238b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
div x9, x28, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x31, 0x2e1bf7ba72e1062c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
div x31, x15, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x21, 0xf15a391a93690825 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
div x21, x12, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x31, 0x8483f0c5d348435c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
div x31, x9, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x18, 0x0abe86cb2a1df952 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
div x18, x14, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x2, 0x49a5e026c4778439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
div x2, x3, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x7, 0xd04562a5392000a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
div x7, x29, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x7, 0xde2f87735e29b875 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
div x7, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x14, 0x75aa1b06c57e7abb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
div x14, x30, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x309ec8611eeaf991 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x4, x25, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x26, 0x7c722dfe1907a1d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
div x26, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x7, 0x1064d812e74683e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
div x7, x15, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x4, 0x5260362b262c6f5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
div x4, x8, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x14, 0x46f215444d1a32af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
div x14, x19, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x16, 0xe2c43c65a6b6e090 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
div x16, x31, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x4, 0x7e8d11645cacf602 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
div x4, x10, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x11, 0xc48cdf26f7c97fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
div x11, x18, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x23, 0x1b1ffa7b7637aa65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
div x23, x26, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x31, 0x4e2051a1bd03d63a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
div x31, x15, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x26, 0xebdd9dcd8e133aea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
div x26, x19, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x2, 0xd565f5bdf1efe23c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
div x2, x11, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x27, 0xefd270e1cb78f7d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
div x27, x24, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x28, 0x386e056070eb8888 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
div x28, x2, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x6, 0x300d5b07049a6632 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
div x6, x13, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x4, 0xf666b40f24000c3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
div x4, x6, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xbf9bec197b05ddb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x21, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x24, 0xad6f9cca9a7e063e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
div x24, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x19, 0x7c22aab100af5278 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
div x19, x13, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x18, 0x91530d462f1bee0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
div x18, x9, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x29, 0x1be2277a9858f981 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
div x29, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x27, 0x8caee7d0a1730a49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
div x27, x26, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x22, 0x97e2ac620a1c7e47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5555555555555555 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
div x22, x2, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x27, 0xda0e12f030205844 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5555555555555555 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
div x27, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x24, 0xffb0238547e71011 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
div x24, x4, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x28, 0x5601695f3abb8224 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
div x28, x27, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x3, 0x1c2173d16f18742c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
div x3, x4, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x29, 0x4759bc5c5680c1aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
div x29, x1, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x11, 0x1aeb4ada22b590f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
div x11, x30, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x15, 0xf4ab387582b99080 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
div x15, x11, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x31, 0xc490a7d8c1556fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
div x31, x10, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x23, 0xde7f7f241170a88c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
div x23, x30, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xfa368de40c7b1c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5555555555555555 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x8, x19, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x4, 0xe06092855f7d1f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
div x4, x8, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x23, 0xc28c5c180497aaf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
div x23, x15, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x17, 0x6982f2dd65736f7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
div x17, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x13, 0xce50fd84855c5fb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
div x13, x23, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x3, 0x98852072af5b8bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
div x3, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x4, 0x26813c6e5c2711a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
div x4, x19, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x22, 0x1e7e858cd32cd42f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
div x22, x25, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x28, 0x50c237f36be84012 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
div x28, x22, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x24, 0x88df9d63e889e62f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
div x24, x20, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x18, 0x7aae18a717931612 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
div x18, x24, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x17, 0x4e90973d01241ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
div x17, x18, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0xb7227f1a9f55a192 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
div x20, x27, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x23, 0x4426cd990df51bc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
div x23, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x13, 0xd82405765c29b363 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
div x13, x27, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x28, 0xe4aff1dedc0240ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
div x28, x29, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0xcdab4fbb241efe90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x31, x30, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x27, 0x7405dbef9def62bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
div x27, x7, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0xbb92291d8becb171 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
div x18, x13, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x1, 0x81bce1ca4afe07d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
div x1, x25, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x18, 0x21a220b6de88cc02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
div x18, x25, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x2, 0x982b907f8e8da0cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
div x2, x26, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x30, 0x565900cc27c8f4b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
div x30, x21, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x25, 0x5756b9c1d7347699 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
div x25, x22, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x25, 0xb32077c60f1949dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
div x25, x23, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x4, 0x0238509eff359e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
div x4, x25, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x31, 0x0d669d79067c463b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
div x31, x1, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x29, 0xc6ac451617b6c2c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
div x29, x11, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0x45bac9dea0cadbd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
div x27, x11, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x8, 0xf180d76cc9b67551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
div x8, x26, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x31, 0x2bf1253fc38061f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
div x31, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x30, 0xd44250ba07332037 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
div x30, x18, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x23dceb094c6eba11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x31, x14, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x16, 0xcd79c02f044bf6cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
div x16, x14, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x17, 0x2a1fb9cc9233d7df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
div x17, x30, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x14, 0x5dbf94121de8ecfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
div x14, x12, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x13, 0xd1b0c96dd43e537b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
div x13, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x30, 0x3aebd2ed530e5482 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
div x30, x14, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x23, 0xb01d5f336de90706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
div x23, x14, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x21, 0xa9536133c972ba32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
div x21, x18, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x17, 0x6de0ae3198bfed6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
div x17, x1, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x7, 0xe06e3172ae447057 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
div x7, x11, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x12, 0xa5e5f7e3981e6a82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
div x12, x1, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x22, 0x91579a383c9d401a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
div x22, x16, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x30, 0x176d96cddc9b7a00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
div x30, x24, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x3, 0x6f1edfc2e9d17914 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
div x3, x18, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x14, 0xd44e7bbcfc52440a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
div x14, x20, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x12, 0xd20c8c324355af96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
div x12, x4, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0xb302dcacd695973a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x23, x28, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x1, 0x16935d51fcbc3328 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
div x1, x11, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x8, 0xa2343c0cd404f7e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000000 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
div x8, x25, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x20, 0xe4df60e26b03f940 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
div x20, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x9, 0x3fc8028ca8ca1500 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
div x9, x15, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x23, 0x385cc959466369ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
div x23, x26, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x12, 0x8da2a282d0e004ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
div x12, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x8, 0x2cedaf928a1ce85d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
div x8, x25, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x9, 0xa9ffc8eef9f6c295 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
div x9, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x24, 0x28bafddf0cfdf67e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
div x24, x3, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x20, 0xd15fcedd1febe3af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
div x20, x17, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x23, 0x392e329f5484f60c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000001 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
div x23, x29, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x2, 0x297c395934719f9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
div x2, x1, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x6, 0x414ee455a29b820b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
div x6, x24, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x30, 0x5dad0947f6fb40c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
div x30, x18, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x9, 0xb15eb41a39dd77db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
div x9, x22, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x7d79449d1fd78d46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000001 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x24, x5, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x13, 0x912bb481a96f14e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
div x13, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x31, 0x8badb0406563c366 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
div x31, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x13, 0x0b0f2093021ad2b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
div x13, x14, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x21, 0x7321b60001041c18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
div x21, x11, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x30, 0x18c66d77de96bd8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
div x30, x21, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x415d0db740471127 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x662347cf848bc092 # initialize rs1
li x31, 0xbf30dfefe7a997cd # initialize rs2
div x0, x0, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xf0ece6f0336ef238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6428e4945810b47e # initialize rs1
li x23, 0x7c1497340d940ecf # initialize rs2
div x1, x1, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x4dbf29a291bb483b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd67266cd16c4d84d # initialize rs1
li x24, 0x453fd14f355b50e4 # initialize rs2
div x2, x2, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x5f4e96db648fbc17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5479c448b35bd996 # initialize rs1
li x17, 0x3cb9600ff0fc367c # initialize rs2
div x3, x3, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x805e38755c85f1f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x723bae17134f3628 # initialize rs1
li x29, 0x72fd47bfd3b2f44c # initialize rs2
div x4, x4, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x8cc44ce31981d664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0dab8a3f057f6ff4 # initialize rs1
li x25, 0x5f9759b7b58078b6 # initialize rs2
div x5, x5, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x013ae8308451bfe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x362810281e0105f8 # initialize rs1
li x22, 0x6201438c49ebba6b # initialize rs2
div x6, x6, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x4e266587ca472ecd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2031c1275b5770cd # initialize rs1
li x1, 0xb78f5e22916241e5 # initialize rs2
div x7, x7, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xae0756015f5e1c21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x74b40b2250807488 # initialize rs1
li x5, 0x640efe02beb9259b # initialize rs2
div x8, x8, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x769301fd9467a775 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc481daf8d2699d95 # initialize rs1
li x31, 0x0aafcf843d9e0491 # initialize rs2
div x9, x9, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x04a71fb2936ec4c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8890e365bdae7399 # initialize rs1
li x16, 0x75d08280fc5d874c # initialize rs2
div x10, x10, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xe6a553daf418ad30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb93eea7755ea19e6 # initialize rs1
li x5, 0x80dd8a205aea9366 # initialize rs2
div x11, x11, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x81298b76dadd27e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe5e07372c0db8366 # initialize rs1
li x30, 0xedea3ac7342ce6da # initialize rs2
div x12, x12, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x417b99fabe7a72c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6b4c505b554ca232 # initialize rs1
li x8, 0x7d828e1ecf058fcd # initialize rs2
div x13, x13, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x60ba4c08a351486b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1646711682b2ddcf # initialize rs1
li x29, 0x8b84f8c9d02b1809 # initialize rs2
div x14, x14, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x5d8d44f5f76271c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8714c1e96bf86cde # initialize rs1
li x27, 0x31c8e6d867d482b0 # initialize rs2
div x15, x15, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xd892d2e35daef637 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x75753f359dedb90b # initialize rs1
li x19, 0x02df10452b6fe02f # initialize rs2
div x16, x16, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xe04f64ea697e4c1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xab6b3d5c89f42984 # initialize rs1
li x3, 0xcb179bcb229fe0a6 # initialize rs2
div x17, x17, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x54c91fe2ebaa6020 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00c125bab7a57fbb # initialize rs1
li x15, 0x1a4eaf513e5e0c63 # initialize rs2
div x18, x18, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x77c70f94231d2f81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7eff4e4ca17b878b # initialize rs1
li x10, 0x5ba6c807f8787d38 # initialize rs2
div x19, x19, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf78c6bdaa80db897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8a6d68f2aa79ba7d # initialize rs1
li x31, 0x8ea4b8860f4a7f5c # initialize rs2
div x20, x20, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x072c88fbd7cc01e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2a673e8bce1d003a # initialize rs1
li x25, 0xcb0dbd69377c1652 # initialize rs2
div x21, x21, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xea5b0e1823b7ba13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x57ff647cdfe371fb # initialize rs1
li x3, 0xc278efeb726598d8 # initialize rs2
div x22, x22, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xe94def2b444d0ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x06816cd37de73a50 # initialize rs1
li x26, 0xd9b52b2f2783dfcc # initialize rs2
div x23, x23, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x743399403165c73f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8daa4855c2ea5597 # initialize rs1
li x24, 0x5d21d6c6c7caffc0 # initialize rs2
div x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x50635de96e056f21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x232634a4fd380ed4 # initialize rs1
li x31, 0x810e21e4cec2b5d6 # initialize rs2
div x25, x25, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xace8c6fddb56c2b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x57e6b9ab3cf55224 # initialize rs1
li x14, 0x07af8986485aac99 # initialize rs2
div x26, x26, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xd171d65c1dfb2c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6b4c3485c51f2b37 # initialize rs1
li x23, 0x00881c157e188173 # initialize rs2
div x27, x27, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x44ac893651106a91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2c8e86b247198346 # initialize rs1
li x19, 0x9e2b3de5f764e13e # initialize rs2
div x28, x28, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x5e29eac4a50a2b0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe0c9c474256e8215 # initialize rs1
li x3, 0xf2fd5459744d47b2 # initialize rs2
div x29, x29, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x79057552046641ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd34a958c0fb9f6a0 # initialize rs1
li x22, 0xc33534f3df7929e6 # initialize rs2
div x30, x30, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xf87285d6de3af36d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x3f64b7fb49b70fc2 # initialize rs1
li x8, 0x7c5c624e1d8eab1a # initialize rs2
div x31, x31, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x785d02b47d755605 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb1557b2a7106cc16 # initialize rs1
li x0, 0xb9e88869f93bd957 # initialize rs2
div x0, x2, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x10be494ede399c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0ab06a93855d0547 # initialize rs1
li x1, 0xd45ef776b19b3b03 # initialize rs2
div x1, x18, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x669ea32fa0b09f86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x15be23c7a6c0ee95 # initialize rs1
li x2, 0x75759b0d923fb4e1 # initialize rs2
div x2, x19, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x1dee9112ef05ff8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0e20b6e8c4a3728a # initialize rs1
li x3, 0x4e28d2eeb46a64df # initialize rs2
div x3, x29, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x564b397e678b0271 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfd71b7d13bf31abe # initialize rs1
li x4, 0x563a4d640b3ccb02 # initialize rs2
div x4, x27, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x37904881926219c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x46238f0e7c5895a9 # initialize rs1
li x5, 0x8cbc81674dc8cca9 # initialize rs2
div x5, x14, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x218f1a5cca18c213 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc33b050c06f1be7d # initialize rs1
li x6, 0x5d8997fef35e8d5c # initialize rs2
div x6, x21, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xff26427aed82dd68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x319826d465a71ab8 # initialize rs1
li x7, 0xe02feb6069f40c02 # initialize rs2
div x7, x3, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x8c867ba1630421d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe5731ebcda216a5d # initialize rs1
li x8, 0x8def477e3a8f878c # initialize rs2
div x8, x12, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xc79c9f1b9e5ca316 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4e39d138040e4735 # initialize rs1
li x9, 0xf823c6284e920df9 # initialize rs2
div x9, x22, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x7cb932fcc43145de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdb88a1de01f00696 # initialize rs1
li x10, 0x8aff27fc466ccfeb # initialize rs2
div x10, x23, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x2a4125f84e105bba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0d5031ec826cfa8f # initialize rs1
li x11, 0xc0864eb3d23d18b7 # initialize rs2
div x11, x20, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x745fc7acf3a001a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2a35b3112e0897dc # initialize rs1
li x12, 0xcaf2dd2c9cef1179 # initialize rs2
div x12, x2, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x8d3a7a4c56c0039b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x247c8df393d11dc4 # initialize rs1
li x13, 0xc5db6e6c1d955b6a # initialize rs2
div x13, x9, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x0847ae7510da8e40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x56a70ab5d8964f1f # initialize rs1
li x14, 0xd21d33ed50db6e62 # initialize rs2
div x14, x15, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x2536f01e1acf79ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x97a6f29002833b69 # initialize rs1
li x15, 0x1b476966592446b1 # initialize rs2
div x15, x3, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xe0d91abddd58d669 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2ff9495453aa9583 # initialize rs1
li x16, 0x2a5dd830b99ee08f # initialize rs2
div x16, x10, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x89391d701942973e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x782cd96d0bb336ce # initialize rs1
li x17, 0x44392c0b3ec32388 # initialize rs2
div x17, x6, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x58ae917adcd44706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc4e54ee5ea5d2165 # initialize rs1
li x18, 0x9e47bfc603ae227f # initialize rs2
div x18, x5, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x840c65ae184af526 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2efa505a2e8d34f1 # initialize rs1
li x19, 0x14d31734f51958e0 # initialize rs2
div x19, x5, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x869d317830777c27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5e32845002808a12 # initialize rs1
li x20, 0x9b5f80708caf0fa5 # initialize rs2
div x20, x23, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xabe7d2f64d5d85b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x28b9bc2c7b9dbf97 # initialize rs1
li x21, 0xed3e3352cd35d2df # initialize rs2
div x21, x28, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xcc77cb5863ff2570 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x72a66c18998b6e41 # initialize rs1
li x22, 0xd227ee933dc9a678 # initialize rs2
div x22, x30, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xbcbf43aa13df2de4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2d60d1ea53fbba7c # initialize rs1
li x23, 0x65ba8a0976bc8790 # initialize rs2
div x23, x18, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x83508cf26141d3e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7192bb2e6718c479 # initialize rs1
li x24, 0xf7c20cebfe046fdc # initialize rs2
div x24, x20, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x0d4864907f94c54f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x22200140d4ef736c # initialize rs1
li x25, 0xa8a4ac376ae18b2d # initialize rs2
div x25, x4, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xbe5aeba335edeaf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaabadb0fc61fbe8a # initialize rs1
li x26, 0xb4b181bce0f0d229 # initialize rs2
div x26, x7, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x5aa7eadfc70d1c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2f3ff0a3a685a5b9 # initialize rs1
li x27, 0xfab7f524b5d62ec7 # initialize rs2
div x27, x22, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x5085691182d9fbe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc5d92bbf15861151 # initialize rs1
li x28, 0x7b22c66ee2a81428 # initialize rs2
div x28, x27, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xa3d25bf07f28e6d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xedfc526229bf513d # initialize rs1
li x29, 0x0242aa45126d87f6 # initialize rs2
div x29, x16, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0xe1728406a735d4b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xec2a440847a3d0cc # initialize rs1
li x30, 0xc1e2d44ac6dd890c # initialize rs2
div x30, x14, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x261cf1c0660e77a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf470b3912ddecce4 # initialize rs1
li x31, 0x09f1e44520dd4573 # initialize rs2
div x31, x21, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x47dfec96bfad5fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2ccfd934f0ce2d4f # initialize rs1
li x0, 0x9defb23aed4e5c8d # initialize rs2
div x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xf775e1e92e766257 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3611d22f51ab7043 # initialize rs1
li x1, 0xb40fcdedc31e97cd # initialize rs2
div x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x9cf6172cb937a5a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8cf1205d2bf5436e # initialize rs1
li x2, 0x5e6025ed6706c446 # initialize rs2
div x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x6907262bec493184 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf43cd631abd78a87 # initialize rs1
li x3, 0xf55af87e92389c06 # initialize rs2
div x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x412d62c2b19cbf3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdad8fbe5f38ed30f # initialize rs1
li x4, 0x1b411bfc536e3e35 # initialize rs2
div x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0xd2d08e3bf0c2c9e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xae4c07965e4c931c # initialize rs1
li x5, 0x1bfa0587eb13dd3f # initialize rs2
div x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x7d176fdd764768e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa9158ce9ffccce4a # initialize rs1
li x6, 0xe396926cfdc8eaa2 # initialize rs2
div x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x41bcad7e9b26bb9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdcaa7ea911b1e374 # initialize rs1
li x7, 0xd1a0cbf4e607e92a # initialize rs2
div x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xf93b1eb7f4c374e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x14233b16d2f23551 # initialize rs1
li x8, 0xfc54f027e84fb9b8 # initialize rs2
div x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x2a5fc258b5e8a43d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaee7ff79cd85ff6b # initialize rs1
li x9, 0x0da156bcbd8be756 # initialize rs2
div x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x42bed63440f13089 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa3800bc55078077c # initialize rs1
li x10, 0xef99f362a4902a04 # initialize rs2
div x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x7a77d2816c01cefa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd7c7f6d6ac8b4a04 # initialize rs1
li x11, 0xe6f39f2e315d1903 # initialize rs2
div x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x5e2654e6dd262bba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xee4ab5f7a9d073f5 # initialize rs1
li x12, 0xb317f101f4d9a590 # initialize rs2
div x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xa12316d703fbbfd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb9fb0c120a4465ba # initialize rs1
li x13, 0xd41d31e8f8e5d6ff # initialize rs2
div x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd81e292abfb03baf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa724770eb3f160b9 # initialize rs1
li x14, 0x3bfefc33e1f46fb7 # initialize rs2
div x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xc3af890c470f17e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x04578f29a28c5477 # initialize rs1
li x15, 0x1a5361a818792013 # initialize rs2
div x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x9f59c864fcee3f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5515b2cf805959d0 # initialize rs1
li x16, 0x2c194dcc43cddce1 # initialize rs2
div x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x700f6d7575eea982 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x073bbfc4f76801fd # initialize rs1
li x17, 0x5b8264fe1fd015b0 # initialize rs2
div x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x76abe5c541cad707 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xba3b9d826d7579d0 # initialize rs1
li x18, 0xf7c3a5060fea9f1a # initialize rs2
div x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x2f21f90229b306b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5862694b427839cb # initialize rs1
li x19, 0x3129b4e30664e70b # initialize rs2
div x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xdd861a83ece38bc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x70398c87ea1119c6 # initialize rs1
li x20, 0x147fd7ca45728d8a # initialize rs2
div x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x8f6f7754f5778a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x951594ea99091334 # initialize rs1
li x21, 0x9bda2138330dd059 # initialize rs2
div x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x92c03a7624203f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1c625b95f3bdf9db # initialize rs1
li x22, 0x62f4c03a1e9a2e11 # initialize rs2
div x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xb1f6058bc6337267 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6b969969ad323f89 # initialize rs1
li x23, 0xa731b367313bd8c2 # initialize rs2
div x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x4bdb58a2a0e3c217 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xca1b8708a1158a81 # initialize rs1
li x24, 0xe606fbfb8252c4e1 # initialize rs2
div x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xa359f7bb534acf82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf34bbd590d50a121 # initialize rs1
li x25, 0x7dcb8dfd9254c821 # initialize rs2
div x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x8e084fc1f7642912 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x07ceb053db7169df # initialize rs1
li x26, 0xbfdd04b533ed3ca2 # initialize rs2
div x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x26f9807b6ed921d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xad05f888278a45db # initialize rs1
li x27, 0x0b9e1fa8804cb010 # initialize rs2
div x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xdbdb374f803513d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf1eb1e711fc07f01 # initialize rs1
li x28, 0xf12f39c0947c5cf7 # initialize rs2
div x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x4c5897358bfca80d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xde9c0e7dddde18cf # initialize rs1
li x29, 0x42a9291c1bd48270 # initialize rs2
div x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x30bc85c984f910db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf5e1c328aba63769 # initialize rs1
li x30, 0xd5087d7a541dc06f # initialize rs2
div x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x44b2ce143e9f6f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x3f0ad393d9239589 # initialize rs1
li x31, 0xba433d1a535d3ada # initialize rs2
div x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x20, 0xa51712802a781965 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa5a71d3b8d25eb8b # initialize rs1
li x0, 0x24de7d7cce700b0a # initialize rs2
div x20, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x18, 0x6363efd8c36481e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3f986c76b2a64697 # initialize rs1
li x1, 0xf58b9c793758dda2 # initialize rs2
div x18, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x21, 0x82845dd20702d236 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3a51ddaf500bd480 # initialize rs1
li x2, 0xb0d57b13c9bbfe0b # initialize rs2
div x21, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x2, 0xb39947d7bf27d0a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6dedc9b122e1a887 # initialize rs1
li x3, 0x2a538ac7e3046f03 # initialize rs2
div x2, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x6, 0xc161132fdb3e01e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x4d91a68917f5701f # initialize rs1
li x4, 0x67858a0f9180a153 # initialize rs2
div x6, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x18, 0x707eb73a5afda4c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa75e8d3d5c6c54f6 # initialize rs1
li x5, 0x1aaa71ee88884195 # initialize rs2
div x18, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x15, 0x60a68e096c3cef6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xed522d1092f875f3 # initialize rs1
li x6, 0x30e1e8ebcf70997e # initialize rs2
div x15, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x14, 0x584d78e4bdeb2ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc37ee5851c40f631 # initialize rs1
li x7, 0x69999fc1eb3a2276 # initialize rs2
div x14, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x25, 0x1cbfec0c21725914 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb505b2ac8ccda3a0 # initialize rs1
li x8, 0x1bea2fcb0be7d50e # initialize rs2
div x25, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x6, 0x24ec7b82182994d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x955c97340ca4a34d # initialize rs1
li x9, 0xa47707b8ca93849a # initialize rs2
div x6, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x31, 0x0bd0fc249a8e2560 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x61221b00a67b65f9 # initialize rs1
li x10, 0x42c0a733b2a58343 # initialize rs2
div x31, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x29, 0x97c9b5870920d154 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa9c4eaf73711295e # initialize rs1
li x11, 0x6b44e9292db9c607 # initialize rs2
div x29, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x96d76696750734ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x64b94938732dfa0f # initialize rs1
li x12, 0xe6bf8fdf3bf6b54d # initialize rs2
div x12, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x30, 0xe987d3cc27694ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2f7f937868cb5360 # initialize rs1
li x13, 0x6ed25d631402ba27 # initialize rs2
div x30, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x1, 0xe2c87a319a10b13b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9f36b146b4a91cfb # initialize rs1
li x14, 0x43ed5c88d5034c5f # initialize rs2
div x1, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x20, 0x8224d3b80dea2085 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9fa30dd124d9c869 # initialize rs1
li x15, 0x23c4f468e99fdafe # initialize rs2
div x20, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x26, 0x561a6d6aa7901426 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0558823df76b4f74 # initialize rs1
li x16, 0x34f40e9b6714551e # initialize rs2
div x26, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x29, 0xd7ce31a1770b8c44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x2a93ba189baa258d # initialize rs1
li x17, 0xc58cd94b9d754953 # initialize rs2
div x29, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x27, 0x9a3836c3ca7f1dfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc150e0e6803701ac # initialize rs1
li x18, 0xf6cac5141a77922e # initialize rs2
div x27, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x4, 0x9f8916eccf7dbb34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6bc7486bca1d29df # initialize rs1
li x19, 0x1523c4b9f6760348 # initialize rs2
div x4, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x19, 0xfeb11e003dfc0916 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1f29ffa04a99006f # initialize rs1
li x20, 0x91dc9ba2909f41c0 # initialize rs2
div x19, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x3, 0xfa5db89700c517b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfcd0ad9d483e16bc # initialize rs1
li x21, 0x435a660924c565e6 # initialize rs2
div x3, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x14, 0x92398475cfba6014 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6542de96e7b714c9 # initialize rs1
li x22, 0x54ef04a2c180ac2c # initialize rs2
div x14, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x21, 0xcd22df6b07932836 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa30070e98e293d58 # initialize rs1
li x23, 0x6130697a4cf55b97 # initialize rs2
div x21, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xe0b08bb0396df15e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x1e9609d337d9995c # initialize rs1
li x24, 0xf09cc0aa6a139642 # initialize rs2
div x24, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x2, 0x8d60d8c595afc97e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6924035c5cad0528 # initialize rs1
li x25, 0x184f71dc91464043 # initialize rs2
div x2, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x3d4cd86f55bd29a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xa93b8632676e4936 # initialize rs1
li x26, 0xaecd913c97de8c3f # initialize rs2
div x26, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x7, 0x1b2ead1ae11a74e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf2d76f76bf2564dc # initialize rs1
li x27, 0xb6ba0223554a770a # initialize rs2
div x7, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x16, 0x380ae027fd926b98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3855af54ae84e5fb # initialize rs1
li x28, 0xc094d254dbd1c3ac # initialize rs2
div x16, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x23, 0xc31d90e5187aa90b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x658e677e101390d1 # initialize rs1
li x29, 0xb93d6b280220686d # initialize rs2
div x23, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x11, 0x27fe3f895b969a31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5cb59c34a6995024 # initialize rs1
li x30, 0x0dc5f71d1d26d201 # initialize rs2
div x11, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x29, 0x299b8cc167caeb3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaa17cb8e59223856 # initialize rs1
li x31, 0xd00184768649a1f9 # initialize rs2
div x29, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x1d3a5b2acf731a8c)
li x8, 0x2bcc8562dc0c91f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1d3a5b2acf731a8c # initialize rs1
li x3, 0x368f9b64c14c0889 # initialize rs2
div x8, x11, x3 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x6ef0312ebac0b72d)
li x18, 0x0d8cafc20b436832 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x910fced1453f48d3 # initialize rs1
li x4, 0x0220e9fbbce6c650 # initialize rs2
div x18, x25, x4 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x43e542cf21e158b)
li x24, 0xb7d84c72744979e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaac43fbe07cd7f9b # initialize rs1
li x20, 0x043e542cf21e158b # initialize rs2
div x24, x27, x20 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x6f262d77d7732763)
li x21, 0xe4e39b0ed86eefd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x22438342e9ceac8e # initialize rs1
li x3, 0x90d9d288288cd89d # initialize rs2
div x21, x2, x3 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
