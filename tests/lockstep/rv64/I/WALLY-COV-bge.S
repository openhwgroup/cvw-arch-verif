///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-bge.S
// David_Harris@hmc.edu

 # testgen_header.S
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "macros.h"

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x0aceb7f32579d099 # initialize rs1
li x14, 0x8ec9799940738c28 # initialize rs2
bge x0, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0x8ec9799940738c28 # initialize rs1
li x14, 0x8ec9799940738c28 # initialize rs2
bge x0, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xef66a419fe6e1715 # initialize rs1
li x23, 0xcd6321bc35515904 # initialize rs2
bge x1, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xcd6321bc35515904 # initialize rs1
li x23, 0xcd6321bc35515904 # initialize rs2
bge x1, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xfdfa7377ebda55d2 # initialize rs1
li x24, 0x2ddc6dd71c84ff98 # initialize rs2
bge x2, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x2ddc6dd71c84ff98 # initialize rs1
li x24, 0x2ddc6dd71c84ff98 # initialize rs2
bge x2, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x5e3fb2f122afd4ce # initialize rs1
li x5, 0x6ca59bc7fdc4c80d # initialize rs2
bge x3, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x6ca59bc7fdc4c80d # initialize rs1
li x5, 0x6ca59bc7fdc4c80d # initialize rs2
bge x3, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x76f7b3a811caed95 # initialize rs1
li x10, 0xc7d11e8719f73002 # initialize rs2
bge x4, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0xc7d11e8719f73002 # initialize rs1
li x10, 0xc7d11e8719f73002 # initialize rs2
bge x4, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x137d1b627d822c47 # initialize rs1
li x12, 0x8c746b9bb42785c1 # initialize rs2
bge x5, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x8c746b9bb42785c1 # initialize rs1
li x12, 0x8c746b9bb42785c1 # initialize rs2
bge x5, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe0f4c72def4e508b # initialize rs1
li x21, 0x3b7a63c576c795d9 # initialize rs2
bge x6, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x3b7a63c576c795d9 # initialize rs1
li x21, 0x3b7a63c576c795d9 # initialize rs2
bge x6, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x6, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8ed7c3c4bf99cd51 # initialize rs1
li x5, 0xce0146b9e4f096fb # initialize rs2
bge x7, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xce0146b9e4f096fb # initialize rs1
li x5, 0xce0146b9e4f096fb # initialize rs2
bge x7, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x02e7c3246190d609 # initialize rs1
li x29, 0x58a8450c7368cfe5 # initialize rs2
bge x8, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x58a8450c7368cfe5 # initialize rs1
li x29, 0x58a8450c7368cfe5 # initialize rs2
bge x8, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x90a591bedc46d607 # initialize rs1
li x28, 0x50e9e39b5cb0472d # initialize rs2
bge x9, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x50e9e39b5cb0472d # initialize rs1
li x28, 0x50e9e39b5cb0472d # initialize rs2
bge x9, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x4ce8ccf93f6c4e9a # initialize rs1
li x31, 0x51f6ff85b4ae8a9e # initialize rs2
bge x10, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x51f6ff85b4ae8a9e # initialize rs1
li x31, 0x51f6ff85b4ae8a9e # initialize rs2
bge x10, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x1fb5253eddc2307a # initialize rs1
li x30, 0xb1f296e1aca3c870 # initialize rs2
bge x11, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xb1f296e1aca3c870 # initialize rs1
li x30, 0xb1f296e1aca3c870 # initialize rs2
bge x11, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x07dd052e6168418e # initialize rs1
li x9, 0x44b4ace547604527 # initialize rs2
bge x12, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x44b4ace547604527 # initialize rs1
li x9, 0x44b4ace547604527 # initialize rs2
bge x12, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x42a9ddc4d59a003b # initialize rs1
li x19, 0x7539b40583b8f6c5 # initialize rs2
bge x13, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7539b40583b8f6c5 # initialize rs1
li x19, 0x7539b40583b8f6c5 # initialize rs2
bge x13, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x02bffa96aec44db5 # initialize rs1
li x17, 0xa5a3a9a941c8e7b1 # initialize rs2
bge x14, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xa5a3a9a941c8e7b1 # initialize rs1
li x17, 0xa5a3a9a941c8e7b1 # initialize rs2
bge x14, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x50bf9d009b35d327 # initialize rs1
li x2, 0x0d3622c060ad4a0c # initialize rs2
bge x15, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x0d3622c060ad4a0c # initialize rs1
li x2, 0x0d3622c060ad4a0c # initialize rs2
bge x15, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x7cda142ac7d889bf # initialize rs1
li x31, 0x3e025344e12f2dc3 # initialize rs2
bge x16, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x3e025344e12f2dc3 # initialize rs1
li x31, 0x3e025344e12f2dc3 # initialize rs2
bge x16, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xfeb04333109bf463 # initialize rs1
li x27, 0xb6e8546710d5410c # initialize rs2
bge x17, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xb6e8546710d5410c # initialize rs1
li x27, 0xb6e8546710d5410c # initialize rs2
bge x17, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x9aebec0d5d71ffdf # initialize rs1
li x9, 0xc8c2d7c97ae6fa1b # initialize rs2
bge x18, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xc8c2d7c97ae6fa1b # initialize rs1
li x9, 0xc8c2d7c97ae6fa1b # initialize rs2
bge x18, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x0f189aaa12f59ea2 # initialize rs1
li x31, 0xbc27a7477166056d # initialize rs2
bge x19, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xbc27a7477166056d # initialize rs1
li x31, 0xbc27a7477166056d # initialize rs2
bge x19, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xa127a5019134e8f4 # initialize rs1
li x22, 0x133a015f4333a5fd # initialize rs2
bge x20, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x133a015f4333a5fd # initialize rs1
li x22, 0x133a015f4333a5fd # initialize rs2
bge x20, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x1114089a64794740 # initialize rs1
li x31, 0xd655925629f9048d # initialize rs2
bge x21, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xd655925629f9048d # initialize rs1
li x31, 0xd655925629f9048d # initialize rs2
bge x21, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xeaa67e19d58f0f20 # initialize rs1
li x20, 0x185c8aca94d75cd0 # initialize rs2
bge x22, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x185c8aca94d75cd0 # initialize rs1
li x20, 0x185c8aca94d75cd0 # initialize rs2
bge x22, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb3f6de0a733ff5c6 # initialize rs1
li x20, 0xca1884e7818ba04f # initialize rs2
bge x23, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xca1884e7818ba04f # initialize rs1
li x20, 0xca1884e7818ba04f # initialize rs2
bge x23, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x10b25a9754227a7c # initialize rs1
li x30, 0x887711751349959b # initialize rs2
bge x24, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x887711751349959b # initialize rs1
li x30, 0x887711751349959b # initialize rs2
bge x24, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x203d5695f02bdc8f # initialize rs1
li x2, 0xee94259cdcb40f83 # initialize rs2
bge x25, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xee94259cdcb40f83 # initialize rs1
li x2, 0xee94259cdcb40f83 # initialize rs2
bge x25, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xc04867c0bd86af4b # initialize rs1
li x14, 0xedc70f1d510615d4 # initialize rs2
bge x26, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xedc70f1d510615d4 # initialize rs1
li x14, 0xedc70f1d510615d4 # initialize rs2
bge x26, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x6f787de35b82a22b # initialize rs1
li x29, 0x0b54ff9e1118b45e # initialize rs2
bge x27, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0b54ff9e1118b45e # initialize rs1
li x29, 0x0b54ff9e1118b45e # initialize rs2
bge x27, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x09e14d4597516e8d # initialize rs1
li x31, 0x7d2f1e72ee82867b # initialize rs2
bge x28, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x7d2f1e72ee82867b # initialize rs1
li x31, 0x7d2f1e72ee82867b # initialize rs2
bge x28, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xb20e35f16a87f0fc # initialize rs1
li x18, 0x27354d0f4b8c9a80 # initialize rs2
bge x29, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x27354d0f4b8c9a80 # initialize rs1
li x18, 0x27354d0f4b8c9a80 # initialize rs2
bge x29, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xe71d55582bbf539e # initialize rs1
li x25, 0x2a010a08add367c8 # initialize rs2
bge x30, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x2a010a08add367c8 # initialize rs1
li x25, 0x2a010a08add367c8 # initialize rs2
bge x30, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x9c7ac4d9aec0cf87 # initialize rs1
li x2, 0x816a626c7d6ae5b7 # initialize rs2
bge x31, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x816a626c7d6ae5b7 # initialize rs1
li x2, 0x816a626c7d6ae5b7 # initialize rs2
bge x31, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x0)
li x5, 0xfc9a3a7533445919 # initialize rs1
li x0, 0x45330571b7a7f893 # initialize rs2
bge x5, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x45330571b7a7f893 # initialize rs1
li x0, 0x45330571b7a7f893 # initialize rs2
bge x5, x0, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x1)
li x16, 0x503da0fae33e977c # initialize rs1
li x1, 0x5cbb208723ef8fc9 # initialize rs2
bge x16, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x5cbb208723ef8fc9 # initialize rs1
li x1, 0x5cbb208723ef8fc9 # initialize rs2
bge x16, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0x3d58b900c0189bab # initialize rs1
li x2, 0x08b6397446169ca0 # initialize rs2
bge x28, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x08b6397446169ca0 # initialize rs1
li x2, 0x08b6397446169ca0 # initialize rs2
bge x28, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x3)
li x21, 0xba4e947a6fa4befe # initialize rs1
li x3, 0x049044100ba18556 # initialize rs2
bge x21, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x049044100ba18556 # initialize rs1
li x3, 0x049044100ba18556 # initialize rs2
bge x21, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x4)
li x12, 0xed011d895881dbe2 # initialize rs1
li x4, 0x8e291f771a6a4258 # initialize rs2
bge x12, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x8e291f771a6a4258 # initialize rs1
li x4, 0x8e291f771a6a4258 # initialize rs2
bge x12, x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x5)
li x13, 0x8d27591284b07eb0 # initialize rs1
li x5, 0x48f8f54d6ef00d3c # initialize rs2
bge x13, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x48f8f54d6ef00d3c # initialize rs1
li x5, 0x48f8f54d6ef00d3c # initialize rs2
bge x13, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0x3413cb5709ee9fe7 # initialize rs1
li x6, 0x5c9de8377888b6df # initialize rs2
bge x21, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x5c9de8377888b6df # initialize rs1
li x6, 0x5c9de8377888b6df # initialize rs2
bge x21, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0xa316ee772bfb94c4 # initialize rs1
li x7, 0xc41277890db78b3f # initialize rs2
bge x26, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xc41277890db78b3f # initialize rs1
li x7, 0xc41277890db78b3f # initialize rs2
bge x26, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x8)
li x18, 0xb7f477b54405a40e # initialize rs1
li x8, 0x45b0678f970c6e81 # initialize rs2
bge x18, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x45b0678f970c6e81 # initialize rs1
li x8, 0x45b0678f970c6e81 # initialize rs2
bge x18, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x9)
li x28, 0xcaa30326cfd3517f # initialize rs1
li x9, 0xc843f4c60d8abd13 # initialize rs2
bge x28, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xc843f4c60d8abd13 # initialize rs1
li x9, 0xc843f4c60d8abd13 # initialize rs2
bge x28, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x10)
li x11, 0x2979cf34defd8234 # initialize rs1
li x10, 0xcada5c13a0c5b0a9 # initialize rs2
bge x11, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xcada5c13a0c5b0a9 # initialize rs1
li x10, 0xcada5c13a0c5b0a9 # initialize rs2
bge x11, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x11)
li x28, 0xb1226df3b7be229c # initialize rs1
li x11, 0x70bdbc091f42cc63 # initialize rs2
bge x28, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x70bdbc091f42cc63 # initialize rs1
li x11, 0x70bdbc091f42cc63 # initialize rs2
bge x28, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x12)
li x13, 0x6df404aa8988b3fd # initialize rs1
li x12, 0x43708dc241ba8de6 # initialize rs2
bge x13, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x43708dc241ba8de6 # initialize rs1
li x12, 0x43708dc241ba8de6 # initialize rs2
bge x13, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x13)
li x1, 0xb84ace29e328f05e # initialize rs1
li x13, 0xcd46a346cb7ecd0d # initialize rs2
bge x1, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xcd46a346cb7ecd0d # initialize rs1
li x13, 0xcd46a346cb7ecd0d # initialize rs2
bge x1, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x14)
li x19, 0x5816574a14572058 # initialize rs1
li x14, 0xd312f9f28f563113 # initialize rs2
bge x19, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xd312f9f28f563113 # initialize rs1
li x14, 0xd312f9f28f563113 # initialize rs2
bge x19, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x15)
li x12, 0xd55d5938129462a3 # initialize rs1
li x15, 0x844507e0188d23d4 # initialize rs2
bge x12, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x844507e0188d23d4 # initialize rs1
li x15, 0x844507e0188d23d4 # initialize rs2
bge x12, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x16)
li x10, 0x9406691fb1e5634a # initialize rs1
li x16, 0xde1983358b869cc6 # initialize rs2
bge x10, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xde1983358b869cc6 # initialize rs1
li x16, 0xde1983358b869cc6 # initialize rs2
bge x10, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x17)
li x26, 0x62f10aebbd3547ec # initialize rs1
li x17, 0xe1fc434a99b80804 # initialize rs2
bge x26, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xe1fc434a99b80804 # initialize rs1
li x17, 0xe1fc434a99b80804 # initialize rs2
bge x26, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x18)
li x10, 0xeb24c5eb5adc0bf5 # initialize rs1
li x18, 0xf8abf7bfa3d14c65 # initialize rs2
bge x10, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xf8abf7bfa3d14c65 # initialize rs1
li x18, 0xf8abf7bfa3d14c65 # initialize rs2
bge x10, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x19)
li x20, 0x131cb557dbd88682 # initialize rs1
li x19, 0x415b18aa2e61d3d3 # initialize rs2
bge x20, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x415b18aa2e61d3d3 # initialize rs1
li x19, 0x415b18aa2e61d3d3 # initialize rs2
bge x20, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x20)
li x11, 0xc68848bad5fd7fff # initialize rs1
li x20, 0xa8f2d556619e3920 # initialize rs2
bge x11, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xa8f2d556619e3920 # initialize rs1
li x20, 0xa8f2d556619e3920 # initialize rs2
bge x11, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x21)
li x11, 0x1a6ef8838e0bcd02 # initialize rs1
li x21, 0x196257a00ff10054 # initialize rs2
bge x11, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x196257a00ff10054 # initialize rs1
li x21, 0x196257a00ff10054 # initialize rs2
bge x11, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x22)
li x9, 0x8f5f6b8985696d1c # initialize rs1
li x22, 0xa4daa5717fd03e82 # initialize rs2
bge x9, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xa4daa5717fd03e82 # initialize rs1
li x22, 0xa4daa5717fd03e82 # initialize rs2
bge x9, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x23)
li x30, 0x0282eb58122d1754 # initialize rs1
li x23, 0x0e60c1a005c3c5aa # initialize rs2
bge x30, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x0e60c1a005c3c5aa # initialize rs1
li x23, 0x0e60c1a005c3c5aa # initialize rs2
bge x30, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x24)
li x14, 0xc75af99dc3169ae3 # initialize rs1
li x24, 0x3ebe0d8fa683bf77 # initialize rs2
bge x14, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x3ebe0d8fa683bf77 # initialize rs1
li x24, 0x3ebe0d8fa683bf77 # initialize rs2
bge x14, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x25)
li x21, 0x9f77e62417590b1d # initialize rs1
li x25, 0x39a412dd25c5569d # initialize rs2
bge x21, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x39a412dd25c5569d # initialize rs1
li x25, 0x39a412dd25c5569d # initialize rs2
bge x21, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x26)
li x21, 0x7d0801b78f9e0718 # initialize rs1
li x26, 0xf4369ad260a9e4f3 # initialize rs2
bge x21, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xf4369ad260a9e4f3 # initialize rs1
li x26, 0xf4369ad260a9e4f3 # initialize rs2
bge x21, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x27)
li x13, 0xbc6b068027ab9ef1 # initialize rs1
li x27, 0x0f3ef7d1a8c96ff8 # initialize rs2
bge x13, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0f3ef7d1a8c96ff8 # initialize rs1
li x27, 0x0f3ef7d1a8c96ff8 # initialize rs2
bge x13, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x28)
li x13, 0xe4a5e78b3fc96f5c # initialize rs1
li x28, 0x7c70888bc69f089f # initialize rs2
bge x13, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7c70888bc69f089f # initialize rs1
li x28, 0x7c70888bc69f089f # initialize rs2
bge x13, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x29)
li x7, 0x233370976abcf6fa # initialize rs1
li x29, 0xad6e0733267282e0 # initialize rs2
bge x7, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xad6e0733267282e0 # initialize rs1
li x29, 0xad6e0733267282e0 # initialize rs2
bge x7, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x30)
li x6, 0x3bc31d83345892d0 # initialize rs1
li x30, 0x6a5f5bd284f196d8 # initialize rs2
bge x6, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x6a5f5bd284f196d8 # initialize rs1
li x30, 0x6a5f5bd284f196d8 # initialize rs2
bge x6, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x31)
li x15, 0x554184d26c76cfe2 # initialize rs1
li x31, 0x2f20dcb3682e66f7 # initialize rs2
bge x15, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x2f20dcb3682e66f7 # initialize rs1
li x31, 0x2f20dcb3682e66f7 # initialize rs2
bge x15, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x0000000000000000 # initialize rs1
li x5, 0xbde8b4c443eb9136 # initialize rs2
bge x14, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xbde8b4c443eb9136 # initialize rs1
li x5, 0xbde8b4c443eb9136 # initialize rs2
bge x14, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x0000000000000001 # initialize rs1
li x24, 0x195a119416dc73b7 # initialize rs2
bge x18, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x195a119416dc73b7 # initialize rs1
li x24, 0x195a119416dc73b7 # initialize rs2
bge x18, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0x0000000000000002 # initialize rs1
li x3, 0x9056cb1f6ab12f79 # initialize rs2
bge x31, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x9056cb1f6ab12f79 # initialize rs1
li x3, 0x9056cb1f6ab12f79 # initialize rs2
bge x31, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x31, 0x8000000000000000 # initialize rs1
li x2, 0x79627254ab43295f # initialize rs2
bge x31, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x79627254ab43295f # initialize rs1
li x2, 0x79627254ab43295f # initialize rs2
bge x31, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x21, 0x8000000000000001 # initialize rs1
li x24, 0x7b004ecb57ddbfab # initialize rs2
bge x21, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x7b004ecb57ddbfab # initialize rs1
li x24, 0x7b004ecb57ddbfab # initialize rs2
bge x21, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x21, 0x7fffffffffffffff # initialize rs1
li x17, 0x9916e2785567d62c # initialize rs2
bge x21, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x9916e2785567d62c # initialize rs1
li x17, 0x9916e2785567d62c # initialize rs2
bge x21, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs1
li x9, 0x6169ea33bf837d58 # initialize rs2
bge x12, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x6169ea33bf837d58 # initialize rs1
li x9, 0x6169ea33bf837d58 # initialize rs2
bge x12, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x8, 0xffffffffffffffff # initialize rs1
li x14, 0x09839ea66d28bc18 # initialize rs2
bge x8, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x09839ea66d28bc18 # initialize rs1
li x14, 0x09839ea66d28bc18 # initialize rs2
bge x8, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x5, 0xfffffffffffffffe # initialize rs1
li x18, 0x187689628c83f626 # initialize rs2
bge x5, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x187689628c83f626 # initialize rs1
li x18, 0x187689628c83f626 # initialize rs2
bge x5, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x86035dd7ddb23e1c # initialize rs2
bge x15, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x86035dd7ddb23e1c # initialize rs1
li x6, 0x86035dd7ddb23e1c # initialize rs2
bge x15, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xbb12c2f769d29f21 # initialize rs2
bge x31, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xbb12c2f769d29f21 # initialize rs1
li x21, 0xbb12c2f769d29f21 # initialize rs2
bge x31, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x16, 0x5555555555555555 # initialize rs1
li x9, 0xa8405265dafdd82d # initialize rs2
bge x16, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xa8405265dafdd82d # initialize rs1
li x9, 0xa8405265dafdd82d # initialize rs2
bge x16, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x31, 0x12477d56b7108767 # initialize rs2
bge x18, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x12477d56b7108767 # initialize rs1
li x31, 0x12477d56b7108767 # initialize rs2
bge x18, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0x00000000fffffffe # initialize rs1
li x11, 0xe0f7d18adde0eec6 # initialize rs2
bge x8, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xe0f7d18adde0eec6 # initialize rs1
li x11, 0xe0f7d18adde0eec6 # initialize rs2
bge x8, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x5, 0x0000000100000000 # initialize rs1
li x23, 0x36be1eed4e14f3c8 # initialize rs2
bge x5, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x36be1eed4e14f3c8 # initialize rs1
li x23, 0x36be1eed4e14f3c8 # initialize rs2
bge x5, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x16, 0x0000000100000001 # initialize rs1
li x20, 0xe294789b6f8682c3 # initialize rs2
bge x16, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xe294789b6f8682c3 # initialize rs1
li x20, 0xe294789b6f8682c3 # initialize rs2
bge x16, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x11, 0xd891484f35fb83cd # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
bge x11, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x0000000000000000 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
bge x11, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x5, 0x18c779fb3375aa21 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bge x5, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bge x5, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0xb56dbe68493d4f8c # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bge x15, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bge x15, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x22, 0x2752971f51654816 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
bge x22, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x8000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
bge x22, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x25, 0xf22e5c8cb1119849 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
bge x25, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x8000000000000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
bge x25, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x21, 0xfc384ad008cc1628 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
bge x21, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x7fffffffffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
bge x21, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x2, 0xb896ce41f49bf674 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
bge x2, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x7ffffffffffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
bge x2, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x5, 0x4a8b3f4c054ed9e3 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bge x5, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xffffffffffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bge x5, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x23, 0xe4d3f27422a1ad66 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
bge x23, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xfffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
bge x23, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x8, 0x2ec2670b5c3009cf # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
bge x8, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
bge x8, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xf2afe9a2f0c76841 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x9, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x9, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x14, 0x08e9cf8aebac9e26 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
bge x14, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x5555555555555555 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
bge x14, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x31, 0xd5035091ebb84828 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bge x31, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bge x31, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x8, 0xb2cfb7c35d1c997b # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
bge x8, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000000fffffffe # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
bge x8, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x25, 0x9ae9d1d190fb5028 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
bge x25, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
bge x25, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x7, 0x6ebeb45fb09d1bd8 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bge x7, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bge x7, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bge x30, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bge x30, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x16, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bge x16, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bge x16, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x1, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
bge x1, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
bge x1, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x13, 0x0000000000000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
bge x13, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x8000000000000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
bge x13, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x19, 0x0000000000000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
bge x19, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
bge x19, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x28, 0x0000000000000000 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
bge x28, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x7fffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
bge x28, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000000000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bge x8, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bge x8, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x1, 0x0000000000000000 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bge x1, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xffffffffffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bge x1, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x21, 0x0000000000000000 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
bge x21, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xfffffffffffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
bge x21, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bge x22, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bge x22, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x0000000000000000 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x2, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x2, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x5, 0x0000000000000000 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
bge x5, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x5555555555555555 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
bge x5, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bge x15, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bge x15, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x0000000000000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bge x7, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bge x7, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x22, 0x0000000000000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
bge x22, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
bge x22, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x10, 0x0000000000000000 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
bge x10, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0000000100000001 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
bge x10, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x10, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bge x10, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bge x10, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x21, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
bge x21, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
bge x21, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x30, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bge x30, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bge x30, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x31, 0x0000000000000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bge x31, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x8000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bge x31, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x25, 0x0000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
bge x25, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
bge x25, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000001 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
bge x3, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x7fffffffffffffff # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
bge x3, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000000000001 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
bge x25, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x7ffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
bge x25, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x10, 0x0000000000000001 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
bge x10, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xffffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
bge x10, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x22, 0x0000000000000001 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
bge x22, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xfffffffffffffffe # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
bge x22, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000000000001 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
bge x7, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
bge x7, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000000000001 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x11, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x11, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x17, 0x0000000000000001 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
bge x17, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x5555555555555555 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
bge x17, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x9, 0x0000000000000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bge x9, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bge x9, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bge x23, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bge x23, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x21, 0x0000000000000001 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
bge x21, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000100000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
bge x21, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x11, 0x0000000000000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
bge x11, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
bge x11, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x14, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bge x14, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bge x14, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x24, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
bge x24, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
bge x24, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x26, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
bge x26, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
bge x26, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x28, 0x0000000000000002 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
bge x28, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
bge x28, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x7, 0x0000000000000002 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bge x7, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x8000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bge x7, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x10, 0x0000000000000002 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bge x10, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x7fffffffffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bge x10, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000000000002 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
bge x8, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
bge x8, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000002 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bge x16, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xffffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bge x16, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x31, 0x0000000000000002 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
bge x31, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xfffffffffffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
bge x31, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000000000002 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
bge x16, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
bge x16, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000000000002 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x5, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x5, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x23, 0x0000000000000002 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
bge x23, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x5555555555555555 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
bge x23, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bge x7, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bge x7, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x8, 0x0000000000000002 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bge x8, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bge x8, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x20, 0x0000000000000002 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
bge x20, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000100000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
bge x20, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x17, 0x0000000000000002 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bge x17, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bge x17, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x10, 0x8000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bge x10, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bge x10, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x26, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bge x26, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bge x26, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x26, 0x8000000000000000 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
bge x26, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
bge x26, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
bge x12, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x8000000000000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
bge x12, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x25, 0x8000000000000000 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
bge x25, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x8000000000000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
bge x25, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x19, 0x8000000000000000 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bge x19, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bge x19, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x28, 0x8000000000000000 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
bge x28, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x7ffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
bge x28, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x25, 0x8000000000000000 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
bge x25, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xffffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
bge x25, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x1, 0x8000000000000000 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
bge x1, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xfffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
bge x1, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x7, 0x8000000000000000 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bge x7, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bge x7, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x8000000000000000 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x28, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x28, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x26, 0x8000000000000000 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bge x26, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bge x26, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x9, 0x8000000000000000 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bge x9, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bge x9, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x5, 0x8000000000000000 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
bge x5, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x00000000fffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
bge x5, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x15, 0x8000000000000000 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
bge x15, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x0000000100000000 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
bge x15, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x5, 0x8000000000000000 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
bge x5, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000100000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
bge x5, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x31, 0x8000000000000001 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
bge x31, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
bge x31, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x12, 0x8000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bge x12, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bge x12, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x18, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
bge x18, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
bge x18, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x18, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
bge x18, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
bge x18, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x1, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
bge x1, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
bge x1, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x9, 0x8000000000000001 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bge x9, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x7fffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bge x9, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x13, 0x8000000000000001 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
bge x13, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7ffffffffffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
bge x13, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x16, 0x8000000000000001 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
bge x16, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xffffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
bge x16, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x28, 0x8000000000000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bge x28, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bge x28, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x28, 0x8000000000000001 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
bge x28, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
bge x28, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x8000000000000001 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x22, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x22, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x23, 0x8000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
bge x23, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x5555555555555555 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
bge x23, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x2, 0x8000000000000001 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
bge x2, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x00000000ffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
bge x2, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x22, 0x8000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bge x22, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bge x22, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x9, 0x8000000000000001 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
bge x9, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
bge x9, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x6, 0x8000000000000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
bge x6, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
bge x6, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x26, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bge x26, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bge x26, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x29, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
bge x29, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
bge x29, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x29, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bge x29, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x0000000000000002 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bge x29, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x11, 0x7fffffffffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bge x11, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x8000000000000000 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bge x11, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x1, 0x7fffffffffffffff # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
bge x1, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
bge x1, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x23, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bge x23, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bge x23, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x26, 0x7fffffffffffffff # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
bge x26, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x7ffffffffffffffe # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
bge x26, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x3, 0x7fffffffffffffff # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
bge x3, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xffffffffffffffff # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
bge x3, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x11, 0x7fffffffffffffff # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
bge x11, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xfffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
bge x11, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x20, 0x7fffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bge x20, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bge x20, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x7fffffffffffffff # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x20, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x20, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x26, 0x7fffffffffffffff # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
bge x26, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
bge x26, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
bge x12, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
bge x12, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x19, 0x7fffffffffffffff # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
bge x19, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x00000000fffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
bge x19, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x16, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
bge x16, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0000000100000000 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
bge x16, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x23, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
bge x23, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000100000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
bge x23, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x20, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
bge x20, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
bge x20, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x31, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bge x31, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bge x31, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x17, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bge x17, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bge x17, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x1, 0x7ffffffffffffffe # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bge x1, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bge x1, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x29, 0x7ffffffffffffffe # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bge x29, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bge x29, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x17, 0x7ffffffffffffffe # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
bge x17, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x7fffffffffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
bge x17, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
bge x24, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
bge x24, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x18, 0x7ffffffffffffffe # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
bge x18, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xffffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
bge x18, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x5, 0x7ffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
bge x5, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xfffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
bge x5, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x23, 0x7ffffffffffffffe # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
bge x23, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
bge x23, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x7ffffffffffffffe # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x2, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x2, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x6, 0x7ffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
bge x6, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x5555555555555555 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
bge x6, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x17, 0x7ffffffffffffffe # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bge x17, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000ffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bge x17, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
bge x25, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
bge x25, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x2, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
bge x2, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
bge x2, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x26, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
bge x26, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000100000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
bge x26, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x13, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
bge x13, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0000000000000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
bge x13, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x12, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
bge x12, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
bge x12, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x2, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bge x2, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bge x2, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x26, 0xffffffffffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
bge x26, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
bge x26, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x25, 0xffffffffffffffff # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bge x25, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bge x25, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x26, 0xffffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bge x26, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x7fffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bge x26, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0xffffffffffffffff # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bge x27, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bge x27, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x31, 0xffffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bge x31, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xffffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bge x31, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x24, 0xffffffffffffffff # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bge x24, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bge x24, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x5, 0xffffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bge x5, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bge x5, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xffffffffffffffff # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x20, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x20, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x20, 0xffffffffffffffff # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
bge x20, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x5555555555555555 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
bge x20, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x11, 0xffffffffffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bge x11, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bge x11, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x5, 0xffffffffffffffff # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
bge x5, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x00000000fffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
bge x5, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x27, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
bge x27, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000100000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
bge x27, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x8, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bge x8, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bge x8, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x24, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bge x24, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bge x24, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x7, 0xfffffffffffffffe # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
bge x7, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
bge x7, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x3, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
bge x3, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
bge x3, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x3, 0xfffffffffffffffe # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
bge x3, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x8000000000000000 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
bge x3, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x22, 0xfffffffffffffffe # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
bge x22, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
bge x22, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bge x19, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7fffffffffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bge x19, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bge x17, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bge x17, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
bge x19, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xffffffffffffffff # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
bge x19, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x24, 0xfffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bge x24, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xfffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bge x24, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0xfffffffffffffffe # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
bge x13, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
bge x13, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xfffffffffffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x22, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x22, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x18, 0xfffffffffffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
bge x18, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x5555555555555555 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
bge x18, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x22, 0xfffffffffffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
bge x22, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
bge x22, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x10, 0xfffffffffffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
bge x10, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x00000000fffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
bge x10, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x24, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
bge x24, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
bge x24, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x3, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bge x3, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000100000001 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bge x3, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
bge x7, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
bge x7, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bge x3, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bge x3, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
bge x23, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
bge x23, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
bge x25, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
bge x25, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
bge x31, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
bge x31, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
bge x18, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x7fffffffffffffff # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
bge x18, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bge x9, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bge x9, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bge x5, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xffffffffffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bge x5, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
bge x25, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
bge x25, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
bge x2, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
bge x2, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x30, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x30, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
bge x2, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x5555555555555555 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
bge x2, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
bge x9, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
bge x9, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
bge x14, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000000fffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
bge x14, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bge x10, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bge x10, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
bge x5, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000100000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
bge x5, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
bge x31, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
bge x31, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bge x3, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bge x3, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
bge x17, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
bge x17, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
bge x11, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x8000000000000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
bge x11, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
bge x27, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x8000000000000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
bge x27, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
bge x12, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x7fffffffffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
bge x12, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bge x16, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bge x16, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
bge x17, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xffffffffffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
bge x17, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
bge x10, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
bge x10, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
bge x6, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
bge x6, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x27, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x27, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
bge x30, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x5555555555555555 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
bge x30, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
bge x17, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000ffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
bge x17, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
bge x21, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
bge x21, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
bge x22, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
bge x22, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
bge x8, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x0000000100000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
bge x8, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x3, 0x5555555555555555 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
bge x3, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
bge x3, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x5, 0x5555555555555555 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bge x5, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000000000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bge x5, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x2, 0x5555555555555555 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bge x2, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bge x2, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x8, 0x5555555555555555 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
bge x8, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x8000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
bge x8, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x28, 0x5555555555555555 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bge x28, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bge x28, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x31, 0x5555555555555555 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bge x31, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x7fffffffffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bge x31, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x5, 0x5555555555555555 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
bge x5, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x7ffffffffffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
bge x5, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x31, 0x5555555555555555 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bge x31, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xffffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bge x31, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x13, 0x5555555555555555 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
bge x13, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xfffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
bge x13, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x22, 0x5555555555555555 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
bge x22, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
bge x22, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x5555555555555555 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x25, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x25, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x6, 0x5555555555555555 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
bge x6, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x5555555555555555 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
bge x6, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x27, 0x5555555555555555 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
bge x27, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x00000000ffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
bge x27, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x13, 0x5555555555555555 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bge x13, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bge x13, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x9, 0x5555555555555555 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bge x9, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bge x9, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x28, 0x5555555555555555 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
bge x28, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000100000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
bge x28, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x20, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
bge x20, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
bge x20, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x23, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
bge x23, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
bge x23, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x22, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bge x22, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bge x22, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x17, 0x00000000ffffffff # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
bge x17, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x8000000000000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
bge x17, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x26, 0x00000000ffffffff # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
bge x26, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x8000000000000001 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
bge x26, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x2, 0x00000000ffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
bge x2, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x7fffffffffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
bge x2, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x14, 0x00000000ffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bge x14, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bge x14, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x19, 0x00000000ffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
bge x19, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xffffffffffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
bge x19, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x23, 0x00000000ffffffff # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
bge x23, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xfffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
bge x23, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x23, 0x00000000ffffffff # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
bge x23, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
bge x23, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x00000000ffffffff # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x22, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x22, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x21, 0x00000000ffffffff # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
bge x21, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x5555555555555555 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
bge x21, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x1, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bge x1, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bge x1, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x19, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
bge x19, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x00000000fffffffe # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
bge x19, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x23, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
bge x23, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000100000000 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
bge x23, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x8, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
bge x8, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x0000000100000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
bge x8, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x29, 0x00000000fffffffe # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
bge x29, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x0000000000000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
bge x29, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x24, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
bge x24, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
bge x24, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x2, 0x00000000fffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bge x2, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bge x2, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x8, 0x00000000fffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
bge x8, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x8000000000000000 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
bge x8, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x24, 0x00000000fffffffe # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bge x24, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x8000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bge x24, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bge x10, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bge x10, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x30, 0x00000000fffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bge x30, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bge x30, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x23, 0x00000000fffffffe # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bge x23, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xffffffffffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bge x23, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
bge x3, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xfffffffffffffffe # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
bge x3, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x1, 0x00000000fffffffe # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
bge x1, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
bge x1, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x00000000fffffffe # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x14, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x14, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x22, 0x00000000fffffffe # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bge x22, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bge x22, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x2, 0x00000000fffffffe # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bge x2, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bge x2, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x7, 0x00000000fffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
bge x7, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000000fffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
bge x7, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x31, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bge x31, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bge x31, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x1, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
bge x1, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
bge x1, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x2, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bge x2, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bge x2, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x30, 0x0000000100000000 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bge x30, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bge x30, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x6, 0x0000000100000000 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bge x6, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bge x6, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x1, 0x0000000100000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bge x1, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bge x1, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x2, 0x0000000100000000 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
bge x2, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x8000000000000001 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
bge x2, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x20, 0x0000000100000000 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
bge x20, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7fffffffffffffff # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
bge x20, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000100000000 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
bge x25, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
bge x25, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x9, 0x0000000100000000 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bge x9, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xffffffffffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bge x9, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x21, 0x0000000100000000 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bge x21, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xfffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bge x21, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000100000000 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
bge x3, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
bge x3, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x0000000100000000 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x3, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x3, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x12, 0x0000000100000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
bge x12, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
bge x12, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x1, 0x0000000100000000 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bge x1, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bge x1, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x26, 0x0000000100000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
bge x26, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
bge x26, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x23, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
bge x23, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
bge x23, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x17, 0x0000000100000000 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
bge x17, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000100000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
bge x17, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x24, 0x0000000100000001 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
bge x24, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
bge x24, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x15, 0x0000000100000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
bge x15, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
bge x15, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x8, 0x0000000100000001 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bge x8, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bge x8, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x22, 0x0000000100000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bge x22, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bge x22, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x16, 0x0000000100000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
bge x16, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
bge x16, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
bge x8, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x7fffffffffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
bge x8, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x6, 0x0000000100000001 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
bge x6, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x7ffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
bge x6, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x17, 0x0000000100000001 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bge x17, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xffffffffffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bge x17, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x10, 0x0000000100000001 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bge x10, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xfffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bge x10, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000100000001 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
bge x29, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
bge x29, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x0000000100000001 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x17, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
bge x17, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x23, 0x0000000100000001 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
bge x23, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x5555555555555555 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
bge x23, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x14, 0x0000000100000001 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
bge x14, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000000ffffffff # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
bge x14, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x3, 0x0000000100000001 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
bge x3, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x00000000fffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
bge x3, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x16, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
bge x16, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
bge x16, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x30, 0x0000000100000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
bge x30, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x0000000100000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
bge x30, x19, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x2b9ba9656c4826d7 # initialize rs1
li x0, 0xa2915901e0210916 # initialize rs2
bge x0, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0xa2915901e0210916 # initialize rs1
li x0, 0xa2915901e0210916 # initialize rs2
bge x0, x0, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x565630c7ea121e4b # initialize rs1
li x1, 0x8f7139e6df46a6b2 # initialize rs2
bge x1, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x8f7139e6df46a6b2 # initialize rs1
li x1, 0x8f7139e6df46a6b2 # initialize rs2
bge x1, x1, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x9a1460064d27fa3c # initialize rs1
li x2, 0x0bc8984bf5ecdef9 # initialize rs2
bge x2, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0bc8984bf5ecdef9 # initialize rs1
li x2, 0x0bc8984bf5ecdef9 # initialize rs2
bge x2, x2, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x35d586f958b734c6 # initialize rs1
li x3, 0x06f366385b62d4bf # initialize rs2
bge x3, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x06f366385b62d4bf # initialize rs1
li x3, 0x06f366385b62d4bf # initialize rs2
bge x3, x3, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf2ca6690be346fd9 # initialize rs1
li x4, 0xb4e8e7e458857b94 # initialize rs2
bge x4, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0xb4e8e7e458857b94 # initialize rs1
li x4, 0xb4e8e7e458857b94 # initialize rs2
bge x4, x4, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x799d7c3af8f99923 # initialize rs1
li x5, 0x7e8ce8ce12bd954c # initialize rs2
bge x5, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x7e8ce8ce12bd954c # initialize rs1
li x5, 0x7e8ce8ce12bd954c # initialize rs2
bge x5, x5, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x695048b27e4bd87e # initialize rs1
li x6, 0xc116524da8dc97fd # initialize rs2
bge x6, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xc116524da8dc97fd # initialize rs1
li x6, 0xc116524da8dc97fd # initialize rs2
bge x6, x6, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2d9bd9bcbe034536 # initialize rs1
li x7, 0xc0b56adf4fd6383f # initialize rs2
bge x7, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xc0b56adf4fd6383f # initialize rs1
li x7, 0xc0b56adf4fd6383f # initialize rs2
bge x7, x7, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6270f69f56bb271b # initialize rs1
li x8, 0xd85159027f7eb499 # initialize rs2
bge x8, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xd85159027f7eb499 # initialize rs1
li x8, 0xd85159027f7eb499 # initialize rs2
bge x8, x8, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe0a87425040e3c05 # initialize rs1
li x9, 0x5a751af2deef0ea2 # initialize rs2
bge x9, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x5a751af2deef0ea2 # initialize rs1
li x9, 0x5a751af2deef0ea2 # initialize rs2
bge x9, x9, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x459c0c32b10ee69b # initialize rs1
li x10, 0xcf60c0d682194a12 # initialize rs2
bge x10, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xcf60c0d682194a12 # initialize rs1
li x10, 0xcf60c0d682194a12 # initialize rs2
bge x10, x10, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xd148661d7922f22e # initialize rs1
li x11, 0x478c2bba8b85e276 # initialize rs2
bge x11, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x478c2bba8b85e276 # initialize rs1
li x11, 0x478c2bba8b85e276 # initialize rs2
bge x11, x11, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x804049cb564d5aae # initialize rs1
li x12, 0x4d26e62afd887a56 # initialize rs2
bge x12, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x4d26e62afd887a56 # initialize rs1
li x12, 0x4d26e62afd887a56 # initialize rs2
bge x12, x12, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xd542b41ca720c3a8 # initialize rs1
li x13, 0xb4ca3489546ff455 # initialize rs2
bge x13, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xb4ca3489546ff455 # initialize rs1
li x13, 0xb4ca3489546ff455 # initialize rs2
bge x13, x13, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xeef79fa5b86f6e99 # initialize rs1
li x14, 0x6d691f9122d8d1b5 # initialize rs2
bge x14, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x6d691f9122d8d1b5 # initialize rs1
li x14, 0x6d691f9122d8d1b5 # initialize rs2
bge x14, x14, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x261c2e99c102b492 # initialize rs1
li x15, 0x97ee79a29466783d # initialize rs2
bge x15, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x97ee79a29466783d # initialize rs1
li x15, 0x97ee79a29466783d # initialize rs2
bge x15, x15, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xdc3a38d7bface9c7 # initialize rs1
li x16, 0x74632e663b5ccd5b # initialize rs2
bge x16, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x74632e663b5ccd5b # initialize rs1
li x16, 0x74632e663b5ccd5b # initialize rs2
bge x16, x16, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x595d5bde6f7c0c22 # initialize rs1
li x17, 0x57b247f99a6ac160 # initialize rs2
bge x17, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x57b247f99a6ac160 # initialize rs1
li x17, 0x57b247f99a6ac160 # initialize rs2
bge x17, x17, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x43203ec9365c9ed9 # initialize rs1
li x18, 0xc31670fefd82658b # initialize rs2
bge x18, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xc31670fefd82658b # initialize rs1
li x18, 0xc31670fefd82658b # initialize rs2
bge x18, x18, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x9889864ffe7784bd # initialize rs1
li x19, 0x9a6029a29db47b5f # initialize rs2
bge x19, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x9a6029a29db47b5f # initialize rs1
li x19, 0x9a6029a29db47b5f # initialize rs2
bge x19, x19, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x875dae506341fd0a # initialize rs1
li x20, 0xc7eb8971691af39a # initialize rs2
bge x20, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xc7eb8971691af39a # initialize rs1
li x20, 0xc7eb8971691af39a # initialize rs2
bge x20, x20, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x91b70ea91a1467a5 # initialize rs1
li x21, 0x6126832b3d4d0ded # initialize rs2
bge x21, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x6126832b3d4d0ded # initialize rs1
li x21, 0x6126832b3d4d0ded # initialize rs2
bge x21, x21, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xa8ece2f7c782302a # initialize rs1
li x22, 0x99fc4f2dd5714685 # initialize rs2
bge x22, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x99fc4f2dd5714685 # initialize rs1
li x22, 0x99fc4f2dd5714685 # initialize rs2
bge x22, x22, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x03ef9916e50f57c8 # initialize rs1
li x23, 0xeaf0db04d8091780 # initialize rs2
bge x23, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xeaf0db04d8091780 # initialize rs1
li x23, 0xeaf0db04d8091780 # initialize rs2
bge x23, x23, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xf09e59cd1b2603b2 # initialize rs1
li x24, 0xb5baaa1fa289c08d # initialize rs2
bge x24, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xb5baaa1fa289c08d # initialize rs1
li x24, 0xb5baaa1fa289c08d # initialize rs2
bge x24, x24, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x23a50a49026afd20 # initialize rs1
li x25, 0x82dd1709079baa86 # initialize rs2
bge x25, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x82dd1709079baa86 # initialize rs1
li x25, 0x82dd1709079baa86 # initialize rs2
bge x25, x25, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x3f73d77b8be3b569 # initialize rs1
li x26, 0x1fbd56ff8afd82ff # initialize rs2
bge x26, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x1fbd56ff8afd82ff # initialize rs1
li x26, 0x1fbd56ff8afd82ff # initialize rs2
bge x26, x26, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xea8791efdeab203c # initialize rs1
li x27, 0x4d65331220244bf9 # initialize rs2
bge x27, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x4d65331220244bf9 # initialize rs1
li x27, 0x4d65331220244bf9 # initialize rs2
bge x27, x27, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xd47f940e894a7acc # initialize rs1
li x28, 0x6595f24647dfa114 # initialize rs2
bge x28, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x6595f24647dfa114 # initialize rs1
li x28, 0x6595f24647dfa114 # initialize rs2
bge x28, x28, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x468afd62cf50b4f8 # initialize rs1
li x29, 0xd790a0aa16618e56 # initialize rs2
bge x29, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xd790a0aa16618e56 # initialize rs1
li x29, 0xd790a0aa16618e56 # initialize rs2
bge x29, x29, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xbbd72bb6e09c3a1a # initialize rs1
li x30, 0x904804bafa8229c3 # initialize rs2
bge x30, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x904804bafa8229c3 # initialize rs1
li x30, 0x904804bafa8229c3 # initialize rs2
bge x30, x30, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x465d06481874a94f # initialize rs1
li x31, 0x05a4f4d930eeb559 # initialize rs2
bge x31, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x05a4f4d930eeb559 # initialize rs1
li x31, 0x05a4f4d930eeb559 # initialize rs2
bge x31, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: bge x0, x0, 1b # backward branch
3: nop # done with sequence

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x2, x30 # perform first operation
bge x14, x15, arbitraryLabel121
nop
arbitraryLabel121:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x3, x1 # perform first operation
bge x15, x25, arbitraryLabel122
nop
arbitraryLabel122:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x23, x28 # perform first operation
bge x22, x27, arbitraryLabel123
nop
arbitraryLabel123:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x12, x3 # perform first operation
bge x27, x30, arbitraryLabel124
nop
arbitraryLabel124:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x31, x5 # perform first operation
bge x7, x17, arbitraryLabel125
nop
arbitraryLabel125:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x17, x1 # perform first operation
bge x29, x15, arbitraryLabel126
nop
arbitraryLabel126:
nop
 # perform second (triggering) operation

.EQU SIGSIZE,0


 # testgen_footer.S


write_tohost:
    la t1, tohost
    li t0, 1
    sw t0, 0(t1)
    sw zero, 4(t1)

self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 136

.data 

.section .tohost 
tohost: # write to HTIF
    .dword 0
fromhost:
    .dword 0

.align 4
begin_signature:
    .fill SIGSIZE*8/__riscv_xlen,__riscv_xlen/8,0xdeadbeef
end_signature:

.end
