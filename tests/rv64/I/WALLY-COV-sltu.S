///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-sltu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.500821
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xfc1c876eb960c3ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3dff9c94d41c9872 # initialize rs1
li x7, 0x44729ab246067c8e # initialize rs2
sltu x0, x6, x7 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x13a9ff79815feee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x59335e6a25fdfedb # initialize rs1
li x5, 0x648eb2251908ec4c # initialize rs2
sltu x1, x10, x5 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x9dc13fa1f671f567 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf2a3f622d6794177 # initialize rs1
li x24, 0x4f5c34134f622969 # initialize rs2
sltu x2, x27, x24 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xcc5f4e03e96b26c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xec30d659ed187aeb # initialize rs1
li x3, 0x2c1bc8689a0d5a0a # initialize rs2
sltu x3, x31, x3 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x0b13aaa6dce2f8b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb54f458f462a10fa # initialize rs1
li x28, 0x020af9c07faf22f4 # initialize rs2
sltu x4, x24, x28 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x482b764c43ca0abd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x90b4f98c8d5fa672 # initialize rs1
li x17, 0x3e072687da5f8626 # initialize rs2
sltu x5, x25, x17 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x73560463d1ce6ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xad4bdeb862cd7fd7 # initialize rs1
li x27, 0xd10b88b235ad7469 # initialize rs2
sltu x6, x26, x27 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xff17e24481531464 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc97cdc28dc19cf13 # initialize rs1
li x5, 0xf10ff1abb98ba2e3 # initialize rs2
sltu x7, x8, x5 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9c6b0da0a457733b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe1724ec29271dd49 # initialize rs1
li x16, 0x6afccd89dc720278 # initialize rs2
sltu x8, x19, x16 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x794046db16f9b713 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf8bc61add17c4bae # initialize rs1
li x23, 0xd055057d1cd839de # initialize rs2
sltu x9, x10, x23 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd62f72e5cb22c25a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf2423e58800cea1a # initialize rs1
li x30, 0x83c8bf08874e139c # initialize rs2
sltu x10, x19, x30 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xc9a5bd09f699b45a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x50513cd7c4644249 # initialize rs1
li x7, 0x8822941fb7bcf355 # initialize rs2
sltu x11, x19, x7 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x1c38fa5fb3699258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x1229763ae02f0c26 # initialize rs1
li x7, 0x23028579fb3b1e36 # initialize rs2
sltu x12, x23, x7 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9fe943b13ff123d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x90fdb2652fc523fd # initialize rs1
li x20, 0x35b52f538972acc8 # initialize rs2
sltu x13, x11, x20 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x9d70713e7a56c6e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x65c70b87a1477eff # initialize rs1
li x25, 0x8ff7c0e28165c4ca # initialize rs2
sltu x14, x21, x25 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xd5e155d353a72614 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x51662c1ff0e2177a # initialize rs1
li x27, 0x2684e443931479c8 # initialize rs2
sltu x15, x22, x27 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x5fe4cdfafa82d805 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x3b072e199be60846 # initialize rs1
li x4, 0x275e9c64b202c355 # initialize rs2
sltu x16, x25, x4 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xe76e8550c05120c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x120d229c7180fbf1 # initialize rs1
li x29, 0x496f90bbf610ce3e # initialize rs2
sltu x17, x22, x29 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xa21835433a9f8318 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc43cd2fda42f93f6 # initialize rs1
li x24, 0x2c447a6a18dbc82b # initialize rs2
sltu x18, x25, x24 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x81ede06c9a1ce3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5687714d122a620e # initialize rs1
li x2, 0x39a27e663b3e483e # initialize rs2
sltu x19, x14, x2 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x09bdd88a8a427043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb689972ea32517b9 # initialize rs1
li x24, 0x195b7c87a4389f57 # initialize rs2
sltu x20, x26, x24 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xe6accb791937662c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd99b23ee8ebeae24 # initialize rs1
li x15, 0xa077156fa73a354a # initialize rs2
sltu x21, x22, x15 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xe27a39e49aee1d8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa872b72720811296 # initialize rs1
li x15, 0x897a6e4fd320dc34 # initialize rs2
sltu x22, x11, x15 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x14392b9139b726ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3fc0ac874baa5536 # initialize rs1
li x22, 0x2e68a72ef9f9e369 # initialize rs2
sltu x23, x27, x22 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x52f1f7b60c5eca00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8d2d1f059400a4f9 # initialize rs1
li x27, 0x85f4484c89e6b889 # initialize rs2
sltu x24, x6, x27 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xb2c8fbaaf588a518 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9b33c54afaea0d0c # initialize rs1
li x22, 0xceaa433045a2e4d4 # initialize rs2
sltu x25, x1, x22 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x9bb150090033e463 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x68aa3f22c684ce5f # initialize rs1
li x2, 0x81bf94dd72881673 # initialize rs2
sltu x26, x13, x2 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x72d91efb9b2de2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1f77ba1ffe8fac37 # initialize rs1
li x10, 0xf8f25a971110b9dd # initialize rs2
sltu x27, x26, x10 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x8aa23dd8bb75d27f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf77b207cfb00e72a # initialize rs1
li x7, 0xeccd2fc26712bbc8 # initialize rs2
sltu x28, x14, x7 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xa4b43161915a8b32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbc65a4cb69be597b # initialize rs1
li x26, 0x481799779a4df3d9 # initialize rs2
sltu x29, x24, x26 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x4b4e82446bd10f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7072e45a9647a93f # initialize rs1
li x6, 0xae6eb29e257c6e1e # initialize rs2
sltu x30, x17, x6 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x3bb34fb0dc7fd336 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5d2aeda99a966d6a # initialize rs1
li x11, 0x5ec6fd158d546128 # initialize rs2
sltu x31, x26, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x13, 0x6afb8d643092efd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x776ee5988d3a2ef3 # initialize rs1
li x25, 0x7c7f29dcd8054b03 # initialize rs2
sltu x13, x0, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x2, 0x36aa4c7cac5d2f98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x228253c7c7bb6a02 # initialize rs1
li x17, 0xf0ed24e3b72ea9e9 # initialize rs2
sltu x2, x1, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x30, 0x9db2c57592503702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc648ece883bd9ac3 # initialize rs1
li x12, 0x7ea4d736d54a5c2c # initialize rs2
sltu x30, x2, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x5, 0xe64fff4b2876933e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd42010288bf6a2db # initialize rs1
li x1, 0x041b3d9d9e06cd26 # initialize rs2
sltu x5, x3, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x15, 0x9df5f3f87d9b70e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd055102c8543f2f8 # initialize rs1
li x11, 0x787e787377638100 # initialize rs2
sltu x15, x4, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x22, 0x6fe27505ed1ff1e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd7451cbadb3e496e # initialize rs1
li x31, 0xb183c190b21f5013 # initialize rs2
sltu x22, x5, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x24, 0x8654d6b9046710c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8632c1f822c4d10c # initialize rs1
li x4, 0x776977ea4b401f2a # initialize rs2
sltu x24, x6, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x9, 0xd3dd718dd3dd1ab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x38a3bf6b9594caac # initialize rs1
li x20, 0xc62f12a1206ce9de # initialize rs2
sltu x9, x7, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x22, 0x1070575b3064f768 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5abd369e0324244c # initialize rs1
li x25, 0x7e74284b78dc0679 # initialize rs2
sltu x22, x8, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x30, 0x0bfbf71108f8835c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9fac41823164a85c # initialize rs1
li x6, 0x4588b7a57a64cc26 # initialize rs2
sltu x30, x9, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x6, 0xa7482e75e2759f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb49e779a90c92930 # initialize rs1
li x9, 0xc195c5e68d313a55 # initialize rs2
sltu x6, x10, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x6, 0xdb6154a21197f496 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9915cfcbd35bdc4b # initialize rs1
li x2, 0xdcf39c98a7260889 # initialize rs2
sltu x6, x11, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x23, 0x00371e0c798dc151 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd2025315ff6b44e3 # initialize rs1
li x20, 0xecca654a09fac664 # initialize rs2
sltu x23, x12, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0x03c425ac6e1d6ea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa1f23800a1353dae # initialize rs1
li x2, 0x44e224419a5ee9bf # initialize rs2
sltu x14, x13, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x7, 0x8b015c1fa0c0b655 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdf353b68e38d5ace # initialize rs1
li x16, 0x1ebd7648d3252a8f # initialize rs2
sltu x7, x14, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x21, 0x456a1e52fa4a9bb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3dc9a50bd195c0a8 # initialize rs1
li x4, 0xf604224356e589f7 # initialize rs2
sltu x21, x15, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x3, 0xc907687e65fbcf43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x25314b8f99ca1964 # initialize rs1
li x20, 0xc0c8b5793f0d022a # initialize rs2
sltu x3, x16, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x1, 0xa89a6d3035974d66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xea13b6106a42a052 # initialize rs1
li x24, 0x2dcc815eed4a1a64 # initialize rs2
sltu x1, x17, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x7, 0x8f18adc894586b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7c3ed99788edb10d # initialize rs1
li x3, 0xf33fca392f186504 # initialize rs2
sltu x7, x18, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x1, 0x8dc0b7bb15d44f5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x63e66bf8af255fe6 # initialize rs1
li x21, 0x5529212389b03468 # initialize rs2
sltu x1, x19, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x14, 0x45882ed5308b0307 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfd4fb8263e5c82e4 # initialize rs1
li x28, 0x3fec17f4a29d6c71 # initialize rs2
sltu x14, x20, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x2, 0x6528c095c9e996b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7f5c8196f79fbe74 # initialize rs1
li x18, 0x2e2845f10dcb0b8b # initialize rs2
sltu x2, x21, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x20, 0xa598b5c45c68bae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd3e58bdb51709df8 # initialize rs1
li x31, 0xac1ea48bc9168f84 # initialize rs2
sltu x20, x22, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x1, 0xbd44df409d8cb027 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7f77792ba351aa31 # initialize rs1
li x29, 0x36d7c0810009e6fb # initialize rs2
sltu x1, x23, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x14, 0x392427002331bc3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7b3a58706a8d90f7 # initialize rs1
li x28, 0xa9b571a02f732545 # initialize rs2
sltu x14, x24, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x17, 0x3c54f3513f2ef604 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x35fe3670b70185f7 # initialize rs1
li x31, 0x75115bfe6235dd75 # initialize rs2
sltu x17, x25, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x13, 0x574c8221c34ae52f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf341faf806be0dec # initialize rs1
li x6, 0xb9e9a594d6d05053 # initialize rs2
sltu x13, x26, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x15, 0x4002b00dc14aeac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xdf0356a19d1823b1 # initialize rs1
li x28, 0x3c03db74386fc171 # initialize rs2
sltu x15, x27, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x7, 0x73881c3aaf95c5d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xef7260ec58f06438 # initialize rs1
li x15, 0x8e343af693a4d51d # initialize rs2
sltu x7, x28, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x22, 0xd475a021034bdcb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3a8ae63f09c9bc90 # initialize rs1
li x9, 0xc93db649211992d5 # initialize rs2
sltu x22, x29, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x13, 0x24095a2d16688001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfd95651443119a38 # initialize rs1
li x3, 0x637a9479f058b063 # initialize rs2
sltu x13, x30, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x26, 0x344f2d910e64be07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x97abed3287843fec # initialize rs1
li x13, 0x7253862c9c80fe56 # initialize rs2
sltu x26, x31, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x27, 0xba9258a9a69c29eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x18dce168f7ccfadb # initialize rs1
li x0, 0x1264f6c1106c176b # initialize rs2
sltu x27, x7, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x7, 0x131731f9990fd92a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2cbc4ae8c8ca55d8 # initialize rs1
li x1, 0x5dac123c4168f8af # initialize rs2
sltu x7, x3, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x7, 0xcc5b43fc0f8b6c2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x34b070f12f0a162f # initialize rs1
li x2, 0xafa4b8d9a3521a1e # initialize rs2
sltu x7, x19, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x28, 0x2b2b359fcb8de084 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb0680fbaaa902533 # initialize rs1
li x3, 0x37a0bb409ee74b31 # initialize rs2
sltu x28, x24, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x11, 0xf17dec6f3e8a7496 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x340423dcfedb091c # initialize rs1
li x4, 0xd418f6f4261546ce # initialize rs2
sltu x11, x30, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x7, 0x1d2115d3a02cc1dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9a0afbf5258a4b07 # initialize rs1
li x5, 0x3d740ee8779680b7 # initialize rs2
sltu x7, x8, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x2, 0x8ba37f1905dcff36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xec3be132ccdadf3a # initialize rs1
li x6, 0xc1a8a6cbcc82148e # initialize rs2
sltu x2, x26, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x25, 0xd67d065f0eb831f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb6338cd63f445ebb # initialize rs1
li x7, 0x23ae60b928b3ba7f # initialize rs2
sltu x25, x18, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x14, 0xbcb702fabeeb34f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x89e08c49a282f397 # initialize rs1
li x8, 0xb4fb4b5e9064a28c # initialize rs2
sltu x14, x16, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0xde6914ecfbfde0b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x306e4b7c5788819b # initialize rs1
li x9, 0xf29f8122d302ee84 # initialize rs2
sltu x3, x25, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x21, 0x82671ca6f7296012 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0ff4e25009c64257 # initialize rs1
li x10, 0xaeef513757be38e1 # initialize rs2
sltu x21, x20, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x13, 0xb3e1c2f5f360e17b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9fab4ac5849f583d # initialize rs1
li x11, 0x49be33c44eb94beb # initialize rs2
sltu x13, x1, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x6, 0x5f7ffe5627bc9497 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x32c0ce2770d175b2 # initialize rs1
li x12, 0x32b1e2733665c30e # initialize rs2
sltu x6, x19, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x26, 0x0f2687d9673bf92b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x392142309b74c0ed # initialize rs1
li x13, 0x4e2b875d265f9ea4 # initialize rs2
sltu x26, x24, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x5, 0x4bc8a7983e7b50fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x51bb22ae43cc6ed2 # initialize rs1
li x14, 0x14fa4e92d91eb1cc # initialize rs2
sltu x5, x9, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x28, 0xa7a1e26edceed85a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4842b380dce0104b # initialize rs1
li x15, 0xb35deb2756d2a91e # initialize rs2
sltu x28, x22, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x27, 0xe35a202a62ff345a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7934757ed27cb69d # initialize rs1
li x16, 0x36952e11ab9624fc # initialize rs2
sltu x27, x5, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x4, 0x31db89257f023c1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb85dd360df535606 # initialize rs1
li x17, 0x01e99e3386bffeb8 # initialize rs2
sltu x4, x15, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x10, 0x50e31c868ee039c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x46170dd215df9a08 # initialize rs1
li x18, 0xa2397d80f8724032 # initialize rs2
sltu x10, x2, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0xbba34fa497e649e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x46562373e4968110 # initialize rs1
li x19, 0x87d99e1f1ccf2b53 # initialize rs2
sltu x24, x8, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x11, 0x858dd964a992a308 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xacd56ebca848b972 # initialize rs1
li x20, 0x885f771694afc689 # initialize rs2
sltu x11, x14, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x10, 0x4571d636abb4f4d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6143399e13b15910 # initialize rs1
li x21, 0xb27419304114c6f6 # initialize rs2
sltu x10, x1, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x31, 0xba36e646c5909dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1f9a12f3325bb180 # initialize rs1
li x22, 0x14ba5b686ddc4c23 # initialize rs2
sltu x31, x27, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x22, 0xed61f017e252d935 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8573abe85358b33e # initialize rs1
li x23, 0xb9cbb5e81e2bd629 # initialize rs2
sltu x22, x4, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x23, 0xfe461eaa49394dee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9217d823b66738ea # initialize rs1
li x24, 0x523bd53392eec56b # initialize rs2
sltu x23, x29, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x7, 0x05529194ef614625 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8659e3fa70e12592 # initialize rs1
li x25, 0xef555b53f3b7bd9e # initialize rs2
sltu x7, x26, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x5, 0x2826df47a2538755 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x187035b90d4845d7 # initialize rs1
li x26, 0x0f5900d0f9f1278a # initialize rs2
sltu x5, x11, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x29, 0x92e1cceb8ad1f3de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x1a6afa1f9f92c092 # initialize rs1
li x27, 0x54b2702420cc38fa # initialize rs2
sltu x29, x5, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x12, 0x64790a72505320b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x16bff0629d37e9aa # initialize rs1
li x28, 0xf847f1ecbad446fe # initialize rs2
sltu x12, x5, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x15, 0x4c59904be55a1500 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1afb4477c244b7d7 # initialize rs1
li x29, 0x12bb7fd7117fe78e # initialize rs2
sltu x15, x7, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x2, 0x7a1d92a12ca350f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x37d3ef07643294b9 # initialize rs1
li x30, 0xf2eaa973c60249b9 # initialize rs2
sltu x2, x11, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x22, 0x39394654576099d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xeff74fa6c71e16a9 # initialize rs1
li x31, 0xb8eadf3090935fd6 # initialize rs2
sltu x22, x10, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xb13a8fd6e9cb24e0)
li x10, 0x1a90b440bbeec22a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1a90b440bbeec22a # initialize rs1
li x0, 0xfd7bfbdf218f10cb # initialize rs2
sltu x10, x26, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xd4a0c240efe6c8d6)
li x17, 0xd4a0c240efe6c8d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd4a0c240efe6c8d6 # initialize rs1
li x16, 0xd4a0c240efe6c8d6 # initialize rs2
sltu x17, x0, x16 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x54598d17e6b01c6d)
li x14, 0xa8b8ef3e71402c1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x54598d17e6b01c6d # initialize rs1
li x19, 0x54598d17e6b01c6d # initialize rs2
sltu x14, x23, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0x40be443b13691249 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x3, 0x485f3c550d93b2b7 # initialize rs2
sltu x9, x4, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x26, 0x2e0ec55676efabf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
li x14, 0xd46e97c26e769c7c # initialize rs2
sltu x26, x18, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x85c63f2d709b8082 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x2, 0x7344ffaf792cbb02 # initialize rs2
sltu x29, x14, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x12, 0x3b4a5cb57842df63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000000 # initialize rs1
li x5, 0x21209bd9341e42b6 # initialize rs2
sltu x12, x10, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x19, 0xb876a1d7217a3745 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x30, 0xe793560604019f9d # initialize rs2
sltu x19, x11, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x16, 0xd0acbf71110aad74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x12, 0x85661a6cbc6b5878 # initialize rs2
sltu x16, x22, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x31, 0x2a6f7337580a6b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffffffffffe # initialize rs1
li x12, 0x091ac917ef36db5e # initialize rs2
sltu x31, x30, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x31, 0x7bee607e3dfacaae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x23, 0xa9c833e5603fabba # initialize rs2
sltu x31, x20, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x5, 0xe54135ea034660bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x30, 0x1e851744d52d27cb # initialize rs2
sltu x5, x7, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x5, 0xd01599d2c65678ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0xe58d5a3dd993fc7d # initialize rs2
sltu x5, x1, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x15, 0xfadd98a3bb3d3888 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x594f94528db59fad # initialize rs2
sltu x15, x29, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x27, 0xcfc36873157c1240 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
li x13, 0x4cb3faac24836bd5 # initialize rs2
sltu x27, x14, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x1, 0x6461467b8aa47863 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # initialize rs1
li x17, 0xb21a3ac9a4c1a4ee # initialize rs2
sltu x1, x4, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x18, 0xf53faede1889f1b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs1
li x12, 0xf77a257b1c30ece5 # initialize rs2
sltu x18, x10, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x31, 0xac6427f4663882a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x19, 0x0a16a520893df568 # initialize rs2
sltu x31, x14, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x26, 0x5657071c2dcbcdb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000001 # initialize rs1
li x31, 0x124db66df3db3afb # initialize rs2
sltu x26, x25, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0x1340a9dc921073b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8856821c6ee9e823 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
sltu x25, x14, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0x863e39269006f3e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x1dcfde394f0242bc # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sltu x13, x24, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x28, 0x4e948c074650d5ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x895603a6f2a240d3 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
sltu x28, x4, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x28, 0xc4d2a538655c1d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x597a2118b23ec5ea # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
sltu x28, x1, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0x83198fe4a89a0134 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x036cd91afc5ddfaa # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
sltu x13, x2, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x7, 0x2f7000ba8a124b30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2d2a497f287fa3d4 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
sltu x7, x25, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x12, 0x670b811fd09df383 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4022e1dc34a24d71 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
sltu x12, x25, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x23, 0x2fd82834fb021c47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x52173ffa0e61548c # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sltu x23, x3, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x17, 0x72821a38b6102966 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfa290c93c6ebbb90 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
sltu x17, x29, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x22, 0xecb0d3de4a4cdb91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7aac9d6acf9c36c7 # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
sltu x22, x24, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xc5c1ef9cde03aa73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe92f2fba41f31109 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x26, x12, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x22, 0xaed7ad62e2b6e2cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9f202cc6350b5140 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sltu x22, x15, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x31, 0x9df9ab10e6d3c500 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xcaa1ef28051de618 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sltu x31, x5, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x7, 0x49800700bc55a63f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8074650433cbe9e1 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
sltu x7, x25, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0x9a45b94a6d89f5c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc8b8bf3a524f4258 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sltu x14, x16, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x18, 0xea3ee3a7848f2c45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1c7b4a43f673b43c # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sltu x18, x13, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x5, 0xb0a85f556fcc11a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
sltu x5, x17, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x31, 0x208caef9fe4a4ffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
sltu x31, x19, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x24, 0xdcdaf1c6135f6cc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
sltu x24, x17, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x8, 0xd4dd5158fd83c2ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
sltu x8, x17, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x24, 0x091bfdf47c982756 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
sltu x24, x9, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x3, 0x76f4ce1daf190d89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
sltu x3, x2, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x24, 0xad48342049a1954f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
sltu x24, x15, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x15, 0x5874b634de985238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000000 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
sltu x15, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x29, 0xc726171abd876d06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
sltu x29, x2, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x7, 0x8bb10ec941625c3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
sltu x7, x28, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x3cd28d6ce648e115 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x19, x17, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x16, 0xaac52c009f9832ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
sltu x16, x2, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x26, 0xffe006d816431ac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sltu x26, x3, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x19, 0x2799af7d51a54ce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
sltu x19, x15, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x1, 0x62218a46726a6eff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000000 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sltu x1, x30, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x9, 0x0b8cb4bfa70b11db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
sltu x9, x5, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x30, 0xc14c1d1e11103308 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
sltu x30, x27, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x9, 0x5fcf76da153b4408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
sltu x9, x31, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x9, 0x7e917e2d53e1db86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
sltu x9, x13, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x20, 0x04b8f896f1f84adb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
sltu x20, x2, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x26, 0xdbddcc96f64889b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
sltu x26, x28, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x22, 0x9cc9fd1b38ebc468 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000001 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
sltu x22, x7, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x28, 0xcb4a69afe6a15edd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sltu x28, x1, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x3, 0xc72cb70211d760f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
sltu x3, x10, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x28, 0xd5f391220176b0c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
sltu x28, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x20, 0x5e6ebbae9460386d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
sltu x20, x21, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xa9e9531d2ff77564 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x20, x1, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x8, 0x76e9db9b9434bd05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sltu x8, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x10, 0x6098828e5d7f7ee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sltu x10, x16, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x14, 0xc2fe4624924bac07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000001 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
sltu x14, x25, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x28, 0x642adcb7ebf0b561 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
sltu x28, x11, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x14, 0x47582249155d9a38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sltu x14, x10, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x19, 0x77539cb4ae4202a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
sltu x19, x22, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x7, 0x56fa40c98e20bb3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
sltu x7, x26, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x28, 0x04c1dd13028dc3e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
sltu x28, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x14, 0xb25184462b273589 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sltu x14, x27, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x1, 0xb53e51f45a5a190c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
sltu x1, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x5, 0xfcd6246822c28359 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
sltu x5, x24, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x10, 0x8940909c946f2c7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sltu x10, x13, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x27, 0xbe11b4b489273e32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000002 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
sltu x27, x17, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x9, 0xd2646e1aedf61a98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sltu x9, x27, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x24, 0x31c48e65fedd2b39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
sltu x24, x9, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0xcd43fa9f295f4f7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x2, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x25, 0x3dab7bdbcbb8db69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000002 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sltu x25, x10, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x3, 0xddbab5835de23ec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
sltu x3, x13, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x17, 0xe2631131d9da2f54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sltu x17, x6, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x1, 0x39d54f52345c2560 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
sltu x1, x14, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x31, 0x75adcf99f6105efa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sltu x31, x8, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x24, 0x6c4c954a51cb24b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
sltu x24, x18, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x25, 0x4c9dfe2a9ba648a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sltu x25, x11, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x21, 0x26342297e0cee366 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sltu x21, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x6, 0x1fed08a586ba23a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
sltu x6, x16, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x14, 0x70c22bca0c1cd350 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sltu x14, x1, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x30, 0xaec3e88b5c0c9074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
sltu x30, x22, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x23, 0xe3b1971ef4d0cd8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sltu x23, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x24, 0x090907ffdee7ddf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
sltu x24, x23, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x19, 0xb72846cba2472f97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000000 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
sltu x19, x5, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x7, 0x2d4c5e80ab7b87f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
sltu x7, x20, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x760f6fabf6830ca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x10, x8, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x1, 0xdad460d90e1e3f8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
sltu x1, x11, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x25, 0x1a2cf10489eabcd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000000 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
sltu x25, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x28, 0xfc10dc4d442e1a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sltu x28, x21, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x10, 0xd7720cc2c10e22cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
sltu x10, x22, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x29, 0xe7865afd4442e214 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sltu x29, x30, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x13, 0x65943f9486746c6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
sltu x13, x21, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x6, 0x82df056a451ad3f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
sltu x6, x24, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x5, 0x78347d766f242dd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
sltu x5, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x11, 0x56029bef83b64ef6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
sltu x11, x20, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x28, 0xd246c61d9e9cefde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sltu x28, x31, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x10, 0x0dedb5e37351b852 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
sltu x10, x15, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x16, 0x8e09e3867b1d00f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
sltu x16, x25, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x10, 0xb5efa66854a17feb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sltu x10, x29, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x12, 0x39493d005831a5ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
sltu x12, x3, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x27, 0x899fcacbadda3f29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
sltu x27, x4, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xe2c5a90bfd089835 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x20, x13, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x17, 0x0b69675646b011cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sltu x17, x26, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x20, 0x5ac96c14f84a05d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
sltu x20, x13, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x25, 0x0813eb805a894f71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sltu x25, x26, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x5, 0x2bfc7c74a52b7aca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sltu x5, x13, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x25, 0x1bcaa5a0039881c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
sltu x25, x24, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x15, 0x903fa5a103459aa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
sltu x15, x18, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x11, 0xce86a8d3ec46a75c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
sltu x11, x23, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x4, 0xd09c145c8c6ef2ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
sltu x4, x10, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x9, 0x94709006606c9934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffffffffffff # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
sltu x9, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x31, 0xbb5c2ee516a25e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
sltu x31, x13, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x7, 0x9d5be73a434d003d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sltu x7, x1, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x6, 0x22fc6050399bc0fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
sltu x6, x13, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x9, 0x0755c26eeb018316 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffffffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
sltu x9, x17, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x24, 0x524ee0a998ba71ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
sltu x24, x3, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x7, 0x4e6d691baa77ec6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
sltu x7, x22, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x62261697dad7514e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x25, x24, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x15, 0xd0d2d4fc3f6f69f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
sltu x15, x6, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x30, 0xd140b2b926288678 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
sltu x30, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x17, 0xe6dafcb175facbf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
sltu x17, x27, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x16, 0x641e8de60a1ca1ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
sltu x16, x27, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x19, 0x6706acd83ca89a92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sltu x19, x4, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x27, 0x784773ac73f6fc81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sltu x27, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x1, 0x52a2259acb75314a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
sltu x1, x19, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x6, 0xd9c54ac5b3142c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
sltu x6, x29, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x9, 0xe5852d9bb2ac603b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sltu x9, x14, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x17, 0xf8d26f1685a44c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sltu x17, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x15, 0xc819a6559fee2bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
sltu x15, x12, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0xc3bd39152902fbdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sltu x17, x16, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x9, 0x8a471606af30556f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
sltu x9, x12, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x28, 0x81a6523192bb064b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sltu x28, x8, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x11, 0x6947dbc0ba69870f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
sltu x11, x2, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x91aaadafdef4c82b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x4, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x14, 0x46142a36590d4bef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffffffffffe # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
sltu x14, x25, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x21, 0xfc9f7ea2714e0bab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
sltu x21, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x11, 0xe25d7494102853e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
sltu x11, x7, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x31, 0x0f7825f0b964ae10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
sltu x31, x1, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x28, 0x8ac856bec84b0ec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
sltu x28, x23, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x6, 0x18905fbf1546c13e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
sltu x6, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x29, 0xcf05d4e440273b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sltu x29, x13, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x6, 0x3a0da4055c055c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
sltu x6, x8, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x24, 0xe8505f04ebc505f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
sltu x24, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x14, 0x7aa38c6eaa9bcce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
sltu x14, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x26, 0x655e9928e7614ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sltu x26, x30, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x12, 0x62c8f611f91dfc63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
sltu x12, x6, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x5, 0x3c9fb11c9685e1da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
sltu x5, x4, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x29, 0xb6bd4e8fc2340d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
sltu x29, x2, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x21, 0xd2411028efdcc270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
sltu x21, x4, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xd832d2524084d8d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x10, x16, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x13, 0xc6e37b5a6bd379e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
sltu x13, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x10, 0x0de59effa8e0203e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
sltu x10, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x9, 0x109f20789e822322 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
sltu x9, x3, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x5, 0x4a790d6986012c90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sltu x5, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x6, 0x8e759cda7d3c98f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
sltu x6, x15, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x9, 0x603e5a6b52bf053d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
sltu x9, x11, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x23, 0x95ca98b44226280b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
sltu x23, x25, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x30, 0xffa2fa4937877270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
sltu x30, x24, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x10, 0x67e0766e5efd2a40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
sltu x10, x11, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x15, 0x70f31df46bc520ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
sltu x15, x29, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x20, 0x60003cf24c8979f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
sltu x20, x24, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x23, 0x00251ef5998b0891 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
sltu x23, x6, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x26, 0x5eda877e4a5446d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffffffffffe # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
sltu x26, x4, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x3, 0x02f0f288bb0f51a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sltu x3, x7, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x17, 0x8a1c9a8405d2df68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
sltu x17, x18, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x5811bb013e642656 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x15, x19, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x18, 0xe22b83cbc0303698 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
sltu x18, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x23, 0x4e884c09c6b2ecba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffffffffffe # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
sltu x23, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x28, 0x5b394e3fadc93ecd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sltu x28, x24, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x6, 0xc95d4325c7c9344d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sltu x6, x10, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x24, 0xa0ba353afea6cae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
sltu x24, x12, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x1, 0x762ba984a3ad23c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sltu x1, x13, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x31, 0x0864daa2c3dea653 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
sltu x31, x12, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x25, 0x9a7ecbe21101accb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sltu x25, x26, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x26, 0xbcbf8baae9e0e01b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
sltu x26, x4, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x8, 0x929fb90d7c2ffab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
sltu x8, x22, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x19, 0x87930fa81b6f42ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
sltu x19, x29, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x6, 0x488f587209be829c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sltu x6, x24, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x10, 0x71615514312cbe17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
sltu x10, x24, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x23, 0x1a7a3bd5e80b9a44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sltu x23, x20, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x23, 0x7b54e279cd73d2e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
sltu x23, x20, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x07d954e1742c670a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x18, x1, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x14, 0x9f0e8b8bcb7c444f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
sltu x14, x26, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x23, 0x12334e2c249e244c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
sltu x23, x5, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x23, 0x6b63eb1126d00202 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc887763ae86f7 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
sltu x23, x3, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x18, 0xc1b03c2816787260 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
sltu x18, x2, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x2, 0xcef970e873b2864e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
sltu x2, x22, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x23, 0x4d9f9721e43e48d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
sltu x23, x27, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x21, 0x416c84b390649996 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
sltu x21, x30, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x31, 0x240d1287378da85c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
sltu x31, x18, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x5, 0xebc9fc89e6fa08b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
sltu x5, x18, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x10, 0x855fa076676895c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
sltu x10, x27, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x10, 0x71b59e594459e076 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sltu x10, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x9, 0xd6d8d0bc23a36c29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
sltu x9, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x22, 0x55c5586542646855 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
sltu x22, x13, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x7, 0x027c48879dff6950 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sltu x7, x31, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x1, 0x8eaf2152d9eecf97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
sltu x1, x28, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x58095de76bce60a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x27, x19, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x3, 0x9642e88b439f3c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
sltu x3, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x4, 0xc6338334fbf9961e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sltu x4, x3, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x22, 0x38254a1ddaeb6f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
sltu x22, x21, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x5, 0x60f91bfe0859032a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
sltu x5, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x22, 0xa37f5b152b8a039a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
sltu x22, x4, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x30, 0x93ee320b808deb77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
sltu x30, x23, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x21, 0x441cb0bc547b656a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
sltu x21, x6, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x10, 0xb193fc99e3bb8f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5555555555555555 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sltu x10, x5, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x29, 0x6fe43fd0588fa18d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sltu x29, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x13, 0x1c5968be3d1d8097 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
sltu x13, x23, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x27, 0xb01b0671bf5a39bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sltu x27, x20, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x13, 0xeeeba9cdce780329 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
sltu x13, x1, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x1, 0x44c5e5c39040287c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
sltu x1, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x28, 0x77d8a82e412d4e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
sltu x28, x12, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x19, 0x10b5fad7d57d9b82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
sltu x19, x1, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x56a2ce2a400d06e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x29, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x4, 0x20c02be1d6ca7bc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
sltu x4, x11, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x13, 0xb4c39db71b03b216 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5555555555555555 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
sltu x13, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x27, 0xec09e04bc39e49aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
sltu x27, x11, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x22, 0xd781a34c3d0a4c97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5555555555555555 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sltu x22, x3, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x4, 0x9d37fb6326d358a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sltu x4, x27, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x4, 0xa741785c4c45a944 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
sltu x4, x10, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x2, 0x122cd7064228430f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
sltu x2, x31, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x27, 0x55702bc99362ddc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
sltu x27, x12, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x9, 0xb0370f8ec55f0274 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
sltu x9, x14, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x15, 0x2749387429fd3981 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sltu x15, x23, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x11, 0xa63ddf3ea475a990 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
sltu x11, x29, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0x392c3930a44a480c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
sltu x20, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x30, 0xe6264c6dd6df2f59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
sltu x30, x26, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x13, 0x8b4814403b629bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
sltu x13, x3, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x23, 0x5b17ae3361598082 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
sltu x23, x31, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x89f2e996dfa5789e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x31, x30, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x24, 0x0881f6a0cb5723ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
sltu x24, x23, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x10, 0xc5ade9101b399368 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
sltu x10, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x7, 0xfcba70dcc4db5f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
sltu x7, x29, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x29, 0xa4f9ab2ba38b8d3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
sltu x29, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x6, 0xac8c16bffafc541b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
sltu x6, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x28, 0x5c7f427d079dc31d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
sltu x28, x8, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x20, 0xb3a864fb3ac66746 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
sltu x20, x14, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x31, 0xd933dc7546423f6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sltu x31, x7, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x20, 0xc64a2b6867c9478c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
sltu x20, x5, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x23, 0x49aa5d366681d90d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000fffffffe # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
sltu x23, x22, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x1, 0x6f594043050b4fbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000fffffffe # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
sltu x1, x8, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x10, 0x3fb5011c69d66c57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
sltu x10, x19, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x19, 0x3d8859eba2265c83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000fffffffe # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
sltu x19, x17, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x20, 0x926aa82994b2c1d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sltu x20, x10, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x5, 0xb45253f135643b29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
sltu x5, x12, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x6a069294d75a1a0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x27, x25, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x29, 0xc1fb0ed48caf5894 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sltu x29, x12, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x9, 0x8d71f3085812ba60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
sltu x9, x18, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x23, 0x1c3f8813d51accf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
sltu x23, x16, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x11, 0x986ba00805a6e13e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
sltu x11, x4, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x17, 0xe7c77e9bf16d3568 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
sltu x17, x5, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x12, 0xccabb3f83616f45d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sltu x12, x14, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x4, 0xa0c5eae0d82daa9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000000 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
sltu x4, x9, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x26, 0xb39f0bd20fcf15fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sltu x26, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x30, 0x55afcbc0ce667091 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
sltu x30, x12, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x27, 0xd3dcc11db0671785 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
sltu x27, x22, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x6, 0x038db49b175bac2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sltu x6, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x10, 0xbd63260da9eb7f09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000000 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
sltu x10, x26, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x27, 0xe7c160cb3029c44c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
sltu x27, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x10, 0x76bb6fa94332dcc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000000 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
sltu x10, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x30, 0x8bfa8b5175a8ad9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
sltu x30, x15, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xd1909c54f1b17d67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x6, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x23, 0xd4e53f7f955110b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
sltu x23, x22, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x14, 0x494494d5697a2bd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sltu x14, x3, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x12, 0x15842ada7c7270a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sltu x12, x31, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x10, 0xc6c2911a35b3594e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
sltu x10, x8, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x25, 0x50ff3f7913645a71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
sltu x25, x16, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x18, 0x0e8525912089773a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sltu x18, x6, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x27, 0x85e6aefff5199c76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
sltu x27, x3, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x19, 0x37079b18912575dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
sltu x19, x23, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x14, 0x2e1e81a747f2a85f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
sltu x14, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x14, 0xea3987a14378420e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
sltu x14, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x22, 0xa174cde37763534c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000001 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sltu x22, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x10, 0x512b07004c26eb38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sltu x10, x17, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x19, 0x364d681cc9bc250d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000001 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
sltu x19, x5, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x28, 0xf21e7b15d89bb2b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
sltu x28, x23, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x7, 0x4a33b0c5667aa943 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
sltu x7, x26, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x6498a7d8b6d12d1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x16, x18, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x11, 0x1226294ec0c76284 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
sltu x11, x28, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x7, 0xe0f0cbc4b54896cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
sltu x7, x1, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x16, 0x4e47e6470417ea40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
sltu x16, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x15, 0xaffc500d5928bcc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
sltu x15, x12, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x19, 0xff59d34ff8425534 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
sltu x19, x25, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x10eacf4c245c178f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8a2a621c5f851c7b # initialize rs1
li x7, 0x6089f98056195150 # initialize rs2
sltu x0, x0, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x1bb928b12c9beac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe6a3447aa97f5449 # initialize rs1
li x20, 0xc385a0a99e93d92b # initialize rs2
sltu x1, x1, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x3132dc9eb3ea37f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0b75edabd8618d5f # initialize rs1
li x6, 0x03b3cee1f0b7afe6 # initialize rs2
sltu x2, x2, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x4ff614e5a0572335 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8013dc29b4a7097e # initialize rs1
li x23, 0x90b70b110889b79c # initialize rs2
sltu x3, x3, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x6e6300ee9b470fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x26637840f094d05f # initialize rs1
li x13, 0x7d7dead82f3254c0 # initialize rs2
sltu x4, x4, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x39d61122beb89fce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3a64045f16f917ba # initialize rs1
li x31, 0x69441ac2d35f804a # initialize rs2
sltu x5, x5, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xc5a4dba36ee132cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaf754927efa1a8eb # initialize rs1
li x9, 0x65ad3f0b35e69e88 # initialize rs2
sltu x6, x6, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x69adc6b6c27d5174 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xebf94aff2a9da630 # initialize rs1
li x22, 0x1b12739cadd2b48e # initialize rs2
sltu x7, x7, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x5fb729b2f0a97d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5b780e9ddc78d5c7 # initialize rs1
li x30, 0xe29b8bf553e47a5b # initialize rs2
sltu x8, x8, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf9715a7c80f1f66c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe1ac1de9536f430d # initialize rs1
li x31, 0x4d8a433cb4746f25 # initialize rs2
sltu x9, x9, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x3add5037bd7e12f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xcc79edf5528966de # initialize rs1
li x27, 0xf3b9da98b0d5edd6 # initialize rs2
sltu x10, x10, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xf1fa6589fefd497d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0bd49bd2ca8141b8 # initialize rs1
li x3, 0xbe55589ae76727ea # initialize rs2
sltu x11, x11, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd027b81fd3b4adac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2559311e5e6ec406 # initialize rs1
li x31, 0x03fbf97ed90d0b2d # initialize rs2
sltu x12, x12, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x0c869ad13db8db00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x82f6af79033e4111 # initialize rs1
li x20, 0x0549c4b22f79f18f # initialize rs2
sltu x13, x13, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x83eccce85c894724 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xace68a6d2b0aa16c # initialize rs1
li x15, 0xc3b6b77c192f49c3 # initialize rs2
sltu x14, x14, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x5224475c4c8dfff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8b12e4c228f47778 # initialize rs1
li x11, 0xe81ce0568fa9ad62 # initialize rs2
sltu x15, x15, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x993c580aa1edab88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x09049404469f214f # initialize rs1
li x22, 0xaeeebff1c5f73d9a # initialize rs2
sltu x16, x16, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xf7087a0615f4d033 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9ee4d7059e593b5b # initialize rs1
li x2, 0x8c7a7c7e71ce9153 # initialize rs2
sltu x17, x17, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xb7314250daea820f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc11cdc98c74a06ce # initialize rs1
li x20, 0xaf09a49952c4269d # initialize rs2
sltu x18, x18, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x70897be2c35407bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x859eed8dad149786 # initialize rs1
li x6, 0x6b9d03b23e9cdf43 # initialize rs2
sltu x19, x19, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x9a3013589697f663 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfc91cfdd87a59ff5 # initialize rs1
li x12, 0x595f5e4ef12b7903 # initialize rs2
sltu x20, x20, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xb6fa65ff4b4d8156 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x83466b0d77d59da0 # initialize rs1
li x1, 0x27555a012309aab1 # initialize rs2
sltu x21, x21, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xd87966195cd334c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xea5d6f42fba07d5b # initialize rs1
li x8, 0xdc48b998503cf36e # initialize rs2
sltu x22, x22, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x67c5726dbd84c0e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0ae2f486aacabe61 # initialize rs1
li x30, 0x650475ef8c26d418 # initialize rs2
sltu x23, x23, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x1ac45c3b15a8a432 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbea6a38d2ccce46e # initialize rs1
li x17, 0x4074e8747ccfa32e # initialize rs2
sltu x24, x24, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x74c5918c31546537 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x19b187fbc06a24d4 # initialize rs1
li x19, 0xb0dc8f2c265f5bfe # initialize rs2
sltu x25, x25, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x587b483f2c5a70c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xad108b17bc90a728 # initialize rs1
li x8, 0x12ff04f8540bec3f # initialize rs2
sltu x26, x26, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb697263391ddb277 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x02dbf07600b95dc2 # initialize rs1
li x5, 0x1eef16b809e23683 # initialize rs2
sltu x27, x27, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa46287ee8051b480 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1e0a6e6caee48f5a # initialize rs1
li x24, 0x43782721e682e460 # initialize rs2
sltu x28, x28, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xa149d773a7a96c57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x34764571b4618ab3 # initialize rs1
li x21, 0x7b0f905e9b66dabc # initialize rs2
sltu x29, x29, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x105693843d84643d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7798bed87fa2fd2a # initialize rs1
li x1, 0x86dacc5882a400ba # initialize rs2
sltu x30, x30, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xbc203d2e9f6519ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x121393a86a3fe7c8 # initialize rs1
li x14, 0x72072752166e3543 # initialize rs2
sltu x31, x31, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x9b04a14c80b5977e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x62a96056a8d44c69 # initialize rs1
li x0, 0x3526df0737bccca0 # initialize rs2
sltu x0, x25, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x0710b7e3a481a4ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x32f045a358faeb58 # initialize rs1
li x1, 0xd6e3850c3e0f2328 # initialize rs2
sltu x1, x24, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x66de1e0fa1650e6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcc4470f53fd56f9d # initialize rs1
li x2, 0x71d4b0af579f3db6 # initialize rs2
sltu x2, x18, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xfbca4e97b12d3708 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfc23970e9e6d76de # initialize rs1
li x3, 0x46d92fe962cd2185 # initialize rs2
sltu x3, x8, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x8d8d3f23dd500bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfa3b40dd8ccd362d # initialize rs1
li x4, 0xf342fc6047a9ca41 # initialize rs2
sltu x4, x6, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x08658dea6f294a56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd2ffb659d38632fe # initialize rs1
li x5, 0x70720e2467e28214 # initialize rs2
sltu x5, x23, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xae77c461998062a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdf34d56d0fd38254 # initialize rs1
li x6, 0xf2f3a9bc75c5b581 # initialize rs2
sltu x6, x23, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x79c9495c521bc06e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa6226b653c780285 # initialize rs1
li x7, 0xcec7d4627401ee6b # initialize rs2
sltu x7, x7, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x9712acca5f5367e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb23ef1d623d387b8 # initialize rs1
li x8, 0xd7ed4ce15a79c38d # initialize rs2
sltu x8, x7, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x3307a22f242b8cc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1804dcae5c205dc3 # initialize rs1
li x9, 0x883e6a816e9f0891 # initialize rs2
sltu x9, x26, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x0d8b1cdad241a0ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x363778e5c53b0898 # initialize rs1
li x10, 0xc850a10bd8409b24 # initialize rs2
sltu x10, x23, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x51b3aff589ad1f3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1d77c75968b93b5c # initialize rs1
li x11, 0x008b28a71ad88a34 # initialize rs2
sltu x11, x28, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x382fc6166aa4a66b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x44240acff53711f0 # initialize rs1
li x12, 0x3536ebfd8b363a1b # initialize rs2
sltu x12, x11, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x2725e2f01ded6e56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x471b4c8d9424ec4a # initialize rs1
li x13, 0xe581ded75b920451 # initialize rs2
sltu x13, x5, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x0aa6198327919ea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1efb9b98118a9361 # initialize rs1
li x14, 0x589dd26c1e70bf70 # initialize rs2
sltu x14, x18, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xa2c5b59e279cbbec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3a4054cea323e04b # initialize rs1
li x15, 0xdd0a782a353e0408 # initialize rs2
sltu x15, x1, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x4442907009806d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb63f42ebc22446c3 # initialize rs1
li x16, 0x02eec72e5bd7adc1 # initialize rs2
sltu x16, x26, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xd3e7800891757c7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7151e92ded94b566 # initialize rs1
li x17, 0x59e6e6167868242e # initialize rs2
sltu x17, x23, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x6c99021728f5cad5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf9b8fb658638a8ab # initialize rs1
li x18, 0x141aa45bdf143733 # initialize rs2
sltu x18, x29, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x31f4b6a87168dfe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9bf9387cb288407f # initialize rs1
li x19, 0x5edcde28231d3feb # initialize rs2
sltu x19, x15, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x69bf14889833bf69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x879cb82aed5f4e11 # initialize rs1
li x20, 0x98c0fea68aca755d # initialize rs2
sltu x20, x14, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x5f0575dc0462d4b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa689d0687a31bc8d # initialize rs1
li x21, 0xd81522772f370a7b # initialize rs2
sltu x21, x5, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x68ba0a872f36271d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x622ebdfded0f564d # initialize rs1
li x22, 0x27bc6ec953d746a3 # initialize rs2
sltu x22, x5, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x0be427b879837280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa66ae3435abdc54f # initialize rs1
li x23, 0x2e96ef5880e43411 # initialize rs2
sltu x23, x4, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xa432fb2eb13eb806 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc2bcb1e26efe8cf1 # initialize rs1
li x24, 0x7e1bad387e57b40b # initialize rs2
sltu x24, x15, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x005106a890dc6879 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xea34014f17888c50 # initialize rs1
li x25, 0xdd840081c7c1798f # initialize rs2
sltu x25, x13, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x83fc61284b3e8d8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x339599283a9aa0b5 # initialize rs1
li x26, 0x21bdb8949e16270d # initialize rs2
sltu x26, x25, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xb6fc06422a400101 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3847f08ff031df26 # initialize rs1
li x27, 0x6d9d592304fedb5a # initialize rs2
sltu x27, x5, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xf5c6a8c6a64a89ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7c39a8d405f825fc # initialize rs1
li x28, 0x4bcd78bfbd8bf747 # initialize rs2
sltu x28, x27, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x1e57aa9bf20902cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x928966769b20d16e # initialize rs1
li x29, 0x4180402a0c1f05e9 # initialize rs2
sltu x29, x9, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0xc4d4a2bb8f3c5fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xde54894590c90bbe # initialize rs1
li x30, 0xcb8d1d8c40ee6516 # initialize rs2
sltu x30, x29, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x7b610c885f42f2df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb7bbc18871d481c8 # initialize rs1
li x31, 0x8002fb810f3fe292 # initialize rs2
sltu x31, x23, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x9ab12fa2688c6d59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x20ce0239d7f7477a # initialize rs1
li x0, 0xe82716e11cb154d5 # initialize rs2
sltu x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x6a992bcd4333495c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x515b3a324684632c # initialize rs1
li x1, 0xf4c75fa02e2c8e13 # initialize rs2
sltu x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x6190871cccd2bcaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x300077286f144697 # initialize rs1
li x2, 0xc0df7c7356fa006f # initialize rs2
sltu x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x3f2a7ad31f39deb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1046c9c794bb5e8a # initialize rs1
li x3, 0x45b120e42759618b # initialize rs2
sltu x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x2f64caaf0791e92c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xba38aabdcdfad2e2 # initialize rs1
li x4, 0x4203a1c226d85a4c # initialize rs2
sltu x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0xa8d14137ea7d3ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5871a5d3c03b46c0 # initialize rs1
li x5, 0x5df09137bea9e51c # initialize rs2
sltu x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x4a3db617d164939b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x94ddec031edc9c8f # initialize rs1
li x6, 0x8445895904359cfd # initialize rs2
sltu x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0xa979bb8bf352c0e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe7ecd7257a50ba42 # initialize rs1
li x7, 0x7c98d9108620d591 # initialize rs2
sltu x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x141a5b6f7c9a792b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xadd2e9d8c47717d6 # initialize rs1
li x8, 0x0c59439e61873259 # initialize rs2
sltu x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x60965f3dbf6a4091 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc9886217226b21db # initialize rs1
li x9, 0xa88fa8b13c32be74 # initialize rs2
sltu x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xb7bfb26dee160312 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8217c94db7f4f36c # initialize rs1
li x10, 0xdcbe5e5696a02e2a # initialize rs2
sltu x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe559df337b1f6359 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc51a900ae0257763 # initialize rs1
li x11, 0xa5f17e47165abd80 # initialize rs2
sltu x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x1df72cafe79e4247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0c226491c8eb5928 # initialize rs1
li x12, 0x86d13630b9bec9f0 # initialize rs2
sltu x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x708886168ba3bcf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9ce2e3ad7223a04e # initialize rs1
li x13, 0x2119fc5f555ec4f5 # initialize rs2
sltu x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xb799c444e5d1aa98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x967d3edd39abb732 # initialize rs1
li x14, 0xe58513c086e4cb87 # initialize rs2
sltu x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xd917ec48c4f88e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x309d64f33bbafcdc # initialize rs1
li x15, 0x118c1608567a9090 # initialize rs2
sltu x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x022e8ce985777180 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa8f341f1c5454cfb # initialize rs1
li x16, 0x2e8b68c579e8cbdd # initialize rs2
sltu x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe449b4a48b5b94b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd9d5f634b6e66d3e # initialize rs1
li x17, 0xbb6352810ac69886 # initialize rs2
sltu x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xf0a40d001632806d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x908836539ba56e1d # initialize rs1
li x18, 0x5e0313c77812eaa8 # initialize rs2
sltu x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x510c4a1c563b6385 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8a4030a26da9caa8 # initialize rs1
li x19, 0xdcde4bc4ca6a0561 # initialize rs2
sltu x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x3d05f8fe4d60530f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf561e6a4d8d16d47 # initialize rs1
li x20, 0xaea380cbb5a10cff # initialize rs2
sltu x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xec42675afaff7d23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x895b3d163c51967f # initialize rs1
li x21, 0xa6f384ebf415b00b # initialize rs2
sltu x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x594ecb049214b862 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf7e61402a041b2e9 # initialize rs1
li x22, 0xc05c824d5d5a0beb # initialize rs2
sltu x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x151cbf4dec45d356 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc5bf0b0eefb3da19 # initialize rs1
li x23, 0xf583c5e3566cbff1 # initialize rs2
sltu x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xf834b2bc772a7113 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xef869ea8b10caddc # initialize rs1
li x24, 0xa825aad2bc82db58 # initialize rs2
sltu x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xdb84b06c0b80e75e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x90f89b8dc86ba6ff # initialize rs1
li x25, 0xdac52f3fbe911189 # initialize rs2
sltu x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x8518b5170c0c9e59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x67161ab1890c6bce # initialize rs1
li x26, 0x684a56d540d800fe # initialize rs2
sltu x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x24f815cf013d8997 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x75f3b0d2847531af # initialize rs1
li x27, 0xd26e564b0680cfb6 # initialize rs2
sltu x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x9d49ef520125e8ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfe903cd9ed47770b # initialize rs1
li x28, 0xea329a9c575f9680 # initialize rs2
sltu x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xc2b6d10f599e46be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa100a3c1b15b40bb # initialize rs1
li x29, 0x16526377ebd56441 # initialize rs2
sltu x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xbc5435d43b0f255e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdbebf03f5ef1d2cc # initialize rs1
li x30, 0xce1e60380667a5e3 # initialize rs2
sltu x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x24e7e020dc807033 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x780f90c1625eacdd # initialize rs1
li x31, 0x05637e7447e2bc85 # initialize rs2
sltu x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x12, 0x780d13f6dd482f55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4721c64546daa744 # initialize rs1
li x0, 0x269717ffa8c10839 # initialize rs2
sltu x12, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x23, 0x41f1eec800698282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x416046a9fc635f75 # initialize rs1
li x1, 0xa7d4e91b02621742 # initialize rs2
sltu x23, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x20, 0xd45e049a7e2ede48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xec9deb06ec803671 # initialize rs1
li x2, 0x4b451c985e5e1196 # initialize rs2
sltu x20, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x20, 0xc1e0c7d648c23105 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1436dec3b5cb2ada # initialize rs1
li x3, 0x2fb50881780d7bff # initialize rs2
sltu x20, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x30, 0x41f5e05e6c9fc437 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x379f573dd355d1b3 # initialize rs1
li x4, 0xe07359fe81a86a73 # initialize rs2
sltu x30, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x3, 0x24dcd8145b26e5ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6c8746a6532534db # initialize rs1
li x5, 0x279c79dfc8d12e7f # initialize rs2
sltu x3, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x29, 0xed94c7511ecf5254 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x50e49c4b22e36b51 # initialize rs1
li x6, 0xfb3de4c68132df82 # initialize rs2
sltu x29, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x6, 0x2f17b0327ad50aa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4298e1685d723348 # initialize rs1
li x7, 0xb77b4e32c93f3aa7 # initialize rs2
sltu x6, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x6, 0xac1b68e294afc87c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9c686941d26f10a8 # initialize rs1
li x8, 0x6d27e912b98d3460 # initialize rs2
sltu x6, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x1, 0x51be6180ffeb5325 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xeb406dad5d5bb54d # initialize rs1
li x9, 0xa3cbed6bfe9082fd # initialize rs2
sltu x1, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x30, 0xd2390f5f9a917a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x614b50a6f657f3cc # initialize rs1
li x10, 0x62b60f87b7dc495b # initialize rs2
sltu x30, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x7, 0x3ff0067704a49c1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x990fa1382f18339e # initialize rs1
li x11, 0xff419098a0d82984 # initialize rs2
sltu x7, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x8, 0x8f47fffe4b03cb36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x35352078e3dbfea5 # initialize rs1
li x12, 0x4d79b5efc857d099 # initialize rs2
sltu x8, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x4, 0xd0c6e8c5d94651c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3e6e38a625ede612 # initialize rs1
li x13, 0x9673cd04e4feb935 # initialize rs2
sltu x4, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x30, 0x4138de0de04cb530 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9ca3527ccdb56e71 # initialize rs1
li x14, 0x94d433a8ae7118d9 # initialize rs2
sltu x30, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x17, 0x458352a23131e10d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x756be56540cee308 # initialize rs1
li x15, 0xe66aaeece1bff24a # initialize rs2
sltu x17, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x30, 0x466e037a8f45b72d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9b99a51fed8e9929 # initialize rs1
li x16, 0x27619317ffad0e5b # initialize rs2
sltu x30, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x20, 0x63bc6df5d18eefb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd00a04da4f97ec6e # initialize rs1
li x17, 0x6146baef8b3e9ba8 # initialize rs2
sltu x20, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x21, 0x99d2d902af44cd8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1ba4d7cb03e8ec38 # initialize rs1
li x18, 0x4902b400e5bc5f88 # initialize rs2
sltu x21, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x10, 0x702a2a06d7ed1f7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xbd6b171226851e76 # initialize rs1
li x19, 0x604ddfd648fc08b8 # initialize rs2
sltu x10, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x19, 0x8dc99999860830c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6e491423f1fa3442 # initialize rs1
li x20, 0xb744cd25791d60c0 # initialize rs2
sltu x19, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x13, 0x9c9e7536f38ab008 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4e00f640f20d2f06 # initialize rs1
li x21, 0x218ee7acfc0e4ac0 # initialize rs2
sltu x13, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x29, 0xdb9b1c9e916f9e6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x200803ee449c1873 # initialize rs1
li x22, 0x0ccb42bdcf9670fd # initialize rs2
sltu x29, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x1, 0x037b78d287871d79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x04d7b1d4961473d4 # initialize rs1
li x23, 0xb5c27d77dee5b949 # initialize rs2
sltu x1, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x8, 0x29973f804ddae098 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc0c4084686ad2bbd # initialize rs1
li x24, 0x62aa724830e601c3 # initialize rs2
sltu x8, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x24, 0x3e4d7c6db09bf6fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa14e5deffde79fc4 # initialize rs1
li x25, 0xa58340b6408f748d # initialize rs2
sltu x24, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x12, 0xb062f04777a5fb25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd87383081a7deaca # initialize rs1
li x26, 0xd2b706e8029245ff # initialize rs2
sltu x12, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x28, 0x9027a0fcb873719c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd61d313f6bee1e28 # initialize rs1
li x27, 0xdc0c23e3d1187855 # initialize rs2
sltu x28, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x21, 0xbd6cb9d6a40e7def # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc7786db293a8cf4f # initialize rs1
li x28, 0x4d9f18ad472e277d # initialize rs2
sltu x21, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x24, 0x3ff3d10e5106b468 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xad2c0967f759a2b0 # initialize rs1
li x29, 0xe39dfcbe70a561b9 # initialize rs2
sltu x24, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x3, 0xa63b4aab308f34ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x33c9af29496b5d6d # initialize rs1
li x30, 0x13b5b57ba8356ecc # initialize rs2
sltu x3, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x18, 0x5e994ec1dde4e56b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe33bdda78fbc0bbe # initialize rs1
li x31, 0x2dba175340469aca # initialize rs2
sltu x18, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x43711892fa588804)
li x15, 0xa2790c1ffeadc6a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x43711892fa588804 # initialize rs1
li x21, 0xc5f59a34f8adb5bd # initialize rs2
sltu x15, x12, x21 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x31731c4f29406307)
li x27, 0x5b401086543397b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xce8ce3b0d6bf9cf9 # initialize rs1
li x21, 0x94bea3f22ab77efd # initialize rs2
sltu x27, x30, x21 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0xf6983f069e8e690)
li x13, 0xc3f1015923397aa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2c74e8b52b0d3704 # initialize rs1
li x9, 0x0f6983f069e8e690 # initialize rs2
sltu x13, x25, x9 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0xf86363799ed880f)
li x16, 0x697b54bec39af1d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1920f1ab346be357 # initialize rs1
li x19, 0xf079c9c8661277f1 # initialize rs2
sltu x16, x15, x19 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
